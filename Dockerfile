FROM alpine:3.5

ADD requirements.txt /code/
WORKDIR /code

RUN apk add --no-cache ca-certificates python3 gcc make g++ zlib-dev && \
    python3 -m ensurepip && \
    rm -r /usr/lib/python*/ensurepip && \
    pip3 install --upgrade pip setuptools && \
    pip3 install --no-cache-dir -r requirements.txt && \
    rm -r /root/.cache

CMD [ "python3", "app.py" ]
