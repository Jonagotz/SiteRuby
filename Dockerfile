FROM ruby:3.0.2-slim-buster
RUN apt-get update

RUN apt install postgresql libpq-dev  ruby-full build-essential  curl nano git wget -y

RUN apt-get install -y zsh


RUN apt-get upgrade -y

RUN sh -c 'echo "deb http://apt.postgresql.org/pub/repos/apt $(lsb_release -cs)-pgdg main" > /etc/apt/sources.list.d/pgdg.list'


RUN wget --quiet -O - https://www.postgresql.org/media/keys/ACCC4CF8.asc | apt-key add -

RUN apt-get update

RUN apt-get install postgresql-14 -y


RUN wget https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O - | zsh || true

RUN curl -sL https://deb.nodesource.com/setup_12.x | bash
RUN apt-get install --yes nodejs

ENV TZ=America/Sao_Paulo

RUN apt-get update
RUN apt-get install wkhtmltopdf -y

RUN gem install debase
RUN gem install ruby-debug-ide --pre

WORKDIR /app

COPY Gemfile /app
COPY Gemfile.lock /app

RUN apt-get install -y yarn

RUN bundle install
RUN rails webpacker:install


CMD ["rails", "s", "-b" , "0.0.0.0"]

EXPOSE 3000
