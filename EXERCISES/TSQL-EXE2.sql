.headers on
.echo on

--Author: James Dix
--Subject: TSQL-EXE2
--Date: 18 August 2018

--1. Mailing Labels From the Northwind database we used in class and SQLite, create mailing labels for customer representatives. Each label should consist of six, and exactly six, lines. The mailing labels should be suitable for printing on sticky label paper, speciﬁcally Avery 8160 labels. The format should be as follows: TITLE FIRSTNAME LASTNAME COMPANYNAME STREET ADDRESS CITY STATE ZIP COUNTRY [blank line] [blank line]
select contactTitle || " " || contactname || "
   ...>     " || companyname || "
   ...>     " || address || "
   ...>     " || city || " " || region || " " || postalcode || " " || country ||"
   ...>
   ...>
   ...>     "from customers limit 5;
ContactTitle ContactName
    CompanyName
    Address
    City Region PostalCode Country



Sales Representative Maria Anders
    Alfreds Futterkiste
    Obere Str. 57
    Berlin  12209 Germany



Owner Ana Trujillo
    Ana Trujillo Emparedados y helados
    Avda. de la Constitución 2222
    México D.F.  05021 Mexico



Owner Antonio Moreno
    Antonio Moreno Taquería
    Mataderos  2312
    México D.F.  05023 Mexico



Sales Representative Thomas Hardy
    Around the Horn
    120 Hanover Sq.
    London  WA1 1DP UK


--2. Telephone Book From the Northwind database we used in class and SQLite, create a telephone book for customer representatives. Each line in the telehone book should consist of the representative last name, representative ﬁrst name, company name, and telephone number. Each row should look like this. Lastname, Firstname Middlename [tab] Company name [tab] phone number
select substr(contactname, instr(contactname, " "), instr(contactname, " ")+1) || " , " || substr(contactname, 1, instr(contactname, " ")-1) || "  " || companyname || "  " || phone from customers limit 15;
 Anders , Maria  Alfreds Futterkiste  030-0074321
 Truj , Ana  Ana Trujillo Emparedados y helados  (5) 555-4729
 Moreno , Antonio  Antonio Moreno Taquería  (5) 555-3932
 Hardy , Thomas  Around the Horn  (171) 555-7788
 Berglund , Christina  Berglunds snabbköp  0921-12 34 65
 Moos , Hanna  Blauer See Delikatessen  0621-08460
 Citeaux , Frédérique  Blondesddsl père et fils  88.60.15.31
 Sommer , Martín  Bólido Comidas preparadas  (91) 555 22 82
 Lebihan , Laurence  Bon app''  91.24.45.40
 Lincoln , Elizabeth  Bottom-Dollar Markets  (604) 555-4729
 Ashworth , Victoria  B''s Beverages  (171) 555-1212
 Simpson , Patricio  Cactus Comidas para llevar  (1) 135-5555
 Chang , Francisco  Centro comercial Moctezuma  (5) 555-3392
 Wang , Yang  Chop-suey Chinese  0452-076545


--3. Shipping Lag From the Northwind database, create a report from Orders showing the shipping lag between order date and shipped date. The report should contain four columns: the order umber, the order date, the shipped date, and the diﬀerence in days between the order date and the shipped date.
select orderid, orderdate, shippeddate, julianday(shippeddate) - julianday(orderdate) as difference from orders  orders limit 5;
OrderID|OrderDate|ShippedDate|difference
10248|1996-07-04|1996-07-16|12.0
10249|1996-07-05|1996-07-10|5.0
10250|1996-07-08|1996-07-12|4.0
10251|1996-07-08|1996-07-15|7.0
10252|1996-07-09|1996-07-11|2.0
 
	 
--4. Your Age: How old are you, in days, today? Use Sqlite to calculate this.
select julianday('now') - julianday('1976-10-03');
15295.072091551
 
