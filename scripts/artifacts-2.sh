BUILD_DIR="$(dirname $(dirname $(realpath $0 )))/build"

cat $BUILD_DIR/artifacts

echo "artifacts two" >> "$BUILD_DIR/artifacts"
cat $BUILD_DIR/artifacts
