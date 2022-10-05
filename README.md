# nsh-template

docker-compose run --rm -u $(id -u $USER) app /bin/bash

docker-compose exec -u $(id -u $USER) app /bin/bash

UID_GID="$(id -u):$(id -g)" docker-compose up