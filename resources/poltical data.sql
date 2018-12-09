--------------------------------------------------------
--  File created - Sunday-December-09-2018   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Sequence COMMENTS_SEQUENCE
--------------------------------------------------------

   CREATE SEQUENCE  "RAHUL"."COMMENTS_SEQUENCE"  MINVALUE 1 MAXVALUE 100000 INCREMENT BY 1 START WITH 100 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence DISCUSSION_SEQUENCE
--------------------------------------------------------

   CREATE SEQUENCE  "RAHUL"."DISCUSSION_SEQUENCE"  MINVALUE 1 MAXVALUE 100000 INCREMENT BY 1 START WITH 120 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence GROUPDETAILS_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "RAHUL"."GROUPDETAILS_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 21 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence GROUPDETAIL_SEQUENCE
--------------------------------------------------------

   CREATE SEQUENCE  "RAHUL"."GROUPDETAIL_SEQUENCE"  MINVALUE 1 MAXVALUE 100000 INCREMENT BY 1 START WITH 140 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence GROUPFOLLOWERS_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "RAHUL"."GROUPFOLLOWERS_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence GROUPFOLLOWERS_SEQUENCE
--------------------------------------------------------

   CREATE SEQUENCE  "RAHUL"."GROUPFOLLOWERS_SEQUENCE"  MINVALUE 1 MAXVALUE 100000 INCREMENT BY 1 START WITH 160 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence GROUPPROGRESS_SEQUENCE
--------------------------------------------------------

   CREATE SEQUENCE  "RAHUL"."GROUPPROGRESS_SEQUENCE"  MINVALUE 1 MAXVALUE 100000 INCREMENT BY 1 START WITH 100 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence NOTIFICATION_SEQUENCE
--------------------------------------------------------

   CREATE SEQUENCE  "RAHUL"."NOTIFICATION_SEQUENCE"  MINVALUE 1 MAXVALUE 100000 INCREMENT BY 1 START WITH 100 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence POL
--------------------------------------------------------

   CREATE SEQUENCE  "RAHUL"."POL"  MINVALUE 1 MAXVALUE 100000 INCREMENT BY 1 START WITH 21 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence POLITICAL
--------------------------------------------------------

   CREATE SEQUENCE  "RAHUL"."POLITICAL"  MINVALUE 1 MAXVALUE 100000000 INCREMENT BY 1 START WITH 1254 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence POLITICALUSER_SEQUENCE
--------------------------------------------------------

   CREATE SEQUENCE  "RAHUL"."POLITICALUSER_SEQUENCE"  MINVALUE 1 MAXVALUE 100000 INCREMENT BY 1 START WITH 1041 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence POLLANSWER_SEQUENCE
--------------------------------------------------------

   CREATE SEQUENCE  "RAHUL"."POLLANSWER_SEQUENCE"  MINVALUE 1 MAXVALUE 5000 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  CYCLE ;
--------------------------------------------------------
--  DDL for Sequence POLL_SEQUENCE
--------------------------------------------------------

   CREATE SEQUENCE  "RAHUL"."POLL_SEQUENCE"  MINVALUE 1 MAXVALUE 100000 INCREMENT BY 1 START WITH 100 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence USER_SEQUENCE
--------------------------------------------------------

   CREATE SEQUENCE  "RAHUL"."USER_SEQUENCE"  MINVALUE 1 MAXVALUE 100000 INCREMENT BY 1 START WITH 1314 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Table COMMENTS
--------------------------------------------------------

  CREATE TABLE "RAHUL"."COMMENTS" 
   (	"COMMENTSID" VARCHAR2(50 BYTE), 
	"COMMENTSBODY" LONG, 
	"DISCUSSIONID" VARCHAR2(50 BYTE), 
	"DATEOFCOMMENT" DATE
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table DISCUSSION
--------------------------------------------------------

  CREATE TABLE "RAHUL"."DISCUSSION" 
   (	"DISCUSSIONID" VARCHAR2(50 BYTE), 
	"DISCUSSIONNAME" VARCHAR2(50 BYTE), 
	"DISCUSSIONBODY" LONG, 
	"GROUPFOLLOWERSID" VARCHAR2(50 BYTE), 
	"DATEOFDISCUSSION" DATE, 
	"GROUPDETAILSID" VARCHAR2(50 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table GROUPDETAILS
--------------------------------------------------------

  CREATE TABLE "RAHUL"."GROUPDETAILS" 
   (	"GROUPDETAILSID" VARCHAR2(50 BYTE) DEFAULT NULL, 
	"GROUPDETAILSNAME" VARCHAR2(50 BYTE), 
	"GROUPDETAILSBODY" LONG, 
	"USERID" VARCHAR2(50 BYTE), 
	"DATEOFCREATION" DATE
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table GROUPFOLLOWERS
--------------------------------------------------------

  CREATE TABLE "RAHUL"."GROUPFOLLOWERS" 
   (	"GROUPFOLLOWERSID" VARCHAR2(50 BYTE), 
	"GROUPDETAILSID" VARCHAR2(50 BYTE), 
	"USERID" VARCHAR2(50 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table GROUPPROGRESSREPORT
--------------------------------------------------------

  CREATE TABLE "RAHUL"."GROUPPROGRESSREPORT" 
   (	"GROUPPROGRESSREPORTID" NUMBER, 
	"WORKNAME" VARCHAR2(255 BYTE), 
	"WORKBODY" LONG, 
	"CONTRACTOR" VARCHAR2(255 BYTE), 
	"STARTDATE" DATE, 
	"ENDDATE" DATE, 
	"DATEOFCOMPLETION" DATE, 
	"FUND" VARCHAR2(255 BYTE), 
	"REPORTDATE" DATE, 
	"DATEOFREPORT" DATE, 
	"GROUPDETAILSID" VARCHAR2(50 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table NOTIFICATIONS
--------------------------------------------------------

  CREATE TABLE "RAHUL"."NOTIFICATIONS" 
   (	"NOTIFICATIONID" VARCHAR2(50 BYTE), 
	"NOTIFICATIONBODY" LONG, 
	"GROUPFOLLOWERSID" VARCHAR2(50 BYTE), 
	"DATEOFNOTIFICATION" DATE, 
	"ISREAD" NUMBER
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table POLL
--------------------------------------------------------

  CREATE TABLE "RAHUL"."POLL" 
   (	"POLLID" VARCHAR2(50 BYTE), 
	"POLLTOPIC" LONG, 
	"DATEOFPOLL" DATE, 
	"OPTION1" VARCHAR2(50 BYTE), 
	"OPTION2" VARCHAR2(50 BYTE), 
	"OPTION3" VARCHAR2(50 BYTE), 
	"USERID" VARCHAR2(50 BYTE), 
	"GROUPDETAILSID" VARCHAR2(50 BYTE), 
	"GROUPFOLLOWERSID" VARCHAR2(50 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table POLLANSWER
--------------------------------------------------------

  CREATE TABLE "RAHUL"."POLLANSWER" 
   (	"POLLANSWERID" VARCHAR2(50 BYTE), 
	"POLLID" VARCHAR2(50 BYTE), 
	"USERID" VARCHAR2(50 BYTE), 
	"ANSWER" VARCHAR2(50 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table USERCREDENTIALS
--------------------------------------------------------

  CREATE TABLE "RAHUL"."USERCREDENTIALS" 
   (	"USERID" VARCHAR2(50 BYTE), 
	"HASHPASSWORD" VARCHAR2(255 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table USERDETAILS
--------------------------------------------------------

  CREATE TABLE "RAHUL"."USERDETAILS" 
   (	"USERID" VARCHAR2(20 BYTE), 
	"FIRSTNAME" VARCHAR2(50 BYTE), 
	"LASTNAME" VARCHAR2(50 BYTE), 
	"REGION" VARCHAR2(50 BYTE), 
	"EMAILID" VARCHAR2(50 BYTE), 
	"AADHARNUMBER" VARCHAR2(50 BYTE), 
	"GENDER" VARCHAR2(20 BYTE), 
	"AGE" VARCHAR2(20 BYTE), 
	"ISANONYMOUS" NUMBER, 
	"POLITICALID" VARCHAR2(20 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index USERDETAILS_UK3
--------------------------------------------------------

  CREATE UNIQUE INDEX "RAHUL"."USERDETAILS_UK3" ON "RAHUL"."USERDETAILS" ("POLITICALID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index POLLANSWAER_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "RAHUL"."POLLANSWAER_PK" ON "RAHUL"."POLLANSWER" ("POLLANSWERID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index USERDETAILS_UK2
--------------------------------------------------------

  CREATE UNIQUE INDEX "RAHUL"."USERDETAILS_UK2" ON "RAHUL"."USERDETAILS" ("AADHARNUMBER") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index USERDETAILS_UK1
--------------------------------------------------------

  CREATE UNIQUE INDEX "RAHUL"."USERDETAILS_UK1" ON "RAHUL"."USERDETAILS" ("EMAILID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index POLLID_USERID
--------------------------------------------------------

  CREATE UNIQUE INDEX "RAHUL"."POLLID_USERID" ON "RAHUL"."POLLANSWER" ("POLLID", "USERID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index GD_UID
--------------------------------------------------------

  CREATE UNIQUE INDEX "RAHUL"."GD_UID" ON "RAHUL"."GROUPFOLLOWERS" ("GROUPDETAILSID", "USERID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index SYS_C007106
--------------------------------------------------------

  CREATE UNIQUE INDEX "RAHUL"."SYS_C007106" ON "RAHUL"."NOTIFICATIONS" ("NOTIFICATIONID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Trigger GROUPDETAILS_TRG
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "RAHUL"."GROUPDETAILS_TRG" 
BEFORE INSERT ON GROUPDETAILS 
FOR EACH ROW 
BEGIN
  <<COLUMN_SEQUENCES>>
  BEGIN
    NULL;
  END COLUMN_SEQUENCES;
END;
/
ALTER TRIGGER "RAHUL"."GROUPDETAILS_TRG" ENABLE;
--------------------------------------------------------
--  DDL for Trigger GROUPFOLLOWERS_TRG
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "RAHUL"."GROUPFOLLOWERS_TRG" 
BEFORE INSERT ON GROUPFOLLOWERS 
FOR EACH ROW 
BEGIN
  <<COLUMN_SEQUENCES>>
  BEGIN
    NULL;
  END COLUMN_SEQUENCES;
END;
/
ALTER TRIGGER "RAHUL"."GROUPFOLLOWERS_TRG" ENABLE;
--------------------------------------------------------
--  Constraints for Table POLL
--------------------------------------------------------

  ALTER TABLE "RAHUL"."POLL" MODIFY ("POLLTOPIC" NOT NULL ENABLE);
  ALTER TABLE "RAHUL"."POLL" ADD PRIMARY KEY ("POLLID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
--------------------------------------------------------
--  Constraints for Table COMMENTS
--------------------------------------------------------

  ALTER TABLE "RAHUL"."COMMENTS" ADD PRIMARY KEY ("COMMENTSID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
--------------------------------------------------------
--  Constraints for Table GROUPDETAILS
--------------------------------------------------------

  ALTER TABLE "RAHUL"."GROUPDETAILS" MODIFY ("USERID" NOT NULL ENABLE);
  ALTER TABLE "RAHUL"."GROUPDETAILS" ADD UNIQUE ("GROUPDETAILSNAME")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "RAHUL"."GROUPDETAILS" ADD PRIMARY KEY ("GROUPDETAILSID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "RAHUL"."GROUPDETAILS" MODIFY ("GROUPDETAILSNAME" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table GROUPPROGRESSREPORT
--------------------------------------------------------

  ALTER TABLE "RAHUL"."GROUPPROGRESSREPORT" ADD PRIMARY KEY ("GROUPPROGRESSREPORTID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
--------------------------------------------------------
--  Constraints for Table USERDETAILS
--------------------------------------------------------

  ALTER TABLE "RAHUL"."USERDETAILS" ADD CONSTRAINT "USERDETAILS_UK3" UNIQUE ("POLITICALID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "RAHUL"."USERDETAILS" ADD CONSTRAINT "USERDETAILS_UK2" UNIQUE ("AADHARNUMBER")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "RAHUL"."USERDETAILS" ADD CONSTRAINT "USERDETAILS_UK1" UNIQUE ("EMAILID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "RAHUL"."USERDETAILS" ADD PRIMARY KEY ("USERID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "RAHUL"."USERDETAILS" MODIFY ("EMAILID" NOT NULL ENABLE);
  ALTER TABLE "RAHUL"."USERDETAILS" MODIFY ("REGION" NOT NULL ENABLE);
  ALTER TABLE "RAHUL"."USERDETAILS" MODIFY ("LASTNAME" NOT NULL ENABLE);
  ALTER TABLE "RAHUL"."USERDETAILS" MODIFY ("FIRSTNAME" NOT NULL ENABLE);
  ALTER TABLE "RAHUL"."USERDETAILS" MODIFY ("USERID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table DISCUSSION
--------------------------------------------------------

  ALTER TABLE "RAHUL"."DISCUSSION" ADD PRIMARY KEY ("DISCUSSIONID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
--------------------------------------------------------
--  Constraints for Table GROUPFOLLOWERS
--------------------------------------------------------

  ALTER TABLE "RAHUL"."GROUPFOLLOWERS" ADD CONSTRAINT "GD_UID" UNIQUE ("GROUPDETAILSID", "USERID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "RAHUL"."GROUPFOLLOWERS" ADD PRIMARY KEY ("GROUPFOLLOWERSID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
--------------------------------------------------------
--  Constraints for Table POLLANSWER
--------------------------------------------------------

  ALTER TABLE "RAHUL"."POLLANSWER" ADD CONSTRAINT "POLLID_USERID" UNIQUE ("POLLID", "USERID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "RAHUL"."POLLANSWER" ADD CONSTRAINT "POLLANSWAER_PK" PRIMARY KEY ("POLLANSWERID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "RAHUL"."POLLANSWER" MODIFY ("POLLANSWERID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table NOTIFICATIONS
--------------------------------------------------------

  ALTER TABLE "RAHUL"."NOTIFICATIONS" ADD CONSTRAINT "SYS_C007106" PRIMARY KEY ("NOTIFICATIONID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "RAHUL"."NOTIFICATIONS" MODIFY ("NOTIFICATIONID" NOT NULL ENABLE);
--------------------------------------------------------
--  Ref Constraints for Table COMMENTS
--------------------------------------------------------

  ALTER TABLE "RAHUL"."COMMENTS" ADD CONSTRAINT "COMMENTS_FK1" FOREIGN KEY ("DISCUSSIONID")
	  REFERENCES "RAHUL"."DISCUSSION" ("DISCUSSIONID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table DISCUSSION
--------------------------------------------------------

  ALTER TABLE "RAHUL"."DISCUSSION" ADD CONSTRAINT "DISCUSSION_FK1" FOREIGN KEY ("GROUPFOLLOWERSID")
	  REFERENCES "RAHUL"."GROUPFOLLOWERS" ("GROUPFOLLOWERSID") ENABLE;
  ALTER TABLE "RAHUL"."DISCUSSION" ADD CONSTRAINT "DISCUSSION_FK2" FOREIGN KEY ("GROUPDETAILSID")
	  REFERENCES "RAHUL"."GROUPDETAILS" ("GROUPDETAILSID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table GROUPDETAILS
--------------------------------------------------------

  ALTER TABLE "RAHUL"."GROUPDETAILS" ADD CONSTRAINT "GROUPDETAILS_FK1" FOREIGN KEY ("USERID")
	  REFERENCES "RAHUL"."USERDETAILS" ("USERID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table GROUPFOLLOWERS
--------------------------------------------------------

  ALTER TABLE "RAHUL"."GROUPFOLLOWERS" ADD CONSTRAINT "GROUPFOLLOWERS_FK1" FOREIGN KEY ("GROUPDETAILSID")
	  REFERENCES "RAHUL"."GROUPDETAILS" ("GROUPDETAILSID") ENABLE;
  ALTER TABLE "RAHUL"."GROUPFOLLOWERS" ADD CONSTRAINT "GROUPFOLLOWERS_FK2" FOREIGN KEY ("USERID")
	  REFERENCES "RAHUL"."USERDETAILS" ("USERID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table GROUPPROGRESSREPORT
--------------------------------------------------------

  ALTER TABLE "RAHUL"."GROUPPROGRESSREPORT" ADD CONSTRAINT "GROUPPROGRESSREPORT_FK1" FOREIGN KEY ("GROUPDETAILSID")
	  REFERENCES "RAHUL"."GROUPDETAILS" ("GROUPDETAILSID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table NOTIFICATIONS
--------------------------------------------------------

  ALTER TABLE "RAHUL"."NOTIFICATIONS" ADD CONSTRAINT "NOTIFICATIONS_FK1" FOREIGN KEY ("GROUPFOLLOWERSID")
	  REFERENCES "RAHUL"."GROUPFOLLOWERS" ("GROUPFOLLOWERSID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table POLL
--------------------------------------------------------

  ALTER TABLE "RAHUL"."POLL" ADD CONSTRAINT "POLL" FOREIGN KEY ("GROUPDETAILSID")
	  REFERENCES "RAHUL"."GROUPDETAILS" ("GROUPDETAILSID") ENABLE;
  ALTER TABLE "RAHUL"."POLL" ADD CONSTRAINT "POLL_FK" FOREIGN KEY ("USERID")
	  REFERENCES "RAHUL"."USERDETAILS" ("USERID") ENABLE;
  ALTER TABLE "RAHUL"."POLL" ADD CONSTRAINT "POLL_FK1" FOREIGN KEY ("GROUPFOLLOWERSID")
	  REFERENCES "RAHUL"."GROUPFOLLOWERS" ("GROUPFOLLOWERSID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table POLLANSWER
--------------------------------------------------------

  ALTER TABLE "RAHUL"."POLLANSWER" ADD CONSTRAINT "POLLANSWAER_FK1" FOREIGN KEY ("USERID")
	  REFERENCES "RAHUL"."USERDETAILS" ("USERID") ENABLE;
  ALTER TABLE "RAHUL"."POLLANSWER" ADD CONSTRAINT "POLLANSWAER_FK2" FOREIGN KEY ("POLLID")
	  REFERENCES "RAHUL"."POLL" ("POLLID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table USERCREDENTIALS
--------------------------------------------------------

  ALTER TABLE "RAHUL"."USERCREDENTIALS" ADD CONSTRAINT "USERCREDENTIALS_FK1" FOREIGN KEY ("USERID")
	  REFERENCES "RAHUL"."USERDETAILS" ("USERID") ENABLE;
