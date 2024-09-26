docker rm -f postgres-dev
docker rm -f postgres-qa
docker rm -f postgres-prod

docker pull postgres

docker run -v ${PWD}:/opt \
    --name postgres-dev \
    -p 5432:5432 \
    -e POSTGRES_PASSWORD=secret \
    -d postgres

docker run -v ${PWD}:/opt \
    --name postgres-qa \
    -p 5433:5432 \
    -e POSTGRES_PASSWORD=secret \
    -d postgres

docker run -v ${PWD}:/opt \
    --name postgres-prod \
    -p 5434:5432 \
    -e POSTGRES_PASSWORD=secret \
    -d postgres

echo "Sleeping for 5 seconds ..."
sleep 5

docker exec \
    -it \
    postgres-dev \
    /bin/bash -c "psql -U postgres -a -f /opt/dvdrental.sql"


docker exec \
    -it \
    postgres-qa \
    /bin/bash -c "psql -U postgres -a -f /opt/dvdrental.sql"


docker exec \
    -it \
    postgres-prod \
    /bin/bash -c "psql -U postgres -a -f /opt/dvdrental.sql"
