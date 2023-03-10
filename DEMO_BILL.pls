create or replace package demo_bill as 
-- d2o

procedure de_bill_one(account in number, o_processed out number);
procedure de_bill_all(processed out number);

end;
/

