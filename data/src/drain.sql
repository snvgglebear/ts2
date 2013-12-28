PRAGMA foreign_keys=OFF;
BEGIN TRANSACTION;
CREATE TABLE places (
		placecode VARCHAR(10),
		placename VARCHAR(50),
		x DOUBLE,
		y DOUBLE);
CREATE TABLE routeconflicts (
        routenum1 INTEGER,
        routenum2 INTEGER);
INSERT INTO "routeconflicts" VALUES(101,102);
CREATE TABLE options (
optionkey VARCHAR(30),
optionvalue VARCHAR(50));
INSERT INTO "options" VALUES('timeFactor','5');
INSERT INTO "options" VALUES('defaultMaxSpeed','18.06');
INSERT INTO "options" VALUES('currentTime','06:00:00');
INSERT INTO "options" VALUES('warningSpeed','8.34');
INSERT INTO "options" VALUES('currentScore','0');
INSERT INTO "options" VALUES('defaultDelayAtEntry','0');
INSERT INTO "options" VALUES('title','London Underground Waterloo & City line');
INSERT INTO "options" VALUES('defaultMinimumStopTime','30');
INSERT INTO "options" VALUES('version','0.4');
INSERT INTO "options" VALUES('description','This simulation is freely inspired from SimSig "Drain" simulation by G. Mayo.');
CREATE TABLE trackitems (trackcode VARCHAR(10),timerwc DOUBLE,yn DOUBLE,reallength DOUBLE,yr DOUBLE,name VARCHAR(100),tiid INTEGER PRIMARY KEY,conflicttiid INTEGER,titype VARCHAR(5),xr DOUBLE,timersw DOUBLE,reverse BOOLEAN,maxspeed DOUBLE,ntiid INTEGER,yf DOUBLE,rtiid INTEGER,xf DOUBLE,x DOUBLE,y DOUBLE,placecode VARCHAR(10),xn DOUBLE,ptiid INTEGER);
INSERT INTO "trackitems" VALUES(NULL,NULL,NULL,NULL,NULL,'BANK',1,NULL,'A',NULL,NULL,NULL,0.0,NULL,NULL,NULL,NULL,60.0,50.0,'BNK',NULL,NULL);
INSERT INTO "trackitems" VALUES(NULL,NULL,NULL,NULL,NULL,'WATERLOO',2,NULL,'A',NULL,NULL,NULL,0.0,NULL,NULL,NULL,NULL,950.0,50.0,'WTL',NULL,NULL);
INSERT INTO "trackitems" VALUES(NULL,NULL,NULL,NULL,NULL,'DEPOT',3,NULL,'A',NULL,NULL,NULL,0.0,NULL,NULL,NULL,NULL,1250.0,50.0,'DPT',NULL,NULL);
INSERT INTO "trackitems" VALUES('7',NULL,105.0,80.0,125.0,NULL,7,NULL,'LP',129.0,NULL,NULL,0.0,72,100.0,NULL,130.0,60.0,100.0,'BNK',10.0,71);
INSERT INTO "trackitems" VALUES('8',NULL,125.0,80.0,145.0,NULL,8,NULL,'LP',129.0,NULL,NULL,0.0,82,150.0,NULL,130.0,60.0,150.0,'BNK',10.0,81);
INSERT INTO "trackitems" VALUES(NULL,NULL,NULL,NULL,NULL,'31',31,NULL,'S',NULL,NULL,1,0.0,1000015,NULL,NULL,NULL,1215.0,175.0,NULL,NULL,1000016);
INSERT INTO "trackitems" VALUES(NULL,NULL,NULL,NULL,NULL,'32',32,NULL,'SB',NULL,NULL,0,0.0,1000017,NULL,NULL,NULL,1260.0,175.0,NULL,NULL,1000016);
INSERT INTO "trackitems" VALUES(NULL,NULL,NULL,NULL,NULL,'41',41,NULL,'S',NULL,NULL,1,0.0,207,NULL,NULL,NULL,1215.0,200.0,NULL,NULL,1000018);
INSERT INTO "trackitems" VALUES(NULL,NULL,NULL,NULL,NULL,'42',42,NULL,'SB',NULL,NULL,0,0.0,1000019,NULL,NULL,NULL,1260.0,200.0,NULL,NULL,1000018);
INSERT INTO "trackitems" VALUES(NULL,NULL,NULL,NULL,NULL,'51',51,NULL,'S',NULL,NULL,1,0.0,551,NULL,NULL,NULL,1215.0,125.0,NULL,NULL,1000021);
INSERT INTO "trackitems" VALUES(NULL,NULL,NULL,NULL,NULL,'52',52,NULL,'SB',NULL,NULL,0,0.0,1000022,NULL,NULL,NULL,1300.0,125.0,NULL,NULL,1000021);
INSERT INTO "trackitems" VALUES(NULL,NULL,NULL,NULL,NULL,'61',61,NULL,'S',NULL,NULL,1,0.0,561,NULL,NULL,NULL,1250.0,100.0,NULL,NULL,1000024);
INSERT INTO "trackitems" VALUES(NULL,NULL,NULL,NULL,NULL,'62',62,NULL,'SB',NULL,NULL,0,0.0,1000025,NULL,NULL,NULL,1300.0,100.0,NULL,NULL,1000024);
INSERT INTO "trackitems" VALUES(NULL,NULL,NULL,NULL,NULL,'71',71,NULL,'SB',NULL,NULL,1,0.0,1000000,NULL,NULL,NULL,60.0,100.0,NULL,NULL,7);
INSERT INTO "trackitems" VALUES(NULL,NULL,NULL,NULL,NULL,'72',72,NULL,'S',NULL,NULL,0,0.0,511,NULL,NULL,NULL,130.0,100.0,NULL,NULL,7);
INSERT INTO "trackitems" VALUES(NULL,NULL,NULL,NULL,NULL,'73',73,NULL,'S',NULL,NULL,0,0.0,1000004,NULL,NULL,NULL,450.0,100.0,NULL,NULL,1000003);
INSERT INTO "trackitems" VALUES(NULL,NULL,NULL,NULL,NULL,'74',74,NULL,'S',NULL,NULL,0,0.0,1000005,NULL,NULL,NULL,700.0,100.0,NULL,NULL,1000004);
INSERT INTO "trackitems" VALUES(NULL,NULL,NULL,NULL,NULL,'75',75,NULL,'S',NULL,NULL,0,0.0,1000011,NULL,NULL,NULL,1020.0,100.0,NULL,NULL,1000009);
INSERT INTO "trackitems" VALUES(NULL,NULL,NULL,NULL,NULL,'76',76,NULL,'S',NULL,NULL,1,0.0,206,NULL,NULL,NULL,1270.0,75.0,NULL,NULL,1000026);
INSERT INTO "trackitems" VALUES(NULL,NULL,NULL,NULL,NULL,'81',81,NULL,'SB',NULL,NULL,1,0.0,601,NULL,NULL,NULL,60.0,150.0,NULL,NULL,8);
INSERT INTO "trackitems" VALUES(NULL,NULL,NULL,NULL,NULL,'82',82,NULL,'S',NULL,NULL,0,0.0,521,NULL,NULL,NULL,130.0,150.0,NULL,NULL,8);
INSERT INTO "trackitems" VALUES(NULL,NULL,NULL,NULL,NULL,'83',83,NULL,'S',NULL,NULL,1,0.0,522,NULL,NULL,NULL,310.0,150.0,NULL,NULL,1000006);
INSERT INTO "trackitems" VALUES(NULL,NULL,NULL,NULL,NULL,'84',84,NULL,'S',NULL,NULL,1,0.0,1000006,NULL,NULL,NULL,510.0,150.0,NULL,NULL,1000007);
INSERT INTO "trackitems" VALUES(NULL,NULL,NULL,NULL,NULL,'85',85,NULL,'S',NULL,NULL,1,0.0,1000007,NULL,NULL,NULL,760.0,150.0,NULL,NULL,1000008);
INSERT INTO "trackitems" VALUES(NULL,NULL,NULL,NULL,NULL,'86',86,NULL,'S',NULL,NULL,1,0.0,1000008,NULL,NULL,NULL,950.0,150.0,NULL,NULL,1000010);
INSERT INTO "trackitems" VALUES(NULL,NULL,NULL,NULL,NULL,'87',87,NULL,'S',NULL,NULL,0,0.0,1000012,NULL,NULL,NULL,1020.0,150.0,NULL,NULL,1000010);
INSERT INTO "trackitems" VALUES('',NULL,NULL,5.65685424949238040408e+01,NULL,NULL,201,NULL,'L',NULL,NULL,NULL,0.0,522,145.0,NULL,240.0,200.0,105.0,NULL,NULL,511);
INSERT INTO "trackitems" VALUES('',NULL,NULL,5.65685424949238040408e+01,NULL,NULL,202,NULL,'L',NULL,NULL,NULL,0.0,512,105.0,NULL,240.0,200.0,145.0,NULL,NULL,521);
INSERT INTO "trackitems" VALUES('',NULL,NULL,2.82842712474619020204e+01,NULL,NULL,203,NULL,'L',NULL,NULL,NULL,0.0,513,120.0,NULL,1120.0,1100.0,100.0,NULL,NULL,1000011);
INSERT INTO "trackitems" VALUES('',NULL,NULL,2.82842712474619020204e+01,NULL,NULL,204,NULL,'L',NULL,NULL,NULL,0.0,1000014,175.0,NULL,1120.0,1100.0,155.0,NULL,NULL,523);
INSERT INTO "trackitems" VALUES('',NULL,NULL,2.82842712474619020204e+01,NULL,NULL,205,NULL,'L',NULL,NULL,NULL,0.0,1000023,100.0,NULL,1175.0,1155.0,120.0,NULL,NULL,551);
INSERT INTO "trackitems" VALUES('',NULL,NULL,2.82842712474619020204e+01,NULL,NULL,206,NULL,'L',NULL,NULL,NULL,0.0,76,75.0,NULL,1210.0,1190.0,95.0,NULL,NULL,561);
INSERT INTO "trackitems" VALUES('',NULL,NULL,2.82842712474619020204e+01,NULL,NULL,207,NULL,'L',NULL,NULL,NULL,0.0,41,200.0,NULL,1155.0,1135.0,180.0,NULL,NULL,531);
INSERT INTO "trackitems" VALUES(NULL,NULL,0.0,NULL,5.0,NULL,511,NULL,'P',5.0,NULL,NULL,0.0,1000001,0.0,201,-5.0,195.0,100.0,NULL,5.0,72);
INSERT INTO "trackitems" VALUES(NULL,NULL,0.0,NULL,5.0,NULL,512,NULL,'P',-5.0,NULL,NULL,0.0,1000001,0.0,202,5.0,245.0,100.0,NULL,-5.0,1000003);
INSERT INTO "trackitems" VALUES(NULL,NULL,5.0,NULL,-5.0,NULL,513,NULL,'P',-5.0,NULL,NULL,0.0,1000013,0.0,203,5.0,1125.0,125.0,NULL,-5.0,1000020);
INSERT INTO "trackitems" VALUES(NULL,NULL,0.0,NULL,-5.0,NULL,521,NULL,'P',5.0,NULL,NULL,0.0,1000002,0.0,202,-5.0,195.0,150.0,NULL,5.0,82);
INSERT INTO "trackitems" VALUES(NULL,NULL,0.0,NULL,-5.0,NULL,522,NULL,'P',-5.0,NULL,NULL,0.0,1000002,0.0,201,5.0,245.0,150.0,NULL,-5.0,83);
INSERT INTO "trackitems" VALUES(NULL,NULL,0.0,NULL,5.0,NULL,523,NULL,'P',5.0,NULL,NULL,0.0,1000013,0.0,204,-5.0,1095.0,150.0,NULL,5.0,1000012);
INSERT INTO "trackitems" VALUES(NULL,NULL,0.0,NULL,5.0,NULL,531,NULL,'P',5.0,NULL,NULL,0.0,1000015,0.0,207,-5.0,1130.0,175.0,NULL,5.0,1000014);
INSERT INTO "trackitems" VALUES(NULL,NULL,0.0,NULL,-5.0,NULL,551,NULL,'P',5.0,NULL,NULL,0.0,51,0.0,205,-5.0,1150.0,125.0,NULL,5.0,1000020);
INSERT INTO "trackitems" VALUES(NULL,NULL,0.0,NULL,-5.0,NULL,561,NULL,'P',5.0,NULL,NULL,0.0,61,0.0,206,-5.0,1185.0,100.0,NULL,5.0,1000023);
INSERT INTO "trackitems" VALUES(NULL,NULL,NULL,NULL,NULL,NULL,601,NULL,'E',NULL,NULL,NULL,0.0,1000019,NULL,NULL,NULL,0.0,150.0,NULL,NULL,81);
INSERT INTO "trackitems" VALUES(NULL,NULL,NULL,NULL,NULL,NULL,1000000,NULL,'E',NULL,NULL,NULL,0.0,601,NULL,NULL,NULL,0.0,100.0,NULL,NULL,71);
INSERT INTO "trackitems" VALUES('',NULL,NULL,40.0,NULL,NULL,1000001,NULL,'L',NULL,NULL,NULL,0.0,512,100.0,NULL,240.0,200.0,100.0,NULL,NULL,511);
INSERT INTO "trackitems" VALUES('',NULL,NULL,40.0,NULL,NULL,1000002,NULL,'L',NULL,NULL,NULL,0.0,522,150.0,NULL,240.0,200.0,150.0,NULL,NULL,521);
INSERT INTO "trackitems" VALUES('',NULL,NULL,700.0,NULL,NULL,1000003,NULL,'L',NULL,NULL,NULL,0.0,73,100.0,NULL,450.0,250.0,100.0,NULL,NULL,512);
INSERT INTO "trackitems" VALUES('',NULL,NULL,700.0,NULL,NULL,1000004,NULL,'L',NULL,NULL,NULL,0.0,74,100.0,NULL,700.0,510.0,100.0,NULL,NULL,73);
INSERT INTO "trackitems" VALUES('',NULL,NULL,700.0,NULL,NULL,1000005,NULL,'L',NULL,NULL,NULL,0.0,1000009,100.0,NULL,950.0,760.0,100.0,NULL,NULL,74);
INSERT INTO "trackitems" VALUES('',NULL,NULL,700.0,NULL,NULL,1000006,NULL,'L',NULL,NULL,NULL,0.0,84,150.0,NULL,450.0,310.0,150.0,NULL,NULL,83);
INSERT INTO "trackitems" VALUES('',NULL,NULL,700.0,NULL,NULL,1000007,NULL,'L',NULL,NULL,NULL,0.0,85,150.0,NULL,700.0,510.0,150.0,NULL,NULL,84);
INSERT INTO "trackitems" VALUES('',NULL,NULL,700.0,NULL,NULL,1000008,NULL,'L',NULL,NULL,NULL,0.0,86,150.0,NULL,890.0,760.0,150.0,NULL,NULL,85);
INSERT INTO "trackitems" VALUES('26',NULL,80.0,80.0,95.0,NULL,1000009,NULL,'LP',1019.0,NULL,NULL,0.0,75,100.0,NULL,1020.0,950.0,100.0,'WTL',950.0,1000005);
INSERT INTO "trackitems" VALUES('25',NULL,155.0,80.0,170.0,NULL,1000010,NULL,'LP',1019.0,NULL,NULL,0.0,87,150.0,NULL,1020.0,950.0,150.0,'WTL',950.0,86);
INSERT INTO "trackitems" VALUES('',NULL,NULL,20.0,NULL,NULL,1000011,NULL,'L',NULL,NULL,NULL,0.0,203,100.0,NULL,1100.0,1080.0,100.0,NULL,NULL,75);
INSERT INTO "trackitems" VALUES('',NULL,NULL,10.0,NULL,NULL,1000012,NULL,'L',NULL,NULL,NULL,0.0,523,150.0,NULL,1090.0,1080.0,150.0,NULL,NULL,87);
INSERT INTO "trackitems" VALUES('',NULL,NULL,2.82842712474619020204e+01,NULL,NULL,1000013,NULL,'L',NULL,NULL,NULL,0.0,513,130.0,NULL,1120.0,1100.0,150.0,NULL,NULL,523);
INSERT INTO "trackitems" VALUES('',NULL,NULL,5.0,NULL,NULL,1000014,NULL,'L',NULL,NULL,NULL,0.0,531,175.0,NULL,1125.0,1120.0,175.0,NULL,NULL,204);
INSERT INTO "trackitems" VALUES('',NULL,NULL,70.0,NULL,NULL,1000015,NULL,'L',NULL,NULL,NULL,0.0,31,175.0,NULL,1155.0,1135.0,175.0,NULL,NULL,531);
INSERT INTO "trackitems" VALUES('',NULL,NULL,45.0,NULL,NULL,1000016,NULL,'L',NULL,NULL,NULL,0.0,32,175.0,NULL,1260.0,1215.0,175.0,NULL,NULL,31);
INSERT INTO "trackitems" VALUES(NULL,NULL,NULL,NULL,NULL,NULL,1000017,NULL,'E',NULL,NULL,NULL,0.0,1000019,NULL,NULL,NULL,1320.0,175.0,NULL,NULL,32);
INSERT INTO "trackitems" VALUES('',NULL,NULL,70.0,NULL,NULL,1000018,NULL,'L',NULL,NULL,NULL,0.0,42,200.0,NULL,1260.0,1215.0,200.0,NULL,NULL,41);
INSERT INTO "trackitems" VALUES(NULL,NULL,NULL,NULL,NULL,NULL,1000019,NULL,'E',NULL,NULL,NULL,0.0,1000022,NULL,NULL,NULL,1320.0,200.0,NULL,NULL,42);
INSERT INTO "trackitems" VALUES('',NULL,NULL,15.0,NULL,NULL,1000020,NULL,'L',NULL,NULL,NULL,0.0,551,125.0,NULL,1145.0,1130.0,125.0,NULL,NULL,513);
INSERT INTO "trackitems" VALUES('5',NULL,NULL,85.0,NULL,NULL,1000021,NULL,'L',NULL,NULL,NULL,0.0,52,125.0,NULL,1300.0,1215.0,125.0,'DPT',NULL,51);
INSERT INTO "trackitems" VALUES(NULL,NULL,NULL,NULL,NULL,NULL,1000022,NULL,'E',NULL,NULL,NULL,0.0,1000019,NULL,NULL,NULL,1360.0,125.0,NULL,NULL,52);
INSERT INTO "trackitems" VALUES('',NULL,NULL,5.0,NULL,NULL,1000023,NULL,'L',NULL,NULL,NULL,0.0,561,100.0,NULL,1180.0,1175.0,100.0,NULL,NULL,205);
INSERT INTO "trackitems" VALUES('6',NULL,NULL,80.0,NULL,NULL,1000024,NULL,'L',NULL,NULL,NULL,0.0,62,100.0,NULL,1300.0,1250.0,100.0,'DPT',NULL,61);
INSERT INTO "trackitems" VALUES(NULL,NULL,NULL,NULL,NULL,NULL,1000025,NULL,'E',NULL,NULL,NULL,0.0,1000019,NULL,NULL,NULL,1360.0,100.0,NULL,NULL,62);
INSERT INTO "trackitems" VALUES('7',NULL,NULL,80.0,NULL,NULL,1000026,NULL,'L',NULL,NULL,NULL,0.0,1000028,75.0,NULL,1300.0,1270.0,75.0,'DPT',NULL,76);
INSERT INTO "trackitems" VALUES(NULL,NULL,NULL,NULL,NULL,NULL,1000027,NULL,'E',NULL,NULL,NULL,0.0,1000019,NULL,NULL,NULL,1360.0,75.0,NULL,NULL,1000028);
INSERT INTO "trackitems" VALUES(NULL,NULL,NULL,NULL,NULL,'77',1000028,NULL,'SB',NULL,NULL,0,0.0,1000027,NULL,NULL,NULL,1300.0,75.0,NULL,NULL,1000026);
CREATE TABLE routes (
routenum INTEGER PRIMARY KEY,
beginsignal INTEGER,
endsignal INTEGER,
initialstate INTEGER);
INSERT INTO "routes" VALUES(1,72,73,1);
INSERT INTO "routes" VALUES(2,73,74,2);
INSERT INTO "routes" VALUES(3,74,75,2);
INSERT INTO "routes" VALUES(51,86,85,2);
INSERT INTO "routes" VALUES(52,85,84,2);
INSERT INTO "routes" VALUES(53,84,83,2);
INSERT INTO "routes" VALUES(54,83,81,NULL);
INSERT INTO "routes" VALUES(101,82,73,NULL);
INSERT INTO "routes" VALUES(102,83,71,NULL);
INSERT INTO "routes" VALUES(202,75,62,NULL);
INSERT INTO "routes" VALUES(203,75,52,1);
INSERT INTO "routes" VALUES(205,87,62,NULL);
INSERT INTO "routes" VALUES(206,87,52,NULL);
INSERT INTO "routes" VALUES(207,76,86,NULL);
INSERT INTO "routes" VALUES(208,61,86,NULL);
INSERT INTO "routes" VALUES(209,51,86,NULL);
INSERT INTO "routes" VALUES(210,87,32,NULL);
INSERT INTO "routes" VALUES(211,87,42,NULL);
INSERT INTO "routes" VALUES(212,31,86,NULL);
INSERT INTO "routes" VALUES(213,41,86,NULL);
INSERT INTO "routes" VALUES(215,75,1000028,0);
INSERT INTO "routes" VALUES(216,87,1000028,0);
CREATE TABLE directions (
routenum INTEGER,
tiid INTEGER,
direction INTEGER);
INSERT INTO "directions" VALUES(1,512,0);
INSERT INTO "directions" VALUES(1,511,0);
INSERT INTO "directions" VALUES(202,513,1);
INSERT INTO "directions" VALUES(202,561,0);
INSERT INTO "directions" VALUES(202,551,1);
INSERT INTO "directions" VALUES(203,513,1);
INSERT INTO "directions" VALUES(203,551,0);
INSERT INTO "directions" VALUES(205,513,0);
INSERT INTO "directions" VALUES(205,523,0);
INSERT INTO "directions" VALUES(205,561,0);
INSERT INTO "directions" VALUES(205,551,1);
INSERT INTO "directions" VALUES(206,513,0);
INSERT INTO "directions" VALUES(206,523,0);
INSERT INTO "directions" VALUES(206,551,0);
INSERT INTO "directions" VALUES(207,561,1);
INSERT INTO "directions" VALUES(207,523,0);
INSERT INTO "directions" VALUES(207,513,0);
INSERT INTO "directions" VALUES(207,551,1);
INSERT INTO "directions" VALUES(208,561,0);
INSERT INTO "directions" VALUES(208,523,0);
INSERT INTO "directions" VALUES(208,513,0);
INSERT INTO "directions" VALUES(208,551,1);
INSERT INTO "directions" VALUES(209,513,0);
INSERT INTO "directions" VALUES(209,523,0);
INSERT INTO "directions" VALUES(209,551,0);
INSERT INTO "directions" VALUES(210,531,0);
INSERT INTO "directions" VALUES(210,523,1);
INSERT INTO "directions" VALUES(211,531,1);
INSERT INTO "directions" VALUES(211,523,1);
INSERT INTO "directions" VALUES(212,523,1);
INSERT INTO "directions" VALUES(212,531,0);
INSERT INTO "directions" VALUES(213,523,1);
INSERT INTO "directions" VALUES(213,531,1);
INSERT INTO "directions" VALUES(215,513,1);
INSERT INTO "directions" VALUES(215,561,1);
INSERT INTO "directions" VALUES(215,551,1);
INSERT INTO "directions" VALUES(216,513,0);
INSERT INTO "directions" VALUES(216,523,0);
INSERT INTO "directions" VALUES(216,561,1);
INSERT INTO "directions" VALUES(216,551,1);
INSERT INTO "directions" VALUES(101,512,1);
INSERT INTO "directions" VALUES(101,521,1);
INSERT INTO "directions" VALUES(102,522,1);
INSERT INTO "directions" VALUES(102,511,1);
INSERT INTO "directions" VALUES(54,521,0);
INSERT INTO "directions" VALUES(54,522,0);
CREATE TABLE traintypes (
code VARCHAR(10),
description VARCHAR(200),
maxspeed DOUBLE,
stdaccel DOUBLE,
stdbraking DOUBLE,
emergbraking DOUBLE,
tlength DOUBLE);
INSERT INTO "traintypes" VALUES('UT','Underground train',25.0,0.5,0.5,1.5,70.0);
CREATE TABLE services (
servicecode VARCHAR(10),
description VARCHAR(200),
nextservice VARCHAR(10),
autoreverse BOOLEAN,
plannedtraintype VARCHAR(10));
INSERT INTO "services" VALUES('BW02','BANK->WATERLOO','WB03',1,NULL);
INSERT INTO "services" VALUES('BW04','BANK->WATERLOO','WB05',1,NULL);
INSERT INTO "services" VALUES('WB05','WATERLOO->BANK','BW07',1,NULL);
INSERT INTO "services" VALUES('WB03','WATERLOO->BANK','BW05',1,NULL);
INSERT INTO "services" VALUES('WB04','WATERLOO->BANK','BW06',1,NULL);
INSERT INTO "services" VALUES('BW03','BANK->WATERLOO','WB04',1,NULL);
INSERT INTO "services" VALUES('WB06','WATERLOO->BANK','BW08',1,NULL);
INSERT INTO "services" VALUES('BW01','BANK->WATERLOO','WB02',1,NULL);
INSERT INTO "services" VALUES('BW06','BANK->WATERLOO','WB07',1,NULL);
INSERT INTO "services" VALUES('BW07','BANK->WATERLOO','WB08',1,NULL);
INSERT INTO "services" VALUES('WB02','WATERLOO->BANK','BW04',1,NULL);
INSERT INTO "services" VALUES('BW05','BANK->WATERLOO','WB06',1,NULL);
INSERT INTO "services" VALUES('BW08','BANK->WATERLOO','',1,NULL);
INSERT INTO "services" VALUES('WB08','WATERLOO->BANK','','',NULL);
INSERT INTO "services" VALUES('WB07','WATERLOO->BANK','',1,NULL);
INSERT INTO "services" VALUES('WB01','WATERLOO->BANK','BW03',1,NULL);
CREATE TABLE servicelines (
servicecode VARCHAR(10),
placecode VARCHAR(10),
scheduledarrivaltime TIME,
scheduleddeparturetime TIME,
trackcode VARCHAR(10),
stop BOOLEAN);
INSERT INTO "servicelines" VALUES('BW02','BNK','','06:05:30','8',1);
INSERT INTO "servicelines" VALUES('BW02','WTL','06:08:00','06:10:00','26',1);
INSERT INTO "servicelines" VALUES('BW02','DPT','06:10:30','06:11:00','5',1);
INSERT INTO "servicelines" VALUES('BW04','BNK','','06:15:30','8',1);
INSERT INTO "servicelines" VALUES('BW04','WTL','06:18:00','06:20:00','26',1);
INSERT INTO "servicelines" VALUES('BW04','DPT','06:20:30','06:21:00','5',1);
INSERT INTO "servicelines" VALUES('WB05','WTL','','06:25:00','25',1);
INSERT INTO "servicelines" VALUES('WB05','BNK','06:27:30','06:28:00','7',1);
INSERT INTO "servicelines" VALUES('WB03','WTL','','06:15:00','25',1);
INSERT INTO "servicelines" VALUES('WB03','BNK','06:17:30','06:18:00','7',1);
INSERT INTO "servicelines" VALUES('WB04','WTL','','06:20:00','25',1);
INSERT INTO "servicelines" VALUES('WB04','BNK','06:22:30','06:23:00','8',1);
INSERT INTO "servicelines" VALUES('BW03','BNK','','06:10:30','7',1);
INSERT INTO "servicelines" VALUES('BW03','WTL','06:13:00','06:15:00','26',1);
INSERT INTO "servicelines" VALUES('BW03','DPT','06:15:30','06:16:00','5',1);
INSERT INTO "servicelines" VALUES('WB06','WTL','','06:30:00','25',1);
INSERT INTO "servicelines" VALUES('WB06','BNK','06:32:30','06:33:00','8',1);
INSERT INTO "servicelines" VALUES('BW01','BNK','','06:00:30','7',1);
INSERT INTO "servicelines" VALUES('BW01','WTL','06:03:00','06:05:00','26',1);
INSERT INTO "servicelines" VALUES('BW01','DPT','06:05:30','06:06:00','5',1);
INSERT INTO "servicelines" VALUES('BW06','BNK','','06:25:30','8',1);
INSERT INTO "servicelines" VALUES('BW06','WTL','06:28:00','06:30:00','26',1);
INSERT INTO "servicelines" VALUES('BW06','DPT','06:30:30','06:31:00','5',1);
INSERT INTO "servicelines" VALUES('BW07','BNK','','06:30:30','7',1);
INSERT INTO "servicelines" VALUES('BW07','WTL','06:33:00','06:35:00','26',1);
INSERT INTO "servicelines" VALUES('BW07','DPT','06:35:30','06:36:00','5',1);
INSERT INTO "servicelines" VALUES('WB02','WTL','','06:10:00','25',1);
INSERT INTO "servicelines" VALUES('WB02','BNK','06:12:30','06:13:00','8',1);
INSERT INTO "servicelines" VALUES('BW05','BNK','','06:20:30','7',1);
INSERT INTO "servicelines" VALUES('BW05','WTL','06:23:00','06:25:00','26',1);
INSERT INTO "servicelines" VALUES('BW05','DPT','06:25:30','06:26:00','5',1);
INSERT INTO "servicelines" VALUES('BW08','BNK','','06:35:30','8',1);
INSERT INTO "servicelines" VALUES('BW08','WTL','06:38:00','06:40:00','26',1);
INSERT INTO "servicelines" VALUES('BW08','DPT','06:40:30','06:41:00','5',1);
INSERT INTO "servicelines" VALUES('WB08','WTL','','06:40:00','25',1);
INSERT INTO "servicelines" VALUES('WB08','BNK','06:42:30','06:43:00','8',1);
INSERT INTO "servicelines" VALUES('WB07','WTL','','06:35:00','25',1);
INSERT INTO "servicelines" VALUES('WB07','BNK','06:37:30','06:38:00','7',1);
INSERT INTO "servicelines" VALUES('WB01','WTL','','06:05:00','25',1);
INSERT INTO "servicelines" VALUES('WB01','BNK','06:07:30','06:08:00','7',1);
CREATE TABLE trains (
trainid INTEGER,
servicecode VARCHAR(10),
traintype VARCHAR(10),
speed DOUBLE,
tiid INTEGER,
previoustiid INTEGER,
posonti DOUBLE,
appeartime TIME,
initialdelay VARCHAR(255),
nextplaceindex INTEGER,
stoppedtime INTEGER);
INSERT INTO "trains" VALUES(0,'BW01','UT',0.0,7,71,79.0,'06:00:00','0',0,0);
INSERT INTO "trains" VALUES(1,'WB01','UT',0.0,1000010,87,79.0,'06:00:00','0',0,0);
INSERT INTO "trains" VALUES(2,'BW02','UT',0.0,8,81,79.0,'06:00:00','0',0,0);
COMMIT;
