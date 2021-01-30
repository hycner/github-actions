BUILD_DIR="$(dirname $(dirname $(realpath $0 )))/build"

echo "artifacts two"

cat $BUILD_DIR/artifacts

echo "artifacts two" >> "$BUILD_DIR/artifacts"
cat $BUILD_DIR/artifacts
