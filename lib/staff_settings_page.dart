import 'package:flutter/material.dart';
import 'api/auth_service.dart';
import 'app_settings.dart';
import 'gen_l10n/app_localizations.dart';
import 'staff_workspace.dart';

// Стиль как в разделе персонала: коричневый акцент
const _kPrimary = Color(0xFFec5b13);
const _kBgDark = Color(0xFF000000);

/// Настройки сотрудника: профиль, смена роли (карточки из API), выбор языка (выпадающий список).
/// Язык сохраняется в AppSettings и восстанавливается при следующем запуске.
class StaffSettingsPage extends StatefulWidget {
  const StaffSettingsPage({
    super.key,
    required this.auth,
    required this.user,
    required this.staffRoles,
    required this.currentRole,
    required this.onRoleChanged,
  });

  final AuthService auth;
  final Map<String, dynamic> user;
  final List<StaffRole> staffRoles;
  final StaffRole? currentRole;
  final ValueChanged<StaffRole> onRoleChanged;

  @override
  State<StaffSettingsPage> createState() => _StaffSettingsPageState();
}

class _StaffSettingsPageState extends State<StaffSettingsPage> {
  StaffRole? _selectedRole;

  /// Все этапы ивента с API (до фильтра по роли).
  List<WorkerEventStage> _allStagesForEvent = [];

  /// Этапы, доступные для [_selectedRole] (пересечение с назначением роли в админке).
  List<WorkerEventStage> _eventStages = [];

  @override
  void initState() {
    super.initState();
    _selectedRole =
        widget.currentRole ??
        (widget.staffRoles.isNotEmpty ? widget.staffRoles.first : null);
    _loadStagesForActiveEvent();
  }

  Future<void> _loadStagesForActiveEvent() async {
    final eventId = AppSettings.staffActiveEventId;
    if (eventId == null || eventId <= 0) {
      if (!mounted) return;
      setState(() {
        _allStagesForEvent = [];
        _eventStages = [];
      });
      return;
    }

    try {
      final list = await widget.auth.getWorkerEventStages(eventId);
      if (!mounted) return;
      _allStagesForEvent = list;
      await _rebuildVisibleStagesAndPersist();
    } catch (_) {
      if (!mounted) return;
      setState(() {
        _allStagesForEvent = [];
        _eventStages = [];
      });
    }
  }

  /// Обновляет [_eventStages] по выбранной роли и при необходимости сбрасывает этап в prefs.
  Future<void> _rebuildVisibleStagesAndPersist() async {
    final role = _selectedRole;
    if (role == null) {
      _eventStages = [];
      return;
    }
    _eventStages = stagesAllowedForRole(_allStagesForEvent, role);
    final sid = AppSettings.staffActiveStageId;
    final stype = AppSettings.staffActiveStageType;
    final ok =
        sid != null &&
        _eventStages.any(
          (s) => s.id == sid && (stype == null || s.type == stype),
        );
    if (!ok) {
      if (_eventStages.isNotEmpty) {
        await AppSettings.setStaffActiveStageId(_eventStages.first.id);
        await AppSettings.setStaffActiveStageType(_eventStages.first.type);
      } else {
        await AppSettings.setStaffActiveStageId(null);
        await AppSettings.setStaffActiveStageType(null);
      }
    }
  }

  String get _staffId {
    final id = widget.user['staff_id'] ?? widget.user['id'];
    if (id == null) return '—';
    return id.toString();
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
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: Text(
          l10n.staffPortalTitle,
          style: TextStyle(
            color: Colors.white,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.fromLTRB(24, 16, 24, 32),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            _buildProfile(l10n),
            const SizedBox(height: 24),
            _buildSwitchRole(l10n),
          ],
        ),
      ),
    );
  }

  Widget _buildProfile(AppLocalizations l10n) {
    final roleTitle = (_selectedRole?.name.trim().isNotEmpty ?? false)
        ? _selectedRole!.name.trim()
        : l10n.staff;
    return Column(
      children: [
        Stack(
          children: [
            CircleAvatar(
              radius: 48,
              backgroundColor: Colors.white12,
              child: Icon(Icons.person, size: 48, color: Colors.white54),
            ),
            Positioned(
              bottom: 0,
              right: 0,
              child: Container(
                width: 24,
                height: 24,
                decoration: BoxDecoration(
                  color: _kPrimary,
                  shape: BoxShape.circle,
                  border: Border.all(color: Colors.black, width: 2),
                ),
                child: const Icon(Icons.check, size: 14, color: Colors.black),
              ),
            ),
          ],
        ),
        const SizedBox(height: 16),
        Text(
          roleTitle,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 4),
        Text(
          AppLocalizations.of(context)!.staffIdLabel(_staffId),
          style: TextStyle(color: Colors.white54, fontSize: 12),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }

  Widget _buildSwitchRole(AppLocalizations l10n) {
    if (widget.staffRoles.isEmpty) return const SizedBox.shrink();
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Text(
              AppLocalizations.of(context)!.staffSwitchRole,
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(width: 12),
            Expanded(
              child: Text(
                AppLocalizations.of(context)!.staffCurrentRoleLabel(
                  (_selectedRole?.name ?? '').toUpperCase(),
                ),
                textAlign: TextAlign.end,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                softWrap: true,
                style: TextStyle(
                  color: _kPrimary,
                  fontSize: 11,
                  fontWeight: FontWeight.w600,
                  letterSpacing: 0.8,
                ),
              ),
            ),
          ],
        ),
        const SizedBox(height: 12),
        ...widget.staffRoles.map(
          (role) => Padding(
            padding: const EdgeInsets.only(bottom: 12),
            child: _RoleCard(
              role: role,
              isSelected: _selectedRole?.id == role.id,
              onTap: () async {
                await AppSettings.setStaffSelectedRoleCode(role.code);
                if (!mounted) return;
                setState(() => _selectedRole = role);
                widget.onRoleChanged(role);
                await _rebuildVisibleStagesAndPersist();
                if (mounted) setState(() {});
              },
            ),
          ),
        ),
      ],
    );
  }

}

class _RoleCard extends StatelessWidget {
  const _RoleCard({
    required this.role,
    required this.isSelected,
    required this.onTap,
  });

  final StaffRole role;
  final bool isSelected;
  final VoidCallback onTap;

  static IconData _iconForCode(String code) {
    switch (code.toLowerCase()) {
      case 'supervisor':
        return Icons.manage_accounts;
      case 'photographer':
        return Icons.photo_camera;
      case 'stylist':
        return Icons.checkroom;
      case 'hostess':
      case 'hs':
        return Icons.badge_outlined;
      default:
        return Icons.work_outline;
    }
  }

  static IconData _iconForRole(StaffRole role) {
    switch (role.homeScreenType.trim().toLowerCase()) {
      case 'scan':
        return Icons.qr_code_scanner;
      case 'photographer_assistant':
        return Icons.photo_camera_outlined;
      case 'qr_check':
        return Icons.fact_check_outlined;
      case 'supervisor':
        return Icons.manage_accounts;
      case 'hostess':
        return Icons.badge_outlined;
      case 'parking':
        return Icons.local_parking_outlined;
      case 'extra_zone':
        return Icons.workspace_premium_outlined;
      case 'backstage':
        return Icons.theater_comedy_outlined;
      case 'gift_issue':
        return Icons.redeem_outlined;
      case 'rehearsal_admin':
        return Icons.event_note_outlined;
      case 'rehearsal_checkin':
        return Icons.event_available_outlined;
      case 'interview':
        return Icons.mic_outlined;
      case 'lunches':
        return Icons.restaurant_outlined;
      case 'superadmin':
        return Icons.admin_panel_settings_outlined;
      default:
        return _iconForCode(role.code);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(12),
        child: Container(
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: Colors.white.withOpacity(0.05),
            borderRadius: BorderRadius.circular(12),
            border: Border.all(
              color: isSelected
                  ? _kPrimary.withOpacity(0.5)
                  : Colors.white.withOpacity(0.1),
              width: isSelected ? 2 : 1,
            ),
          ),
          child: Row(
            children: [
              Container(
                width: 44,
                height: 44,
                decoration: BoxDecoration(
                  color: _kPrimary.withOpacity(0.15),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Icon(_iconForRole(role), color: _kPrimary, size: 24),
              ),
              const SizedBox(width: 16),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      role.name,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      _subtitleForRole(context, role),
                      style: TextStyle(color: Colors.white54, fontSize: 12),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  String _subtitleForCode(BuildContext context, String code) {
    switch (code.toLowerCase()) {
      case 'supervisor':
        return AppLocalizations.of(context)!.staffRoleSubtitleSupervisor;
      case 'photographer':
      case 'pomoshhnik_fotografa':
        return AppLocalizations.of(context)!.staffRoleSubtitlePhotographer;
      case 'stylist':
        return AppLocalizations.of(context)!.staffRoleSubtitleStylist;
      case 'hostess':
      case 'hs':
        return AppLocalizations.of(context)!.staffRoleSubtitleHostess;
      default:
        return role.name;
    }
  }

  String _subtitleForRole(BuildContext context, StaffRole role) {
    switch (role.homeScreenType.trim().toLowerCase()) {
      case 'scan':
        return AppLocalizations.of(context)!.staffRoleSubtitleScan;
      case 'photographer_assistant':
        return AppLocalizations.of(context)!.staffRoleSubtitlePhotographer;
      case 'qr_check':
        return AppLocalizations.of(context)!.staffRoleSubtitleQrCheck;
      case 'supervisor':
        return AppLocalizations.of(context)!.staffRoleSubtitleSupervisor;
      case 'hostess':
        return AppLocalizations.of(context)!.staffRoleSubtitleHostess;
      case 'parking':
        return AppLocalizations.of(context)!.staffRoleSubtitleParking;
      case 'extra_zone':
        return AppLocalizations.of(context)!.staffRoleSubtitleExtraZone;
      case 'backstage':
        return AppLocalizations.of(context)!.staffRoleSubtitleBackstage;
      case 'gift_issue':
        return AppLocalizations.of(context)!.staffRoleSubtitleGiftIssue;
      case 'rehearsal_admin':
        return AppLocalizations.of(context)!.staffRoleSubtitleRehearsalAdmin;
      case 'rehearsal_checkin':
        return AppLocalizations.of(context)!.staffRoleSubtitleRehearsalCheckin;
      case 'interview':
        return AppLocalizations.of(context)!.staffRoleSubtitleInterview;
      case 'lunches':
        return AppLocalizations.of(context)!.staffRoleSubtitleLunches;
      case 'superadmin':
        return AppLocalizations.of(context)!.staffRoleSubtitleSuperadmin;
      default:
        return _subtitleForCode(context, role.code);
    }
  }
}
