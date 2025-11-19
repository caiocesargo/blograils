FROM ruby:3.2.9

WORKDIR /myapp

RUN apt-get update -qq && \
    apt-get install -y --no-install-recommends \
    build-essential \
    libyaml-dev

COPY Gemfile Gemfile.lock ./

RUN bundle install

COPY . .

