# TeslaMate-特斯拉伙伴
持续汉化中...

[![CI](https://github.com/teslamate-org/teslamate/actions/workflows/elixir.yml/badge.svg)](https://github.com/teslamate-org/teslamate/actions/workflows/elixir.yml)
[![Publish Docker images](https://github.com/teslamate-org/teslamate/actions/workflows/buildx.yml/badge.svg)](https://github.com/teslamate-org/teslamate/actions/workflows/buildx.yml)
[![](https://coveralls.io/repos/github/teslamate-org/teslamate/badge.svg?branch=master)](https://coveralls.io/github/teslamate-org/teslamate?branch=master)
[![](https://img.shields.io/docker/v/teslamate/teslamate/latest)](https://hub.docker.com/r/teslamate/teslamate)
[![](https://img.shields.io/docker/image-size/teslamate/teslamate/latest)](https://hub.docker.com/r/teslamate/teslamate)
[![](https://img.shields.io/docker/pulls/teslamate/teslamate?color=%23099cec)](https://hub.docker.com/r/teslamate/teslamate)
[![](https://img.shields.io/badge/Donate-PayPal-ff69b4.svg)](https://www.paypal.com/cgi-bin/webscr?cmd=_s-xclick&hosted_button_id=YE4CPXRAV9CVL&source=url)

为您的特斯拉提供功能强大的自托管数据记录器。

- 用[**Elixir**](https://elixir-lang.org/)语言开发
- 数据存储在**Postgres**数据库中
- 使用**Grafana进行可视化和数据分析**
- 车辆数据发布到本地**MQTT**代理
- 支持Grafana在中国显示地图及地址获取
- 全汉化Grafana菜单及内容，及英文菜单保留对照
- Grafana菜单优化排序及链式访问

## 文档

该文档存在 [docs.teslamate.org](https://docs.teslamate.org/).

## 特色

**仪表板**

- [驾驶和充电报告](https://docs.teslamate.org/docs/screenshots#charging-details)
- [驱动器效率报告](https://docs.teslamate.org/docs/screenshots#efficiency)
- [消耗量（净/毛）](https://docs.teslamate.org/docs/screenshots#efficiency)
- [添加的电荷能量与使用的能量](https://docs.teslamate.org/docs/screenshots#charges)
- [吸血鬼下水道(非驾驶电量消耗)](https://docs.teslamate.org/docs/screenshots#vampire-drain)
- [预计100%范围（电池退化）](https://docs.teslamate.org/docs/screenshots#projected-range)
- [充电状态](https://docs.teslamate.org/docs/screenshots#charging-stats)
- [驱动器统计信息](https://docs.teslamate.org/docs/screenshots#drive-stats)
- [已安装更新的历史记录](https://docs.teslamate.org/docs/screenshots#updates)
- [查看您的汽车何时在线或睡着](https://docs.teslamate.org/docs/screenshots#states)
- [终身驾驶地图](https://docs.teslamate.org/docs/screenshots/#lifetime-driving-map)
- [到访地图](https://docs.teslamate.org/docs/screenshots/#visited-addresses)
- [电池健康](https://docs.teslamate.org/docs/screenshots/#battery-health)

**概要**

- 高精度驱动数据记录
- 没有额外的吸血鬼排放：汽车会尽快入睡
- 自动地址查找
- 轻松集成到家庭助理（通过MQTT）
- 轻松集成到Node Red&Telegram（通过MQTT）
- 用于创建自定义位置的地理围栏功能
- 每个特斯拉账户支持多辆车
- 费用成本跟踪
- 从TeslaFi和tesla apiscraper导入

## 截图

![网页界面](/website/static/screenshots/web_interface_cn.png) 

![驱动器详细信息](/website/static/screenshots/drive_cn.png)

![电池健康状况](/website/static/screenshots/battery-health_cn.png)

<p align="center">
  <strong><a href="https://docs.teslamate.org/docs/screenshots">更多屏幕截图</a></strong>
</p>

## 贡献

- 初始作者: 阿德里安·库普夫 – [贡献者列表](https://github.com/teslamate-org/teslamate/graphs/contributors)
- 贡献者名单:
<a href="https://github.com/teslamate-org/teslamate/graphs/contributors"><img src="https://contrib.rocks/image?repo=teslamate-org/teslamate"  alt="TeslaMate贡献者"/></a>
- 根据MIT许可证分发
- 汉化: 陈伟明(bawfnje)

