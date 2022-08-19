```
git clone --recurse-submodules https://github.com/rajaomariajaona/tike-docker
cd tike-docker
docker-compose up
docker exec -i tike_postgres psql -U tike -v -d tike < remove.sql
docker exec -i tike_postgres psql -U tike -v -d tike < db.sql
docker exec -i tike_postgres psql -U tike -v -d tike < credential.sql

## Credentials
user: admin@gmail.com
pwd: 1234Tikea

```