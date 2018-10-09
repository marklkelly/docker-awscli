FROM arm32v6/alpine:latest

RUN mkdir -p /aws
RUN apk add --no-cache --virtual .build-deps \
    groff \
    less \
    python \
    py-pip 
RUN pip install --no-cache-dir awscli 
RUN apk del .build-deps

WORKDIR /aws
ENTRYPOINT ["aws"]