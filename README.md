# pop-books

## Setup
```
cp .env-sample .env
docker-compose up -d
docker-compose run --rm web rake db:create
```