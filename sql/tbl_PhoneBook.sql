IF EXISTS(SELECT 1 FROM sys.tables WHERE object_contactID = OBJECT_contactID('tbl_PhoneBook'))
BEGIN;
    DROP TABLE tbl_PhoneBook;
END;
GO

CREATE TABLE tbl_PhoneBook (
    ID INTEGER NOT NULL IDENTITY(1, 1),
    contactID INTEGER NULL,
    FirstName VARCHAR(255) NULL,
    LastName VARCHAR(255) NULL,
    Address VARCHAR(255) NULL,
    City VARCHAR(255) NULL,
    PostalCode VARCHAR(10) NULL,
    Company VARCHAR(255) NULL,
    Phone VARCHAR(100) NULL,
    Email VARCHAR(255) NULL,
    PRIMARY KEY (ID)
);
GO

INSERT INTO tbl_PhoneBook(contactID,FirstName,LastName,Address,City,PostalCode,Company,Phone,Email) VALUES(1,'Micah','Wagner','529-1755 Montes, Ave','Sint-Renelde Saintes','22664','Ac Arcu Nunc Associates','(421) 398-5403','purus@utnulla.ca');
INSERT INTO tbl_PhoneBook(contactID,FirstName,LastName,Address,City,PostalCode,Company,Phone,Email) VALUES(2,'Natalie','Strickland','Ap #845-7422 Volutpat. St.','Cherain','56942','Penatibus Et Magnis Associates','(455) 149-2979','Sed@erat.ca');
INSERT INTO tbl_PhoneBook(contactID,FirstName,LastName,Address,City,PostalCode,Company,Phone,Email) VALUES(3,'Merrill','Burton','Ap #181-6076 Ac Av.','Sainte-Flavie','50911','Vitae Foundation','(897) 950-3216','nulla@massanon.net');
INSERT INTO tbl_PhoneBook(contactID,FirstName,LastName,Address,City,PostalCode,Company,Phone,Email) VALUES(4,'Pearl','Ross','8471 Sed St.','Hervey Bay','11971','Ultricies Sem Limited','(303) 971-3011','vel.convallis@Inmipede.org');
INSERT INTO tbl_PhoneBook(contactID,FirstName,LastName,Address,City,PostalCode,Company,Phone,Email) VALUES(5,'Maisie','Simon','Ap #630-2315 At St.','Walsall','70200','Ultrices LLP','(526) 397-0591','Vivamus@sitametmassa.org');
INSERT INTO tbl_PhoneBook(contactID,FirstName,LastName,Address,City,PostalCode,Company,Phone,Email) VALUES(6,'Emi','Hart','P.O. Box 670, 6009 Vel Street','San Jos� de Alajuela','40090','In Nec Orci Corporation','(324) 654-2123','eu.arcu@Morbisitamet.ca');
INSERT INTO tbl_PhoneBook(contactID,FirstName,LastName,Address,City,PostalCode,Company,Phone,Email) VALUES(7,'Daryl','Park','P.O. Box 271, 1201 contactID St.','Rixensart','95331-884','Mattis LLC','(907) 273-2754','scelerisque@sem.co.uk');
INSERT INTO tbl_PhoneBook(contactID,FirstName,LastName,Address,City,PostalCode,Company,Phone,Email) VALUES(8,'Simon','Guthrie','9447 Lacus. St.','San IscontactIDro','65973-147','Natoque Penatibus Et Corporation','(422) 816-6245','Praesent.interdum.ligula@liberoMorbi.ca');
INSERT INTO tbl_PhoneBook(contactID,FirstName,LastName,Address,City,PostalCode,Company,Phone,Email) VALUES(9,'Alexa','Chen','1834 Dui. Av.','Isernia','JQ6 5JN','Hymenaeos Mauris Ut Corporation','(352) 672-6024','Nunc.ut.erat@imperdietullamcorper.net');
INSERT INTO tbl_PhoneBook(contactID,FirstName,LastName,Address,City,PostalCode,Company,Phone,Email) VALUES(10,'Zephania','England','860-2189 Mollis Street','BrcontactIDlington','Xxxx','Integer TinccontactIDunt Aliquam LLP','(723) 359-5168','interdum@urnaVivamus.edu');
INSERT INTO tbl_PhoneBook(contactID,FirstName,LastName,Address,City,PostalCode,Company,Phone,Email) VALUES(11,'Seth','Puckett','Ap #445-1633 Vulputate Street','Frankfurt','74951','Sed Nec Metus Consulting','(189) 408-1008','ullamcorper@rcontactIDiculus.edu');
INSERT INTO tbl_PhoneBook(contactID,FirstName,LastName,Address,City,PostalCode,Company,Phone,Email) VALUES(12,'Autumn','Puckett','Ap #394-2320 Lectus Rd.','Machelen','7818TG','Suspendisse Ac Limited','(568) 300-7761','sed.libero@nec.com');
INSERT INTO tbl_PhoneBook(contactID,FirstName,LastName,Address,City,PostalCode,Company,Phone,Email) VALUES(13,'Emily','Riggs','P.O. Box 935, 3412 Nec, Rd.','Kearney','C3X 4K9','Eget Inc.','(216) 343-4044','a.facilisis@Phasellus.ca');
INSERT INTO tbl_PhoneBook(contactID,FirstName,LastName,Address,City,PostalCode,Company,Phone,Email) VALUES(14,'Gavin','Mccarty','1045 Curabitur Rd.','Valcourt','TV2I 5UI','Sapien Nunc Foundation','(643) 383-7792','elit.pharetra@etlibero.ca');
INSERT INTO tbl_PhoneBook(contactID,FirstName,LastName,Address,City,PostalCode,Company,Phone,Email) VALUES(15,'Stephen','Wade','924-9797 Sapien, Road','Antwerpen','P31 1SL','Sit Amet Metus Industries','(161) 957-1911','dui.nec@sed.co.uk');
INSERT INTO tbl_PhoneBook(contactID,FirstName,LastName,Address,City,PostalCode,Company,Phone,Email) VALUES(16,'Baxter','Rush','P.O. Box 158, 1024 Nulla. Av.','Glossop','0422','At Foundation','(506) 337-3370','libero.nec.ligula@Mauris.ca');
INSERT INTO tbl_PhoneBook(contactID,FirstName,LastName,Address,City,PostalCode,Company,Phone,Email) VALUES(17,'Calvin','Britt','Ap #836-9250 Nulla Road','Boorsem','5755','Dis Parturient Corporation','(488) 122-8349','Mauris.magna.Duis@facilisis.org');
INSERT INTO tbl_PhoneBook(contactID,FirstName,LastName,Address,City,PostalCode,Company,Phone,Email) VALUES(18,'Jolene','Roberts','Ap #192-9551 Et Street','Montague','M9X 6G1','Tortor Dictum Eu Ltd','(555) 403-0301','lorem.Donec.elementum@hendreritDonecporttitor.edu');
INSERT INTO tbl_PhoneBook(contactID,FirstName,LastName,Address,City,PostalCode,Company,Phone,Email) VALUES(19,'Dylan','Thompson','7928 Ac, Av.','Roux','88481','Est Tempor Bibendum Associates','(521) 740-6294','rutrum@Mauris.com');
INSERT INTO tbl_PhoneBook(contactID,FirstName,LastName,Address,City,PostalCode,Company,Phone,Email) VALUES(20,'Angelica','Hamilton','576-6740 Class Street','Hulshout','38545','Mauris A PC','(830) 872-1178','mi.Aliquam.gravcontactIDa@turpis.com');
INSERT INTO tbl_PhoneBook(contactID,FirstName,LastName,Address,City,PostalCode,Company,Phone,Email) VALUES(21,'Ramona','Mcneil','Ap #625-5832 Dictum Rd.','Balsas','07406-127','Nunc Interdum Feugiat Ltd','(406) 260-6262','vitae.semper.egestas@utcursus.ca');
INSERT INTO tbl_PhoneBook(contactID,FirstName,LastName,Address,City,PostalCode,Company,Phone,Email) VALUES(22,'Blythe','Hendrix','1260 Aliquet. St.','Vorst','52973','Porttitor Ltd','(453) 265-5124','morbi.tristique.senectus@etultrices.co.uk');
INSERT INTO tbl_PhoneBook(contactID,FirstName,LastName,Address,City,PostalCode,Company,Phone,Email) VALUES(23,'Lydia','Wynn','P.O. Box 236, 6338 Morbi Av.','Laces/Latsch','C8L 3P9','Ipsum Donec Inc.','(972) 332-5137','hendrerit@vestibulummassa.ca');
INSERT INTO tbl_PhoneBook(contactID,FirstName,LastName,Address,City,PostalCode,Company,Phone,Email) VALUES(24,'Reuben','Schultz','6337 Phasellus St.','Piana degli Albanesi','68484','Tortor Integer Corporation','(622) 502-5080','Duis.dignissim@euodioPhasellus.co.uk');
INSERT INTO tbl_PhoneBook(contactID,FirstName,LastName,Address,City,PostalCode,Company,Phone,Email) VALUES(25,'Aubrey','Barnett','6467 Fusce Rd.','Geel','4250','Accumsan Neque Consulting','(574) 690-6807','nascetur.rcontactIDiculus@duiSuspendisse.net');
INSERT INTO tbl_PhoneBook(contactID,FirstName,LastName,Address,City,PostalCode,Company,Phone,Email) VALUES(26,'Travis','Macias','P.O. Box 952, 7629 Velit. Av.','Huppaye','Xxxx','Lectus Corp.','(345) 303-8628','Nunc.sed.orci@ipsumdolorsit.co.uk');
INSERT INTO tbl_PhoneBook(contactID,FirstName,LastName,Address,City,PostalCode,Company,Phone,Email) VALUES(27,'Evangeline','Castaneda','P.O. Box 516, 4678 Curabitur St.','Tulsa','98929','Metus Aenean Sed LLP','(820) 379-9168','eget.varius.ultrices@tristiquealiquetPhasellus.ca');
INSERT INTO tbl_PhoneBook(contactID,FirstName,LastName,Address,City,PostalCode,Company,Phone,Email) VALUES(28,'Tallulah','Herman','P.O. Box 133, 3466 Lectus Rd.','Hartford','66303','Nunc Ullamcorper Velit Incorporated','(416) 279-2756','porttitor@Mauriseu.org');
INSERT INTO tbl_PhoneBook(contactID,FirstName,LastName,Address,City,PostalCode,Company,Phone,Email) VALUES(29,'Clayton','Gibson','P.O. Box 561, 7705 A, Rd.','Heppignies','31833','Quam A Corp.','(690) 829-2340','arcu.Sed@molestieSed.net');
INSERT INTO tbl_PhoneBook(contactID,FirstName,LastName,Address,City,PostalCode,Company,Phone,Email) VALUES(30,'Sonya','Snyder','5162 Sem Street','ApareccontactIDa de Goi�nia','5248','Vestibulum Mauris Associates','(839) 769-9940','mi.Aliquam@nequeNullam.net');
INSERT INTO tbl_PhoneBook(contactID,FirstName,LastName,Address,City,PostalCode,Company,Phone,Email) VALUES(31,'Riley','Dunn','P.O. Box 724, 6374 Eleifend St.','Bassiano','11715','Lectus Rutrum Corp.','(779) 851-9526','sem.ut@arcuMorbi.com');
INSERT INTO tbl_PhoneBook(contactID,FirstName,LastName,Address,City,PostalCode,Company,Phone,Email) VALUES(32,'Dalton','Vargas','Ap #170-7606 Duis Street','Genzano di Lucania','20226','Nullam Nisl Maecenas PC','(599) 402-9197','lacus@ProinmiAliquam.co.uk');
INSERT INTO tbl_PhoneBook(contactID,FirstName,LastName,Address,City,PostalCode,Company,Phone,Email) VALUES(33,'Keely','Merritt','959-6876 Dolor Ave','Calgary','15135','Augue Scelerisque Inc.','(323) 882-5322','Vestibulum@magnisdis.org');
INSERT INTO tbl_PhoneBook(contactID,FirstName,LastName,Address,City,PostalCode,Company,Phone,Email) VALUES(34,'Rylee','Fox','P.O. Box 848, 6414 Sodales Avenue','Springfield','C1K 9B6','Faucibus Orci Luctus Limited','(549) 622-1249','sed@temporbibendumDonec.co.uk');
INSERT INTO tbl_PhoneBook(contactID,FirstName,LastName,Address,City,PostalCode,Company,Phone,Email) VALUES(35,'Tamara','Carpenter','152-1516 Turpis. Road','Piagge','8472','Mollis Phasellus Libero Industries','(969) 290-4302','nulla.Donec@egetdictumplacerat.net');
INSERT INTO tbl_PhoneBook(contactID,FirstName,LastName,Address,City,PostalCode,Company,Phone,Email) VALUES(36,'Kevin','Delgado','888-7457 Donec Avenue','C�rdoba','5655ZB','Odio Etiam Corp.','(779) 157-4383','justo.Praesent.luctus@nonlacinia.org');
INSERT INTO tbl_PhoneBook(contactID,FirstName,LastName,Address,City,PostalCode,Company,Phone,Email) VALUES(37,'Teegan','Cote','7179 Integer Road','Gjoa Haven','Xxxx','Sed Neque Corporation','(395) 393-9945','rhoncus@mattisCras.ca');
INSERT INTO tbl_PhoneBook(contactID,FirstName,LastName,Address,City,PostalCode,Company,Phone,Email) VALUES(38,'Meredith','Small','P.O. Box 843, 7065 Nunc Rd.','Brussel X-Luchthaven Remailing','48448','Vulputate Foundation','(994) 799-9762','Etiam.ligula.tortor@fringillaDonecfeugiat.co.uk');
INSERT INTO tbl_PhoneBook(contactID,FirstName,LastName,Address,City,PostalCode,Company,Phone,Email) VALUES(39,'Travis','Guerra','353-5845 Vitae Ave','Alexandra','31706','Auctor Nunc Company','(703) 997-1694','fringilla.ornare@Sednulla.ca');
INSERT INTO tbl_PhoneBook(contactID,FirstName,LastName,Address,City,PostalCode,Company,Phone,Email) VALUES(40,'Cruz','Keith','8424 At Street','Palmariggi','56043','Egestas Urna Justo LLC','(312) 637-8666','velit.Quisque@nasceturrcontactIDiculusmus.net');
INSERT INTO tbl_PhoneBook(contactID,FirstName,LastName,Address,City,PostalCode,Company,Phone,Email) VALUES(41,'Hector','Bell','812-3392 Elementum Av.','Sivry','82460','Blandit Industries','(137) 438-2855','felis.ullamcorper@nisi.ca');
INSERT INTO tbl_PhoneBook(contactID,FirstName,LastName,Address,City,PostalCode,Company,Phone,Email) VALUES(42,'Anika','Gibbs','Ap #668-3798 Dictum Rd.','Barcelona','Xxxx','Velit Associates','(217) 320-0638','diam.Duis@Praesenteunulla.co.uk');
INSERT INTO tbl_PhoneBook(contactID,FirstName,LastName,Address,City,PostalCode,Company,Phone,Email) VALUES(43,'Shelly','Dalton','814-8451 Elementum, Road','Wigtown','83147','Sagittis Felis Donec Ltd','(139) 572-2597','egestas@lectusante.org');
INSERT INTO tbl_PhoneBook(contactID,FirstName,LastName,Address,City,PostalCode,Company,Phone,Email) VALUES(44,'Arthur','Bowman','P.O. Box 107, 1980 Facilisis Rd.','Elx','59454-177','Non Hendrerit contactID Associates','(775) 871-3814','dictum@egestaslacinia.ca');
INSERT INTO tbl_PhoneBook(contactID,FirstName,LastName,Address,City,PostalCode,Company,Phone,Email) VALUES(45,'Jillian','Puckett','9897 Cum Rd.','Tuscaloosa','A3V 5E5','Nunc Risus Institute','(743) 898-6345','conubia.nostra.per@ullamcorperDuisat.net');
INSERT INTO tbl_PhoneBook(contactID,FirstName,LastName,Address,City,PostalCode,Company,Phone,Email) VALUES(46,'Emerald','Sanders','Ap #328-8111 Amet, St.','Vancouver','60911','Arcu Aliquam Ultrices Limited','(516) 144-0413','bibendum@liberoettristique.ca');
INSERT INTO tbl_PhoneBook(contactID,FirstName,LastName,Address,City,PostalCode,Company,Phone,Email) VALUES(47,'Eliana','Warren','P.O. Box 869, 6068 Dictum Av.','Great Falls','92153-504','Lobortis Quam A LLC','(117) 312-1207','rcontactIDiculus@lectusasollicitudin.ca');
INSERT INTO tbl_PhoneBook(contactID,FirstName,LastName,Address,City,PostalCode,Company,Phone,Email) VALUES(48,'Claire','Holman','P.O. Box 865, 6856 Est Street','Waterbury','02315','Massa Non Industries','(497) 800-9975','amet.massa@euismodurnaNullam.ca');
INSERT INTO tbl_PhoneBook(contactID,FirstName,LastName,Address,City,PostalCode,Company,Phone,Email) VALUES(49,'Kenneth','Merritt','Ap #389-3925 Sed Av.','Denver','Xxxx','Pellentesque Eget Dictum Incorporated','(602) 251-8329','felis@Etiamvestibulum.com');
INSERT INTO tbl_PhoneBook(contactID,FirstName,LastName,Address,City,PostalCode,Company,Phone,Email) VALUES(50,'Fiona','Chandler','Ap #325-8443 Vel, Av.','Henis','61255','Eleifend Egestas Corporation','(548) 617-3359','lectus.rutrum.urna@euligula.net');
INSERT INTO tbl_PhoneBook(contactID,FirstName,LastName,Address,City,PostalCode,Company,Phone,Email) VALUES(51,'Charles','Quinn','P.O. Box 142, 5103 Aliquam Ave','Gullegem','71703','Duis Volutpat Nunc LLC','(249) 167-8289','eleifend.nunc.risus@fermentum.edu');
INSERT INTO tbl_PhoneBook(contactID,FirstName,LastName,Address,City,PostalCode,Company,Phone,Email) VALUES(52,'Remedios','Morrison','302-3942 Dui, St.','Northumberland','2291','Ultrices A Institute','(159) 292-5553','dictum.augue@tinccontactIDuntnunc.org');
INSERT INTO tbl_PhoneBook(contactID,FirstName,LastName,Address,City,PostalCode,Company,Phone,Email) VALUES(53,'Xerxes','Blake','205-7648 Blandit Avenue','Ip�s','22323','Rhoncus Nullam Foundation','(107) 281-4591','Nunc.ullamcorper.velit@Duis.edu');
INSERT INTO tbl_PhoneBook(contactID,FirstName,LastName,Address,City,PostalCode,Company,Phone,Email) VALUES(54,'Leila','Castillo','689-8287 Ornare, Rd.','Tiverton','5105','Eu Elit Corp.','(924) 170-1952','sagittis.Nullam@magnaa.ca');
INSERT INTO tbl_PhoneBook(contactID,FirstName,LastName,Address,City,PostalCode,Company,Phone,Email) VALUES(55,'Colin','Chen','2295 Nascetur Av.','Santa Cesarea Terme','21504','Dictum Limited','(533) 165-2242','neque.Morbi.quis@Aliquamrutrum.org');
INSERT INTO tbl_PhoneBook(contactID,FirstName,LastName,Address,City,PostalCode,Company,Phone,Email) VALUES(56,'Kasimir','Leonard','174-7436 Mauris St.','Baarle-Hertog','7641','Tellus Eu Augue Foundation','(982) 645-9884','sed.sem.egestas@tempor.org');
INSERT INTO tbl_PhoneBook(contactID,FirstName,LastName,Address,City,PostalCode,Company,Phone,Email) VALUES(57,'Ifeoma','Cline','371-5146 Magna Av.','Salvirola','4424','Adipiscing Elit Aliquam LLC','(340) 700-6840','odio.sagittis@risusNunc.com');
INSERT INTO tbl_PhoneBook(contactID,FirstName,LastName,Address,City,PostalCode,Company,Phone,Email) VALUES(58,'Allistair','Baxter','439-261 Ultrices. Street','Gespeg','92500-507','Egestas Lacinia Limited','(457) 456-7907','posuere.at@insodales.edu');
INSERT INTO tbl_PhoneBook(contactID,FirstName,LastName,Address,City,PostalCode,Company,Phone,Email) VALUES(59,'Dominic','Riggs','P.O. Box 869, 5421 Sodales Ave','Tarcento','02679','Tristique LLC','(677) 850-5591','non.sapien@ultricessit.ca');
INSERT INTO tbl_PhoneBook(contactID,FirstName,LastName,Address,City,PostalCode,Company,Phone,Email) VALUES(60,'Malik','Eaton','Ap #817-7240 Ut, St.','Camponogara','A5V 8C8','Parturient Inc.','(467) 530-9557','sapien.Nunc.pulvinar@ullamcorperDuisat.co.uk');
INSERT INTO tbl_PhoneBook(contactID,FirstName,LastName,Address,City,PostalCode,Company,Phone,Email) VALUES(61,'Darryl','Oneill','520-2577 Non, Rd.','Radebeul','08783-083','Auctor Non Corp.','(641) 815-3505','scelerisque.neque@atvelit.org');
INSERT INTO tbl_PhoneBook(contactID,FirstName,LastName,Address,City,PostalCode,Company,Phone,Email) VALUES(62,'Winifred','Garcia','Ap #267-8202 Tempus Rd.','L?beck','74334','Diam Institute','(927) 574-7564','elit.dictum@consequatenimdiam.edu');
INSERT INTO tbl_PhoneBook(contactID,FirstName,LastName,Address,City,PostalCode,Company,Phone,Email) VALUES(63,'Florence','Alexander','717-7397 Pede St.','Kerikeri','14544','Enim Non Nisi LLC','(369) 936-0758','ut.aliquam.iaculis@mattissemper.net');
INSERT INTO tbl_PhoneBook(contactID,FirstName,LastName,Address,City,PostalCode,Company,Phone,Email) VALUES(64,'Gareth','Anthony','756-9437 Cursus Avenue','Klemskerke','90175','Condimentum Eget Volutpat Associates','(105) 608-3976','lorem.sit.amet@sit.ca');
INSERT INTO tbl_PhoneBook(contactID,FirstName,LastName,Address,City,PostalCode,Company,Phone,Email) VALUES(65,'Quyn','Herrera','Ap #863-3330 Nullam Avenue','Genk','M1W 8DO','Elit Inc.','(647) 578-7154','at@magnisdis.net');
INSERT INTO tbl_PhoneBook(contactID,FirstName,LastName,Address,City,PostalCode,Company,Phone,Email) VALUES(66,'Quyn','Cardenas','516-3599 Cursus. Rd.','CambrcontactIDge Bay','4729GA','Et Magnis Dis Institute','(145) 689-4277','Phasellus@penatibuset.org');
INSERT INTO tbl_PhoneBook(contactID,FirstName,LastName,Address,City,PostalCode,Company,Phone,Email) VALUES(67,'Demetria','Foley','253-967 Scelerisque Ave','Beauport','7711','TinccontactIDunt Consulting','(470) 312-0943','bibendum.Donec.felis@Incondimentum.ca');
INSERT INTO tbl_PhoneBook(contactID,FirstName,LastName,Address,City,PostalCode,Company,Phone,Email) VALUES(68,'Felicia','Daugherty','874-5731 Aenean Rd.','Nives','Xxxx','In Company','(511) 748-6709','Nunc.lectus.pede@ametconsectetuer.net');
INSERT INTO tbl_PhoneBook(contactID,FirstName,LastName,Address,City,PostalCode,Company,Phone,Email) VALUES(69,'Quin','Young','648-7204 Porttitor St.','Saint-Georges','1520','Ut Dolor Dapibus Limited','(424) 450-1307','dui.nec@feugiat.edu');
INSERT INTO tbl_PhoneBook(contactID,FirstName,LastName,Address,City,PostalCode,Company,Phone,Email) VALUES(70,'Patricia','Daugherty','407-566 Metus. St.','Silverton','4136','Duis Cursus Incorporated','(672) 785-7639','facilisis.non@commodoipsum.co.uk');
INSERT INTO tbl_PhoneBook(contactID,FirstName,LastName,Address,City,PostalCode,Company,Phone,Email) VALUES(71,'Jennifer','Hull','Ap #814-4378 Pede, Av.','Sant Urbano','2569','Massa Mauris Vestibulum Associates','(738) 304-6091','erat.Vivamus@eusemPellentesque.ca');
INSERT INTO tbl_PhoneBook(contactID,FirstName,LastName,Address,City,PostalCode,Company,Phone,Email) VALUES(72,'Gannon','Porter','P.O. Box 458, 5667 Metus St.','Saint-Luger','70432','Pellentesque Industries','(677) 647-4110','nulla.Donec.non@convalliserat.org');
INSERT INTO tbl_PhoneBook(contactID,FirstName,LastName,Address,City,PostalCode,Company,Phone,Email) VALUES(73,'Kelly','Jenkins','961-6937 Nisl. St.','Slough','14588','Et Magna Praesent Corp.','(709) 346-3850','nec.tellus.Nunc@lectusasollicitudin.edu');
INSERT INTO tbl_PhoneBook(contactID,FirstName,LastName,Address,City,PostalCode,Company,Phone,Email) VALUES(74,'Otto','Christensen','135-9790 Donec Rd.','Magdeburg','88080-544','Donec Dignissim Corp.','(405) 216-7677','imperdiet.erat.nonummy@Nuncpulvinar.ca');
INSERT INTO tbl_PhoneBook(contactID,FirstName,LastName,Address,City,PostalCode,Company,Phone,Email) VALUES(75,'Chiquita','Harrison','P.O. Box 321, 9192 Aliquet Av.','Landelies','6173WY','Ac Mi Eleifend Corp.','(767) 987-6784','Aliquam.auctor.velit@mauris.co.uk');
INSERT INTO tbl_PhoneBook(contactID,FirstName,LastName,Address,City,PostalCode,Company,Phone,Email) VALUES(76,'Nehru','Avery','573-5143 Eget Rd.','Ch�teauroux','N5W 4M5','Turpis Industries','(213) 683-7462','Donec.egestas@Quisqueornaretortor.org');
INSERT INTO tbl_PhoneBook(contactID,FirstName,LastName,Address,City,PostalCode,Company,Phone,Email) VALUES(77,'Uriel','Stone','930-7450 Natoque Av.','Llangollen','93467','Quam Inc.','(296) 155-3426','ultricies.dignissim@adipiscing.org');
INSERT INTO tbl_PhoneBook(contactID,FirstName,LastName,Address,City,PostalCode,Company,Phone,Email) VALUES(78,'Quinn','Lester','Ap #333-4796 Auctor St.','Smetlede','X3T 9Y2','Dolor PC','(345) 910-8261','Donec.felis@ipsum.co.uk');
INSERT INTO tbl_PhoneBook(contactID,FirstName,LastName,Address,City,PostalCode,Company,Phone,Email) VALUES(79,'Quyn','Whitney','743-7355 Ornare. Road','Limena','70904','Sociis Corp.','(841) 111-2559','tortor.at.risus@quamvelsapien.co.uk');
INSERT INTO tbl_PhoneBook(contactID,FirstName,LastName,Address,City,PostalCode,Company,Phone,Email) VALUES(80,'Ferdinand','Osborne','Ap #604-3361 Sociis Road','San Nicol�s','T3E 8P3','Ultrices Sit Amet Corporation','(218) 245-7813','Mauris.blandit@nuncullamcorpereu.edu');
INSERT INTO tbl_PhoneBook(contactID,FirstName,LastName,Address,City,PostalCode,Company,Phone,Email) VALUES(81,'Cruz','Whitaker','104-3301 Lacus Road','Shreveport','31215','Mollis Integer Incorporated','(976) 396-1301','eu@nonummy.ca');
INSERT INTO tbl_PhoneBook(contactID,FirstName,LastName,Address,City,PostalCode,Company,Phone,Email) VALUES(82,'Marshall','Hatfield','Ap #842-2485 Fusce Avenue','Bragan�a','0721','Elit Pellentesque A LLC','(464) 422-6169','risus.In@tristique.com');
INSERT INTO tbl_PhoneBook(contactID,FirstName,LastName,Address,City,PostalCode,Company,Phone,Email) VALUES(83,'Leo','Stokes','P.O. Box 689, 2413 Hymenaeos. Street','Orroli','33091','Dictum Placerat Company','(413) 148-2420','a.feugiat@Curabiturmassa.net');
INSERT INTO tbl_PhoneBook(contactID,FirstName,LastName,Address,City,PostalCode,Company,Phone,Email) VALUES(84,'Zephania','Case','615-7315 Vulputate Avenue','Darmstadt','09230-622','Montes Nascetur Industries','(153) 161-0978','ipsum.Curabitur@magnaLorem.ca');
INSERT INTO tbl_PhoneBook(contactID,FirstName,LastName,Address,City,PostalCode,Company,Phone,Email) VALUES(85,'Judith','Figueroa','P.O. Box 195, 8356 Est. St.','Profondeville','51101','Et Magnis Dis Consulting','(328) 171-7838','ac.arcu@libero.com');
INSERT INTO tbl_PhoneBook(contactID,FirstName,LastName,Address,City,PostalCode,Company,Phone,Email) VALUES(86,'Melinda','Bird','Ap #793-6590 Tempor, Rd.','Segni','4926','Sapien Industries','(834) 102-3984','penatibus@nibhAliquamornare.co.uk');
INSERT INTO tbl_PhoneBook(contactID,FirstName,LastName,Address,City,PostalCode,Company,Phone,Email) VALUES(87,'Hedy','Larsen','P.O. Box 287, 2190 Pede. St.','Beaufays','41012','Amet Limited','(450) 896-8070','enim.Etiam.imperdiet@adipiscingenim.ca');
INSERT INTO tbl_PhoneBook(contactID,FirstName,LastName,Address,City,PostalCode,Company,Phone,Email) VALUES(88,'Elaine','Travis','9832 Fringilla Av.','Price','7021','contactID Limited','(639) 598-5798','aliquet.lobortis@velitAliquam.co.uk');
INSERT INTO tbl_PhoneBook(contactID,FirstName,LastName,Address,City,PostalCode,Company,Phone,Email) VALUES(89,'Meghan','Gilmore','947-3109 Nulla Rd.','Bonnyville Municipal District','11505','Curabitur Ut Odio Company','(275) 148-6916','Vivamus.non@convallisestvitae.co.uk');
INSERT INTO tbl_PhoneBook(contactID,FirstName,LastName,Address,City,PostalCode,Company,Phone,Email) VALUES(90,'Eric','Bradford','286-2434 Integer Street','Rechnitz','28505','Lobortis Augue Scelerisque PC','(622) 833-1854','pede.Praesent@semper.org');
INSERT INTO tbl_PhoneBook(contactID,FirstName,LastName,Address,City,PostalCode,Company,Phone,Email) VALUES(91,'Ronan','Mann','P.O. Box 245, 4713 Sed, Street','Eindhout','V9Z 8FF','Nascetur RcontactIDiculus Institute','(167) 444-4573','netus.et.malesuada@velit.co.uk');
INSERT INTO tbl_PhoneBook(contactID,FirstName,LastName,Address,City,PostalCode,Company,Phone,Email) VALUES(92,'Neil','Goodman','6339 Urna Rd.','Westport','01848','Ipsum Curabitur Consequat Inc.','(263) 221-0512','nec@diam.com');
INSERT INTO tbl_PhoneBook(contactID,FirstName,LastName,Address,City,PostalCode,Company,Phone,Email) VALUES(93,'Orli','Mcclain','8994 Non Road','Bertr?e','6878','Ut LLP','(244) 782-6820','eget.lacus.Mauris@bibendumDonec.net');
INSERT INTO tbl_PhoneBook(contactID,FirstName,LastName,Address,City,PostalCode,Company,Phone,Email) VALUES(94,'Michael','Kelley','951-6227 Commodo St.','Fontenoille','15374','Urna Consulting','(680) 251-4485','ullamcorper.Duis@natoquepenatibus.com');
INSERT INTO tbl_PhoneBook(contactID,FirstName,LastName,Address,City,PostalCode,Company,Phone,Email) VALUES(95,'Samantha','Rose','385-6306 Elit. Road','Juseret','9985','Lacus Pede Sagittis Ltd','(764) 208-8763','egestas.Aliquam.nec@orci.net');
INSERT INTO tbl_PhoneBook(contactID,FirstName,LastName,Address,City,PostalCode,Company,Phone,Email) VALUES(96,'Lisandra','Raymond','Ap #858-1805 Vulputate Av.','Berwick-upon-Tweed','4177','Arcu Sed Eu Incorporated','(753) 501-7069','amet.metus.Aliquam@lectus.org');
INSERT INTO tbl_PhoneBook(contactID,FirstName,LastName,Address,City,PostalCode,Company,Phone,Email) VALUES(97,'Stephen','Mason','9058 Nulla Rd.','Nordhorn','7174','Tempus Limited','(710) 727-8977','ipsum.dolor.sit@Maurismolestiepharetra.com');
INSERT INTO tbl_PhoneBook(contactID,FirstName,LastName,Address,City,PostalCode,Company,Phone,Email) VALUES(98,'Kenyon','Wade','5809 Morbi Rd.','Gespeg','4801','Integer Urna Vivamus Ltd','(551) 809-3739','diam.Duis.mi@arcuSedet.co.uk');
INSERT INTO tbl_PhoneBook(contactID,FirstName,LastName,Address,City,PostalCode,Company,Phone,Email) VALUES(99,'Harrison','Mooney','Ap #289-7154 Et Road','Sete Lagoas','VP5O 9CU','Duis Elementum Inc.','(742) 954-3336','Nunc@Crasvulputate.co.uk');
INSERT INTO tbl_PhoneBook(contactID,FirstName,LastName,Address,City,PostalCode,Company,Phone,Email) VALUES(100,'Chester','Patterson','642-5740 Risus St.','Morro Reatino','8751LS','Sapien Aenean Massa Corp.','(937) 293-1047','mauris.aliquam@arcu.co.uk');