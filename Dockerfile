# We're using the Elixir 1.5.2 base image and extending it
FROM docker.io/library/elixir:1.9.4


RUN  mkdir /app
RUN  mkdir /app/assets
COPY assets app/
COPY mix.exs mix.lock app/
WORKDIR /app

# Install hex package manager
# By using --force, we don’t need to type “Y” to confirm the installation
RUN mix local.hex --force

RUN mix local.rebar --force

RUN curl -sL https://deb.nodesource.com/setup_15.x | bash - && \
apt-get install -yq nodejs build-essential && \
npm install -g npm

RUN cd assets && npm install

COPY ./docker-entrypoint.sh /docker-entrypoint.sh
RUN chmod +x /docker-entrypoint.sh
ENTRYPOINT ["/docker-entrypoint.sh"]    




