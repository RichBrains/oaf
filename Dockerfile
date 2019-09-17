FROM richbrains/symfony

RUN echo "@testing http://dl-cdn.alpinelinux.org/alpine/edge/testing" >> /etc/apk/repositories
RUN apk --update --no-cache add \
        php7-mongodb@testing \
    && rm -rf /var/cache/apk/*

RUN apk --update --no-cache add \
        wkhtmltopdf \
        nano \
        ttf-freefont \
    && rm -rf /var/cache/apk/*
