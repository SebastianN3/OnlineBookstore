-- Show all users
SELECT * 
FROM bookstore_user;

-- Show users that are not owners
SELECT *
FROM bookstore_user
WHERE is_owner = FALSE;

-- Show users that are owners
SELECT *
FROM bookstore_user
WHERE is_owner = TRUE;

-- Get username and password of users
SELECT username, passwd
FROM bookstore_user;

-- Show all books
SELECT *
FROM book;

-- Show all books in a genre
SELECT * 
FROM book
WHERE genre = 'Informative';