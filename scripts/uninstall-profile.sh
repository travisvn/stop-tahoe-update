#!/usr/bin/env bash
set -euo pipefail
IDENTIFIER="${1:-org.stayonsequoia.profile}"
echo "Removing profile identifier: $IDENTIFIER"
sudo /usr/bin/profiles remove -identifier "$IDENTIFIER" || true
echo "If the profile was installed via UI/MDM, remove it from System Settings → Profiles."
