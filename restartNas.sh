echo "Running main script as $(whoami)"
export PATH=$PATH:/usr/syno/sbin:/usr/syno/bin:/usr/local/sbin:/usr/local/bin
echo "PATH: $PATH"
echo "which docker:`which docker`"
cd /volume1/docker/teslamate
# sudo docker-compose stop
echo "\n=========>docker-compose stop ==>over"
sudo docker pull teslamate4china-service
sudo docker pull teslamate4china-grafana
echo "\n=========>docker rm teslamate4china_* ==>over"
sudo docker-compose down teslamate4china-service
sudo docker-compose up -d teslamate4china-service
sudo docker-compose down teslamate4china-grafana
sudo docker-compose up -d teslamate4china-grafana