

CREATE TABLE products(
ID int primary key,
name varchar,
type varchar)
GO

CREATE TABLE contracts(
ID int primary key,
product int foreign key references products(id),
revenue decimal,
dateSigned date)


-- When are we going to recognise revenue
CREATE TABLE revenueRecognitions(
contract int foreign key references contracts(id),
amount decimal,
recognizedOn date,
PRIMARY KEY(contract ,recognizedOn))