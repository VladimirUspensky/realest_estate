FROM python:3.8-alpine
WORKDIR /app
COPY . .
RUN apk add jpeg-dev zlib-dev
RUN apk update --no-cache \
    && apk add build-base postgresql-dev libpq --no-cache --virtual .build-deps \
    && pip install --no-cache-dir --upgrade pip \
    && pip install --no-cache-dir -r requirements.txt \
    && apk del .build-deps
RUN apk add postgresql-libs libpq --no-cache
