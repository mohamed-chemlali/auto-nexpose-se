FROM ubuntu:18.04

# Copy files
COPY entrypoint.sh ./entrypoint.sh
COPY install.conf ./install.conf 

# Download the installer file
RUN apt-get update && apt-get install -y wget
RUN wget https://download2.rapid7.com/download/InsightVM/Rapid7Setup-Linux64.bin
RUN chmod +x Rapid7Setup-Linux64.bin
RUN chmod +x ./entrypoint.sh
#ENTRYPOINT ["./entrypoint.sh"]

# Run the installation file
RUN ./Rapid7Setup-Linux64.bin -c < install.config

# paring the SE with console
RUN python create-se.py
