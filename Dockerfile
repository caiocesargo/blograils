FROM ruby:3.2.9

WORKDIR /myapp

RUN apt-get update -qq && \
    apt-get install -y --no-install-recommends \
    build-essential \
    libyaml-dev

COPY Gemfile Gemfile.lock ./
RUN bundle install

COPY entrypoint.sh ./entrypoint.sh
RUN chmod +x entrypoint.sh

COPY . .

ENTRYPOINT ["./entrypoint.sh"]

EXPOSE 3000
CMD ["rails", "server", "-b", "0.0.0.0"]


