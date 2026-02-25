#!/bin/bash

# --- CONFIGURATION ---
SCHEME_NAME="PopbrainAttributionSDK"
FRAMEWORK_NAME="PopbrainAttributionSDK"
ZIP_NAME="${FRAMEWORK_NAME}.zip"
# ---------------------

echo "🚀 Starting Build Process for $SCHEME_NAME..."

# 1. Clean up old artifacts
rm -rf ./archives
rm -rf ./${FRAMEWORK_NAME}.xcframework
rm -f ./${ZIP_NAME}

# 2. Archive for iOS Devices
echo "📦 Archiving for iOS Devices..."
xcodebuild archive \
  -scheme "$SCHEME_NAME" \
  -destination "generic/platform=iOS" \
  -archivePath "./archives/ios_devices.xcarchive" \
  SKIP_INSTALL=NO \
  BUILD_LIBRARY_FOR_DISTRIBUTION=YES

# 3. Archive for iOS Simulators
# Note: This creates slices for both Intel and Apple Silicon Macs
echo "🧪 Archiving for iOS Simulators..."
xcodebuild archive \
  -scheme "$SCHEME_NAME" \
  -destination "generic/platform=iOS Simulator" \
  -archivePath "./archives/ios_simulator.xcarchive" \
  SKIP_INSTALL=NO \
  BUILD_LIBRARY_FOR_DISTRIBUTION=YES

# 4. Create the XCFramework
echo "🛠️ Creating XCFramework..."
xcodebuild -create-xcframework \
  -framework "./archives/ios_devices.xcarchive/Products/Library/Frameworks/${FRAMEWORK_NAME}.framework" \
  -framework "./archives/ios_simulator.xcarchive/Products/Library/Frameworks/${FRAMEWORK_NAME}.framework" \
  -output "./${FRAMEWORK_NAME}.xcframework"

# 5. Zip the XCFramework
echo "🗜️ Zipping XCFramework..."
zip -r "$ZIP_NAME" "./${FRAMEWORK_NAME}.xcframework"

# 6. Compute Checksum
echo "🔐 Computing Checksum for Package.swift..."
CHECKSUM=$(swift package compute-checksum "$ZIP_NAME")

echo "------------------------------------------------"
echo "✅ SUCCESS!"
echo "New Checksum: $CHECKSUM"
echo "------------------------------------------------"
echo "Next Steps:"
echo "1. Upload $ZIP_NAME to your GitHub Release."
echo "2. Update Package.swift with the new checksum above."
echo "3. Push changes to Git."
