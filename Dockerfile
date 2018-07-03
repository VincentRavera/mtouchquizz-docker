FROM bitnami/wordpress:latest
#FROM debian

LABEL maintainer Vincent RAVERA <ravera.vincent@gmail.com>

RUN apt-get update

# Misc
RUN apt-get install -y curl wget unzip
#git python python3
#Plugins

RUN wget https://downloads.wordpress.org/plugin/mtouch-quiz.3.1.3.zip -P /opt/

RUN unzip /opt/mtouch-quiz.3.1.3.zip -d /opt/bitnami/wordpress/wp-content/plugins/
