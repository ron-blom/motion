FROM debian:latest
LABEL maintainer="Ron Blom blom.ron@gmail.com"

RUN apt-get update && \
    apt-get -y install motion curl

ADD motion.conf /etc/motion/
ADD voordeur.conf /etc/motion/
ADD send_movie.sh /etc/motion/

RUN chmod +x /etc/motion/send_movie.sh

ENTRYPOINT ["/usr/bin/motion"]
