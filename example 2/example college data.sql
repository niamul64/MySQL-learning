CREATE DATABASE college;                                     # create the database named "college" 
## drop DATABASE college;                                    # if want to drop the database

                                                             # Now create table 'student' for 'college' database          
   CREATE table student(                  
      Roll int(5),
      Name varchar(20),
      Gender varchar(10),
      Age int(4),
      GPA double(3,2),
      City varchar(15),
      PRIMARY KEY (Roll)                                     # end of the line has no comma(,)
      );

# drop table student                                         # if we wnat to drop this table 
RENAME table student TO student_details;                     # if we wnat to reName this table to student_details;  

                                                             # Data insert in table (INSERT INTO)
INSERT INTO student_details
      (Roll, NAME, Gender, Age, GPA, City)                   # name of all columns, optional
VALUES
      (101, 'Rahim', 'Male',18, 3.15, 'Dhaka'),              # one set of record
      (102, 'Nargis', 'female',18, 3.15, 'Dhaka'),
      (103, 'Rahima', 'female',18, 3.15, 'Dhaka'),
      (104, 'Rahim2', 'Male',17, 3.15, 'Dhaka'),
      (105, 'Rahim3', 'Male',19, 3.15, 'Dhaka'),
      (106, 'Nargis2', 'female',18, 3.15, 'Dhaka'),
      (107, 'Rahim4', 'Male',17, 3.15, 'Dhaka'),
      (108, 'Rahim5', 'Male',21, 3.15, 'Dhaka'),
      (109, 'Minni', 'female',28, 3.15, 'Dhaka'),
      (110, 'Rahim6', 'Male',22, 3.15, 'Dhaka'),
      (111, 'Rahim7', 'Male',23, 3.15, 'Dhaka'),
      (112, 'kahim', 'Male',17, 3.15, 'Dhaka'),
      (113, 'Rahim8', 'Male',24, 3.15, 'Dhaka'),
      (114, 'karim2', 'Male',23, 3.15, 'Dhaka'),
      (116, 'kahim4', 'Male',23, 3.15, 'Dhaka'),
      (117, 'Rahim9', 'Male',18, 3.15, 'Dhaka'),
      (118, 'Rahim10', 'Male',19, 3.15, 'Dhaka'),
      (119, 'Rahim11', 'Male',18, 3.15, 'Dhaka'),
      (120, 'Rahim12', 'Male',20, 3.15, 'Dhaka'),
      (121, 'Rahim14', 'Male',19, 3.15, 'Dhaka'),
      (122, 'Rahim17', 'Male',17, 3.15, 'Dhaka'),
      (123, 'Rahim18', 'Male',18, 3.15, 'Dhaka'),
      (124, 'hasibul', 'Male',26, 3.15, 'Dhaka'),
      (125, 'hasib', 'Male',20 ,3.5, 'Kulna');               # need to put ; after the last record


                                                             # query from a table using 'select'--> column , 'from' --> table
select name                                                  # only show the name column from student_details table 
from student_details;

select name,age,city                                         # only show the 'name,age,city' columns from student_details table 
from student_details;


select *                                                     # Show All column from student_details table , '*' = all
from student_details;



SELECT DISTINCT City                                         # USE DISTINCT KEY     WORD TO SEE ONE DISTRICT NAME JUST ONES 
FROM student_details;                                        # NO DUPLICATE VALUES # HERE output will be onle Dhaka and Khulna


                                                             # select all columns, and we have total 24 records 
                                                             # we only want to show top 5 records
SELECT *                                                   
From student_details                                         #so we will use LIMIT 5;
LIMIT 5;

                                                             # another use of LIMIT
SELECT *                                                   
From student_details                                         # LIMIT how many of do not show from first, how many to show after that
LIMIT 2,5;                                                   # do not show first 2 records, after that show 5 records


                                                             # Show "Name" column, by sorting it alphabetical assendring order.
SELECT Name                                                  # select Name column only 
FROM student_details                                         # from student table
ORDER by Name;                                               # order by name, by default it sorted as assendring order


                                                             # Show "Name" and 'age' column, by sorting it Age assendring order.   
SELECT Name,age                                              # select Name, Age column only 
FROM student_details                                         # from student table
ORDER by Age;                                                # order by Age, by default it sorted as assendring order


                                                             # Where clauser
SELECT * FROM student_details                                # Show All the columns from student_details table
WHERE Gender ="Female";                                      # if Gender = female


SELECT * FROM student_details                                # Show All the columns from student_details table
WHERE Age >18;                                               # if Gender = 18


SELECT * FROM student_details                                # Show All the columns from student_details table
WHERE Age >18 and City='dhaka';                              # if ((Age>18) AND (City = 'Dhaka') 

SELECT * FROM student_details                                # Show All the columns from student_details table
WHERE Age >18  OR City='dhaka';                              # if ((Age>18) or (City = 'Dhaka') 


                                                             # BETWEEN key WORD
SELECT * FROM student_details                                # Show All the columns from student_details table
WHERE Age BETWEEN 18 and 21;                                 # if ((Age>=18) AND (Age<=21) 

##### Or Or Or Or Or Or we can do ####
SELECT * FROM student_details                                # Show All the columns from student_details table
WHERE Age >=18 and Age<=20;                                  # if ((Age>=18) AND (Age<=21) 




SELECT                                                            
    *                                                        # Show all column
FROM
    student_details                                          # Show All the columns from student_details table 
WHERE
    Age = 19 OR City = 'ctg'                                 # if Age = 19 Or City ='ctg' 
ORDER BY                                                                
    Age;                                                     # sort by Age, assendring order




                                                             # IN key word
SELECT                                                            
    City,Name ,Age                                           # Show City,Name ,Age columns
FROM
    student_details                                          # from student_details table 
WHERE
    City IN ('ctg','Dhaka','khulna')                         # if City = 'ctg' Or City ='Dhaka' Or City= 'khulna'
ORDER BY                                                                
    Age;                                                     # Sort by Age, assendring Order



   
                                                             # IN key word
SELECT                                                            
    City,Name ,Age                                           # Show City,Name ,Age columns
FROM
    student_details                                          # from student_details table 
WHERE
    City NOT IN ('ctg','Dhaka')        # if City != 'ctg' OR City !='Dhaka' OR City != 'khulna'
ORDER BY                                                                
    Age;                                                     # Sort by Age, assendring Order


                                                             # LIKE key word
SELECT                                                            
    City,Name ,Age                                           # Show City,Name ,Age columns
FROM
    student_details                                          # from student_details table 
WHERE
      Name LIKE 'R%'                                     # if the name starts with 'R' , '%' means anything after
ORDER BY                                                                
    Age;                                                     # Sort by Age, assendring Order


SELECT                                                            
    City,Name ,Age                                           # Show City,Name ,Age columns
FROM
    student_details                                          # from student_details table 
WHERE
      Name LIKE '%2'                                     # if the name starts with 'R' , '%' means anything after
ORDER BY                                                                
    Age;                                                     # Sort by Age, assendring Order



SELECT                                                            
    City, Name ,Age                                           # Show City,Name ,Age columns
FROM
    student_details                                          # from student_details table 
WHERE
      Name LIKE 'R%2'                            # if the name starts with 'R' Ends with '2' , '%' means anything middle
ORDER BY                                                                
    Age;                                                     # Sort by Age, assendring Order


SELECT                                                            
    City, Name ,Age                                           # Show City,Name ,Age columns
FROM
    student_details                                          # from student_details table 
WHERE
      Name LIKE '%ar%'                            # if the name contains 'ar' , '%' means anything after or before
ORDER BY                                                                
    Age;                                                     # Sort by Age, assendring Order



SELECT
    City,
    NAME,
    Age # Show City,Name ,Age columns
FROM
    student_details # from student_details table 
WHERE NAME LIKE
    '__rg%' # Specificly 1st two-charecters could be anything, 3rd and 4th charecter must be 'rg' , '%' means anything after
ORDER BY
    Age; # Sort by Age, assendring Order

SELECT
    City,
    NAME,
    Age                                               # Show City,Name ,Age columns
FROM
    student_details                                   # from student_details table 
WHERE NAME LIKE
    '%n_'                                             # Specificly 2nd last charecter must be 'n'.
ORDER BY
    Age;                                              # Sort by Age, assendring Order


                                                      # AS key word, re-name the column heading
SELECT
    Roll AS ID, Name, Age, GPA                        # Show Roll column as ID ,Name ,Age and GPA columns
FROM 
    student_details                                   # from student_details table 
ORDER BY
    Age;                                              # Sort by Age, assendring Order



SELECT
    Roll AS ID, Name AS 'First Name', Age, GPA        # Show Roll column as ID ,Name as 'first name' 
FROM 
    student_details                                   # from student_details table 
ORDER BY
    Age;                                              # Sort by Age, assendring Order



#######################################################constraints
                                                           # 1. unique
                                                           # 2. Not Null


                                                           # create a table, named 'Teacher', specify a id column as Primary key
                                                           # AUTO_INCREMENT = (++ put value)
create Table Teacher 
(
      ID int NOT Null UNIQUE AUTO_INCREMENT,               # AUTO_INCREMENT will increase a value and put it in the place 
      Neme varchar(50) NOT Null,                           # name fild must have a value
      Salary double(10,2),                                 # Salary field has no constraint, so it could be blank
      Primary KEY(ID)                                      # Now specifing the ID column as primary key
);


                                                           # create a table, named 'Teacher2', specify a id column as Primary key
                                                           # AUTO_INCREMENT = (++ put value)
                                                           # specify a column, named "transactionID" as unique

CREATE TABLE Teacher2(
    ID INT NOT NULL UNIQUE AUTO_INCREMENT,
    # AUTO_INCREMENT will increase a value and put it in the place 
    Neme VARCHAR(50) NOT NULL,
    # name fild must have a value
    TransactionID INT UNIQUE,
    # So, every value of Transaction ID must be unique 
    Salary DOUBLE(10, 2),
    # Salary field has no constraint, so it could be blank
    PRIMARY KEY(ID) # Now specifing the ID column as primary key
);