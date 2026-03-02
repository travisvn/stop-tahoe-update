#!/usr/bin/env bash
set -euo pipefail
echo "macOS: $(sw_vers -productVersion)"
echo "Profiles matching 'Software Update' deferrals:"
/usr/bin/profiles show -type configuration 2>/dev/null | \
  grep -E "forceDelayed|enforcedSoftwareUpdate" || echo "(none found)"
echo
echo "Software Update pane (for reference only):"
defaults read /Library/Preferences/com.apple.SoftwareUpdate 2>/dev/null || true
