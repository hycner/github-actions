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
echo ""
echo "artifacts file - line 2" >> $ARTIFACTS_FILE
cat $ARTIFACTS_FILE

# Make new artifacts zip
rm $ARTIFACTS_ZIP
cd $BUILD_DIR
zip -r $ARTIFACTS_ZIP $ARTIFACTS_DIRNAME
