
Please ensure you are using Docker Compose V2. This project relies on the `docker compose` command, not the previous `docker-compose` standalone program.

https://docs.docker.com/compose/#compose-v2-and-the-new-docker-compose-command

Check your docker compose version with:
```
% docker compose version
Docker Compose version v2.10.2
```

## Initial setup
```
docker compose build
docker compose run --rm web bin/rails db:setup
```

## Running the Rails app
```
docker compose up
```

## Running the Rails console
When the app is already running with `docker-compose` up, attach to the container:
```
docker compose exec web bin/rails c
```

When no container running yet, start up a new one:
```
docker compose run --rm web bin/rails c
```

## Updating gems
```
docker compose run --rm web bundle update
docker compose up --build
```

## Credits/References

### Rails with Docker
* [Quickstart: Compose and Rails](https://docs.docker.com/compose/rails/)
* [Docker for Rails Developers
Build, Ship, and Run Your Applications Everywhere](https://pragprog.com/titles/ridocker/docker-for-rails-developers/)
* [Ruby on Whales:
Dockerizing Ruby and Rails development](https://evilmartians.com/chronicles/ruby-on-whales-docker-for-ruby-rails-development)
* [Rails generator to produce Dockerfiles and related files](https://github.com/rubys/dockerfile-rails)
* [docker init](https://docs.docker.com/engine/reference/commandline/init/)
* [Rails 7.1 Dockerfile Generator Template](https://github.com/rails/rails/blob/main/railties/lib/rails/generators/rails/app/templates/Dockerfile.tt)

### Rails 7 with importmaps 

* [Alpha preview: Modern JavaScript in Rails 7 without Webpack](https://www.youtube.com/watch?v=PtxZvFnL2i0)

### Rails 7 with hotwire

* [Stimulus 3 + Turbo 7 = Hotwire 1.0](https://world.hey.com/dhh/stimulus-3-turbo-7-hotwire-1-0-9d507133)
* [Turbo 7](https://world.hey.com/hotwired/turbo-7-0dd7a27f)
* [Rails 7 will have three great answers to JavaScript in 2021+](https://world.hey.com/dhh/rails-7-will-have-three-great-answers-to-javascript-in-2021-8d68191b)
* [Hotwire Turbo Replacing Rails UJS](https://www.driftingruby.com/episodes/hotwire-turbo-replacing-rails-ujs)

#   P h o n e _ l i s t _ r o r  
 