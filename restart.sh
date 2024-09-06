echo "检查docker是否运行"
open -g -a "Docker Desktop.app"
sleep 1
osascript -e 'tell application "System Events" to set frontmost of process "Terminal" to true'
echo  "检查data文件夹是否存在"
FOLDER_PATH="/Users/chenweiming/downloads/data"
if [ -d "$FOLDER_PATH" ]; then
  echo "使用本地数据文件夹："$FOLDER_PATH
else
  echo "检查本地是否已有data的压缩文件"
  if ls /Users/chenweiming/downloads/teslamate-$(date +%Y%m%d)*.tar.gz 1> /dev/null 2>&1; then
    echo "已下载压缩文件：/Users/chenweiming/downloads/teslamate-$(date +%Y%m%d)*.tar.gz"
  else
    echo "\n下载nas:/v1/docker/backup/teslamate/*.gz/data 到本地："$FOLDER_PATH
    cp /Volumes/docker/backup/teslamate/teslamate-$(date +%Y%m%d)*.tar.gz /Users/chenweiming/downloads/
  fi
  echo "解压文件：/Users/chenweiming/downloads/teslamate-$(date +%Y%m%d)*.tar.gz"
  tar -zxvf /Users/chenweiming/downloads/teslamate-$(date +%Y%m%d)*.tar.gz -C /Users/chenweiming/downloads/
  mv /Users/chenweiming/downloads/volume2/dockerdata/teslamate/data /Users/chenweiming/downloads/
  rm -rf /Users/chenweiming/downloads/volume2
fi
echo "已存在data文件夹"
ls -Alh /Users/chenweiming/downloads/data
echo "停止已有的docker"
docker-compose stop
echo "\n=========>docker-compose stop ==>over"
# docker rm teslamate4china-service
# docker rm teslamate4china_database
docker rm teslamate4china-grafana
# docker rm teslamate4china_mosquitto
echo "\n=========>docker rm teslamate4china_* ==>over"
# docker image rm teslamate4china-teslamate4china
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
# read -p "首次本地使用需打开配置，修改控制台地址：http://localhost:3000"
# open -a "Google Chrome" http://localhost:4000
open -a "Google Chrome"
# /Users/chenweiming/dev/github/tesla_auth/tesla_auth
docker-compose logs -f
