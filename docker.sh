docker compose build

# not detached, for showing logs and Ctrl-C
docker compose up

# detached (background)
docker compose up -d

# rebuild and docker compose up
docker compose up --build
