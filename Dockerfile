FROM alpine:3.10

ENV SLACK_CLI_TOKEN='token'
ENV B2_APPLICATION_KEY_ID=''
ENV B2_APPLICATION_KEY=''
ENV PG_HOST=''
ENV PG_PORT=''
ENV PG_DB_NAME=''
ENV PG_USER=''
ENV PG_PASS=''


RUN apk add --no-cache \
    bash \
    gcc \
    postgresql-client \
    curl \
    wget \
    jq \
    openssh-client \
    git \
    vim \
    screen \
    python3 \
    python3-dev \
    py-pip \
    py3-psycopg2 \
    postgresql-dev \
    zip \
    unzip \
    && rm -rf /var/cache/apk/*

RUN pip install \
    b2

ADD ./scripts /opt/scripts
RUN mv /opt/scripts/pg-local /usr/bin

CMD tail -f /dev/null
