FROM arm32v6/alpine:latest
RUN [ "cross-build-start" ]

RUN mkdir -p /aws && \
 apk add --no-cache --virtual .build-deps \
    groff \
    less \
    python \
    py-pip && \
    pip install --no-cache-dir awscli && \
	apk del .build-deps

WORKDIR /aws
ENTRYPOINT ["aws"]


RUN [ "cross-build-end" ]