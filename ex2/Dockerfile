FROM ruby:2.5-alpine3.7

RUN mkdir -p /usr/src/app

COPY . /usr/src/app

WORKDIR /usr/src/app

RUN bundle install 

CMD ruby app.rb
