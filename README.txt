# IT30A_DB
Utility Commands

\! cls

mysqldump =u root -p --databases libarary_db > "C:\IT30_adb"\%date:~-4%,2%_%date:~7,2%_%time:~0,2%_%time:~3,2%_%time:~6,2%_hermetanio_db.sql"

%date:~4%_
%date:~4,2%_
%date:~7,2%_
%time:~0,2%_
%time:~3,2%
%time:~6,2%_
library_db.sql"

laboratory 2

ALTER TABLE student ADD COLUMN student_create_at TIMESTAMP NULL DEFAULT NULL;
UPDATE students SET student_create_at = CURRENT_TIMESTAMP WHERE student_create_at IS NULL;  
ALTER TABLE student MODIFY student_create_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP;  
 
C:\my_dev\IT34A

 CREATE DATABASE <database_name>;
 SHOW DAATABASES;
 CONNECT <database_name>
 CREATE TABLE <table_name_in_plural>();
 INSERT INTO <table_name_in_plural>
    (columns)
    VALUES(values);
