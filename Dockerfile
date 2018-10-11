FROM arm32v6/alpine:latest

RUN mkdir -p /aws && \
	apk update && \
	apk add --no-cache \
    groff \
    less \
    python \
    py-pip
RUN pip install --no-cache-dir awscli
#RUN apk del .build-deps
WORKDIR /aws
ENTRYPOINT ["aws"]