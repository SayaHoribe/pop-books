# pop-books

## Setup
- [Docker for Mac](https://hub.docker.com/editions/community/docker-ce-desktop-mac) Download
- App Start

```
docker volume create --name=db-data
docker volume create --name=tmp-data
docker volume create --name=public-data

cp .env-sample .env

docker-compose up -d
docker-compose run --rm web rake db:create
```