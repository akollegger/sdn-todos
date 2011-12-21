Spring Data Neo4j Todos
=======================

A simple todo list using Spring Data Neo4j.

Local build and run
-------------------

* Run a local neo4j server

`export NEO4J_REST_URL=http://localhost:7474/db/data`
`export NEO4J_LOGIN=""`
`export NEO4J_PASSWORD=""`

* Build, then run locally

`mvn package`
`sh target/bin/webapp`

Become a Hero(ku)
-----------------

* Create an account on [Heroku](http://heroku.com)
* Install the `heroku` command-line client
* See the [Heroku Quickstart](http://devcenter.heroku.com/articles/quickstart) for details

Deploy on Heroku
----------------

Create a new provisioning stack on Heroku for the app.
`heroku create --stack cedar`


Heroku will use the `Procfile` to run the generated shell script which starts up the webserver.

CLI Tool
--------

A simplistic `todos` script in the `bin` directory can directly create, delete and list todos.

    Usage: todos [ list | mk | rm ]

      todos list            - list current todos
      todos mk "a new todo" - to create a todo
      todos rm 1            - to remove the todo with id 1

