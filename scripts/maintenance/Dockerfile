FROM debian:bullseye-slim
MAINTAINER Daniel Sobe <daniel.sobe@sorben.com>

# docker build -t dudle-maint .

RUN apt update

RUN apt -y install cron nano docker docker-compose

COPY cronjob /etc/cron.d/cronjob

RUN chmod 644 /etc/cron.d/cronjob

COPY dudle-maint.sh /

RUN chmod 755 dudle-maint.sh

CMD [“/bin/bash”, “-c”, “cron && tail -f /var/log/cron.log”]
