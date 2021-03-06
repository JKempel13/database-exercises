DROP DATABASE IF EXISTS quiz_db;
DROP TABLE IF EXISTS Administrators;
DROP TABLE IF EXISTS Students;

CREATE DATABASE quiz_db;

USE quiz_db;

CREATE TABLE Administrators (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    email VARCHAR(50),
    gender VARCHAR(50)
);

CREATE TABLE Students (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    student_id VARCHAR(50),
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    email VARCHAR(50),
    gender VARCHAR(50),
    PRIMARY KEY (id,student_id)
);

CREATE TABLE quiz_questions (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    question VARCHAR (255),
    answer VARCHAR (255)
);


INSERT INTO Administrators (first_name, last_name, email, gender)
VALUES ('Blaine', 'Likly', 'bliklyd@chicagotribune.com', 'M'),
       ('Tandie', 'Kaes', 'tkaese@ibm.com', 'F'),
       ('Claresta', 'Towersey', 'ctowerseyf@wordpress.org', 'F'),
       ('Nora', 'Bilyard', 'nbilyardg@bloomberg.com', 'F'),
       ('Patty', 'Luca', 'plucah@mayoclinic.com', 'M'),
       ('Germaine', 'O''Loughnan', 'goloughnani@php.net', 'M'),
       ('Sissy', 'Courtes', 'scourtesj@aol.com', 'F'),
       ('Jackquelin', 'Braidley', 'jbraidleyk@linkedin.com', 'F'),
       ('Lorne', 'Lohoar', 'llohoarl@webeden.co.uk', 'F'),
       ('Goraud', 'Hainning', 'ghainningm@homestead.com', 'M'),
       ('Martyn', 'Whitehurst', 'mwhitehurstn@deviantart.com', 'M'),
       ('Wye', 'Hargrave', 'whargraveo@wikimedia.org', 'M'),
       ('Erminie', 'Barabisch', 'ebarabischp@wikimedia.org', 'F'),
       ('Hope', 'Steel', 'hsteelq@washington.edu', 'F'),
       ('Hamil', 'Espinosa', 'hespinosar@boston.com', 'M'),
       ('Morna', 'Follacaro', 'mfollacaros@storify.com', 'F'),
       ('Ruthann', 'Schlagman', 'rschlagmant@wix.com', 'F'),
       ('Portie', 'Gravenor', 'pgravenoru@arizona.edu', 'M'),
       ('Bartram', 'Browne', 'bbrownev@nytimes.com', 'M'),
       ('Federica', 'Duns', 'fdunsw@macromedia.com', 'F'),
       ('Bellanca', 'Nowick', 'bnowickx@hatena.ne.jp', 'F'),
       ('Bondon', 'Bridgwood', 'bbridgwoody@meetup.com', 'M'),
       ('Ivar', 'Vest', 'ivestz@devhub.com', 'M'),
       ('Van', 'Wadlow', 'vwadlow10@guardian.co.uk', 'F'),
       ('Zorah', 'Shillington', 'zshillington11@boston.com', 'F');


INSERT INTO Students (student_id, first_name, last_name, email, gender)
VALUES ('49-302-2552', 'Ashbey', 'Filipponi', 'afilipponi0@surveymonkey.com', 'M'),
       ('50-294-1132', 'Brody', 'Schermick', 'bschermick1@engadget.com', 'M'),
       ('07-440-8017', 'Florinda', 'Malser', 'fmalser2@wired.com', 'F'),
       ('68-948-8219', 'Giff', 'Madge', 'gmadge3@time.com', 'M'),
       ('50-365-4628', 'Pren', 'Rosellini', 'prosellini4@shop-pro.jp', 'M'),
       ('72-277-3875', 'Eberto', 'Gasker', 'egasker5@prnewswire.com', 'M'),
       ('97-776-2648', 'Gui', 'Folca', 'gfolca6@nymag.com', 'F'),
       ('45-746-2427', 'Virgina', 'Harbage', 'vharbage7@addthis.com', 'F'),
       ('24-799-5105', 'Devi', 'Eberts', 'deberts8@washington.edu', 'F'),
       ('83-760-3120', 'Max', 'McKmurrie', 'mmckmurrie9@mapquest.com', 'M'),
       ('85-532-3161', 'Marv', 'Bartoloma', 'mbartolomaa@skype.com', 'M'),
       ('31-914-6703', 'Fan', 'Pringley', 'fpringleyb@huffingtonpost.com', 'F'),
       ('09-115-4900', 'Joy', 'Puve', 'jpuvec@merriam-webster.com', 'F'),
       ('84-697-6361', 'Even', 'Le feuvre', 'elefeuvred@mtv.com', 'M'),
       ('14-147-2396', 'Haily', 'Van Dalen', 'hvandalene@webmd.com', 'M'),
       ('52-386-3224', 'Jorgan', 'Paraman', 'jparamanf@networkadvertising.org', 'M'),
       ('74-511-0910', 'Una', 'Littlejohns', 'ulittlejohnsg@wiley.com', 'F'),
       ('72-049-0223', 'Brook', 'Ferras', 'bferrash@smugmug.com', 'M'),
       ('49-167-5549', 'Sunny', 'Thomazin', 'sthomazini@goodreads.com', 'M'),
       ('67-614-1064', 'Rudolfo', 'Niemetz', 'rniemetzj@who.int', 'M'),
       ('82-914-9021', 'Alyosha', 'Danilowicz', 'adanilowiczk@state.gov', 'M'),
       ('73-037-9244', 'Debbi', 'Formilli', 'dformillil@nhs.uk', 'F'),
       ('06-075-0764', 'Yuri', 'Brader', 'ybraderm@blinklist.com', 'M'),
       ('61-804-7263', 'Dino', 'Segot', 'dsegotn@liveinternet.ru', 'M'),
       ('86-498-7257', 'Shae', 'Amsberger', 'samsbergero@storify.com', 'M'),
       ('54-586-5830', 'Arty', 'Jerrold', 'ajerroldp@dot.gov', 'M'),
       ('48-801-6331', 'Welby', 'Winridge', 'wwinridgeq@163.com', 'M'),
       ('91-331-2009', 'Keir', 'Saturley', 'ksaturleyr@guardian.co.uk', 'M'),
       ('74-910-6137', 'Faunie', 'Yoodall', 'fyoodalls@com.com', 'F'),
       ('34-353-4965', 'Kevina', 'Marien', 'kmarient@merriam-webster.com', 'F'),
       ('19-914-5103', 'Wilow', 'Millam', 'wmillamu@prnewswire.com', 'F'),
       ('76-100-0585', 'Silvanus', 'Cromarty', 'scromartyv@sakura.ne.jp', 'M'),
       ('24-928-9384', 'Lev', 'Huzzey', 'lhuzzeyw@hatena.ne.jp', 'M'),
       ('14-510-7957', 'Averil', 'Finden', 'afindenx@squarespace.com', 'M'),
       ('12-046-1045', 'Aluino', 'Francescoccio', 'afrancescoccioy@wix.com', 'M'),
       ('70-759-6856', 'Angela', 'Nudds', 'anuddsz@smh.com.au', 'F'),
       ('60-844-9099', 'Benjamin', 'Sambles', 'bsambles10@skyrock.com', 'M'),
       ('35-329-4304', 'Ollie', 'Davidofski', 'odavidofski11@comcast.net', 'M'),
       ('05-020-4072', 'Dusty', 'Fawdrie', 'dfawdrie12@over-blog.com', 'F'),
       ('54-477-4547', 'Emlyn', 'Ponceford', 'eponceford13@sourceforge.net', 'M'),
       ('93-945-8200', 'Bren', 'MacPhail', 'bmacphail14@va.gov', 'F'),
       ('35-676-4976', 'Carson', 'Clemont', 'cclemont15@phpbb.com', 'M'),
       ('28-017-3967', 'Felipe', 'Eves', 'feves16@buzzfeed.com', 'M'),
       ('52-488-7777', 'Pepi', 'Grimble', 'pgrimble17@prweb.com', 'F'),
       ('29-214-9328', 'Lilla', 'Marjoram', 'lmarjoram18@whitehouse.gov', 'F'),
       ('94-174-4177', 'Wit', 'Bramhill', 'wbramhill19@amazon.co.uk', 'M'),
       ('19-696-2566', 'Christiane', 'Cellone', 'ccellone1a@so-net.ne.jp', 'F'),
       ('78-637-4525', 'Arlin', 'Boman', 'aboman1b@google.it', 'M'),
       ('66-441-1536', 'Denver', 'Bengtsson', 'dbengtsson1c@shop-pro.jp', 'M'),
       ('70-460-7626', 'Ahmed', 'Twopenny', 'atwopenny1d@npr.org', 'M'),
       ('71-993-1982', 'Tyler', 'Alloisi', 'talloisi1e@cbsnews.com', 'M'),
       ('51-326-0257', 'Kingsley', 'Alday', 'kalday1f@delicious.com', 'M'),
       ('08-697-5639', 'Thurstan', 'Beneix', 'tbeneix1g@guardian.co.uk', 'M'),
       ('47-737-8156', 'Pooh', 'Floyde', 'pfloyde1h@jigsy.com', 'M'),
       ('80-322-8469', 'Matthias', 'Dand', 'mdand1i@sogou.com', 'M'),
       ('38-962-1743', 'Patrizius', 'Mylchreest', 'pmylchreest1j@gnu.org', 'M'),
       ('97-939-7959', 'Claudine', 'MacNess', 'cmacness1k@over-blog.com', 'F'),
       ('43-117-6770', 'Joyce', 'Amorine', 'jamorine1l@histats.com', 'F'),
       ('47-686-1858', 'Moshe', 'Marsay', 'mmarsay1m@hhs.gov', 'M'),
       ('84-313-9180', 'Tamra', 'Bantick', 'tbantick1n@nsw.gov.au', 'F'),
       ('21-907-2573', 'Casie', 'Gonsalvez', 'cgonsalvez1o@sitemeter.com', 'F'),
       ('77-817-0094', 'Sebastian', 'Rugg', 'srugg1p@hc360.com', 'M'),
       ('33-076-6645', 'Darcie', 'Leifer', 'dleifer1q@godaddy.com', 'F'),
       ('93-284-6028', 'Arlyn', 'Idney', 'aidney1r@taobao.com', 'F'),
       ('10-159-9624', 'Boigie', 'Traise', 'btraise1s@usa.gov', 'M'),
       ('22-977-0102', 'Caesar', 'Berre', 'cberre1t@wix.com', 'M'),
       ('42-310-3728', 'Isobel', 'Tollmache', 'itollmache1u@surveymonkey.com', 'F'),
       ('11-916-3912', 'Marchall', 'Sodor', 'msodor1v@google.com.au', 'M'),
       ('93-944-0564', 'Andrea', 'Dunkerly', 'adunkerly1w@freewebs.com', 'M'),
       ('25-895-5185', 'Armstrong', 'Kilbane', 'akilbane1x@nih.gov', 'M'),
       ('85-763-8237', 'Marja', 'Greensite', 'mgreensite1y@wunderground.com', 'F'),
       ('53-920-0755', 'Forrester', 'Libri', 'flibri1z@about.com', 'M'),
       ('16-607-9573', 'Jeth', 'Walch', 'jwalch20@cmu.edu', 'M'),
       ('59-865-1932', 'Briny', 'Drewet', 'bdrewet21@constantcontact.com', 'F'),
       ('38-354-1834', 'Lemmy', 'McCloy', 'lmccloy22@reverbnation.com', 'M'),
       ('72-266-7824', 'Tobie', 'Yeates', 'tyeates23@youtube.com', 'M'),
       ('37-578-5019', 'Mae', 'Hawkridge', 'mhawkridge24@etsy.com', 'F'),
       ('85-987-2332', 'Oneida', 'Chubb', 'ochubb25@wsj.com', 'F'),
       ('42-528-9680', 'Emanuel', 'Burchatt', 'eburchatt26@newsvine.com', 'M'),
       ('42-344-1191', 'Sinclair', 'Goslin', 'sgoslin27@ocn.ne.jp', 'M'),
       ('26-954-8482', 'Burk', 'Bourgourd', 'bbourgourd28@parallels.com', 'M'),
       ('36-733-8726', 'Maxwell', 'Bonass', 'mbonass29@ft.com', 'M'),
       ('66-573-8032', 'Missy', 'Littley', 'mlittley2a@exblog.jp', 'F'),
       ('97-110-5355', 'Harrie', 'Keene', 'hkeene2b@pagesperso-orange.fr', 'F'),
       ('18-604-9272', 'Robin', 'Pikhno', 'rpikhno2c@unesco.org', 'M'),
       ('37-581-3624', 'Leonid', 'Carbery', 'lcarbery2d@guardian.co.uk', 'M'),
       ('95-663-7875', 'Aleksandr', 'Gronou', 'agronou2e@mapy.cz', 'M'),
       ('61-650-4193', 'Issy', 'Meaddowcroft', 'imeaddowcroft2f@live.com', 'F'),
       ('43-087-8705', 'Nancey', 'Whines', 'nwhines2g@google.cn', 'F'),
       ('31-308-5788', 'Petunia', 'Fillingham', 'pfillingham2h@nationalgeographic.com', 'F'),
       ('04-393-1930', 'Katheryn', 'Blundin', 'kblundin2i@cmu.edu', 'F'),
       ('89-927-7814', 'Celie', 'Dando', 'cdando2j@thetimes.co.uk', 'F'),
       ('63-740-1780', 'Haven', 'Lamort', 'hlamort2k@flavors.me', 'M'),
       ('48-347-9116', 'Kelby', 'Leving', 'kleving2l@lycos.com', 'M'),
       ('34-161-3196', 'Cecilius', 'Downie', 'cdownie2m@t-online.de', 'M'),
       ('81-402-3756', 'Zorine', 'Coverly', 'zcoverly2n@bizjournals.com', 'F'),
       ('69-165-0041', 'Cyndie', 'Norrey', 'cnorrey2o@jimdo.com', 'F'),
       ('80-113-3919', 'Haywood', 'Bragger', 'hbragger2p@wunderground.com', 'M'),
       ('29-138-8281', 'Rhianna', 'Pilbury', 'rpilbury2q@state.gov', 'F'),
       ('91-946-0121', 'Jay', 'Hardistry', 'jhardistry2r@prnewswire.com', 'M');
