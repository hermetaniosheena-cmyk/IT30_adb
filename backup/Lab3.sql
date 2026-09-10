CREATE TABLE book(
    book_id INT AUTO_INCREMENT PRIMARY KEY,
    book_tittle VARCHAR(50) NOT NULL,
    book_authhor VARCHAR(100) NOT NULL, 
    book_category VARCHAR(50) NOT NULL,
    book_created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
);

INSERT INTO books (book_id,book_title,book_author,book_category)VALUES
("1","Someone Someday", "KathrynB", "Love Story"),
("2","Peculiar", "AnakniRizal", "Sci-fi"),
("3","I love You Ara", "Jamille Fumah", "Horror");

CREATE TABLE borrow (
    borrow_id INT AUTO_INCREMENT PRIMARY KEY,
    student_id INT NOT NULL,
    book_id INT NOT NULL,

    borrow_date TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    borrow_return_date TIMESTAMP NULL DEFAULT NULL,

    CONSTRAINT fk_borrow_student
        FOREIGN KEY (student_id)
        REFERENCES students(student_id),

    CONSTRAINT fk_borrow_book
        FOREIGN KEY (book_id)
        REFERENCES book(book_id)
);


INSERT INTO borrow (student_id,book_id) VALUES
(1,1),
(2,2);

SELECT 
    br,borrow_id,

    s.student_id,
    CONCAT (
        s.stdent_first_name,
        '', 
        s.student_last_name,
        s.student_name,
    ) as student_name,
    s.student_course,

    b.book_tittle,
    b.book_author,
    b.book_category,

    b.borrow_date
FROM borrow br
JOIN student s ON
     br.student_id = s.student_id
JOIN books b ON
br.book_id = b.book_id

WHERE br.borrow_return_date is NULL
ORDER BY br.borrow_date DESC;

UPDATE borrow
SET borrow_return_date = CURRENT_TIMESTAMP
WHERE borrow_id = 7 AND borrow_return_date IS NULL;


UPDATE borrow
SET borrow_return_date = CURRENT_TIMESTAMP
WHERE borrow_id = 8 AND borrow_return_date IS NULL;


SELECT 
    br,borrow_id,

    
    CONCAT (
        s.stdent_first_name,
        '', 
        s.student_last_name,
        s.student_name,
    ) as student_name,
    

    b.book_tittle,
    b.book_author,
    b.book_category,

    b.borrow_date,
    br.borrow_return_date
FROM borrow br
JOIN student s ON
     br.student_id = s.student_id
JOIN books b ON
br.book_id = b.book_id

WHERE br.borrow_return_date is NOT NULL
ORDER BY br.borrow_date DESC;

UPDATE borrow
SET borrow_return_date = CURRENT_TIMESTAMP
WHERE borrow_id = 7 AND borrow_return_date IS NULL
ORDER BY borrow_date DESC;



  SELECT 
        br.borrow_id,

 
        CONCAT(
        s.student_first_name,
        ' ',
        s.student_last_name
        ) AS student_name,
    

        b.book_tittle,
        b.book_authhor,
        b.book_category,

        br.borrow_date,
        br.borrow_return_date

    FROM borrow br
    JOIN students s ON
        br.student_id = s.student_id
    JOIN book b ON
        br.book_id = b.book_id

    WHERE br.borrow_return_date IS NOT NULL
    ORDER  BY br.borrow_date DESC;

UPDATE borrow
SET borrow_return_date = CURRENT_TIMESTAMP
WHERE borrow_id = 8 AND borrow_return_date IS NULL
ORDER BY borrow_date DESC;