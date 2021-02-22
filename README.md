# csi2532_playground
 
Playground pour Jacob Fodale (300119336)

Exemple de mise a jour au README

# Lab 04:

SQL : 

Course présent dans toute les exemples. Professor est présent dans toute les exemple à l'exeption de l'exemple 3

Professor:
```sql
 CREATE TABLE Professor (
    ssn int,
    primary key (ssn)
   );
   ```

Course: 
```sql
 CREATE TABLE Course (
    courseid int,
    primary key (courseid)
   );
  ```  

1 

 ```sql
  CREATE TABLE Teaches (
    semesterid int,
    course_id int,
    professor_id int,
    FOREIGN KEY (course_id) REFERENCES Course(courseid),
    FOREIGN KEY (professor_id) REFERENCES Professor(ssn),
    PRIMARY KEY (course_id,professor_id)
   );
 ```
 
 3
 
   ```sql
  CREATE TABLE Professor (
      ssn int,
      course_id int,
      PRIMARY KEY (ssn),
      FOREIGN KEY (course_id) REFERENCES Course(courseid)
  );
 ```
 
 5
 
 ```sql
 
 CREATE TABLE Semester (
    semesterid int,
    PRIMARY KEY (semesterid)
   );
   
   
  CREATE TABLE Teaches (
    semester_id int,
    course_id int,
    professor_id int,
    FOREIGN KEY (semester_id) REFERENCES Semester(semesterid),
    FOREIGN KEY (course_id) REFERENCES Course(courseid),
    FOREIGN KEY (professor_id) REFERENCES Professor(ssn),
    PRIMARY KEY (semester_id,professor_id,course_id)
   );
 ```
 
 6
 
 ```sql
 CREATE TABLE Teaches (
    semesterid int,
    group_id int,
    course_id int,
    FOREIGN KEY (group_id) REFERENCES Professor_Group(groupid),
    FOREIGN KEY (course_id) REFERENCES Course(courseid),
    PRIMARY KEY (group_id,course_id)
   );
   
   CREATE TABLE Professor_Group (
    groupid int,
    PRIMARY KEY (groupid)
   );
   
   CREATE TABLE Member_of (
    professor_id int,
    group_id int,
    FOREIGN KEY (professor_id) REFERENCES Professor(ssn),
    FOREIGN KEY (course_id) REFERENCES Professor_Group(groupid)
   );
 ```




![rm1](https://github.com/jfoda041/csi2532_playground/blob/lab04/assets/new_rm/1rm.png?raw=true)

![rm3](https://github.com/jfoda041/csi2532_playground/blob/lab04/assets/new_rm/2rm.png?raw=true)

![rm5](https://github.com/jfoda041/csi2532_playground/blob/lab04/assets/new_rm/5rm.png?raw=true)

![rm6](https://github.com/jfoda041/csi2532_playground/blob/lab04/assets/new_rm/6rm.png?raw=true)

# Lab 03:

![er1](https://github.com/jfoda041/csi2532_playground/blob/lab03/assets/er1.PNG?raw=true)

![er2](https://github.com/jfoda041/csi2532_playground/blob/lab03/assets/er2.png?raw=true)

![er3](https://github.com/jfoda041/csi2532_playground/blob/lab03/assets/er3.PNG?raw=true)

![er4](https://github.com/jfoda041/csi2532_playground/blob/lab03/assets/er4.png?raw=true)

![er5](https://github.com/jfoda041/csi2532_playground/blob/lab03/assets/er5.png?raw=true)

![er6](https://github.com/jfoda041/csi2532_playground/blob/lab03/assets/er6.png?raw=true)

# Lab 02: 

![Image lab02](https://github.com/jfoda041/csi2532_playground/blob/main/image.png?raw=true)
