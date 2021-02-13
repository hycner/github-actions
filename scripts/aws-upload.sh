BUILD_DIR="$(dirname $(dirname $(realpath $0 )))/build"
FILENAME="example-file.md"
FILE_PATH="$BUILD_DIR/$FILENAME"

echo "the example file" > $FILE_PATH

aws s3 cp $FILE_PATH "s3://$AWS_BUCKET/"
#aws s3 cp $FILE_PATH "s3://$AWS_BUCKET/$FILENAME"
