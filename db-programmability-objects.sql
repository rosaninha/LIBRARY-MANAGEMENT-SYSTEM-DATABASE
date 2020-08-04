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

CREATE PROCEDURES User.UserDetails_INSERT
  @UserId Int
  @UserTypeId Int,
  @FirstName nVarchar (50),
  @MiddleName nVarchar (50),
  @LastName nVarchar (50),
  @Sex Varchar (10),
  @DateBirth Date,
  @IdentificationType Varchar (10),
  @IdentificationNumber Varchar (10),
  @Email Varchar (100),
  @ContactNumber Varchar (10),
  @ContactNumber2 Varchar (10),
  @AddressLine1 Varchar (100),
  @AddressLine2 Varchar (100)
 AS
  INSERT INTO User.UserDetails (
