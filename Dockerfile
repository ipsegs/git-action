from python:3.11.0rc2-slim-bullseye

expose 5000

run useradd -u 17000 -m ipsegsblog
user ipsegsblog

workdir /home/ipsegsblog

copy requirements.txt requirements.txt
run pip install -r requirements.txt
copy . .
entrypoint ["./boot.sh"]

