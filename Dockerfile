#Converting from MTA server dockerfile
FROM ubuntu:latest

RUN apt-get update && apt-get upgrade -y

RUN dpkg --add-architecture i386

RUN apt-get update

RUN apt-get install zip bash tar unzip lib32z1 lib32ncurses5 screen wget -y

COPY samp-install.sh /app/

RUN chmod a+x /app/samp-install.sh

RUN bash /app/samp-install.sh

EXPOSE 7777

CMD ["./samp03/samp03svr"]
