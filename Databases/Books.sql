Use Master
Go
If Exists (Select * from sys.databases where name = 'Lorien_Books')
DROP DATABASE Lorien_Books
Go
Create Database Lorien_Books
Go

Use Lorien_Books
Go

CREATE TABLE Author
(
Author_ID Int Identity(1,1) Primary Key Not Null,
Author_Name VarChar(100),
Author_Ranking VarChar(5)
)
Go

CREATE TABLE Buyer
(Buyer_ID Int Identity(1,1) Primary Key Not Null,
Buyer_Name VarChar(50),
Buyer_Surname VarChar(50),
Buyer_Password VarChar(50),
Buyer_CellNumber VarChar(50),
Buyer_Address VarChar(200)
)

GO

CREATE TABLE Book
(Book_ID Int Identity(1,1) Primary Key Not Null,
Author_ID Int references Author (Author_ID),
BookPrice Int,
BookTitle VarChar(50),
BookGenre VarChar(50)
)
GO


CREATE TABLE Invoice
(InvoiceID Int Identity(1,1) Primary Key Not Null,
Book_ID Int references Book (Book_ID),
Buyer_ID Int references Buyer (Buyer_ID),
Date_Sold DateTime)
GO


Insert into Author Values('J.R.R Tolkien','2')
Insert into Author Values('C. Paolini','1')
Insert into Author Values('P.Lore','3')
Insert into Author Values('R. Feist','4')
Insert into Author Values('J.K Rowling','5')
GO

GO
Insert Into Buyer values('Richard','Smith','password','654659846','42 Legendary Avenue')
Insert Into Buyer values('Storm','Glau','1234','876324687','33 Awesome Lane')
 Insert Into Buyer values('Amy','Song','meme','5465465','567 True Story Drive')
GO

GO
Insert into Book values(1,150,'Hobbit','Fantasy Adventure')
Insert into Book values(2,120,'Eragon','Fantasy Adventure')
Insert into Book values(3,100,'The power of six','SciFi Adventure')
Insert into Book values(4,100,'Magician','Fantasy Adventure')
Insert into Book values(5,100,'Harry Potter and the Deathly Hallows','Fantasy')
Insert into Book values(1,100,'Lord of the rings','Fantasy Adventure')
Insert into Book values(2,120,'Eldest','Fantasy Adventure')
Insert into Book values(2,120,'Brisingr','Fantasy Adventure')
Insert into Book values(3,100,'I am number four','SciFi Adventure')
GO

Insert into Invoice values(1,3,'2011/09/21')
Insert into Invoice values(5,3,'2011/09/21')
Insert into Invoice values(2,2,'2011/10/14')
Insert into Invoice values(1,2,'2011/10/14')
Insert into Invoice values(3,2,'2011/10/14')
Insert into Invoice values(3,3,'2011/11/02')
Insert into Invoice values(4,3,'2011/11/02')
Insert into Invoice values(1,1,'2011/11/06')
Insert into Invoice values(3,1,'2011/11/06')
Insert into Invoice values(4,1,'2011/11/06')
Insert into Invoice values(6,1,'2011/11/06')
Insert into Invoice values(9,1,'2011/11/06')



Select * from Buyer
Select * from Book
Select * from Author
Select * from invoice
GO