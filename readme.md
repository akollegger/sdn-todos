Spring Data Neo4j Todos
=======================

A simple todos application using Spring Data Neo4j (inspired by the SproutCore demo application),
with a simple command-line bash script interface.

Local build and run
-------------------

* Run a local neo4j server

* Build, then run the todo application

`mvn clean package jetty:run-war`

* Try it out

```bash
./bin/todo mk "get ready for cloud deployment"
./bin/todo list
```

Be my Hero(ku)
--------------
Interested in deploying to Heroku's cloud? Then check out the `heroku-deploy` branch
which has the needed modifications and instructions for deploying a Spring Data Neo4j
application on Heroku.

For a detailed play-by-play, read [Becoming a Heroku](https://github.com/akollegger/sdn-todos/wiki/Becoming-a-Hero(ku))

CLI Tool
--------

A simplistic `todo` script in the `bin` directory can directly create, delete and list todos.

    Usage: todo [ list | mk | rm ]

      todo list            - list current todos
      todo mk "a new todo" - to create a todo
      todo rm 1            - to remove the todo with id 1

