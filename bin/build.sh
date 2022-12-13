set -e
docker build -t justinpittsdev --build-arg GIT_COMMIT=$(git log -1 --format=%h) .
docker tag justinpittsdev cloud.canister.io:5000/pitts114/justinpittsdev:$(git log -1 --format=%h)
docker push cloud.canister.io:5000/pitts114/justinpittsdev:$(git log -1 --format=%h)
echo "Build complete. Commit hash: $(git log -1 --format=%h)"
