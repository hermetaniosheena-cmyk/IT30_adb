-- Book Query #1
SELECT * FROM book;

-- Book SQL #2 - Select books order by id ASC
SELECT * FROM books
   ORDER BY book_id ASC;

-- Book SQL #3 - Select books order by id DESC
SELECT * FROM books
  ORDER BY book_id DESC;

  -- Book SQL #4 - Select books order by title ASC
SELECT 
  book_title,
  book_author,
FROM books
 ORDER BY book_title ASC;

 -- Book SQL #5 - Select book order by title DESC
SELECT 
  book_title,
  book_author,
FROM books
 ORDER BY book_title DESC;

 -- Book SQL #6 - Select book order by author ASC
SELECT 
  book_title,
  book_author,
FROM books
 ORDER BY book_author ASC;
 
 
 -- Book SQL #7 - Select book order by author DESC
SELECT 
  book_title,
  book_author,
FROM books
 ORDER BY book_author DESC;

 -- Book SQL #8 - Select books with specific id number
 SELECT
     book_title,
     book_author
FROM books
  WHERE book_id = '1'
  LIMIT 1;

  -- Book SQL #9 - update  book title and author using specific id number 
  UPDATE books
  SET 
  book_title = 'I love you ARA',
  book_author = 'Jamille Fumah'
  WHERE book_id = 1;
