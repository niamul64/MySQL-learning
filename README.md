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
SELECT                                             
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
## ORDER BY statement (sorting)
Show "Name" column, by sorting it alphabetical assendring order.
```
SELECT Name                               # select Name column only 
FROM student_details                      # from student_details table
ORDER by Name;                            # order by name, by default it sorted as assendring order
```
### Example 2:
```
SELECT Name, age                                             # select Name, Age column only 
FROM student_details                                         # from student_details table
ORDER by Age;                                                # order by Age, by default it sorted as assendring order
```
### Example 3: decendring order
```
SELECT Name, age                                             # select Name, Age column only 
FROM student_details                                         # from student_details table
ORDER by Age DESC;                                           # order by Age, by default it sorted as assendring order , add 'DESC' for decendring order
```

## Where clauser
```
SELECT Column_list
From TABLE_name
WHERE condition;
```
### Example: select 'city' column FROM student_details Table, WHERE Gender='Female';
```
SELECT city FROM student_details                                
WHERE Gender ="Female";                                      

```
### example 2
```
SELECT * FROM student_details                        # Show All the columns from student_details Table
WHERE Gender ="Female";                              # if Gender = female
```
### example 3
```
SELECT * FROM student_details                        # Show All the columns from student_details table
WHERE Age >18;                                       # if Gender > 18
```
### example of 2 conditions
```
SELECT * FROM student_details                       # Show All the columns from student_details table
WHERE Age >18 and City='dhaka';                     # if ((Age>18) AND (City = 'Dhaka') 
```
## BETWEEN key WORD
```
SELECT * FROM student_details                       # Show All the columns from student_details table
WHERE Age BETWEEN 18 and 21;                        # if ((Age>=18) AND (Age<=21) 
```
## NOT BETWEEN key WORD
```
SELECT * FROM student_details                       # Show All the columns from student_details table
WHERE Age NOT BETWEEN 18 and 21;                        # if ((Age>=18) AND (Age<=21) 
```


## Where clauser with AND,OR
```
SELECT * FROM student_details                       # Show All the columns from student_details table
WHERE Age >18 and City='dhaka';                     # if ((Age>18) AND (City = 'Dhaka') 

SELECT * FROM student_details                       # Show All the columns from student_details table
WHERE Age >18 OR City='dhaka';                     # if ((Age>18) OR (City = 'Dhaka') 
```

## Where clauser with 'IN' key word or 'IN' operator
```
                                                             # IN key word
SELECT                                                            
    City,Name ,Age                                           # Show City,Name ,Age columns
FROM
    student_details                                          # from student_details table 
WHERE
    City IN ('ctg','Dhaka','khulna')                # if City = 'ctg' OR City ='Dhaka' OR City= 'khulna'
ORDER BY                                                                
    Age;                                                     # Sort by Age, assendring Order

```

## Where clauser with 'NOT IN' key word or 'NOT IN' operator
```
                                                             # IN key word
SELECT                                                            
    City,Name ,Age                                           # Show City,Name ,Age columns
FROM
    student_details                                          # from student_details table 
WHERE
    City NOT IN ('ctg','Dhaka','khulna')        # if City != 'ctg' OR City !='Dhaka' OR City != 'khulna'
ORDER BY                                                                
    Age;                                                     # Sort by Age, assendring Order

```

## LIKE 
'_' = under_score, means 1 charecter could be anything 
'%' = any number of charecter could be anything
```
SELECT                                                            
    City,Name ,Age                                           # Show City,Name ,Age columns
FROM
    student_details                                          # from student_details table 
WHERE
      Name LIKE 'R%'                 # if the name starts with 'R' , '%' means anything after
ORDER BY                                                                
    Age;                                                     # Sort by Age, assendring Order

```
### example 2
```
SELECT                                                            
    City, Name ,Age                                           # Show City,Name ,Age columns
FROM
    student_details                                          # from student_details table 
WHERE
      Name LIKE 'R%2'             # if the name starts with 'R' Ends with '2' , '%' means anything middle
ORDER BY                                                                
    Age;                                                     # Sort by Age, assendring Order
```
### example 3
```
SELECT                                                            
    City, Name ,Age                                           # Show City,Name ,Age columns
FROM
    student_details                                          # from student_details table 
WHERE
      Name LIKE '%ar%'                            # if the name contains 'ar' , '%' means anything after or before
ORDER BY                                                                
    Age;                                                     # Sort by Age, assendring Order
```

### example 4 with '_'
```

SELECT
    City,
    NAME,
    Age                                               # Show City,Name ,Age columns
FROM
    student_details                                   # from student_details table 
WHERE NAME LIKE
    '__rg%'   # Specificly 1st two-charecters could be anything, 3rd and 4th charecter must be 'rg' , '%' means anything after
ORDER BY
    Age; # Sort by Age, assendring Order
```


### example 5 with '_'
```
SELECT
    City,
    NAME,
    Age                                   # Show City,Name ,Age columns
FROM
    student_details                       # from student_details table 
WHERE NAME LIKE
    '%n_'                               # Specificly 2nd last charecter must be 'n'.
ORDER BY
    Age;                                  # Sort by Age, assendring Order
```