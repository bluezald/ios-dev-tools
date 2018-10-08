FRAMEWORK_NAME="XYZFramework"

# Builds the framework for Device and Simulator
xcodebuild -target ${FRAMEWORK_NAME} -sdk iphoneos
xcodebuild -target ${FRAMEWORK_NAME} -sdk iphonesimulator

# Merges the framework using the Universal target
xcodebuild -target ${FRAMEWORK_NAME}-Universal

# Archive the framework to enable bitcode, this is use to release the "derived" app
xcodebuild clean -project ${FRAMEWORK_NAME}.xcodeproj -configuration Release -alltargets
xcodebuild archive -project ${FRAMEWORK_NAME}.xcodeproj -scheme ${FRAMEWORK_NAME} -archivePath ./build/${FRAMEWORK_NAME}.xcarchive

# Opens the directory
open ./build