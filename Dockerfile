FROM ruby:alpine

RUN apk add --update \
	busybox \
	git \
	nano \
	vim

ENV EDITOR=/usr/bin/vim

RUN adduser -D -u 1000 stepup

USER stepup

RUN gem install step-up

WORKDIR /app

ENTRYPOINT ["stepup"]

CMD ["version"]
