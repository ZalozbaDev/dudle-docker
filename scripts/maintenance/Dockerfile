FROM debian:bullseye-slim
MAINTAINER Daniel Sobe <daniel.sobe@sorben.com>

# docker build -t dudle-maint .

# docker build -t dudle-maint . --no-cache


RUN apt update

RUN apt -y install cron nano docker docker-compose

RUN apt -y install bash

COPY cronjob /etc/cron.d/cronjob

RUN chmod 644 /etc/cron.d/cronjob

RUN crontab /etc/cron.d/cronjob

COPY dudle-maint.sh /

RUN chmod 755 dudle-maint.sh

COPY startme.sh /

RUN chmod 755 startme.sh

CMD ["/bin/bash", "-c", "/startme.sh"] 
