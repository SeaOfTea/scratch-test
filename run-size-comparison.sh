docker build -t go-size-comp -f go/src/Dockerfile go/src
docker build -t bun-size-comp -f bun/Dockerfile bun
docker build -t deno-size-comp -f deno/Dockerfile deno

echo "Go: $(docker images go-size-comp --format json | jq .Size)"
echo "Bun: $(docker images bun-size-comp --format json | jq .Size)"
echo "Deno: $(docker images deno-size-comp --format json | jq .Size)"
