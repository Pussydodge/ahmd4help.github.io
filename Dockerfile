FROM ubuntu

LABEL maintainer "Ahmed Pro <Ahmed4help@info.me>"

# install requirements
RUN apt update -y && apt install python3 python3-pip -y

# configure working directory
WORKDIR /python-docker

# copy files
COPY static /python-docker/static
COPY templates /python-docker/templates
COPY app.py /python-docker/app.py
COPY requirements.txt /python-docker/requirements.txt
COPY wsgi.py /python-docker/wsgi.py
COPY README.md /python-docker/README.md
COPY LICENSE /python-docker/LICENSE

# install project requirements
RUN pip3 install -r requirements.txt

# expose docker port to host machine
EXPOSE 8080

# migrate db
RUN rm -rf migrations
RUN flask db init
RUN flask db migrate -m "initial migration"
RUN flask db upgrade

# start project
CMD [ "waitress-serve", "wsgi:app" ]