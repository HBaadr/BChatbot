#
#   build_xcframework.sh
#   BChatbot
#
#   Created by badr_hourimeche on 6/3/2025.

#!/bin/bash

# Clean build directory
rm -rf .build
rm -rf Build

# Create build directory
mkdir -p Build

# Build for iOS Simulator
xcodebuild archive \
    -project BChatbot.xcodeproj \
    -scheme BChatbot \
    -destination 'generic/platform=iOS Simulator' \
    -archivePath "./Build/BChatbot-iphonesimulator.xcarchive" \
    SKIP_INSTALL=NO \
    BUILD_LIBRARY_FOR_DISTRIBUTION=YES \
    ENABLE_BITCODE=NO

# Build for iOS Device
xcodebuild archive \
    -project BChatbot.xcodeproj \
    -scheme BChatbot \
    -destination 'generic/platform=iOS' \
    -archivePath "./Build/BChatbot-iphoneos.xcarchive" \
    SKIP_INSTALL=NO \
    BUILD_LIBRARY_FOR_DISTRIBUTION=YES \
    ENABLE_BITCODE=NO

# Create XCFramework
xcodebuild -create-xcframework \
    -framework "./Build/BChatbot-iphonesimulator.xcarchive/Products/Library/Frameworks/BChatbot.framework" \
    -framework "./Build/BChatbot-iphoneos.xcarchive/Products/Library/Frameworks/BChatbot.framework" \
    -output "./Build/BChatbot.xcframework"
