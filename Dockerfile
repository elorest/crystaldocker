FROM drujensen/crystal:0.22.0-1

ENV AMBER_VERSION 0.1.13 

RUN curl -L https://github.com/Amber-Crystal/amber_cmd/archive/v$AMBER_VERSION.tar.gz | tar xvz -C /usr/local/share/. && cd /usr/local/share/Amber-Cmd-$AMBER_VERSION && crystal deps && make

RUN ln -sf /usr/local/share/Amber-Cmd-$AMBER_VERSION/bin/amber /usr/local/bin/amber

WORKDIR /app/user

ADD /root/crystaldocker /app/user

RUN crystal deps

CMD ["crystal", "spec"]
