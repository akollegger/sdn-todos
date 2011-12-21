Spring Data Neo4j Todos (heroku-deploy)
=======================================

A simple todo list using Spring Data Neo4j. This branch of the project has been modified for
easy deployment to Heroku.

Get Ready
---------

To prepare for deploying to Heroku, you must first become a Hero:

* Create an account on [Heroku](http://heroku.com)
* Install the `heroku` command-line client
* See the [Heroku Quickstart](http://devcenter.heroku.com/articles/quickstart) for details

Feel ready? OK, then get a copy of this project and checkout the heroku-deploy branch:

```bash
git clone git://github.com/akollegger/sdn-todos.git
cd sdn-todos
git checkout heroku-deploy 
```

Local build and run
-------------------

* Run a local Neo4j server (using default config)

```bash
export NEO4J_REST_URL=http://localhost:7474/db/data
export NEO4J_LOGIN=""
export NEO4J_PASSWORD=""
```
* Build, then run locally

```bash
mvn package
sh target/bin/webapp
```

* check that it is working

```bash
./bin/todo mk "tweet high praises to @akollegger"
./bin/todo list
```


Deploy on Heroku
----------------

Create a new provisioning stack on Heroku for the app.

```bash
heroku create --stack cedar`
heroku addons:add neo4j
git push heroku heroku-deploy:master


CLI Tool
--------

A simplistic `todo` script in the `bin` directory can directly create, delete and list todos.

    Usage: todo [ list | mk | rm ]

      todos list            - list current todos
      todos mk "a new todo" - to create a todo
      todos rm 1            - to remove the todo with id 1

