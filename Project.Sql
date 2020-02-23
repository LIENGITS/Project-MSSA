--Name: Lien Zhang
--File: ProjectMssa
--Date: 12, February, 2020

Use ProjectMssa;

--Business Owner Table
drop table BusinessOwner
create table BusinessOwner(
OwnerId int unique not null  identity(1,1),
UserId int not null,
Companyname varchar(50),
Companyphone varchar(15),
Companyemail varchar(50),
Companytype varchar(30),
Companystreet varchar(50),
Companycity varchar(50),
Companyregion varchar(50),
Companyzip varchar(10),
PRIMARY KEY (OwnerId)
 
 );

 --AppUser Table
 drop table _Application
  create table _Application(
 UserId int unique not null identity(1,1),
 Username varchar(25),
 Useremail varchar(50),
 Userpassword varchar(50),
 Firstname varchar(30),
 Lastname varchar(30),
 NewFolder varchar(30),
 Projects varchar(30),
 InvoiceHistory varchar(25),
 PRIMARY KEY (UserId)

 );

 -- Customers Table
 drop table Customers
   create table Customers(
 CustomerId int unique not null identity(1,1),
 Firstname varchar(30),
 Lastname varchar(30),
 Customeremail varchar(50),
 Customerphone varchar(15),
 PRIMARY KEY (CustomerId)

 );

 --Invoice Table
 drop table Invoice
  create table Invoice(
 InvoiceId int not null,
 InvoiceDescription varchar(140) null,
 OwnerId int not null,
 UserId int not null,
 CustomerId int not null,
 PRIMARY KEY (InvoiceId),
);

alter table Invoice add pId int not null

--Invoice Details Table
drop table Invoice_Details
create table Invoice_Details(
rowId int not null,
InvoiceId int not null,
ProductId int not null,
Quantity int
PRIMARY KEY (RowId)


);

--Products Table
drop table Products
create table Products(
ProductId int not null,
ProductName varchar(25),
ProductDescription varchar(25),
ProductCategory varchar(25),
Price money,
PRIMARY KEY (ProductId),

);

--Projects Table
drop table Projects
create table Projects(
pId int not null,
UserId int not null,
ProjectExpenses int, 
ProjectNotes varchar(280),
ProjectTitle varchar(25),
StartDate date,
EstCompletionDate date,
ProjectDescription varchar(280),
PRIMARY KEY (pId),

);

select * from _Application;
select * from BusinessOwner;
select * from Customers;
select * from Invoice;
select * from Invoice_Details;
select * from Products;
select * from Projects;


select a.Firstname, a.Lastname, b.Companyname, b.Companytype from _Application a join 
BusinessOwner b on a.UserId = b.UserId;

select c.Firstname, c.Lastname, i.invoicedescription, i.InvoiceId from Customers c join Invoice i 
on c.CustomerId = i.Customerid;

select sum(Quantity) as totalquantity, ProductId from Invoice_Details 
where InvoiceId = 1 group by ProductId;

select pId, ProjectTitle from Projects where StartDate like '2018-09-19';

select i.InvoiceId, p.ProductName, p.Price, i.Quantity from Products p join Invoice_Details i 
on p.ProductId = i.ProductId where InvoiceId = 1
