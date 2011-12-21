Spring Data Neo4j Todos
=======================

Backend persistence for the Ember (formerly SproutCore) demo application.

Local build and run
-------------------

* Run a local neo4j server

`export NEO4J_REST_URL=http://localhost:7474/db/data`
`export NEO4J_LOGIN=""`
`export NEO4J_PASSWORD=""`

* Build, then run

`mvn package`
`sh target/bin/webapp`

Deploy on heroku
----------------

Heroku will use the `Procfile` to run the generated shell script which starts up the webserver.

CLI Tool
--------

A simplistic `todos` script in the `bin` directory can directly create, delete and list todos.

    Usage: todos [ list | mk | rm ]

      todos list            - list current todos
      todos mk "a new todo" - to create a todo
      todos rm 1            - to remove the todo with id 1

