.echo on
.headers on

--NAME: JAMES DIX
--FILE: TSQL-LAB 3
--DATE: 21 AUG 2018


1. What is the order number and the date of each order sold by each employee?
select e.employeeid, e.firstname, e.lastname, o.orderid, o.orderdate 
from employees e join orders o on e.employeeid = o.employeeid limit 15;

1|Nancy|Davolio|10258|1996-07-17
1|Nancy|Davolio|10270|1996-08-01
1|Nancy|Davolio|10275|1996-08-07
1|Nancy|Davolio|10285|1996-08-20
1|Nancy|Davolio|10292|1996-08-28
1|Nancy|Davolio|10293|1996-08-29
1|Nancy|Davolio|10304|1996-09-12
1|Nancy|Davolio|10306|1996-09-16
1|Nancy|Davolio|10311|1996-09-20
1|Nancy|Davolio|10314|1996-09-25
1|Nancy|Davolio|10316|1996-09-27

2. List each territory by region.



3. What is the supplier name for each product alphabetically by supplier?
 select s.supplierid, s. companyname, p.productid, p.productname 
 from suppliers s left outer 
 join products p on s.supplierid;
 
 1|Exotic Liquids|1|Chai
1|Exotic Liquids|2|Chang
1|Exotic Liquids|3|Aniseed Syrup
1|Exotic Liquids|4|Chef Anton's Cajun Seasoning
1|Exotic Liquids|5|Chef Anton's Gumbo Mix
1|Exotic Liquids|6|Grandma's Boysenberry Spread
1|Exotic Liquids|7|Uncle Bob's Organic Dried Pears
1|Exotic Liquids|8|Northwoods Cranberry Sauce
1|Exotic Liquids|9|Mishi Kobe Niku
1|Exotic Liquids|10|Ikura
 
4. For every order on May 5, 1998, how many of each item was ordered, and what was the price of the item?

5. For every order on May 5, 1998, how many of each item was ordered giving the name of the item, and what was the price of the item?
select o.orderid, o.orderdate, p.productname, od.productid, od.quanity, od.unitprice
from orders o join order_details on o.orderid = od.orderid 
join products p on od.productid = p.productid 
where o.orderdate like '1998-05-05;

6. For every order in May, 1998, what was the customer’s name and the shipper’s name?
select c.companyname, s.companyname, o.orderdate 
from customers c innerjoin orders o on o.customerid = c.customerid
join shippers s on s.shipperid = o.shipperid = o.shipperid = o.shipperid
where o.orderdate like '1998-05-0%';

Save-a-lot Markets|Speedy Express|1998-05-01
LILA-Supermercado|Speedy Express|1998-05-01
Lehmanns Marktstand|Speedy Express|1998-05-05
LILA-Supermercado|Speedy Express|1998-05-05

7. What is the customer’s name and the employee’s name for every order shipped to France?
select c. companyname, c.contactname, e.firstname, e.lastname, o.shipcountry 
from orders o join customers c on o.customerid = c.customerid 
join employees e on o.employeeid = e.employeeid 
where o. shipcountry like 'France';

CompanyName|ContactName|FirstName|LastName|ShipCountry
Vins et alcools Chevalier|Paul Henriot|Steven|Buchanan|France
Victuailles en stock|Mary Saveley|Janet|Leverling|France
Blondesddsl père et fils|Frédérique Citeaux|Andrew|Fuller|France
Vins et alcools Chevalier|Paul Henriot|Michael|Suyama|France
Vins et alcools Chevalier|Paul Henriot|Andrew|Fuller|France
Blondesddsl père et fils|Frédérique Citeaux|Steven|Buchanan|France
Du monde entier|Janine Labrune|Nancy|Davolio|France
Bon app''|Laurence Lebihan|Anne|Dodsworth|France
Victuailles en stock|Mary Saveley|Laura|Callahan|France
Bon app''|Laurence Lebihan|Nancy|Davolio|France
La maison d''Asie|Annette Roulet|Michael|Suyama|France
La maison d''Asie|Annette Roulet|Steven|Buchanan|France
Blondesddsl père et fils|Frédérique Citeaux|Margaret|Peacock|France
Bon app''|Laurence Lebihan|Janet|Leverling|France
La maison d''Asie|Annette Roulet|Nancy|Davolio|France
Folies gourmandes|Martine Rancé|Laura|Callahan|France
La maison d''Asie|Annette Roulet|Janet|Leverling|France
La maison d''Asie|Annette Roulet|Michael|Suyama|France
Blondesddsl père et fils|Frédérique Citeaux|Janet|Leverling|France
Blondesddsl père et fils|Frédérique Citeaux|Janet|Leverling|France
Victuailles en stock|Mary Saveley|Laura|Callahan|France
La maison d''Asie|Annette Roulet|Margaret|Peacock|France
Victuailles en stock|Mary Saveley|Margaret|Peacock|France
Bon app''|Laurence Lebihan|Margaret|Peacock|France
Victuailles en stock|Mary Saveley|Andrew|Fuller|France
Folies gourmandes|Martine Rancé|Michael|Suyama|France
La maison d''Asie|Annette Roulet|Margaret|Peacock|France
La maison d''Asie|Annette Roulet|Michael|Suyama|France
Bon app''|Laurence Lebihan|Margaret|Peacock|France
Bon app''|Laurence Lebihan|Nancy|Davolio|France
Victuailles en stock|Mary Saveley|Nancy|Davolio|France
Blondesddsl père et fils|Frédérique Citeaux|Michael|Suyama|France
Blondesddsl père et fils|Frédérique Citeaux|Anne|Dodsworth|France
Blondesddsl père et fils|Frédérique Citeaux|Margaret|Peacock|France
Du monde entier|Janine Labrune|Robert|King|France
La maison d''Asie|Annette Roulet|Laura|Callahan|France
Blondesddsl père et fils|Frédérique Citeaux|Margaret|Peacock|France
La maison d''Asie|Annette Roulet|Laura|Callahan|France
Folies gourmandes|Martine Rancé|Margaret|Peacock|France
Bon app''|Laurence Lebihan|Andrew|Fuller|France
France restauration|Carine Schmitt|Nancy|Davolio|France
Blondesddsl père et fils|Frédérique Citeaux|Laura|Callahan|France
Du monde entier|Janine Labrune|Andrew|Fuller|France
Bon app''|Laurence Lebihan|Janet|Leverling|France
Bon app''|Laurence Lebihan|Steven|Buchanan|France
Bon app''|Laurence Lebihan|Janet|Leverling|France
Vins et alcools Chevalier|Paul Henriot|Andrew|Fuller|France
Spécialités du monde|Dominique Perrier|Andrew|Fuller|France
Vins et alcools Chevalier|Paul Henriot|Janet|Leverling|France
Bon app''|Laurence Lebihan|Margaret|Peacock|France
Folies gourmandes|Martine Rancé|Janet|Leverling|France
La maison d''Asie|Annette Roulet|Andrew|Fuller|France
Folies gourmandes|Martine Rancé|Nancy|Davolio|France
Victuailles en stock|Mary Saveley|Janet|Leverling|France
Victuailles en stock|Mary Saveley|Janet|Leverling|France
Blondesddsl père et fils|Frédérique Citeaux|Michael|Suyama|France
Bon app''|Laurence Lebihan|Nancy|Davolio|France
La maison d''Asie|Annette Roulet|Andrew|Fuller|France
Victuailles en stock|Mary Saveley|Margaret|Peacock|France
Victuailles en stock|Mary Saveley|Nancy|Davolio|France
La corne d''abondance|Daniel Tonini|Andrew|Fuller|France
France restauration|Carine Schmitt|Janet|Leverling|France
Bon app''|Laurence Lebihan|Anne|Dodsworth|France
Bon app''|Laurence Lebihan|Robert|King|France
Du monde entier|Janine Labrune|Robert|King|France
Spécialités du monde|Dominique Perrier|Michael|Suyama|France
La maison d''Asie|Annette Roulet|Robert|King|France
La corne d''abondance|Daniel Tonini|Margaret|Peacock|France
Bon app''|Laurence Lebihan|Laura|Callahan|France
Bon app''|Laurence Lebihan|Laura|Callahan|France
Spécialités du monde|Dominique Perrier|Janet|Leverling|France
France restauration|Carine Schmitt|Andrew|Fuller|France
La corne d''abondance|Daniel Tonini|Margaret|Peacock|France
La corne d''abondance|Daniel Tonini|Michael|Suyama|France
Spécialités du monde|Dominique Perrier|Steven|Buchanan|France
La maison d''Asie|Annette Roulet|Robert|King|France
Bon app''|Laurence Lebihan|Margaret|Peacock|France

8. List the products by name that were shipped to Germany.
select p.productid, p.productname, o.shipcountry 
from products p join order_details od on p.productid = od.productid 
join orders o on od.orderid = o.orderid 
where o. shipcountry like 'Germany';

14|Tofu|Germany
51|Manjimup Dried Apples|Germany
41|Jack's New England Clam Chowder|Germany
57|Ravioli Angelo|Germany
62|Tarte au sucre|Germany
70|Outback Lager|Germany
40|Boston Crab Meat|Germany
59|Raclette Courdavault|Germany
76|Lakkalikööri|Germany
10|Ikura|Germany
31|Gorgonzola Telino|Germany
33|Geitost|Germany
40|Boston Crab Meat|Germany
76|Lakkalikööri|Germany
28|Rössle Sauerkraut|Germany
62|Tarte au sucre|Germany
17|Alice Mutton|Germany
27|Schoggi Schokolade|Germany
44|Gula Malacca|Germany
60|Camembert Pierrot|Germany
67|Laughing Lumberjack Lager|Germany
1|Chai|Germany
40|Boston Crab Meat|Germany
53|Perth Pasties|Germany
35|Steeleye Stout|Germany
62|Tarte au sucre|Germany
40|Boston Crab Meat|Germany
56|Gnocchi di nonna Alice|Germany
28|Rössle Sauerkraut|Germany
43|Ipoh Coffee|Germany
53|Perth Pasties|Germany
75|Rhönbräu Klosterbier|Germany
36|Inlagd Sill|Germany
15|Genen Shouyu|Germany
25|NuNuCa Nuß-Nougat-Creme|Germany
39|Chartreuse verte|Germany
6|Grandma's Boysenberry Spread|Germany
13|Konbu|Germany
14|Tofu|Germany
31|Gorgonzola Telino|Germany
72|Mozzarella di Giovanni|Germany
23|Tunnbröd|Germany
26|Gumbär Gummibärchen|Germany
36|Inlagd Sill|Germany
37|Gravad lax|Germany
72|Mozzarella di Giovanni|Germany
2|Chang|Germany
31|Gorgonzola Telino|Germany
36|Inlagd Sill|Germany
55|Pâté chinois|Germany
64|Wimmers gute Semmelknödel|Germany
68|Scottish Longbreads|Germany
76|Lakkalikööri|Germany
8|Northwoods Cranberry Sauce|Germany
19|Teatime Chocolate Biscuits|Germany
42|Singaporean Hokkien Fried Mee|Germany
1|Chai|Germany
23|Tunnbröd|Germany
31|Gorgonzola Telino|Germany
55|Pâté chinois|Germany
69|Gudbrandsdalsost|Germany
39|Chartreuse verte|Germany
60|Camembert Pierrot|Germany
31|Gorgonzola Telino|Germany
75|Rhönbräu Klosterbier|Germany
76|Lakkalikööri|Germany
13|Konbu|Germany
23|Tunnbröd|Germany
71|Flotemysost|Germany
72|Mozzarella di Giovanni|Germany
11|Queso Cabrales|Germany
69|Gudbrandsdalsost|Germany
71|Flotemysost|Germany
2|Chang|Germany
47|Zaanse koeken|Germany
61|Sirop d'érable|Germany
74|Longlife Tofu|Germany
19|Teatime Chocolate Biscuits|Germany
34|Sasquatch Ale|Germany
57|Ravioli Angelo|Germany
19|Teatime Chocolate Biscuits|Germany
24|Guaraná Fantástica|Germany
31|Gorgonzola Telino|Germany
52|Filo Mix|Germany
55|Pâté chinois|Germany
64|Wimmers gute Semmelknödel|Germany
65|Louisiana Fiery Hot Pepper Sauce|Germany
77|Original Frankfurter grüne Soße|Germany
21|Sir Rodney's Scones|Germany
49|Maxilaku|Germany
59|Raclette Courdavault|Germany
30|Nord-Ost Matjeshering|Germany
43|Ipoh Coffee|Germany
59|Raclette Courdavault|Germany
73|Röd Kaviar|Germany
56|Gnocchi di nonna Alice|Germany
72|Mozzarella di Giovanni|Germany
77|Original Frankfurter grüne Soße|Germany
54|Tourtière|Germany
25|NuNuCa Nuß-Nougat-Creme|Germany
70|Outback Lager|Germany
13|Konbu|Germany
39|Chartreuse verte|Germany
28|Rössle Sauerkraut|Germany
21|Sir Rodney's Scones|Germany
32|Mascarpone Fabioli|Germany
61|Sirop d'érable|Germany
9|Mishi Kobe Niku|Germany
16|Pavlova|Germany
27|Schoggi Schokolade|Germany
33|Geitost|Germany
60|Camembert Pierrot|Germany
1|Chai|Germany
8|Northwoods Cranberry Sauce|Germany
30|Nord-Ost Matjeshering|Germany
40|Boston Crab Meat|Germany
4|Chef Anton's Cajun Seasoning|Germany
36|Inlagd Sill|Germany
30|Nord-Ost Matjeshering|Germany
40|Boston Crab Meat|Germany
54|Tourtière|Germany
12|Queso Manchego La Pastora|Germany
31|Gorgonzola Telino|Germany
33|Geitost|Germany
60|Camembert Pierrot|Germany
3|Aniseed Syrup|Germany
26|Gumbär Gummibärchen|Germany
38|Côte de Blaye|Germany
68|Scottish Longbreads|Germany
11|Queso Cabrales|Germany
54|Tourtière|Germany
34|Sasquatch Ale|Germany
41|Jack's New England Clam Chowder|Germany
31|Gorgonzola Telino|Germany
45|Rogede sild|Germany
51|Manjimup Dried Apples|Germany
16|Pavlova|Germany
23|Tunnbröd|Germany
62|Tarte au sucre|Germany
77|Original Frankfurter grüne Soße|Germany
64|Wimmers gute Semmelknödel|Germany
75|Rhönbräu Klosterbier|Germany
30|Nord-Ost Matjeshering|Germany
62|Tarte au sucre|Germany
59|Raclette Courdavault|Germany
63|Vegie-spread|Germany
72|Mozzarella di Giovanni|Germany
76|Lakkalikööri|Germany
14|Tofu|Germany
41|Jack's New England Clam Chowder|Germany
65|Louisiana Fiery Hot Pepper Sauce|Germany
57|Ravioli Angelo|Germany
76|Lakkalikööri|Germany
18|Carnarvon Tigers|Germany
42|Singaporean Hokkien Fried Mee|Germany
15|Genen Shouyu|Germany
26|Gumbär Gummibärchen|Germany
20|Sir Rodney's Marmalade|Germany
69|Gudbrandsdalsost|Germany
76|Lakkalikööri|Germany
56|Gnocchi di nonna Alice|Germany
11|Queso Cabrales|Germany
21|Sir Rodney's Scones|Germany
39|Chartreuse verte|Germany
14|Tofu|Germany
19|Teatime Chocolate Biscuits|Germany
21|Sir Rodney's Scones|Germany
24|Guaraná Fantástica|Germany
35|Steeleye Stout|Germany
55|Pâté chinois|Germany
76|Lakkalikööri|Germany
2|Chang|Germany
33|Geitost|Germany
69|Gudbrandsdalsost|Germany
70|Outback Lager|Germany
28|Rössle Sauerkraut|Germany
39|Chartreuse verte|Germany
46|Spegesild|Germany
19|Teatime Chocolate Biscuits|Germany
22|Gustaf's Knäckebröd|Germany
16|Pavlova|Germany
60|Camembert Pierrot|Germany
21|Sir Rodney's Scones|Germany
40|Boston Crab Meat|Germany
60|Camembert Pierrot|Germany
77|Original Frankfurter grüne Soße|Germany
31|Gorgonzola Telino|Germany
55|Pâté chinois|Germany
64|Wimmers gute Semmelknödel|Germany
23|Tunnbröd|Germany
46|Spegesild|Germany
67|Laughing Lumberjack Lager|Germany
73|Röd Kaviar|Germany
75|Rhönbräu Klosterbier|Germany
14|Tofu|Germany
53|Perth Pasties|Germany
58|Escargots de Bourgogne|Germany
40|Boston Crab Meat|Germany
47|Zaanse koeken|Germany
60|Camembert Pierrot|Germany
1|Chai|Germany
29|Thüringer Rostbratwurst|Germany
43|Ipoh Coffee|Germany
44|Gula Malacca|Germany
62|Tarte au sucre|Germany
63|Vegie-spread|Germany
7|Uncle Bob's Organic Dried Pears|Germany
59|Raclette Courdavault|Germany
70|Outback Lager|Germany
47|Zaanse koeken|Germany
3|Aniseed Syrup|Germany
76|Lakkalikööri|Germany
21|Sir Rodney's Scones|Germany
54|Tourtière|Germany
69|Gudbrandsdalsost|Germany
12|Queso Manchego La Pastora|Germany
16|Pavlova|Germany
36|Inlagd Sill|Germany
62|Tarte au sucre|Germany
44|Gula Malacca|Germany
18|Carnarvon Tigers|Germany
44|Gula Malacca|Germany
59|Raclette Courdavault|Germany
72|Mozzarella di Giovanni|Germany
65|Louisiana Fiery Hot Pepper Sauce|Germany
2|Chang|Germany
7|Uncle Bob's Organic Dried Pears|Germany
68|Scottish Longbreads|Germany
29|Thüringer Rostbratwurst|Germany
59|Raclette Courdavault|Germany
16|Pavlova|Germany
62|Tarte au sucre|Germany
19|Teatime Chocolate Biscuits|Germany
75|Rhönbräu Klosterbier|Germany
29|Thüringer Rostbratwurst|Germany
41|Jack's New England Clam Chowder|Germany
11|Queso Cabrales|Germany
13|Konbu|Germany
24|Guaraná Fantástica|Germany
59|Raclette Courdavault|Germany
26|Gumbär Gummibärchen|Germany
38|Côte de Blaye|Germany
40|Boston Crab Meat|Germany
62|Tarte au sucre|Germany
26|Gumbär Gummibärchen|Germany
53|Perth Pasties|Germany
7|Uncle Bob's Organic Dried Pears|Germany
31|Gorgonzola Telino|Germany
53|Perth Pasties|Germany
59|Raclette Courdavault|Germany
77|Original Frankfurter grüne Soße|Germany
23|Tunnbröd|Germany
35|Steeleye Stout|Germany
42|Singaporean Hokkien Fried Mee|Germany
58|Escargots de Bourgogne|Germany
64|Wimmers gute Semmelknödel|Germany
3|Aniseed Syrup|Germany
26|Gumbär Gummibärchen|Germany
18|Carnarvon Tigers|Germany
24|Guaraná Fantástica|Germany
54|Tourtière|Germany
64|Wimmers gute Semmelknödel|Germany
11|Queso Cabrales|Germany
52|Filo Mix|Germany
38|Côte de Blaye|Germany
39|Chartreuse verte|Germany
20|Sir Rodney's Marmalade|Germany
30|Nord-Ost Matjeshering|Germany
8|Northwoods Cranberry Sauce|Germany
24|Guaraná Fantástica|Germany
29|Thüringer Rostbratwurst|Germany
30|Nord-Ost Matjeshering|Germany
36|Inlagd Sill|Germany
21|Sir Rodney's Scones|Germany
75|Rhönbräu Klosterbier|Germany
77|Original Frankfurter grüne Soße|Germany
6|Grandma's Boysenberry Spread|Germany
13|Konbu|Germany
43|Ipoh Coffee|Germany
60|Camembert Pierrot|Germany
71|Flotemysost|Germany
13|Konbu|Germany
31|Gorgonzola Telino|Germany
6|Grandma's Boysenberry Spread|Germany
28|Rössle Sauerkraut|Germany
21|Sir Rodney's Scones|Germany
47|Zaanse koeken|Germany
51|Manjimup Dried Apples|Germany
7|Uncle Bob's Organic Dried Pears|Germany
13|Konbu|Germany
53|Perth Pasties|Germany
69|Gudbrandsdalsost|Germany
76|Lakkalikööri|Germany
19|Teatime Chocolate Biscuits|Germany
49|Maxilaku|Germany
2|Chang|Germany
70|Outback Lager|Germany
76|Lakkalikööri|Germany
42|Singaporean Hokkien Fried Mee|Germany
41|Jack's New England Clam Chowder|Germany
51|Manjimup Dried Apples|Germany
77|Original Frankfurter grüne Soße|Germany
58|Escargots de Bourgogne|Germany
71|Flotemysost|Germany
19|Teatime Chocolate Biscuits|Germany
60|Camembert Pierrot|Germany
71|Flotemysost|Germany
10|Ikura|Germany
2|Chang|Germany
20|Sir Rodney's Marmalade|Germany
26|Gumbär Gummibärchen|Germany
51|Manjimup Dried Apples|Germany
72|Mozzarella di Giovanni|Germany
55|Pâté chinois|Germany
59|Raclette Courdavault|Germany
13|Konbu|Germany
59|Raclette Courdavault|Germany
12|Queso Manchego La Pastora|Germany
32|Mascarpone Fabioli|Germany
35|Steeleye Stout|Germany
21|Sir Rodney's Scones|Germany
60|Camembert Pierrot|Germany
61|Sirop d'érable|Germany
41|Jack's New England Clam Chowder|Germany
1|Chai|Germany
2|Chang|Germany
16|Pavlova|Germany
31|Gorgonzola Telino|Germany