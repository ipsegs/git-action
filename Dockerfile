from python:slim

expose 5000

run useradd -u 1700 -m ipsegsblog
user ipsegsblog

workdir /home/ipsegsblog

copy requirements.txt requirements.txt
run pip install -r requirements.txt
copy . .
entrypoint ["./boot.sh"]

