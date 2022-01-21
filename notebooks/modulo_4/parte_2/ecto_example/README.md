# Movie Reviews Sample Application

Sample application using [ecto](https://hexdocs.pm/ecto), [ecto_sql](https://hexdocs.pm/ecto_sql) and [livebook](https://github.com/livebook-dev/livebook)

## Installation

## Install asdf

Install [asdf](http://asdf-vm.com/guide/getting-started.html#_3-install-asdf)

## Install Elixir

```shell
asdf install
```

## Install application dependencies

```shell
asdf install
```

```elixir
mix deps.get
```

## Setup app

```shell
make up
```

```shell
mix do ecto.create, ecto.migrate
```

## Run livebook

```shell
mix phx.server
```

default livebook password: `livebook`