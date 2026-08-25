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