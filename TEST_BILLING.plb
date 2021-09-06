CREATE OR REPLACE
PACKAGE BODY TEST_BILLING AS

  procedure bill_all AS
    l_customers number;
    l_processed number;
  BEGIN
    select count(*) into l_customers from demo_customer;
    demo_bill.de_bill_all(l_processed);
    ut.expect( l_processed ).to_equal(l_customers);
  END bill_all;

END TEST_BILLING;
/
