#!/bin/sh
set -eo pipefail

gpg --quiet --batch --yes --decrypt --passphrase="$IOS_KEYS" --output ./.github/secrets/StormViewer_Development.mobileprovision ./.github/secrets/StormViewer_Development.mobileprovision.gpg
gpg --quiet --batch --yes --decrypt --passphrase="$IOS_KEYS" --output ./.github/secrets/ios_development.p12 ./.github/secrets/ios_development.p12.gpg

mkdir -p ~/Library/MobileDevice/Provisioning\ Profiles

cp ./.github/secrets/StormViewer_Development.mobileprovision ~/Library/MobileDevice/Provisioning\ Profiles/StormViewer_Development.mobileprovision