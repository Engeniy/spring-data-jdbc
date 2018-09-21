DROP TABLE MANUAL;
DROP TABLE LEGO_SET;

CREATE TABLE LEGO_SET ( id SERIAL PRIMARY KEY, NAME VARCHAR(30));
CREATE TABLE MANUAL ( id SERIAL PRIMARY KEY, LEGO_SET BIGINT, ALTERNATIVE BIGINT, CONTENT VARCHAR(2000));

ALTER TABLE MANUAL ADD FOREIGN KEY (LEGO_SET)
REFERENCES LEGO_SET(id);

CREATE TABLE ONE_TO_ONE_PARENT ( id SERIAL PRIMARY KEY, content VARCHAR(30));
CREATE TABLE One_To_One_Child_No_Id (ONE_TO_ONE_PARENT INTEGER PRIMARY KEY, content VARCHAR(30));
