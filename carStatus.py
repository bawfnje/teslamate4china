import requests
from requests.auth import HTTPBasicAuth
import urllib3

# 禁用InsecureRequestWarning
urllib3.disable_warnings(urllib3.exceptions.InsecureRequestWarning)


def get_tesla_battery_status():
    url = "https://i.bawfnje.work:4433/api/v1/cars/1/status"
    response = requests.get(url, auth=HTTPBasicAuth(
        'bawfnje', 'Makelt8485'), verify=False)
    if response.status_code == 200:
        data = response.json()
        battery_level = data['charge_state']['battery_level']
        return battery_level
    else:
        print(f"Error: {response.status_code}")
        print(response.text)
        return None


if __name__ == "__main__":
    battery_status = get_tesla_battery_status()
    if battery_status is not None:
        print(f"当前电池电量: {battery_status}%")
    else:
        print("获取电池电量失败")
