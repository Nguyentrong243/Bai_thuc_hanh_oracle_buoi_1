- bai 1
CREATE TABLE s_region (
    id NUMBER PRIMARY KEY,
    name VARCHAR2(50)
);
INSERT INTO s_region VALUES (1,'Vietnam');
INSERT INTO s_region VALUES (2,'Thailand');
INSERT INTO s_region VALUES (3,'Singapore');
INSERT INTO s_region VALUES (4,'Malaysia');
INSERT INTO s_region VALUES (5,'Indonesia');
INSERT INTO s_region VALUES (6,'Philippines');
INSERT INTO s_region VALUES (7,'Laos');
INSERT INTO s_region VALUES (8,'Cambodia');
INSERT INTO s_region VALUES (9,'Myanmar');
INSERT INTO s_region VALUES (10,'China');

INSERT INTO s_region VALUES (11,'Japan');
INSERT INTO s_region VALUES (12,'Korea');
INSERT INTO s_region VALUES (13,'India');
INSERT INTO s_region VALUES (14,'Australia');
INSERT INTO s_region VALUES (15,'USA');
INSERT INTO s_region VALUES (16,'Canada');
INSERT INTO s_region VALUES (17,'France');
INSERT INTO s_region VALUES (18,'Germany');
INSERT INTO s_region VALUES (19,'Italy');
INSERT INTO s_region VALUES (20,'Brazil');

COMMIT;
CREATE TABLE s_dept (
    id NUMBER PRIMARY KEY,
    name VARCHAR2(50),
    region_id NUMBER REFERENCES s_region(id)
);
INSERT INTO s_dept VALUES (10,'Sales',1);
INSERT INTO s_dept VALUES (20,'IT',1);
INSERT INTO s_dept VALUES (30,'HR',2);
INSERT INTO s_dept VALUES (40,'Finance',2);
INSERT INTO s_dept VALUES (50,'Logistics',3);

COMMIT;
CREATE TABLE s_title (
    title VARCHAR2(50) PRIMARY KEY
);
INSERT INTO s_title VALUES ('Manager');
INSERT INTO s_title VALUES ('Clerk');
INSERT INTO s_title VALUES ('Salesman');
INSERT INTO s_title VALUES ('Director');
INSERT INTO s_title VALUES ('Analyst');

COMMIT;
CREATE TABLE s_emp (
id NUMBER PRIMARY KEY,
last_name VARCHAR2(50),
first_name VARCHAR2(50),
userid VARCHAR2(20),
start_date DATE,
comments VARCHAR2(100),
manager_id NUMBER,
title VARCHAR2(50),
dept_id NUMBER,
salary NUMBER,
commission_pct NUMBER
);
INSERT INTO s_emp VALUES (1,'Nguyen','An','AN01',SYSDATE,'',NULL,'Manager',10,3000,NULL);
INSERT INTO s_emp VALUES (2,'Tran','Binh','BI02',SYSDATE,'',1,'Clerk',10,1500,NULL);
INSERT INTO s_emp VALUES (3,'Le','Cuong','CU03',SYSDATE,'',1,'Salesman',20,2000,0.1);
INSERT INTO s_emp VALUES (4,'Pham','Dung','DU04',SYSDATE,'',1,'Clerk',20,1200,NULL);
INSERT INTO s_emp VALUES (5,'Hoang','Em','EM05',SYSDATE,'',1,'Analyst',30,2500,NULL);
INSERT INTO s_emp VALUES (6,'Vo','Giang','GI06',SYSDATE,'',1,'Salesman',30,1800,0.2);
INSERT INTO s_emp VALUES (7,'Dang','Huy','HU07',SYSDATE,'',1,'Clerk',40,1100,NULL);
INSERT INTO s_emp VALUES (8,'Bui','Khanh','KH08',SYSDATE,'',1,'Manager',40,3500,NULL);
INSERT INTO s_emp VALUES (9,'Do','Lam','LA09',SYSDATE,'',8,'Salesman',50,2100,0.15);
INSERT INTO s_emp VALUES (10,'Ly','Minh','MI10',SYSDATE,'',8,'Clerk',50,1300,NULL);

COMMIT;
INSERT INTO s_emp VALUES (1,'Nguyen','An','AN01',SYSDATE,'',NULL,'Manager',10,3000,NULL);
INSERT INTO s_emp VALUES (2,'Tran','Binh','BI02',SYSDATE,'',1,'Clerk',10,1500,NULL);
INSERT INTO s_emp VALUES (3,'Le','Cuong','CU03',SYSDATE,'',1,'Salesman',20,2000,0.1);
INSERT INTO s_emp VALUES (4,'Pham','Dung','DU04',SYSDATE,'',1,'Clerk',20,1200,NULL);
INSERT INTO s_emp VALUES (5,'Hoang','Em','EM05',SYSDATE,'',1,'Analyst',30,2500,NULL);
INSERT INTO s_emp VALUES (6,'Vo','Giang','GI06',SYSDATE,'',1,'Salesman',30,1800,0.2);
INSERT INTO s_emp VALUES (7,'Dang','Huy','HU07',SYSDATE,'',1,'Clerk',40,1100,NULL);
INSERT INTO s_emp VALUES (8,'Bui','Khanh','KH08',SYSDATE,'',1,'Manager',40,3500,NULL);
INSERT INTO s_emp VALUES (9,'Do','Lam','LA09',SYSDATE,'',8,'Salesman',50,2100,0.15);
INSERT INTO s_emp VALUES (10,'Ly','Minh','MI10',SYSDATE,'',8,'Clerk',50,1300,NULL);

COMMIT;CREATE TABLE s_customer (
id NUMBER PRIMARY KEY,
name VARCHAR2(50),
phone VARCHAR2(20),
address VARCHAR2(100),
city VARCHAR2(50),
state VARCHAR2(50),
country VARCHAR2(50),
zip_code VARCHAR2(10),
credit_rating VARCHAR2(10),
sales_rep_id NUMBER,
region_id NUMBER,
comments VARCHAR2(100)
);
INSERT INTO s_customer VALUES (1,'ABC Corp','0901','HCM','HCM','', 'VN','70000','GOOD',3,1,'');
INSERT INTO s_customer VALUES (2,'XYZ Ltd','0902','HN','HN','', 'VN','10000','GOOD',3,1,'');
INSERT INTO s_customer VALUES (3,'AAA Store','0903','DN','DN','', 'VN','50000','OK',6,2,'');
INSERT INTO s_customer VALUES (4,'BBB Shop','0904','CT','CT','', 'VN','90000','OK',6,2,'');
INSERT INTO s_customer VALUES (5,'CCC Market','0905','HP','HP','', 'VN','30000','GOOD',9,3,'');

COMMIT;
CREATE TABLE s_product (
id NUMBER PRIMARY KEY,
name VARCHAR2(50),
short_desc VARCHAR2(100),
suggested_whlsl_price NUMBER
);
INSERT INTO s_product VALUES (1,'Laptop','Dell Laptop',1000);
INSERT INTO s_product VALUES (2,'Mouse','Wireless Mouse',20);
INSERT INTO s_product VALUES (3,'Keyboard','Mechanical Keyboard',50);
INSERT INTO s_product VALUES (4,'Monitor','24 inch Monitor',200);
INSERT INTO s_product VALUES (5,'Printer','Laser Printer',150);

COMMIT;
CREATE TABLE s_ord (
id NUMBER PRIMARY KEY,
customer_id NUMBER,
date_ordered DATE,
total NUMBER
);
INSERT INTO s_ord VALUES (101,1,SYSDATE,2000);
INSERT INTO s_ord VALUES (102,2,SYSDATE,500);
INSERT INTO s_ord VALUES (103,3,SYSDATE,300);
INSERT INTO s_ord VALUES (104,4,SYSDATE,1500);
INSERT INTO s_ord VALUES (105,5,SYSDATE,700);

COMMIT;
CREATE TABLE s_item (
ord_id NUMBER,
item_id NUMBER,
product_id NUMBER,
price NUMBER,
quantity NUMBER,
PRIMARY KEY(ord_id,item_id)
);
INSERT INTO s_item VALUES (101,1,1,1000,2);
INSERT INTO s_item VALUES (102,1,2,20,10);
INSERT INTO s_item VALUES (103,1,3,50,6);
INSERT INTO s_item VALUES (104,1,4,200,5);
INSERT INTO s_item VALUES (105,1,5,150,4);

COMMIT;
CREATE TABLE s_inventory (
product_id NUMBER,
warehouse_id NUMBER,
amount_in_stock NUMBER,
PRIMARY KEY(product_id,warehouse_id)
);
INSERT INTO s_inventory VALUES (1,1,100);
INSERT INTO s_inventory VALUES (2,1,200);
INSERT INTO s_inventory VALUES (3,1,150);
INSERT INTO s_inventory VALUES (4,1,80);
INSERT INTO s_inventory VALUES (5,1,60);

COMMIT;
-- bai 2
SELECT name AS "Ten khach hang",
       id AS "Ma khach hang"
FROM s_customer
ORDER BY id DESC;
SELECT first_name || ' ' || last_name AS "Employees",
       dept_id
FROM s_emp
WHERE dept_id IN (10,50)
ORDER BY first_name;
SELECT first_name, last_name
FROM s_emp
WHERE UPPER(first_name) LIKE '%S%'
   OR UPPER(last_name) LIKE '%S%';
   SELECT first_name, last_name
FROM s_emp
WHERE UPPER(first_name) LIKE '%S%'
   OR UPPER(last_name) LIKE '%S%';SELECT userid, start_date
FROM s_emp
WHERE start_date BETWEEN 
      TO_DATE('14/05/1990','DD/MM/YYYY')
  AND TO_DATE('26/05/1991','DD/MM/YYYY');
  SELECT last_name, salary
FROM s_emp
WHERE salary BETWEEN 1000 AND 2000;
SELECT last_name || ' ' || first_name AS "Employee Name",
       salary AS "Monthly Salary"
FROM s_emp
WHERE dept_id IN (31,42,50)
AND salary > 1350;
SELECT last_name, start_date
FROM s_emp
WHERE TO_CHAR(start_date,'YYYY') = '1991';
SELECT last_name, start_date
FROM s_emp
WHERE start_date BETWEEN 
TO_DATE('01/01/1991','DD/MM/YYYY')
AND TO_DATE('31/12/1991','DD/MM/YYYY');SELECT last_name, first_name
FROM s_emp
WHERE id NOT IN (
    SELECT manager_id
    FROM s_emp
    WHERE manager_id IS NOT NULL
);
SELECT name
FROM s_product
WHERE name LIKE 'Pro%'
ORDER BY name;
SELECT name, short_desc
FROM s_product
WHERE LOWER(short_desc) LIKE '%bicycle%';
SELECT short_desc
FROM s_product;

-- bai 3
-- 1
SELECT first_name || ' ' || last_name || 
       ' (' || title || ')' AS "Nhan vien"
FROM s_emp;
-- 2
SELECT first_name || ' ' || last_name,
       TO_CHAR(
       NEXT_DAY(ADD_MONTHS(start_date,6),'MONDAY'),
       'fmDdspth "of" Month YYYY'
       ) AS review_date
FROM s_emp;
-- 3
INSERT INTO s_product (id, name, short_desc)
VALUES (20,'Ski Boots','Boots for ski');

INSERT INTO s_product (id, name, short_desc)
VALUES (21,'Water Ski','Water ski equipment');

INSERT INTO s_product (id, name, short_desc)
VALUES (22,'Ski Jacket','Jacket for skiing');

INSERT INTO s_product (id, name, short_desc)
VALUES (23,'Ski Helmet','Helmet for ski');

COMMIT;
SELECT name
FROM s_product
WHERE LOWER(name) LIKE '%ski%';
-- 4
SELECT first_name || ' ' || last_name AS name,
       ROUND(MONTHS_BETWEEN(SYSDATE,start_date)) AS months_worked
FROM s_emp
ORDER BY months_worked;
-- 5
SELECT COUNT(DISTINCT manager_id) AS "So nguoi quan ly"
FROM s_emp
WHERE manager_id IS NOT NULL;
-- 6
SELECT MAX(total) AS Highest,
       MIN(total) AS Lowest
FROM s_ord;
-- bai 4
-- 1
SELECT p.name,
       p.id,
       i.quantity AS ORDERED
FROM s_product p, s_item i
WHERE p.id = i.product_id
AND i.ord_id = 101;
-- 2
SELECT c.id AS customer_id,
       o.id AS order_id
FROM s_customer c
LEFT JOIN s_ord o
ON c.id = o.customer_id
ORDER BY c.id;
-- 3
INSERT INTO s_ord (id,customer_id,total)
VALUES (101,1,200000);

INSERT INTO s_item (ord_id,item_id,product_id,quantity)
VALUES (101,1,20,2);

COMMIT;
SELECT o.customer_id,
       i.product_id,
       i.quantity
FROM s_ord o, s_item i
WHERE o.id = i.ord_id
AND o.total > 100000;
-- bai 5
-- 1
INSERT INTO s_ord (id,customer_id,total)
VALUES (101,1,200000);

INSERT INTO s_item (ord_id,item_id,product_id,quantity)
VALUES (101,1,20,2);

COMMIT;
-- 2
SELECT manager_id,
       COUNT(*) AS so_nhan_vien
FROM s_emp
GROUP BY manager_id
HAVING COUNT(*) >= 20;
-- 3
SELECT r.id,
       r.name,
       COUNT(d.id) AS so_phong_ban
FROM s_region r, s_dept d
WHERE r.id = d.region_id
GROUP BY r.id, r.name;
-- 4
SELECT c.name,
       COUNT(o.id) AS so_don_hang
FROM s_customer c, s_ord o
WHERE c.id = o.customer_id
GROUP BY c.name;
-- 5
SELECT c.name,
       COUNT(o.id) AS so_don_hang
FROM s_customer c, s_ord o
WHERE c.id = o.customer_id
GROUP BY c.name;
-- 6
SELECT c.name,
       COUNT(o.id) AS so_don
FROM s_customer c, s_ord o
WHERE c.id = o.customer_id
GROUP BY c.name
HAVING COUNT(o.id) = (
    SELECT MAX(COUNT(*))
    FROM s_ord
    GROUP BY customer_id
);
bai 6
-- 1
INSERT INTO s_emp 
VALUES (100,'Nguyen','Lan','LAN100',DATE '1992-02-01','Nhan vien',1,'Clerk',10,1500,NULL);

INSERT INTO s_emp 
VALUES (101,'Tran','Binh','BIN101',DATE '1992-03-01','Nhan vien',1,'Clerk',10,1400,NULL);

INSERT INTO s_emp 
VALUES (102,'Le','Huy','HUY102',DATE '1992-04-01','Nhan vien',1,'Clerk',10,1600,NULL);

COMMIT;
SELECT last_name, first_name, start_date
FROM s_emp
WHERE dept_id = (
    SELECT dept_id
    FROM s_emp
    WHERE first_name = 'Lan'
);
-- 2
SELECT id, last_name, first_name, userid
FROM s_emp
WHERE salary > (
    SELECT AVG(salary)
    FROM s_emp
);
-- 3
SELECT id, last_name, first_name
FROM s_emp
WHERE salary > (
    SELECT AVG(salary)
    FROM s_emp
)
AND (first_name LIKE '%L%' OR last_name LIKE '%L%');
-- 4
SELECT *
FROM s_customer c
WHERE c.id NOT IN (
    SELECT customer_id
    FROM s_ord
);


