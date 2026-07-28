#!/usr/bin/env python3
"""ASCII-safe checker: detect UTF-8->CP125x style mojibake in ARB files."""

from __future__ import annotations

import sys
from pathlib import Path

# Patterns built from Unicode code points (no non-ASCII literals in source).
PATTERNS = [
    "".join(map(chr, [0x0420, 0x040E, 0x0420])),  # РЎР
    "".join(map(chr, [0x0420, 0x0406, 0x0420, 0x201A])),  # РІР‚
    "".join(map(chr, [0x0432, 0x0402, 0x20AC])),  # вЂ
    "".join(map(chr, [0x0413, 0x0456])),  # Гі
    "".join(map(chr, [0x0413, 0x00B1])),  # Г±
    "".join(map(chr, [0x0413, 0x040E])),  # ГЎ
    "".join(map(chr, [0x0412, 0x00AB])),  # В«
    "".join(map(chr, [0x0412, 0x00BB])),  # В»
]


def main() -> int:
    l10n_dir = Path("lib/l10n")
    files = sorted(l10n_dir.glob("*.arb"))
    if not files:
        print("No ARB files found in lib/l10n", file=sys.stderr)
        return 1

    issues: list[str] = []
    for path in files:
        content = path.read_text(encoding="utf-8")
        for pattern in PATTERNS:
            if pattern in content:
                issues.append(f"{path}: suspicious mojibake markers found")
                break

    if issues:
        print("Mojibake check failed:", file=sys.stderr)
        print("\n".join(issues), file=sys.stderr)
        return 1

    print("Mojibake check passed.")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
