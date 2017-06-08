FROM alpine:3.5

RUN apk add --no-cache python3 && \
    python3 -m ensurepip && \
    rm -r /usr/lib/python*/ensurepip && \
    pip3 install --upgrade pip setuptools && \
    rm -r /root/.cache

ADD requirements.txt /
RUN pip install --no-cache-dir -r requirements.txt
CMD [ "python3", "./app.py" ]
