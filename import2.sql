set echo off
insert into import_iban(iban) values ( 'PL78100000ABC100000003' || chr(8) || '6' );
commit;
