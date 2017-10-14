FROM ruby:2.4.2

MAINTAINER mr.zouqilin@gmail.com

RUN mkdir /web/

ADD ./demo /web/

WORKDIR /web/demo

RUN bundle install --without development test

EXPOSE 3000

ENV RAILS_ENV production

CMD ["bundle exec puma -C config/puma.rb"]
