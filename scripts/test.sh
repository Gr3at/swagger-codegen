set -e

java -jar modules/swagger-codegen-cli/target/swagger-codegen-cli.jar generate \
  -i modules/swagger-codegen/src/test/resources/2_0/petstore.yaml \
  -l python-flask-pydantic \
  -o /tmp/petstore

# read -p "Continue? (Y/N): " confirm && [[ $confirm == [yY] || $confirm == [yY][eE][sS] ]] || exit 1
echo "Checking /tmp/petstore contents..."
ls -la /tmp/petstore

# read -p "Delete files? (Y/N): " confirm && [[ $confirm == [yY] || $confirm == [yY][eE][sS] ]] || exit 1
# rm -rf /tmp/petstore