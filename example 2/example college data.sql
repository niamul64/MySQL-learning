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
