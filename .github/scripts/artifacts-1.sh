BUILD_DIR="$(dirname $(dirname $(realpath $0 )))/build"
ARTIFACTS_DIRNAME="artifacts"
ARTIFACTS_DIR="$BUILD_DIR/$ARTIFACTS_DIRNAME"

echo "artifacts one"

# Make and zip artifacts
mkdir $ARTIFACTS_DIR
echo "artifacts file - line 1" > "$BUILD_DIR/artifacts/artifacts-file"

cd $BUILD_DIR
zip -r "$BUILD_DIR/artifacts.zip" $ARTIFACTS_DIRNAME
