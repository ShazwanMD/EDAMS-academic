INSERT INTO AD_SCTN (ID, OFFERING_ID, SESSION_ID, CODE, CANONICAL_CODE, ORDINAL, CAPACITY, C_ID, C_TS, M_ST)
VALUES (nextval('SQ_AD_SCTN'),
        (SELECT ID
         FROM AD_OFRG
         WHERE CANONICAL_CODE = 'FIAT/MASTER/PBH/GST5023'),
        (SELECT ID
         FROM AD_ACDM_SESN
         WHERE CODE = '201720181'),
        (SELECT CODE
         FROM AD_OFRG
         WHERE CANONICAL_CODE = 'FIAT/MASTER/PBH/GST5023'),
        (SELECT O.CANONICAL_CODE || '/' || A.CODE
         FROM AD_OFRG O, AD_ACDM_SESN A
         WHERE O.CANONICAL_CODE = 'FIAT/MASTER/PBH/GST5023' AND A.CODE = '201720181'),
        1,
        10,
        1, CURRENT_TIMESTAMP, 1
);
