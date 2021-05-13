### To generate mock data for database
<a href="https://www.mockaroo.com/">Mockaroo</a>

### Install my sql server
`sudo apt update`
`sudo apt install mysql-server`

### Get inside sql
`sudo mysql -u root -p`

### Create new user
`CREATE USER 'sammy'@'localhost' IDENTIFIED BY 'password'`;

### Grant  all previlages to the created user
`GRANT ALL PRIVILEGES ON *.* TO 'sammy'@'localhost' WITH GRANT OPTION;`  

### Grant  previlages on a db to the created user
`GRANT ALL PRIVILEGES ON 'database'.* TO 'sammy'@'localhost';`  

### Delete sql-server completely with all data
`sudo systemctl stop mysql`   
`sudo apt-get remove --purge mysql*`   
`sudo apt-get autoremove`   
`sudo apt-get autoclean`   


### And and Or operator
`Select * from table_name where column1=1 Or/And column1=2;`


### As alias 
`Select * from table_name as t where t.column1=1 Or/And t.column1=2;`

### In command 
`Select * from countries where name In ('India','Usa','Franch');`   
`Select * from countries where name In (Subquery which returns a single column of country name);`


### Some new operator
* AVG()  `It returns the average value for a numerical column`   
`SELECT AVG(amount) from payments`  
   
* BETWEEN  `It is used to filter the result set within a certain range, values can be num,text or dates`   
`SELECT amount from payments WHERE amount BETWEEN 6000 and 8000`   
   
* COUNT()   `Returns the number of rows in the selected column where the column is not null`   
`Select COUNT(id) from payments`   
   
* ALTER TABLE  `It adds columns to a table in a database`   
`ALTER TABLE payments ADD new_column varchar`  
   
* Delete  `Are used to remove rows from a table.`   
`DELETE FROM table_name WHERE some_column = some_value;`   


### Techniques
* Count(*)  `It is used to count the number of column in the table`   
`Select Count(*) from table_name;`   
