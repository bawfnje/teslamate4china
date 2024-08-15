echo "Running main script as $(whoami)"
export PATH=$PATH:/usr/syno/sbin:/usr/syno/bin:/usr/local/sbin:/usr/local/bin
echo "PATH: $PATH"
echo "which docker:`which docker`"
cd /volume1/docker/teslamate
echo ">>>login -u admin -p makelt8485 i.bawfnje.work:8000"
sudo docker login -u admin -p makelt8485 i.bawfnje.work:8000
echo "=========>docker-compose pull new ==>over"
sudo docker-compose pull teslamate
sudo docker-compose pull grafana
echo "=========>docker restart teslamate ==>over"
sudo docker-compose down teslamate
sudo docker-compose up -d teslamate
echo "=========>docker-compose restart grafana ==>over"
sudo docker-compose down grafana
sudo docker-compose up -d grafana