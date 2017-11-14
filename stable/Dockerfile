FROM alpine:3.5

ADD requirements.txt /code/
WORKDIR /code

RUN apk add --no-cache ca-certificates python3 \
    && python3 -m ensurepip \
    && rm -r /usr/lib/python*/ensurepip \
    && pip3 install --upgrade pip setuptools \
    && rm -r /root/.cache

RUN apk add --no-cache build-base python3-dev \
    && pip3 install --no-cache-dir -r requirements.txt \
    && apk del build-base python3-dev

CMD [ "python3", "app.py" ]
