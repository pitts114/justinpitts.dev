set -e
docker build -t justinpittsdev .
docker tag justinpittsdev registry.pitts-software.com/justinpittsdev:sometag
docker push registry.pitts-software.com/justinpittsdev:sometag
echo "Build complete."
