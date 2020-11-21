#!/bin/bash

mix deps.get
mix ecto.setup
mix phx.gen.cert localhost "*.localhost"
mix phx.server