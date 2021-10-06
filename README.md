# SQL-Example
![SQL_LOGO](https://cdn.ucberkeleybootcamp.com/wp-content/uploads/sites/106/2020/03/SQL-Coding-Class-San-Francisco-1.jpeg)

This is an example of the basics of the SQL language, done through the mySQL server and utilizing PopSQL to better visualize creating tables, running queries, etc.  In this project, I create a database of movies and utilize SQL to create an overall schema, help organize the data in a unified manner, and run queries to give me specific pieces of information.

---

## Creating & Altering Tables:
![create_tables](/Screenshots/create_tables.png?raw=true)

The first step was to create the tables I would need and due to the foreign key relationships among them, subsequently alter them to define these relationships.  Notice that categories like 'movie_director' and 'movie_distributor' in the 'movie' table are defined as integers; this is because we are linking them up to foreign keys which are integers.  Foreign key relationships must be of the same data type.