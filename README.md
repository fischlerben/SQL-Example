# SQL-Example
![SQL_LOGO](https://cdn.ucberkeleybootcamp.com/wp-content/uploads/sites/106/2020/03/SQL-Coding-Class-San-Francisco-1.jpeg)

This is an example of the basics of the SQL language, done through the mySQL server and utilizing PopSQL to better visualize creating tables, running queries, etc.  In this project, I create a database of movies and utilize SQL to create an overall schema, help organize the data in a unified manner, and run queries to give me specific pieces of information.

---

## Creating & Altering Tables:
![create_tables](/Screenshots/create_tables.png?raw=true)

The first step was to create the tables I would need and due to the foreign key relationships among them, subsequently alter them to define these relationships.  Notice that categories like 'movie_director' and 'movie_distributor' in the 'movie' table are defined as integers; this is because we are linking them up to foreign keys which are integers.  Foreign key relationships must be of the same data type.

---

## Inserting Values into Table:
![insert_values](/Screenshots/insert_values.png?raw=true)

Next came inserting values into these tables, using a simple INSERT INTO table_name VALUES() statement.  Notice that when inserting values into these tables, for the columns where we have foreign key relationships, 'NULL' is inputted instead of the actual value.  This is because there is a foreign key relationship in these columns; we must use an 'UPDATE' statement (next step) to input these particular values.

---

## Updating Table with Foreign Key Relationships:
![update](/Screenshots/update.png?raw=true)

Last thing that needed to be done was to update the 'movie' table with the foreign key relationships.  As mentioned above, because there are foreign key relationships between the 'movie_director' and 'movie_distributor' columns in the 'movie' table with columns in other tables, I could not just input these numbers when originally inserting values into the 'movie' table.  Updating the 'movie' table this way removes the 'NULL' values originally inputted and maintains the foreign key relationship.

---

## Querying for Specific Pieces of Information:
