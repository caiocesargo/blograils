FROM ruby:3.2
RUN apt-get update -qq && apt-get install -y nodejs npm sqlite3
Run npm install -g yarn
WORKDIR /myapp
COPY Gemfile Gemfile.lock ./
RUN bundle install
COPY . .
EXPOSE 3000 
CMD ["bash"]