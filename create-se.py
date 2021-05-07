import requests

ip = requests.get('https://api.ipify.org',verify='/etc/ssl/certs/ca-certificates.crt').text
d = {'adress': ip, 'id': 1, 'name': 'scan_engine', 'port': 40814}
x = requests.post('https://51.210.3.140:3780/api/3/scans_engines', data=d, verify='/etc/ssl/certs/ca-certificates.crt')
print(x.status_code)

