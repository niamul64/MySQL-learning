# Job-viva-questions- Abbreviation
### DBMS = 
Database management system
### RDBMS = 
Relational database management system
### SQL = Structured query language 
### sql case insensitive language (capital small letter doesn't metter)
### what is dbms:
System that enables management of database including access monitor storage & manipulation of data in databases.
### example of RDBMS = MySql, oracle, PostGre, microsoft SQL Server

<br>

# MySQL-learning
# install MSQL (full) + Xampp
### .sql file for sql code (table or database create commands: run and create)
### CSV file to data import

## SHOW statement: will show all the databases that been created
```
Show databases;
```

## CREATE statement 
### Create database. example: create a database named 'college'

```
CREATE DATABASE College;

```
### DROP database. example: drop a database named 'college'
```
DROP DATABASE College;

```

### Create Table
One column is primary key(must)
```
CREATE TABLE <Table name>(
      <Column name> <data type(size)>,
      <Column name> <data type(size)>,
      <Column name> <data type(size)>,
      primary key (column name)
)
```

Example: create table of student.
```
Create table student (
s_id varchar(20),
i_id varchar(20),
constraint pk_IDs_ primary key(s_id),
foreign key (s_id) references student,
foreign key (i_id) references instructor ,
);

```
### Or
```
USE <DATABASE_NAME>;
   CREATE table student(
      Roll int(5),
      Name varchar(20),
      Gender varchar(10),
      GPA double(3,2),
      City varchar(15),
      PRIMARY KEY (Roll) ## end of the line has no comma(,)
      );
```

# Re-name
### If we want to change the name of a created table the we can re-name it.

```
RENAME TABLE
    previous_name_of_table TO New_name_of_that_table;

```

## INSERT INTO statement(data input)
```
INSERT INTO <Table>
      VALUES(value1, value2, value3, ... ),
      VALUES(value1, value2, value3, ... ); # each row is a record 
```
### or
```
INSERT INTO <Table>(column1, column2,column3)
      VALUES(value1, value2, value3);
```
### Example:(2 rows/Records insert)  insert record in student table.
```
INSERT INTO student_details
      (Roll, NAME, Gender, Age, GPA, City)                      # name of all columns
VALUES
      (101, 'Rahim', 'Male',18, 3.15, 'Dhaka'),                 # one set of record
      (102, 'hasib', 'Male',20 ,3.5, 'Kulna');                  # need to put ; after the last record
```

## Select and From statements
selct --> data
from --> table
* --> ALL column
### run an example Qery: show all column of department table 
```
select * from department;
```
### run an example Qery: show column(id,name) of department table 
```
select id, name, from department;
```
## Select and distinct statements(data duplication privent)
```
SELECT DISTINCT CITY
FROM 
```
## 'Limit' key word # limit number of row to show
### example show only 5 column
```
 SELECT *
 From <table name>
 LIMIT 5;
```
### another use of LIMIT
```
                                                             # another use of LIMIT
SELECT *                                                   
From student_details                                         # LIMIT how many of do not show from first, how many to show after that
LIMIT 2,5;                                                   # do not show first 2 records, after that show 5 records
```


## DROP statement (drop table, database)
```
DROP TABLE <table>

#Example: delete a table named: accounts

DROP TABLE accounts;
```
## ALTER TABLE statement (delete column)


```
ALTER TABLE <Table> Drop <column>

# example: delete website column from accounts table

ALTER TABLE accounts
DROP website;
```

## UPDATE statement (specific data change)
```
UPDATE <Table>
SET <Column> = <Value>
Where <Condition>

# Example: set 'Mid' where name ='Midwest' in region table
UPDATE region
SET name ="Mid"
WHERE name = Midwest

```
### DELETE statement

```
DELETE FROM <Table>
Where<condition>
```





