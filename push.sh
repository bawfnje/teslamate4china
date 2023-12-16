# error: At least one invalid signature was encountered "至少遇到一个无效签名"相关问题及解决方法
docker image prune -a
docker container prune -a
docker system prune
docker system df

docker login -u admin -p makelt8485 i.bawfnje.work:8000
docker build . --pull -t i.bawfnje.work:8000/teslamate4china:latest
docker push i.bawfnje.work:8000/teslamate4china:latest
docker build ./grafana/ --pull -t i.bawfnje.work:8000/teslamate4china_grafana:latest
docker push i.bawfnje.work:8000/teslamate4china_grafana:latest
