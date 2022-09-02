CREATE TABLE A
(
  unique_Q    VARCHAR(200) NOT NULL COMMENT 'unique_Q',
  unique_A    VARCHAR(200) NOT NULL COMMENT 'unique_A',
  unique_Name VARCHAR(200) NOT NULL COMMENT 'unique_Name'
);
 
CREATE TABLE NAME
(
  NAME        VARCHAR(200) NOT NULL COMMENT 'NAME',
  unique_Name VARCHAR(200) NOT NULL COMMENT 'unique_Name',
  PRIMARY KEY (unique_Name)
) COMMENT 'unique';

CREATE TABLE unique_A
(
  unique_A VARCHAR(200) NOT NULL COMMENT 'unique_A',
  ANS      VARCHAR(200) NULL     COMMENT 'ANS',
  PRIMARY KEY (unique_A)
);

CREATE TABLE unique_Q
(
  unique_Q VARCHAR(200) NOT NULL COMMENT 'unique_Q',
  Q        VARCHAR(200) NULL     COMMENT 'Q',
  PRIMARY KEY (unique_Q)
) COMMENT 'unique';

ALTER TABLE A
  ADD CONSTRAINT FK_unique_A_TO_A
    FOREIGN KEY (unique_Q)
    REFERENCES unique_A (unique_A);

ALTER TABLE A
  ADD CONSTRAINT FK_unique_Q_TO_A
    FOREIGN KEY (unique_A)
    REFERENCES unique_Q (unique_Q);

ALTER TABLE A
  ADD CONSTRAINT FK_NAME_TO_A
    FOREIGN KEY (unique_Name)
    REFERENCES NAME (unique_Name);
