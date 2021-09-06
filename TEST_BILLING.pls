create or replace package test_billing as

  -- %suite(Test billing)
  -- %rollback(manual)
  
  -- %test(Check billing for all customers)
  -- %rollback(manual)
  procedure bill_all;
  
  

end;
/
