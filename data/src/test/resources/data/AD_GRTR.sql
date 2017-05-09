-- GUARANTOR 1
INSERT INTO AD_GRTR (ID, STUDENT_ID,  NAME, IDENTITY_NO, GUARANTOR_TYPE, C_TS, C_ID, M_ST)
VALUES
  (nextval('SQ_AD_GRTR'), (SELECT ID
                                FROM AD_ACTR A
                                WHERE A.IDENTITY_NO = 'A17P001'),
                                'AHMAD BAZUKI MUSLIM', '760302-12-0101', 0,  CURRENT_TIMESTAMP, 1, 1);

-- GUARANTOR 2
INSERT INTO AD_GRTR (ID, STUDENT_ID, NAME, IDENTITY_NO, GUARANTOR_TYPE, C_TS, C_ID, M_ST)
VALUES
  (nextval('SQ_AD_GRTR'), (SELECT ID
                                FROM AD_ACTR A
                                WHERE A.IDENTITY_NO = 'A17P001'),
                                'SITI SALHA', '840202-12-9999', 0,  CURRENT_TIMESTAMP, 1, 1);
