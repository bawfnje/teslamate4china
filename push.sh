docker login -u admin -p makelt8485 i.bawfnje.work:8000
docker build . --pull -t i.bawfnje.work:8000/teslamate4china:latest
docker push i.bawfnje.work:8000/teslamate4china:latest
docker build ./grafana/ --pull -t i.bawfnje.work:8000/teslamate4china_grafana:latest
docker push i.bawfnje.work:8000/teslamate4china_grafana:latest
