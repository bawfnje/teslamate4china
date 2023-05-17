echo ">>>>run docker!"
osascript <<EOD
    tell application "docker"
	    run
    end tell
EOD
echo ">>>>run docker over! docker build start..."
docker build ./grafana/ --pull -t i.bawfnje.work:8000/teslamate4china_grafana:latest
echo ">>>>docker build end! docker push start..."
docker login -u admin -p makelt8485 i.bawfnje.work:8000
docker push i.bawfnje.work:8000/teslamate4china_grafana:latest
