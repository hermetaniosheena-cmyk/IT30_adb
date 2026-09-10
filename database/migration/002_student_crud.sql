-- Student Query #1
SELECT * FROM students:

-- Student Query #2 - Select students order by id ASC
SELECT * FROM students
   ORDER BY student_id ASC;

   -- Student Query #3 - Select students order by id DESC
   SELECT * FROM students
    ORDER BY student_id DESC; 

    -- Student Query #4 - Select students order by id ASC
   SELECT 
       student_last_name,
       student_first_name
   FROM students
   ORDER BY student_last_name

   -- Student Query #5 - Select students order by id DESC
   SELECT 
       student_last_name,
        student_first_name
   FROM students
   ORDER BY student_last_name DESC;

   -- Student Query #6 - Select students order by id ASC
   SELECT
        student_first_name,
        student_last_name
    FROM students
   ORDER BY student_first_name ASC;

    -- Student Query #7- Select students order by id DESC
    SELECT
         student_first_name,
         student_last_name
    FROM students
    ORDER BY student_first_name DESC;

   -- Student Query #8- Select students with specific id number
     SELECT
        student_first_name,
        student_last_name
    FROM students
   WHERE student_id = 1
   LIMIT 1;

  -- Student Query #9 - update student firstname, lastname using specific id
  UPDATE students
  SET
     student_first_name = 'Sheena',
     student_last_name = 'Hermetanio'
 WHERE student_id = 1;