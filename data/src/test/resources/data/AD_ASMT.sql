INSERT INTO AD_ASMT (ID,OFFERING_ID, CANONICAL_CODE, CATEGORY, CODE, DESCRIPTION, ORDINAL, TOTAL_SCORE, TYPE, M_ST, C_ID, C_TS,WEIGHT)
VALUES (nextval('SQ_AD_ASMT'),
							  (select ID FROM AD_OFRG WHERE CODE = 'GST5023'), 'MBA-MASTER-GST5023-QUIZ-1',
							  0,'GST5023-QUIZ-1','QUIZ 1',1,100,0,
							  1,1,CURRENT_TIMESTAMP,10);