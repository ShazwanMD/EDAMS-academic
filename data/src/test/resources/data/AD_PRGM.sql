INSERT INTO AD_PRGM (ID, CODE,STATUS, TITLE_EN, TITLE_MS, LEVEL_ID, FACULTY_ID, C_TS, C_ID, M_ST)    VALUES (nextval('SQ_AD_PRGM'),    'PBT',
0,
   'Doctor of Philosophy Bio-Industrial Technology',
   'Doctor of Philosophy Bio-Industrial Technology',
   (SELECT ID
    FROM AD_PRGM_LEVL PL
    WHERE PL.CODE = 'PHD'),
   (SELECT ID
    FROM AD_FCTY F
    WHERE F.NAME = 'FIAT'), CURRENT_TIMESTAMP, 0, 1);
INSERT INTO AD_PRGM (ID, CODE,STATUS, TITLE_EN, TITLE_MS, LEVEL_ID, FACULTY_ID, C_TS, C_ID, M_ST)    VALUES (nextval('SQ_AD_PRGM'),    'PBS',
0,
   'Doctor of Philosophy Agro Technopreneurship',
   'Doctor of Philosophy Agro Technopreneurship',
   (SELECT ID
    FROM AD_PRGM_LEVL PL
    WHERE PL.CODE = 'PHD'),
   (SELECT ID
    FROM AD_FCTY F
    WHERE F.NAME = 'FIAT'), CURRENT_TIMESTAMP, 0, 1);
INSERT INTO AD_PRGM (ID, CODE, STATUS, TITLE_EN, TITLE_MS, LEVEL_ID, FACULTY_ID, C_TS, C_ID, M_ST)    VALUES (nextval('SQ_AD_PRGM'),    'PBB',
0,
   'Doctor of Philosophy Agriculture Biotechnology',
   'Doctor of Philosophy Agriculture Biotechnology',
   (SELECT ID
    FROM AD_PRGM_LEVL PL
    WHERE PL.CODE = 'PHD'),
   (SELECT ID
    FROM AD_FCTY F
    WHERE F.NAME = 'FIAT'), CURRENT_TIMESTAMP, 0, 1);
INSERT INTO AD_PRGM (ID, CODE, STATUS, TITLE_EN, TITLE_MS, LEVEL_ID, FACULTY_ID, C_TS, C_ID, M_ST)    VALUES (nextval('SQ_AD_PRGM'),    'PBP',
0,
   'Doctor of Philosophy Product Development Technology',
   'Doctor of Philosophy Product Development Technology',
   (SELECT ID
    FROM AD_PRGM_LEVL PL
    WHERE PL.CODE = 'PHD'),
   (SELECT ID
    FROM AD_FCTY F
    WHERE F.NAME = 'FIAT'), CURRENT_TIMESTAMP, 0, 1);
INSERT INTO AD_PRGM (ID, CODE, STATUS, TITLE_EN, TITLE_MS, LEVEL_ID, FACULTY_ID, C_TS, C_ID, M_ST)    VALUES (nextval('SQ_AD_PRGM'),    'PBH',
0,
   'Doctor of Philosophy Animal Husbandary',
   'Doctor of Philosophy Animal Husbandary',
   (SELECT ID
    FROM AD_PRGM_LEVL PL
    WHERE PL.CODE = 'PHD'),
   (SELECT ID
    FROM AD_FCTY F
    WHERE F.NAME = 'FIAT'), CURRENT_TIMESTAMP, 0, 1);
INSERT INTO AD_PRGM (ID, CODE, STATUS, TITLE_EN, TITLE_MS, LEVEL_ID, FACULTY_ID, C_TS, C_ID, M_ST)    VALUES (nextval('SQ_AD_PRGM'),    'PBA',
0,
   'Doctor of Philosophy Akuakultur',
   'Doctor of Philosophy Akuakultur',
   (SELECT ID
    FROM AD_PRGM_LEVL PL
    WHERE PL.CODE = 'PHD'),
   (SELECT ID
    FROM AD_FCTY F
    WHERE F.NAME = 'FIAT'), CURRENT_TIMESTAMP, 0, 1);
INSERT INTO AD_PRGM (ID, CODE, STATUS, TITLE_EN, TITLE_MS, LEVEL_ID, FACULTY_ID, C_TS, C_ID, M_ST)    VALUES (nextval('SQ_AD_PRGM'),    'MBT',
0,
   'Master of Science Bio-Industrial Technology',
   'Master of Science Bio-Industrial Technology',
   (SELECT ID
    FROM AD_PRGM_LEVL PL
    WHERE PL.CODE = 'MASTER'),
   (SELECT ID
    FROM AD_FCTY F
    WHERE F.NAME = 'FIAT'), CURRENT_TIMESTAMP, 0, 1);
INSERT INTO AD_PRGM (ID, CODE, STATUS, TITLE_EN, TITLE_MS, LEVEL_ID, FACULTY_ID, C_TS, C_ID, M_ST)    VALUES (nextval('SQ_AD_PRGM'),    'MBS',
0,
   'Master of Science Agro Technopreneurship',
   'Master of Science Agro Technopreneurship',
   (SELECT ID
    FROM AD_PRGM_LEVL PL
    WHERE PL.CODE = 'MASTER'),
   (SELECT ID
    FROM AD_FCTY F
    WHERE F.NAME = 'FIAT'), CURRENT_TIMESTAMP, 0, 1);
INSERT INTO AD_PRGM (ID, CODE,  STATUS, TITLE_EN, TITLE_MS, LEVEL_ID, FACULTY_ID, C_TS, C_ID, M_ST)    VALUES (nextval('SQ_AD_PRGM'),    'MBB',
0,
   'Master of Science Agriculture Biotechnology',
   'Master of Science Agriculture Biotechnology',
   (SELECT ID
    FROM AD_PRGM_LEVL PL
    WHERE PL.CODE = 'MASTER'),
   (SELECT ID
    FROM AD_FCTY F
    WHERE F.NAME = 'FIAT'), CURRENT_TIMESTAMP, 0, 1);
INSERT INTO AD_PRGM (ID, CODE, STATUS, TITLE_EN, TITLE_MS, LEVEL_ID, FACULTY_ID, C_TS, C_ID, M_ST)    VALUES (nextval('SQ_AD_PRGM'),    'MBP',
0,
   'Master of Science Product Development Technology',
   'Master of Science Product Development Technology',
   (SELECT ID
    FROM AD_PRGM_LEVL PL
    WHERE PL.CODE = 'MASTER'),
   (SELECT ID
    FROM AD_FCTY F
    WHERE F.NAME = 'FIAT'), CURRENT_TIMESTAMP, 0, 1);
INSERT INTO AD_PRGM (ID, CODE, STATUS,  TITLE_EN, TITLE_MS, LEVEL_ID, FACULTY_ID, C_TS, C_ID, M_ST)    VALUES (nextval('SQ_AD_PRGM'),    'MBH',
0,
   'Master of Science Animal Husbandary',
   'Master of Science Animal Husbandary',
   (SELECT ID
    FROM AD_PRGM_LEVL PL
    WHERE PL.CODE = 'MASTER'),
   (SELECT ID
    FROM AD_FCTY F
    WHERE F.NAME = 'FIAT'), CURRENT_TIMESTAMP, 0, 1);
INSERT INTO AD_PRGM (ID, CODE, STATUS,  TITLE_EN, TITLE_MS, LEVEL_ID, FACULTY_ID, C_TS, C_ID, M_ST)    VALUES (nextval('SQ_AD_PRGM'),    'MBA',
0,
   'Master of Science Akuakultur',
   'Master of Science Akuakultur',
   (SELECT ID
    FROM AD_PRGM_LEVL PL
    WHERE PL.CODE = 'MASTER'),
   (SELECT ID
    FROM AD_FCTY F
    WHERE F.NAME = 'FIAT'), CURRENT_TIMESTAMP, 0, 1);
INSERT INTO AD_PRGM (ID, CODE, STATUS,  TITLE_EN, TITLE_MS, LEVEL_ID, FACULTY_ID, C_TS, C_ID, M_ST)    VALUES (nextval('SQ_AD_PRGM'),    'PBG',
0,
   'Doctor of Philosophy Geoscience',
   'Doctor of Philosophy Geoscience',
   (SELECT ID
    FROM AD_PRGM_LEVL PL
    WHERE PL.CODE = 'PHD'),
   (SELECT ID
    FROM AD_FCTY F
    WHERE F.NAME = 'FSB'), CURRENT_TIMESTAMP, 0, 1);
INSERT INTO AD_PRGM (ID, CODE,STATUS, TITLE_EN, TITLE_MS, LEVEL_ID, FACULTY_ID, C_TS, C_ID, M_ST)    VALUES (nextval('SQ_AD_PRGM'),    'PBN',
0,
   'Doctor of Philosophy Natural Resources Management',
   'Doctor of Philosophy Natural Resources Management',
   (SELECT ID
    FROM AD_PRGM_LEVL PL
    WHERE PL.CODE = 'PHD'),
   (SELECT ID
    FROM AD_FCTY F
    WHERE F.NAME = 'FSB'), CURRENT_TIMESTAMP, 0, 1);
INSERT INTO AD_PRGM (ID, CODE, STATUS,  TITLE_EN, TITLE_MS, LEVEL_ID, FACULTY_ID, C_TS, C_ID, M_ST)    VALUES (nextval('SQ_AD_PRGM'),    'PBK',
0,
   'Doctor of Philosophy Sustainable Science',
   'Doctor of Philosophy Sustainable Science',
   (SELECT ID
    FROM AD_PRGM_LEVL PL
    WHERE PL.CODE = 'PHD'),
   (SELECT ID
    FROM AD_FCTY F
    WHERE F.NAME = 'FSB'), CURRENT_TIMESTAMP, 0, 1);
INSERT INTO AD_PRGM (ID, CODE, STATUS,  TITLE_EN, TITLE_MS, LEVEL_ID, FACULTY_ID, C_TS, C_ID, M_ST)    VALUES (nextval('SQ_AD_PRGM'),    'PFB',
0,
   'Doctor of Philosophy Material Technology',
   'Doctor of Philosophy Material Technology',
   (SELECT ID
    FROM AD_PRGM_LEVL PL
    WHERE PL.CODE = 'PHD'),
   (SELECT ID
    FROM AD_FCTY F
    WHERE F.NAME = 'FSB'), CURRENT_TIMESTAMP, 0, 1);
INSERT INTO AD_PRGM (ID, CODE, STATUS,  TITLE_EN, TITLE_MS, LEVEL_ID, FACULTY_ID, C_TS, C_ID, M_ST)    VALUES (nextval('SQ_AD_PRGM'),    'PFS',
0,
   'Doctor of Philosophy Forest Resources Technology',
   'Doctor of Philosophy Forest Resources Technology',
   (SELECT ID
    FROM AD_PRGM_LEVL PL
    WHERE PL.CODE = 'PHD'),
   (SELECT ID
    FROM AD_FCTY F
    WHERE F.NAME = 'FSB'), CURRENT_TIMESTAMP, 0, 1);
INSERT INTO AD_PRGM (ID, CODE, STATUS, TITLE_EN, TITLE_MS, LEVEL_ID, FACULTY_ID, C_TS, C_ID, M_ST)    VALUES (nextval('SQ_AD_PRGM'),    'PFT',
0,
   'Doctor of Philosophy Energy Technology',
   'Doctor of Philosophy Energy Technology',
   (SELECT ID
    FROM AD_PRGM_LEVL PL
    WHERE PL.CODE = 'PHD'),
   (SELECT ID
    FROM AD_FCTY F
    WHERE F.NAME = 'FSB'), CURRENT_TIMESTAMP, 0, 1);
INSERT INTO AD_PRGM (ID, CODE,  STATUS, TITLE_EN, TITLE_MS, LEVEL_ID, FACULTY_ID, C_TS, C_ID, M_ST)    VALUES (nextval('SQ_AD_PRGM'),    'MBG',
0,
   'Master of Science Geoscience',
   'Master of Science Geoscience',
   (SELECT ID
    FROM AD_PRGM_LEVL PL
    WHERE PL.CODE = 'MASTER'),
   (SELECT ID
    FROM AD_FCTY F
    WHERE F.NAME = 'FSB'), CURRENT_TIMESTAMP, 0, 1);
INSERT INTO AD_PRGM (ID, CODE, STATUS,  TITLE_EN, TITLE_MS, LEVEL_ID, FACULTY_ID, C_TS, C_ID, M_ST)    VALUES (nextval('SQ_AD_PRGM'),    'MBN',
0,
   'Master of Science Natural Resources Management',
   'Master of Science Natural Resources Management',
   (SELECT ID
    FROM AD_PRGM_LEVL PL
    WHERE PL.CODE = 'MASTER'),
   (SELECT ID
    FROM AD_FCTY F
    WHERE F.NAME = 'FSB'), CURRENT_TIMESTAMP, 0, 1);
INSERT INTO AD_PRGM (ID, CODE, STATUS,  TITLE_EN, TITLE_MS, LEVEL_ID, FACULTY_ID, C_TS, C_ID, M_ST)    VALUES (nextval('SQ_AD_PRGM'),    'MBK',
0,
   'Master of Science Sustainable Science',
   'Master of Science Sustainable Science',
   (SELECT ID
    FROM AD_PRGM_LEVL PL
    WHERE PL.CODE = 'MASTER'),
   (SELECT ID
    FROM AD_FCTY F
    WHERE F.NAME = 'FSB'), CURRENT_TIMESTAMP, 0, 1);
INSERT INTO AD_PRGM (ID, CODE, STATUS,  TITLE_EN, TITLE_MS, LEVEL_ID, FACULTY_ID, C_TS, C_ID, M_ST)    VALUES (nextval('SQ_AD_PRGM'),    'MFB',
0,
   'Master of Science Material Technology',
   'Master of Science Material Technology',
   (SELECT ID
    FROM AD_PRGM_LEVL PL
    WHERE PL.CODE = 'MASTER'),
   (SELECT ID
    FROM AD_FCTY F
    WHERE F.NAME = 'FSB'), CURRENT_TIMESTAMP, 0, 1);
INSERT INTO AD_PRGM (ID, CODE, STATUS, TITLE_EN, TITLE_MS, LEVEL_ID, FACULTY_ID, C_TS, C_ID, M_ST)    VALUES (nextval('SQ_AD_PRGM'),    'MFS',
0,
   'Master of Science Forest Resources Technology',
   'Master of Science Forest Resources Technology',
   (SELECT ID
    FROM AD_PRGM_LEVL PL
    WHERE PL.CODE = 'MASTER'),
   (SELECT ID
    FROM AD_FCTY F
    WHERE F.NAME = 'FSB'), CURRENT_TIMESTAMP, 0, 1);
INSERT INTO AD_PRGM (ID, CODE,STATUS, TITLE_EN, TITLE_MS, LEVEL_ID, FACULTY_ID, C_TS, C_ID, M_ST)    VALUES (nextval('SQ_AD_PRGM'),    'MFT',
0,
   'Master of Science Energy Technology',
   'Master of Science Energy Technology',
   (SELECT ID
    FROM AD_PRGM_LEVL PL
    WHERE PL.CODE = 'MASTER'),
   (SELECT ID
    FROM AD_FCTY F
    WHERE F.NAME = 'FSB'), CURRENT_TIMESTAMP, 0, 1);
INSERT INTO AD_PRGM (ID, CODE,STATUS, TITLE_EN, TITLE_MS, LEVEL_ID, FACULTY_ID, C_TS, C_ID, M_ST)    VALUES (nextval('SQ_AD_PRGM'),    'PCp',
0,
   'Doctor of Philosophy Phatology',
   'Doctor of Philosophy Phatology',
   (SELECT ID
    FROM AD_PRGM_LEVL PL
    WHERE PL.CODE = 'PHD'),
   (SELECT ID
    FROM AD_FCTY F
    WHERE F.NAME = 'FPV'), CURRENT_TIMESTAMP, 0, 1);
INSERT INTO AD_PRGM (ID, CODE,STATUS, TITLE_EN, TITLE_MS, LEVEL_ID, FACULTY_ID, C_TS, C_ID, M_ST)    VALUES (nextval('SQ_AD_PRGM'),    'PDN',
0,
   'Doctor of Philosophy Nutrition',
   'Doctor of Philosophy Nutrition',
   (SELECT ID
    FROM AD_PRGM_LEVL PL
    WHERE PL.CODE = 'PHD'),
   (SELECT ID
    FROM AD_FCTY F
    WHERE F.NAME = 'FPV'), CURRENT_TIMESTAMP, 0, 1);
INSERT INTO AD_PRGM (ID, CODE, STATUS,  TITLE_EN, TITLE_MS, LEVEL_ID, FACULTY_ID, C_TS, C_ID, M_ST)    VALUES (nextval('SQ_AD_PRGM'),    'PDA',
0,
   'Doctor of Philosophy Anatomy',
   'Doctor of Philosophy Anatomy',
   (SELECT ID
    FROM AD_PRGM_LEVL PL
    WHERE PL.CODE = 'PHD'),
   (SELECT ID
    FROM AD_FCTY F
    WHERE F.NAME = 'FPV'), CURRENT_TIMESTAMP, 0, 1);
INSERT INTO AD_PRGM (ID, CODE, STATUS, TITLE_EN, TITLE_MS, LEVEL_ID, FACULTY_ID, C_TS, C_ID, M_ST)    VALUES (nextval('SQ_AD_PRGM'),    'PDM',
0,
   'Doctor of Philosophy Microbiology',
   'Doctor of Philosophy Microbiology',
   (SELECT ID
    FROM AD_PRGM_LEVL PL
    WHERE PL.CODE = 'PHD'),
   (SELECT ID
    FROM AD_FCTY F
    WHERE F.NAME = 'FPV'), CURRENT_TIMESTAMP, 0, 1);
INSERT INTO AD_PRGM (ID, CODE,STATUS, TITLE_EN, TITLE_MS, LEVEL_ID, FACULTY_ID, C_TS, C_ID, M_ST)    VALUES (nextval('SQ_AD_PRGM'),    'PDR',
0,
   'Doctor of Philosophy Parasitology',
   'Doctor of Philosophy Parasitology',
   (SELECT ID
    FROM AD_PRGM_LEVL PL
    WHERE PL.CODE = 'PHD'),
   (SELECT ID
    FROM AD_FCTY F
    WHERE F.NAME = 'FPV'), CURRENT_TIMESTAMP, 0, 1);
INSERT INTO AD_PRGM (ID, CODE, STATUS, TITLE_EN, TITLE_MS, LEVEL_ID, FACULTY_ID, C_TS, C_ID, M_ST)    VALUES (nextval('SQ_AD_PRGM'),    'PDF',
0,
   'Doctor of Philosophy Physiology',
   'Doctor of Philosophy Physiology',
   (SELECT ID
    FROM AD_PRGM_LEVL PL
    WHERE PL.CODE = 'PHD'),
   (SELECT ID
    FROM AD_FCTY F
    WHERE F.NAME = 'FPV'), CURRENT_TIMESTAMP, 0, 1);
INSERT INTO AD_PRGM (ID, CODE, STATUS, TITLE_EN, TITLE_MS, LEVEL_ID, FACULTY_ID, C_TS, C_ID, M_ST)    VALUES (nextval('SQ_AD_PRGM'),    'MDP',
0,
   'Master of Science Phatology',
   'Master of Science Phatology',
   (SELECT ID
    FROM AD_PRGM_LEVL PL
    WHERE PL.CODE = 'MASTER'),
   (SELECT ID
    FROM AD_FCTY F
    WHERE F.NAME = 'FPV'), CURRENT_TIMESTAMP, 0, 1);
INSERT INTO AD_PRGM (ID, CODE,STATUS, TITLE_EN, TITLE_MS, LEVEL_ID, FACULTY_ID, C_TS, C_ID, M_ST)    VALUES (nextval('SQ_AD_PRGM'),    'MDN',
0,
   'Master of Science Nutrition',
   'Master of Science Nutrition',
   (SELECT ID
    FROM AD_PRGM_LEVL PL
    WHERE PL.CODE = 'MASTER'),
   (SELECT ID
    FROM AD_FCTY F
    WHERE F.NAME = 'FPV'), CURRENT_TIMESTAMP, 0, 1);
INSERT INTO AD_PRGM (ID, CODE,STATUS, TITLE_EN, TITLE_MS, LEVEL_ID, FACULTY_ID, C_TS, C_ID, M_ST)    VALUES (nextval('SQ_AD_PRGM'),    'MDA',
0,
   'Master of Science Anatomy',
   'Master of Science Anatomy',
   (SELECT ID
    FROM AD_PRGM_LEVL PL
    WHERE PL.CODE = 'MASTER'),
   (SELECT ID
    FROM AD_FCTY F
    WHERE F.NAME = 'FPV'), CURRENT_TIMESTAMP, 0, 1);
INSERT INTO AD_PRGM (ID, CODE,STATUS, TITLE_EN, TITLE_MS, LEVEL_ID, FACULTY_ID, C_TS, C_ID, M_ST)    VALUES (nextval('SQ_AD_PRGM'),    'MDM',
0,
   'Master of Science Microbiology',
   'Master of Science Microbiology',
   (SELECT ID
    FROM AD_PRGM_LEVL PL
    WHERE PL.CODE = 'MASTER'),
   (SELECT ID
    FROM AD_FCTY F
    WHERE F.NAME = 'FPV'), CURRENT_TIMESTAMP, 0, 1);
INSERT INTO AD_PRGM (ID, CODE,STATUS, TITLE_EN, TITLE_MS, LEVEL_ID, FACULTY_ID, C_TS, C_ID, M_ST)    VALUES (nextval('SQ_AD_PRGM'),    'MDR',
0,
   'Master of Science Parasitology',
   'Master of Science Parasitology',
   (SELECT ID
    FROM AD_PRGM_LEVL PL
    WHERE PL.CODE = 'MASTER'),
   (SELECT ID
    FROM AD_FCTY F
    WHERE F.NAME = 'FPV'), CURRENT_TIMESTAMP, 0, 1);
INSERT INTO AD_PRGM (ID, CODE, STATUS, TITLE_EN, TITLE_MS, LEVEL_ID, FACULTY_ID, C_TS, C_ID, M_ST)    VALUES (nextval('SQ_AD_PRGM'),    'MDF',
0,
   'Master of Science Physiology',
   'Master of Science Physiology',
   (SELECT ID
    FROM AD_PRGM_LEVL PL
    WHERE PL.CODE = 'MASTER'),
   (SELECT ID
    FROM AD_FCTY F
    WHERE F.NAME = 'FPV'), CURRENT_TIMESTAMP, 0, 1);
INSERT INTO AD_PRGM (ID, CODE,STATUS, TITLE_EN, TITLE_MS, LEVEL_ID, FACULTY_ID, C_TS, C_ID, M_ST)    VALUES (nextval('SQ_AD_PRGM'),    'PCS',
0,
   'Doctor of Philosophy Studies of History and Civilisation',
   'Doctor of Philosophy Studies of History and Civilisation',
   (SELECT ID
    FROM AD_PRGM_LEVL PL
    WHERE PL.CODE = 'PHD'),
   (SELECT ID
    FROM AD_FCTY F
    WHERE F.NAME = 'PBI'), CURRENT_TIMESTAMP, 0, 1);
INSERT INTO AD_PRGM (ID, CODE,STATUS, TITLE_EN, TITLE_MS, LEVEL_ID, FACULTY_ID, C_TS, C_ID, M_ST)    VALUES (nextval('SQ_AD_PRGM'),    'PCN',
0,
   'Doctor of Philosophy Development and Educational Values',
   'Doctor of Philosophy Development and Educational Values',
   (SELECT ID
    FROM AD_PRGM_LEVL PL
    WHERE PL.CODE = 'PHD'),
   (SELECT ID
    FROM AD_FCTY F
    WHERE F.NAME = 'PBI'), CURRENT_TIMESTAMP, 0, 1);
INSERT INTO AD_PRGM (ID, CODE,STATUS, TITLE_EN, TITLE_MS, LEVEL_ID, FACULTY_ID, C_TS, C_ID, M_ST)    VALUES (nextval('SQ_AD_PRGM'),    'PCO',
0,
   'Doctor of Philosophy Industrial Psychological Organization',
   'Doctor of Philosophy Industrial Psychological Organization',
   (SELECT ID
    FROM AD_PRGM_LEVL PL
    WHERE PL.CODE = 'PHD'),
   (SELECT ID
    FROM AD_FCTY F
    WHERE F.NAME = 'PBI'), CURRENT_TIMESTAMP, 0, 1);
INSERT INTO AD_PRGM (ID, CODE, STATUS, TITLE_EN, TITLE_MS, LEVEL_ID, FACULTY_ID, C_TS, C_ID, M_ST)    VALUES (nextval('SQ_AD_PRGM'),    'PCA',
0,
   'Doctor of Philosophy Religion And Contemporary',
   'Doctor of Philosophy Religion And Contemporary',
   (SELECT ID
    FROM AD_PRGM_LEVL PL
    WHERE PL.CODE = 'PHD'),
   (SELECT ID
    FROM AD_FCTY F
    WHERE F.NAME = 'PBI'), CURRENT_TIMESTAMP, 0, 1);
INSERT INTO AD_PRGM (ID, CODE,STATUS, TITLE_EN, TITLE_MS, LEVEL_ID, FACULTY_ID, C_TS, C_ID, M_ST)    VALUES (nextval('SQ_AD_PRGM'),    'PCK',
   0,
   'Doctor of Philosophy Social Work',
   'Doctor of Philosophy Social Work',
   (SELECT ID
    FROM AD_PRGM_LEVL PL
    WHERE PL.CODE = 'PHD'),
   (SELECT ID
    FROM AD_FCTY F
    WHERE F.NAME = 'PBI'), CURRENT_TIMESTAMP, 0, 1);
INSERT INTO AD_PRGM (ID, CODE,STATUS, TITLE_EN, TITLE_MS, LEVEL_ID, FACULTY_ID, C_TS, C_ID, M_ST)    VALUES (nextval('SQ_AD_PRGM'),    'MCB',
   0,
   'Doctor of Philosophy Language Studies',
   'Doctor of Philosophy Language Studies',
   (SELECT ID
    FROM AD_PRGM_LEVL PL
    WHERE PL.CODE = 'PHD'),
   (SELECT ID
    FROM AD_FCTY F
    WHERE F.NAME = 'PBI'), CURRENT_TIMESTAMP, 0, 1);
INSERT INTO AD_PRGM (ID, CODE,STATUS, TITLE_EN, TITLE_MS, LEVEL_ID, FACULTY_ID, C_TS, C_ID, M_ST)    VALUES (nextval('SQ_AD_PRGM'),    'PCC',
   0,
   'Doctor of Philosophy Communication',
   'Doctor of Philosophy Communication',
   (SELECT ID
    FROM AD_PRGM_LEVL PL
    WHERE PL.CODE = 'PHD'),
   (SELECT ID
    FROM AD_FCTY F
    WHERE F.NAME = 'PBI'), CURRENT_TIMESTAMP, 0, 1);
INSERT INTO AD_PRGM (ID, CODE,STATUS, TITLE_EN, TITLE_MS, LEVEL_ID, FACULTY_ID, C_TS, C_ID, M_ST)    VALUES (nextval('SQ_AD_PRGM'),    'MCS',
0,
   'Master of Arts Studies of History and Civilisation',
   'Master of Arts Studies of History and Civilisation',
   (SELECT ID
    FROM AD_PRGM_LEVL PL
    WHERE PL.CODE = 'MASTER'),
   (SELECT ID
    FROM AD_FCTY F
    WHERE F.NAME = 'PBI'), CURRENT_TIMESTAMP, 0, 1);
INSERT INTO AD_PRGM (ID, CODE,STATUS, TITLE_EN, TITLE_MS, LEVEL_ID, FACULTY_ID, C_TS, C_ID, M_ST)    VALUES (nextval('SQ_AD_PRGM'),    'MCN',
0,
   'Master of Arts Development and Educational Values',
   'Master of Arts Development and Educational Values',
   (SELECT ID
    FROM AD_PRGM_LEVL PL
    WHERE PL.CODE = 'MASTER'),
   (SELECT ID
    FROM AD_FCTY F
    WHERE F.NAME = 'PBI'), CURRENT_TIMESTAMP, 0, 1);
INSERT INTO AD_PRGM (ID, CODE,STATUS, TITLE_EN, TITLE_MS, LEVEL_ID, FACULTY_ID, C_TS, C_ID, M_ST)    VALUES (nextval('SQ_AD_PRGM'),    'MCO',
0,
   'Master of Arts Industrial Psychological Organization',
   'Master of Arts Industrial Psychological Organization',
   (SELECT ID
    FROM AD_PRGM_LEVL PL
    WHERE PL.CODE = 'MASTER'),
   (SELECT ID
    FROM AD_FCTY F
    WHERE F.NAME = 'PBI'), CURRENT_TIMESTAMP, 0, 1);
INSERT INTO AD_PRGM (ID, CODE,STATUS, TITLE_EN, TITLE_MS, LEVEL_ID, FACULTY_ID, C_TS, C_ID, M_ST)    VALUES (nextval('SQ_AD_PRGM'),    'MCA',
0,
   'Master of Arts Religion And Contemporary',
   'Master of Arts Religion And Contemporary',
   (SELECT ID
    FROM AD_PRGM_LEVL PL
    WHERE PL.CODE = 'MASTER'),
   (SELECT ID
    FROM AD_FCTY F
    WHERE F.NAME = 'PBI'), CURRENT_TIMESTAMP, 0, 1);
INSERT INTO AD_PRGM (ID, CODE, STATUS, TITLE_EN, TITLE_MS, LEVEL_ID, FACULTY_ID, C_TS, C_ID, M_ST)    VALUES (nextval('SQ_AD_PRGM'),    'MCK',
0,
   'Master of Arts Social Work',
   'Master of Arts Social Work',
   (SELECT ID
    FROM AD_PRGM_LEVL PL
    WHERE PL.CODE = 'MASTER'),
   (SELECT ID
    FROM AD_FCTY F
    WHERE F.NAME = 'PBI'), CURRENT_TIMESTAMP, 0, 1);
INSERT INTO AD_PRGM (ID, CODE,STATUS, TITLE_EN, TITLE_MS, LEVEL_ID, FACULTY_ID, C_TS, C_ID, M_ST)    VALUES (nextval('SQ_AD_PRGM'),    'PCB',
0,
   'Master of Arts Language Studies',
   'Master of Arts Language Studies',
   (SELECT ID
    FROM AD_PRGM_LEVL PL
    WHERE PL.CODE = 'MASTER'),
   (SELECT ID
    FROM AD_FCTY F
    WHERE F.NAME = 'PBI'), CURRENT_TIMESTAMP, 0, 1);
INSERT INTO AD_PRGM (ID, CODE,STATUS, TITLE_EN, TITLE_MS, LEVEL_ID, FACULTY_ID, C_TS, C_ID, M_ST)    VALUES (nextval('SQ_AD_PRGM'),    'MCC',
0,
   'Master of Arts Communication',
   'Master of Arts Communication',
   (SELECT ID
    FROM AD_PRGM_LEVL PL
    WHERE PL.CODE = 'MASTER'),
   (SELECT ID
    FROM AD_FCTY F
    WHERE F.NAME = 'PBI'), CURRENT_TIMESTAMP, 0, 1);
INSERT INTO AD_PRGM (ID, CODE,STATUS, TITLE_EN, TITLE_MS, LEVEL_ID, FACULTY_ID, C_TS, C_ID, M_ST)    VALUES (nextval('SQ_AD_PRGM'),    'PCW',
0,
   'Doctor of Philosophy Heritage Studies',
   'Doctor of Philosophy Heritage Studies',
   (SELECT ID
    FROM AD_PRGM_LEVL PL
    WHERE PL.CODE = 'PHD'),
   (SELECT ID
    FROM AD_FCTY F
    WHERE F.NAME = 'FTKW'), CURRENT_TIMESTAMP, 0, 1);
INSERT INTO AD_PRGM (ID, CODE,STATUS, TITLE_EN, TITLE_MS, LEVEL_ID, FACULTY_ID, C_TS, C_ID, M_ST)    VALUES (nextval('SQ_AD_PRGM'),    'PCT',
0,
   'Doctor of Philosophy Textile and Fashion',
   'Doctor of Philosophy Textile and Fashion',
   (SELECT ID
    FROM AD_PRGM_LEVL PL
    WHERE PL.CODE = 'PHD'),
   (SELECT ID
    FROM AD_FCTY F
    WHERE F.NAME = 'FTKW'), CURRENT_TIMESTAMP, 0, 1);
INSERT INTO AD_PRGM (ID, CODE,STATUS, TITLE_EN, TITLE_MS, LEVEL_ID, FACULTY_ID, C_TS, C_ID, M_ST)    VALUES (nextval('SQ_AD_PRGM'),    'PCP',
0,
   'Doctor of Philosophy Product Design',
   'Doctor of Philosophy Product Design',
   (SELECT ID
    FROM AD_PRGM_LEVL PL
    WHERE PL.CODE = 'PHD'),
   (SELECT ID
    FROM AD_FCTY F
    WHERE F.NAME = 'FTKW'), CURRENT_TIMESTAMP, 0, 1);
INSERT INTO AD_PRGM (ID, CODE,STATUS, TITLE_EN, TITLE_MS, LEVEL_ID, FACULTY_ID, C_TS, C_ID, M_ST)    VALUES (nextval('SQ_AD_PRGM'),    'PCM',
0,
   'Doctor of Philosophy Multimedia',
   'Doctor of Philosophy Multimedia',
   (SELECT ID
    FROM AD_PRGM_LEVL PL
    WHERE PL.CODE = 'PHD'),
   (SELECT ID
    FROM AD_FCTY F
    WHERE F.NAME = 'FTKW'), CURRENT_TIMESTAMP, 0, 1);
INSERT INTO AD_PRGM (ID, CODE, STATUS, TITLE_EN, TITLE_MS, LEVEL_ID, FACULTY_ID, C_TS, C_ID, M_ST)    VALUES (nextval('SQ_AD_PRGM'),    'PCV',
0,
   'Doctor of Philosophy VisualCommunication',
   'Doctor of Philosophy VisualCommunication',
   (SELECT ID
    FROM AD_PRGM_LEVL PL
    WHERE PL.CODE = 'PHD'),
   (SELECT ID
    FROM AD_FCTY F
    WHERE F.NAME = 'FTKW'), CURRENT_TIMESTAMP, 0, 1);
INSERT INTO AD_PRGM (ID, CODE, STATUS, TITLE_EN, TITLE_MS, LEVEL_ID, FACULTY_ID, C_TS, C_ID, M_ST)    VALUES (nextval('SQ_AD_PRGM'),    'MCW',
0,
   'Master of Arts Heritage Studies',
   'Master of Arts Heritage Studies',
   (SELECT ID
    FROM AD_PRGM_LEVL PL
    WHERE PL.CODE = 'MASTER'),
   (SELECT ID
    FROM AD_FCTY F
    WHERE F.NAME = 'FTKW'), CURRENT_TIMESTAMP, 0, 1);
INSERT INTO AD_PRGM (ID, CODE,STATUS, TITLE_EN, TITLE_MS, LEVEL_ID, FACULTY_ID, C_TS, C_ID, M_ST)    VALUES (nextval('SQ_AD_PRGM'),    'MCT',
0,
   'Master of Arts Textile and Fashion',
   'Master of Arts Textile and Fashion',
   (SELECT ID
    FROM AD_PRGM_LEVL PL
    WHERE PL.CODE = 'MASTER'),
   (SELECT ID
    FROM AD_FCTY F
    WHERE F.NAME = 'FTKW'), CURRENT_TIMESTAMP, 0, 1);
INSERT INTO AD_PRGM (ID, CODE,STATUS, TITLE_EN, TITLE_MS, LEVEL_ID, FACULTY_ID, C_TS, C_ID, M_ST)    VALUES (nextval('SQ_AD_PRGM'),    'MCP',
0,
   'Master of Arts Product Design',
   'Master of Arts Product Design',
   (SELECT ID
    FROM AD_PRGM_LEVL PL
    WHERE PL.CODE = 'MASTER'),
   (SELECT ID
    FROM AD_FCTY F
    WHERE F.NAME = 'FTKW'), CURRENT_TIMESTAMP, 0, 1);
INSERT INTO AD_PRGM (ID, CODE,STATUS, TITLE_EN, TITLE_MS, LEVEL_ID, FACULTY_ID, C_TS, C_ID, M_ST)    VALUES (nextval('SQ_AD_PRGM'),    'MCM',
0,
   'Master of Arts Multimedia',
   'Master of Arts Multimedia',
   (SELECT ID
    FROM AD_PRGM_LEVL PL
    WHERE PL.CODE = 'MASTER'),
   (SELECT ID
    FROM AD_FCTY F
    WHERE F.NAME = 'FTKW'), CURRENT_TIMESTAMP, 0, 1);
INSERT INTO AD_PRGM (ID, CODE, STATUS, TITLE_EN, TITLE_MS, LEVEL_ID, FACULTY_ID, C_TS, C_ID, M_ST)    VALUES (nextval('SQ_AD_PRGM'),    'MCV',
0,
   'Master of Arts VisualCommunication',
   'Master of Arts VisualCommunication',
   (SELECT ID
    FROM AD_PRGM_LEVL PL
    WHERE PL.CODE = 'MASTER'),
   (SELECT ID
    FROM AD_FCTY F
    WHERE F.NAME = 'FTKW'), CURRENT_TIMESTAMP, 0, 1);
INSERT INTO AD_PRGM (ID, CODE,STATUS, TITLE_EN, TITLE_MS, LEVEL_ID, FACULTY_ID, C_TS, C_ID, M_ST)    VALUES (nextval('SQ_AD_PRGM'),    'PAM',
0,
   'Doctor of Philosophy Management',
   'Doctor of Philosophy Management',
   (SELECT ID
    FROM AD_PRGM_LEVL PL
    WHERE PL.CODE = 'PHD'),
   (SELECT ID
    FROM AD_FCTY F
    WHERE F.NAME = 'FKP'), CURRENT_TIMESTAMP, 0, 1);
INSERT INTO AD_PRGM (ID, CODE,STATUS, TITLE_EN, TITLE_MS, LEVEL_ID, FACULTY_ID, C_TS, C_ID, M_ST)    VALUES (nextval('SQ_AD_PRGM'),    'PAF',
0,
   'Doctor of Philosophy Finance',
   'Doctor of Philosophy Finance',
   (SELECT ID
    FROM AD_PRGM_LEVL PL
    WHERE PL.CODE = 'PHD'),
   (SELECT ID
    FROM AD_FCTY F
    WHERE F.NAME = 'FKP'), CURRENT_TIMESTAMP, 0, 1);
INSERT INTO AD_PRGM (ID, CODE, STATUS, TITLE_EN, TITLE_MS, LEVEL_ID, FACULTY_ID, C_TS, C_ID, M_ST)    VALUES (nextval('SQ_AD_PRGM'),    'PAA',
0,
   'Doctor of Philosophy Accounting',
   'Doctor of Philosophy Accounting',
   (SELECT ID
    FROM AD_PRGM_LEVL PL
    WHERE PL.CODE = 'PHD'),
   (SELECT ID
    FROM AD_FCTY F
    WHERE F.NAME = 'FKP'), CURRENT_TIMESTAMP, 0, 1);
INSERT INTO AD_PRGM (ID, CODE,STATUS, TITLE_EN, TITLE_MS, LEVEL_ID, FACULTY_ID, C_TS, C_ID, M_ST)    VALUES (nextval('SQ_AD_PRGM'),    'PAR',
0,
   'Doctor of Philosophy Retailing',
   'Doctor of Philosophy Retailing',
   (SELECT ID
    FROM AD_PRGM_LEVL PL
    WHERE PL.CODE = 'PHD'),
   (SELECT ID
    FROM AD_FCTY F
    WHERE F.NAME = 'FKP'), CURRENT_TIMESTAMP, 0, 1);
INSERT INTO AD_PRGM (ID, CODE,STATUS, TITLE_EN, TITLE_MS, LEVEL_ID, FACULTY_ID, C_TS, C_ID, M_ST)    VALUES (nextval('SQ_AD_PRGM'),    'PAK',
0,
   'Doctor of Philosophy Commerce',
   'Doctor of Philosophy Commerce',
   (SELECT ID
    FROM AD_PRGM_LEVL PL
    WHERE PL.CODE = 'PHD'),
   (SELECT ID
    FROM AD_FCTY F
    WHERE F.NAME = 'FKP'), CURRENT_TIMESTAMP, 0, 1);
INSERT INTO AD_PRGM (ID, CODE,STATUS, TITLE_EN, TITLE_MS, LEVEL_ID, FACULTY_ID, C_TS, C_ID, M_ST)    VALUES (nextval('SQ_AD_PRGM'),    'PAW',
0,
   'Doctor of Philosophy HealthEntrepreneurship',
   'Doctor of Philosophy HealthEntrepreneurship',
   (SELECT ID
    FROM AD_PRGM_LEVL PL
    WHERE PL.CODE = 'PHD'),
   (SELECT ID
    FROM AD_FCTY F
    WHERE F.NAME = 'FKP'), CURRENT_TIMESTAMP, 0, 1);
INSERT INTO AD_PRGM (ID, CODE, STATUS, TITLE_EN, TITLE_MS, LEVEL_ID, FACULTY_ID, C_TS, C_ID, M_ST)    VALUES (nextval('SQ_AD_PRGM'),    'PAH',
0,
   'Doctor of Philosophy Hospitality',
   'Doctor of Philosophy Hospitality',
   (SELECT ID
    FROM AD_PRGM_LEVL PL
    WHERE PL.CODE = 'PHD'),
   (SELECT ID
    FROM AD_FCTY F
    WHERE F.NAME = 'FKP'), CURRENT_TIMESTAMP, 0, 1);
INSERT INTO AD_PRGM (ID, CODE,STATUS, TITLE_EN, TITLE_MS, LEVEL_ID, FACULTY_ID, C_TS, C_ID, M_ST)    VALUES (nextval('SQ_AD_PRGM'),    'PAP',
0,
   'Doctor of Philosophy Tourism',
   'Doctor of Philosophy Tourism',
   (SELECT ID
    FROM AD_PRGM_LEVL PL
    WHERE PL.CODE = 'PHD'),
   (SELECT ID
    FROM AD_FCTY F
    WHERE F.NAME = 'FKP'), CURRENT_TIMESTAMP, 0, 1);
INSERT INTO AD_PRGM (ID, CODE,STATUS, TITLE_EN, TITLE_MS, LEVEL_ID, FACULTY_ID, C_TS, C_ID, M_ST)    VALUES (nextval('SQ_AD_PRGM'),    'PMS',
0,
   'Doctor of Philosophy Mathematical Science',
   'Doctor of Philosophy Mathematical Science',
   (SELECT ID
    FROM AD_PRGM_LEVL PL
    WHERE PL.CODE = 'PHD'),
   (SELECT ID
    FROM AD_FCTY F
    WHERE F.NAME = 'FKP'), CURRENT_TIMESTAMP, 0, 1);
INSERT INTO AD_PRGM (ID, CODE,STATUS, TITLE_EN, TITLE_MS, LEVEL_ID, FACULTY_ID, C_TS, C_ID, M_ST)    VALUES (nextval('SQ_AD_PRGM'),    'MAM',
0,
   'Master of Entrepreneurship Management',
   'Master of Entrepreneurship Management',
   (SELECT ID
    FROM AD_PRGM_LEVL PL
    WHERE PL.CODE = 'MASTER'),
   (SELECT ID
    FROM AD_FCTY F
    WHERE F.NAME = 'FKP'), CURRENT_TIMESTAMP, 0, 1);
INSERT INTO AD_PRGM (ID, CODE,STATUS, TITLE_EN, TITLE_MS, LEVEL_ID, FACULTY_ID, C_TS, C_ID, M_ST)    VALUES (nextval('SQ_AD_PRGM'),    'MAF',
0,
   'Master of Entrepreneurship Finance',
   'Master of Entrepreneurship Finance',
   (SELECT ID
    FROM AD_PRGM_LEVL PL
    WHERE PL.CODE = 'MASTER'),
   (SELECT ID
    FROM AD_FCTY F
    WHERE F.NAME = 'FKP'), CURRENT_TIMESTAMP, 0, 1);
INSERT INTO AD_PRGM (ID, CODE, STATUS, TITLE_EN, TITLE_MS, LEVEL_ID, FACULTY_ID, C_TS, C_ID, M_ST)    VALUES (nextval('SQ_AD_PRGM'),    'MAA',
0,
   'Master of Entrepreneurship Accounting',
   'Master of Entrepreneurship Accounting',
   (SELECT ID
    FROM AD_PRGM_LEVL PL
    WHERE PL.CODE = 'MASTER'),
   (SELECT ID
    FROM AD_FCTY F
    WHERE F.NAME = 'FKP'), CURRENT_TIMESTAMP, 0, 1);
INSERT INTO AD_PRGM (ID, CODE, STATUS, TITLE_EN, TITLE_MS, LEVEL_ID, FACULTY_ID, C_TS, C_ID, M_ST)    VALUES (nextval('SQ_AD_PRGM'),    'MAR',
0,
   'Master of Entrepreneurship Retailing',
   'Master of Entrepreneurship Retailing',
   (SELECT ID
    FROM AD_PRGM_LEVL PL
    WHERE PL.CODE = 'MASTER'),
   (SELECT ID
    FROM AD_FCTY F
    WHERE F.NAME = 'FKP'), CURRENT_TIMESTAMP, 0, 1);
INSERT INTO AD_PRGM (ID, CODE,STATUS, TITLE_EN, TITLE_MS, LEVEL_ID, FACULTY_ID, C_TS, C_ID, M_ST)    VALUES (nextval('SQ_AD_PRGM'),    'MAK',
0,
   'Master of Entrepreneurship Commerce',
   'Master of Entrepreneurship Commerce',
   (SELECT ID
    FROM AD_PRGM_LEVL PL
    WHERE PL.CODE = 'MASTER'),
   (SELECT ID
    FROM AD_FCTY F
    WHERE F.NAME = 'FKP'), CURRENT_TIMESTAMP, 0, 1);
INSERT INTO AD_PRGM (ID, CODE, STATUS, TITLE_EN, TITLE_MS, LEVEL_ID, FACULTY_ID, C_TS, C_ID, M_ST)    VALUES (nextval('SQ_AD_PRGM'),    'MAW',
0,
   'Master of Entrepreneurship HealthEntrepreneurship',
   'Master of Entrepreneurship HealthEntrepreneurship',
   (SELECT ID
    FROM AD_PRGM_LEVL PL
    WHERE PL.CODE = 'MASTER'),
   (SELECT ID
    FROM AD_FCTY F
    WHERE F.NAME = 'FKP'), CURRENT_TIMESTAMP, 0, 1);
INSERT INTO AD_PRGM (ID, CODE,STATUS, TITLE_EN, TITLE_MS, LEVEL_ID, FACULTY_ID, C_TS, C_ID, M_ST)    VALUES (nextval('SQ_AD_PRGM'),    'MAH',
0,
   'Master of Entrepreneurship Hospitality',
   'Master of Entrepreneurship Hospitality',
   (SELECT ID
    FROM AD_PRGM_LEVL PL
    WHERE PL.CODE = 'MASTER'),
   (SELECT ID
    FROM AD_FCTY F
    WHERE F.NAME = 'FKP'), CURRENT_TIMESTAMP, 0, 1);
INSERT INTO AD_PRGM (ID, CODE, STATUS, TITLE_EN, TITLE_MS, LEVEL_ID, FACULTY_ID, C_TS, C_ID, M_ST)    VALUES (nextval('SQ_AD_PRGM'),    'MAP',
0,
   'Master of Entrepreneurship Tourism',
   'Master of Entrepreneurship Tourism',
   (SELECT ID
    FROM AD_PRGM_LEVL PL
    WHERE PL.CODE = 'MASTER'),
   (SELECT ID
    FROM AD_FCTY F
    WHERE F.NAME = 'FKP'), CURRENT_TIMESTAMP, 0, 1);
INSERT INTO AD_PRGM (ID, CODE, STATUS, TITLE_EN, TITLE_MS, LEVEL_ID, FACULTY_ID, C_TS, C_ID, M_ST)    VALUES (nextval('SQ_AD_PRGM'),    'MMS',
0,
   'Master of Entrepreneurship Mathematical Science',
   'Master of Entrepreneurship Mathematical Science',
   (SELECT ID
    FROM AD_PRGM_LEVL PL
    WHERE PL.CODE = 'MASTER'),
   (SELECT ID
    FROM AD_FCTY F
    WHERE F.NAME = 'FKP'), CURRENT_TIMESTAMP, 0, 1);
INSERT INTO AD_PRGM (ID, CODE,STATUS, TITLE_EN, TITLE_MS, LEVEL_ID, FACULTY_ID, C_TS, C_ID, M_ST)    VALUES (nextval('SQ_AD_PRGM'),    'MGSEB-MBA',
0,
   'Master of Business Administration',
   'Master of Business Administration',
   (SELECT ID
    FROM AD_PRGM_LEVL PL
    WHERE PL.CODE = 'MASTER'),
   (SELECT ID
    FROM AD_FCTY F
    WHERE F.NAME = 'MGSEB'), CURRENT_TIMESTAMP, 0, 1);
INSERT INTO AD_PRGM (ID, CODE,STATUS, TITLE_EN, TITLE_MS, LEVEL_ID, FACULTY_ID, C_TS, C_ID, M_ST)    VALUES (nextval('SQ_AD_PRGM'),    'MGSEB-DBA',
0,
   'Doctorate of Business Administration',
   'Doctorate of Business Administration',
   (SELECT ID
    FROM AD_PRGM_LEVL PL
    WHERE PL.CODE = 'PHD'),
   (SELECT ID
    FROM AD_FCTY F
    WHERE F.NAME = 'MGSEB'), CURRENT_TIMESTAMP, 0, 1);

 
