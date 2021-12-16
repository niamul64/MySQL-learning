# MySQL-learning
### sql file for sql code (table or database create commands: run and create)
### CSV file to data import


### CREATE statement 
One column is primary key(must)
```
CREATE TABLE <Table name>(
      <Column name> <data type>,
      <Column name> <data type>,
      <Column name> <data type>,
      primary key (column name)
)

Example:
create database University_database
use University_database # Use database_name

Drop table classroom # Drop anything 

Create table classroom (
      building varchar(100),
      room_no varchar(20),
      capacity tinyint ,
      constraint pk_build_room primary key (building, room_no)
);
```

### INSERT INTO statement(data input)
```
INSERT INTO <Table>
      VALUES(value1, value2, value3, ... );
```

### or

```
INSERT INTO <Table>(column1, column2,column3)
      VALUES(value1, value2, value3),
      VALUES(value1, value2, value3),
      VALUES(value1, value2, value3)
```



