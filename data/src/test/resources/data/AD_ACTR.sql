-- student 1
INSERT INTO AD_ACTR (ID, IDENTITY_NO, NAME, EMAIL, PHONE, MOBILE, FAX, ACTOR_TYPE, C_TS, C_ID, M_ST)
VALUES
  (nextval('SQ_AD_ACTR'), 'A18B0001EP', 'MUHAMMAD AMMAR FAIZ BIN AZMAN', 'ammar@umk.edu.my', '097111771', '0123450000', NULL, 1,
                          CURRENT_TIMESTAMP, 1, 1);

INSERT INTO AD_STDN (ID, STUDENT_STATUS, COHORT_ID,STUDY_MODE_ID, BALANCE, OUTSTANDING, MEMO) 
VALUES (currval('SQ_AD_ACTR'), 1,1,1, 500.00, TRUE, 'Outstanding Payments');

UPDATE AD_USER SET ACTOR_ID = currval('SQ_AD_ACTR') WHERE email = 'ammar@umk.edu.my';

-- student 10
INSERT INTO AD_ACTR (ID, IDENTITY_NO, NAME, EMAIL, PHONE, MOBILE, FAX, ACTOR_TYPE, C_TS, C_ID, M_ST)
VALUES
  (nextval('SQ_AD_ACTR'), 'A18F0001EP', 'SITI SAMIYA BINTI RUSLI', 'siti.samiya@umk.edu.my', '097111775', '0123450004', NULL, 1,
                          CURRENT_TIMESTAMP, 1, 1);

INSERT INTO AD_STDN (ID, STUDENT_STATUS, COHORT_ID,STUDY_MODE_ID, BALANCE, OUTSTANDING, MEMO) VALUES (currval('SQ_AD_ACTR'), 1, 2,1, 0.00, FALSE, 'Memo');

UPDATE AD_USER
SET actor_id = currval('SQ_AD_ACTR')
WHERE email = 'siti.samiya@umk.edu.my';


-- lecturer 1
INSERT INTO AD_ACTR (ID, IDENTITY_NO, NAME, EMAIL, PHONE, MOBILE, FAX, ACTOR_TYPE, C_TS, C_ID, M_ST)
VALUES
  (nextval('SQ_AD_ACTR'), '00179A', 'Noraani Binti Mustapha', 'noraani@umk.edu.my', '09-7717000', '09-7717000', '09-7717000', 0,
                          CURRENT_TIMESTAMP, 1, 1);

INSERT INTO AD_STAF (ID, STAFF_TYPE,TITLE,FACULTY_ID,PROGRAM_ID) VALUES (currval('SQ_AD_ACTR'), 0,'Prof Madya Dr',10,1);

UPDATE AD_USER
SET actor_id = currval('SQ_AD_ACTR')
WHERE email = 'noraani@umk.edu.my';

-- lecturer 2
INSERT INTO AD_ACTR (ID, IDENTITY_NO, NAME, EMAIL, PHONE, MOBILE, FAX, ACTOR_TYPE, C_TS, C_ID, M_ST)
VALUES
  (nextval('SQ_AD_ACTR'), '00180A', 'Wee Yu Ghee', 'yughee@umk.edu.my', '09-7716000', '09-7717000', '09-7717000', 0,
                          CURRENT_TIMESTAMP, 1, 1);

INSERT INTO AD_STAF (ID,STAFF_TYPE,TITLE,FACULTY_ID,PROGRAM_ID) VALUES (currval('SQ_AD_ACTR'), 0,'Prof Madya Dr', 1, 1);


UPDATE AD_USER
SET actor_id = currval('SQ_AD_ACTR')
WHERE email = 'yughee@umk.edu.my';

-- lecturer 3
INSERT INTO AD_ACTR (ID, IDENTITY_NO, NAME, EMAIL, PHONE, MOBILE, FAX, ACTOR_TYPE, C_TS, C_ID, M_ST)
VALUES
  (nextval('SQ_AD_ACTR'), '01564A', 'Ahmed Hamdy Elbadawy Ahmed Mahmoud', 'ahmed.h@umk.edu.my', '09-7717000', '09-7717000', '09-7717000', 0,
                          CURRENT_TIMESTAMP, 1, 1);

INSERT INTO AD_STAF (ID,STAFF_TYPE,TITLE,FACULTY_ID,PROGRAM_ID) VALUES (currval('SQ_AD_ACTR'), 0,'Encik', 1,1);


UPDATE AD_USER
SET actor_id = currval('SQ_AD_ACTR')
WHERE email = 'ahmed.h@umk.edu.my';

-- admin staff 1
INSERT INTO AD_ACTR (ID, IDENTITY_NO, NAME, EMAIL, PHONE, MOBILE, FAX, ACTOR_TYPE, C_TS, C_ID, M_ST)
VALUES
  (nextval('SQ_AD_ACTR'), '01432A', 'Muhamad Saufi Bin Che Rusuli', 'msaufi@umk.edu.my', '09-7717000', '09-7717000', '09-7717000', 0,
                          CURRENT_TIMESTAMP, 1, 1);

INSERT INTO AD_STAF (ID,STAFF_TYPE,TITLE,FACULTY_ID,PROGRAM_ID) VALUES (currval('SQ_AD_ACTR'), 0,'Dr', 10,1);


UPDATE AD_USER
SET actor_id = currval('SQ_AD_ACTR')
WHERE email = 'msaufi@umk.edu.my';


-- admin staff 2
INSERT INTO AD_ACTR (ID, IDENTITY_NO, NAME, EMAIL, PHONE, MOBILE, FAX, ACTOR_TYPE, C_TS, C_ID, M_ST)
VALUES
  (nextval('SQ_AD_ACTR'), '00861A', 'Balakrishnan A/L Parasuraman', 'balakrishnan@umk.edu.my', '09-7717047/10861', '09-7717047/10861', '09-7717047/10861', 0,
                          CURRENT_TIMESTAMP, 1, 1);

INSERT INTO AD_STAF (ID,STAFF_TYPE,TITLE,FACULTY_ID,PROGRAM_ID) VALUES (currval('SQ_AD_ACTR'), 0,'Prof Dr', 1,1);


UPDATE AD_USER
SET actor_id = currval('SQ_AD_ACTR')
WHERE email = 'balakrishnan@umk.edu.my';

-- admin staff 3
INSERT INTO AD_ACTR (ID, IDENTITY_NO, NAME, EMAIL, PHONE, MOBILE, FAX, ACTOR_TYPE, C_TS, C_ID, M_ST)
VALUES
  (nextval('SQ_AD_ACTR'), '00764A', 'Hishamuddin Bin Md Som', 'hishamuddin.ms@umk.edu.my', '097717000', '097717000', '097717000', 0,
                          CURRENT_TIMESTAMP, 1, 1);

INSERT INTO AD_STAF (ID,STAFF_TYPE,TITLE,FACULTY_ID,PROGRAM_ID) VALUES (currval('SQ_AD_ACTR'), 0,'Prof Dr', 2,1);


UPDATE AD_USER
SET actor_id = currval('SQ_AD_ACTR')
WHERE email = 'hishamuddin.ms@umk.edu.my';

-- admin staff 4
INSERT INTO AD_ACTR (ID, IDENTITY_NO, NAME, EMAIL, PHONE, MOBILE, FAX, ACTOR_TYPE, C_TS, C_ID, M_ST)
VALUES
  (nextval('SQ_AD_ACTR'), '00747A', 'Nik Maheran Binti Nik Muhammad', 'nikmaheran@umk.edu.my', '097717301/7300', '097717301/7300', '097717301/7300', 0,
                          CURRENT_TIMESTAMP, 1, 1);

INSERT INTO AD_STAF (ID,STAFF_TYPE,TITLE,FACULTY_ID,PROGRAM_ID) VALUES (currval('SQ_AD_ACTR'), 0,'Prof Dr',3,1);


UPDATE AD_USER
SET actor_id = currval('SQ_AD_ACTR')
WHERE email = 'nikmaheran@umk.edu.my';

-- admin staff 5
INSERT INTO AD_ACTR (ID, IDENTITY_NO, NAME, EMAIL, PHONE, MOBILE, FAX, ACTOR_TYPE, C_TS, C_ID, M_ST)
VALUES
  (nextval('SQ_AD_ACTR'), '00756A', 'Raja Suzana Binti Raja Kasim', 'rajasuzana@umk.edu.my', '03-89923016', '03-89923016', '03-89923016', 0,
                          CURRENT_TIMESTAMP, 1, 1);

INSERT INTO AD_STAF (ID,STAFF_TYPE,TITLE,FACULTY_ID,PROGRAM_ID) VALUES (currval('SQ_AD_ACTR'), 0,'Prof Dr', 4,1);


UPDATE AD_USER
SET actor_id = currval('SQ_AD_ACTR')
WHERE email = 'rajasuzana@umk.edu.my';

-- admin staff 6
INSERT INTO AD_ACTR (ID, IDENTITY_NO, NAME, EMAIL, PHONE, MOBILE, FAX, ACTOR_TYPE, C_TS, C_ID, M_ST)
VALUES
  (nextval('SQ_AD_ACTR'), '00713A', 'Razli Bin Che Razak', 'razlicr@umk.edu.my', '09-7717165', '09-7717165', '09-7717165', 0,
                          CURRENT_TIMESTAMP, 1, 1);

INSERT INTO AD_STAF (ID,STAFF_TYPE,TITLE,FACULTY_ID,PROGRAM_ID) VALUES (currval('SQ_AD_ACTR'), 0,'Prof Dr', 5,1);


UPDATE AD_USER
SET actor_id = currval('SQ_AD_ACTR')
WHERE email = 'razlicr@umk.edu.my';

-- admin staff 7
INSERT INTO AD_ACTR (ID, IDENTITY_NO, NAME, EMAIL, PHONE, MOBILE, FAX, ACTOR_TYPE, C_TS, C_ID, M_ST)
VALUES
  (nextval('SQ_AD_ACTR'), '00712A', 'Sazali Bin Abd. Wahab', 'sazali@umk.edu.my', '09-7717049', '09-7717049', '09-7717049', 0,
                          CURRENT_TIMESTAMP, 1, 1);

INSERT INTO AD_STAF (ID,STAFF_TYPE,TITLE,FACULTY_ID,PROGRAM_ID) VALUES (currval('SQ_AD_ACTR'), 0,'Prof Dr', 6,1);


UPDATE AD_USER
SET actor_id = currval('SQ_AD_ACTR')
WHERE email = 'sazali@umk.edu.my';

-- admin staff 8
INSERT INTO AD_ACTR (ID, IDENTITY_NO, NAME, EMAIL, PHONE, MOBILE, FAX, ACTOR_TYPE, C_TS, C_ID, M_ST)
VALUES
  (nextval('SQ_AD_ACTR'), '00280A', ' Mohd Rafi Bin Yaacob', 'rafi@umk.edu.my', '09-7717265', '09-7717265', '09-7717265', 0,
                          CURRENT_TIMESTAMP, 1, 1);

INSERT INTO AD_STAF (ID,STAFF_TYPE,TITLE,FACULTY_ID,PROGRAM_ID) VALUES (currval('SQ_AD_ACTR'), 0,'Prof Madya Dr', 7,1);


UPDATE AD_USER
SET actor_id = currval('SQ_AD_ACTR')
WHERE email = 'rafi@umk.edu.my';

-- admin staff 9
INSERT INTO AD_ACTR (ID, IDENTITY_NO, NAME, EMAIL, PHONE, MOBILE, FAX, ACTOR_TYPE, C_TS, C_ID, M_ST)
VALUES
  (nextval('SQ_AD_ACTR'), '01001A', 'Abu Sofian Bin Yaacob', 'abusofian@umk.edu.my', '09-7717245', '09-7717245', '09-7717245', 0,
                          CURRENT_TIMESTAMP, 1, 1);

INSERT INTO AD_STAF (ID,STAFF_TYPE,TITLE,FACULTY_ID,PROGRAM_ID) VALUES (currval('SQ_AD_ACTR'), 0,'Prof Madya Dr',8,1);


UPDATE AD_USER
SET actor_id = currval('SQ_AD_ACTR')
WHERE email = 'abusofian@umk.edu.my';

-- admin staff 10
INSERT INTO AD_ACTR (ID, IDENTITY_NO, NAME, EMAIL, PHONE, MOBILE, FAX, ACTOR_TYPE, C_TS, C_ID, M_ST)
VALUES
  (nextval('SQ_AD_ACTR'), '01137A', 'Mohammad Bin Ismail', 'mohammad.i@umk.edu.my', '09-7717229', '09-7717229', '09-7717229', 0,
                          CURRENT_TIMESTAMP, 1, 1);

INSERT INTO AD_STAF (ID,STAFF_TYPE,TITLE,FACULTY_ID,PROGRAM_ID) VALUES (currval('SQ_AD_ACTR'), 0,'Prof Madya Dr', 9,1);


UPDATE AD_USER
SET actor_id = currval('SQ_AD_ACTR')
WHERE email = 'mohammad.i@umk.edu.my';


-- MGSEB ADMIN
INSERT INTO AD_ACTR (ID, IDENTITY_NO, NAME, EMAIL, PHONE, MOBILE, FAX, ACTOR_TYPE, C_TS, C_ID, M_ST)
VALUES
  (nextval('SQ_AD_ACTR'), 'MGSEB0001', 'Fatin Hamamah Binti Burhanudin', 'hamamah@umk.edu.my', '097717196', '097717196', '097717196', 0,
                          CURRENT_TIMESTAMP, 1, 1);

INSERT INTO AD_STAF (ID,STAFF_TYPE,TITLE,FACULTY_ID) VALUES (currval('SQ_AD_ACTR'), 1,'Puan', 10);


UPDATE AD_USER
SET actor_id = currval('SQ_AD_ACTR')
WHERE email = 'hamamah@umk.edu.my';


-- MGSEB ADMIN
INSERT INTO AD_ACTR (ID, IDENTITY_NO, NAME, EMAIL, PHONE, MOBILE, FAX, ACTOR_TYPE, C_TS, C_ID, M_ST)
VALUES
  (nextval('SQ_AD_ACTR'), 'MGSEB0002', 'Rosharumi Binti Mat Hussin', 'rosharumi@umk.edu.my', '09-7717028', '09-7717028', '09-7717028', 0,
                          CURRENT_TIMESTAMP, 1, 1);

INSERT INTO AD_STAF (ID,STAFF_TYPE,TITLE,FACULTY_ID) VALUES (currval('SQ_AD_ACTR'), 1,'Puan', 10);


UPDATE AD_USER
SET actor_id = currval('SQ_AD_ACTR')
WHERE email = 'rosharumi@umk.edu.my';

-- CPS ADMIN
INSERT INTO AD_ACTR (ID, IDENTITY_NO, NAME, EMAIL, PHONE, MOBILE, FAX, ACTOR_TYPE, C_TS, C_ID, M_ST)
VALUES
  (nextval('SQ_AD_ACTR'), 'CPS0001', 'Murhazlan Bin Mohamed', 'murhazlan@umk.edu.my', '09-7717031', '09-7717031', '09-7717031', 0,
                          CURRENT_TIMESTAMP, 1, 1);

INSERT INTO AD_STAF (ID,STAFF_TYPE,TITLE,FACULTY_ID) VALUES (currval('SQ_AD_ACTR'), 1,'Encik', 14);


UPDATE AD_USER
SET actor_id = currval('SQ_AD_ACTR')
WHERE email = 'murhazlan@umk.edu.my';

-- CPS ADMIN
INSERT INTO AD_ACTR (ID, IDENTITY_NO, NAME, EMAIL, PHONE, MOBILE, FAX, ACTOR_TYPE, C_TS, C_ID, M_ST)
VALUES
  (nextval('SQ_AD_ACTR'), 'CPS0002', 'Siti Aisyah Binti Ahmad', 'sitiaisyah@umk.edu.my', '09-7717145/10547', '09-7717145/10547', '09-7717145/10547', 0,
                          CURRENT_TIMESTAMP, 1, 1);

INSERT INTO AD_STAF (ID,STAFF_TYPE,TITLE,FACULTY_ID) VALUES (currval('SQ_AD_ACTR'), 1,'Puan', 14);


UPDATE AD_USER
SET actor_id = currval('SQ_AD_ACTR')
WHERE email = 'sitiaisyah@umk.edu.my';


