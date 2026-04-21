SELECT * FROM mdc_ch02.CUSTOMER;

SELECT * FROM mdc_ch02.INVOICE_ITEM;

SELECT * FROM mdc_ch02.INVOICE;

 
select LastName,FirstName,Phone
from CUSTOMER;

select LastName,FirstName,Phone
from CUSTOMER
where FirstName = 'Nikki';

select LastName, FirstName, Phone, DateIn, DateOut
from CUSTOMER,INVOICE
where TotalAmount > 100;

select LastName,FirstName,Phone
from CUSTOMER
where FirstName like'B%';

select LastName,FirstName,Phone
from CUSTOMER
where LastName like '%cat%';

select LastName,FirstName,Phone
from CUSTOMER
where Phone like '_23%';


SELECT 
    MAX(TotalAmount) AS MaxTotalAmount,
    MIN(TotalAmount) AS MinTotalAmount
FROM INVOICE;


SELECT AVG(TotalAmount) AS AverageAmount
FROM INVOICE;


SELECT COUNT(*) AS TotalCustomers
FROM CUSTOMER;

SELECT LastName, FirstName
FROM CUSTOMER
GROUP BY LastName, FirstName;


SELECT 
    LastName,
    FirstName,
    COUNT(*) AS NumberOfCustomers
FROM CUSTOMER
GROUP BY LastName, FirstName;


SELECT LastName, FirstName, Phone
FROM CUSTOMER
WHERE CustomerID IN (
    SELECT CustomerID
    FROM INVOICE
    WHERE TotalAmount > 100.00
)
ORDER BY LastName ASC, FirstName DESC;
