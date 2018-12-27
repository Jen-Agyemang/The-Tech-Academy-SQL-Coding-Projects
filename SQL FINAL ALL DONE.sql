

/* FINAL DRILL  */

USE BOOKSTORE;

---------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------

/* BEGIN CREATE TABLE */

CREATE TABLE Library_Branch(
    BranchID INT NOT NULL PRIMARY KEY IDENTITY(5,1),
	BRANCHName VARCHAR(255),
	Address VARCHAR(255),
);


SELECT * FROM LIBRARY_BRANCH;

/* END CREATE TABLE */





/* BEGIN INSERT INTO */

INSERT INTO Library_Branch(BranchName, Address)
VALUES
('Sharpstown', '34563 18th st Seattle WA 45674'),
('Sharpstown', '34563 18th st Seattle WA 45674'),
('Sharpstown', '34563 18th st Seattle WA 45674'),
('Sharpstown', '34563 18th st Seattle WA 45674'),
('Sharpstown', '34563 18th st Seattle WA 45674'),
('Sharpstown', '34563 18th st Seattle WA 45674'),
('Sharpstown', '34563 18th st Seattle WA 45674'),
('Sharpstown', '34563 18th st Seattle WA 45674'),
('Sharpstown', '34563 18th st Seattle WA 45674'),
('Sharpstown', '34563 18th st Seattle WA 45674'),
('Central', '45632 16th sw Kirkland WA 12345'),
('Central', '45632 16th sw Kirkland WA 12345'),
('Central', '45632 16th sw Kirkland WA 12345'),
('Central', '45632 16th sw Kirkland WA 12345'),
('Central', '45632 16th sw Kirkland WA 12345'),
('Central', '45632 16th sw Kirkland WA 12345'),
('Central', '45632 16th sw Kirkland WA 12345'),
('Central', '45632 16th sw Kirkland WA 12345'),
('Central', '45632 16th sw Kirkland WA 12345'),
('Central', '45632 16th sw Kirkland WA 12345'),
('Tema', '57944 165th st Redmond WA 94323'),
('Tema', '57944 165th st Redmond WA 94323'),
('Tema', '57944 165th st Redmond WA 94323'),
('Tema', '57944 165th st Redmond WA 94323'),
('Tema', '57944 165th st Redmond WA 94323'),
('Tema', '57944 165th st Redmond WA 94323'),
('Tema', '57944 165th st Redmond WA 94323'),
('Tema', '57944 165th st Redmond WA 94323'),
('Tema', '57944 165th st Redmond WA 94323'),
('Tema', '57944 165th st Redmond WA 94323'),
('Adenta', '67895 14th ave Medina WA 94569'),
('Adenta', '67895 14th ave Medina WA 94569'),
('Adenta', '67895 14th ave Medina WA 94569'),
('Adenta', '67895 14th ave Medina WA 94569'),
('Adenta', '67895 14th ave Medina WA 94569'),
('Adenta', '67895 14th ave Medina WA 94569'),
('Adenta', '67895 14th ave Medina WA 94569'),
('Adenta', '67895 14th ave Medina WA 94569'),
('Adenta', '67895 14th ave Medina WA 94569'),
('Adenta', '67895 14th ave Medina WA 94569')
;


SELECT * FROM LIBRARY_BRANCH;


/* END INSERT INTO LIBRARY_BRANCH*/


----------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------






-------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------

	/* BEGIN CREATE TABLE */


	CREATE TABLE Publisher (
	PublisherID INT NOT NULL PRIMARY KEY IDENTITY(1,1),
	PUBLISHER_NAME VARCHAR(255),
	Address VARCHAR(255),
	Phone VARCHAR(255),
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


	/* END INSERT STATEMENT */

	--------------------------------------------------------------------------------------------------
	---------------------------------------------------------------------------------------------------







	-------------------------------------------------------------------------------------------------
	------------------------------------------------------------------------------------------------
	
	/* BEGIN CREATE TABLE STATEMENT FOR BOOKS */

	CREATE TABLE BOOKS (
	BOOKID INT NOT NULL PRIMARY KEY IDENTITY(1,1),
	TITLE VARCHAR(255),
	PUBLISHER_NAME VARCHAR(255),
	)
	;
	


	SELECT * FROM Books;



/* END CREATE TABLE STATEMENT FOR BOOKS */




/* BEGIN INSERT STATEMENT FOR BOOKS */

INSERT INTO BOOKS(TITLE, PUBLISHER_NAME)
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
('Smileysss', 'Stephen King'),
('The Lost Tribe', 'Stephen King'),
('Happy', 'Mr Jackson'),
('Sad', 'Mrs There'),
('Awesome', 'Miss Molly'),
('Too hot', 'Lady Lord'),
('Believe', 'Candy Cane'),
('UpTown', 'Baby Baby'),
('HAHA Land', 'Wap Girl')

;



SELECT * FROM BOOKS;



/* END INSERT STATEMENT FOR BOOKS */


--------------------------------------------------
----------------------------------------------------






-----------------------------------------------------
----------------------------------------------------



/* BEGIN CREATE TABLE FOR BORROWER */

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


	/* END INSERT INTO TABLE BORROWER */


	/* QUESTION #3 */


	SELECT NAME 
	FROM BORROWER B
	WHERE NOT EXISTS  (SELECT * FROM BOOK_LOANS L WHERE B.CARDNO = 'L.CARDNO'  )

	/* END QUESTION #3 */
	---------------------------------------------------------------------------------------------------------------
	--------------------------------------------------------------------------------------------------------------







	----------------------------------------------------------------------------------------
	-----------------------------------------------------------------------------------------


	
/* BEGIN CREATE TABLE FOR BOOK AUTHORS, NEEDS A FOREIGN KEY WHICH REFERENCES BOOKS TABLE */

CREATE TABLE BOOK_AUTHORS (
BOOKID INT NOT NULL FOREIGN KEY(BOOKID) REFERENCES BOOKS(BOOKID) PRIMARY KEY,
AUTHORNAME VARCHAR(300) NOT NULL
);



SELECT * FROM BOOK_AUTHORS; 



/* END CREATE TABLE FOR BOOK AUTHORS */




/* BEGIN INSERT STATEMENT FOR BOOK_AUTHORS */

INSERT INTO BOOK_AUTHORS (BOOKID, AUTHORNAME)
 VALUES
  (1, 'Messi Leonel'),
  (2, 'Christiano Ronaldo'),
  (3, 'DiMaria Angel'),
  (4, 'Peter Crouch'),
  (5, 'Kevin Prince Boateng'),
  (6, 'Gerome Boateng'),
  (7, 'Stephen Appiah'),
  (8, 'Wayne Rooney'),
  (9, 'Giannis Antetokounmpo'),
  (10, 'Dennis Schroder'),
  (11,'Stephen King')
  ;


  SELECT * FROM BOOK_AUTHORS;


  /* END INSERT STATEMENT FOR BOOKID */






  ------------------------------------------------------------------------
  -------------------------------------------------------------------------




  /* BEGIN CREATE TABLE FOR BOOK LOANS, HAS A FOREIGN KEY THAT REFERENCES THE TABLES - LIBRARY BRANCH, BOOKS AND BORROWER */
  
CREATE TABLE BOOK_LOANS (
    BOOKID int NOT NULL PRIMARY KEY,
    BRANCHID int NOT NULL,
	CARDNO INT NOT NULL,
	DATE_OUT VARCHAR(235),
	DATE_DUE VARCHAR(235),
	FOREIGN KEY (BRANCHID) REFERENCES LIBRARY_BRANCH(BRANCHID), 
	FOREIGN KEY (BOOKID) REFERENCES BOOKS(BOOKID),
	FOREIGN KEY (CARDNO) REFERENCES BORROWER(CARDNO)
);


SELECT * FROM BOOK_LOANS;

/* END CREATE TABLE STATEMENT FOR BOOK LOANS */




/* BEGIN INSERT STATEMENT FOR BOOK LOANS */

INSERT INTO BOOK_LOANS (BOOKID, BRANCHID, CARDNO, DATE_OUT, DATE_DUE)
VALUES
(1, 5, 1, '01/01/2018', '02/01/2018'),
(2, 6, 2, '02/01/2018', '03/01/2018'),
(3, 6, 3, '03/01/2018', '04/01/2018'),
(4, 7, 4, '04/01/2018', '05/01/2018'),
(5, 8, 5, '01/02/2018', '02/02/2018'),
(6, 9, 6, '02/02/2018', '03/02/2018'),
(7, 10, 7, '03/04/2018', '04/04/2018'),
(8, 11, 8, '03/04/2018', '04/04/2018'),
(9, 12, 9, '03/04/2018', '04/04/2018')
;


/*
(10, 13, 10, '01/06/2018', '02/06/2018'),
(11, 14, 11, '05/01/2018', '06/01/2018'),
(12, 15, 12, '01/01/2018', '02/01/2018'),
(13, 16, 13, '07/01/2018', '08/01/2018'),
(14, 17, 14, '08/01/2018', '09/01/2018'),
(15, 18, 15, '10/01/2018', '11/01/2018'),
(16, 19, 16, '01/20/2018', '02/20/2018'),
(17, 20, 17, '02/20/2018', '03/20/2018'),
(18, 21, 18, '04/20/2018', '05/20/2018'),
(19, 22, 19, '06/20/2018', '07/20/2018'),
(20, 23, 20, '08/12/2018', '09/12/2018'),
(21, 24, 21, '08/13/2018', '09/13/2018'),
(22, 25, 22, '07/15/2018', '08/15/2018'),
(23, 26, 23, '03/19/2018', '04/19/2018'),
(24, 27, 24, '11/30/2018', '12/30/2018'),
(25, 28, 25, '12/05/2018', '12/31/2018'),
(26, 29, 26, '07/16/2018', '08/16/2018'),
(27, 30, 27, '03/17/2018', '04/17/2018'),
(28, 31, 28, '07/18/2018', '08/18/2018'),
(29, 32, 29, '08/19/2018', '09/19/2018'),
(30, 33, 30, '07/01/2018', '08/02/2018'),
(31, 34, 31, '03/23/2018', '04/23/2018'),
(32, 35, 32, '07/31/2018', '08/31/2018'),
(33, 36, 33, '03/19/2018', '04/19/2018'),
(34, 37, 34, '07/15/2018', '08/15/2018'),
(35, 38, 35, '03/19/2018', '04/19/2018'),
(36, 39, 36, '07/15/2018', '08/15/2018'),
(37, 40, 37, '03/19/2018', '04/19/2018'),
(38, 41, 38, '07/15/2018', '08/15/2018'),
(39, 42, 39, '03/19/2018', '04/19/2018'),
(40, 43, 40, '07/15/2018', '08/15/2018'),
(41, 44, 41, '03/19/2018', '04/19/2018'),
(42, 45, 42, '07/15/2018', '08/15/2018'),
(43, 46, 43, '03/19/2018', '04/19/2018'),
(44, 47, 43, '07/15/2018', '08/15/2018'),
(45, 48, 45, '03/19/2018', '04/19/2018'),
(46, 49, 46, '07/15/2018', '08/15/2018'),
(47, 50, 47, '03/19/2018', '04/19/2018'),
(48, 51, 48, '07/15/2018', '08/15/2018'),
(49, 52, 49, '03/19/2018', '04/19/2018'),
(50, 53, 50, '07/15/2018', '08/15/2018')
*/




SELECT * FROM BOOK_LOANS;



/* END INSERT STATEMENT FOR BOOK LOANS */





-------------------------------------------------------------------------------
--------------------------------------------------------------------------------





/* BEGIN CREATE TABLE STATEMENT FOR BOOK_COPIES, HAS A FOREIGN KEY THAT REFERENCES LIBRARY BRANCH AND BOOKS TABLES */


CREATE TABLE BOOK_COPIES (
    BOOKID INT NOT NULL PRIMARY KEY,
    BRANCHID INT NOT NULL,
	NUMBER_OF_COPIES INT NOT NULL,
	FOREIGN KEY (BRANCHID) REFERENCES LIBRARY_BRANCH(BRANCHID), 
	FOREIGN KEY (BOOKID) REFERENCES BOOKS(BOOKID)
);



SELECT * FROM BOOK_COPIES;


/* END CREATE STATEMENT FOR BOOK_COPIES */



/* BEGIN INSERT STATEMENT FOR BOOK COPIES */

INSERT INTO BOOK_COPIES (BOOKID, BRANCHID, NUMBER_OF_COPIES)
VALUES
(1, 5, 5),
(2, 6, 10),
(3, 7, 15),
(4, 8, 35),
(5, 9, 2)
;


SELECT * FROM BOOK_COPIES;



/* END INSERT STATEMENT FOR BOOK COPIES */















-------------------------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------------








--BEGIN QUERY STATEMENTS


/* Begin Question #1 How many copies of the book titled "The Lost Tribe" are owned by the library branch whose name is "Sharpstown"? */


SELECT COUNT(BRANCHNAME) AS 'COUNT', BRANCHNAME -- THE SECOND BRANCHNAME ON THIS LINE WILL SHOW THE NAME OF THE SPECIFIC BRANCHNAME
FROM LIBRARY_BRANCH
WHERE BRANCHNAME ='SHARPSTOWN'
GROUP BY BRANCHNAME;



/* END question #1 */


----------------------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------------



/* Begin question #2 How many copies of the book titled "The Lost Tribe" are owned by each library branch? */


SELECT *
FROM BOOK_COPIES AS B_C 
INNER JOIN LIBRARY_BRANCH AS L_B ON B_C.BranchId = L_B.BranchId
INNER JOIN BOOKS AS BK ON B_C.BookId = BK.BookID
WHERE Title = 'The Lost Tribe'


/* END Question #2 */



----------------------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------------




/* QUESTION #3 Retrieve the names of all borrowers who do not have any books checked out.*/
/* All borrowers do have books checked out, reason why answer is empty */






SELECT *
FROM BOOK_LOANS AS B_L
FULL OUTER JOIN BORROWER AS BW ON B_L.CardNo = BW.CardNo
WHERE Date_Out IS NULL






/*END QUESTION #3 */

---------------------------------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------------------------------






/* #4, For each book that is loaned out from the "Sharpstown" branch and whose DueDate is today, retrieve the book title, the borrower's name, and the borrower's address. */

SELECT Title, Name, BW.Address
FROM BOOK_LOANS AS B_L 
FULL OUTER JOIN BORROWER AS BW ON B_L.CardNo = BW.CardNo
FULL OUTER JOIN BOOKS AS BK ON B_L.BookId = BK.BookID
FULL OUTER JOIN LIBRARY_BRANCH AS L_B ON B_L.BranchId = L_B.BranchId
WHERE BranchName = 'Sharpstown' AND Date_due = '04/04/2018'


/* end #4 */


----------------------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------------




/* #5 For each library branch, retrieve the branch name and the total number of books loaned out from that branch. */

SELECT BranchName, COUNT(*) AS "TOTAL OF BOOKS LOANED"
FROM BOOK_LOANS AS B_L
FULL OUTER JOIN LIBRARY_BRANCH AS LB ON B_L.BranchId = LB.BranchId
WHERE BranchName IN ('Sharpstown', 'Central', 'Tema', 'Adenta')
GROUP BY BranchName
/* end #5 */



-----------------------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------------


/* #6 */



SELECT Name, Address, COUNT(B_L.CardNo) AS 'books checked out'
FROM BORROWER AS BW
FULL OUTER JOIN BOOK_LOANS AS B_L ON BW.CardNo = B_L.CardNo
GROUP BY Name, Address
HAVING COUNT (B_L.CardNo) > 5


/* end #6 */




----------------------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------------



/* #7 */

SELECT Title, Number_Of_Copies, BranchName
FROM BOOKS AS BK
FULL OUTER JOIN BOOK_COPIES AS B_C ON BK.BookID = B_C.BookID
FULL OUTER JOIN LIBRARY_BRANCH AS L_B ON B_C.BranchId = L_B.BranchId
FULL OUTER JOIN BOOK_AUTHORS AS B_A ON BK.BookID = B_A.BookId
WHERE BranchName = 'Central'
AND AuthorName = 'Stephen King'

/* End #7 */

-----------------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------------

/* End Query Statements */