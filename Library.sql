use MASTER
GO
DROP DATABASE Library
GO
CREATE DATABASE Library
GO
USE Library


	/******************************************************
	 * Create Tables 
	 ******************************************************/
create table tbl_libraryBranch (
	branch_id int primary key not null identity (100,1),
	branch_name varchar (50) not null,
	branch_address varchar (50) not null 
);


create table tbl_publisher (
	publisher_Name varchar (50) primary key not null, 
	publisher_address varchar (50) not null,
	publisher_phone varchar (20) not null 
);


create table tbl_books (
	book_id int primary key not null identity (200,1),
	book_title varchar (50) not null,
	book_publisherName varchar (50) foreign key references tbl_publisher(publisher_name)
);


create table tbl_bookAuthors (
	book_id int foreign key references tbl_books(book_id),
	authors_name varchar (50) not null
);


create table tbl_bookCopies (
	bookCopies_Bookid int foreign key references tbl_books(book_id),
	bookCopies_BranchId int foreign key references tbl_libraryBranch(branch_id),
	bookCopies_numberOfCopiess varchar (50) not null 
);


create table tbl_Borrower(
	borrower_cardNo int primary key not null identity (1000,1),
	borrower_name varchar (50) not null,
	borrower_address varchar (50) not null,
	borrower_phone varchar (15) not null
);

create table tbl_bookLoans (
	Book_id int foreign key references tbl_books(book_id),
	branch_id int foreign key references tbl_LibraryBranch(branch_id),
	card_number int foreign key references tbl_borrower(borrower_cardNo),
	Date_out date not null,
	Date_due date not null
);

	/******************************************************
	 * Information for Tables 
	 ******************************************************/

Insert into tbl_libraryBranch
	(branch_name, branch_address)
	Values
	('Sharpstown','100 N 100 S, SLC, UT 84103'),
	('Central', '1200 SW Clay St, PDX, OR, 97201'),
	('Atlanta', 'One Margaret Mitchell Square, ATL, GA 30303'),
	('New York City', '224 East 125th Street, NY, NY, 10035')

insert into tbl_publisher
	(publisher_Name, publisher_address, publisher_phone)
	Values
	('inkwater', '14 Sw aiken ln, PDX OR 97005', '503-968-6777'),
	('Microcosm', '14 Sw aiken ln, PDX OR 97005', '503-799-2698'),
	('Timmbesr', '14 Sw aiken ln, PDX OR 97005', '503-227-2878'),
	('Scout', '14 Sw aiken ln, PDX OR 97005', '503-238-4514')
	select * from tbl_books
Insert into tbl_books
	(book_title, book_publisherName)
	values
	('The Lost Tribe', 'inkwater'),
	('It', 'inkwater'),
	('The Shining', 'inkwater'),
	('In search of lost Time', 'inkwater'), 
	('Don Quixote', 'inkwater'),
	('Ulysses', 'inkwater'),
	('The great Gatsby','Microcosm'),
	('Moby Dick', 'Microcosm'),
	('Hamlet', 'Microcosm'),
	('War and Peace', 'Microcosm'),
	('The odyssey','Timmbesr'),
	('One Hundred Yeards of Solitud','Timmbesr'),
	('The Divine Comedy','Timmbesr'),
	('The Brothers Karamazov','Timmbesr'),
	('Madame Bovary','Timmbesr'),
	('The adventures of Huckleberry Finn','Scout'),
	('Lolita','Scout'),
	('The Iliad','Scout'),
	('Crime and Punishment','Scout'),
	('Alices Adventrure in Wonderland','Scout'),
	('Wuthering Heights','Scout')
;

insert into tbl_bookAuthors
	 (book_id, authors_name)
	 values
	('220','Unkown'),
	('201','Stephen King'),
	('202', 'Stephen King'),
	('203', 'Marcel Proust'),
	('204', 'Miguel De Cervantes'),
	('205','James Joyce'),
	('206','F. Scott Fitzgerald'),
	('207','Herman Melville'),
	('208','William Shakespeare'),
	('209','Leo Tolstoy'),
	('210','Homer'),
	('211','Gabriel Garcia Marquez'),
	('212','Dante Alighieri'),
	('213','Fyodor Dostoyesky'),
	('214','Gustave Flaubert'),
	('215','Mark Twain'),
	('216','Vladimir Nabokov'),
	('217','Fyodor Dostoyevsky'),
	('218','Lewis Carroll'),
	('219','Emily Bronte')


insert into tbl_bookCopies
(bookCopies_Bookid, bookCopies_BranchId, bookCopies_numberOfCopiess)
values
('220','101','15'),
('220','102','15'),
('220','103','15'),
('220','100','15'),
('200','100','17'),
('201','100','10'),
('202','100','10'),
('203','100','10'),
('204','100','10'),
('205','100','10'),
('206','100','10'),
('207','100','10'),
('208','100','10'),
('209','100','10'),
('210','100','10'),
('211','100','10'),
('212','100','10'),
('213','100','10'),
('214','100','10'),
('215','100','10'),
('216','100','10'),
('217','100','10'),
('218','100','10'),
('219','100','10'),
('200','101','17'),
('201','101','10'),
('202','101','10'),
('203','101','10'),
('204','101','10'),
('205','101','10'),
('206','101','10'),
('207','101','10'),
('208','101','10'),
('209','101','10'),
('210','101','10'),
('211','101','10'),
('212','101','10'),
('213','101','10'),
('214','101','10'),
('215','101','10'),
('216','101','10'),
('217','101','10'),
('218','101','10'),
('219','101','10'),
('200','102','17'),
('201','102','10'),
('202','102','10'),
('203','102','10'),
('204','102','10'),
('205','102','10'),
('206','102','10'),
('207','102','10'),
('208','102','10'),
('209','102','10'),
('210','102','10'),
('211','102','10'),
('212','102','10'),
('213','102','10'),
('214','102','10'),
('215','102','10'),
('216','102','10'),
('217','102','10'),
('218','102','10'),
('219','102','10'),
('200','103','13'),
('201','103','10'),
('202','103','10'),
('203','103','10'),
('204','103','10'),
('205','103','10'),
('206','103','10'),
('207','103','10'),
('208','103','10'),
('209','103','10'),
('210','103','10'),
('211','103','10'),
('212','103','10'),
('213','103','10'),
('214','103','10'),
('215','103','10'),
('216','103','10'),
('217','103','10'),
('218','103','10'),
('219','103','10')



insert into tbl_borrower 
	(borrower_name, borrower_address,borrower_phone)
	values
	('Steven Cedeno', '1110 SW clay St, PDX OR 9701', '801-000-0000'),
	('John Doe', '1111 SW clay St, PDX OR 9701', '801-803-8799'),
	('Jonny Smith', '1112 SW clay St, PDX OR 9701', '801-803-8700'),
	('Joseph McDaniel', '1113 SW clay St, PDX OR 9701', '801-803-8719'),
	('Carie Tynes', '1114 SW clay St, PDX OR 9701', '801-803-8729'),
	('Melissa Ickes', '1115 SW clay St, PDX OR 9701', '801-803-8739'),
	('Carter Kensey', '1116 SW clay St, PDX OR 9701', '801-803-8749'),
	('Amy Kennedy', '1117 SW clay St, PDX OR 9701', '801-803-8759'),
	('Wes Weitz', '1118 SW clay St, PDX OR 9701', '801-803-8749')
;

insert into tbl_bookLoans
(Book_id, branch_id, card_number, Date_out, Date_due)
values
('200','100','1000','2019/01/01','2019/01/05'),
('201','100','1000','2019/01/01','2019/01/05'),
('202','100','1000','2019/01/01','2019/01/05'),
('203','100','1000','2019/01/01','2019/01/05'),
('204','100','1000','2019/01/01','2019/01/05'),
('206','101','1001','2019/01/02','2019/01/06'),
('207','101','1001','2019/01/02','2019/01/06'),
('208','101','1001','2019/01/02','2019/01/06'),
('209','101','1001','2019/01/02','2019/01/06'),
('210','101','1001','2019/01/02','2019/01/06'),
('200','100','1002','2019/01/02','2019/01/06'),
('200','100','1002','2019/01/02','2019/01/06'),
('211','103','1002','2019/01/02','2019/01/06'),
('211','102','1002','2019/01/02','2019/01/06'),
('213','102','1003','2019/01/02','2019/01/06'),
('213','103','1003','2019/01/02','2019/01/06'),
('214','101','1003','2019/01/02','2019/01/06'),
('214','101','1003','2019/01/02','2019/01/06'),
('215','102','1004','2019/01/02','2019/01/06'),
('215','102','1004','2019/01/03','2019/01/07'),
('216','103','1004','2019/01/03','2019/01/07'),
('216','100','1004','2019/01/03','2019/01/07'),
('217','100','1005','2019/01/03','2019/01/07'),
('217','101','1005','2019/01/03','2019/01/07'),
('218','101','1005','2019/01/03','2019/01/07'),
('218','101','1005','2019/01/03','2019/01/07'),
('219','103','1006','2019/01/03','2019/01/07'),
('219','103','1006','2019/01/03','2019/01/07'),
('200','102','1006','2019/01/03','2019/01/07'),
('201','102','1006','2019/01/03','2019/01/07'),
('203','100','1007','2019/01/03','2019/01/07'),
('204','101','1007','2019/01/03','2019/01/07'),
('206','102','1007','2019/01/04','2019/01/08'),
('205','103','1007','2019/01/04','2019/01/08'),
('207','100','1000','2019/01/04','2019/01/08'),
('207','101','1000','2019/01/04','2019/01/08'),
('210','102','1000','2019/01/04','2019/01/08'),
('211','103','1000','2019/01/04','2019/01/08'),
('214','100','1000','2019/01/04','2019/01/08'),
('215','101','1001','2019/01/04','2019/01/08'),
('217','102','1001','2019/01/04','2019/01/08'),
('219','103','1001','2019/01/04','2019/01/08'),
('210','100','1001','2019/01/04','2019/01/08'),
('210','101','1001','2019/01/04','2019/01/08'),
('209','102','1000','2019/01/04','2019/01/08'),
('213','103','1000','2019/01/04','2019/01/08'),
('213','100','1000','2019/01/05','2019/01/09'),
('214','102','1001','2019/01/05','2019/01/09'),
('214','103','1001','2019/01/05','2019/01/09'),
('216','100','1001','2019/01/05','2019/01/09'),
('216','101','1000','2019/01/05','2019/01/09'),
('217','102','1000','2019/01/05','2019/01/09')



/******************************************************
	Query 1 - How many copies of the book titled "The Lost Tribe" 
	are owned by the library branch whose name is "Sharpstown"?
******************************************************/
SELECT tbl_books.book_title, tbl_libraryBranch.branch_name, tbl_bookCopies.bookCopies_numberOfCopiess
FROM tbl_books
inner join tbl_bookCopies ON tbl_bookCopies.bookCopies_Bookid= tbl_books.book_id
inner join tbl_libraryBranch on tbl_libraryBranch.branch_id = tbl_bookCopies.bookCopies_BranchId
WHERE book_title='The Lost Tribe' AND tbl_libraryBranch.branch_id = 100;

/******************************************************
Query 2 - How many copies of the book titled "The Lost Tribe"  are owned by each library branch?
******************************************************/
SELECT tbl_books.book_title, tbl_libraryBranch.branch_name, tbl_bookCopies.bookCopies_numberOfCopiess
FROM tbl_books
inner join tbl_bookCopies ON tbl_bookCopies.bookCopies_Bookid= tbl_books.book_id
inner join tbl_libraryBranch on tbl_libraryBranch.branch_id = tbl_bookCopies.bookCopies_BranchId
WHERE book_title='The Lost Tribe'

/******************************************************
Query 3 -  Retrieve the names of all borrowers who do not have 
any books checked out.
******************************************************/
SELECT  tbl_Borrower.borrower_name AS 'Borrowers with no books checked out'
FROM tbl_borrower 
LEFT JOIN tbl_bookLoans ON tbl_Borrower.borrower_cardNo = tbl_bookLoans.card_number
WHERE tbl_bookLoans.card_number is NULL

/******************************************************
 Query 4 - For each book that is loaned out from the "Sharpstown" 
 branch and whose DueDate is today, retrieve the book title, the 
 borrower's name, and the borrower's address.
 ******************************************************/

SELECT tbl_books.book_title,tbl_Borrower.borrower_name, tbl_Borrower.borrower_address, tbl_libraryBranch.branch_name, tbl_bookLoans.Date_due as 'Due Today!'
FROM tbl_borrower 
INNER JOIN tbl_bookLoans ON tbl_Borrower.borrower_cardNo = tbl_bookLoans.card_number
INNER JOIN tbl_books ON tbl_books.book_id = tbl_bookLoans.Book_id 
INNER JOIN tbl_libraryBranch on tbl_libraryBranch.branch_id = tbl_bookLoans.branch_id
WHERE tbl_bookLoans.Date_due = '2019/01/06' and  tbl_libraryBranch.branch_name = 'Sharpstown'



/******************************************************
	Query 5- For each library branch, retrieve the branch name and the 
	total number of books loaned out from that branch.
--******************************************************/

SELECT tbl_libraryBranch.branch_name AS 'Branch Name', COUNT(tbl_bookLoans.Book_id) AS 'No. of Books Loaned'
FROM tbl_bookLoans
inner join tbl_libraryBranch ON tbl_libraryBranch.branch_id = tbl_bookLoans.branch_id
GROUP BY  tbl_libraryBranch.branch_name

/******************************************************
	Query 6 - Retrieve the names, addresses, and the number of books 
	checked out for all borrowers who have more than five books checked out.
******************************************************/


SELECT tbl_Borrower.borrower_name as 'Name', COUNT(tbl_bookLoans.card_number) AS 'No. of Books', tbl_Borrower.borrower_address as 'Customer Address'
FROM tbl_borrower 
INNER JOIN tbl_bookLoans ON  tbl_bookLoans.card_number = tbl_Borrower.borrower_cardNo
GROUP BY  tbl_Borrower.borrower_name,  tbl_Borrower.borrower_address
HAVING COUNT(tbl_bookLoans.card_number)>5 


/******************************************************
	Query 7 -  For each book authored (or co-authored) by "Stephen King", 
	retrieve the title and the number of copies owned by the library branch 
	whose name is "Central".
******************************************************/
SELECT tbl_bookAuthors.authors_name, tbl_libraryBranch.branch_name, tbl_bookCopies.bookCopies_numberOfCopiess as 'number of copies', tbl_books.book_title
FROM tbl_bookAuthors
inner join tbl_bookCopies ON tbl_bookCopies.bookCopies_Bookid= tbl_bookAuthors.book_id
inner join tbl_libraryBranch on tbl_libraryBranch.branch_id = tbl_bookCopies.bookCopies_BranchId
inner join tbl_books on tbl_books.book_id = tbl_bookCopies.bookCopies_Bookid
WHERE tbl_bookAuthors.authors_name ='Stephen King' AND tbl_libraryBranch.branch_id = '101' 
;
