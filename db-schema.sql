USE Master
GO

USE Library
GO

CREATE DATABASE Library
GO

CREATE SCHEMA User
GO

CREATE TABLE User.UserDetails (
  UserId INT NOT NULL PRIMARY KEY,
  UserTypeId  Int NOT NULL FOREIGN KEY REFERENCES User.UserType(UserTypeId) 
  FirstName nVarchar (50) NOT NULL,
  MiddleName nVarchar (50) NULL,
  LastName nVarchar (50) NOT NULL,
  Sex Varchar (10) NULL,
  DateBirth Date NOT NULL,
  IdentificationType Varchar (10) NOT NULL,
  IdentificationNumber Varchar (10) NOT NULL,
  Email Varchar (100) NOT NULL,
  ContactNumber Varchar (10) NOT NULL,
  ContactNumber2 Varchar (10) NULL,
  AddressLine1 Varchar (100) NOT NULL,
  AddressLine2 Varchar (100) NULL
)

CREATE TABLE User.UserType (
  UserTypeId  Int NOT NULL PRIMARY KEY,
  DayLimit Varchar(10) NOT NULL,
  BookLimit Varchar(10) NOT NULL,
  Description Varchar (10) NOT NULL,
)

CREATE SCHEMA Book
GO

CREATE TABLE Book.BookBiding (
  BidingId Int  NOT NULL PRIMARY KEY,
  IsbnCode Int  NOT NULL,
  BookTitle nVarchar(100) NOT NULL,
  Author nVarchar (50) NOT NULL,
  ReviewYear Int NOT NULL,
  Language Varchar(10) NOT NULL,
  NoCopies Int NOT NULL,
  CopyId Int NOT NULL PRIMARY KEY,
  CategoryName Varchar (10) NOT NULL,
  ShelfNumber Int NOT NULL,
  AisleNumber Int NOT NULL,
)
  
CREATE TABLE Book.Borrower (
  BorrowerId Int NOT NULL FOREIGN KEY REFERENCES User.UserDetails(UserId),
  BookId Int NOT NULL FOREIGN KEY REFERENCES Book.Binding(BindingId),
  CopyId Int NOT NULL FOREIGN KEY REFERENCES Book.Binding(CopyId),
  BorrowerdFrom Date NOT NULL,
  BorrowerdTo Date NOT NULL,
  ActualReturn Date NOT NULL,
  Renewed Bid NOT NULL,
  WaitingList Bid NOT NULL,
  WaitingId Int NULL FOREIGN KEY REFERENCES User.UserDetails(UserId),
)

                         
