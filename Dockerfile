FROM alpine:3.10

ENV SLACK_CLI_TOKEN='token'

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
    && rm -rf /var/cache/apk/*

CMD tail -f /dev/null
