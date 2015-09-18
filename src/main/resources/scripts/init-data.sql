--MASDIVISION
INSERT INTO MAS_DIVISION (NAME,CODE,ISACTIVE) VALUES ('CEO Office of CEO','01',1);
INSERT INTO MAS_DIVISION (NAME,CODE,ISACTIVE) VALUES ('F&A Finance & Administration','02',1);
INSERT INTO MAS_DIVISION (NAME,CODE,ISACTIVE) VALUES ('MKT Marketing','04',1);
INSERT INTO MAS_DIVISION (NAME,CODE,ISACTIVE) VALUES ('MoH Ministry of Happiness','05',1);
INSERT INTO MAS_DIVISION (NAME,CODE,ISACTIVE) VALUES ('SAP SAP Services','06',1);
INSERT INTO MAS_DIVISION (NAME,CODE,ISACTIVE) VALUES ('TXM Transformation','07',1);


--MASTECHNOLOGY
INSERT INTO MAS_TECHNOLOGY (ID,NAME,auditFlag,createdTimeStamp,createdBy,ISACTIVE,CODE) VALUES (1,'.Net','C',NOW(),0,true,1);
INSERT INTO MAS_TECHNOLOGY (ID,NAME,auditFlag,createdTimeStamp,createdBy,ISACTIVE,CODE) VALUES (2,'COBOL','C',NOW(),0,true,1);
INSERT INTO MAS_TECHNOLOGY (ID,NAME,auditFlag,createdTimeStamp,createdBy,ISACTIVE,CODE) VALUES (3,'Java','C',NOW(),0,true,1);
INSERT INTO MAS_TECHNOLOGY (ID,NAME,auditFlag,createdTimeStamp,createdBy,ISACTIVE,CODE) VALUES (4,'PHP','C',NOW(),0,true,1);
INSERT INTO MAS_TECHNOLOGY (ID,NAME,auditFlag,createdTimeStamp,createdBy,ISACTIVE,CODE) VALUES (5,'SAP','C',NOW(),0,true,1);




--MASSPECIALTY
insert into MAS_SPECIALTY (name,code,isactive)
VALUES 
('ABAP','01',1),
('ASP.Net','02',1),
('Basis','03',1),
('BI','04',1),
('BPC - B','05',1),
('BPC - C','06',1),
('BW','07',1),
('C#','08',1),
('C++.Netframework','09',1),
('CO','10',1),
('CRM','11',1),
('CSS','12',1),
('Eclipse','13',1),
('FI','14',1),
('Hibernate','15',1),
('HTML','16',1),
('J2EE','17',1),
('Java Script','18',1),
('JBOSS','19',1),
('JQUERY SVN Respsoitry','20',1),
('JSF','21',1),
('MM','22',1),
('Mobility','23',1),
('MVC','24',1),
('Oracle','25',1),
('Oracle10g','26',1),
('Oracle9i','27',1),
('PI','28',1),
('PL/SQL','29',1),
('PM','30',1),
('PP','31',1),
('SD','32',1),
('Security','33',1),
('Spring','34',1),
('SRM','35',1),
('Symfony1,2','36',1),
('TR','37',1),
('VB.Net','38',1),
('Web App','39',1),
('Web Logic','40',1),
('WPF','41',1),
('Zend','42',1);


--MASJOBLEVEL
insert into MAS_JOBLEVEL(name,code,isactive) 
values('Account Execute','AE',1),
('Account Manager','AM',1),
('Business Division Director','BDD',1),
('Consultant','C',1),
('Manager','M',1),
('Managing Consultant','MC',1),
('Partner','P',1),
('Principal Consultant','PC',1),
('Professional','PF',1),
('Senior Account Manager','SAM',1),
('Senior Consultant','SC',1),
('Senior Manager','SM',1),
('Senior Professional','SP',1),
('Support Division Director','SDD',1);




--MASADDRESSTYPE
INSERT INTO MAS_ADDRESSTYPE(ADDRESSTYPENAME,CODE,ISACTIVE) VALUES ('Present address','P01',1),('Permanent address','M02',1),
('Permanent address','M02',1);


--MASDEGREETYPE
insert into MAS_DEGREETYPE (name,code,isactive)
VALUES
('Bachelor','a',1),
('Masters','a',1),
('Ph.D.','a',1);


--MASEMPLOYMENT
INSERT INTO MAS_EMPLOYMENT(NAME,CODE,ISACTIVE) VALUES ('Permanent','A01',1);
INSERT INTO MAS_EMPLOYMENT(NAME,CODE,ISACTIVE) VALUES ('Contract','A01',1);


--OFFICIAL
INSERT INTO EMP_OFFICIAL(OFFICIAL_DATE,START_WORK_DATE,END_WORK_DATE,POSITION_APPLIED_FOR,SALARY_EXPECTED,PROBATION_DATE) VALUES (NOW(),'2010-03-04',NOW(),'Programmer',30000.00,NOW());
INSERT INTO EMP_OFFICIAL(OFFICIAL_DATE,START_WORK_DATE,END_WORK_DATE,POSITION_APPLIED_FOR,SALARY_EXPECTED,PROBATION_DATE) VALUES (NOW(),'2010-08-03',NOW(),'Sa',50000.00,NOW());
INSERT INTO EMP_OFFICIAL(OFFICIAL_DATE,START_WORK_DATE,END_WORK_DATE,POSITION_APPLIED_FOR,SALARY_EXPECTED,PROBATION_DATE) VALUES (NOW(),'2010-03-04',NOW(),'Ba',60000.00,NOW());
INSERT INTO EMP_OFFICIAL(OFFICIAL_DATE,START_WORK_DATE,END_WORK_DATE,POSITION_APPLIED_FOR,SALARY_EXPECTED,PROBATION_DATE) VALUES (NOW(),'2010-03-04',NOW(),'Sap',70000.00,NOW());
INSERT INTO EMP_OFFICIAL(OFFICIAL_DATE,START_WORK_DATE,END_WORK_DATE,POSITION_APPLIED_FOR,SALARY_EXPECTED,PROBATION_DATE) VALUES (NOW(),'2010-03-04',NOW(),'PM',200000.00,NOW());
INSERT INTO EMP_OFFICIAL(OFFICIAL_DATE,START_WORK_DATE,END_WORK_DATE,POSITION_APPLIED_FOR,SALARY_EXPECTED,PROBATION_DATE) VALUES (NOW(),'2010-03-04',NOW(),'AE',50000.00,NOW());



--MASPROVINCE
insert into MAS_PROVINCE (PROVINCENAME,CODE,ISACTIVE)
VALUES
('Bangkok','a',1),
('Chiang Rai','a',1),
('Chiang Mai','a',1),
('Nan','a',1),
('Phayao','a',1),
('Phrae','a',1),
('Mae Hong Son','a',1),
('Lampang','a',1),
('Lamphun','a',1),
('Uttaradit','a',1),
('Kalasin','a',1),
('Khon Kaen','a',1),
('Chaiyaphum','a',1),
('Nakhon Phanom','a',1),
('Nakhon Ratchasima','a',1),
('Bueng Kan','a',1),
('Buri Ram','a',1),
('Maha Sarakham','a',1),
('Mukdahan','a',1),
('Yasothon','a',1),
('Roi Et','a',1),
('Loei','a',1),
('Si Sa Ket','a',1),
('Sakon Nakhon','a',1),
('Surin','a',1),
('Nong Khai','a',1),
('Nong Bua Lam Phu','a',1),
('Amnat Charoen','a',1),
('Udon Thani','a',1),
('Ubon Ratchathani','a',1),
('Kamphaeng Phet','a',1),
('Chai Nat','a',1),
('Nakhon Nayok','a',1),
('Nakhon Pathom','a',1),
('Nakhon Sawan','a',1),
('Nonthaburi','a',1),
('Pathum Thani','a',1),
('Phra Nakhon Si Ayutthaya','a',1),
('Phichit','a',1),
('Phitsanulok','a',1),
('Phetchabun','a',1),
('Lop Buri','a',1),
('Samut Prakan','a',1),
('Samut Songkhram','a',1),
('Samut Sakhon','a',1),
('Sing Buri','a',1),
('Sukhothai','a',1),
('Suphan Buri','a',1),
('Saraburi','a',1),
('Ang Thong','a',1),
('Uthai Thani','a',1),
('Chanthaburi','a',1),
('Chachoengsao','a',1),
('Chon Buri','a',1),
('Trat','a',1),
('Prachin Buri','a',1),
('Rayong','a',1),
('Sa Kaeo','a',1),
('Kanchanaburi','a',1),
('Tak','a',1),
('Prachuap Khiri Khan','a',1),
('Phetchaburi','a',1),
('Ratchaburi','a',1),
('Krabi','a',1),
('Chumphon','a',1),
('Trang','a',1),
('Nakhon Si Thammarat','a',1),
('Narathiwat','a',1),
('Pattani','a',1),
('Phangnga','a',1),
('Phatthalung','a',1),
('Phuket','a',1),
('Yala','a',1),
('Ranong','a',1),
('Songkhla','a',1),
('Satun','a',1),
('Surat Thani','a',1);



--MasCoreSkill
INSERT INTO MAS_CORESKILL (NAME,CODE,ISACTIVE) VALUES 
('Administration','AD',b'1'),
('Application Analyst','AA',b'1'),
('Business Analyst','BA',b'1'),
('Business Development','BD',b'1'),
('Data Base Administrator','DBA',b'1'),
('Finance','FI',b'1'),
('Happiness','HP',b'1'),
('ITS','ITS',b'1'),
('Marketing','MK',b'1'),
('Ministry of Happiness','MHP',b'1'),
('Programmer','PG',b'1'),
('Project Coordinator','PC',b'1'),
('Project Manager','PM',b'1'),
('Recruitment','RC',b'1'),
('SAP','SAP',b'1'),
('Software Tester','ST',b'1'),
('Solution Architect','SR',b'1'),
('System Analyst','SA',b'1'),
('Transformation','TR',b'1');




--Ability
--insert into EMP_ABILITY (RANK,SPECIALTY_ID,EMPLOYEE_ID)
--values
--(10,2,1),
--(1,5,1),
--(2,6,1),
--(4,8,1);


--EDUCATION
--INSERT INTO EMP_EDUCATION (UNIVERSITY,GPA,FACULTY,MAJOR,DEGREETYPE_ID,CERTIFICATE,DESCRIPTION,EMPLOYEE_ID) VALUES 
--('Silpakorn',4.00,'SCIENCE','IT',1,'JAVA','JAVA',2);




--MASLOCATION
INSERT INTO MAS_LOCATION(NAME,CODE,ISACTIVE) VALUES ('Thailand','TH',1),
 ('Singapore','SG',1),
 ('Indonesia','ID',1),
 ('Australia','AU',1);
 


 --OFFICIAL
INSERT INTO EMP_OFFICIAL(OFFICIAL_DATE,END_WORK_DATE,POSITION_APPLIED_FOR,SALARY_EXPECTED,PROBATION_DATE,START_WORK_DATE)
VALUES (NOW(),NOW(),'Programmer',30000.00,NOW(),'2013-02-02'),
	   (NOW(),NOW(),'Sa',40000.00,NOW(),'2015-07-02');
 

--EMPLOYEE
INSERT INTO EMP_EMPLOYEE (EMPLOYEE_CODE,NAME_THAI,NAME_ENG,TEL_HOME,TEL_MOBILE,EMERGENCY_CONTACT,
EMERGENCY_CONTACT_PHONE_NUMBER,DATEOFBIRTH,ID_CARD,DIVISION_ID,JOBLEVEL_ID,TECHNOLOGY_ID,EMAIL,LOCATION_ID,EMPLOYMENT_ID,OFFICIAL_ID,STATUSEMP) VALUES
('TH2009188','Bill','Bill',0811111111,0822222222,'Mom',191,'1991-01-01',12345678,1,1,1,'bill@gmail.com',1,1,1,'Employee');

INSERT INTO EMP_EMPLOYEE (EMPLOYEE_CODE,NAME_THAI,NAME_ENG,TEL_HOME,TEL_MOBILE,EMERGENCY_CONTACT,
EMERGENCY_CONTACT_PHONE_NUMBER,DATEOFBIRTH,ID_CARD,DIVISION_ID,JOBLEVEL_ID,TECHNOLOGY_ID,EMAIL,LOCATION_ID,EMPLOYMENT_ID,AIM_EMP_ID,OFFICIAL_ID,STATUSEMP) VALUES
('TH2009189','Parn','Parn',0800000000,0899999999,'Dad',191,'1992-02-02',12345678,2,2,1,'parn@gmail.com',2,2,1,2,'Employee');

INSERT INTO EMP_EMPLOYEE (EMPLOYEE_CODE,NAME_THAI,NAME_ENG,TEL_HOME,TEL_MOBILE,EMERGENCY_CONTACT,
EMERGENCY_CONTACT_PHONE_NUMBER,DATEOFBIRTH,ID_CARD,DIVISION_ID,JOBLEVEL_ID,TECHNOLOGY_ID,EMAIL,EMPLOYMENT_ID,AIM_EMP_ID,OFFICIAL_ID,LOCATION_ID,STATUSEMP) VALUES
('TH2009190','test','test',0800000000,0899999999,'Dad',191,'1992-02-02',12345678,2,2,1,'test@gmail.com',2,1,3,2,'Employee');

INSERT INTO EMP_EMPLOYEE (EMPLOYEE_CODE,NAME_THAI,NAME_ENG,TEL_HOME,TEL_MOBILE,EMERGENCY_CONTACT,
EMERGENCY_CONTACT_PHONE_NUMBER,DATEOFBIRTH,ID_CARD,DIVISION_ID,JOBLEVEL_ID,TECHNOLOGY_ID,EMAIL,EMPLOYMENT_ID,OFFICIAL_ID,STATUSEMP) VALUES
('TH2009191','test01','test01',0800000000,0899999999,'Dad',191,'1992-02-02',12345678,2,2,1,'test01@gmail.com',2,4,'Employee');

INSERT INTO EMP_EMPLOYEE (EMPLOYEE_CODE,NAME_THAI,NAME_ENG,TEL_HOME,TEL_MOBILE,EMERGENCY_CONTACT,
EMERGENCY_CONTACT_PHONE_NUMBER,DATEOFBIRTH,ID_CARD,DIVISION_ID,JOBLEVEL_ID,TECHNOLOGY_ID,EMAIL,EMPLOYMENT_ID,OFFICIAL_ID,STATUSEMP) VALUES
('TH2009192','chanumas','chanumas',0800000000,0899999999,'Dad',191,'1992-02-02',12345678,2,2,1,'chanumas@gmail.com',2,5,'Employee');

INSERT INTO EMP_EMPLOYEE (EMPLOYEE_CODE,NAME_THAI,NAME_ENG,TEL_HOME,TEL_MOBILE,EMERGENCY_CONTACT,
EMERGENCY_CONTACT_PHONE_NUMBER,DATEOFBIRTH,ID_CARD,DIVISION_ID,JOBLEVEL_ID,TECHNOLOGY_ID,EMAIL,EMPLOYMENT_ID,OFFICIAL_ID,STATUSEMP) VALUES
('TH2009193','grand','grand',0800000000,0899999999,'Dad',191,'1992-02-02',12345678,2,2,1,'grand@gmail.com',2,6,'Employee');



  --Site
INSERT INTO EMP_SITE(projectName,startDate,endDate,projectOwner,projectOwnerContact,AUDITFLAG,EMPLOYEE_ID,createdTimeStamp,createdBy) VALUES 
 ('HrSystem','1991-01-01','1991-02-02','a','tiwat','C',1,NOW(),0),
 ('MarketingSystem','1991-01-01','1991-02-02','a','Anna','C',2,NOW(),0);


--EXPERIENCE
INSERT INTO EMP_EXPERIENCE(COMPANY_NAME,DATE_FROM,DATE_TO,POSITION,SALARY,REASON_OF_REGISNATION,EMPLOYEE_ID)
VALUES('Augmentis','2014-03-01','2014-07-01','Programmer',18000,'Boring',2),
('Augmentis','2014-03-01','2014-07-01','Programmer',28000,'Boring',1),
('Augmentis','2014-03-01','2014-07-01','Programmer',38000,'Boring',3),
('Augmentis','2014-03-01','2014-07-01','Programmer',48000,'Boring',4);


--REFERENCE
INSERT INTO EMP_REFERENCE(NAME,TEL,EMPLOYEE_ID)
VALUES('Mean',0812345675,2);


--REWARD
INSERT INTO EMP_REWARD(TYPE_REWARD,YEAR,EMPLOYEE_ID)
VALUES('nobel','1991',2);


--ABILITY
--INSERT INTO  EMP_ABILITY (RANK,SPECIALTY_ID,EMPLOYEE_ID)
--VALUES
--(10,7,2),
--(1,5,2),
--(2,6,2),
--(4,8,2);


--HISTORY
--INSERT INTO EMP_HISTORY (POSITION,SALARY,OLD_SALARY,REASON_OF_ADJUSTMENT,ADJUSTMENT_TIME,EMPLOYEE_ID) 
--VALUES 
--('CEO',45000.00,4000.00,'one',4,2);


--MASSTAFFTYPE
INSERT INTO MAS_STAFFTYPE(
 AUDITFLAG,
 CREATEDBY,
 CREATEDTIMESTAMP,
 CODE,
 ISACTIVE,
 STAFFTYPENAME)
values
('C',0,NOW(),'01A',true,'Billable'), 
('C',0,NOW(),'02A',true,'Back office');


--MASRELATIONTYPE
INSERT INTO MAS_RELATIONTYPE(
 AUDITFLAG,
 CODE,
 CREATEDBY,
 CREATEDTIMESTAMP,
 ISACTIVE,
 RELATIONTYPE
) values
('C','01',0,NOW(),true,'SON'),
('C','2',0,NOW(),true,'DAUGTHER');


--EMPLOYEEFAMILY
INSERT INTO EMP_EMPLOYEEFAMILY(
 AUDITFLAG,
 CREATEDBY,
 CREATEDTIMESTAMP,
 ADDRESS,
 AGE,
 FIRSTNAME,
 GENDER,
 LASTNAME,
 TEL,
 EMPLOYEE_ID,
 MASRELATION_ID
) values
('C',0,NOW(),'7/7 m.8 nongsamwong nongsua pathumtani 12170',24,'apiva','Female','kimkatanom','0890851022',1,1);


--PROBATION
INSERT INTO EMP_PROBATION (DATE_FROM, DATE_TO, STATUS, EMPLOYEE_ID) VALUES
('2014-01-01','2014-03-01','Not Pass',1),
('2014-01-01','2014-03-01','Pass',2);


--MASLEAVETYPE
INSERT INTO MAS_LEAVETYPE (NAME,CODE,ISACTIVE) VALUES
('Annual Holiday Leave','L01',true),
('Maternity Leave','L02',true),
('Personal Leave','L03',true),
('Sick Leave','L04',true),
('Urgent Leave','L05',true),
('Other','L06',true);


--MASROLE
INSERT INTO MAS_ROLE(TYPE, AUDITFLAG,CREATEDBY,CREATEDTIMESTAMP,ISACTIVE) VALUES
 ('ROLE_ADMIN','C',0,NOW(),1),
 ('ROLE_STAFF','C',0,NOW(),1),
 ('ROLE_HR','C',0,NOW(),1);
 
 
--LOGIN
INSERT INTO EMP_LOGIN ( AUDITFLAG, CREATEDBY,CREATEDTIMESTAMP,USERNAME,PASSWORD,EMPLOYEE_ID,ROLE_ID,MAS_LOCATION_ID) VALUES
('C',0,NOW(),'admin','password',1,1,1),
('C',0,NOW(),'staff','password',2,2,2),
('C',0,NOW(),'hr','password',3,3,2);



--CERTIFICATION
INSERT INTO  EMP_CERTIFICATION (YEAR,NAME,CERTIFICATION_FROM,DESCRIPTION,EMPLOYEE_ID)
VALUES
('1111','JAVA','UNIVERSITY','CERTIFICATION',2);


--MASALLOWANCES
INSERT INTO MAS_ALLOWANCES (ALLOWANCES_TYPE,AMOUNT_ALLOWANCES,CODE,ISACTIVE) VALUES 
('ลดหย่อนส่วนบุคคล-ผู้มีเงินได้',30000,'A1',1),
('ลดหย่อนส่วนบุคคล-คู่สมรส ที่ไม่มีเงินได้',30000,'A2',1),
('ลดหย่อนส่วนบุคคล-บุตรที่ศึกษาในประเทศ',17000,'A3',1),
('ลดหย่อนส่วนบุคคล-บุตรที่ไม่ได้ศึกษาหรือศึกษาในต่างประเทศ',15000,'A4',1),
('ลดหย่อนส่วนบุคคล-ค่าอุปการะเลี้ยงดูบิดา มารดาของผู้มีเงินได้',30000,'A5',1),
('ลดหย่อนส่วนบุคคล-ค่าอุปการะเลี้ยงดูคนพิการหรือคนทุพพลภาพ',60000,'A6',1),
('ลดหย่อนและยกเว้น สำหรับเบี้ยประกันชีวิต-ผู้มีเงินได้',100000,'A7',1),
('ลดหย่อนและยกเว้น สำหรับเบี้ยประกันชีวิต-คู่สมรสที่ไม่มีเงินได้',10000,'A8',1),
('ยกเว้นเบี้ยประกันสุขภาพ บิดา มารดา ของผู้มีเงินได้ และบิดา มารดาของคู่สมรส ที่ไม่มีเงินได้',15000,'A9',1),
('ลดหย่อนและยกเว้นเงินสะสมที่จ่ายเข้ากองทุนสำรองเลี้ยงชีพ',500000,'A10',1),
('ยกเว้นค่าซื้อหน่วยลงทุนในกองทุนรวมเพื่อการเลี้ยงชีพ RMF',500000,'A11',1),
('ยกเว้นค่าซื้อหน่วยลงทุนในกองทุนรวมหุ้นระยะยาว  LTF',500000,'A12',1),
('ยกเว้นเงินสะสม กบข.',500000,'A13',1),
('ยกเว้นเงินสะสมกองทุนสงเคราะห์ครูโรงเรียนเอกชน',500000,'A14',1),
('ยกเว้นเงินค่าชดเชยที่ได้รับตามกฎหมายว่าด้วยการคุ้มครองแรงงาน',300000,'A15',1),
('ลดหย่อนและยกเว้น สำหรับดอกเบี้ยเงินกู้ยืมเพื่อการมีที่อยู่อาศัย-ผู้มีเงินได้กู้ยืมคนเดียว',100000,'A16',1),
('ลดหย่อนและยกเว้น สำหรับดอกเบี้ยเงินกู้ยืมเพื่อการมีที่อยู่อาศัย-ผู้มีเงินได้หลายคนร่วมกันกู้ยืม',100000,'A17',1),
('ลดหย่อนเงินสมทบที่จ่ายเข้ากองทุนประกันสังคม',9000,'A18',1),
('ลดหย่อนและยกเว้นเงินบริจาค-ยกเว้นค่าใช้จ่ายเพื่อสนับสนุนการศึกษา',null,'A19',1),
('ลดหย่อนและยกเว้นเงินบริจาค-ยกเว้นค่าใช้จ่ายและเงินบริจาค',null,'A22',1),
('ลดหย่อนและยกเว้นเงินบริจาค-ลดหย่อนเงินบริจาคทั่วไป',null,'A23',1),
('ลดหย่อนและยกเว้นเงินบริจาค-ลดหย่อนเงินบริจาคเพื่อช่วยเหลือผู้ประสบอุทกภัย',null,'A24',1),
('ยกเว้นเงินได้ที่ผู้มีเงินได้ซึ่งเป็นผู้อยู่ในไทย และมีอายุ ไม่ต่ำกว่า 65 ปี บริบูรณ์',190000,'A25',1),
('ยกเว้นเงินได้ที่ผู้มีเงินได้ซึ่งเป็นคนพิการอยู่ในไทย และมีอายุไม่เกิน 65 ปี บริบูรณ์',190000,'A26',1),
('ยกเว้นเงินได้จากการซื้ออสังหาริมทรัพย์ฯ',5000000,'A27',1),
('ยกเว้นเงินได้ที่ได้จ่ายเป็นค่าซ่อมแซมบ้านที่ได้รับผลกระทบจากอุทกภัยที่เกิดขึ้นในระหว่างวันที่ 25 ก.ค. 2554  – 31 ธ.ค. 2554',100000,'A28',1),
('ยกเว้นเงินได้ที่ได้จ่ายเป็นค่าซ่อมแซมรถยนต์ที่ได้รับผลกระทบจากอุทกภัยที่เกิดขึ้นในระหว่างวันที่ 25 ก.ค. 2554 – 31 ธ.ค. 2554',30000,'A29',1);



INSERT INTO MAS_SKILLLANGUAGE (ID,AUDITFLAG,CODE,CREATEDBY,CREATEDTIMESTAMP,ISACTIVE,SKILL_LANGUAGE) 
VALUES 
(1,'C','0293',0,NOW(),true,'thai'),
(2,'C','0293',0,NOW(),true,'english');



--LEAVE
--INSERT INTO EMP_LEAVE(START_DATE,END_DATE,REASON,LEAVETYPE_ID,EMPLOYEE_ID,AIM)
--VALUES('2014-03-01','2014-03-04','sick',1,2,'1'),
--('2014-07-01','2014-07-02','sick',1,2,'1'),
--('2014-04-01','2014-04-03','sick',3,2,'1'),
--('2014-02-01','2014-02-02','sick',4,2,'1');

INSERT INTO EMP_ADDRESS(ADDRESS1,ADDRESS2,ZIPCODE,PROVINCE_ID,ADDRESSTYPE_ID,EMPLOYEE_ID) VALUES ('200 MOO.6','BANGKOK','10800',1,1,1),
('100 MOO.1','CHAINGMAI','10700',1,1,1),
('50 MOO.5','CHAINGRAI','10500',1,1,1),
('2/3 MOO.1','SAMUTPAKARN','10600',1,1,1);




update EMP_EMPLOYEE set ISMANAGER=1 where ID=1;

