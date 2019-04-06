# pop-books

## Setup
```
docker volume create --name=db-data
docker volume create --name=tmp-data
docker volume create --name=public-data

cp .env-sample .env

docker-compose up -d
docker-compose run --rm web rake db:create
```