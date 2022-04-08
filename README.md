# Grimoire

## CI status

[![CircleCI](https://circleci.com/gh/ohr486/grimoire/tree/master.svg?style=svg)](https://circleci.com/gh/ohr486/grimoire/tree/master)

## How to setup local env

```bash
$ git clone git@github.com:ohr486/grimoire.git
$ cd grimoire
$ docker-compose build
$ docker-compose run app mix setup
$ docker-compose run app mix ecto.migrate
$ docker-compose up -d
```

## ERD

```bash
$ cd app
$ docker-compose run app mix erd
$ ./open.erd
```

