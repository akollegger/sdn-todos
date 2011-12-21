Spring Data Neo4j Todos
=======================

A simple todos application using Spring Data Neo4j (inspired by the SproutCore demo application),
with a simple command-line bash script interface.

Local build and run
-------------------

* Run a local neo4j server

```bash
export NEO4J_REST_URL=http://localhost:7474/db/data
export NEO4J_LOGIN=""
export NEO4J_PASSWORD=""
```

* Build, then run

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

CLI Tool
--------

A simplistic `todos` script in the `bin` directory can directly create, delete and list todos.

    Usage: todos [ list | mk | rm ]

      todos list            - list current todos
      todos mk "a new todo" - to create a todo
      todos rm 1            - to remove the todo with id 1

