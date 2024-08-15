cd /volume1/docker/teslamate
docker-compose stop
echo "\n=========>docker-compose stop ==>over"
docker rm teslamate4china-service
# docker rm teslamate4china_database
docker rm teslamate4china-grafana
# docker rm teslamate4china_mosquitto
echo "\n=========>docker rm teslamate4china_* ==>over"
docker image rm teslamate4china-teslamate4china
docker image rm teslamate4china-grafana
rm -rf ./data/teslamate-grafana-data
echo "\n=========>docker image rm teslamate4china_teslamate4china ==>over"
# docker volume rm teslamate4china_teslamate-grafana-data
# docker volume rm teslamate4china_teslamate-db
# docker volume rm teslamate4china_mosquitto-conf
# docker volume rm teslamate4china_mosquitto-data
# echo "=========>docker volume rm teslamate4china_teslamate-grafana-data ==>over"
echo "\n=========>docker-compose up -d ==>start"
docker-compose up -d