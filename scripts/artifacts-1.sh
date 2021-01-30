BUILD_DIR="$(dirname $(dirname $(realpath $0 )))/build"

echo "artifacts one"

echo "artifacts file" > "$BUILD_DIR/artifacts"

type zip
type unzip
