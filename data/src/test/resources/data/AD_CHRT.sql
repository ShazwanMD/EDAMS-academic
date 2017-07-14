INSERT INTO AD_CHRT (
  ID,
  PROGRAM_ID,
  CURRICULUM_ID,
  CODE,
  DESCRIPTION,
  CLASSIFICATION,
  C_ID, C_TS, M_ST,SESSION_ID)
VALUES (
  nextval('SQ_AD_CHRT'),
  (SELECT ID FROM AD_PRGM where code = 'FIAT-PHD-PBT'),
  (SELECT ID FROM AD_CRLM where code = 'FIAT-PHD-PBT' || '-CRLM-0001'),
  (SELECT CODE || '-CHRT-201720181' FROM AD_PRGM where code = 'FIAT-PHD-PBT'),
  'COHORT FIAT-PHD-PBT',
  1,
  1, CURRENT_TIMESTAMP, 1,31
);
INSERT INTO AD_CHRT (
  ID,
  PROGRAM_ID,
  CURRICULUM_ID,
  CODE,
  DESCRIPTION,
  CLASSIFICATION,
  C_ID, C_TS, M_ST,SESSION_ID)
VALUES (
  nextval('SQ_AD_CHRT'),
  (SELECT ID FROM AD_PRGM where code = 'FIAT-PHD-PBS'),
  (SELECT ID FROM AD_CRLM where code = 'FIAT-PHD-PBS' || '-CRLM-0001'),
  (SELECT CODE || '-CHRT-201720181' FROM AD_PRGM where code = 'FIAT-PHD-PBS'),
  'COHORT FIAT-PHD-PBS',
  1,
  1, CURRENT_TIMESTAMP, 1,31
);
INSERT INTO AD_CHRT (
  ID,
  PROGRAM_ID,
  CURRICULUM_ID,
  CODE,
  DESCRIPTION,
  CLASSIFICATION,
  C_ID, C_TS, M_ST,SESSION_ID)
VALUES (
  nextval('SQ_AD_CHRT'),
  (SELECT ID FROM AD_PRGM where code = 'FIAT-PHD-PBB'),
  (SELECT ID FROM AD_CRLM where code = 'FIAT-PHD-PBB' || '-CRLM-0001'),
  (SELECT CODE || '-CHRT-201720181' FROM AD_PRGM where code = 'FIAT-PHD-PBB'),
  'COHORT FIAT-PHD-PBB',
  1,
  1, CURRENT_TIMESTAMP, 1,31
);
INSERT INTO AD_CHRT (
  ID,
  PROGRAM_ID,
  CURRICULUM_ID,
  CODE,
  DESCRIPTION,
  CLASSIFICATION,
  C_ID, C_TS, M_ST,SESSION_ID)
VALUES (
  nextval('SQ_AD_CHRT'),
  (SELECT ID FROM AD_PRGM where code = 'FIAT-PHD-PBP'),
  (SELECT ID FROM AD_CRLM where code = 'FIAT-PHD-PBP' || '-CRLM-0001'),
  (SELECT CODE || '-CHRT-201720181' FROM AD_PRGM where code = 'FIAT-PHD-PBP'),
  'COHORT FIAT-PHD-PBP',
  1,
  1, CURRENT_TIMESTAMP, 1,31
);
INSERT INTO AD_CHRT (
  ID,
  PROGRAM_ID,
  CURRICULUM_ID,
  CODE,
  DESCRIPTION,
  CLASSIFICATION,
  C_ID, C_TS, M_ST,SESSION_ID)
VALUES (
  nextval('SQ_AD_CHRT'),
  (SELECT ID FROM AD_PRGM where code = 'FIAT-PHD-PBH'),
  (SELECT ID FROM AD_CRLM where code = 'FIAT-PHD-PBH' || '-CRLM-0001'),
  (SELECT CODE || '-CHRT-201720181' FROM AD_PRGM where code = 'FIAT-PHD-PBH'),
  'COHORT FIAT-PHD-PBH',
  1,
  1, CURRENT_TIMESTAMP, 1,31
);
INSERT INTO AD_CHRT (
  ID,
  PROGRAM_ID,
  CURRICULUM_ID,
  CODE,
  DESCRIPTION,
  CLASSIFICATION,
  C_ID, C_TS, M_ST,SESSION_ID)
VALUES (
  nextval('SQ_AD_CHRT'),
  (SELECT ID FROM AD_PRGM where code = 'FIAT-PHD-PBA'),
  (SELECT ID FROM AD_CRLM where code = 'FIAT-PHD-PBA' || '-CRLM-0001'),
  (SELECT CODE || '-CHRT-201720181' FROM AD_PRGM where code = 'FIAT-PHD-PBA'),
  'COHORT FIAT-PHD-PBA',
  1,
  1, CURRENT_TIMESTAMP, 1,31
);
INSERT INTO AD_CHRT (
  ID,
  PROGRAM_ID,
  CURRICULUM_ID,
  CODE,
  DESCRIPTION,
  CLASSIFICATION,
  C_ID, C_TS, M_ST,SESSION_ID)
VALUES (
  nextval('SQ_AD_CHRT'),
  (SELECT ID FROM AD_PRGM where code = 'FIAT-MASTER-MBT'),
  (SELECT ID FROM AD_CRLM where code = 'FIAT-MASTER-MBT' || '-CRLM-0001'),
  (SELECT CODE || '-CHRT-201720181' FROM AD_PRGM where code = 'FIAT-MASTER-MBT'),
  'COHORT FIAT-MASTER-MBT',
  1,
  1, CURRENT_TIMESTAMP, 1,31
);
INSERT INTO AD_CHRT (
  ID,
  PROGRAM_ID,
  CURRICULUM_ID,
  CODE,
  DESCRIPTION,
  CLASSIFICATION,
  C_ID, C_TS, M_ST,SESSION_ID)
VALUES (
  nextval('SQ_AD_CHRT'),
  (SELECT ID FROM AD_PRGM where code = 'FIAT-MASTER-MBS'),
  (SELECT ID FROM AD_CRLM where code = 'FIAT-MASTER-MBS' || '-CRLM-0001'),
  (SELECT CODE || '-CHRT-201720181' FROM AD_PRGM where code = 'FIAT-MASTER-MBS'),
  'COHORT FIAT-MASTER-MBS',
  1,
  1, CURRENT_TIMESTAMP, 1,31
);
INSERT INTO AD_CHRT (
  ID,
  PROGRAM_ID,
  CURRICULUM_ID,
  CODE,
  DESCRIPTION,
  CLASSIFICATION,
  C_ID, C_TS, M_ST,SESSION_ID)
VALUES (
  nextval('SQ_AD_CHRT'),
  (SELECT ID FROM AD_PRGM where code = 'FIAT-MASTER-MBB'),
  (SELECT ID FROM AD_CRLM where code = 'FIAT-MASTER-MBB' || '-CRLM-0001'),
  (SELECT CODE || '-CHRT-201720181' FROM AD_PRGM where code = 'FIAT-MASTER-MBB'),
  'COHORT FIAT-MASTER-MBB',
  1,
  1, CURRENT_TIMESTAMP, 1,31
);
INSERT INTO AD_CHRT (
  ID,
  PROGRAM_ID,
  CURRICULUM_ID,
  CODE,
  DESCRIPTION,
  CLASSIFICATION,
  C_ID, C_TS, M_ST,SESSION_ID)
VALUES (
  nextval('SQ_AD_CHRT'),
  (SELECT ID FROM AD_PRGM where code = 'FIAT-MASTER-MBP'),
  (SELECT ID FROM AD_CRLM where code = 'FIAT-MASTER-MBP' || '-CRLM-0001'),
  (SELECT CODE || '-CHRT-201720181' FROM AD_PRGM where code = 'FIAT-MASTER-MBP'),
  'COHORT FIAT-MASTER-MBP',
  1,
  1, CURRENT_TIMESTAMP, 1,31
);
INSERT INTO AD_CHRT (
  ID,
  PROGRAM_ID,
  CURRICULUM_ID,
  CODE,
  DESCRIPTION,
  CLASSIFICATION,
  C_ID, C_TS, M_ST,SESSION_ID)
VALUES (
  nextval('SQ_AD_CHRT'),
  (SELECT ID FROM AD_PRGM where code = 'FIAT-MASTER-PBH'),
  (SELECT ID FROM AD_CRLM where code = 'FIAT-MASTER-PBH' || '-CRLM-0001'),
  (SELECT CODE || '-CHRT-201720181' FROM AD_PRGM where code = 'FIAT-MASTER-PBH'),
  'COHORT FIAT-MASTER-PBH',
  1,
  1, CURRENT_TIMESTAMP, 1,31
);
INSERT INTO AD_CHRT (
  ID,
  PROGRAM_ID,
  CURRICULUM_ID,
  CODE,
  DESCRIPTION,
  CLASSIFICATION,
  C_ID, C_TS, M_ST,SESSION_ID)
VALUES (
  nextval('SQ_AD_CHRT'),
  (SELECT ID FROM AD_PRGM where code = 'FIAT-MASTER-MBA'),
  (SELECT ID FROM AD_CRLM where code = 'FIAT-MASTER-MBA' || '-CRLM-0001'),
  (SELECT CODE || '-CHRT-201720181' FROM AD_PRGM where code = 'FIAT-MASTER-MBA'),
  'COHORT FIAT-MASTER-MBA',
  1,
  1, CURRENT_TIMESTAMP, 1,31
);
INSERT INTO AD_CHRT (
  ID,
  PROGRAM_ID,
  CURRICULUM_ID,
  CODE,
  DESCRIPTION,
  CLASSIFICATION,
  C_ID, C_TS, M_ST,SESSION_ID)
VALUES (
  nextval('SQ_AD_CHRT'),
  (SELECT ID FROM AD_PRGM where code = 'FSB-PHD-PBG'),
  (SELECT ID FROM AD_CRLM where code = 'FSB-PHD-PBG' || '-CRLM-0001'),
  (SELECT CODE || '-CHRT-201720181' FROM AD_PRGM where code = 'FSB-PHD-PBG'),
  'COHORT FSB-PHD-PBG',
  1,
  1, CURRENT_TIMESTAMP, 1,31
);
INSERT INTO AD_CHRT (
  ID,
  PROGRAM_ID,
  CURRICULUM_ID,
  CODE,
  DESCRIPTION,
  CLASSIFICATION,
  C_ID, C_TS, M_ST,SESSION_ID)
VALUES (
  nextval('SQ_AD_CHRT'),
  (SELECT ID FROM AD_PRGM where code = 'FSB-PHD-PBN'),
  (SELECT ID FROM AD_CRLM where code = 'FSB-PHD-PBN' || '-CRLM-0001'),
  (SELECT CODE || '-CHRT-201720181' FROM AD_PRGM where code = 'FSB-PHD-PBN'),
  'COHORT FSB-PHD-PBN',
  1,
  1, CURRENT_TIMESTAMP, 1,31
);
INSERT INTO AD_CHRT (
  ID,
  PROGRAM_ID,
  CURRICULUM_ID,
  CODE,
  DESCRIPTION,
  CLASSIFICATION,
  C_ID, C_TS, M_ST,SESSION_ID)
VALUES (
  nextval('SQ_AD_CHRT'),
  (SELECT ID FROM AD_PRGM where code = 'FSB-PHD-PBK'),
  (SELECT ID FROM AD_CRLM where code = 'FSB-PHD-PBK' || '-CRLM-0001'),
  (SELECT CODE || '-CHRT-201720181' FROM AD_PRGM where code = 'FSB-PHD-PBK'),
  'COHORT FSB-PHD-PBK',
  1,
  1, CURRENT_TIMESTAMP, 1,31
);
INSERT INTO AD_CHRT (
  ID,
  PROGRAM_ID,
  CURRICULUM_ID,
  CODE,
  DESCRIPTION,
  CLASSIFICATION,
  C_ID, C_TS, M_ST,SESSION_ID)
VALUES (
  nextval('SQ_AD_CHRT'),
  (SELECT ID FROM AD_PRGM where code = 'FSB-PHD-PFB'),
  (SELECT ID FROM AD_CRLM where code = 'FSB-PHD-PFB' || '-CRLM-0001'),
  (SELECT CODE || '-CHRT-201720181' FROM AD_PRGM where code = 'FSB-PHD-PFB'),
  'COHORT FSB-PHD-PFB',
  1,
  1, CURRENT_TIMESTAMP, 1,31
);
INSERT INTO AD_CHRT (
  ID,
  PROGRAM_ID,
  CURRICULUM_ID,
  CODE,
  DESCRIPTION,
  CLASSIFICATION,
  C_ID, C_TS, M_ST,SESSION_ID)
VALUES (
  nextval('SQ_AD_CHRT'),
  (SELECT ID FROM AD_PRGM where code = 'FSB-PHD-PFS'),
  (SELECT ID FROM AD_CRLM where code = 'FSB-PHD-PFS' || '-CRLM-0001'),
  (SELECT CODE || '-CHRT-201720181' FROM AD_PRGM where code = 'FSB-PHD-PFS'),
  'COHORT FSB-PHD-PFS',
  1,
  1, CURRENT_TIMESTAMP, 1,31
);
INSERT INTO AD_CHRT (
  ID,
  PROGRAM_ID,
  CURRICULUM_ID,
  CODE,
  DESCRIPTION,
  CLASSIFICATION,
  C_ID, C_TS, M_ST,SESSION_ID)
VALUES (
  nextval('SQ_AD_CHRT'),
  (SELECT ID FROM AD_PRGM where code = 'FSB-PHD-PFT'),
  (SELECT ID FROM AD_CRLM where code = 'FSB-PHD-PFT' || '-CRLM-0001'),
  (SELECT CODE || '-CHRT-201720181' FROM AD_PRGM where code = 'FSB-PHD-PFT'),
  'COHORT FSB-PHD-PFT',
  1,
  1, CURRENT_TIMESTAMP, 1,31
);
INSERT INTO AD_CHRT (
  ID,
  PROGRAM_ID,
  CURRICULUM_ID,
  CODE,
  DESCRIPTION,
  CLASSIFICATION,
  C_ID, C_TS, M_ST,SESSION_ID)
VALUES (
  nextval('SQ_AD_CHRT'),
  (SELECT ID FROM AD_PRGM where code = 'FSB-MASTER-MBG'),
  (SELECT ID FROM AD_CRLM where code = 'FSB-MASTER-MBG' || '-CRLM-0001'),
  (SELECT CODE || '-CHRT-201720181' FROM AD_PRGM where code = 'FSB-MASTER-MBG'),
  'COHORT FSB-MASTER-MBG',
  1,
  1, CURRENT_TIMESTAMP, 1,31
);
INSERT INTO AD_CHRT (
  ID,
  PROGRAM_ID,
  CURRICULUM_ID,
  CODE,
  DESCRIPTION,
  CLASSIFICATION,
  C_ID, C_TS, M_ST,SESSION_ID)
VALUES (
  nextval('SQ_AD_CHRT'),
  (SELECT ID FROM AD_PRGM where code = 'FSB-MASTER-MBN'),
  (SELECT ID FROM AD_CRLM where code = 'FSB-MASTER-MBN' || '-CRLM-0001'),
  (SELECT CODE || '-CHRT-201720181' FROM AD_PRGM where code = 'FSB-MASTER-MBN'),
  'COHORT FSB-MASTER-MBN',
  1,
  1, CURRENT_TIMESTAMP, 1,31
);
INSERT INTO AD_CHRT (
  ID,
  PROGRAM_ID,
  CURRICULUM_ID,
  CODE,
  DESCRIPTION,
  CLASSIFICATION,
  C_ID, C_TS, M_ST,SESSION_ID)
VALUES (
  nextval('SQ_AD_CHRT'),
  (SELECT ID FROM AD_PRGM where code = 'FSB-MASTER-MBK'),
  (SELECT ID FROM AD_CRLM where code = 'FSB-MASTER-MBK' || '-CRLM-0001'),
  (SELECT CODE || '-CHRT-201720181' FROM AD_PRGM where code = 'FSB-MASTER-MBK'),
  'COHORT FSB-MASTER-MBK',
  1,
  1, CURRENT_TIMESTAMP, 1,31
);
INSERT INTO AD_CHRT (
  ID,
  PROGRAM_ID,
  CURRICULUM_ID,
  CODE,
  DESCRIPTION,
  CLASSIFICATION,
  C_ID, C_TS, M_ST,SESSION_ID)
VALUES (
  nextval('SQ_AD_CHRT'),
  (SELECT ID FROM AD_PRGM where code = 'FSB-MASTER-MFB'),
  (SELECT ID FROM AD_CRLM where code = 'FSB-MASTER-MFB' || '-CRLM-0001'),
  (SELECT CODE || '-CHRT-201720181' FROM AD_PRGM where code = 'FSB-MASTER-MFB'),
  'COHORT FSB-MASTER-MFB',
  1,
  1, CURRENT_TIMESTAMP, 1,31
);
INSERT INTO AD_CHRT (
  ID,
  PROGRAM_ID,
  CURRICULUM_ID,
  CODE,
  DESCRIPTION,
  CLASSIFICATION,
  C_ID, C_TS, M_ST,SESSION_ID)
VALUES (
  nextval('SQ_AD_CHRT'),
  (SELECT ID FROM AD_PRGM where code = 'FSB-MASTER-MFS'),
  (SELECT ID FROM AD_CRLM where code = 'FSB-MASTER-MFS' || '-CRLM-0001'),
  (SELECT CODE || '-CHRT-201720181' FROM AD_PRGM where code = 'FSB-MASTER-MFS'),
  'COHORT FSB-MASTER-MFS',
  1,
  1, CURRENT_TIMESTAMP, 1,31
);
INSERT INTO AD_CHRT (
  ID,
  PROGRAM_ID,
  CURRICULUM_ID,
  CODE,
  DESCRIPTION,
  CLASSIFICATION,
  C_ID, C_TS, M_ST,SESSION_ID)
VALUES (
  nextval('SQ_AD_CHRT'),
  (SELECT ID FROM AD_PRGM where code = 'FSB-MASTER-MFT'),
  (SELECT ID FROM AD_CRLM where code = 'FSB-MASTER-MFT' || '-CRLM-0001'),
  (SELECT CODE || '-CHRT-201720181' FROM AD_PRGM where code = 'FSB-MASTER-MFT'),
  'COHORT FSB-MASTER-MFT',
  1,
  1, CURRENT_TIMESTAMP, 1,31
);
INSERT INTO AD_CHRT (
  ID,
  PROGRAM_ID,
  CURRICULUM_ID,
  CODE,
  DESCRIPTION,
  CLASSIFICATION,
  C_ID, C_TS, M_ST,SESSION_ID)
VALUES (
  nextval('SQ_AD_CHRT'),
  (SELECT ID FROM AD_PRGM where code = 'FPV-PHD-PCp'),
  (SELECT ID FROM AD_CRLM where code = 'FPV-PHD-PCp' || '-CRLM-0001'),
  (SELECT CODE || '-CHRT-201720181' FROM AD_PRGM where code = 'FPV-PHD-PCp'),
  'COHORT FPV-PHD-PCp',
  1,
  1, CURRENT_TIMESTAMP, 1,31
);
INSERT INTO AD_CHRT (
  ID,
  PROGRAM_ID,
  CURRICULUM_ID,
  CODE,
  DESCRIPTION,
  CLASSIFICATION,
  C_ID, C_TS, M_ST,SESSION_ID)
VALUES (
  nextval('SQ_AD_CHRT'),
  (SELECT ID FROM AD_PRGM where code = 'FPV-PHD-PDN'),
  (SELECT ID FROM AD_CRLM where code = 'FPV-PHD-PDN' || '-CRLM-0001'),
  (SELECT CODE || '-CHRT-201720181' FROM AD_PRGM where code = 'FPV-PHD-PDN'),
  'COHORT FPV-PHD-PDN',
  1,
  1, CURRENT_TIMESTAMP, 1,31
);
INSERT INTO AD_CHRT (
  ID,
  PROGRAM_ID,
  CURRICULUM_ID,
  CODE,
  DESCRIPTION,
  CLASSIFICATION,
  C_ID, C_TS, M_ST,SESSION_ID)
VALUES (
  nextval('SQ_AD_CHRT'),
  (SELECT ID FROM AD_PRGM where code = 'FPV-PHD-PDA'),
  (SELECT ID FROM AD_CRLM where code = 'FPV-PHD-PDA' || '-CRLM-0001'),
  (SELECT CODE || '-CHRT-201720181' FROM AD_PRGM where code = 'FPV-PHD-PDA'),
  'COHORT FPV-PHD-PDA',
  1,
  1, CURRENT_TIMESTAMP, 1,31
);
INSERT INTO AD_CHRT (
  ID,
  PROGRAM_ID,
  CURRICULUM_ID,
  CODE,
  DESCRIPTION,
  CLASSIFICATION,
  C_ID, C_TS, M_ST,SESSION_ID)
VALUES (
  nextval('SQ_AD_CHRT'),
  (SELECT ID FROM AD_PRGM where code = 'FPV-PHD-PDM'),
  (SELECT ID FROM AD_CRLM where code = 'FPV-PHD-PDM' || '-CRLM-0001'),
  (SELECT CODE || '-CHRT-201720181' FROM AD_PRGM where code = 'FPV-PHD-PDM'),
  'COHORT FPV-PHD-PDM',
  1,
  1, CURRENT_TIMESTAMP, 1,31
);
INSERT INTO AD_CHRT (
  ID,
  PROGRAM_ID,
  CURRICULUM_ID,
  CODE,
  DESCRIPTION,
  CLASSIFICATION,
  C_ID, C_TS, M_ST,SESSION_ID)
VALUES (
  nextval('SQ_AD_CHRT'),
  (SELECT ID FROM AD_PRGM where code = 'FPV-PHD-PDR'),
  (SELECT ID FROM AD_CRLM where code = 'FPV-PHD-PDR' || '-CRLM-0001'),
  (SELECT CODE || '-CHRT-201720181' FROM AD_PRGM where code = 'FPV-PHD-PDR'),
  'COHORT FPV-PHD-PDR',
  1,
  1, CURRENT_TIMESTAMP, 1,31
);
INSERT INTO AD_CHRT (
  ID,
  PROGRAM_ID,
  CURRICULUM_ID,
  CODE,
  DESCRIPTION,
  CLASSIFICATION,
  C_ID, C_TS, M_ST,SESSION_ID)
VALUES (
  nextval('SQ_AD_CHRT'),
  (SELECT ID FROM AD_PRGM where code = 'FPV-PHD-PDF'),
  (SELECT ID FROM AD_CRLM where code = 'FPV-PHD-PDF' || '-CRLM-0001'),
  (SELECT CODE || '-CHRT-201720181' FROM AD_PRGM where code = 'FPV-PHD-PDF'),
  'COHORT FPV-PHD-PDF',
  1,1,
   CURRENT_TIMESTAMP, 1,31
);
INSERT INTO AD_CHRT (
  ID,
  PROGRAM_ID,
  CURRICULUM_ID,
  CODE,
  DESCRIPTION,
  CLASSIFICATION,
  C_ID, C_TS, M_ST,SESSION_ID)
VALUES (
  nextval('SQ_AD_CHRT'),
  (SELECT ID FROM AD_PRGM where code = 'FPV-MASTER-MDP'),
  (SELECT ID FROM AD_CRLM where code = 'FPV-MASTER-MDP' || '-CRLM-0001'),
  (SELECT CODE || '-CHRT-201720181' FROM AD_PRGM where code = 'FPV-MASTER-MDP'),
  'COHORT FPV-MASTER-MDP',
  1,
  1, CURRENT_TIMESTAMP, 1,31
);
INSERT INTO AD_CHRT (
  ID,
  PROGRAM_ID,
  CURRICULUM_ID,
  CODE,
  DESCRIPTION,
  CLASSIFICATION,
  C_ID, C_TS, M_ST,SESSION_ID)
VALUES (
  nextval('SQ_AD_CHRT'),
  (SELECT ID FROM AD_PRGM where code = 'FPV-MASTER-MDN'),
  (SELECT ID FROM AD_CRLM where code = 'FPV-MASTER-MDN' || '-CRLM-0001'),
  (SELECT CODE || '-CHRT-201720181' FROM AD_PRGM where code = 'FPV-MASTER-MDN'),
  'COHORT FPV-MASTER-MDN',
  1,
  1, CURRENT_TIMESTAMP, 1,31
);
INSERT INTO AD_CHRT (
  ID,
  PROGRAM_ID,
  CURRICULUM_ID,
  CODE,
  DESCRIPTION,
  CLASSIFICATION,
  C_ID, C_TS, M_ST,SESSION_ID)
VALUES (
  nextval('SQ_AD_CHRT'),
  (SELECT ID FROM AD_PRGM where code = 'FPV-MASTER-MDA'),
  (SELECT ID FROM AD_CRLM where code = 'FPV-MASTER-MDA' || '-CRLM-0001'),
  (SELECT CODE || '-CHRT-201720181' FROM AD_PRGM where code = 'FPV-MASTER-MDA'),
  'COHORT FPV-MASTER-MDA',
  1,
  1, CURRENT_TIMESTAMP, 1,31
);
INSERT INTO AD_CHRT (
  ID,
  PROGRAM_ID,
  CURRICULUM_ID,
  CODE,
  DESCRIPTION,
  CLASSIFICATION,
  C_ID, C_TS, M_ST,SESSION_ID)
VALUES (
  nextval('SQ_AD_CHRT'),
  (SELECT ID FROM AD_PRGM where code = 'FPV-MASTER-MDM'),
  (SELECT ID FROM AD_CRLM where code = 'FPV-MASTER-MDM' || '-CRLM-0001'),
  (SELECT CODE || '-CHRT-201720181' FROM AD_PRGM where code = 'FPV-MASTER-MDM'),
  'COHORT FPV-MASTER-MDM',
  1,
  1, CURRENT_TIMESTAMP, 1,31
);
INSERT INTO AD_CHRT (
  ID,
  PROGRAM_ID,
  CURRICULUM_ID,
  CODE,
  DESCRIPTION,
  CLASSIFICATION,
  C_ID, C_TS, M_ST,SESSION_ID)
VALUES (
  nextval('SQ_AD_CHRT'),
  (SELECT ID FROM AD_PRGM where code = 'FPV-MASTER-MDR'),
  (SELECT ID FROM AD_CRLM where code = 'FPV-MASTER-MDR' || '-CRLM-0001'),
  (SELECT CODE || '-CHRT-201720181' FROM AD_PRGM where code = 'FPV-MASTER-MDR'),
  'COHORT FPV-MASTER-MDR',
  1,
  1, CURRENT_TIMESTAMP, 1,31
);
INSERT INTO AD_CHRT (
  ID,
  PROGRAM_ID,
  CURRICULUM_ID,
  CODE,
  DESCRIPTION,
  CLASSIFICATION,
  C_ID, C_TS, M_ST,SESSION_ID)
VALUES (
  nextval('SQ_AD_CHRT'),
  (SELECT ID FROM AD_PRGM where code = 'FPV-MASTER-MDF'),
  (SELECT ID FROM AD_CRLM where code = 'FPV-MASTER-MDF' || '-CRLM-0001'),
  (SELECT CODE || '-CHRT-201720181' FROM AD_PRGM where code = 'FPV-MASTER-MDF'),
  'COHORT FPV-MASTER-MDF',
  1,
  1, CURRENT_TIMESTAMP, 1,31
);
INSERT INTO AD_CHRT (
  ID,
  PROGRAM_ID,
  CURRICULUM_ID,
  CODE,
  DESCRIPTION,
  CLASSIFICATION,
  C_ID, C_TS, M_ST,SESSION_ID)
VALUES (
  nextval('SQ_AD_CHRT'),
  (SELECT ID FROM AD_PRGM where code = 'PBI-PHD-PCS'),
  (SELECT ID FROM AD_CRLM where code = 'PBI-PHD-PCS' || '-CRLM-0001'),
  (SELECT CODE || '-CHRT-201720181' FROM AD_PRGM where code = 'PBI-PHD-PCS'),
  'COHORT PBI-PHD-PCS',
  1,
  1, CURRENT_TIMESTAMP, 1,31
);
INSERT INTO AD_CHRT (
  ID,
  PROGRAM_ID,
  CURRICULUM_ID,
  CODE,
  DESCRIPTION,
  CLASSIFICATION,
  C_ID, C_TS, M_ST,SESSION_ID)
VALUES (
  nextval('SQ_AD_CHRT'),
  (SELECT ID FROM AD_PRGM where code = 'PBI-PHD-PCN'),
  (SELECT ID FROM AD_CRLM where code = 'PBI-PHD-PCN' || '-CRLM-0001'),
  (SELECT CODE || '-CHRT-201720181' FROM AD_PRGM where code = 'PBI-PHD-PCN'),
  'COHORT PBI-PHD-PCN',
  1,
  1, CURRENT_TIMESTAMP, 1,31
);
INSERT INTO AD_CHRT (
  ID,
  PROGRAM_ID,
  CURRICULUM_ID,
  CODE,
  DESCRIPTION,
  CLASSIFICATION,
  C_ID, C_TS, M_ST,SESSION_ID)
VALUES (
  nextval('SQ_AD_CHRT'),
  (SELECT ID FROM AD_PRGM where code = 'PBI-PHD-PCO'),
  (SELECT ID FROM AD_CRLM where code = 'PBI-PHD-PCO' || '-CRLM-0001'),
  (SELECT CODE || '-CHRT-201720181' FROM AD_PRGM where code = 'PBI-PHD-PCO'),
  'COHORT PBI-PHD-PCO',
  1,
  1, CURRENT_TIMESTAMP, 1,31
);
INSERT INTO AD_CHRT (
  ID,
  PROGRAM_ID,
  CURRICULUM_ID,
  CODE,
  DESCRIPTION,
  CLASSIFICATION,
  C_ID, C_TS, M_ST,SESSION_ID)
VALUES (
  nextval('SQ_AD_CHRT'),
  (SELECT ID FROM AD_PRGM where code = 'PBI-PHD-PCA'),
  (SELECT ID FROM AD_CRLM where code = 'PBI-PHD-PCA' || '-CRLM-0001'),
  (SELECT CODE || '-CHRT-201720181' FROM AD_PRGM where code = 'PBI-PHD-PCA'),
  'COHORT PBI-PHD-PCA',
  1,
  1, CURRENT_TIMESTAMP, 1,31
);

INSERT INTO AD_CHRT (
  ID,
  PROGRAM_ID,
  CURRICULUM_ID,
  CODE,
  DESCRIPTION,
  CLASSIFICATION,
  C_ID, C_TS, M_ST,SESSION_ID)
VALUES (
  nextval('SQ_AD_CHRT'),
  (SELECT ID FROM AD_PRGM where code = 'PBI-PHD-PCK'),
  (SELECT ID FROM AD_CRLM where code = 'PBI-PHD-PCK' || '-CRLM-0001'),
  (SELECT CODE || '-CHRT-201720181' FROM AD_PRGM where code = 'PBI-PHD-PCK'),
  'COHORT PBI-PHD-PCK',
  1,
  1, CURRENT_TIMESTAMP, 1,31
);
INSERT INTO AD_CHRT (
  ID,
  PROGRAM_ID,
  CURRICULUM_ID,
  CODE,
  DESCRIPTION,
  CLASSIFICATION,
  C_ID, C_TS, M_ST,SESSION_ID)
VALUES (
  nextval('SQ_AD_CHRT'),
  (SELECT ID FROM AD_PRGM where code = 'PBI-PHD-MCB'),
  (SELECT ID FROM AD_CRLM where code = 'PBI-PHD-MCB' || '-CRLM-0001'),
  (SELECT CODE || '-CHRT-201720181' FROM AD_PRGM where code = 'PBI-PHD-MCB'),
  'COHORT PBI-PHD-MCB',
  1,
  1, CURRENT_TIMESTAMP, 1,31
);
INSERT INTO AD_CHRT (
  ID,
  PROGRAM_ID,
  CURRICULUM_ID,
  CODE,
  DESCRIPTION,
  CLASSIFICATION,
  C_ID, C_TS, M_ST,SESSION_ID)
VALUES (
  nextval('SQ_AD_CHRT'),
  (SELECT ID FROM AD_PRGM where code = 'PBI-PHD-PCC'),
  (SELECT ID FROM AD_CRLM where code = 'PBI-PHD-PCC' || '-CRLM-0001'),
  (SELECT CODE || '-CHRT-201720181' FROM AD_PRGM where code = 'PBI-PHD-PCC'),
  'COHORT PBI-PHD-PCC',
  1,
  1, CURRENT_TIMESTAMP, 1,31
);
INSERT INTO AD_CHRT (
  ID,
  PROGRAM_ID,
  CURRICULUM_ID,
  CODE,
  DESCRIPTION,
  CLASSIFICATION,
  C_ID, C_TS, M_ST,SESSION_ID)
VALUES (
  nextval('SQ_AD_CHRT'),
  (SELECT ID FROM AD_PRGM where code = 'PBI-MASTER-MCS'),
  (SELECT ID FROM AD_CRLM where code = 'PBI-MASTER-MCS' || '-CRLM-0001'),
  (SELECT CODE || '-CHRT-201720181' FROM AD_PRGM where code = 'PBI-MASTER-MCS'),
  'COHORT PBI-MASTER-MCS',
  1,
  1, CURRENT_TIMESTAMP, 1,31
);
INSERT INTO AD_CHRT (
  ID,
  PROGRAM_ID,
  CURRICULUM_ID,
  CODE,
  DESCRIPTION,
  CLASSIFICATION,
  C_ID, C_TS, M_ST,SESSION_ID)
VALUES (
  nextval('SQ_AD_CHRT'),
  (SELECT ID FROM AD_PRGM where code = 'PBI-MASTER-MCN'),
  (SELECT ID FROM AD_CRLM where code = 'PBI-MASTER-MCN' || '-CRLM-0001'),
  (SELECT CODE || '-CHRT-201720181' FROM AD_PRGM where code = 'PBI-MASTER-MCN'),
  'COHORT PBI-MASTER-MCN',
  1,
  1, CURRENT_TIMESTAMP, 1,31
);
INSERT INTO AD_CHRT (
  ID,
  PROGRAM_ID,
  CURRICULUM_ID,
  CODE,
  DESCRIPTION,
  CLASSIFICATION,
  C_ID, C_TS, M_ST,SESSION_ID)
VALUES (
  nextval('SQ_AD_CHRT'),
  (SELECT ID FROM AD_PRGM where code = 'PBI-MASTER-MCO'),
  (SELECT ID FROM AD_CRLM where code = 'PBI-MASTER-MCO' || '-CRLM-0001'),
  (SELECT CODE || '-CHRT-201720181' FROM AD_PRGM where code = 'PBI-MASTER-MCO'),
  'COHORT PBI-MASTER-MCO',
  1,
  1, CURRENT_TIMESTAMP, 1,31
);

INSERT INTO AD_CHRT (
  ID,
  PROGRAM_ID,
  CURRICULUM_ID,
  CODE,
  DESCRIPTION,
  CLASSIFICATION,
  C_ID, C_TS, M_ST,SESSION_ID)
VALUES (
  nextval('SQ_AD_CHRT'),
  (SELECT ID FROM AD_PRGM where code = 'PBI-MASTER-MCA'),
  (SELECT ID FROM AD_CRLM where code = 'PBI-MASTER-MCA' || '-CRLM-0001'),
  (SELECT CODE || '-CHRT-201720181' FROM AD_PRGM where code = 'PBI-MASTER-MCA'),
  'COHORT PBI-MASTER-MCA',
  1,
  1, CURRENT_TIMESTAMP, 1,31
);
INSERT INTO AD_CHRT (
  ID,
  PROGRAM_ID,
  CURRICULUM_ID,
  CODE,
  DESCRIPTION,
  CLASSIFICATION,
  C_ID, C_TS, M_ST,SESSION_ID)
VALUES (
  nextval('SQ_AD_CHRT'),
  (SELECT ID FROM AD_PRGM where code = 'PBI-MASTER-MCK'),
  (SELECT ID FROM AD_CRLM where code = 'PBI-MASTER-MCK' || '-CRLM-0001'),
  (SELECT CODE || '-CHRT-201720181' FROM AD_PRGM where code = 'PBI-MASTER-MCK'),
  'COHORT PBI-MASTER-MCK',
  1,
  1, CURRENT_TIMESTAMP, 1,31
);
INSERT INTO AD_CHRT (
  ID,
  PROGRAM_ID,
  CURRICULUM_ID,
  CODE,
  DESCRIPTION,
  CLASSIFICATION,
  C_ID, C_TS, M_ST,SESSION_ID)
VALUES (
  nextval('SQ_AD_CHRT'),
  (SELECT ID FROM AD_PRGM where code = 'PBI-MASTER-PCB'),
  (SELECT ID FROM AD_CRLM where code = 'PBI-MASTER-PCB' || '-CRLM-0001'),
  (SELECT CODE || '-CHRT-201720181' FROM AD_PRGM where code = 'PBI-MASTER-PCB'),
  'COHORT PBI-MASTER-PCB',
  1,
  1, CURRENT_TIMESTAMP, 1,31
);
INSERT INTO AD_CHRT (
  ID,
  PROGRAM_ID,
  CURRICULUM_ID,
  CODE,
  DESCRIPTION,
  CLASSIFICATION,
  C_ID, C_TS, M_ST,SESSION_ID)
VALUES (
  nextval('SQ_AD_CHRT'),
  (SELECT ID FROM AD_PRGM where code = 'PBI-MASTER-MCC'),
  (SELECT ID FROM AD_CRLM where code = 'PBI-MASTER-MCC' || '-CRLM-0001'),
  (SELECT CODE || '-CHRT-201720181' FROM AD_PRGM where code = 'PBI-MASTER-MCC'),
  'COHORT PBI-MASTER-MCC',
  1,
  1, CURRENT_TIMESTAMP, 1,31
);
INSERT INTO AD_CHRT (
  ID,
  PROGRAM_ID,
  CURRICULUM_ID,
  CODE,
  DESCRIPTION,
  CLASSIFICATION,
  C_ID, C_TS, M_ST,SESSION_ID)
VALUES (
  nextval('SQ_AD_CHRT'),
  (SELECT ID FROM AD_PRGM where code = 'FTKW-PHD-PCW'),
  (SELECT ID FROM AD_CRLM where code = 'FTKW-PHD-PCW' || '-CRLM-0001'),
  (SELECT CODE || '-CHRT-201720181' FROM AD_PRGM where code = 'FTKW-PHD-PCW'),
  'COHORT FTKW-PHD-PCW',
  1,
  1, CURRENT_TIMESTAMP, 1,31
);
INSERT INTO AD_CHRT (
  ID,
  PROGRAM_ID,
  CURRICULUM_ID,
  CODE,
  DESCRIPTION,
  CLASSIFICATION,
  C_ID, C_TS, M_ST,SESSION_ID)
VALUES (
  nextval('SQ_AD_CHRT'),
  (SELECT ID FROM AD_PRGM where code = 'FTKW-PHD-PCT'),
  (SELECT ID FROM AD_CRLM where code = 'FTKW-PHD-PCT' || '-CRLM-0001'),
  (SELECT CODE || '-CHRT-201720181' FROM AD_PRGM where code = 'FTKW-PHD-PCT'),
  'COHORT FTKW-PHD-PCT',
  1,
  1, CURRENT_TIMESTAMP, 1,31
);
INSERT INTO AD_CHRT (
  ID,
  PROGRAM_ID,
  CURRICULUM_ID,
  CODE,
  DESCRIPTION,
  CLASSIFICATION,
  C_ID, C_TS, M_ST,SESSION_ID)
VALUES (
  nextval('SQ_AD_CHRT'),
  (SELECT ID FROM AD_PRGM where code = 'FTKW-PHD-PCP'),
  (SELECT ID FROM AD_CRLM where code = 'FTKW-PHD-PCP' || '-CRLM-0001'),
  (SELECT CODE || '-CHRT-201720181' FROM AD_PRGM where code = 'FTKW-PHD-PCP'),
  'COHORT FTKW-PHD-PCP',
  1,
  1, CURRENT_TIMESTAMP, 1,31
);
INSERT INTO AD_CHRT (
  ID,
  PROGRAM_ID,
  CURRICULUM_ID,
  CODE,
  DESCRIPTION,
  CLASSIFICATION,
  C_ID, C_TS, M_ST,SESSION_ID)
VALUES (
  nextval('SQ_AD_CHRT'),
  (SELECT ID FROM AD_PRGM where code = 'FTKW-PHD-PCM'),
  (SELECT ID FROM AD_CRLM where code = 'FTKW-PHD-PCM' || '-CRLM-0001'),
  (SELECT CODE || '-CHRT-201720181' FROM AD_PRGM where code = 'FTKW-PHD-PCM'),
  'COHORT FTKW-PHD-PCM',
  1,
  1, CURRENT_TIMESTAMP, 1,31
);
INSERT INTO AD_CHRT (
  ID,
  PROGRAM_ID,
  CURRICULUM_ID,
  CODE,
  DESCRIPTION,
  CLASSIFICATION,
  C_ID, C_TS, M_ST,SESSION_ID)
VALUES (
  nextval('SQ_AD_CHRT'),
  (SELECT ID FROM AD_PRGM where code = 'FTKW-PHD-PCV'),
  (SELECT ID FROM AD_CRLM where code = 'FTKW-PHD-PCV' || '-CRLM-0001'),
  (SELECT CODE || '-CHRT-201720181' FROM AD_PRGM where code = 'FTKW-PHD-PCV'),
  'COHORT FTKW-PHD-PCV',
  1,
  1, CURRENT_TIMESTAMP, 1,31
);
INSERT INTO AD_CHRT (
  ID,
  PROGRAM_ID,
  CURRICULUM_ID,
  CODE,
  DESCRIPTION,
  CLASSIFICATION,
  C_ID, C_TS, M_ST,SESSION_ID)
VALUES (
  nextval('SQ_AD_CHRT'),
  (SELECT ID FROM AD_PRGM where code = 'FTKW-MASTER-MCW'),
  (SELECT ID FROM AD_CRLM where code = 'FTKW-MASTER-MCW' || '-CRLM-0001'),
  (SELECT CODE || '-CHRT-201720181' FROM AD_PRGM where code = 'FTKW-MASTER-MCW'),
  'COHORT FTKW-MASTER-MCW',
  1,
  1, CURRENT_TIMESTAMP, 1,31
);
INSERT INTO AD_CHRT (
  ID,
  PROGRAM_ID,
  CURRICULUM_ID,
  CODE,
  DESCRIPTION,
  CLASSIFICATION,
  C_ID, C_TS, M_ST,SESSION_ID)
VALUES (
  nextval('SQ_AD_CHRT'),
  (SELECT ID FROM AD_PRGM where code = 'FTKW-MASTER-MCT'),
  (SELECT ID FROM AD_CRLM where code = 'FTKW-MASTER-MCT' || '-CRLM-0001'),
  (SELECT CODE || '-CHRT-201720181' FROM AD_PRGM where code = 'FTKW-MASTER-MCT'),
  'COHORT FTKW-MASTER-MCT',
  1,
  1, CURRENT_TIMESTAMP, 1,31
);
INSERT INTO AD_CHRT (
  ID,
  PROGRAM_ID,
  CURRICULUM_ID,
  CODE,
  DESCRIPTION,
  CLASSIFICATION,
  C_ID, C_TS, M_ST,SESSION_ID)
VALUES (
  nextval('SQ_AD_CHRT'),
  (SELECT ID FROM AD_PRGM where code = 'FTKW-MASTER-MCP'),
  (SELECT ID FROM AD_CRLM where code = 'FTKW-MASTER-MCP' || '-CRLM-0001'),
  (SELECT CODE || '-CHRT-201720181' FROM AD_PRGM where code = 'FTKW-MASTER-MCP'),
  'COHORT FTKW-MASTER-MCP',
  1,
  1, CURRENT_TIMESTAMP, 1,31
);
INSERT INTO AD_CHRT (
  ID,
  PROGRAM_ID,
  CURRICULUM_ID,
  CODE,
  DESCRIPTION,
  CLASSIFICATION,
  C_ID, C_TS, M_ST,SESSION_ID)
VALUES (
  nextval('SQ_AD_CHRT'),
  (SELECT ID FROM AD_PRGM where code = 'FTKW-MASTER-MCM'),
  (SELECT ID FROM AD_CRLM where code = 'FTKW-MASTER-MCM' || '-CRLM-0001'),
  (SELECT CODE || '-CHRT-201720181' FROM AD_PRGM where code = 'FTKW-MASTER-MCM'),
  'COHORT FTKW-MASTER-MCM',
  1,
  1, CURRENT_TIMESTAMP, 1,31
);
INSERT INTO AD_CHRT (
  ID,
  PROGRAM_ID,
  CURRICULUM_ID,
  CODE,
  DESCRIPTION,
  CLASSIFICATION,
  C_ID, C_TS, M_ST,SESSION_ID)
VALUES (
  nextval('SQ_AD_CHRT'),
  (SELECT ID FROM AD_PRGM where code = 'FTKW-MASTER-MCV'),
  (SELECT ID FROM AD_CRLM where code = 'FTKW-MASTER-MCV' || '-CRLM-0001'),
  (SELECT CODE || '-CHRT-201720181' FROM AD_PRGM where code = 'FTKW-MASTER-MCV'),
  'COHORT FTKW-MASTER-MCV',
  1,
  1, CURRENT_TIMESTAMP, 1,31
);
INSERT INTO AD_CHRT (
  ID,
  PROGRAM_ID,
  CURRICULUM_ID,
  CODE,
  DESCRIPTION,
  CLASSIFICATION,
  C_ID, C_TS, M_ST,SESSION_ID)
VALUES (
  nextval('SQ_AD_CHRT'),
  (SELECT ID FROM AD_PRGM where code = 'FKP-PHD-PAM'),
  (SELECT ID FROM AD_CRLM where code = 'FKP-PHD-PAM' || '-CRLM-0001'),
  (SELECT CODE || '-CHRT-201720181' FROM AD_PRGM where code = 'FKP-PHD-PAM'),
  'COHORT FKP-PHD-PAM',
  1,
  1, CURRENT_TIMESTAMP, 1,31
);
INSERT INTO AD_CHRT (
  ID,
  PROGRAM_ID,
  CURRICULUM_ID,
  CODE,
  DESCRIPTION,
  CLASSIFICATION,
  C_ID, C_TS, M_ST,SESSION_ID)
VALUES (
  nextval('SQ_AD_CHRT'),
  (SELECT ID FROM AD_PRGM where code = 'FKP-PHD-PAF'),
  (SELECT ID FROM AD_CRLM where code = 'FKP-PHD-PAF' || '-CRLM-0001'),
  (SELECT CODE || '-CHRT-201720181' FROM AD_PRGM where code = 'FKP-PHD-PAF'),
  'COHORT FKP-PHD-PAF',
  1,
  1, CURRENT_TIMESTAMP, 1,31
);
INSERT INTO AD_CHRT (
  ID,
  PROGRAM_ID,
  CURRICULUM_ID,
  CODE,
  DESCRIPTION,
  CLASSIFICATION,
  C_ID, C_TS, M_ST,SESSION_ID)
VALUES (
  nextval('SQ_AD_CHRT'),
  (SELECT ID FROM AD_PRGM where code = 'FKP-PHD-PAA'),
  (SELECT ID FROM AD_CRLM where code = 'FKP-PHD-PAA' || '-CRLM-0001'),
  (SELECT CODE || '-CHRT-201720181' FROM AD_PRGM where code = 'FKP-PHD-PAA'),
  'COHORT FKP-PHD-PAA',
  1,
  1, CURRENT_TIMESTAMP, 1,31
);
INSERT INTO AD_CHRT (
  ID,
  PROGRAM_ID,
  CURRICULUM_ID,
  CODE,
  DESCRIPTION,
  CLASSIFICATION,
  C_ID, C_TS, M_ST,SESSION_ID)
VALUES (
  nextval('SQ_AD_CHRT'),
  (SELECT ID FROM AD_PRGM where code = 'FKP-PHD-PAR'),
  (SELECT ID FROM AD_CRLM where code = 'FKP-PHD-PAR' || '-CRLM-0001'),
  (SELECT CODE || '-CHRT-201720181' FROM AD_PRGM where code = 'FKP-PHD-PAR'),
  'COHORT FKP-PHD-PAR',
  1,
  1, CURRENT_TIMESTAMP, 1,31
);
INSERT INTO AD_CHRT (
  ID,
  PROGRAM_ID,
  CURRICULUM_ID,
  CODE,
  DESCRIPTION,
  CLASSIFICATION,
  C_ID, C_TS, M_ST,SESSION_ID)
VALUES (
  nextval('SQ_AD_CHRT'),
  (SELECT ID FROM AD_PRGM where code = 'FKP-PHD-PAK'),
  (SELECT ID FROM AD_CRLM where code = 'FKP-PHD-PAK' || '-CRLM-0001'),
  (SELECT CODE || '-CHRT-201720181' FROM AD_PRGM where code = 'FKP-PHD-PAK'),
  'COHORT FKP-PHD-PAK',
  1,
  1, CURRENT_TIMESTAMP, 1,31
);
INSERT INTO AD_CHRT (
  ID,
  PROGRAM_ID,
  CURRICULUM_ID,
  CODE,
  DESCRIPTION,
  CLASSIFICATION,
  C_ID, C_TS, M_ST,SESSION_ID)
VALUES (
  nextval('SQ_AD_CHRT'),
  (SELECT ID FROM AD_PRGM where code = 'FKP-PHD-PAW'),
  (SELECT ID FROM AD_CRLM where code = 'FKP-PHD-PAW' || '-CRLM-0001'),
  (SELECT CODE || '-CHRT-201720181' FROM AD_PRGM where code = 'FKP-PHD-PAW'),
  'COHORT FKP-PHD-PAW',
  1,
  1, CURRENT_TIMESTAMP, 1,31
);
INSERT INTO AD_CHRT (
  ID,
  PROGRAM_ID,
  CURRICULUM_ID,
  CODE,
  DESCRIPTION,
  CLASSIFICATION,
  C_ID, C_TS, M_ST,SESSION_ID)
VALUES (
  nextval('SQ_AD_CHRT'),
  (SELECT ID FROM AD_PRGM where code = 'FKP-PHD-PAH'),
  (SELECT ID FROM AD_CRLM where code = 'FKP-PHD-PAH' || '-CRLM-0001'),
  (SELECT CODE || '-CHRT-201720181' FROM AD_PRGM where code = 'FKP-PHD-PAH'),
  'COHORT FKP-PHD-PAH',
  1,
  1, CURRENT_TIMESTAMP, 1,31
);
INSERT INTO AD_CHRT (
  ID,
  PROGRAM_ID,
  CURRICULUM_ID,
  CODE,
  DESCRIPTION,
  CLASSIFICATION,
  C_ID, C_TS, M_ST,SESSION_ID)
VALUES (
  nextval('SQ_AD_CHRT'),
  (SELECT ID FROM AD_PRGM where code = 'FKP-PHD-PAP'),
  (SELECT ID FROM AD_CRLM where code = 'FKP-PHD-PAP' || '-CRLM-0001'),
  (SELECT CODE || '-CHRT-201720181' FROM AD_PRGM where code = 'FKP-PHD-PAP'),
  'COHORT FKP-PHD-PAP',
  1,
  1, CURRENT_TIMESTAMP, 1,31
);
INSERT INTO AD_CHRT (
  ID,
  PROGRAM_ID,
  CURRICULUM_ID,
  CODE,
  DESCRIPTION,
  CLASSIFICATION,
  C_ID, C_TS, M_ST,SESSION_ID)
VALUES (
  nextval('SQ_AD_CHRT'),
  (SELECT ID FROM AD_PRGM where code = 'FKP-PHD-PMS'),
  (SELECT ID FROM AD_CRLM where code = 'FKP-PHD-PMS' || '-CRLM-0001'),
  (SELECT CODE || '-CHRT-201720181' FROM AD_PRGM where code = 'FKP-PHD-PMS'),
  'COHORT FKP-PHD-PMS',
  1,
  1, CURRENT_TIMESTAMP, 1,31
);
INSERT INTO AD_CHRT (
  ID,
  PROGRAM_ID,
  CURRICULUM_ID,
  CODE,
  DESCRIPTION,
  CLASSIFICATION,
  C_ID, C_TS, M_ST,SESSION_ID)
VALUES (
  nextval('SQ_AD_CHRT'),
  (SELECT ID FROM AD_PRGM where code = 'FKP-MASTER-MAM'),
  (SELECT ID FROM AD_CRLM where code = 'FKP-MASTER-MAM' || '-CRLM-0001'),
  (SELECT CODE || '-CHRT-201720181' FROM AD_PRGM where code = 'FKP-MASTER-MAM'),
  'COHORT FKP-MASTER-MAM',
  1,
  1, CURRENT_TIMESTAMP, 1,31
);
INSERT INTO AD_CHRT (
  ID,
  PROGRAM_ID,
  CURRICULUM_ID,
  CODE,
  DESCRIPTION,
  CLASSIFICATION,
  C_ID, C_TS, M_ST,SESSION_ID)
VALUES (
  nextval('SQ_AD_CHRT'),
  (SELECT ID FROM AD_PRGM where code = 'FKP-MASTER-MAF'),
  (SELECT ID FROM AD_CRLM where code = 'FKP-MASTER-MAF' || '-CRLM-0001'),
  (SELECT CODE || '-CHRT-201720181' FROM AD_PRGM where code = 'FKP-MASTER-MAF'),
  'COHORT FKP-MASTER-MAF',
  1,
  1, CURRENT_TIMESTAMP, 1,31
);
INSERT INTO AD_CHRT (
  ID,
  PROGRAM_ID,
  CURRICULUM_ID,
  CODE,
  DESCRIPTION,
  CLASSIFICATION,
  C_ID, C_TS, M_ST,SESSION_ID)
VALUES (
  nextval('SQ_AD_CHRT'),
  (SELECT ID FROM AD_PRGM where code = 'FKP-MASTER-MAA'),
  (SELECT ID FROM AD_CRLM where code = 'FKP-MASTER-MAA' || '-CRLM-0001'),
  (SELECT CODE || '-CHRT-201720181' FROM AD_PRGM where code = 'FKP-MASTER-MAA'),
  'COHORT FKP-MASTER-MAA',
  1,
  1, CURRENT_TIMESTAMP, 1,31
);
INSERT INTO AD_CHRT (
  ID,
  PROGRAM_ID,
  CURRICULUM_ID,
  CODE,
  DESCRIPTION,
  CLASSIFICATION,
  C_ID, C_TS, M_ST,SESSION_ID)
VALUES (
  nextval('SQ_AD_CHRT'),
  (SELECT ID FROM AD_PRGM where code = 'FKP-MASTER-MAR'),
  (SELECT ID FROM AD_CRLM where code = 'FKP-MASTER-MAR' || '-CRLM-0001'),
  (SELECT CODE || '-CHRT-201720181' FROM AD_PRGM where code = 'FKP-MASTER-MAR'),
  'COHORT FKP-MASTER-MAR',
  1,
  1, CURRENT_TIMESTAMP, 1,31
);
INSERT INTO AD_CHRT (
  ID,
  PROGRAM_ID,
  CURRICULUM_ID,
  CODE,
  DESCRIPTION,
  CLASSIFICATION,
  C_ID, C_TS, M_ST,SESSION_ID)
VALUES (
  nextval('SQ_AD_CHRT'),
  (SELECT ID FROM AD_PRGM where code = 'FKP-MASTER-MAK'),
  (SELECT ID FROM AD_CRLM where code = 'FKP-MASTER-MAK' || '-CRLM-0001'),
  (SELECT CODE || '-CHRT-201720181' FROM AD_PRGM where code = 'FKP-MASTER-MAK'),
  'COHORT FKP-MASTER-MAK',
  1,
  1, CURRENT_TIMESTAMP, 1,31
);
INSERT INTO AD_CHRT (
  ID,
  PROGRAM_ID,
  CURRICULUM_ID,
  CODE,
  DESCRIPTION,
  CLASSIFICATION,
  C_ID, C_TS, M_ST,SESSION_ID)
VALUES (
  nextval('SQ_AD_CHRT'),
  (SELECT ID FROM AD_PRGM where code = 'FKP-MASTER-MAW'),
  (SELECT ID FROM AD_CRLM where code = 'FKP-MASTER-MAW' || '-CRLM-0001'),
  (SELECT CODE || '-CHRT-201720181' FROM AD_PRGM where code = 'FKP-MASTER-MAW'),
  'COHORT FKP-MASTER-MAW',
  1,
  1, CURRENT_TIMESTAMP, 1,31
);
INSERT INTO AD_CHRT (
  ID,
  PROGRAM_ID,
  CURRICULUM_ID,
  CODE,
  DESCRIPTION,
  CLASSIFICATION,
  C_ID, C_TS, M_ST,SESSION_ID)
VALUES (
  nextval('SQ_AD_CHRT'),
  (SELECT ID FROM AD_PRGM where code = 'FKP-MASTER-MAH'),
  (SELECT ID FROM AD_CRLM where code = 'FKP-MASTER-MAH' || '-CRLM-0001'),
  (SELECT CODE || '-CHRT-201720181' FROM AD_PRGM where code = 'FKP-MASTER-MAH'),
  'COHORT FKP-MASTER-MAH',
  1,
  1, CURRENT_TIMESTAMP, 1,31
);
INSERT INTO AD_CHRT (
  ID,
  PROGRAM_ID,
  CURRICULUM_ID,
  CODE,
  DESCRIPTION,
  CLASSIFICATION,
  C_ID, C_TS, M_ST,SESSION_ID)
VALUES (
  nextval('SQ_AD_CHRT'),
  (SELECT ID FROM AD_PRGM where code = 'FKP-MASTER-MAP'),
  (SELECT ID FROM AD_CRLM where code = 'FKP-MASTER-MAP' || '-CRLM-0001'),
  (SELECT CODE || '-CHRT-201720181' FROM AD_PRGM where code = 'FKP-MASTER-MAP'),
  'COHORT FKP-MASTER-MAP',
  1,
  1, CURRENT_TIMESTAMP, 1,31
);
INSERT INTO AD_CHRT (
  ID,
  PROGRAM_ID,
  CURRICULUM_ID,
  CODE,
  DESCRIPTION,
  CLASSIFICATION,
  C_ID, C_TS, M_ST,SESSION_ID)
VALUES (
  nextval('SQ_AD_CHRT'),
  (SELECT ID FROM AD_PRGM where code = 'FKP-MASTER-MMS'),
  (SELECT ID FROM AD_CRLM where code = 'FKP-MASTER-MMS' || '-CRLM-0001'),
  (SELECT CODE || '-CHRT-201720181' FROM AD_PRGM where code = 'FKP-MASTER-MMS'),
  'COHORT FKP-MASTER-MMS',
  1,
  1, CURRENT_TIMESTAMP, 1,31
);
INSERT INTO AD_CHRT (
  ID,
  PROGRAM_ID,
  CURRICULUM_ID,
  CODE,
  DESCRIPTION,
  CLASSIFICATION,
  C_ID, C_TS, M_ST,SESSION_ID)
VALUES (
  nextval('SQ_AD_CHRT'),
  (SELECT ID FROM AD_PRGM where code = 'MGSEB-MBA'),
  (SELECT ID FROM AD_CRLM where code = 'MGSEB-MBA' || '-CRLM-0001'),
  (SELECT CODE || '-CHRT-001' FROM AD_PRGM where code = 'MGSEB-MBA'),
  'COHORT 001',
  1,
  1, CURRENT_TIMESTAMP, 1,31
);
