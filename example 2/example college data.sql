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



DESCRIBE Teacher2;                                          # DESCRIBE shows the structure of the table


                                                            # insert some value to teacher table
INSERT INTO teacher
      (ID, NAME, Salary)
VALUES
      (1000, 'Rahim', 35000),
      (1001, 'Rahim', 60000),
      (1002, 'Rahim', 67000),
      (1003, 'Rahim', Null),
      (1004, 'Rahim', 45000),
      (1005, 'Rahim', 44000),



################################## # Update statement: update the Null value 

UPDATE
    teacher                               # update into teacher table
SET
    Salary = 90000                        # Salary will be set to 90000
WHERE
    id = 1006;                            # where id = 1006



                                          # update--> increase salary 10%
UPDATE
    teacher                               # update into teacher table
SET
    Salary = Salary+ Salary * 0.1                 # Salary will be increased by 10%
WHERE
    id > 1005;                            # where id > 1005




DELETE
    teacher                               # delete row in teacher table
WHERE
    id = 1006;                            # where id = 1006


DELETE
    teacher                               # Delete row in teacher table
WHERE
    id > 1006;                            # if id > 1006


                                          # UPPER / lower
SELECT *,                                 # show all column
UPPER(Name) as CAPname                    # convert the names into BLOCK letters and re-name the column as 'CAPname'
FROM teacher;                             # from teacher table




                                          #CONCAT = concatanation key word, used to concat the strings
                                          #For EXAMPLE lets say we have a 'student_details' table.
                                          #With columns: Roll, Name, Age.
                                          #Now we need to make a string structure and show as a column with other column. 
                                          #string structure: Student 'Name' is 'Age' years old.  
SELECT
    *,                                    # Show all column
    CONCAT(
        'Student',
        NAME,
        'is',
        Age,
        ' years old.'
    ) AS strNEW               # Naming that column as strNEW
FROM
    student_details;




                              # show the sum and avg of all empolyees salary, from Teacher table
SELECT
    SUM(salary),
    AVG(salary)
FROM
    teacher;    
    

    
                                # show the row, if the person is female and got lowest GPA 
SELECT
     *,                         # showing row
    MIN(GPA)                    # finding min GPA
FROM
    student_details             # from student student_details table
WHERE
    Gender = 'female';          # Among female only




                            # show all records who has the salary above or equals to the avarage salary of all employees.
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



                            # ALTER TABLE 
                            # Example of add new column: add new column 'AGE' to teacher table
ALTER TABLE                 # command to alter table
    teacher                 # in the teacher table 
ADD                         # add command
	AGE INT(5);             # Add a column named 'AGE' and data type int



                            # Example of change column heading: from teacher table, change the 'con' column name to 'unique_Value'.
                                # ALTER TABLE 
                            
ALTER TABLE                     # command to alter table
    teacher                     # in the teacher table 
CHANGE
    con                         # previous column namevarchar(5);
	unique_Value varchar(5);  	# New column name, data type can be changed



                                # Example of deleting column: Delete a column from teachers table named 'unique_Value'
                            # ALTER TABLE 
ALTER TABLE                 # command to alter table
    teacher                 # in the teacher table 
DROP COLUMN                 # delete column command
	unique_Value;           # delete the column named: unique_Value




                                ### EXAMPLE GROUP BY: 
                                ### SUPPOSE: WE HAVE A "teacher" table, with department name
                                ### Now find department wise avarage salary  
SELECT 
    Dept, AVG(Salary)           # show deptartment name, and bring avarage of salary
FROM
    teacher                     # from teacher table
GROUP by
    Dept;                       # group by Department name




                                ### example 2: use 'Order By' with previous example 
SELECT 
    Dept, AVG(Salary)           # show deptartment name, and bring avarage of salary
FROM
    teacher                     # from teacher table
GROUP by
    Dept                        # group by Department name
ORDER BY        
    AVG(Salary) DESC;           # orderby avarage salary in decendring order


                                # example: delete all the records from student_details table.
TRUNCATE TABLE student_details; # here all the records from student_details table will be deleted, but table will not be deleted

######################## Now, joing table conditions
# first, we need 2 tables with a common column.

# lets have a 'student' table and 'Exam_result' table

CREATE TABLE student(
    Roll INT NOT NULL,
    Name varchar(20),
    Gender varchar(20),
    Age int,
    Primary KEY(Roll)  
                    );

INSERT INTO student                 # inserting values/ records
VALUES
(0,'Rahim','Male',18),
(1,'Faria','Female',17),
(2,'Mahfuz','Male',18),
(3,'Farjan','female',17);


CREATE TABLE exam_result(
    Reg_number int NOT NULL,
    Roll INT,
    GPA double(3,2),
    Group_Name varchar(20),
    Primary KEY(Reg_number)  
                    );

INSERT INTO exam_result                # inserting values/ records
VALUES
(20171,0,3.25,'Science'),
(20172,1,3.44,'Arts'),
(20173,2,4,'Science'),
(20174,3,3.99,'Commerce');


# joing two tables. Now based on the roll we can join this two tables

SELECT 
    *                                  # Show all columns, we can specify the each column name,# Show all columns, we can specify the each column name, but if two column name is same in 2 tables, then we need to specify by table_Name.column_name
FROM 
    student, exam_result               # from student table and exam_result table
WHERE 
    student.Roll= exam_result.Roll     # if the roll of two tables matches then combine
;                                      # if  we do not use the condition the the table columns were multiplied 




                                       # By using JOIN CLAUSE
SELECT 
    std.roll,std.Name,std.age,Res.GPA  # Show specific columns
FROM 
    student as std 
    JOIN 
    exam_result as Res                  # from student table and exam_result table
ON 
    std.Roll= Res.Roll                  # if the roll of two tables matches then combine
;    



SELECT                                 # By using INNER JOIN CLAUSE
    *                                  # Show all columns
FROM 
    student INNER JOIN exam_result     # from student table and exam_result table, that matches the condition
ON 
    student.Roll= exam_result.Roll     # if the roll of two tables matches then combine
;  


                           # create a view from student table, avoid the column 'AGE'
CREATE VIEW 
    ST_view AS             # Giving the view name
SELECT 
    ROll, name, gender     # avoiding the age column 
FROM
    student;               # Creating view from student table


                           # NOW access the values from created view
SELECT 
    *
FROM 
    st_view;