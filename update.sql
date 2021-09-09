update IMPORT_IBAN set bank = substr(IBAN, 0, 13), account = substr(iban, 14, 9);
commit;
