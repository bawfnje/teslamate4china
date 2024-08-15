echo "Running main script as $(whoami)"
export PATH=$PATH:/usr/syno/sbin:/usr/syno/bin:/usr/local/sbin:/usr/local/bin
echo "PATH: $PATH"
echo "which docker:`which docker`"
cd /volume1/docker/teslamate
echo "\n>>>login -u admin -p makelt8485 i.bawfnje.work:8000"
docker login -u admin -p makelt8485 i.bawfnje.work:8000
echo "\n=========>docker-compose pull new ==>over"
sudo docker-compose pull teslamate
sudo docker-compose pull grafana
echo "\n=========>docker restart teslamate ==>over"
sudo docker-compose down teslamate
sudo docker-compose up -d teslamate
echo "\n=========>docker-compose restart grafana ==>over"
sudo docker-compose down grafana
sudo docker-compose up -d grafana