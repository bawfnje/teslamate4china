# open -g -a "Docker Desktop.app"
docker stop teslamate4china-grafana
echo "=========>docker-compose stop ==>over"
# docker rm teslamate4china-service
# docker rm teslamate4china_database
docker rm teslamate4china-grafana
# docker rm teslamate4china_mosquitto
echo "=========>docker rm teslamate4china_* ==>over"
# docker image rm teslamate4china-service
docker image rm teslamate4china-grafana
echo "=========>docker image rm teslamate4china_teslamate4china ==>over"
# docker volume rm teslamate4china_teslamate-grafana-data
# docker volume rm teslamate4china_teslamate-db
# docker volume rm teslamate4china_mosquitto-conf
# docker volume rm teslamate4china_mosquitto-data
# echo "=========>docker volume rm teslamate4china_teslamate-grafana-data ==>over"
echo "=========>docker-compose up -d ==>start"
# docker image prune -a
# docker container prune -a
# docker system prune
docker system df
docker build .
open -a "google chrome" http://localhost:4000
docker-compose logs -f
