use Northwind

select * from Categories
-- Meat/Poultry, Produce, Seafood ürün kategorilerinin en cok satildigi sehirler
select

sum(OD.Quantity) Quantities,
C.City,
Cat.CategoryName

from Customers C
inner join Orders O on C.CustomerID = O.CustomerID

inner join [Order Details] OD on O.OrderID = OD.OrderID

inner join Products P on OD.ProductID = P.ProductID

inner join Categories Cat on P.CategoryID = Cat.CategoryID

where 
Cat.CategoryName = 'Meat/Poultry' or Cat.CategoryName = 'Produce' or Cat.CategoryName = 'Seafood'

group by
C.City,
Cat.CategoryName

Order by
Quantities DESC