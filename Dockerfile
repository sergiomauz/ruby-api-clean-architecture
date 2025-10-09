FROM ruby:3.4.3-bookworm

RUN curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add -
RUN echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list
RUN apt-get update -qq && apt-get install -y nodejs yarn
RUN gem install rails bundler sqlite3 pg jwt dry-validation http
RUN gem install rspec rspec-rails debase ruby-debug-ide

# COPY setup.sh /setup.sh
RUN chmod +x /setup.sh

# COPY debug.rb /debug.rb
# RUN chmod a+r /debug.rb

# CMD ["/home/app/setup.sh"]