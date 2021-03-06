--TABLE
ALTER SESSION SET current_schema = HR;
CREATE TABLE EMISOR 
   (    
    ID NUMBER, 
    EVENTO VARCHAR2(100 BYTE) DEFAULT NULL,
    FECHA DATE DEFAULT NULL
   ) ;
  

--INDEX
CREATE UNIQUE INDEX SYS_C006988 ON EMISOR (ID);
ALTER TABLE EMISOR ADD PRIMARY KEY (ID) ENABLE;
ALTER TABLE EMISOR MODIFY (ID NOT NULL ENABLE);

--SEQUENCE
CREATE SEQUENCE  EMISOR_SEQ  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE ;

-- TRIGGERS 
create or replace TRIGGER EMISOR_TRG 
BEFORE INSERT ON EMISOR 
FOR EACH ROW 
BEGIN
<<COLUMN_SEQUENCES>>
BEGIN
IF INSERTING THEN
SELECT EMISOR_SEQ.NEXTVAL INTO :NEW.ID FROM SYS.DUAL;
END IF;
END COLUMN_SEQUENCES;
END;

CREATE OR REPLACE TRIGGER EMISOR_DATE_TRG
BEFORE INSERT ON EMISOR
FOR EACH ROW
BEGIN
    :NEW.FECHA := SYSDATE;
END;