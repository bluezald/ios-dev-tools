read -p "Enter Name of Framework: " frameworkName
read -p "Continue? (Y/N): " confirm && [[ $confirm == [yY] || $confirm == [yY][eE][sS] ]] || exit 1
xcodebuild archive \
-scheme frameworkName \
-configuration Release \
-destination 'generic/platform=iOS' \
-archivePath './build/frameworkName.framework-iphoneos.xcarchive' \
SKIP_INSTALL=NO \
BUILD_LIBRARIES_FOR_DISTRIBUTION=YES

xcodebuild archive \
-scheme frameworkName \
-configuration Release \
-destination 'generic/platform=iOS Simulator' \
-archivePath './build/frameworkName.framework-iphonesimulator.xcarchive' \
SKIP_INSTALL=NO \
BUILD_LIBRARIES_FOR_DISTRIBUTION=YES

xcodebuild -create-xcframework \
-framework './build/frameworkName.framework-iphonesimulator.xcarchive/Products/Library/Frameworks/frameworkName.framework' \
-framework './build/frameworkName.framework-iphoneos.xcarchive/Products/Library/Frameworks/frameworkName.framework' \
-output './build/frameworkName.xcframework'
