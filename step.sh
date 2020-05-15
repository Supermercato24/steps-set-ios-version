#!/bin/bash

# exit if a command fails
set -e
#
# Required parameters
if [ -z "${info_plist_file}" ] ; then
  echo " [!] Missing required input: info_plist_file"
  echo " [!] Exiting..."
  exit 1
fi
if [ ! -f "${info_plist_file}" ] ; then
  echo " [!] File Info.plist doesn't exist at specified path: ${info_plist_file}"
  echo " [!] Exiting..."
  exit 1
fi

echo " (i) Provided Info.plist file path: ${info_plist_file}"

ORIGINAL_BUNDLE_VERSION="$(/usr/libexec/PlistBuddy -c "Print :CFBundleVersion" "${info_plist_file}")"
echo " (i) Original Bundle Version: $ORIGINAL_BUNDLE_VERSION"

ORIGINAL_BUNDLE_SHORT_VERSION="$(/usr/libexec/PlistBuddy -c "Print :CFBundleShortVersionString" "${info_plist_file}")"
echo " (i) Original Bundle Short Version String: $ORIGINAL_BUNDLE_SHORT_VERSION"

envman add --key BUILD_NUMBER --value "${ORIGINAL_BUNDLE_VERSION}"
envman add --key APP_VERSION --value "${ORIGINAL_BUNDLE_SHORT_VERSION}"

# ==> Bundler version patched in Info.plist file for iOS project
