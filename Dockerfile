#Converting from MTA server dockerfile
FROM debian:latest

RUN apt-get update && apt-get upgrade -y

RUN dpkg --add-architecture i386

RUN apt-get update

RUN apt-get install libstdc++6:i386 libgcc1:i386 zlib1g:i386 libncurses5:i386 lib32stdc++6 -y

RUN apt-get install zip bash tar unzip screen wget -y

RUN  apt-get update

COPY samp-install.sh /app/

RUN chmod a+x /app/samp-install.sh

RUN bash /app/samp-install.sh

EXPOSE 7777

WORKDIR "/samp03"

CMD ["./samp03svr"]
