# Online Bookstore

Welcome to this repository! This code is a web application meant for a hypothetical book store.

After cloning the repository, you should:

## Set up the Database
The sql files included were meant for a PostgreSQL database. You should run the .sql files included in the SQL directory to build the database, including all relations, dummy data and functions.

## Set up the Server
Go into the server directory, and run the following command:
`npm install`

Before you run the server, you need to create a file called configuration.json, which will contain:

```
{
    "user" : "database_user",
    "host" : "localhost",
    "database" : "onlinebookstore",
    "password" : "your_password",
    "port": 5432
}
```

The previous is following the documentation from [node-postgres](https://node-postgres.com/features/connecting)