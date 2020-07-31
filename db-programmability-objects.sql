CREATE VIEW UserIssued AS
SELECT LastName, Email
FROM User.UserDetails
WHERE UserTypeId = '1'; 

CREATE VIEW EnglishBook AS
SELECT BookTitle, Author 
FROM Book.BookBiding
WHERE Language = 'Portuguese'; 


CREATE VIEW EnglishBook AS
SELECT BookTitle, Author 
FROM Book.BookBiding
WHERE CategoryName = 'Romance'; 
