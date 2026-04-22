create table customers_3(
customer_id int primary key,
first_name varchar(50),
last_name varchar(50),
phone_number varchar(20),
email varchar(100),
loyalty_segment varchar(20)
);

create table merchants(
mrc_id int primary key,
mrc_name varchar(100),
mrc_category varchar(50),
mrc_city varchar(50),
mrc_country varchar(50)
);

create table cards(
card_id int primary key,
card_number varchar(16),
card_type varchar(20),
issue_date date,
expiry_date date,
card_status varchar(15),
amount decimal(18,2),
customer_id int,
foreign key(customer_id) references customers_2(customer_id)
);

create table transactions_1(
txn_id int primary key,
txn_date timestamp,
txn_amount decimal(18,2),
currency varchar(3),
txn_status varchar(15),
fee_rate decimal(5,4),
txn_fee decimal(18,2),
card_id int,
mrc_id int,
foreign key(card_id) references cards(card_id),
foreign key(mrc_id) references merchants(mrc_id)
);


insert into customers_3 values(1,'Ahmed','Aliyev','+994501234567','a.aliyev@mail.com','plat');
insert into customers_3 values(2,'Leyla','Mammadova','+994552345678','l.mam@test.com','P');
insert into customers_3 values(3,'Resad','Huseynov','+994703456789','resad.h@domain.com','gold*');
insert into customers_3 values(4,'Nigar','Kerimova','+994504567890','nigar@krm.az',null);
insert into customers_3 values(5,'Elvin','Qasimov','+994515678901','e.qas@mail.ru','sil');
insert into customers_3 values(6,'Zara','Hasanova','+994996789012','zara@comp.com','brnz');
insert into customers_3 values(7,'Fuad','Ismayilov','+994507890123','fuad@mail.com','platinum!');
insert into customers_3 values(8,'Aygun','Valiyeva','+994558901234','a.val@test.az','g');
insert into customers_3 values(9,'Murad','Aslanov','+994709012345','murad@aslan.com','silver#');
insert into customers_3 values(10,'Fidan','Aliyeva','+994500123456','fidan.a@mail.com','b');
insert into customers_3 values(11,'Elvin','Mehdiyev','+994501112233','e.meh@mail.com','plat');
insert into customers_3 values(12,'Nermin','Sadigova','+994552223344','n.sad@test.com','gold');
insert into customers_3 values(13,'Tural','Mammadov','+994703334455','tural@mail.az','s');
insert into customers_3 values(14,'Sevinc','Eliyeva','+994504445566','s.eli@corp.com','bronze@');
insert into customers_3 values(15,'Vusal','Huseynov','+994515556677','v.hus@mail.ru',' ');
insert into customers_3 values(16,'Leyla','Ahmedova','+994996667788','l.ahm@test.az','platinum');
insert into customers_3 values(17,'Elcin','Quliyev','+994507778899','e.qul@mail.com','g');
insert into customers_3 values(18,'Ayten','Ismayilova','+994558889900','a.ism@test.com','silvr');
insert into customers_3 values(19,'Kenan','Kerimov','+994709990011','k.ker@mail.az','b');
insert into customers_3 values(20,'Gunay','Aliyeva','+994500001122','g.ali@corp.com','gold*');
insert into customers_3 values(21,'Orxan','Nezerov','+994511112233','o.nez@mail.ru','p');
insert into customers_3 values(22,'Fidan','Ismayilzade','+994502223344','f.ism@test.com','silver#');
insert into customers_3 values(23,'Rasim','Mammadov','+994553334455','r.mam@mail.az',null);
insert into customers_3 values(24,'Nargiz','Babayeva','+994704445566','n.bab@corp.com','gold');
insert into customers_3 values(25,'Emin','Abdullayev','+994505556677','e.abd@mail.com','brnz');
insert into customers_3 values(26,'Samir','Hesenov','+994516667788','s.hes@test.az','platinum!');
insert into customers_3 values(27,'Aynur','Quliyeva','+994997778899','a.qul@mail.ru','s');
insert into customers_3 values(28,'Ramil','Aliyev','+994508889900','r.ali@test.com','gold*');
insert into customers_3 values(29,'Konul','Mammadova','+994559990011','k.mam@mail.az','b');
insert into customers_3 values(30,'Zamin','Ismayilov','+994700001122','z.ism@corp.com','plat');
insert into customers_3 values(31,'Elmir','Abbasov','+994501112244','e.abb@mail.com','platinum');
insert into customers_3 values(32,'Sabina','Huseynova','+994552223355','s.hus@test.com','gold');
insert into customers_3 values(33,'Anar','Kerimov','+994703334466','a.ker@mail.az','sil');
insert into customers_3 values(34,'Mehriban','Eliyeva','+994504445577','m.eli@corp.com','bronze@');
insert into customers_3 values(35,'Vasif','Nezerov','+994515556688','v.nez@mail.ru','plat');
insert into customers_3 values(36,'Laman','Ahmedova','+994996667799','l.ahm@test.az','gold*');
insert into customers_3 values(37,'Elsad','Quliyev','+994507778800','e.qul@mail.com','s');
insert into customers_3 values(38,'Vafa','Ismayilova','+994558889911','v.ism@test.com','silvr');
insert into customers_3 values(39,'Namig','Kerimov','+994709990022','n.ker@mail.az','b');
insert into customers_3 values(40,'Aynur','Aliyeva','+994500001133','a.ali@corp.com','platinum!');
insert into customers_3 values(41,'Kamran','Nezerov','+994511112244','k.nez@mail.ru','p');
insert into customers_3 values(42,'Arzu','Ismayilzade','+994502223355','a.ism@test.com','silver#');
insert into customers_3 values(43,'Rustam','Mammadov','+994553334466','r.mam@mail.az',null);
insert into customers_3 values(44,'Ulviyya','Babayeva','+994704445577','u.bab@corp.com','gold');
insert into customers_3 values(45,'Elcin','Abdullayev','+994505556688','e.abd@mail.com','brnz');
insert into customers_3 values(46,'Shahin','Hesenov','+994516667799','s.hes@test.az','platinum!');
insert into customers_3 values(47,'Dilara','Quliyeva','+994997778800','d.qul@mail.ru','s');
insert into customers_3 values(48,'Farid','Aliyev','+994508889911','f.ali@test.com','gold*');
insert into customers_3 values(49,'Nermin','Mammadova','+994559990022','n.mam@mail.az','b');
insert into customers_3 values(50,'Samir','Nezerov','+994505554433','s.nez@corp.com','bronze@');
insert into customers_3 values(51,'Taleh','Aliyev','+994501234568','t.ali@mail.com','gold');
insert into customers_3 values(52,'Nuray','Mammadova','+994552345679','n.mam@test.com','silver');
insert into customers_3 values(53,'Cavid','Huseynov','+994703456780','c.hus@domain.com','platinum');
insert into customers_3 values(54,'Senam','Kerimova','+994504567891','s.ker@krm.az',null);
insert into customers_3 values(55,'Rauf','Qasimov','+994515678902','r.qas@mail.ru','bronze');
insert into customers_3 values(56,'Nilufer','Hasanova','+994996789013','n.has@comp.com','gold*');
insert into customers_3 values(57,'Tural','Ismayilov','+994507890124','t.ism@mail.com','plat');
insert into customers_3 values(58,'Samira','Valiyeva','+994558901235','s.val@test.az','silvr');
insert into customers_3 values(59,'Ilkin','Aslanov','+994709012346','i.asl@aslan.com','b');
insert into customers_3 values(60,'Gunel','Aliyeva','+994500123457','g.ali@mail.com','bronze@');
insert into customers_3 values(61,'Ravan','Mehdiyev','+994501112234','r.meh@mail.com','plat');
insert into customers_3 values(62,'Leyla','Sadigova','+994552223345','l.sad@test.com','gold');
insert into customers_3 values(63,'Elnur','Mammadov','+994703334456','e.mam@mail.az','s');
insert into customers_3 values(64,'Humay','Eliyeva','+994504445567','h.eli@corp.com','silver#');
insert into customers_3 values(65,'Zaur','Huseynov','+994515556678','z.hus@mail.ru',' ');
insert into customers_3 values(66,'Narmin','Ahmedova','+994996667789','n.ahm@test.az','platinum');
insert into customers_3 values(67,'Rufat','Quliyev','+994507778890','r.qul@mail.com','g');
insert into customers_3 values(68,'Xanim','Ismayilova','+994558889901','x.ism@test.com','brnz');
insert into customers_3 values(69,'Fuad','Kerimov','+994709990012','f.ker@mail.az','platinum!');
insert into customers_3 values(70,'Sevinj','Aliyeva','+994500001123','s.ali@corp.com','gold*');
insert into customers_3 values(71,'Murad','Nezerov','+994511112234','m.nez@mail.ru','p');
insert into customers_3 values(72,'Lamiya','Ismayilzade','+994502223345','l.ism@test.com','silver');
insert into customers_3 values(73,'Vugar','Mammadov','+994553334456','v.mam@mail.az',null);
insert into customers_3 values(74,'Aysel','Babayeva','+994704445567','a.bab@corp.com','gold');
insert into customers_3 values(75,'Ceyhun','Abdullayev','+994505556678','c.abd@mail.com','sil');
insert into customers_3 values(76,'Nigar','Hesenov','+994516667789','n.hes@test.az','bronze');
insert into customers_3 values(77,'Elshan','Quliyeva','+994997778890','e.qul@mail.ru','plat');
insert into customers_3 values(78,'Turkan','Aliyev','+994508889901','t.ali@test.com','gold*');
insert into customers_3 values(79,'Aida','Mammadova','+994559990012','a.mam@mail.az','b');
insert into customers_3 values(80,'Behruz','Ismayilov','+994700001123','b.ism@corp.com','platinum');
insert into customers_3 values(81,'Lala','Abbasov','+994501112245','l.abb@mail.com','silvr');
insert into customers_3 values(82,'Kanan','Huseynova','+994552223356','k.hus@test.com','gold');
insert into customers_3 values(83,'Parvin','Kerimov','+994703334467','p.ker@mail.az','bronze@');
insert into customers_3 values(84,'Ulkar','Eliyeva','+994504445578','u.eli@corp.com','plat');
insert into customers_3 values(85,'Xazar','Nezerov','+994515556689','x.nez@mail.ru','s');
insert into customers_3 values(86,'Zulfiyye','Ahmedova','+994996667790','z.ahm@test.az','gold*');
insert into customers_3 values(87,'Niyaz','Quliyev','+994507778801','n.qul@mail.com','platinum!');
insert into customers_3 values(88,'Shala','Ismayilova','+994558889912','s.ism@test.com','g');
insert into customers_3 values(89,'Rahim','Kerimov','+994709990023','r.ker@mail.az','silver#');
insert into customers_3 values(90,'Konul','Aliyeva','+994500001134','k.ali@corp.com','brnz');
insert into customers_3 values(91,'Ilham','Nezerov','+994511112245','i.nez@mail.ru','platinum');
insert into customers_3 values(92,'Maleyka','Ismayilzade','+994502223356','m.ism@test.com','gold');
insert into customers_3 values(93,'Elnare','Mammadov','+994553334467','e.mam@mail.az',null);
insert into customers_3 values(94,'Cabir','Babayeva','+994704445578','c.bab@corp.com','silver');
insert into customers_3 values(95,'Turkan','Abdullayev','+994505556689','t.abd@mail.com','bronze@');
insert into customers_3 values(96,'Farhad','Hesenov','+994516667790','f.hes@test.az','plat');
insert into customers_3 values(97,'Sabine','Quliyeva','+994997778801','s.qul@mail.ru','gold*');
insert into customers_3 values(98,'Cavidan','Aliyev','+994508889912','c.ali@test.com','platinum!');
insert into customers_3 values(99,'Rena','Mammadova','+994559990023','r.mam@mail.az','s');
insert into customers_3 values(100,'Eldar','Ismayilov','+994700001124','el.ism@corp.com','silver#');


insert into merchants values(1,'Bravo','5411','Baku','Azerbaijan');
insert into merchants values(2,'Deniz Mall','5311','Baku','Azerbaijan');
insert into merchants values(3,'Zara','5651','Baku','Azerbaijan');
insert into merchants values(4,'Amazon Us','5310','Seattle','Usa');
insert into merchants values(5,'Ali Express','5310','Guangzhou','China');
insert into merchants values(6,'Bolt Food','5812','Baku','Azerbaijan');
insert into merchants values(7,'Wolt','5812','Baku','Azerbaijan');
insert into merchants values(8,'Socar','5541','Baku','Azerbaijan');
insert into merchants values(9,'Bakcell','4814','Baku','Azerbaijan');
insert into merchants values(10,'Itunes','5735','Cupertino','Usa');
insert into merchants values(11,'Nar Mobile','4814','Baku','Azerbaijan');
insert into merchants values(12,'Azerishig','4900','Baku','Azerbaijan');
insert into merchants values(13,'Netflix','4899','Los Angeles','Usa');
insert into merchants values(14,'Bershka','5651','Baku','Azerbaijan');
insert into merchants values(15,'Lc Waikiki','5651','Baku','Azerbaijan');
insert into merchants values(16,'Starbucks','5814','Baku','Azerbaijan');
insert into merchants values(17,'Kfc','5814','Baku','Azerbaijan');
insert into merchants values(18,'Papajohns','5814','Baku','Azerbaijan');
insert into merchants values(19,'Azeristilik','4900','Baku','Azerbaijan');
insert into merchants values(20,'Yashat','8398','Baku','Azerbaijan');
insert into merchants values(21,'Uber','4121','Baku','Azerbaijan');
insert into merchants values(22,'Bolt','4121','Baku','Azerbaijan');
insert into merchants values(23,'Trendyol','5310','Istanbul','Turkey');
insert into merchants values(24,'Hepsiburada','5310','Istanbul','Turkey');
insert into merchants values(25,'Kontakt Home','5734','Baku','Azerbaijan');
insert into merchants values(26,'Texnomart','5734','Baku','Azerbaijan');
insert into merchants values(27,'Iport','5734','Baku','Azerbaijan');
insert into merchants values(28,'Ebay','5310','San Jose','Usa');
insert into merchants values(29,'Spotify','5735','Stockholm','Sweden');
insert into merchants values(30,'Youtube Premium','5735','San Bruno','Usa');
insert into merchants values(31,'Azercell','4814','Baku','Azerbaijan');
insert into merchants values(32,'Baku Electronics','5734','Baku','Azerbaijan');
insert into merchants values(33,'Silk Way Airlines','4511','Baku','Azerbaijan');
insert into merchants values(34,'Azerbaijan Airlines','4511','Baku','Azerbaijan');
insert into merchants values(35,'Turkish Airlines','4511','Istanbul','Turkey');
insert into merchants values(36,'Booking Com','4722','Amsterdam','Netherlands');
insert into merchants values(37,'Airbnb','7011','San Francisco','Usa');
insert into merchants values(38,'Hilton Baku','7011','Baku','Azerbaijan');
insert into merchants values(39,'Marriott Baku','7011','Baku','Azerbaijan');
insert into merchants values(40,'Park Inn','7011','Baku','Azerbaijan');
insert into merchants values(41,'Mcdonalds','5814','Baku','Azerbaijan');
insert into merchants values(42,'Burger King','5814','Baku','Azerbaijan');
insert into merchants values(43,'Dominos','5814','Baku','Azerbaijan');
insert into merchants values(44,'Subway','5814','Baku','Azerbaijan');
insert into merchants values(45,'Costa Coffee','5814','Baku','Azerbaijan');
insert into merchants values(46,'Gloria Jeans','5814','Baku','Azerbaijan');
insert into merchants values(47,'Limon','5812','Baku','Azerbaijan');
insert into merchants values(48,'Chefs','5812','Baku','Azerbaijan');
insert into merchants values(49,'Cheers','5812','Baku','Azerbaijan');
insert into merchants values(50,'Dolma','5812','Baku','Azerbaijan');
insert into merchants values(51,'Pull And Bear','5651','Baku','Azerbaijan');
insert into merchants values(52,'Massimo Dutti','5651','Baku','Azerbaijan');
insert into merchants values(53,'Mango','5651','Baku','Azerbaijan');
insert into merchants values(54,'H And M','5651','Baku','Azerbaijan');
insert into merchants values(55,'Nike','5661','Baku','Azerbaijan');
insert into merchants values(56,'Adidas','5661','Baku','Azerbaijan');
insert into merchants values(57,'Puma','5661','Baku','Azerbaijan');
insert into merchants values(58,'Intersport','5661','Baku','Azerbaijan');
insert into merchants values(59,'Decathlon','5941','Baku','Azerbaijan');
insert into merchants values(60,'Asan Xidmet','9399','Baku','Azerbaijan');
insert into merchants values(61,'Embafinance','6012','Baku','Azerbaijan');
insert into merchants values(62,'Kapital Bank','6012','Baku','Azerbaijan');
insert into merchants values(63,'Abb Bank','6012','Baku','Azerbaijan');
insert into merchants values(64,'Rabitabank','6012','Baku','Azerbaijan');
insert into merchants values(65,'Pasha Bank','6012','Baku','Azerbaijan');
insert into merchants values(66,'Atb','6012','Baku','Azerbaijan');
insert into merchants values(67,'Steam','5735','Bellevue','Usa');
insert into merchants values(68,'Playstation Store','5735','San Mateo','Usa');
insert into merchants values(69,'Google Play','5735','Mountain View','Usa');
insert into merchants values(70,'Microsoft Store','5734','Redmond','Usa');
insert into merchants values(71,'Canteen Az','5812','Baku','Azerbaijan');
insert into merchants values(72,'Retro','5812','Baku','Azerbaijan');
insert into merchants values(73,'Neftchi Fan Shop','5941','Baku','Azerbaijan');
insert into merchants values(74,'Optimal','5734','Baku','Azerbaijan');
insert into merchants values(75,'Azerbaycan Demiryollari','4112','Baku','Azerbaijan');
insert into merchants values(76,'Baku Metro','4111','Baku','Azerbaijan');
insert into merchants values(77,'Baku Bus','4111','Baku','Azerbaijan');
insert into merchants values(78,'Glovo','5812','Baku','Azerbaijan');
insert into merchants values(79,'Teze Bazar','5411','Baku','Azerbaijan');
insert into merchants values(80,'Hypestore','5691','Baku','Azerbaijan');
insert into merchants values(81,'Araz Market','5411','Baku','Azerbaijan');
insert into merchants values(82,'Bizim Market','5411','Baku','Azerbaijan');
insert into merchants values(83,'Tamada','5812','Baku','Azerbaijan');
insert into merchants values(84,'Eden Garden','5812','Baku','Azerbaijan');
insert into merchants values(85,'Jumbo','5945','Baku','Azerbaijan');
insert into merchants values(86,'Mothercare','5999','Baku','Azerbaijan');
insert into merchants values(87,'Lego Store','5945','Baku','Azerbaijan');
insert into merchants values(88,'Aliexpress Tr','5310','Istanbul','Turkey');
insert into merchants values(89,'Shein','5691','Guangzhou','China');
insert into merchants values(90,'Noon','5310','Dubai','Uae');
insert into merchants values(91,'Carrefour','5411','Dubai','Uae');
insert into merchants values(92,'Emirates Airlines','4511','Dubai','Uae');
insert into merchants values(93,'Flydubai','4511','Dubai','Uae');
insert into merchants values(94,'Wizz Air','4511','Budapest','Hungary');
insert into merchants values(95,'Pegasus Airlines','4511','Istanbul','Turkey');
insert into merchants values(96,'Cinemaplus','7832','Baku','Azerbaijan');
insert into merchants values(97,'Formula 1 Karting','7999','Baku','Azerbaijan');
insert into merchants values(98,'Bakustel','4814','Baku','Azerbaijan');
insert into merchants values(99,'Azərenerji','4900','Baku','Azerbaijan');
insert into merchants values(100,'Baku White City','6552','Baku','Azerbaijan');


insert into cards values(1,'4169730011223344','visa gold',to_date('2023-01-01','yyyy-mm-dd'),to_date('2026-01-01','yyyy-mm-dd'),'active',1500.50,1);
insert into cards values(2,'5162730055667788','mastercard standard',to_date('2022-05-10','yyyy-mm-dd'),to_date('2025-05-10','yyyy-mm-dd'),'active',540.00,2);
insert into cards values(3,'4169730099887766','visa platinum',to_date('2021-10-15','yyyy-mm-dd'),to_date('2024-10-15','yyyy-mm-dd'),'blocked',0.00,3);
insert into cards values(4,'4169730011112222','visa electron',to_date('2023-03-20','yyyy-mm-dd'),to_date('2026-03-20','yyyy-mm-dd'),'expired',10.20,4);
insert into cards values(5,'5162730033334444','mastercard gold',to_date('2024-01-05','yyyy-mm-dd'),to_date('2027-01-05','yyyy-mm-dd'),'unknown',2500.00,5);
insert into cards values(6,'4169730044445555','visa gold',to_date('2022-11-12','yyyy-mm-dd'),to_date('2025-11-12','yyyy-mm-dd'),'active',89.00,1);
insert into cards values(7,null,'visa platinum',to_date('2023-06-01','yyyy-mm-dd'),to_date('2026-06-01','yyyy-mm-dd'),'active',300.00,6);
insert into cards values(8,'4169730011223344','visa gold',to_date('2023-01-01','yyyy-mm-dd'),to_date('2026-01-01','yyyy-mm-dd'),'active',1500.50,7);
insert into cards values(9,'4169730022334455','visa gold',to_date('2023-02-01','yyyy-mm-dd'),to_date('2026-02-01','yyyy-mm-dd'),'active',1200.00,8);
insert into cards values(10,'5162730066778899','mastercard gold',to_date('2022-06-10','yyyy-mm-dd'),to_date('2025-06-10','yyyy-mm-dd'),'active',4500.00,9);
insert into cards values(11,'4169730033445566','visa platinum',to_date('2021-11-15','yyyy-mm-dd'),to_date('2024-11-15','yyyy-mm-dd'),'blocked',0.00,10);
insert into cards values(12,'4169730044556677','visa electron',to_date('2023-04-20','yyyy-mm-dd'),to_date('2026-04-20','yyyy-mm-dd'),'active',15.50,11);
insert into cards values(13,'5162730077889900','mastercard gold',to_date('2024-02-05','yyyy-mm-dd'),to_date('2027-02-05','yyyy-mm-dd'),'active',3200.00,12);
insert into cards values(14,'4169730055667788','visa gold',to_date('2022-12-12','yyyy-mm-dd'),to_date('2025-12-12','yyyy-mm-dd'),'active',100.00,13);
insert into cards values(15,null,'visa platinum',to_date('2023-07-01','yyyy-mm-dd'),to_date('2026-07-01','yyyy-mm-dd'),'active',500.00,14);
insert into cards values(16,'4169730066778899','visa gold',to_date('2023-03-01','yyyy-mm-dd'),to_date('2026-03-01','yyyy-mm-dd'),'active',1800.00,15);
insert into cards values(17,'5162730088990011','mastercard standard',to_date('2022-07-10','yyyy-mm-dd'),to_date('2025-07-10','yyyy-mm-dd'),'active',670.00,16);
insert into cards values(18,'4169730077889900','visa platinum',to_date('2021-12-15','yyyy-mm-dd'),to_date('2024-12-15','yyyy-mm-dd'),'blocked',0.00,17);
insert into cards values(19,'4169730088990011','visa electron',to_date('2023-05-20','yyyy-mm-dd'),to_date('2026-05-20','yyyy-mm-dd'),'expired',5.00,18);
insert into cards values(20,'5162730099001122','mastercard gold',to_date('2024-03-05','yyyy-mm-dd'),to_date('2027-03-05','yyyy-mm-dd'),'active',4100.00,19);
insert into cards values(21,'4169730099001122','visa gold',to_date('2022-01-12','yyyy-mm-dd'),to_date('2025-01-12','yyyy-mm-dd'),'active',150.00,20);
insert into cards values(22,null,'visa platinum',to_date('2023-08-01','yyyy-mm-dd'),to_date('2026-08-01','yyyy-mm-dd'),'active',700.00,21);
insert into cards values(23,'4169730000112233','visa gold',to_date('2023-04-01','yyyy-mm-dd'),to_date('2026-04-01','yyyy-mm-dd'),'active',2100.00,22);
insert into cards values(24,'5162730011223344','mastercard standard',to_date('2022-08-10','yyyy-mm-dd'),to_date('2025-08-10','yyyy-mm-dd'),'active',890.00,23);
insert into cards values(25,'4169730011224455','visa platinum',to_date('2022-01-15','yyyy-mm-dd'),to_date('2025-01-15','yyyy-mm-dd'),'blocked',0.00,24);
insert into cards values(26,'4169730022335566','visa electron',to_date('2023-06-20','yyyy-mm-dd'),to_date('2026-06-20','yyyy-mm-dd'),'active',45.00,25);
insert into cards values(27,'5162730022334455','mastercard gold',to_date('2024-04-05','yyyy-mm-dd'),to_date('2027-04-05','yyyy-mm-dd'),'active',5300.00,26);
insert into cards values(28,'4169730033446677','visa gold',to_date('2022-02-12','yyyy-mm-dd'),to_date('2025-02-12','yyyy-mm-dd'),'active',250.00,27);
insert into cards values(29,null,'visa platinum',to_date('2023-09-01','yyyy-mm-dd'),to_date('2026-09-01','yyyy-mm-dd'),'active',900.00,28);
insert into cards values(30,'4169730044557788','visa gold',to_date('2023-05-01','yyyy-mm-dd'),to_date('2026-05-01','yyyy-mm-dd'),'active',2600.00,29);
insert into cards values(31,'5162730033445566','mastercard standard',to_date('2022-09-10','yyyy-mm-dd'),to_date('2025-09-10','yyyy-mm-dd'),'active',1000.00,30);
insert into cards values(32,'4169730055668899','visa platinum',to_date('2022-02-15','yyyy-mm-dd'),to_date('2025-02-15','yyyy-mm-dd'),'blocked',0.00,31);
insert into cards values(33,'4169730066779900','visa electron',to_date('2023-07-20','yyyy-mm-dd'),to_date('2026-07-20','yyyy-mm-dd'),'active',60.00,32);
insert into cards values(34,'5162730044556677','mastercard gold',to_date('2024-05-05','yyyy-mm-dd'),to_date('2027-05-05','yyyy-mm-dd'),'active',6200.00,33);
insert into cards values(35,'4169730077880011','visa gold',to_date('2022-03-12','yyyy-mm-dd'),to_date('2025-03-12','yyyy-mm-dd'),'active',350.00,34);
insert into cards values(36,null,'visa platinum',to_date('2023-10-01','yyyy-mm-dd'),to_date('2026-10-01','yyyy-mm-dd'),'active',1100.00,35);
insert into cards values(37,'4169730088991122','visa gold',to_date('2023-06-01','yyyy-mm-dd'),to_date('2026-06-01','yyyy-mm-dd'),'active',2900.00,36);
insert into cards values(38,'5162730055667788','mastercard standard',to_date('2022-10-10','yyyy-mm-dd'),to_date('2025-10-10','yyyy-mm-dd'),'active',1100.00,37);
insert into cards values(39,'4169730099002233','visa platinum',to_date('2022-03-15','yyyy-mm-dd'),to_date('2025-03-15','yyyy-mm-dd'),'blocked',0.00,38);
insert into cards values(40,'4169730000113344','visa electron',to_date('2023-08-20','yyyy-mm-dd'),to_date('2026-08-20','yyyy-mm-dd'),'expired',1.00,39);
insert into cards values(41,'5162730066778899','mastercard gold',to_date('2024-06-05','yyyy-mm-dd'),to_date('2027-06-05','yyyy-mm-dd'),'active',7100.00,40);
insert into cards values(42,'4169730011224455','visa gold',to_date('2022-04-12','yyyy-mm-dd'),to_date('2025-04-12','yyyy-mm-dd'),'active',450.00,41);
insert into cards values(43,null,'visa platinum',to_date('2023-11-01','yyyy-mm-dd'),to_date('2026-11-01','yyyy-mm-dd'),'active',1300.00,42);
insert into cards values(44,'4169730022335566','visa gold',to_date('2023-07-01','yyyy-mm-dd'),to_date('2026-07-01','yyyy-mm-dd'),'active',3300.00,43);
insert into cards values(45,'5162730077889900','mastercard standard',to_date('2022-11-10','yyyy-mm-dd'),to_date('2025-11-10','yyyy-mm-dd'),'active',1250.00,44);
insert into cards values(46,'4169730033446677','visa platinum',to_date('2022-04-15','yyyy-mm-dd'),to_date('2025-04-15','yyyy-mm-dd'),'blocked',0.00,45);
insert into cards values(47,'4169730044557788','visa electron',to_date('2023-09-20','yyyy-mm-dd'),to_date('2026-09-20','yyyy-mm-dd'),'active',85.00,46);
insert into cards values(48,'5162730088990011','mastercard gold',to_date('2024-07-05','yyyy-mm-dd'),to_date('2027-07-05','yyyy-mm-dd'),'active',8200.00,47);
insert into cards values(49,'4169730055668899','visa gold',to_date('2022-05-12','yyyy-mm-dd'),to_date('2025-05-12','yyyy-mm-dd'),'active',550.00,48);
insert into cards values(50,null,'visa platinum',to_date('2023-12-01','yyyy-mm-dd'),to_date('2026-12-01','yyyy-mm-dd'),'active',1500.00,49);
insert into cards values(51,'4169730066779900','visa gold',to_date('2023-08-01','yyyy-mm-dd'),to_date('2026-08-01','yyyy-mm-dd'),'active',3700.00,50);
insert into cards values(52,'5162730099001122','mastercard standard',to_date('2022-12-10','yyyy-mm-dd'),to_date('2025-12-10','yyyy-mm-dd'),'active',1400.00,1);
insert into cards values(53,'4169730077880011','visa platinum',to_date('2022-05-15','yyyy-mm-dd'),to_date('2025-05-15','yyyy-mm-dd'),'blocked',0.00,2);
insert into cards values(54,'4169730088991122','visa electron',to_date('2023-10-20','yyyy-mm-dd'),to_date('2026-10-20','yyyy-mm-dd'),'active',110.00,3);
insert into cards values(55,'5162730000112233','mastercard gold',to_date('2024-08-05','yyyy-mm-dd'),to_date('2027-08-05','yyyy-mm-dd'),'active',9200.00,4);
insert into cards values(56,'4169730099002233','visa gold',to_date('2022-06-12','yyyy-mm-dd'),to_date('2025-06-12','yyyy-mm-dd'),'active',650.00,5);
insert into cards values(57,null,'visa platinum',to_date('2024-01-01','yyyy-mm-dd'),to_date('2027-01-01','yyyy-mm-dd'),'active',1700.00,6);
insert into cards values(58,'4169730000113344','visa gold',to_date('2023-09-01','yyyy-mm-dd'),to_date('2026-09-01','yyyy-mm-dd'),'active',4100.00,7);
insert into cards values(59,'5162730011223344','mastercard standard',to_date('2023-01-10','yyyy-mm-dd'),to_date('2026-01-10','yyyy-mm-dd'),'active',1600.00,8);
insert into cards values(60,'4169730011224455','visa platinum',to_date('2022-06-15','yyyy-mm-dd'),to_date('2025-06-15','yyyy-mm-dd'),'blocked',0.00,9);
insert into cards values(61,'4169730022335566','visa electron',to_date('2023-11-20','yyyy-mm-dd'),to_date('2026-11-20','yyyy-mm-dd'),'active',130.00,10);
insert into cards values(62,'5162730022334455','mastercard gold',to_date('2024-09-05','yyyy-mm-dd'),to_date('2027-09-05','yyyy-mm-dd'),'active',10200.00,11);
insert into cards values(63,'4169730033446677','visa gold',to_date('2022-07-12','yyyy-mm-dd'),to_date('2025-07-12','yyyy-mm-dd'),'active',750.00,12);
insert into cards values(64,null,'visa platinum',to_date('2024-02-01','yyyy-mm-dd'),to_date('2027-02-01','yyyy-mm-dd'),'active',1900.00,13);
insert into cards values(65,'4169730044557788','visa gold',to_date('2023-10-01','yyyy-mm-dd'),to_date('2026-10-01','yyyy-mm-dd'),'active',4500.00,14);
insert into cards values(66,'5162730033445566','mastercard standard',to_date('2023-02-10','yyyy-mm-dd'),to_date('2026-02-10','yyyy-mm-dd'),'active',1800.00,15);
insert into cards values(67,'4169730055668899','visa platinum',to_date('2022-07-15','yyyy-mm-dd'),to_date('2025-07-15','yyyy-mm-dd'),'blocked',0.00,16);
insert into cards values(68,'4169730066779900','visa electron',to_date('2023-12-20','yyyy-mm-dd'),to_date('2026-12-20','yyyy-mm-dd'),'active',150.00,17);
insert into cards values(69,'5162730044556677','mastercard gold',to_date('2024-10-05','yyyy-mm-dd'),to_date('2027-10-05','yyyy-mm-dd'),'active',11200.00,18);
insert into cards values(70,'4169730077880011','visa gold',to_date('2022-08-12','yyyy-mm-dd'),to_date('2025-08-12','yyyy-mm-dd'),'active',850.00,19);
insert into cards values(71,null,'visa platinum',to_date('2024-03-01','yyyy-mm-dd'),to_date('2027-03-01','yyyy-mm-dd'),'active',2100.00,20);
insert into cards values(72,'4169730088991122','visa gold',to_date('2023-11-01','yyyy-mm-dd'),to_date('2026-11-01','yyyy-mm-dd'),'active',4800.00,21);
insert into cards values(73,'5162730055667788','mastercard standard',to_date('2023-03-10','yyyy-mm-dd'),to_date('2026-03-10','yyyy-mm-dd'),'active',2000.00,22);
insert into cards values(74,'4169730099110022','visa platinum',to_date('2022-08-15','yyyy-mm-dd'),to_date('2025-08-15','yyyy-mm-dd'),'blocked',0.00,23);
insert into cards values(75,'4169730000221133','visa electron',to_date('2024-01-20','yyyy-mm-dd'),to_date('2027-01-20','yyyy-mm-dd'),'active',170.00,24);
insert into cards values(76,'5162730066778899','mastercard gold',to_date('2024-11-05','yyyy-mm-dd'),to_date('2027-11-05','yyyy-mm-dd'),'active',12100.00,25);
insert into cards values(77,'4169730011332244','visa gold',to_date('2022-09-12','yyyy-mm-dd'),to_date('2025-09-12','yyyy-mm-dd'),'active',950.00,26);
insert into cards values(78,null,'visa platinum',to_date('2024-04-01','yyyy-mm-dd'),to_date('2027-04-01','yyyy-mm-dd'),'active',2300.00,27);
insert into cards values(79,'4169730022443355','visa gold',to_date('2023-12-01','yyyy-mm-dd'),to_date('2026-12-01','yyyy-mm-dd'),'active',5100.00,28);
insert into cards values(80,'5162730077889900','mastercard standard',to_date('2023-04-10','yyyy-mm-dd'),to_date('2026-04-10','yyyy-mm-dd'),'active',2200.00,29);
insert into cards values(81,'4169730033554466','visa platinum',to_date('2022-09-15','yyyy-mm-dd'),to_date('2025-09-15','yyyy-mm-dd'),'blocked',0.00,30);
insert into cards values(82,'4169730044665577','visa electron',to_date('2024-02-20','yyyy-mm-dd'),to_date('2027-02-20','yyyy-mm-dd'),'active',190.00,31);
insert into cards values(83,'5162730088990011','mastercard gold',to_date('2024-12-05','yyyy-mm-dd'),to_date('2027-12-05','yyyy-mm-dd'),'active',13000.00,32);
insert into cards values(84,'4169730055776688','visa gold',to_date('2022-10-12','yyyy-mm-dd'),to_date('2025-10-12','yyyy-mm-dd'),'active',1050.00,33);
insert into cards values(85,null,'visa platinum',to_date('2024-05-01','yyyy-mm-dd'),to_date('2027-05-01','yyyy-mm-dd'),'active',2500.00,34);
insert into cards values(86,'4169730066887799','visa gold',to_date('2024-01-01','yyyy-mm-dd'),to_date('2027-01-01','yyyy-mm-dd'),'active',5400.00,35);
insert into cards values(87,'5162730099001122','mastercard standard',to_date('2023-05-10','yyyy-mm-dd'),to_date('2026-05-10','yyyy-mm-dd'),'active',2400.00,36);
insert into cards values(88,'4169730077998800','visa platinum',to_date('2022-10-15','yyyy-mm-dd'),to_date('2025-10-15','yyyy-mm-dd'),'blocked',0.00,37);
insert into cards values(89,'4169730088009911','visa electron',to_date('2024-03-20','yyyy-mm-dd'),to_date('2027-03-20','yyyy-mm-dd'),'active',210.00,38);
insert into cards values(90,'5162730000113344','mastercard gold',to_date('2025-01-05','yyyy-mm-dd'),to_date('2028-01-05','yyyy-mm-dd'),'active',13800.00,39);
insert into cards values(91,'4169730099221133','visa gold',to_date('2022-11-12','yyyy-mm-dd'),to_date('2025-11-12','yyyy-mm-dd'),'active',1150.00,40);
insert into cards values(92,null,'visa platinum',to_date('2024-06-01','yyyy-mm-dd'),to_date('2027-06-01','yyyy-mm-dd'),'active',2700.00,41);
insert into cards values(93,'4169730000332244','visa gold',to_date('2024-02-01','yyyy-mm-dd'),to_date('2027-02-01','yyyy-mm-dd'),'active',5700.00,42);
insert into cards values(94,'5162730011224455','mastercard standard',to_date('2023-06-10','yyyy-mm-dd'),to_date('2026-06-10','yyyy-mm-dd'),'active',2600.00,43);
insert into cards values(95,'4169730011443355','visa platinum',to_date('2022-11-15','yyyy-mm-dd'),to_date('2025-11-15','yyyy-mm-dd'),'blocked',0.00,44);
insert into cards values(96,'4169730022554466','visa electron',to_date('2024-04-20','yyyy-mm-dd'),to_date('2027-04-20','yyyy-mm-dd'),'active',230.00,45);
insert into cards values(97,'5162730022335566','mastercard gold',to_date('2025-02-05','yyyy-mm-dd'),to_date('2028-02-05','yyyy-mm-dd'),'active',14500.00,46);
insert into cards values(98,'4169730033665577','visa gold',to_date('2022-12-12','yyyy-mm-dd'),to_date('2025-12-12','yyyy-mm-dd'),'active',1250.00,47);
insert into cards values(99,null,'visa platinum',to_date('2024-07-01','yyyy-mm-dd'),to_date('2027-07-01','yyyy-mm-dd'),'active',2900.00,48);
insert into cards values(100,'4169730044776688','visa gold',to_date('2024-03-01','yyyy-mm-dd'),to_date('2027-03-01','yyyy-mm-dd'),'active',6000.00,49);


insert into transactions_1 values(1,to_date('2024-02-01 10:30:00','yyyy-mm-dd hh24:mi:ss'),50.00,'azn','approved',0.01,0.50,1,1);
insert into transactions_1 values(2,to_date('2024-02-01 12:45:00','yyyy-mm-dd hh24:mi:ss'),-20.00,'azn','approved',0.01,0.20,2,2);
insert into transactions_1 values(3,to_date('2024-02-02 09:15:00','yyyy-mm-dd hh24:mi:ss'),1500.00,'usd','declined',0.02,30.00,3,4);
insert into transactions_1 values(4,to_date('2024-02-02 15:20:00','yyyy-mm-dd hh24:mi:ss'),5.50,'azn','failed',0.00,0.00,1,6);
insert into transactions_1 values(5,to_date('2024-02-03 18:00:00','yyyy-mm-dd hh24:mi:ss'),null,'azn','approved',0.01,0.00,4,8);
insert into transactions_1 values(6,to_date('2024-02-03 20:10:00','yyyy-mm-dd hh24:mi:ss'),120.00,'azn','approved',0.01,1.20,5,1);
insert into transactions_1 values(7,to_date('2024-02-04 11:00:00','yyyy-mm-dd hh24:mi:ss'),-5.00,'azn','approved',0.00,0.00,6,7);
insert into transactions_1 values(8,to_date('2024-02-04 14:30:00','yyyy-mm-dd hh24:mi:ss'),300.00,'azn','pending',0.01,3.00,2,3);
insert into transactions_1 values(9,to_date('2024-02-05 08:20:00','yyyy-mm-dd hh24:mi:ss'),45.00,'azn','approved',0.01,0.45,8,9);
insert into transactions_1 values(10,to_date('2024-02-05 16:40:00','yyyy-mm-dd hh24:mi:ss'),1000.00,'usd','approved',0.03,30.00,10,10);
insert into transactions_1 values(11,to_date('2024-02-06 10:00:00','yyyy-mm-dd hh24:mi:ss'),25.00,'azn','approved',0.01,0.25,12,11);
insert into transactions_1 values(12,to_date('2024-02-06 12:00:00','yyyy-mm-dd hh24:mi:ss'),-15.00,'azn','declined',0.01,0.15,13,12);
insert into transactions_1 values(13,to_date('2024-02-07 19:30:00','yyyy-mm-dd hh24:mi:ss'),60.00,'azn','approved',0.01,0.60,14,13);
insert into transactions_1 values(14,to_date('2024-02-07 21:00:00','yyyy-mm-dd hh24:mi:ss'),200.00,'azn','approved',0.01,2.00,16,14);
insert into transactions_1 values(15,to_date('2024-02-08 14:15:00','yyyy-mm-dd hh24:mi:ss'),null,'azn','pending',0.01,0.00,17,15);
insert into transactions_1 values(16,to_date('2024-02-08 17:50:00','yyyy-mm-dd hh24:mi:ss'),80.00,'azn','approved',0.01,0.80,19,16);
insert into transactions_1 values(17,to_date('2024-02-09 09:10:00','yyyy-mm-dd hh24:mi:ss'),-10.50,'azn','approved',0.01,0.11,20,17);
insert into transactions_1 values(18,to_date('2024-02-09 13:25:00','yyyy-mm-dd hh24:mi:ss'),500.00,'usd','approved',0.02,10.00,21,18);
insert into transactions_1 values(19,to_date('2024-02-10 11:40:00','yyyy-mm-dd hh24:mi:ss'),15.00,'azn','approved',0.01,0.15,23,19);
insert into transactions_1 values(20,to_date('2024-02-10 15:00:00','yyyy-mm-dd hh24:mi:ss'),75.00,'azn','declined',0.01,0.75,24,20);
insert into transactions_1 values(21,to_date('2024-02-11 10:30:00','yyyy-mm-dd hh24:mi:ss'),55.00,'azn','approved',0.01,0.55,26,1);
insert into transactions_1 values(22,to_date('2024-02-11 12:45:00','yyyy-mm-dd hh24:mi:ss'),-25.00,'azn','approved',0.01,0.25,27,2);
insert into transactions_1 values(23,to_date('2024-02-12 09:15:00','yyyy-mm-dd hh24:mi:ss'),1600.00,'usd','declined',0.02,32.00,28,4);
insert into transactions_1 values(24,to_date('2024-02-12 15:20:00','yyyy-mm-dd hh24:mi:ss'),8.50,'azn','failed',0.00,0.00,30,6);
insert into transactions_1 values(25,to_date('2024-02-13 18:00:00','yyyy-mm-dd hh24:mi:ss'),null,'azn','approved',0.01,0.00,31,8);
insert into transactions_1 values(26,to_date('2024-02-13 20:10:00','yyyy-mm-dd hh24:mi:ss'),140.00,'azn','approved',0.01,1.40,33,1);
insert into transactions_1 values(27,to_date('2024-02-14 11:00:00','yyyy-mm-dd hh24:mi:ss'),-8.00,'azn','approved',0.00,0.00,34,7);
insert into transactions_1 values(28,to_date('2024-02-14 14:30:00','yyyy-mm-dd hh24:mi:ss'),350.00,'azn','pending',0.01,3.50,35,3);
insert into transactions_1 values(29,to_date('2024-02-15 08:20:00','yyyy-mm-dd hh24:mi:ss'),55.00,'azn','approved',0.01,0.55,37,9);
insert into transactions_1 values(30,to_date('2024-02-15 16:40:00','yyyy-mm-dd hh24:mi:ss'),1100.00,'usd','approved',0.03,33.00,38,10);
insert into transactions_1 values(31,to_date('2024-02-16 10:00:00','yyyy-mm-dd hh24:mi:ss'),28.00,'azn','approved',0.01,0.28,40,11);
insert into transactions_1 values(32,to_date('2024-02-16 12:00:00','yyyy-mm-dd hh24:mi:ss'),-12.00,'azn','declined',0.01,0.12,41,12);
insert into transactions_1 values(33,to_date('2024-02-17 19:30:00','yyyy-mm-dd hh24:mi:ss'),65.00,'azn','approved',0.01,0.65,42,13);
insert into transactions_1 values(34,to_date('2024-02-17 21:00:00','yyyy-mm-dd hh24:mi:ss'),210.00,'azn','approved',0.01,2.10,44,14);
insert into transactions_1 values(35,to_date('2024-02-18 14:15:00','yyyy-mm-dd hh24:mi:ss'),null,'azn','pending',0.01,0.00,45,15);
insert into transactions_1 values(36,to_date('2024-02-18 17:50:00','yyyy-mm-dd hh24:mi:ss'),85.00,'azn','approved',0.01,0.85,47,16);
insert into transactions_1 values(37,to_date('2024-02-19 09:10:00','yyyy-mm-dd hh24:mi:ss'),-11.50,'azn','approved',0.01,0.12,48,17);
insert into transactions_1 values(38,to_date('2024-02-19 13:25:00','yyyy-mm-dd hh24:mi:ss'),550.00,'usd','approved',0.02,11.00,49,18);
insert into transactions_1 values(39,to_date('2024-02-20 11:40:00','yyyy-mm-dd hh24:mi:ss'),18.00,'azn','approved',0.01,0.18,51,19);
insert into transactions_1 values(40,to_date('2024-02-20 15:00:00','yyyy-mm-dd hh24:mi:ss'),80.00,'azn','declined',0.01,0.80,52,20);
insert into transactions_1 values(41,to_date('2024-02-21 10:30:00','yyyy-mm-dd hh24:mi:ss'),60.00,'azn','approved',0.01,0.60,54,1);
insert into transactions_1 values(42,to_date('2024-02-21 12:45:00','yyyy-mm-dd hh24:mi:ss'),-30.00,'azn','approved',0.01,0.30,55,2);
insert into transactions_1 values(43,to_date('2024-02-22 09:15:00','yyyy-mm-dd hh24:mi:ss'),1700.00,'usd','declined',0.02,34.00,56,4);
insert into transactions_1 values(44,to_date('2024-02-22 15:20:00','yyyy-mm-dd hh24:mi:ss'),9.50,'azn','failed',0.00,0.00,58,6);
insert into transactions_1 values(45,to_date('2024-02-23 18:00:00','yyyy-mm-dd hh24:mi:ss'),null,'azn','approved',0.01,0.00,59,8);
insert into transactions_1 values(46,to_date('2024-02-23 20:10:00','yyyy-mm-dd hh24:mi:ss'),150.00,'azn','approved',0.01,1.50,60,1);
insert into transactions_1 values(47,to_date('2024-02-24 11:00:00','yyyy-mm-dd hh24:mi:ss'),-10.00,'azn','approved',0.00,0.00,61,7);
insert into transactions_1 values(48,to_date('2024-02-24 14:30:00','yyyy-mm-dd hh24:mi:ss'),400.00,'azn','pending',0.01,4.00,62,3);
insert into transactions_1 values(49,to_date('2024-02-25 08:20:00','yyyy-mm-dd hh24:mi:ss'),65.00,'azn','approved',0.01,0.65,63,9);
insert into transactions_1 values(50,to_date('2024-02-25 16:40:00','yyyy-mm-dd hh24:mi:ss'),1200.00,'usd','approved',0.03,36.00,65,10);
insert into transactions_1 values(51,to_date('2024-02-26 10:00:00','yyyy-mm-dd hh24:mi:ss'),35.00,'azn','approved',0.01,0.35,66,11);
insert into transactions_1 values(52,to_date('2024-02-26 12:00:00','yyyy-mm-dd hh24:mi:ss'),-18.00,'azn','declined',0.01,0.18,68,12);
insert into transactions_1 values(53,to_date('2024-02-27 19:30:00','yyyy-mm-dd hh24:mi:ss'),75.00,'azn','approved',0.01,0.75,69,13);
insert into transactions_1 values(54,to_date('2024-02-27 21:00:00','yyyy-mm-dd hh24:mi:ss'),250.00,'azn','approved',0.01,2.50,70,14);
insert into transactions_1 values(55,to_date('2024-02-28 14:15:00','yyyy-mm-dd hh24:mi:ss'),null,'azn','pending',0.01,0.00,1,15);
insert into transactions_1 values(56,to_date('2024-02-28 17:50:00','yyyy-mm-dd hh24:mi:ss'),95.00,'azn','approved',0.01,0.95,2,16);
insert into transactions_1 values(57,to_date('2024-02-29 09:10:00','yyyy-mm-dd hh24:mi:ss'),-15.50,'azn','approved',0.01,0.16,3,17);
insert into transactions_1 values(58,to_date('2024-02-29 13:25:00','yyyy-mm-dd hh24:mi:ss'),600.00,'usd','approved',0.02,12.00,4,18);
insert into transactions_1 values(59,to_date('2024-03-01 11:40:00','yyyy-mm-dd hh24:mi:ss'),22.00,'azn','approved',0.01,0.22,5,19);
insert into transactions_1 values(60,to_date('2024-03-01 15:00:00','yyyy-mm-dd hh24:mi:ss'),90.00,'azn','declined',0.01,0.90,6,20);
insert into transactions_1 values(61,to_date('2024-03-02 10:30:00','yyyy-mm-dd hh24:mi:ss'),55.00,'azn','approved',0.01,0.55,8,1);
insert into transactions_1 values(62,to_date('2024-03-02 12:45:00','yyyy-mm-dd hh24:mi:ss'),-40.00,'azn','approved',0.01,0.40,9,2);
insert into transactions_1 values(63,to_date('2024-03-03 09:15:00','yyyy-mm-dd hh24:mi:ss'),1800.00,'usd','declined',0.02,36.00,10,4);
insert into transactions_1 values(64,to_date('2024-03-03 15:20:00','yyyy-mm-dd hh24:mi:ss'),12.50,'azn','failed',0.00,0.00,12,6);
insert into transactions_1 values(65,to_date('2024-03-04 18:00:00','yyyy-mm-dd hh24:mi:ss'),null,'azn','approved',0.01,0.00,13,8);
insert into transactions_1 values(66,to_date('2024-03-04 20:10:00','yyyy-mm-dd hh24:mi:ss'),160.00,'azn','approved',0.01,1.60,14,1);
insert into transactions_1 values(67,to_date('2024-03-05 11:00:00','yyyy-mm-dd hh24:mi:ss'),-12.00,'azn','approved',0.00,0.00,16,7);
insert into transactions_1 values(68,to_date('2024-03-05 14:30:00','yyyy-mm-dd hh24:mi:ss'),450.00,'azn','pending',0.01,4.50,17,3);
insert into transactions_1 values(69,to_date('2024-03-06 08:20:00','yyyy-mm-dd hh24:mi:ss'),75.00,'azn','approved',0.01,0.75,19,9);
insert into transactions_1 values(70,to_date('2024-03-06 16:40:00','yyyy-mm-dd hh24:mi:ss'),1300.00,'usd','approved',0.03,39.00,20,10);
insert into transactions_1 values(71,to_date('2024-03-07 09:00:00','yyyy-mm-dd hh24:mi:ss'),45.00,'azn','approved',0.01,0.45,1,11);
insert into transactions_1 values(72,to_date('2024-03-07 11:30:00','yyyy-mm-dd hh24:mi:ss'),null,'azn','pending',0.01,0.00,2,12);
insert into transactions_1 values(73,to_date('2024-03-07 14:00:00','yyyy-mm-dd hh24:mi:ss'),320.00,'azn','approved',0.01,3.20,3,13);
insert into transactions_1 values(74,to_date('2024-03-08 08:45:00','yyyy-mm-dd hh24:mi:ss'),-25.00,'azn','approved',0.01,0.25,4,14);
insert into transactions_1 values(75,to_date('2024-03-08 12:10:00','yyyy-mm-dd hh24:mi:ss'),850.00,'usd','approved',0.02,17.00,5,15);
insert into transactions_1 values(76,to_date('2024-03-08 15:30:00','yyyy-mm-dd hh24:mi:ss'),18.00,'azn','declined',0.00,0.00,6,16);
insert into transactions_1 values(77,to_date('2024-03-09 09:20:00','yyyy-mm-dd hh24:mi:ss'),130.00,'azn','approved',0.01,1.30,7,17);
insert into transactions_1 values(78,to_date('2024-03-09 13:00:00','yyyy-mm-dd hh24:mi:ss'),null,'azn','failed',0.00,0.00,8,18);
insert into transactions_1 values(79,to_date('2024-03-09 17:45:00','yyyy-mm-dd hh24:mi:ss'),2200.00,'usd','approved',0.03,66.00,9,19);
insert into transactions_1 values(80,to_date('2024-03-10 10:00:00','yyyy-mm-dd hh24:mi:ss'),55.50,'azn','approved',0.01,0.56,10,20);
insert into transactions_1 values(81,to_date('2024-03-10 12:30:00','yyyy-mm-dd hh24:mi:ss'),980.00,'azn','approved',0.01,9.80,11,1);
insert into transactions_1 values(82,to_date('2024-03-10 16:00:00','yyyy-mm-dd hh24:mi:ss'),-8.00,'azn','approved',0.00,0.00,12,2);
insert into transactions_1 values(83,to_date('2024-03-11 09:30:00','yyyy-mm-dd hh24:mi:ss'),67.00,'azn','declined',0.01,0.67,13,3);
insert into transactions_1 values(84,to_date('2024-03-11 11:00:00','yyyy-mm-dd hh24:mi:ss'),410.00,'azn','approved',0.01,4.10,14,4);
insert into transactions_1 values(85,to_date('2024-03-11 14:20:00','yyyy-mm-dd hh24:mi:ss'),null,'usd','pending',0.02,0.00,15,5);
insert into transactions_1 values(86,to_date('2024-03-12 08:00:00','yyyy-mm-dd hh24:mi:ss'),33.00,'azn','approved',0.01,0.33,16,6);
insert into transactions_1 values(87,to_date('2024-03-12 10:45:00','yyyy-mm-dd hh24:mi:ss'),1500.00,'usd','approved',0.03,45.00,17,7);
insert into transactions_1 values(88,to_date('2024-03-12 13:15:00','yyyy-mm-dd hh24:mi:ss'),72.00,'azn','approved',0.01,0.72,18,8);
insert into transactions_1 values(89,to_date('2024-03-13 09:00:00','yyyy-mm-dd hh24:mi:ss'),-5.00,'azn','approved',0.00,0.00,19,9);
insert into transactions_1 values(90,to_date('2024-03-13 11:30:00','yyyy-mm-dd hh24:mi:ss'),240.00,'azn','declined',0.01,2.40,20,10);
insert into transactions_1 values(91,to_date('2024-03-13 15:00:00','yyyy-mm-dd hh24:mi:ss'),88.00,'azn','approved',0.01,0.88,1,11);
insert into transactions_1 values(92,to_date('2024-03-14 08:30:00','yyyy-mm-dd hh24:mi:ss'),null,'azn','failed',0.00,0.00,2,12);
insert into transactions_1 values(93,to_date('2024-03-14 12:00:00','yyyy-mm-dd hh24:mi:ss'),3100.00,'usd','approved',0.03,93.00,3,13);
insert into transactions_1 values(94,to_date('2024-03-14 16:30:00','yyyy-mm-dd hh24:mi:ss'),115.00,'azn','approved',0.01,1.15,4,14);
insert into transactions_1 values(95,to_date('2024-03-15 09:15:00','yyyy-mm-dd hh24:mi:ss'),-30.00,'azn','approved',0.01,0.30,5,15);
insert into transactions_1 values(96,to_date('2024-03-15 13:40:00','yyyy-mm-dd hh24:mi:ss'),560.00,'azn','pending',0.01,5.60,6,16);
insert into transactions_1 values(97,to_date('2024-03-15 17:00:00','yyyy-mm-dd hh24:mi:ss'),42.00,'azn','approved',0.01,0.42,7,17);
insert into transactions_1 values(98,to_date('2024-03-16 10:20:00','yyyy-mm-dd hh24:mi:ss'),780.00,'usd','approved',0.02,15.60,8,18);
insert into transactions_1 values(99,to_date('2024-03-16 14:00:00','yyyy-mm-dd hh24:mi:ss'),null,'azn','declined',0.00,0.00,9,19);
insert into transactions_1 values(100,to_date('2024-03-16 18:30:00','yyyy-mm-dd hh24:mi:ss'),195.00,'azn','approved',0.01,1.95,10,20);


select * from customers_3;
select * from cards;
select * from merchants;
select * from transactions_1;



select count(*) from cards group by card_number having count(*) > 1;
select count(case when length(card_number)!=16 and not regexp_like(card_number,'^[0-9]+$') then 1 end) from cards;

select count(*) from cards where card_status is null;
select count(*) from cards where card_status not in ('active','blocked','expired');
select count(case when card_status not in ('active','blocked','expired') and expiry_date < sysdate and expiry_date < issue_date then 1 end) from cards;

select count(*) from transactions where amount < 0;
select count(case when txn_amount<0 and txn_fee!=round(txn_amount*fee_rate,2) then 1 end) from transactions_1;
select count(*) from transactions where amount is null;

select count(*) from transactions where txn_status is null;
select count(*) from transactions where txn_status not in ('approved','declined','pending');

select count(*) from mercants where mrc_category is null;
select count(*) from mercants where mrc_category is null or length(mrc_category) < 3;

--DQ table for CDE elements

with base as (
select count(*) total_cnt,

count(c.customer_id) cust_cnt, count(distinct c.customer_id) cust_dist,

count(ca.card_number) card_cnt, count(distinct ca.card_number) card_dist,
count(case when length(ca.card_number)=16 and regexp_like(ca.card_number,'^[0-9]+$') then 1 end) card_valid,

count(ca.card_status) cstatus_cnt,
count(case when ca.card_status in('active','blocked','expired') then 1 end) cstatus_valid,
count(case when ca.card_status in('active','blocked','expired') and ca.expiry_date>=sysdate and expiry_date >= issue_date then 1 end) cstatus_consistent,

count(t.txn_amount) txn_amt_cnt,
count(case when t.txn_amount>=0 then 1 end) txn_amt_valid,
count(case when t.txn_amount>=0 and t.txn_fee=round(t.txn_amount*t.fee_rate,2) then 1 end) txn_amt_accurate,

count(t.txn_status) txn_sts_cnt,
count(case when t.txn_status in('approved','declined','pending') then 1 end) txn_sts_valid,

count(m.mrc_category) mrc_cnt,
count(case when m.mrc_category is not null and length(m.mrc_category)>=3 then 1 end) mrc_valid

from customers_3 c
left join cards          ca on c.customer_id = ca.customer_id
left join transactions_1 t  on ca.card_id    = t.card_id
left join merchants      m  on t.mrc_id      = m.mrc_id),

scores as (
select
col.column_name,
round(case
    when col.column_name='customer_id'  then cust_cnt
    when col.column_name='card_number'  then card_cnt
    when col.column_name='card_status'  then cstatus_cnt
    when col.column_name='txn_amount'   then txn_amt_cnt
    when col.column_name='txn_status'   then txn_sts_cnt
    when col.column_name='mrc_category' then mrc_cnt
end*100/total_cnt,2) as completeness_percent,

round(case
    when col.column_name='customer_id'  then 1
    when col.column_name='card_number'  then card_valid/card_cnt
    when col.column_name='card_status'  then cstatus_valid/cstatus_cnt
    when col.column_name='txn_amount'   then txn_amt_valid/txn_amt_cnt
    when col.column_name='txn_status'   then txn_sts_valid/txn_sts_cnt
    when col.column_name='mrc_category' then mrc_valid/mrc_cnt
end*100,2) as validity_percent,

round(case
    when col.column_name='customer_id'  then cust_dist/cust_cnt
    when col.column_name='card_number'  then card_dist/card_cnt
end*100,2) as uniqueness_percent,

round(case
    when col.column_name='card_status'  then cstatus_consistent/cstatus_cnt
end*100,2) as consistency_percent,

round(case
    when col.column_name='txn_amount'   then txn_amt_accurate/txn_amt_cnt
end*100,2) as accuracy_percent

from base
cross join(
    select 'customer_id'  as column_name from dual union all
    select 'card_number'               from dual union all
    select 'card_status'               from dual union all
    select 'txn_amount'                from dual union all
    select 'txn_status'                from dual union all
    select 'mrc_category'              from dual
)col
)
select
column_name,
completeness_percent,
validity_percent,
uniqueness_percent,
consistency_percent,
accuracy_percent,
round(case
    when column_name='customer_id'  then (completeness_percent+validity_percent+uniqueness_percent)/3
    when column_name='card_number'  then (completeness_percent+validity_percent+uniqueness_percent)/3
    when column_name='card_status'  then (completeness_percent+validity_percent+consistency_percent)/3
    when column_name='txn_amount'   then (completeness_percent+validity_percent+accuracy_percent)/3
    when column_name='txn_status'   then (completeness_percent+validity_percent+consistency_percent)/3
    when column_name='mrc_category' then (completeness_percent+validity_percent)/2
end,2) as cde_score,
round(avg(case
    when column_name='customer_id'  then (completeness_percent+validity_percent+uniqueness_percent)/3
    when column_name='card_number'  then (completeness_percent+validity_percent+uniqueness_percent)/3
    when column_name='card_status'  then (completeness_percent+validity_percent+consistency_percent)/3
    when column_name='txn_amount'   then (completeness_percent+validity_percent+accuracy_percent)/3
    when column_name='txn_status'   then (completeness_percent+validity_percent+consistency_percent)/3
    when column_name='mrc_category' then (completeness_percent+validity_percent)/2
end) over(),2) as overall_score
from scores;

-- Update Procedure

select count(*) as dirty_count from customers_3
where loyalty_segment is null or lower (loyalty_segment) not in('platinum','gold','silver','bronze');


create or replace procedure update_loyalty_segment(p_customer_id in number) is
begin

update customers_3 c set loyalty_segment= case when (
select count(distinct m.mrc_category) from cards card
join transactions_1 txn on card.card_id=txn.card_id
join merchants m on txn.mrc_id=m.mrc_id
where card.customer_id=c.customer_id)>=3 and (

select sum(txn.txn_amount) from cards card
join transactions_1 txn on card.card_id=txn.card_id
where card.customer_id=c.customer_id)>10000 then 'Platinum'

when (select count(*) from cards card
join transactions_1 txn on card.card_id=txn.card_id
where card.customer_id=c.customer_id
and txn.txn_date >= add_months(trunc(sysdate),-1))>10 then 'Gold'

when (select count(distinct m.mrc_category) from cards card
join transactions_1 txn on card.card_id=txn.card_id
join merchants m on txn.mrc_id=m.mrc_id
where card.customer_id=c.customer_id) between 1 and 2 and (

select sum(txn.txn_amount) from cards card
join transactions_1 txn on card.card_id=txn.card_id
where card.customer_id=c.customer_id)>2000 then 'Silver'

else 'Bronze'
end
where c.customer_id=p_customer_id;

end;
/

call update_loyalty_segment(11);

commit;
