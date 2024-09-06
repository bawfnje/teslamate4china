# Ensure selecting a tag that is available for arm/v7, arm64, and amd64
# https://hub.docker.com/r/grafana/grafana/tags
FROM grafana/grafana:11.0.1

ENV GF_ANALYTICS_REPORTING_ENABLED=false \
    GF_AUTH_ANONYMOUS_ENABLED=false \
    GF_AUTH_BASIC_ENABLED=false \
    GF_SECURITY_ADMIN_PASSWORD=admin \
    GF_SECURITY_ADMIN_USER=admin \
    GF_SECURITY_ALLOW_EMBEDDING=true \
    GF_SECURITY_DISABLE_GRAVATAR=true \
    GF_USERS_ALLOW_SIGN_UP=false \
    GF_USERS_DEFAULT_LANGUAGE=detect \
    GF_DATE_FORMATS_USE_BROWSER_LOCALE=true \
    DATABASE_PORT=5432 \
    DATABASE_SSL_MODE=disable

# 默认中文界面
USER root
RUN sed -i "s/;default_language = en-US/default_language = zh-Hans/g" /etc/grafana/grafana.ini
# 地图问题
RUN sed -i "s/;default_baselayer_config/default_baselayer_config/g" /etc/grafana/grafana.ini
RUN sed -i "s/;  \"type\": \"xyz\",/  \"type\": \"xyz\",/g" /etc/grafana/grafana.ini
RUN sed -i "s/;  \"config\":/  \"config\":/g" /etc/grafana/grafana.ini
RUN sed -i "s/;    \"attribution\":/   \"attribution\":/g" /etc/grafana/grafana.ini
RUN sed -i "s/;    \"url\"/    \"url\"/g" /etc/grafana/grafana.ini
RUN sed -i "s/tile.openstreetmap.org/tile.dhuar.com/g" /etc/grafana/grafana.ini
RUN sed -i "s/;  }/  }/g" /etc/grafana/grafana.ini
RUN sed -i "s/;}\`/}\`/g" /etc/grafana/grafana.ini
# grafana首页
RUN sed -i "s/;default_home_dashboard_path =/default_home_dashboard_path = \/dashboards\/overview.cn.json/g" /etc/grafana/grafana.ini

USER grafana

COPY logo.svg /usr/share/grafana/public/img/grafana_icon.svg
COPY favicon.png /usr/share/grafana/public/img/fav32.png
COPY apple-touch-icon.png /usr/share/grafana/public/img/apple-touch-icon.png

COPY datasource.yml /etc/grafana/provisioning/datasources/
COPY dashboards.yml /etc/grafana/provisioning/dashboards/
COPY dashboards/internal/*.json /dashboards_internal/
COPY dashboards/reports/*.json /dashboards_reports/
COPY dashboards/*.json /dashboards/

EXPOSE 3000
