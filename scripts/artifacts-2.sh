BUILD_DIR="$(dirname $(dirname $(realpath $0 )))/build"
ARTIFACTS_DIRNAME="artifacts"
ARTIFACTS_DIR="$BUILD_DIR/$ARTIFACTS_DIRNAME"
ARTIFACTS_FILE="$BUILD_DIR/artifacts/artifacts-file"
ARTIFACTS_ZIP_NAME="artifacts.zip"
ARTIFACTS_ZIP="$BUILD_DIR/$ARTIFACTS_ZIP_NAME"

echo "artifacts two"

# Move and unzip artifacts
mv $ARTIFACTS_ZIP_NAME $BUILD_DIR

unzip $ARTIFACTS_ZIP -d $BUILD_DIR

# Modify artifacts
cat $ARTIFACTS_FILE
echo "artifacts two" >> $ARTIFACTS_FILE
cat $ARTIFACTS_FILE

# Make new artifacts zip
rm "$BUILD_DIR/artifacts.zip"
cd $BUILD_DIR
zip -r "$BUILD_DIR/artifacts.zip" $ARTIFACTS_DIRNAME
