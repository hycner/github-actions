BUILD_DIR="$(dirname $(dirname $(realpath $0 )))/build"
ARTIFACTS_DIRNAME="artifacts"
ARTIFACTS_DIR="../build/$ARTIFACTS_DIRNAME"

echo "artifacts one"

mkdir $ARTIFACTS_DIR
echo "artifacts file" > "$BUILD_DIR/artifacts/artifacts-file"

cd $BUILD_DIR
zip -r "$BUILD_DIR/artifacts.zip" $ARTIFACTS_DIRNAME
