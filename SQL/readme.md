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

