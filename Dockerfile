FROM ruby:3.2.9

WORKDIR /myapp

RUN apt-get update -qq && \
    apt-get install -y --no-install-recommends \
      build-essential \
      libyaml-dev \
      inotify-tools \
      nodejs \
      npm \
  && apt-get clean && rm -rf /var/lib/apt/lists/*

COPY Gemfile Gemfile.lock ./
RUN bundle install

COPY entrypoint.sh /usr/bin/entrypoint.sh
RUN chmod +x /usr/bin/entrypoint.sh

COPY . .

ENTRYPOINT ["/usr/bin/entrypoint.sh"]

EXPOSE 3000
CMD ["rails", "server", "-b", "0.0.0.0"]
