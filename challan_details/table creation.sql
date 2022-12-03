create table challan_bill(usn_number number,customer_name varchar2(100),adhar_number number,amount number,bill_date date,payment_status varchar(1));

create or replace procedure challan_insert
(
pusn_number challan_bill.usn_number%type,
pname challan_bill.customer_name%type,
padhar_number  challan_bill.adhar_number%type,
pamount challan_bill.amount%type,
pbill_date challan_bill.bill_date%type,
ppayment_status challan_bill.payment_status%type
)
as
BEGIN
insert into challan_bill(usn_number,customer_name ,adhar_number,amount,bill_date ,payment_status)
values(pusn_number,pname ,padhar_number,pamount,pbill_date ,ppayment_status);
commit;
END;
/


EXEC challan_insert(1111,'sri',15123,2300,'11-OCT-2022','N');
EXEC challan_insert(2342,'harsha',65437,2000,'21-OCT-2022','Y');
EXEC challan_insert(5234,'kumar',45632,1000,'04-OCT-2022','Y');
EXEC challan_insert(2381,'Sai',65346,1030,'15-OCT-2022','N');
EXEC challan_insert(1331,'sri',15123,1500,'15-OCT-2022','N');


select * from challan_bill;
