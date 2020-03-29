FROM ubuntu
LABEL Name=jupyterhub Version=0.0.1

RUN apt-get -y update

COPY ./scripts/install.sh /tmp/jupyterhub/install.sh
RUN chmod +x /tmp/jupyterhub/install.sh

COPY ./scripts/initialize.sh /tmp/jupyterhub/initialize.sh
RUN chmod +x /tmp/jupyterhub/initialize.sh

RUN /tmp/jupyterhub/install.sh

ENV default_username jupyteruser
ENV default_password juppass

EXPOSE 8080 4000

CMD ["sh", "/tmp/jupyterhub/initialize.sh"]
