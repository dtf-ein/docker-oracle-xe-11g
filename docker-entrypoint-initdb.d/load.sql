/* Exit immediately on error: prevents reload of data if SQL is run against an intialized DB */
WHENEVER SQLERROR EXIT SQL.SQLCODE

/* Create tables and data */
CREATE TABLESPACE demo DATAFILE 'demo.dbf' SIZE 40M ONLINE;

CREATE TABLE hr.person (
    id         NUMBER(5) PRIMARY KEY,
    first_name VARCHAR2(30) NOT NULL,
    last_name  VARCHAR2(30) NOT NULL
  )
  TABLESPACE demo
  STORAGE (INITIAL 50K);

INSERT INTO hr.person VALUES(1, 'Jane', 'Doe');
INSERT INTO hr.person VALUES(2, 'Hunter', 'Thompson');
