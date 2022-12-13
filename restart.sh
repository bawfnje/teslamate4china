# open -g -a "Docker Desktop.app"
docker-compose stop
echo "=========>docker-compose stop ==>over"
docker rm teslamate4china_teslamate_1
docker rm teslamate4china_teslamate4china_1
docker rm teslamate4china_database_1
docker rm teslamate4china_grafana_1
docker rm teslamate4china_mosquitto_1
echo "=========>docker rm teslamate4china_* ==>over"
docker image rm teslamate4china_teslamate
docker image rm teslamate4china_teslamate4china
docker image rm teslamate4china_grafana
echo "=========>docker image rm teslamate4china_teslamate4china ==>over"
# docker volume rm teslamate4china_teslamate-grafana-data
# docker volume rm teslamate4china_teslamate-db
# docker volume rm teslamate4china_mosquitto-conf
# docker volume rm teslamate4china_mosquitto-data
# echo "=========>docker volume rm teslamate4china_teslamate-grafana-data ==>over"
echo "=========>docker-compose up -d ==>start"
docker-compose up -d
open http://localhost:4000
open http://localhost:4400
