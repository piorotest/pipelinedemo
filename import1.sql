set echo off
insert into import_iban(iban) values ( 'PL78100000ABC100000001' ); 
insert into import_iban(iban) values ( 'PL78100000ABC100000002' ); 
insert into import_iban(iban) values ( 'PL78100000ABC100000003' ); 
insert into import_iban(iban) values ( 'PL78100000ABC100000004' ); 
insert into import_iban(iban) values ( 'PL78100000ABC100000005' ); 
insert into import_iban(iban) values ( 'PL78100000ABC100000001' || chr(8) || '6' ); 
commit;
set echo on
