BUILD_DIR="$(dirname $(dirname $(realpath $0 )))/build"
ARTIFACTS_DIR="$BUILD_DIR/artifacts"
ARTIFACTS_FILE="$BUILD_DIR/artifacts/artifacts-file"
ARTIFACTS_ZIP="$BUILD_DIR/artifacts.zip"

echo "artifacts two"

ls

#mkdir $BUILD_DIR
mv $ARTIFACTS_ZIP $BUILD_DIR

unzip $ARTIFACTS_ZIP -d $BUILD_DIR

cat $BUILD_DIR/artifacts
echo "artifacts two" >> $ARTIFACTS_FILE
cat $BUILD_DIR/artifacts
