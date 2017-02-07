## Build

```sh
docker run \
  --rm \
  --interactive \
  --tty \
  --volume "$PWD":"/app" \
  --workdir "/app" \
  erlang \
  erl -make
```

## Run

```sh
docker run \
  --rm \
  --interactive \
  --tty \
  --volume "$PWD":"/app" \
  --workdir "/app" \
  erlang \
  erl \
    -noshell \
    -pa "ebin" \
    -run main
```
