# csi2532_playground
 
Playground pour Jacob Fodale (300119336)

Exemple de mise a jour au README

# LAB 09 :

[lab9.pdf](https://github.com/jfoda041/csi2532_playground/files/6268536/lab9.pdf)

# LAB 06 :

question 1 :

``` sql
SELECT name, birthplace FROM artists;
```

![q1](https://user-images.githubusercontent.com/71846266/111227132-7cd8ed00-85b8-11eb-9726-4f0875793efc.png)



question 2 :

``` sql
SELECT title, price FROM artworks
	WHERE year > 1600;
```

![q2](https://user-images.githubusercontent.com/71846266/111227139-81050a80-85b8-11eb-8317-57505b721d89.png)

question 3 :

``` sql
SELECT title, price FROM artworks
	WHERE year = 2000 OR artist_name = 'Picasso';
```

![q3](https://user-images.githubusercontent.com/71846266/111227146-83676480-85b8-11eb-9eba-b6a9eeaabde4.png)


question 4 :

``` sql
SELECT name, birthplace FROM artists
	WHERE EXTRACT(year FROM dateofbirth) > 1880 AND EXTRACT(year FROM dateofbirth) < 1930;
```

![q4](https://user-images.githubusercontent.com/71846266/111227161-87938200-85b8-11eb-9f9b-61aec6e0acfa.png)

question 5 :

``` sql
SELECT name, birthplace FROM artists 
	WHERE style IN ('Modern','Baroque','Renaissance');
```
![q5](https://user-images.githubusercontent.com/71846266/111227165-89f5dc00-85b8-11eb-89df-3b5cf25c6eab.png)

question 6 :

``` sql
SELECT * FROM artworks
	ORDER BY title ASC;
```

![q6](https://user-images.githubusercontent.com/71846266/111227168-8b270900-85b8-11eb-90a4-31a0ce998d07.png)

question 7 :

``` sql
SELECT name, id FROM customers
    INNER JOIN likeartists ON customers.id = likeartists.customer_id
    WHERE artist_name = 'Picasso';
```

![q7](https://user-images.githubusercontent.com/71846266/111250150-3482f480-85e3-11eb-941b-a0c6e99e3b4e.png)

question 8 :

``` sql
SELECT name FROM customers
    INNER JOIN likeartists ON customers.id = likeartists.customer_id
    WHERE artist_name IN(
        SELECT artist_name FROM likeartists

        INNER JOIN artists ON likeartists.artist_name = artists.name
        WHERE style = 'Renaissance')

        AND amount > 30000;
```

![q8](https://user-images.githubusercontent.com/71846266/111250163-39e03f00-85e3-11eb-9909-368ac4e91f48.png)

# LAB 05 :

MIGRATION 1 :

```sql

CREATE TABLE Athlete (
    id int,
    nom varchar(255),
    identified_gender varchar(1),
    age int,
    PRIMARY KEY(id)
);

```

MIGRATION 2 :

```sql

CREATE TABLE schema_migrations (
 migration varchar(255),
 migrated_at time,
 PRIMARY KEY (migration)
);

INSERT INTO schema_migrations (migration, migrated_at) VALUES
('20210301143000-create-athletes.sql', '2021-03-01 14:30:00');

INSERT INTO schema_migrations (migration, migrated_at) VALUES 
('20210301143500-create-migrations.sql', '2021-03-01 14:35:00');


```

MIGRATION 3 :

```sql

ALTER TABLE athletes
RENAME COLUMN identified_gender TO gender;

INSERT INTO schema_migrations (migration, migrated_at) VALUES
('20210301144000-update-athletes.sql', '2021-03-01 14:40:00');


```

MIGRATION 4 :

```sql

CREATE TABLE Competitions (
    compid int,
    comp_name varchar(255),
    venue varchar(255),
    start_time date,
    duration time(0),
    PRIMARY KEY(compid)
);

INSERT INTO schema_migrations (migration, migrated_at) VALUES
('20210301144500-create-migrations.sql', '2021-03-01 14:45:00');



```
# Lab 04:

SQL : 

Course est présent dans toute les exemples. Professor est présent dans toute les exemple à l'exeption de l'exemple 3 où on le remplace

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
