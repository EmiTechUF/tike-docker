git clone --recurse-submodules https://github.com/rajaomariajaona/tike-docker
docker exec -i tike_postgres pg_restore -U tike -v -d tike < db.tar