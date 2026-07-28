import 'package:flutter/material.dart';

import 'api/auth_service.dart';
import 'gen_l10n/app_localizations.dart';

const _kBgDark = Color(0xFF000000);
const _kPrimary = Color(0xFFec5b13);

/// Список детей слота / brand rehearsal stage со статусом check-in (прошёл / нет).
class StaffRehearsalCheckinParticipantsPage extends StatefulWidget {
  const StaffRehearsalCheckinParticipantsPage({
    super.key,
    required this.auth,
    required this.eventId,
    required this.subtitle,
    this.slotId,
    this.stageId,
  }) : assert(
         (slotId != null && slotId > 0) || (stageId != null && stageId > 0),
         'slotId or stageId is required',
       );

  final AuthService auth;
  final int eventId;
  final String subtitle;
  final int? slotId;
  final int? stageId;

  @override
  State<StaffRehearsalCheckinParticipantsPage> createState() =>
      _StaffRehearsalCheckinParticipantsPageState();
}

class _StaffRehearsalCheckinParticipantsPageState
    extends State<StaffRehearsalCheckinParticipantsPage> {
  List<RehearsalAdminChildItem> _children = const [];
  bool _loading = true;
  String? _error;

  @override
  void initState() {
    super.initState();
    _load();
  }

  Future<void> _load() async {
    setState(() {
      _loading = true;
      _error = null;
    });
    try {
      final List<RehearsalAdminChildItem> children;
      final stageId = widget.stageId;
      final slotId = widget.slotId;
      if (stageId != null && stageId > 0) {
        children = await widget.auth.getWorkerBrandRehearsalCheckinRoster(
          eventId: widget.eventId,
          stageId: stageId,
        );
      } else {
        final data = await widget.auth.getWorkerRehearsalAdminRoster(
          widget.eventId,
          slotId: slotId,
        );
        children = data.children;
      }
      if (!mounted) return;
      setState(() {
        _children = children;
        _loading = false;
      });
    } catch (e) {
      if (!mounted) return;
      setState(() {
        _error = e.toString();
        _loading = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    return Scaffold(
      backgroundColor: _kBgDark,
      appBar: AppBar(
        backgroundColor: _kBgDark,
        foregroundColor: Colors.white,
        elevation: 0,
        title: Text(
          l10n.staffRehearsalCheckinParticipantsTitle,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 16,
            fontWeight: FontWeight.bold,
            letterSpacing: 1,
          ),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 4, 16, 12),
            child: Text(
              widget.subtitle,
              style: TextStyle(
                color: Colors.white.withOpacity(0.7),
                fontSize: 13,
              ),
            ),
          ),
          Expanded(child: _buildBody(l10n)),
        ],
      ),
    );
  }

  Widget _buildBody(AppLocalizations l10n) {
    if (_loading) {
      return const Center(
        child: CircularProgressIndicator(color: _kPrimary, strokeWidth: 2),
      );
    }
    if (_error != null) {
      return Center(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                _error!,
                textAlign: TextAlign.center,
                style: const TextStyle(color: Colors.redAccent, fontSize: 14),
              ),
              const SizedBox(height: 16),
              IconButton(
                onPressed: _load,
                icon: const Icon(Icons.refresh, color: _kPrimary),
              ),
            ],
          ),
        ),
      );
    }
    if (_children.isEmpty) {
      return Center(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Text(
            l10n.staffRehearsalAdminNoChildrenForSlot,
            textAlign: TextAlign.center,
            style: const TextStyle(color: Colors.white54, fontSize: 14),
          ),
        ),
      );
    }

    return RefreshIndicator(
      color: _kPrimary,
      onRefresh: _load,
      child: ListView.builder(
        padding: const EdgeInsets.fromLTRB(16, 0, 16, 24),
        itemCount: _children.length,
        itemBuilder: (context, index) {
          final child = _children[index];
          final passed = child.checkedIn;
          return Container(
            margin: const EdgeInsets.only(bottom: 10),
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
            decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.04),
              borderRadius: BorderRadius.circular(10),
              border: Border.all(color: Colors.white.withOpacity(0.08)),
            ),
            child: Row(
              children: [
                CircleAvatar(
                  radius: 18,
                  backgroundColor: Colors.white12,
                  backgroundImage:
                      child.photoUrl != null && child.photoUrl!.isNotEmpty
                      ? NetworkImage(child.photoUrl!)
                      : null,
                  child: child.photoUrl == null || child.photoUrl!.isEmpty
                      ? Text(
                          (child.firstName.isNotEmpty
                                  ? child.firstName[0]
                                  : '?')
                              .toUpperCase(),
                          style: const TextStyle(
                            color: Colors.white70,
                            fontSize: 14,
                          ),
                        )
                      : null,
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: Text(
                    child.firstName,
                    style: const TextStyle(color: Colors.white, fontSize: 14),
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                const SizedBox(width: 8),
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 10,
                    vertical: 4,
                  ),
                  decoration: BoxDecoration(
                    color: passed
                        ? Colors.greenAccent.withOpacity(0.15)
                        : Colors.white.withOpacity(0.08),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Text(
                    passed
                        ? l10n.staffGiftControlFilterPassed
                        : l10n.staffGiftControlFilterNotPassed,
                    style: TextStyle(
                      color: passed ? Colors.greenAccent : Colors.white54,
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
