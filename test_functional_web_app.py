import requests

url = "http://localhost:5004/"
response = requests.request("GET", url)
print(response.status_code)
print(response.text)
