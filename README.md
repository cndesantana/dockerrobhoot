# dockerrobhoot
Docker for robhoot

You should run 
```make```

Once airflow docker image is installed, we should run the commands:

docker-compose down
git pull
rm .env
cp .env.sample .env
docker-compose up -d
docker-compose exec airflow bash # Access to Airflow image in Docker
airflow create_user -r Admin -u a -e local@localhost -f a -l a -p a # User a with password a

docker volume prune

docker image prune 
