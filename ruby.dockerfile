FROM ruby:latest

WORKDIR /usr/src/app

COPY Gemfile Gemfile.lock ./
RUN gem install jekyll-mermaid
RUN bundle install
EXPOSE 4000