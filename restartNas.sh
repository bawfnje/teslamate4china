echo "Running main script as $(whoami)"
export PATH=$PATH:/usr/syno/sbin:/usr/syno/bin:/usr/local/sbin:/usr/local/bin
echo "PATH: $PATH"
echo "which docker:`which docker`"
cd /volume1/docker/teslamate
sudo docker-compose stop
echo "\n=========>docker-compose stop ==>over"
sudo docker rm teslamate4china-service
# sudo docker rm teslamate4china_database
sudo docker rm teslamate4china-grafana
# sudo docker rm teslamate4china_mosquitto
echo "\n=========>docker rm teslamate4china_* ==>over"
sudo docker image rm teslamate4china-teslamate4china
sudo docker image rm teslamate4china-grafana
sudo rm -rf ./data/teslamate-grafana-data
echo "\n=========>docker image rm teslamate4china_teslamate4china ==>over"
# sudo docker volume rm teslamate4china_teslamate-grafana-data
# sudo docker volume rm teslamate4china_teslamate-db
# sudo docker volume rm teslamate4china_mosquitto-conf
# sudo docker volume rm teslamate4china_mosquitto-data
# echo "=========>docker volume rm teslamate4china_teslamate-grafana-data ==>over"
echo "\n=========>docker-compose up -d ==>start"
sudo docker-compose up -d
