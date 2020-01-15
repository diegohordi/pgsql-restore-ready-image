# pgsql-restore-ready-image
PostgreSQL restore-ready Image

# See
https://medium.com/@diego.hordi/postgresql-restore-ready-docker-image-7001a54400e9

# Build
```
docker build -t <image-name:tag-name> . --build-arg FILE=<backup-file-name> --build-arg DBNAME=<database-name>
```

# Run 
```
docker run -d --name <container-name> -p 5432:5432 <image-name:tag-name>
```
