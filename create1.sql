set echo on

drop table import_iban;

create table import_iban ( iban varchar2(1000), bank varchar2(100), account number);


create unique index import_iban_i1 on import_iban(iban);
