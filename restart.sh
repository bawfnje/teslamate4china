# open -g -a "Docker Desktop.app"
docker-compose stop
echo "=========>docker-compose stop ==>over"
# docker rm teslamate4china-service
# docker rm teslamate4china_database
docker rm teslamate4china-grafana
# docker rm teslamate4china_mosquitto
echo "=========>docker rm teslamate4china_* ==>over"
# docker image rm teslamate4china-service
docker image rm teslamate4china-grafana
rm -rf ./shell/data/teslamate-grafana-data
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
docker-compose up -d
open -a "firefox" http://localhost:4000
# /Users/chenweiming/dev/github/tesla_auth/tesla_auth
docker-compose logs -f
