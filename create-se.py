import requests

ip = requests.get('https://api.ipify.org',verify='/etc/ssl/certs/ca-certificates.crt').text
d = {'adress': ip, 'id': 1, 'name': 'scan_engine', 'port': 40814}
x = requests.post('https://<adress>:3780/api/3/scans_engines', data=d)
print(x.status_code)

