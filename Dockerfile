FROM ubuntu
LABEL Name=jupyterhub Version=0.0.1

RUN apt-get -y update

COPY ./scripts/install.sh /tmp/jupyterhub/install.sh

RUN chmod +x /tmp/jupyterhub/install.sh
RUN /tmp/jupyterhub/install.sh

EXPOSE 8080 4000