use assignment_8;
1)iii)
select * from author1 where author1_id in (select author_id from catalogue1 where year>2000 and price>(select avg(price) from catalogue1) group by author1_id having count(*)>1;
iv)
select author1_name from author1 a.catalogue1 e where a.author1_id=e.author1_id and book_id in (select book_id from order details 1 where quantity=(select max(quantity) from order details1);
v)
update catalogue1 set price=1.1* price where publisher1_id in (select publisher1_id from publisher1 where publisher1_name='person');
2)iii)
select customer_name from depositor where acc_no from account branch_name='main') group by acc_no having count(acceno)>2;
iv)
select customer_name from customer where acc_no in  (select acc_no from account where branch_name in (select branch_name from branch where branch_city like 'Bangalore'));
v)
Delete acc_no from account where branch_name in (select branch_name,branch_city from branch where branch_city like 'Bangalore' group by branch_city);
3)iii)
select c.custno, count(*) as no-of_orders,avg(o,ord_amt) as avg_order_amount from customer c, order1 o where o.customer=c.custno group by c.custno;
iv)
select s.orderno from shipment s, warehouse w where s.warehouse=w.warehouse and w.city='Bangalore' group by orderno having count(*) and not count(*)=0;
v)
delete from item where itemno=3;