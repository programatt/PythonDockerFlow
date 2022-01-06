FROM python:3.9

COPY requirements.txt /tmp/requirements.txt

RUN pip3 install -r /tmp/requirements.txt && rm /tmp/requirements.txt

COPY src/panoptes /usr/src/app/panoptes
COPY tests /usr/src/app/tests

WORKDIR /usr/src/app
CMD ["sh"]
