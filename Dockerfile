FROM ubuntu:18.04
COPY entrypoint.sh ./entrypoint.sh

COPY connection.conf ./connection.conf 
RUN apt-get update && apt-get install -y wget
RUN wget https://download2.rapid7.com/download/InsightVM/Rapid7Setup-Linux64.bin
RUN chmod +x Rapid7Setup-Linux64.bin
RUN chmod +x ./entrypoint.sh
#ENTRYPOINT ["./entrypoint.sh"]
RUN ./Rapid7Setup-Linux64.bin -c <connection.config
RUN python create-se.py
