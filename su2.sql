drop table food
/
create table food(id number primary key, fname varchar(20), amm number)
/
insert into food values(1, '���', 30)
/
insert into food values(2, '���캺����', 50)
/
insert into food values(3, '����ġ', 60)
/
insert into food values(4, '�ݶ�', 40)
/

drop table owner
/
create table owner(owner_id varchar(20) primary key, email varchar(40), limit_value number)
/
insert into owner values('admin', 'ex@gmail.com', 20)
/