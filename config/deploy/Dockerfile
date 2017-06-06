FROM drujensen/crystal:0.22.0-1

ENV AMBER_VERSION 0.1.13 

WORKDIR /app/user

ADD /var/www /app/user

RUN crystal deps

CMD ["crystal", "spec"]
