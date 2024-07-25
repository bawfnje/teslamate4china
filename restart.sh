echo "\n注意需要先下载nas:/v1/docker/backup/teslamate/*.gz/data到本地~/downloads/data."
open -g -a "Docker Desktop.app"
docker-compose stop
echo "\n=========>docker-compose stop ==>over"
docker rm teslamate4china-service
# docker rm teslamate4china_database
docker rm teslamate4china-grafana
# docker rm teslamate4china_mosquitto
echo "\n=========>docker rm teslamate4china_* ==>over"
docker image rm teslamate4china-teslamate4china
docker image rm teslamate4china-grafana
rm -rf ./shell/data/teslamate-grafana-data
echo "\n=========>docker image rm teslamate4china_teslamate4china ==>over"
# docker volume rm teslamate4china_teslamate-grafana-data
# docker volume rm teslamate4china_teslamate-db
# docker volume rm teslamate4china_mosquitto-conf
# docker volume rm teslamate4china_mosquitto-data
# echo "=========>docker volume rm teslamate4china_teslamate-grafana-data ==>over"
echo "\n=========>docker system df"
# docker image prune -a
# docker container prune -a
# docker system prune
docker system df
echo "\n=========>docker-compose up -d ==>start"
docker-compose up -d
sleep 20
read -p "首次本地使用需打开配置，修改控制台地址：http://localhost:3000"
open -a "firefox" http://localhost:4000
# /Users/chenweiming/dev/github/tesla_auth/tesla_auth
docker-compose logs -f
