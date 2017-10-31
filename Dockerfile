FROM python:2.7

ENV ELASTALERT_VERSION=0.1.20
ENV ELASTALERT_CONFIG=/etc/elastalert/config.yaml

RUN pip install elastalert==${ELASTALERT_VERSION}

CMD elastalert --config=${ELASTALERT_CONFIG} --verbose