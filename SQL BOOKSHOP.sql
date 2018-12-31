---------------------------------------------------------------------------------------------------------------------------------
/* FINAL DRILL  */
-------------------------------------------------------------------------------------------------------------------------------------








-------------------------------------------------------------------------------------------------------------------------------------------
CREATE DATABASE BOOKSHOP
-------------------------------------------------------------------------------------------------------------------------------------------






--------------------------------------------------------------------------------------------------------------------------------------------
USE BOOKSHOP 
---------------------------------------------------------------------------------------------------------------------------------------












-------------------------------------------------------------------------------------------------------------------------------------------------------
/* BEGIN CREATE TABLE FOR LIBRARY_BRANCH */
-------------------------------------------------------------------------------------------------------------------------------------------------------

CREATE TABLE Library_Branch(
	BRANCHID INT NOT NULL PRIMARY KEY IDENTITY(1,1),
	BRANCHName VARCHAR(255),
	Address VARCHAR(255)
);



SELECT * FROM LIBRARY_BRANCH;

/* END CREATE TABLE */






/* BEGIN INSERT INTO */

INSERT INTO Library_Branch(BranchName, Address)
VALUES
('Sharpstown', '34563 18th st Seattle WA 45674'),
('Central', '45632 16th sw Kirkland WA 12345'),
('Tema', '57944 165th st Redmond WA 94323'),
('Adenta', '67895 14th ave Medina WA 94569')
;



SELECT * FROM LIBRARY_BRANCH;





----------------------------------------------------------------------------------------------------
/* END INSERT STATEMENT LIBRARY_BRANCH*/
----------------------------------------------------------------------------------------------------










-------------------------------------------------------------------------------------------
	/* BEGIN CREATE TABLE FOR PUBLISHER */
---------------------------------------------------------------------------------------------




	CREATE TABLE Publisher (
	PublisherID INT NOT NULL PRIMARY KEY IDENTITY(1,1),
	PUBLISHER_NAME VARCHAR(255) NOT NULL,
	Address VARCHAR(255),
	Phone VARCHAR(255),
	UNIQUE (PUBLISHER_NAME)
	)
	;


	SELECT * FROM PUBLISHER;


	/* END CREATE TABLE */




	/* BEGIN INSERT INTO */

	INSERT INTO PUBLISHER(PUBLISHER_NAME, ADDRESS, PHONE)
	VALUES
	('Smith Jackson', 'Do not eat inc', '2343211111'),
	('Mr Jackson', 'All star day group limited', '5555555555'),
	('Mrs There', 'Okay boss group', '8888888888'),
	('Wap Girl', 'Do not dare me company', '3333333333'),
	('Candy Cane', 'I do what I want coporation', '2343231209'),
	('Miss Missy', 'It is all good inc', '1058942585'),
	('Lady Lord', 'It is well coporation', '999999992'),
	('Princess Kintana', 'Kintana Inc', '4444555213'),
	('Queen Gold', 'Wealth com', '8686757574'),
	('King Power', 'Power is money brand', '3457120982'),
	('Baby Baby', 'The baby brand', '0192837465')
	;


		SELECT * FROM PUBLISHER;

	


	
	--------------------------------------------------------------------------------------------------
	/* END INSERT STATEMENT */
	--------------------------------------------------------------------------------------------------



	


	-------------------------------------------------------------------------------------------------
	/* BEGIN CREATE TABLE STATEMENT FOR BOOKS */
	------------------------------------------------------------------------------------------------
	
	CREATE TABLE BOOKS (
	BOOKID INT NOT NULL PRIMARY KEY IDENTITY(1,1),
	TITLE VARCHAR(255),
	PUBLISHERNAME_BOOKS VARCHAR(255) NOT NULL CONSTRAINT FK_BOOKS_PUBLISHERNAME FOREIGN KEY REFERENCES PUBLISHER(PUBLISHER_NAME) ON UPDATE CASCADE ON DELETE CASCADE
	)
	;

	

	SELECT * FROM Books;

	
/* END CREATE TABLE STATEMENT FOR BOOKS */




/* BEGIN INSERT STATEMENT FOR BOOKS */

INSERT INTO BOOKS(TITLE, PUBLISHERNAME_BOOKS)
VALUES
('Get Outtt', 'Smith Jackson'),
('Girlsss', 'Mr Jackson'),
('Boyyssss', 'Mrs There'),
('Sleeplessness', 'Wap Girl'),
('Teach More Girls', 'Candy Cane'),
('I Do Not Know', 'Miss Missy'),
('Helppp', 'Lady Lord'), 
('Okayyy', 'Princess Kintana'),
('Bodega', 'Queen Gold'), 
('Instructor', 'King Power'),
('Cheeseee', 'Baby Baby'),
('Smileysss', 'Baby Baby'),
('The Lost Tribe', 'Mr Jackson'),
('Happy', 'Mr Jackson'),
('Sad', 'Mrs There'),
('Awesome', 'Wap Girl'),
('Too hot', 'Lady Lord'),
('Believe', 'Candy Cane'),
('UpTown', 'Baby Baby'),
('HAHA Land', 'Wap Girl')

;



SELECT * FROM BOOKS;



--------------------------------------------------
/* END INSERT STATEMENT FOR BOOKS */
----------------------------------------------------






-----------------------------------------------------

/* BEGIN CREATE TABLE FOR BORROWER */
----------------------------------------------------

CREATE TABLE BORROWER(
   CARDNO INT NOT NULL PRIMARY KEY IDENTITY(1,1),
    NAME VARCHAR(255) ,
	Address VARCHAR(255),
	Phone VARCHAR(255)
	);



	SELECT * FROM BORROWER;



	/* END CREAT TABLE */


	
	

	/*BEGIN INSERT TABLE FOR BORROWER */

	INSERT INTO BORROWER (Name, ADDRESS, PHONE)
	VALUES 
	('KEVIN DURANT', '23456 12th pl w lynnwood WA 56785', '5603456878'),
	('MAX ASHES', '90898 11th sw Seattle WA 34454', '3456789321'),
	('MISS MOLLY', '33333 45th NE AZ 12123','3214563456'),
	('RICH MAX', '34543 16th pl Seattle WA 23232', '5678545676'),
	('CHARLIE BOFA', '98701 NE Everett WA 22222','3430954321'),
	('LADY MIDDLETON', '11111 East Pl Shoreline WA 09123', '5435433454'),
	('MAMA BARRON', '56787 SW Monroe WA 12098', '2323432354'),
	('BOSS PAPPY', '94584 NE Kirkland WA 45543', '7656764246'),
	('MERRY XMAS', '95113 SW Seattle WA 67765','0909631674')
	;

	
	SELECT * FROM BORROWER;


-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
/* END INSERT STATEMENT FOR BORROWER */
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------














	----------------------------------------------------------------------------------------
	/* BEGIN CREATE TABLE FOR BOOK AUTHORS, NEEDS A FOREIGN KEY WHICH REFERENCES BOOKS TABLE */

	-----------------------------------------------------------------------------------------

CREATE TABLE BOOK_AUTHORS (
AUTHORSID INT NOT NULL PRIMARY KEY IDENTITY(1,1),
BOOKID_AUTHORS INT NOT NULL CONSTRAINT FK_BOOK_AUTHORS_BOOK_ID FOREIGN KEY REFERENCES BOOKS(BOOKID) ON UPDATE CASCADE ON DELETE CASCADE,
AUTHORNAME VARCHAR(250)
)
;


SELECT * FROM BOOK_AUTHORS; 



/* END CREATE TABLE FOR BOOK AUTHORS */






/* BEGIN INSERT STATEMENT FOR BOOK_AUTHORS */

INSERT INTO BOOK_AUTHORS (BOOKID_AUTHORS, AUTHORNAME)
 VALUES
  (1, 'Messi Leonel'),
  (2, 'Stephen King'),
  (3, 'DiMaria Angel'),
  (4, 'Peter Crouch'),
  (5, 'Kevin Prince Boateng'),
  (6, 'Gerome Boateng'),
  (7, 'Stephen Appiah'),
  (8, 'Wayne Rooney'),
  (9, 'Giannis Antetokounmpo'),
  (10, 'Dennis Schroder'),
  (13,'Stephen King'),
  (12, 'Messi Leonel'),
  (11, 'DiMaria Angel'),
  (14, 'Peter Crouch'),
  (15, 'Gerome Boateng'),
  (16, 'Peter Crouch'),
  (17, 'Wayne Rooney'),
  (20, 'Stephen King'),
  (19, 'Peter Crouch'),
  (18, 'Stephen Appiah')
  ;

    SELECT * FROM BOOK_AUTHORS;
	


  ------------------------------------------------------------------------
    /* END INSERT STATEMENT FOR BOOK AUTHORS */
  -------------------------------------------------------------------------



  



  /* BEGIN CREATE TABLE FOR BOOK LOANS, HAS A FOREIGN KEY THAT REFERENCES THE TABLES - LIBRARY BRANCH, BOOKS AND BORROWER */
  
CREATE TABLE BOOK_LOANS (
	LOANSID INT NOT NULL PRIMARY KEY IDENTITY(1,1),
    BOOKID_LOANS INT NOT NULL CONSTRAINT FK_BOOK_LOANS_BOOK_ID FOREIGN KEY REFERENCES BOOKS(BOOKID) ON UPDATE CASCADE ON DELETE CASCADE,
    BRANCHID_LOANS INT NOT NULL CONSTRAINT FK_BOOK_LOANS_BRANCH_ID FOREIGN KEY REFERENCES LIBRARY_BRANCH(BRANCHID) ON UPDATE CASCADE ON DELETE CASCADE,
	CARDNO_LOANS INT NOT NULL CONSTRAINT FK_BOOK_LOANS_CARDNO_ID FOREIGN KEY REFERENCES BORROWER (CARDNO) ON UPDATE CASCADE ON DELETE CASCADE,
	DATE_OUT VARCHAR(235),
	DATE_DUE VARCHAR(235)
);


SELECT * FROM BOOK_LOANS

/* END CREATE TABLE STATEMENT FOR BOOK LOANS */







/* BEGIN INSERT STATEMENT FOR BOOK LOANS */

INSERT INTO BOOK_LOANS (BOOKID_LOANS, BRANCHID_LOANS, CARDNO_LOANS, DATE_OUT, DATE_DUE)
VALUES
(1, 1, 1, '01/01/2018', '02/01/2018'),
(2, 2, 2, '02/01/2018', '03/01/2018'),
(3, 3, 3, '03/01/2018', '04/01/2018'),
(4, 4, 4, '04/01/2018', '05/01/2018'),
(5, 1, 4, '01/02/2018', '02/02/2018'),
(6, 2, 4, '02/02/2018', '03/02/2018'),
(7, 3, 4, '03/04/2018', '04/04/2018'),
(8, 4, 5, '03/04/2018', '04/04/2018'),
(9, 1, 4, '03/04/2018', '04/04/2018'),
(10, 2, 1, '01/06/2018', '02/06/2018'),
(11, 3, 1, '05/01/2018', '06/01/2018'),
(12, 4, 1, '01/01/2018', '02/01/2018'),
(13, 1, 1, '07/01/2018', '08/01/2018'),
(14, 2, 2, '08/01/2018', '09/01/2018'),
(15, 3, 2, '10/01/2018', '11/01/2018'),
(16, 4, 2, '01/20/2018', '02/20/2018'),
(17, 1, 3, '02/20/2018', '03/20/2018'),
(18, 2, 3, '04/20/2018', '05/20/2018'),
(19, 3, 3, '06/20/2018', '07/20/2018'),
(20, 4, 4, '08/12/2018', '09/12/2018'),
(1, 1, 4, '08/13/2018', '09/13/2018'),
(2, 2, 4, '07/15/2018', '08/15/2018'),
(3, 3, 1, '03/19/2018', '04/19/2018'),
(4, 4, 1, '11/30/2018', '12/30/2018'),
(5, 1, 1, '12/05/2018', '12/31/2018'),
(6, 2, 1, '07/16/2018', '08/16/2018'),
(7, 3, 2, '03/17/2018', '04/17/2018'),
(8, 4, 2, '07/18/2018', '08/18/2018'),
(9, 1, 2, '08/19/2018', '09/19/2018'),
(10, 2, 3, '07/01/2018', '08/02/2018'),
(11, 3, 3, '03/23/2018', '04/23/2018'),
(12, 4, 3, '07/31/2018', '08/31/2018'),
(13, 1, 3, '03/19/2018', '04/19/2018'),
(14, 2, 4, '07/15/2018', '08/15/2018'),
(15, 3, 4, '03/19/2018', '04/19/2018'),
(16, 4, 4, '07/15/2018', '08/15/2018'),
(17, 1, 1, '03/19/2018', '04/19/2018'),
(18, 2, 2, '07/15/2018', '08/15/2018'),
(19, 3, 3, '03/19/2018', '04/19/2018'),
(20, 4, 4, '07/15/2018', '08/15/2018'),
(1, 1, 1, '03/19/2018', '04/19/2018'),
(2, 2, 2, '07/15/2018', '08/15/2018'),
(3, 3, 3, '03/19/2018', '04/19/2018'),
(4, 4, 4, '07/15/2018', '08/15/2018'),
(5, 1, 1, '03/19/2018', '04/19/2018'),
(6, 2, 1, '07/15/2018', '08/15/2018'),
(7, 3, 2, '03/19/2018', '04/19/2018'),
(8, 4, 3, '07/15/2018', '08/15/2018'),
(9, 1, 4, '03/19/2018', '04/19/2018'),
(10, 2, 3, '07/15/2018', '08/15/2018')
;




SELECT * FROM BOOK_LOANS;




/* END INSERT STATEMENT FOR BOOK LOANS */





-------------------------------------------------------------------------------
--------------------------------------------------------------------------------









/* BEGIN CREATE TABLE STATEMENT FOR BOOK_COPIES, HAS A FOREIGN KEY THAT REFERENCES LIBRARY BRANCH AND BOOKS TABLES */


CREATE TABLE BOOK_COPIES (
	COPIESID INT NOT NULL PRIMARY KEY IDENTITY(1,1),
    BOOKID_COPIES INT NOT NULL CONSTRAINT FK_BOOK_COPIES_BOOK_ID FOREIGN KEY REFERENCES BOOKS(BOOKID) ON UPDATE CASCADE ON DELETE CASCADE,
    BRANCHID_COPIES INT NOT NULL CONSTRAINT FK_BOOK_COPIES_BRANCH_ID FOREIGN KEY REFERENCES LIBRARY_BRANCH (BRANCHID) ON UPDATE CASCADE ON DELETE CASCADE,
	NUMBER_OF_COPIES INT NOT NULL
);


SELECT * FROM BOOK_COPIES;





/* END CREATE STATEMENT FOR BOOK_COPIES */



/* BEGIN INSERT STATEMENT FOR BOOK COPIES */

INSERT INTO BOOK_COPIES (BOOKID_COPIES, BRANCHID_COPIES, NUMBER_OF_COPIES)
VALUES
(1, 1, 11),
(2, 2, 12),
(3, 3, 15),
(4, 4, 35),
(5, 1, 30),
(6, 2, 20),
(7, 3, 16),
(8, 4, 40),
(9, 1, 30),
(10, 2, 18),
(11, 3, 17),
(12, 4, 50),
(13, 1, 25),
(14, 2, 35),
(15, 3, 45),
(16, 4, 33),
(17, 1, 44),
(18, 2, 22),
(19, 3, 55),
(20, 4, 37)
;


SELECT * FROM BOOK_COPIES;



/* END INSERT STATEMENT FOR BOOK COPIES */




------------------------------------------------------------------------------------------------------------------------------
/* BEGIN SELECT * TABLES */
------------------------------------------------------------------------------------------------------------------------------



SELECT * FROM Library_Branch;
SELECT * FROM Publisher;
SELECT * FROM BOOKS;
SELECT * FROM BORROWER;
SELECT *FROM BOOK_AUTHORS;
SELECT * FROM BOOK_LOANS;
SELECT * FROM BOOK_COPIES;

-------------------------------------------------------------------
/* END SELECT * TABLES */
------------------------------------------------------------------






----------------------------------------------------------------------------------------------------------------------------------------
-- BEGIN QUERY 
/* Begin Question #1 How many copies of the book titled "The Lost Tribe" are owned by the library branch whose name is "Sharpstown"? */
------------------------------------------------------------------------------------------------------------------------------------------




SELECT NUMBER_OF_COPIES AS 'Copies', Library_Branch.BRANCHName AS 'Name Of Branch'
FROM BOOK_COPIES 
INNER JOIN Library_Branch ON BOOK_COPIES.BRANCHID_COPIES = Library_Branch.BRANCHID
WHERE BOOK_COPIES.BOOKID_COPIES = 1


----------------------------------------------------------------------------------------------------------------------
/* END QUERY FOR #1 */
----------------------------------------------------------------------------------------------------------------------






---------------------------------------------------------------------------------------------------------------------------------------------
--BEGIN QUERY 

/* Begin question #2  How many copies of the book titled "The Lost Tribe" are owned by each library branch? */

----------------------------------------------------------------------------------------------------------------------------------------------





SELECT NUMBER_OF_COPIES AS 'Copies', Library_Branch.BRANCHName AS 'Name Of Branch'
FROM BOOK_COPIES 
FULL OUTER JOIN Library_Branch ON BOOK_COPIES.BRANCHID_COPIES = Library_Branch.BRANCHID
WHERE BOOKID_COPIES = 13 





----------------------------------------------------------------------------------------------------------------------
/* END Question #2 */
----------------------------------------------------------------------------------------------------------------------





-------------------------------------------------------------------------------------------------------------
--BEGIN QUERY 
/* QUESTION #3 Retrieve the names of all borrowers who do not have any books checked out. */

-------------------------------------------------------------------------------------------------------------



SELECT Name AS 'Names of book loan free'
FROM BORROWER 
FULL OUTER JOIN BOOK_LOANS AS B_L ON BORROWER.CARDNO = B_L.CARDNO_LOANS
WHERE DATE_OUT IS NULL



/*END QUESTION #3 */

---------------------------------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------------------------------






-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--BEGIN QUERY 
/* #4, For each book that is loaned out from the "Sharpstown" branch and whose DueDate is today, retrieve the book title, the borrower's name, and the borrower's address. */

--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

SELECT BK.Title, BW.Name, BW.Address 
FROM BOOK_LOANS AS B_L 
FULL OUTER JOIN BORROWER AS BW ON B_L.CARDNO_LOANS = BW.CARDNO
FULL OUTER JOIN BOOKS AS BK ON B_L.BOOKID_LOANS = BK.BOOKID
FULL OUTER JOIN LIBRARY_BRANCH AS L_B ON B_L.BRANCHID_LOANS = L_B.BRANCHID
WHERE BranchName = 'Sharpstown' AND Date_due = '04/04/2018'




----------------------------------------------------------------------------------------------------------------------

/* end #4 */

----------------------------------------------------------------------------------------------------------------------





-------------------------------------------------------------------------------------------------------------------------------------
/* #5 For each library branch, retrieve the branch name and the total number of books loaned out from that branch. */
--------------------------------------------------------------------------------------------------------------------------------------




SELECT BranchName AS "Branch", Number_of_copies AS 'Total Number of Books Loaned'
FROM BOOK_LOANS AS B_L
FULL OUTER JOIN LIBRARY_BRANCH AS LB ON B_L.BRANCHID_LOANS = LB.BranchId
Inner Join BOOK_COPIES AS B_C ON B_L.BRANCHID_LOANS = B_C.BOOKID_COPIES
WHERE BranchName IN ('Sharpstown', 'Central', 'Tema', 'Adenta')









-----------------------------------------------------------------------------------------------------------------------
/* end #5 */
----------------------------------------------------------------------------------------------------------------------







-------------------------------------------------------------------------------------------------------------------------------------------------
/* Begin #6 Retrieve the names, addresses, and the number of books checked out for all borrowers who have more than five books checked out. */
-------------------------------------------------------------------------------------------------------------------------------------------------






SELECT Name, Address, COUNT(B_L.CARDNO_LOANS) AS 'books checked out'
FROM BORROWER AS BW
FULL OUTER JOIN BOOK_LOANS AS B_L ON BW.CardNo = B_L.CARDNO_LOANS
GROUP BY Name, Address
HAVING COUNT (B_L.CARDNO_LOANS) > 5


----------------------------------------------------------------------------------------------------------------------
/* end #6 */
----------------------------------------------------------------------------------------------------------------------







---------------------------------------------------------------------------------------------------------------------------------------------------------------------
/* #7 For each book authored (or co-authored) by "Stephen King", retrieve the title and the number of copies owned by the library branch whose name is "Central". */
---------------------------------------------------------------------------------------------------------------------------------------------------------------------





SELECT Title, Number_Of_Copies, AUTHORNAME
FROM BOOKS AS BK
FULL OUTER JOIN BOOK_COPIES AS B_C ON BK.BookID = B_C.BOOKID_COPIES
FULL OUTER JOIN LIBRARY_BRANCH AS L_B ON B_C.BRANCHID_COPIES = L_B.BranchId
FULL OUTER JOIN BOOK_AUTHORS AS B_A ON BK.BookID = B_A.BOOKID_AUTHORS
WHERE BranchName = 'Central'
AND AuthorName = 'Stephen King'


----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
/* End #7 */

------------------------------------------------------------------------------------------------------------------------------------------------------------------










