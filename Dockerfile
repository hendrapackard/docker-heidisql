FROM tagplus5/wine

RUN DEBIAN_FRONTEND=noninteractive && \
    sudo apt-get update && \
    sudo apt-get upgrade -y

RUN sudo apt-get install -y --no-install-recommends wget unzip

RUN mkdir -p /home/ubuntu/heidisql && \
    cd /home/ubuntu/heidisql && \
    wget http://www.heidisql.com/downloads/releases/HeidiSQL_9.4_Portable.zip && \
    unzip /home/ubuntu/heidisql/HeidiSQL_9.4_Portable.zip && \    
    rm /home/ubuntu/heidisql/HeidiSQL_9.4_Portable.zip

RUN apt-get autoremove -y && \
    rm -rf /var/lib/apt/lists/*

CMD ["wine", "/home/ubuntu/heidisql/heidisql.exe"]
