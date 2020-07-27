
# IBT Class Project

## LIBRARY MANAGEMENT SYSTEM DATABASE

### Description

 A student and faculty can issue books. Different limits for the number of books a student and teacher can issue. Also, the number of days will be distinct in the case of students and teachers for issue any book. Each book will have different ID. Also, each book of the same name and same author (but the number of copies) will have different ID. Entry of all the book will be done, who issue that book and when and also duration. Detail of fine (when the book is not returned at a time) is also stored.  
 
 ### Design Decisions and Assumptions
 
 In this project 4 tables will be create in 2 schemas USER and BOOKS. In the Schema USER will have 2 tables: User Details and User Type. In the Schema will have Book Binding and Borrower. 
 It was necessary to create a User Type table because the users (student and teacher) have different limit of books issued and days to keep it. Also, the table Borrower need to be create in order to define if the book was renewed and if has someone on the waiting list.

### ERD

https://github.com/rosaninha/LIBRARY-MANAGEMENT-SYSTEM-DATABASE/blob/master/ERD-v1.png


