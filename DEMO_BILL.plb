CREATE OR REPLACE PACKAGE BODY DEMO_BILL AS

-- demo1

  procedure de_bill_one(account in number, o_processed out number) AS
    l_processed char;
  BEGIN
        select processed into l_processed from demo_customer where id = account;
        if (l_processed = 'N') then
            update demo_customer set processed = 'Y' where id = account and status in ('A','D');
            commit;
            o_processed := 1;
        else
            o_processed := 0;
        end if;

        dbms_output.put_line('ala');
            
  END de_bill_one;

  procedure de_bill_all(processed out number) AS
    l_one_processed number;
  BEGIN
    processed := 0;
    for cust in (select id from demo_customer) loop
        de_bill_one(cust.id, l_one_processed);
        processed := processed + l_one_processed;
    end loop;

  END de_bill_all;

END DEMO_BILL;
/
