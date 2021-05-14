### To generate mock data for database
<a href="https://www.mockaroo.com/">Mockaroo</a>


### Install my sql server
```
sudo apt update
sudo apt install mysql-server
```

### Get inside sql
`sudo mysql -u root -p`

### Create new user
`CREATE USER 'sammy'@'localhost' IDENTIFIED BY 'password'`;

### Grant  all previlages to the created user
`GRANT ALL PRIVILEGES ON *.* TO 'sammy'@'localhost' WITH GRANT OPTION;`  

### Grant  previlages on a db to the created user
`GRANT ALL PRIVILEGES ON 'database'.* TO 'sammy'@'localhost';`  

### Delete sql-server completely with all data
```
sudo systemctl stop mysql   
sudo apt-get remove --purge mysql*   
sudo apt-get autoremove   
sudo apt-get autoclean
```


### And and Or operator
`Select * from table_name where column1=1 Or/And column1=2;`


### As alias 
`Select * from table_name as t where t.column1=1 Or/And t.column1=2;`

### In command 
```
Select * from countries where name In ('India','Usa','Franch');
Select * from countries where name In (Subquery which returns a single column of country name);
```

### Like and ILike command
```
Select * from countries where name like 'P%';    //Will return all countries whose starting character is uppercase P   
Select * from countries where name like '_ _P%';    //Will return all countries whose starting 2 character is anything then leading with a  uppercase P      
Select * from countries where name ilike 'P%';    //Will return all countries whose starting character is P or p it is case incencitive for ILike command  
```

### Group By command
```
SELECT name, COUNT(*) FROM countries
GROUP BY name;     //Used to to arrange identical data into groups like in this command it will combine all the same country and return the count with id
```

### Arithmatic expression in sql
```
Select amount,(amount * 0.01) as 'TenPercentOfAmount' from payments 
```


### Some new operator
* **AVG()**    *//It returns the average value for a numerical column*     
`SELECT AVG(amount) from payments`  
   
* **BETWEEN**     _//It is used to filter the result set within a certain range, values can be num,text or dates_   
`SELECT amount from payments WHERE amount BETWEEN 6000 and 8000`   
   
* **COUNT()**     *//Returns the number of rows in the selected column where the column is not null*   
`Select COUNT(id) from payments`   
   
* **ALTER TABLE**   *//It adds columns to a table in a database*   
`ALTER TABLE payments ADD new_column varchar`  
   
* **Delete**   *//Are used to remove rows from a table*   
`DELETE FROM table_name WHERE some_column = some_value;`   

* **upper(Column)**   *//It converts every value of the column to uppercase*   
`Select upper(FIRST_NAME) from Worker;`   

* **substring(Column,1,3)**   *//It return the substring of the value first para is staring string and sencond is ending character*   
`Select substring(FIRST_NAME,1,3) from Worker;`   

* **length(Column)**   *//It return the length of the string for every value in the column*   
`Select distinct length(DEPARTMENT) from Worker;`   


* **string_agg(Column::varchar,',')**   *//string aggregator can be found in aggregator funtion in postgres doc, it joins every value of the column in a row with the seperstor mentioned in second parameter*   
`Select distinct length(DEPARTMENT) from Worker;`   



* **concat(Column1,Column2)**   *//It return the joined string for column1 and column2 for every value*   
`Select CONCAT(FIRST_NAME, ' ', LAST_NAME) AS 'COMPLETE_NAME' from Worker;`   


### Techniques
* **Count(*)**  *//It is used to count the number of column in the table*   
`Select Count(*) from table_name;`   





## Tutorials
<a href="https://www.youtube.com/watch?v=qw--VYLpxG4&t=1s">Youtube 4hr crash course</a>

## Practice Questions
<a href="https://www.techbeamers.com/sql-query-questions-answers-for-practice/" >Interview Questions and solution with demo data script</a>    
