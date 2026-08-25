CREATE TABLES books (
    book_id INT AUTO_INCREMENT PRIMARY KEY,
    book_tittle VARCHAR(50) NOT NULL,
    book_authhor VARCHAR(100) NOT NULL, 
    book_category VARCHAR(50) NOT NULL,
    book_created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
);

INSERT INTO book (book_tittle,book_authhor,book_category)VALUES
("Someone Someday", "KathrynB", "Love Story"),
("Peculiar", "AnakniRizal", "Sci-fi"),
("I love You Ara", "Jamille Fumah", "Horror");

CREATE TABLE borrow (
borrow_id INT AUTO_IMCREMENT PRIMARY KEY,
student_id INT NOT NULL,

borrow_date TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
borrow_return_date TIMESTAMP NULL DEFAULT NULL,

CONSTRANT fk_borrow_student FOREIGN KEY (student_id)
    REFERENCES students (student_id),

ONSTRANT fk_borrow_book FOREIGN KEY (book_id)
    REFERENCES book (book_id),

);

INSERT INTO borrow (students_id,book_id) VALUES
(1,1),
(2,2),
(3,3),

SELECT 
    br,borrow_id,

    s.student_id,
    CONCAT (
        s.stdent_first_name,
        '', 
        s.student_name,
    ) as student_name,
    s.student_course,

    b.book_tittle,
    b.book_author,
    b.book_category,

    b.borrow_date
FROM borrow br
JOIN student s ON
     br.student
     
