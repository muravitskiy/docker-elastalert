FROM python:2

LABEL maintainer="Vitalii Muravitskiy, https://github.com/muravitskiy"

ENV ELASTALERT_VERSION=0.1.21
ENV ELASTALERT_CONFIG_DIR=/etc/elastalert
ENV ELASTALERT_RULES_DIR=/etc/elastalert/rules
ENV ELASTALERT_CONFIG_FILE=config.yaml
ENV ELASTALERT_INDEX="elastalert_status"
ENV ELASTALERT_OLD_INDEX=""

VOLUME [${ELASTALERT_CONFIG_DIR}]

RUN pip install elastalert==${ELASTALERT_VERSION}

COPY ./entrypoint.sh ./
RUN chmod +x ./entrypoint.sh

ENTRYPOINT ./entrypoint.sh
