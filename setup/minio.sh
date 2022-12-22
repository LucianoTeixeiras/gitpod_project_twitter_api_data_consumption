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
      MINIO_ROOT_USER: masoud
      MINIO_ROOT_PASSWORD: Strong#Pass#2022
    command: server --console-address ":9001" /data

volumes:
  minio_storage: {}
"""
# Run docker-compose
docker-compose --project-name standalone_minio -f minio-compose.yml up