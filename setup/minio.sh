# Minio
sudo docker run --name minio -d -p 9000:9000 -p 9001:9001 -v "$PWD/datalake:/data" minio/minio server /data --console-address ":9001"

http://127.0.0.1:9001/login

minioadmin

# Docker-compose

"""
version: '3'

services:
  minio:
    image: minio/minio
    ports:
      - "9000:9000"
      - "9001:9001"
    volumes:
      - minio_storage:/data
    environment:
      MINIO_ROOT_USER: minio
      MINIO_ROOT_PASSWORD: Lt207603
    command: server --console-address ":9001" /data

volumes:
  minio_storage: {}
"""
# Run docker-compose
docker-compose --project-name minio_datalake -f minio-compose.yml up -d

# Cleaning up

docker-compose down --volumes --rmi all

docker-compose down --volumes --remove-orphans

# Docker Delete Containerid
docker images

docker image rm 46b3c561f76f

docker image rm -f 46b3c561f76f

# Docker Delete Containerid

docker stop 9d19aef4031d

docker rmi 9d19aef4031d

docker rmi -f 9d19aef4031d

# Docker IP

sudo docker inspect -f \
'{{range .NetworkSettings.Networks}}{{.IPAddress}}{{end}}' \
b1480a450dd4
