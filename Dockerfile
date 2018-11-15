FROM abiosoft/caddy:0.11.1-no-stats

MAINTAINER AlloVince <allo.vince@gmail.com>

ADD Caddyfile /etc/Caddyfile
RUN mkdir /ariang && cd /ariang && wget -q --no-check-certificate https://github.com/mayswind/AriaNg/releases/download/0.5.0/AriaNg-0.5.0.zip && unzip -o AriaNg-0.5.0.zip && rm -rf AriaNg-0.5.0.zip
WORKDIR /ariang

