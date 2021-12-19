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
### 1. WHERE .2 GROUP BY 3. ORDER

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

### Example: create table of student.
```
Create table student (
s_id varchar(20),
i_id varchar(20),
constraint pk_IDs_ primary key(s_id),                       # Primary key 
foreign key (s_id) references student,                      # Foreign key
foreign key (i_id) references instructor                    # 2nd Foreign key
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
## DESCRIBE
```
DESCRIBE Teacher2;                                          # DESCRIBE shows the structure of the table
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


## 'AS' keyword (give a temporary name toa column)
Let's say, we have a column named 'Roll', now when showing the table we need to rename that column heading to 'ID'  

```
                                                      # AS key word, re-name the column heading
SELECT
    Roll AS ID, Name, Age, GPA                        # Show Roll column as ID ,Name ,Age and GPA columns
FROM 
    student_details                                   # from student_details table 
ORDER BY
    Age;                                              # Sort by Age, assendring Order

output: ('ID' replasing 'ROLL')
	ID 	Name 	      Age  	GPA 	
	112 	Rahim17 	17 	3.15
	121 	kahim 	17 	3.15
 	107 	Rahim4 	17 	3.15
 	104 	Rahim2 	17 	3.15
 	161 	Rahim9 	18 	3.15
	106 	Nargis2 	18 	3.15
 	191 	Rahim11 	18 	3.15
```
### example 2 # Show Roll column as ID ,Name as 'first name' 
```
SELECT
    Roll AS ID, Name AS 'First Name', Age, GPA        # Show Roll column as ID ,Name as 'first name' 
FROM 
    student_details                                   # from student_details table 
ORDER BY
    Age;                                              # Sort by Age, assendring Order

```


# constraints 

## 1. NOT Null = must have data
## 2. unique = must be unique data 
## 3. primary key = must be unique and not null 
## AUTO_INCREMENT = (++ put value)
```
                                    # create a table, named 'Teacher', specify a id column as Primary key
                                    # AUTO_INCREMENT = (++ put value)
create Table Teacher 
(
ID int NOT Null UNIQUE AUTO_INCREMENT,    # AUTO_INCREMENT will increase a value and put it in the place 
Neme varchar(50) NOT Null,                   # name fild must have a value
Salary double(10,2),                         # Salary field has no constraint, so it could be blank
Primary KEY(ID)                              # Now specifing the ID column as primary key
);
```
### Example 2: 
```
# create a table, named 'Teacher', specify a id column as Primary key
# AUTO_INCREMENT = (++ put value)
# specify a column, named "transactionID" as unique

create Table Teacher 
(
ID int NOT Null UNIQUE AUTO_INCREMENT, # AUTO_INCREMENT will increase a value and put it in the place 
Neme varchar(50) NOT Null,             # name fild must have a value
TransactionID int UNIQUE,              # So, every value of Transaction ID must be unique 
Salary double(10,2),                   # Salary field has no constraint, so it could be blank
Primary KEY(ID)                        # Now specifing the ID column as primary key
);
```

# Update statement:

### update a value from database:
```
#structure:
UPDATE <table_Name>
Set Column1=value1 ,column2= value2, ...
where condition;
```
# Example
```
UPDATE
    teacher                               # update into teacher table
SET
    Salary = 90000                        # Salary will be set to 90000
WHERE
    id = 1006;                            # where id = 1006
```
# Example 2: update--> increase salary 10%
```
                                          # update--> increase salary 10%
UPDATE
    teacher                               # update into teacher table
SET
    Salary = Salary +Salary * 0.1         # Salary will be increased by 10%
WHERE
    id > 1005;                            # where id > 1005
```



# Delete statement
Lets say we want to delete a row

```
DELETE
    teacher                               # delete row in teacher table
WHERE
    id = 1006;                            # where id = 1006
```
# Example 2: 
```
DELETE
    teacher                               # Delete row in teacher table
WHERE
    id > 1006;                            # if id > 1006
```


# UPPER, LOWER key word
```
SELECT 
      UPPER(Name),Salary
FROM 
      teacher;


######## Example 2
SELECT 
      LOWER(Name),Salary
FROM 
      teacher;


############## Example 3
SELECT *,                    # show all column
UPPER(Name) as CAPname      # convert the names into BLOCK letters and rename the column as 'CAPname'
FROM teacher;                 # from teacher table
```


## Concatanation
CONCAT = concatanation key word, used to concat the strings
For EXAMPLE lets say we have a 'student_details' table.
With columns: Roll, Name, Age.
Now we need to make a string structure and show as a column with other column. 
string structure: Student 'Name' is 'Age' years old.  
```
SELECT
    * ,                        # Show all column
    CONCAT(
        'Student',
        NAME,
        'is',
        Age,
        ' years old.'
    ) AS strNEW               # Naming that column as strNEW
FROM
    student_details;
```

## GREATEST function (find greatest number among list of column)

```
# suppose:   Subject1| Subject2| Subject3| Subject4
#               2           3       4           0

Select *    
GREATEST(Subject1, Subject2, Subject3, Subject4) AS Greatest_Mark
FROM Student;

# out put will be:
# suppose:   Subject1| Subject2| Subject3| Subject4 | Greatest_Mark
#               2           3       4           0           4
```
## MAX (column name) : only show the row that has max value
```
SELECT *,MAX(Age) as maxValue
FROM student_details;
```
## Example 2
```
SELECT MAX(Price) AS LargestPrice
FROM Products;
```
## MIN() : same as MAX()

# TRUNCATE (value, digits want to show after '.');
```
select TRUNCATE(log(2),2)
```
# rand(); : genarates a random number
# Exponencial:
```
select EXP(2)  ### exponential of 2
```

# Count(): will count the number of rows/ records in in the table
```
SELECT
    COUNT(*)     # Will count number of records, return a number.
FROM
    student_details;
```
# SUM() and AVG(): example: show the sum and avg of all empolyee's salary, from Teacher table
```
SELECT
    SUM(salary),
    AVG(salary)
FROM
    teacher;
```


# show the row, if the person is female and got lowest GPA
```
SELECT *,
    MIN(GPA)
FROM
    student_details
WHERE
    Gender = 'female';
```



# sub query
### show all records who has the salary above or equals to the avarage salary of all employees.

```
SELECT
    *                       # select all 
FROM
    teacher                 # from teacher table
WHERE                       # condition starts
        Salary >=(          # If Salary greater  than the (AVG salary of all employees)
        SELECT          
            AVG(Salary)     # AGARAGE value of all salary 
        FROM                
            teacher         # From teachers table
			    )
;
```
########################################################################################

## ALTER TABLE command (add or delete column, change colmun heading in a table)

### ADD
```
#Add new column
ALTER TABLE 
        Table_name
ADD 
        NEW_Column_Name DataType[size] constraints;

# Example of add new column: add new column 'AGE' to teacher table
                            # ALTER TABLE 
ALTER TABLE                 # command to alter table
    teacher                 # in the teacher table 
ADD                         # add command
	AGE INT(5);             # Add a column named 'AGE' and data type int
```

### RE-Name a colunm heading
```
#change column heading

ALTER TABLE
     Table_name
CHANGE 
     OLD_Column_Name 
        New_Column_Name 
            DataType[size];


# Example of change column heading: from teacher table change the 'con' column name to unique_Value.

                            # ALTER TABLE 
                            
ALTER TABLE                 # command to alter table
    teacher                 # in the teacher table 
CHANGE
    con                     # previous column namevarchar(5);
	unique_Value varchar(5);# New column name, data type can be changed
```


### DELETE a colunm 
```
#DELETE a colunm 

ALTER TABLE
     Table_name
DROP COLUMN  
     Column_Name;


# Example of deleting column: Delete a column from teachers table named 'unique_Value'

                            # ALTER TABLE 
ALTER TABLE                 # command to alter table
    teacher                 # in the teacher table 
DROP COLUMN                 # delete column command, to delete multiple columns:'COLUMNS'
	unique_Value;           # delete the column named: unique_Value
```

########################################################################################
# GROUP BY CLOUSE 
### 1. WHERE .2 GROUP BY 3. ORDER

### EXAMPLE GROUP BY: 
### SUPPOSE: WE HAVE A "teacher" table, with department name
### Now find avarage salary, department wise 
```
SELECT 
    Dept, AVG(Salary)  # show deptartment name, and bring avarage of salary
FROM
    teacher            # from teacher table
GROUP by
    Dept;              # group by Department name
```

### example 2: use 'Order By' with previous example 
```
SELECT 
    Dept, AVG(Salary)           # show deptartment name, and bring avarage of salary
FROM
    teacher                     # from teacher table
GROUP by
    Dept                        # group by Department name
ORDER BY        
    AVG(Salary);                # orderby avarage salary
```