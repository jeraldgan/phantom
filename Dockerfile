FROM ruby:2.7

WORKDIR /myapp

COPY . /myapp
COPY Gemfile.lock /myapp/Gemfile.lock
RUN bundle install

EXPOSE 4000

CMD ["bundle", "exec", "jekyll", "serve"]