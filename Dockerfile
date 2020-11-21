# We're using the Elixir 1.5.2 base image and extending it
FROM elixir:1.9.4


RUN  mkdir /app
RUN  mkdir /app/assets
COPY assets app/
COPY mix.exs mix.lock app/
WORKDIR /app

# Install hex package manager
# By using --force, we don’t need to type “Y” to confirm the installation
RUN mix local.hex --force

RUN mix local.rebar --force && \
    mix deps.get && \
    mix ecto.setup




