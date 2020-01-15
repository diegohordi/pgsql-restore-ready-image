# pgsql-restore-ready-image
PostgreSQL restore-ready Image

#See also


#Build
```
docker build -t <image-name:tag-name> . --build-arg FILE=<backup-file-name> --build-arg DBNAME=<database-name>
```

#Run 
```
docker run -d --name <container-name> -p 5432:5432 <image-name:tag-name>
```
