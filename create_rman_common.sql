CREATE USER rman_common IDENTIFIED BY rman_common
DEFAULT TABLESPACE "USERS"
TEMPORARY TABLESPACE "TEMP"
ACCOUNT UNLOCK ;

grant create session, unlimited tablespace, create view to rman_common identified by rman_common;