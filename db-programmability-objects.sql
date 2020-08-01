CREATE VIEW UserIssued AS
SELECT LastName, Email
FROM User.UserDetails
WHERE UserTypeId = '1'; 

CREATE VIEW PortugueseBook AS
SELECT BookTitle, Author, ShelfNumber, AisleNumber 
FROM Book.BookBiding
WHERE Language = 'Portuguese'; 


CREATE VIEW CategoryBook AS
SELECT BookTitle, Author, ShelfNumber, AisleNumber 
FROM Book.BookBiding
WHERE CategoryName = 'Romance'; 

CREATE VIEW WaitingList AS
SELECT BookId, BorrowerdTo,
FROM Book.Borrower
WHERE WaitingList = '1'; 
