# Quick rebuild script

docker stop litenode
docker rm litenode
docker rmi liteimage
docker build -t='liteimage' .
docker run -p 9333:9333 --name litenode liteimage