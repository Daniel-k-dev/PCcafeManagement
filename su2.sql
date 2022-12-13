drop table user_data;
/
create table user_data (
user_id varchar(20) primary key,
user_password varchar(20),
user_name varchar(20),
left_time number ,
phonenumber varchar(20)
);
/
insert into user_data values('woo29864', 'leewm96491','�̿��', 500000, '010-1234-
1234');
/
insert into user_data values('blablabla1', 'g0vh89','������', 0, '010-1234-1234');
/
insert into user_data values('blablabla2', 'qwfhui','ȫ��', 30000, '010-1234-1286');
/
insert into user_data values('blablabla3', 'qwghiiopqw','������', 30, '010-1234-
1902');
/
drop table seat;
/
create table seat (
seat_id number primary key,
user_id varchar(20),
is_on char(1)
);
/
insert into seat values(1, 'woo29864', '1');
/
insert into seat values(2, null , 0);
/
insert into seat values(3, 'blablabla2', '1');
/
insert into seat values(4, 'blablabla3', '1');
/
drop table foods;
/
create table foods(id number primary key, foodname varchar(20),foodcategory varchar(10) ,foodvalue varchar(20), img varchar(100), quntity varchar(20));
/
insert into foods (id , foodname , foodcategory , foodvalue , img , quntity) values(1, '¥����' , 'A' , '2500' , 'C:\pcroom\jja.jpg' , '100' );
/
insert into foods (id , foodname , foodcategory , foodvalue , img , quntity) values(2, '�Ŷ��' ,    'A' , '2000' , 'C:\pcroom\sin.jpg' ,       '100' );
/
insert into foods (id , foodname , foodcategory , foodvalue , img , quntity) values(3, '���' ,       'B' , '3000' , 'C:\pcroom\kimbab.png' , '100' );
/
insert into foods (id , foodname , foodcategory , foodvalue , img , quntity) values(4, '������' ,    'B' , '3500' , 'C:\pcroom\dduck.png' ,   '100' );
/
insert into foods (id , foodname , foodcategory , foodvalue , img , quntity) values(5, '�Ҵߺ�����' , 'A' , '3000' , 'C:\pcroom\buldak.jfif' , '100' );
/
insert into foods (id , foodname , foodcategory , foodvalue , img , quntity) values(6, '�������' , 'A' , '2800' , 'C:\pcroom\cham.jfif' , '100' );
/
insert into foods (id , foodname , foodcategory , foodvalue , img , quntity) values(7, '����������' , 'C' , '5000' , 'C:\pcroom\nakji.jpg' , '100' );
/
insert into foods (id , foodname , foodcategory , foodvalue , img , quntity) values(8, '����������' , 'C' , '5500' , 'C:\pcroom\jaeyuk.jfif' , '100' );
/
insert into foods (id , foodname , foodcategory , foodvalue , img , quntity) values(9, '¥���' , 'C' , '5000' , 'C:\pcroom\jjajangbab.jfif' , '100' );
/
insert into foods (id , foodname , foodcategory , foodvalue , img , quntity) values(10, 'ĥ�����̴�' , 'E' , '1300' , 'C:\pcroom\chilsung.jpg' , '100' );
/
insert into foods (id , foodname , foodcategory , foodvalue , img , quntity) values(11, '�갳��' , 'E' , '1700' , 'C:\pcroom\hut.jpg' , '100' );
/
insert into foods (id , foodname , foodcategory , foodvalue , img , quntity) values(12, '��Ű��' , 'E' , '1300' , 'C:\pcroom\milkis.jpg' , '100' );
/
insert into foods (id , foodname , foodcategory , foodvalue , img , quntity) values(13, '��¡��Ĩ' , 'D' , '1500' , 'C:\pcroom\ojingachip.jfif' , '100' );
/
insert into foods (id , foodname , foodcategory , foodvalue , img , quntity) values(14, '��īĨ' , 'D' , '1500' , 'C:\pcroom\pocachip.jfif' , '100' );
/
insert into foods (id , foodname , foodcategory , foodvalue , img , quntity) values(15, '���� (6��)' , 'B' , '2500' , 'C:\pcroom\mando.jfif' , '100' );
/
insert into foods (id , foodname , foodcategory , foodvalue , img , quntity) values(16, 'ġ��ҽ���' , 'F' , '2000' , 'C:\pcroom\sosiji.jpg' , '100' );
/
insert into foods (id , foodname , foodcategory , foodvalue , img , quntity) values(17, '¥����' , 'A' , '2500' , 'C:\pcroom\' , '100' );
/
insert into foods (id , foodname , foodcategory , foodvalue , img , quntity) values(18, '¥����' , 'A' , '2500' , 'C:\pcroom\jja.jpg' , '100' );
/

drop table owner;
/
create table owner (
owner_id varchar(20) primary key,
email varchar(40),
limit_value number
);
/
insert into owner values('oqwfhhpiow' , 'qwhuf@gamil.com' , 20);
/
insert into owner values('wipqe' , 'aweg2@gamil.com' , 20);
/
insert into owner values('jp3i2j' , 'asef2@gamil.com' , 20);
/
drop table orderlist;
/
create table orderlist (
orderlist_id number,
ordernumber number,
menu_id number,
orderdate varchar(20),
order_quantity number,
message varchar(500),
seat_id number,
CONSTRAINT orderlist_pk PRIMARY KEY(orderlist_id, ordernumber)
);
/
insert into orderlist values(1, 1, 1, '2022-12-13', 1, 'sadf', 1);
/
insert into orderlist values(1, 2, 3, '2022-12-12', 1, 'wer', 4);
/
insert into orderlist values(2, 3, 4, '2022-12-11', 1, 'sgs', 5);
/
drop table request;
/
create table request ( ordernumber number primary key, seat_id number);
/
insert into request values(1, 1);
/
insert into request values(5, 2);