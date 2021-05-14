### Links
<a href="drive.google.com/drive/folders/1rMd9ZWjj2rinmDYtuYaLwP4YMeLBZhgG">General</a>


### Installing dependecies
`sequelize mysql 2` //local dependencies
`sequelize-cli` //global dependencies

### For initiating new project
`npx sequelize model:generate --name "Name" --attributes "Name":type`

After all chages done migrate the db
`npx sequelize db:migrate`

### Add new migration file
`npx sequelize migration:create --name "Name"`

### Add new seeding
`npx sequelize seed:generate --name "Name"`

### Run all seeding file
`npx sequelize db:seed:all`
