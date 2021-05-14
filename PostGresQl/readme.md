### Links
<a href="https://www.tecmint.com/install-postgresql-and-pgadmin-in-ubuntu/">Install and connect pgql with pgadmin</a>      



### Steps to Connect to postgres db in a remote ubuntu server
`1. Check the inbound rule for the ubuntu server it should allow port-5432`   
`2. Add a new host in pg_hba.cofig file located in  /etc/postgresql/12/main/pg_hba.conf`    
`3. Add entrys as follows ->  host    database  user  IP-address   authentication-method`    
`4. Uncomment listen_address entry and initialize to '*' postgresql.conf located in same location as previous one`    

### Basic commands
<a href="https://www.postgresqltutorial.com/psql-commands/"> All postgresql commands</a>