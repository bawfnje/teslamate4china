echo "! 停止并删除已有的docker"
docker-compose down
echo  "? 检查data文件夹是否存在"
FOLDER_PATH="/Users/chenweiming/downloads/data"
if [ -d "$FOLDER_PATH" ]; then
  echo "> 删除本地数据文件夹："$FOLDER_PATH
  rm -rf $FOLDER_PATH
else
  echo "! data文件夹已不存在" 
fi
echo "? 检查本地是否有data的压缩文件"
if ls /Users/chenweiming/downloads/teslamate-$(date +%Y%m%d)*.tar.gz 1> /dev/null 2>&1; then
  echo "> 删除下载压缩文件：/Users/chenweiming/downloads/teslamate-$(date +%Y%m%d)*.tar.gz"
  rm -rf /Users/chenweiming/downloads/teslamate-$(date +%Y%m%d)*.tar.gz
else
  echo "! data的压缩文件已不存在"
fi

echo "? 检查 docker system df"
docker image prune -a
docker container prune -a
docker system prune
docker system df
