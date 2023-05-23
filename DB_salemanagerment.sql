insert into Customer(cName,cAge) values('Minh Quan',10);
insert into Customer(cName,cAge) values('Ngoc Oanh',20);
insert into Customer(cName,cAge) values('Hong Ha',50);
insert into Orderr(cID,oDate) values(1,'2006/3/21');
insert into Orderr(cID,oDate) values(2,'2006/3/23');
insert into Orderr(cID,oDate) values(1,'2006/3/16');
insert into Product(pName,pPrice) values('May giat',3);
insert into Product(pName,pPrice) values('Tu Lanh',5);
insert into Product(pName,pPrice) values('Dieu Hoa',7);
insert into Product(pName,pPrice) values('Quat',1);
insert into Product(pName,pPrice) values('Bep Dien',2);
insert into OrderDetail(oID,pID,odQTY) values(1,1,3);
insert into OrderDetail(oID,pID,odQTY) values(1,3,7);
insert into OrderDetail(oID,pID,odQTY) values(1,4,2);
insert into OrderDetail(oID,pID,odQTY) values(2,1,1);
insert into OrderDetail(oID,pID,odQTY) values(3,1,8);
insert into OrderDetail(oID,pID,odQTY) values(2,5,4);
insert into OrderDetail(oID,pID,odQTY) values(2,3,3);
select*from Orderr;
select Customer.cName,Product.pName 
from Customer 
join Orderr
on Customer.cID=Orderr.cID
join OrderDetail
on Orderr.oID=OrderDetail.oID
join Product 
on OrderDetail.pID=Product.pID;

select Customer.cName ,Orderr.cID
from Customer 
left join Orderr 
on Customer.cID=Orderr.cID
where Orderr.cID  is null;

select OrderDetail.oID,Orderr.oDate,sum(OrderDetail.odQTY*Product.pPrice)
from OrderDetail
join Orderr
on OrderDetail.oID = Orderr.oID
join Product
on OrderDetail.pID=Product.pID
group by OrderDetail.oID,Orderr.oDate;

