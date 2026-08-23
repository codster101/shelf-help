SET session_replication_role = replica;

--
-- PostgreSQL database dump
--

-- \restrict IgIZgKtKErl6dM0YOKXOjLpdHLYAEcIMr3FJSBKJlCZHhSnLdxNDAkttgC9nQLH

-- Dumped from database version 17.6
-- Dumped by pg_dump version 17.6

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- Data for Name: audit_log_entries; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: custom_oauth_providers; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: flow_state; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: users; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: identities; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: instances; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: oauth_clients; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: sessions; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: mfa_amr_claims; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: mfa_factors; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: mfa_challenges; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: oauth_authorizations; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: oauth_client_states; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: oauth_consents; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: one_time_tokens; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: refresh_tokens; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: sso_providers; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: saml_providers; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: saml_relay_states; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: sso_domains; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: webauthn_challenges; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: webauthn_credentials; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: Customers; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO "public"."Customers" ("id", "email", "address_line_1", "address_line_2", "birthday", "city", "country", "first_name", "last_name", "phone_number", "state", "zip_code") VALUES
	(1, 'princess62193@yahoo.com', '66696 Van Dyke Rd.', 'Apt. 1', 'June 21', 'Washington', 'US', 'Sarah', 'Allar', '5862604864', 'MI', '48095'),
	(2, 'julieallar@yahoo.com', '22438 Dale Allen', NULL, 'October 27', 'Clinton Twp', 'US', 'Julie', 'Allar', '(586) 260-6422', 'MI', '48035'),
	(3, 'emilyallar@gmail.com', '21535 Avalon', NULL, NULL, 'St. Clair Shores', 'US', 'Emily', 'Allar', '(586) 850-4374', 'MI', '48080'),
	(4, '', NULL, NULL, 'December 09', NULL, NULL, 'Ashlie', 'Alvey', '(810) 969-3744', NULL, NULL),
	(5, 'momree4664@yahoo.com', '4520 Gardner', NULL, 'February 02', 'Sterling Heights', 'US', 'Marie', 'Anderson', '5862589826', 'MI', '48310'),
	(6, 'debbie8330@hotmail.com', '8330 New Bradford', NULL, 'June 22', 'Sterling Heights', 'US', 'Debbie', 'Anderson', '5862464615', 'MI', '48312'),
	(7, 'laraj1976@gmail.com', '40229 Ashland', NULL, NULL, 'Sterling Heights', 'US', 'Lucy', 'Araj', NULL, 'MI', '48313'),
	(8, 'gab.avolio5@gmail.com', '59275 Linenger', NULL, NULL, 'Washington', 'US', 'Gabriella', 'Avolio', '(586) 453-5593', 'MI', '48094'),
	(9, 'katebadal@yahoo.com', NULL, NULL, NULL, NULL, NULL, 'Kate', 'Badalamenti', NULL, NULL, NULL),
	(10, 'brittanyb2133@gmail.com', NULL, NULL, NULL, NULL, NULL, 'Brittany', 'Bagnaschi', '5865494762', NULL, NULL),
	(11, 'amcleland5@hotmail.com', '42245 Mandalay Court', NULL, NULL, 'Sterling Heights', 'US', 'Amber', 'Bailey', '(586) 946-0345', 'MI', '48313'),
	(12, 'kayla.balfour@gmail.com', '5180 N River Rd', NULL, NULL, 'Clyde', 'US', 'Kayla', 'Balfour', '8104202559', 'MI', '48049-4565'),
	(13, 'smbinvestment@gmail.com', '29 Dickinson', 'Unit K', 'April 23', 'Mt. Clemens', 'US', 'Stacy', 'Barrett', '5863813277', 'MI', '48043'),
	(14, 'brittaneybateman@ymail.com', '1648 Goddard', NULL, 'September 19', 'Lincoln Park', 'US', 'Brittaney', 'Bateman', '7343011701', 'MI', '48146'),
	(15, 'lcbianco12@gmail.com', '38925 Moravian Dr', NULL, 'September 12', 'Clinton Twp', 'US', 'Laura', 'Bianco', '(586) 610-9626', 'MI', '48036'),
	(16, 'skippybunk@gmail.com', '13775 Barfield', NULL, 'February 02', 'Warren', 'US', 'Sue', 'Bielat', '5862149708', 'MI', '48088'),
	(17, 'thebilskis@comcast.net', NULL, NULL, NULL, NULL, NULL, 'Becca', 'Bilski', NULL, NULL, NULL),
	(18, 'lakenbingamen@gmail.com', '62099 Jewell Rd', NULL, 'May 15', 'Washington Twp', 'US', 'Laken', 'Bingamen', '5866902964', 'MI', '48094'),
	(19, 'jabishop_3@yahoo.com', '40203 Spitz Dr', NULL, NULL, 'Sterling Heights', 'US', 'Jennifer', 'Bishop', '5863063889', 'MI', '48313'),
	(20, 'carissabiskner@yahoo.com', '35038 Simon Dr', NULL, 'August 08', 'Clinton Twp', 'US', 'Carissa', 'Biskner', '(810) 434-7840', 'MI', '48035-2498'),
	(21, 'snowball586@yahoo.com', '8735 Alwardt', NULL, 'October 26', 'Sterling Heights', 'US', 'SUE', 'BISSA', '5862124061', 'MI', '48313'),
	(22, 'debbiebitterman3@gmail.com', '38757 Covington Dr', NULL, NULL, 'Sterling Heights', 'US', 'Debbie', 'Bitterman', '5866042635', 'MI', '48312-1313'),
	(23, 'lindsayblack11@yahoo.com', '27301 Grandmont St.', NULL, 'January 13', 'Roseville', 'US', 'Lindsay', 'Black', '5866127769', 'MI', '48066'),
	(24, 'jenniferbloch8@yahoo.com', '212 Cass', '15', 'May 10', 'Mt Clemens', 'US', 'Jennifer', 'Bloch', '5862608746', 'MI', '48043'),
	(25, 'lexiblossom1129@gmail.com', NULL, NULL, NULL, NULL, NULL, 'Alexis', 'Blossom', '7347402811', NULL, NULL),
	(26, '', NULL, NULL, NULL, NULL, NULL, 'Crystal', 'Bodek', '(586) 334-7111', NULL, NULL),
	(27, 'chaboggio@gmail.com', '49495 Lakewood St.', NULL, NULL, 'Macomb', 'US', 'Charmayne', 'Boggio', '(586) 615-7357', 'MI', '48042'),
	(28, 'jennabogner@yahoo.com', '2443 Ivanhoe Dr', NULL, 'February 06', 'West Bloomfield', 'US', 'Jenna', 'Bogner', NULL, 'MI', '48324'),
	(29, 'feleciabokano1@gmail.com', NULL, NULL, NULL, NULL, NULL, 'Felecia', 'Bokano', '5869613284', NULL, NULL),
	(30, 'delana.borja@gmail.com', '2817 Hunters Way', NULL, 'August 13', 'Bloomfield', 'US', 'DeLana', 'Borja', '2489531526', 'MI', '48304'),
	(31, 'jborland74@live.com', '16303 Angora', NULL, 'October 31', 'Macomb', 'US', 'Jackie', 'Borland', '5862141618', 'MI', '48044'),
	(32, 'morandapowell@gmail.com', NULL, NULL, NULL, NULL, NULL, 'Miranda', 'Brewer', '3137405430', NULL, NULL),
	(33, 'ashleybrimm95@gmail.com', '25035 Orchid St', NULL, NULL, 'Harrison Twp', 'US', 'Ashley', 'Brimm', '5867709867', 'MI', '48045-3369'),
	(34, '', '38136 Thomas Ct', NULL, NULL, 'Sterling Heights', 'US', 'Erin', 'Britton', '5869950037', 'MI', '48312'),
	(35, 'rgarvin48@aol.com', '20816 Marvindale St', NULL, NULL, 'Clinton Township', 'US', 'Regina', 'Bruglio', '5864381009', 'MI', '480351625'),
	(36, '', '2207 Clinton Ave', NULL, NULL, 'Saint Clair', 'US', 'Lori', 'Brumley', NULL, 'MI', '48079'),
	(37, 'lisabugg2010@gmail.com', '46250 Duke Ct', NULL, NULL, 'Shelby Twp', 'US', 'Lisa', 'Bugg', '5868998484', 'MI', '48315'),
	(38, 'rachelmbugg@gmail.com', '18392 Sabine Rd', NULL, 'June 09', 'Macomb', 'US', 'Rachel', 'Bugg', '(586) 921-4172', 'MI', '48042'),
	(39, 'linda2233.lb@gmail.com', '39634 Baker Dr.', NULL, 'November 22', 'Sterling Heights', 'US', 'Linda', 'Burk', '(586) 854-5226', 'MI', '41310'),
	(40, 'kayleeburke3@gmail.com', NULL, NULL, NULL, NULL, NULL, 'Kalee', 'Burke', '5868765567', NULL, NULL),
	(41, 'aeb12221991@gmail.com', '57479 Hanover', NULL, NULL, 'Washington Twp.', 'US', 'Alexis', 'Burns', NULL, 'MI', '48038'),
	(42, 'katbushor@icloud.com', '17791 Wexford St', NULL, NULL, 'Roseville', 'US', 'Kaitlyn', 'Bushor', NULL, 'MI', '48066-4629'),
	(43, 'leeanngirard@yahoo.com', NULL, NULL, NULL, NULL, NULL, 'Demo', 'Business', NULL, NULL, NULL),
	(44, 'raven_byars@yahoo.com', '28325 Elmdale St', NULL, 'January 05', 'Saint Clair Shores', 'US', 'Raven', 'Byars', '5862442055', 'MI', '48081'),
	(45, 'ebozzipac@hotmail.com', '36259 Tulane Dr', NULL, 'February 14', 'Sterling Heights', 'US', 'Beth', 'Capizo', '5864896416', 'MI', '48312'),
	(46, 'amycarrier14@gmail.com', '11393 Dora', NULL, 'December 14', 'Sterling Heights', 'US', 'Amy', 'Carrier', '5867137297', 'MI', '48314'),
	(47, 'haley.taco.6@gmail.com', NULL, NULL, NULL, NULL, NULL, 'Haley', 'Casto', '5863060440', NULL, NULL),
	(48, 'marianacathers@ymail.com', '45326 LaBelle Dr', NULL, NULL, 'Macomb', 'US', 'Mariana', 'Cathers', NULL, 'MI', '48044-6043'),
	(49, 'jcochran@wowway.com', '55673 Lancewood Dr', NULL, 'April 09', 'Shelby Twp', 'US', 'Janine', 'Cochran', '(586) 206-4612', 'MI', '48316'),
	(50, 'tac65@charter.net', '7430 Liegl ct', NULL, 'September 27', 'Alanson', 'US', 'Theresa', 'Coleman', '(231) 622-1392', 'MI', '49706'),
	(51, 'dcolemon6@gmail.com', '19726 Damman', NULL, 'August 15', 'Harper Woods', 'US', 'Debra', 'Colemon', '3134920867', 'MI', NULL),
	(52, 'dme7866@charter.net', '116 Veda St', NULL, 'June 06', 'Marquette', 'US', 'Danielle', 'Collick', '(906) 458-6259', 'MI', '49855'),
	(53, 'brittanyc2586@yahoo.com', '43920 Hayes Rd', NULL, 'February 05', 'Clinton Township', 'US', 'Brittany', 'Connelly', '5868081919', 'MI', '48038'),
	(54, 'nconrad5951@att.net', '43159 Pendleton Cir', NULL, NULL, 'Sterling Heights', 'US', 'Nancy', 'Conrad', '5865573534', 'MI', '48313-1979'),
	(55, 'jazamaster@yahoo.com', '13616 Birwood St', NULL, NULL, 'Detroit', 'US', 'Jasmine', 'Cosby', '3139170159', 'MI', '48238-2218'),
	(56, 'dancer09141995@yahoo.com', '18180 North Oak', NULL, 'September 14', 'Clinton Twp', 'US', 'Hannah', 'Courtney', '5869141481', 'MI', '48038'),
	(57, 'ashleyemilycoxxx@icloud.com', NULL, NULL, NULL, NULL, NULL, 'Ashlie', 'Cox', '7348466314', NULL, NULL),
	(58, 'lovvxxxnyx@gmail.com', '8421 Pershing', NULL, 'September 21', 'Center Line', 'US', 'Erin', 'Crager', '(586) 213-3250', 'MI', '48015'),
	(59, 'creger.ashley@gmail.com', NULL, NULL, NULL, NULL, NULL, 'Ashley', 'Creger', '8106271118', NULL, NULL),
	(60, 'patriciaacreger@hotmail.com', NULL, NULL, NULL, NULL, NULL, 'Patricia', 'Creger', '5866512615', NULL, NULL),
	(61, '', '13897 Bowling Green Dr', NULL, NULL, 'Sterling Heights', 'US', 'Preferred', 'Customer', NULL, 'MI', '48313'),
	(62, '', '13897 Bowling Green Dr', NULL, NULL, 'Sterling Heights', 'US', 'Preferred', 'Customer', NULL, 'MI', '48313'),
	(63, '', '13897 Bowling Green Dr', NULL, NULL, 'Sterling Heights', 'US', 'Preferred', 'Customer', NULL, 'MI', '48313'),
	(64, 'sammijo1995@gmail.com', '14670 Lakeshore Dr', NULL, 'November 25', 'Sterling Heights', 'US', 'Samantha', 'Dadoush', '(586) 339-7178', 'MI', '48313'),
	(65, 'gabbydaniels869@yahoo.com', '54214 Verona Park Dr', NULL, 'July 24', 'Macomb', 'US', 'Gabby', 'Daniels', '5862140069', 'MI', '48042-5799'),
	(66, 'crystalmhuyghe@gmail.com', '508 Wildes St', NULL, 'August 15', 'Midland', 'US', 'Crystal', 'Davis', '(586) 441-9760', 'MI', '48640'),
	(67, 'mdebelak@gmail.com', '8415 New Bradford', NULL, 'April 01', 'Sterling Height', 'US', 'Monica', 'Debelak', '(586) 945-5232', 'MI', '48312'),
	(68, 'jdegain24@gmail.com', '603 W Raymond Path', NULL, 'June 11', 'Beverly Hills', 'US', 'Joann', 'Degain', '(586) 419-2041', 'FL', '34465-8754'),
	(69, 'hmrgamangroup@aol.com', '729 Lockmoore Ct', NULL, NULL, 'Rochester Hills', 'US', 'Heather', 'Deller', NULL, 'MI', '48307-4230'),
	(70, 'jersey712@yahoo.com', '8824 Frederick', NULL, 'July 12', 'Washington', 'US', 'Katelyn', 'Dempz', '5867469364', 'MI', '48094'),
	(71, 'juliadezio@gmail.com', NULL, NULL, NULL, NULL, NULL, 'Julia', 'Dezio', '8105600538', NULL, NULL),
	(72, 'bethdimarzo@yahoo.com', '55144 Apple Ln', NULL, NULL, 'Shelby Township', 'US', 'Beth', 'DiMarzo', NULL, 'MI', '48316-5334'),
	(73, '', NULL, NULL, NULL, NULL, NULL, 'Nick', 'Doane', NULL, NULL, NULL),
	(74, 'tinydobbs71@gmail.com', NULL, NULL, NULL, NULL, NULL, 'Tonya', 'Dobbs', '5864057817', NULL, NULL),
	(75, 'dorre.fiona@yahoo.com', NULL, NULL, 'February 16', NULL, NULL, 'Fiona', 'Dorre', '5868508218', NULL, NULL),
	(76, 'jacqueline.dove94@yahoo.com', NULL, NULL, NULL, NULL, NULL, 'Jacqueline', 'Dove', '2486007883', NULL, NULL),
	(77, 'jovannadove1@gmail.com', '117 West Washington St.', NULL, 'October 26', 'Romeo', 'US', 'Jovanna', 'Dove', '5864840044', 'MI', '48065'),
	(78, 'kimmie7967@yahoo.com', '13841 Breezy Dr', NULL, 'June 07', 'Sterling Heights', 'US', 'Kim', 'Dudde', '(586) 260-4039', 'MI', '48313-2811'),
	(79, 'jjduggan21@yahoo.com', '5256 Standish Dr.', NULL, 'June 21', 'Troy', 'US', 'Jacqueline', 'Duggan', '(248) 952-4745', 'MI', '48085'),
	(80, 'jennifer.duggan@yahoo.com', '5256 standish Dr.', NULL, 'April 25', 'Troy', 'US', 'Jennifer', 'Duggan', '2482254434', 'MI', '48085'),
	(81, 'maernest@wowway.com', '1387 Hartwig Dr', NULL, 'October 12', 'Troy', 'US', 'Ally', 'Earnest', '(734) 718-8441', 'MI', '48085'),
	(82, 'phdeason1@gmail.com', '14549 Vauxhall Drive', NULL, 'September 18', 'Sterling Heights', 'US', 'Phyllis', 'Eason', '3175228864', 'MI', '48313'),
	(83, '', '54806 Glen oaks drive', NULL, NULL, 'Shelby Twp', 'US', 'Luciana', 'Eberts', '(586) 801-8850', 'MI', '48315'),
	(84, 'mzconcorde@aol.com', '6722 Smith Creek Rd', NULL, 'July 24', 'Smith Creek', 'US', 'Tina', 'Edwards', '8108241467', 'MI', '48074'),
	(85, 'lumaaldulaimy_96@yahoo.com', NULL, NULL, NULL, NULL, NULL, 'Luma', 'Eflaih', '(586) 488-6771', NULL, NULL),
	(86, 'crystal.elizabeth@gmail.com', '208 Gwendolyn Blvd.', NULL, NULL, 'Milfurd', 'US', 'Crystal', 'Elizabeth', '2486671386', 'MI', '48381'),
	(87, 'benkatmama@yahoo.com', '8420 Tinkler Rd', NULL, 'November 18', 'Sterling Heights', 'US', 'Peggy', 'Essenmacher', '(586) 329-8720', 'MI', '48312'),
	(88, 'hope.feijoo@aol.com', '6 South Main St.', NULL, 'March 25', 'Clarkston', 'US', 'Hope', 'Feijoo', '248-535-6320', 'MI', '48346'),
	(89, '', NULL, NULL, NULL, NULL, NULL, 'Helen', 'Feyha Sister', NULL, NULL, NULL),
	(90, 'kfish@mullerfirm.com', '8091 Gerald Ave', NULL, 'November 09', 'Warren', 'US', 'Kim', 'Fisher', '(586) 350-6999', 'MI', '48093'),
	(91, 'fleury.rachel@gmail.com', '25357 Lord Dr.', NULL, NULL, 'Chesterfield', 'US', 'Rachel', 'Fleury', '5868716150', 'MI', '48051'),
	(92, 'yourgalsal@gmail.com', '7770 Powers Ct', NULL, 'October 08', 'Shelby Township', 'US', 'Sally', 'Floury', '(586) 604-7321', 'MI', '48317'),
	(93, '', '51307 Brushford', NULL, NULL, 'Chesterfield', 'US', 'Lynn', 'Fournier', '2482240588', 'MI', '48047'),
	(94, 'samantha.franz@yahoo.com', '19790 Woodward st', NULL, NULL, 'Clinton Twp', 'US', 'Samantha', 'Fran', '(586) 477-8216', 'MI', '48035'),
	(95, 'annefrancis_19@yahoo.com', '4401 Crooks Rd', NULL, 'September 19', 'Royal Oak', 'US', 'Anne', 'Francis', '2486876923', 'MI', '48073'),
	(96, 'kfrasard@live.com', '39323 Heatherheath', NULL, 'March 31', 'Clinton Twp', 'US', 'Karley', 'Frasard', '5864360232', 'MI', '48038'),
	(97, 'florentinefriedrich@gmail.com', '1737 W Warren', NULL, 'November 20', 'Detroit', 'US', 'Flo', 'Friedrich', '3134186002', 'MI', '48208'),
	(98, 'tg09163@gmail.com', '3900 Lancaster Pike', 'Apt B', NULL, 'Wilmington', 'US', 'Tania', 'Garcia', '(302) 513-6869', 'DE', '19805-1580'),
	(99, 'kgarner2008@gmail.com', '14415 Alpena Dr', NULL, 'July 02', 'Sterling Heights', 'US', 'Kathleen', 'Garner', '(586) 675-8480', 'MI', '48313'),
	(100, 'oktoberose@gmail.com', '1045 E. Woodward Heights', NULL, 'March 03', 'Hazel Park', 'US', 'Amerrah', 'Garrison', '3137589712', 'MI', '48030'),
	(101, 'mesiahgarrison@gmail.com', '17571 Cheerylawn', NULL, 'July 31', 'Detroit', 'US', 'Mesiah', 'Garrison', '3137533819', 'MI', '48227'),
	(102, 'smbeard89@gmail.com', NULL, NULL, NULL, NULL, NULL, 'Shannon', 'Gaw', NULL, NULL, NULL),
	(103, 'dailysurrender@yahoo.com', '37417 Sienna Oaks Dr', NULL, NULL, 'New Baltimore', 'US', 'Allison', 'Gay', '9372672431', 'MI', '48047-5506'),
	(104, '', NULL, NULL, 'June 17', NULL, NULL, 'Alivia', 'Gekiere', NULL, NULL, NULL),
	(105, 'charissag123@gmail.com', '23927 Elmira St', NULL, NULL, 'Saint Clair Shores', 'US', 'Charissa', 'Gerow', '5863608399', 'MI', '48082-2190'),
	(106, 'alanagibbons40@gmail.com', '192 W Grand', NULL, 'June 28', 'Highland Park', 'US', 'Tealana', 'Gibbons', '3135564441', 'MI', NULL),
	(107, 'leeanngirard@gmail.com', '13897 Bowling Green Dr', NULL, NULL, 'Sterling Heights', 'US', 'Lee Ann', 'Girard', '(810) 304-9011', 'MI', '48313-3511'),
	(108, '', '8110 Gage Crescent', NULL, 'March 12', 'Sterling Heights', 'US', 'Cheryl', 'Girard', NULL, 'MI', '48312'),
	(109, '', '54222 Surfside Dr', NULL, NULL, 'Shelby Twp', 'US', 'Buck', 'Goodnow', '(586) 337-9511', 'MI', '48316'),
	(110, 'meg52260@yahoo.com', '22520 Garfield St.', NULL, NULL, 'SCS', 'US', 'Mary', 'Goodrich', '2482516658', 'MI', '48082'),
	(111, 'jennalyn512@yahoo.com', '8436 New Bradford Blvd.', NULL, 'May 12', 'Sterling Heights', 'US', 'Jenna', 'Grab', '(586) 604-6607', 'MI', '48312'),
	(112, 'grabinski.alyssa@yahoo.com', '21744 Hancock St', NULL, NULL, 'Farmington Hills', 'US', 'Alyssa', 'Grabinski', '2484429782', 'MI', '48336-5718'),
	(113, 'phdeason1@gmail.com', '40100 Dodge Park Rd', NULL, NULL, 'Sterling Heights', 'US', 'Embrace', 'Grace', '(317) 522-8864', 'MI', '48313'),
	(114, 'aquacancer79@gmail.com', '3110 Allen St', NULL, 'February 05', 'Inkster', 'US', 'Stefanie', 'Graham', '(313) 610-3458', 'MI', '48141'),
	(115, 'hadashag@live.com', '12616 Longview', NULL, 'July 20', 'Detroit', 'US', 'Hadasha', 'Green', '3136739791', 'MI', '48213'),
	(116, 'monetgreen88@gmail.com', '15750 Auburn', NULL, NULL, 'Detriot', 'US', 'Monet', 'Green', '3138541970', 'MI', '48223'),
	(117, '', '53104 Providence Dr', NULL, NULL, 'Shelby Township', 'US', 'Jodie', 'Grocki', NULL, 'MI', '48316-2609'),
	(118, 'grunewaldv@gmail.com', '8279 Berville', NULL, NULL, 'Berlin', 'US', 'Vicki', 'Grunewald', '5865311583', 'MI', '48002'),
	(119, 'denise.guitar@yahoo.com', '670 Sargent Creek Ct', NULL, 'May 21', 'Rochester Hills', 'US', 'Denise M', 'Guitar', '(586) 484-5332', 'MI', '48309'),
	(120, 'deniseguitar7126@mail.com', '1369 Alameda Dr', NULL, NULL, 'Spring Hill', 'US', 'Denise', 'Guitar', '(813) 376-2982', 'FL', '34609-5708'),
	(121, 'joey.adofitness@gmail.com', '1207 S Lafayette Ave', NULL, NULL, 'Royal Oak', 'US', 'Joey', 'Guz', '5866182568', 'MI', '480673132'),
	(122, '', NULL, NULL, NULL, NULL, NULL, 'Danielle', 'Hairdresser At Wedding', NULL, NULL, NULL),
	(123, 'hakeemvira@yahoo.com', '912 Sherwood Ct', NULL, 'March 13', 'Rochester Hills', 'US', 'Vira', 'Hakeem', '2486628806', 'MI', '48307'),
	(124, 'dmhmd53@gmail.com', '17235 Gulf Dr', NULL, NULL, 'Clinton Twp.', 'US', 'Dorothy', 'Halperin', NULL, 'MI', '48038'),
	(125, 'ashleyhammel10@aol.com', '8520 San Marco', NULL, NULL, 'Sterling Heights', 'US', 'Ashley', 'Hammel', '5864200902', 'MI', '48313'),
	(126, 'cyrstenhammer@yahoo.com', NULL, NULL, NULL, NULL, NULL, 'Cyrsten', 'Hammer', '5863374119', NULL, NULL),
	(127, 'elizabethhansen9@gmail.com', '19316 Briarwood Ln', NULL, NULL, 'Clinton Twp', 'US', 'Elizabeth', 'Hansen', '5862466096', 'MI', '48036-2121'),
	(128, 'kathyahart81@gmail.com', '1553 Manton Blvd', NULL, NULL, 'Canton', 'US', 'Kathy', 'Hart', '(586) 453-9159', 'MI', '48187-3487'),
	(129, 'harts7289@sbcglobal.net', NULL, NULL, NULL, NULL, NULL, 'Theresa', 'Hart', '5864843903', NULL, NULL),
	(130, 'hasallab@yahoo.com', NULL, NULL, 'July 23', NULL, NULL, 'Besmira', 'Hasalla', '5868644430', NULL, NULL),
	(131, 'taralhawks@yahoo.com', '19789 Macel', NULL, NULL, 'Roseville', 'US', 'Tara', 'Hawks', '586-306-5129', 'MI', '48066'),
	(132, 'brookelynnherrera@yahoo.com', NULL, NULL, NULL, NULL, NULL, 'Brooke', 'Herrera', '5867184137', NULL, NULL),
	(133, 'jessicaal.christian7@gmail.com', NULL, NULL, NULL, NULL, NULL, 'Jessica', 'Hill', '(313) 704-4735', NULL, NULL),
	(134, 'ladysp703@yahoo.com', '10881 Peerless', NULL, NULL, 'Detroit', 'US', 'Sharonda', 'Hill', '3132822366', 'MI', NULL),
	(135, 'miraholmes74@gmail.com', '8180 Bliss St', NULL, 'October 01', 'Detroit', 'US', 'Kamira', 'Holmes', '(586) 738-8320', 'MI', '48234'),
	(136, 'shanishaholmes241@gmail.com', '24775 Glouchester St', '110', 'July 19', 'Harrison Township', 'US', 'Shanisha', 'Holmes', '(734) 596-9272', 'MI', '48045'),
	(137, 'karenhughes393@gmail.com', '21825 Rosedale', NULL, NULL, 'St. Clair Shores', 'US', 'Karen', 'Hughes', '5869435173', 'MI', '48080'),
	(138, 'breannahughes76@gmail.com', '29260 Jane', NULL, 'August 22', 'Saint Clair Shores', 'US', 'Breanna', 'Hughes', '3135957573', 'MI', '48081'),
	(139, 'sarah.hughes90@hotmail.com', NULL, NULL, NULL, NULL, NULL, 'Sarah', 'Huyghes', '5869333762', NULL, NULL),
	(140, 'la2detroit@sbcglobal.net', '46730 Landings Dr', NULL, NULL, 'Macomb', 'US', 'Narmeen', 'Ibri', '5866341424', 'MI', '48044'),
	(141, 'beccajack91@gmail.com', '53800 North Foster', NULL, 'March 17', 'Chesterfield', 'US', 'Rebecca', 'Jackson', '5864229096', 'MI', '48051'),
	(142, 'tburk085@gmail.com', '39484 Farmhill Dr', NULL, 'October 23', 'Sterling Hts', 'US', 'Tiffany', 'Jacobson', '5868547922', 'MI', '48313-5061'),
	(143, 'd.jacquemotte@yahoo.com', '42407 Cannon Dr', NULL, 'October 22', 'Sterling Hts', 'US', 'Amy', 'Jacquemotte', '5869446350', 'MI', '48313-2616'),
	(144, 'floenama@msu.edu', '21706 Indian St', NULL, 'January 04', 'Southfield', 'US', 'Amanda', 'James', '2483769127', 'MI', '48033-5017'),
	(145, 'd2josevski@yahoo.com', '22603 Timbercrest', NULL, NULL, 'Macomb', 'US', 'Deana', 'Janceski', '(586) 604-9679', 'MI', '48044'),
	(146, 'jennifer.jedrzejek@gmail.com', NULL, NULL, NULL, NULL, NULL, 'Jennifer', 'Jedrzejek', '2484215362', NULL, NULL),
	(147, 'ashleyjenkins2784@gmail.com', '39731Parklawn', NULL, NULL, 'Sterling Heights', 'US', 'Ashley', 'Jenkins', '5867384110', 'MI', '48313'),
	(148, 'cryjenk67@gmail.com', '2235 Belvidere', '7 South', NULL, 'Detroit', 'US', 'Crystal', 'Jenkins', '3136819199', 'MI', '48214'),
	(149, 'kathryn.jiles@yahoo.com', '42111 Mac Rae Drive', NULL, 'September 10', 'Sterling Heights', 'US', 'Kate', 'Jiles', '5866042489', 'MI', '48313'),
	(150, 'mjohnson5473@gmail.com', '41936 Stanberry Dr', NULL, NULL, 'Sterling Heights', 'US', 'Martha', 'Johnson', '5866152686', 'MI', '48313-2505'),
	(151, 'vjbugg1961@yahoo.com', '45809 Custer Ave', NULL, 'August 31', 'Utica', 'US', 'Vicky', 'Johnson', '(586) 531-5206', 'MI', '48317'),
	(152, 'fa9649@wayne.edu', '1261 dacross trail', NULL, 'October 07', 'Oxford', 'US', 'Chelsea', 'Johnson', '(419) 512-6305', 'MI', '48371'),
	(153, 'buttse@gmail.com', '12689 Bender', NULL, 'November 12', 'Sterling Heights', 'US', 'Erica', 'Johnson', '(248) 403-4527', 'MI', '48313'),
	(154, 'rtjrules1984@hotmail.com', '44862 Pine Dr', NULL, 'August 02', 'Sterling Heights', 'US', 'Tiffany', 'Johnson', '(586) 615-7884', 'MI', '48313'),
	(155, 'tiairarjohnson@gmail.com', '12218 Rosemary', NULL, 'September 29', 'Detroit', 'US', 'Tiaira', 'Johnson', '3137687851', 'MI', '48213'),
	(156, 'kjjohnson265@yahoo.com', '25665 Joanne Smith Dr', 'Unit 37', NULL, 'Warren', 'US', 'KATHY', 'JOHNSON', '3137293166', 'MI', '48091-6511'),
	(157, 'jamie.selleck@gmail.com', '41849 Coulon Dr', NULL, 'January 01', 'Clinton Twp', 'US', 'Jamie', 'Jones', '8102780522', 'MI', '48038-2227'),
	(158, 'jcarpenter481@hotmail.com', '51314 Brushford', NULL, 'October 11', 'Chesterfield', 'US', 'Jen', 'Jones', '5867644165', 'MI', '48047'),
	(159, 'lindseyjones0597@gmail.com', '11934 Stamford', NULL, 'September 30', 'Warren', 'US', 'Lindsey', 'Jones', '(586) 625-7531', 'MI', '48089'),
	(160, 'ymossjones@yahoo.com', '21670 Church St', NULL, NULL, 'Oak Park', 'US', 'Yevette', 'Jones', '2487036791', 'MI', '48237-2602'),
	(161, 'phillisjudkins238@gmail.com', '276 King Street', NULL, 'February 26', 'Detroit', 'US', 'Phillis', 'Judkins', '3138151440', 'MI', '48202'),
	(162, 'al2jul@yahoo.com', '6208 Hickory Ln', NULL, NULL, 'Washington', 'US', 'Alexandra', 'Julian', '5869433158', 'MI', '48094-2736'),
	(163, 'fa4533@wayne.edu', '27244 Wilson', NULL, 'August 31', 'Dearborn Heights', 'US', 'Kaylyn', 'Kabacinski', '3135804317', 'MI', '48127'),
	(164, 'moorel@mail.gvsu.edu', '2012 Wisconsin St.', '3', NULL, 'Midland', 'US', 'Donna', 'Kalligeros', NULL, 'MI', '48642'),
	(165, 'kbkambeitz@gmail.com', '54354 Jeffery Dr.', NULL, 'March 12', 'Macomb', 'US', 'Kayla', 'Kambeitz', '5868395838', 'MI', '48042'),
	(166, 'staceykautz@hotmail.com', NULL, NULL, NULL, NULL, NULL, 'Stacey', 'Kautz', NULL, NULL, NULL),
	(167, 'elikav@gmail.com', '42329 Niagara', NULL, 'April 16', 'Sterling Heights', 'US', 'Beth', 'Kavanagh', '5863219676', 'MI', '48313'),
	(168, 'kerina1880@gmail.com', NULL, NULL, NULL, NULL, NULL, 'Angela', 'Kerin', '5867133301', NULL, NULL),
	(169, '', '35837 Marina Drive', NULL, NULL, 'Sterling Heights', 'US', 'Claudia', 'Kerr', NULL, 'MI', '48312'),
	(170, 'fv3578@wayne.edu', '11978 Lennry Ave', NULL, 'June 27', 'Shelby Twp', 'US', 'Kathleen', 'Keyes', '5862194438', 'MI', '48315'),
	(171, 'kkeyes5@comcast.net', '11978 Lennry', NULL, 'June 29', 'Shelby Twp', 'US', 'Renee', 'Keyes', '5869942313', 'MI', '48315'),
	(172, 'jkidd0808@gmail.com', '40209 Spitz Dr', NULL, 'January 15', 'Sterling Hts', 'US', 'Jessica', 'Kidd', NULL, 'MI', '48313'),
	(173, '', '6021 Higgins', NULL, 'January 02', 'Sterling Heights', 'US', 'Sophie', 'Kidd', '5862542592', 'MI', '48314'),
	(174, 'lakidaking@yahoo.com', NULL, NULL, NULL, NULL, NULL, 'Lakida', 'King', '3138089964', NULL, NULL),
	(175, 'kirkw03@gmail.com', '2821 Arrowwood ct', NULL, 'November 29', 'Sterling Heights', 'US', 'Wendy', 'Kirk', NULL, 'MI', '48314'),
	(176, 'tatumklebba@yahoo.com', NULL, NULL, NULL, NULL, NULL, 'Tatum', 'Klebba', '5867377274', NULL, NULL),
	(177, 'stacey6613@yahoo.com', '42338 Hanks Ln', NULL, 'July 12', 'Sterling Heights', 'US', 'Stacey', 'Kline', '5866301789', 'MI', '48314'),
	(178, '', '31635 Eveningside Dr.', NULL, NULL, 'Fraser', 'US', 'Linda', 'Kluck', NULL, 'MI', '48026'),
	(179, 'clairejk@umich.edu', '21932 Arbor Ln', NULL, NULL, 'Novi', 'US', 'Claire', 'Koehler', '2486976030', 'MI', '48375-5169'),
	(180, 'alyssakolanowski820@gmail.com', NULL, NULL, NULL, NULL, NULL, 'Alyssa', 'Kolanowski', '5869432474', NULL, NULL),
	(181, 'shelbykosmalski@yahoo.com', NULL, NULL, NULL, NULL, NULL, 'Shelby', 'Kosmalski', NULL, NULL, NULL),
	(182, 'jnjkubiak@gmail.com', '51272 Brushford Dr.', NULL, NULL, 'Chesterfield', 'US', 'Janet', 'Kubiak', '5866018101', 'MI', '48047'),
	(183, 'browneyedgail52@hotmail.com', '28636 Aline', NULL, 'August 05', 'Warren', 'US', 'Gail', 'Laabs', '5862911201', 'MI', '48093'),
	(184, 'shannonmarieee4820@icloud.com', NULL, NULL, NULL, NULL, NULL, 'Shannon', 'Lafave', '5869458275', NULL, NULL),
	(185, 'ljtaillefer17@gmail.com', '21821 Alger', NULL, NULL, 'Saint Clair Shores', 'US', 'Lindsay', 'LaPonse', '5865496659', 'MI', '48080'),
	(186, 'gallant.marina14@gmail.com', '12850 Daily Dr', NULL, NULL, 'Sterling Heights', 'US', 'Marina', 'Larocque', '(586) 522-5652', 'MI', '48312'),
	(187, 'dianelepere@yahoo.com', '36284 Pamala', NULL, 'August 24', 'Clinton Twp', 'US', 'Diane', 'Lepere', '(586) 651-0503', 'MI', '48035'),
	(188, 'hlesniak96@yahoo.com', '7627 Flickinger Dr', NULL, NULL, 'Shelby Twp', 'US', 'Heather', 'Lesniak', '5868737762', 'MI', '48317'),
	(189, 'meganlesniak93@gmail.com', '69 Bobolink St', NULL, 'August 27', 'Rochester', 'US', 'Megan', 'Lesniak', '5868388274', 'MI', '48309'),
	(190, 'janehannah306@yahoo.com', '11967 Diehl Dr.', NULL, 'March 06', 'Sterling Heights', 'US', 'Hannah', 'Liepshutz', '(586) 909-4304', 'MI', '48313'),
	(191, 'lis_claire@yahoo.com', '303 broomshear circle', NULL, 'August 23', 'Auburn hills', 'US', 'Claire', 'Lis', '586-549-0889', 'MI', '48332'),
	(192, '', NULL, NULL, NULL, NULL, NULL, 'Raeann', 'Longtine', NULL, NULL, NULL),
	(193, 'haileykmarcelain@gmail.com', '13769 Melva drive', NULL, 'June 12', 'Warren', 'US', 'Hailey', 'Lowery', '(586) 623-0374', 'MI', '48088'),
	(194, 'kaydeeluce0801@gmail.com', '43489 Bordeaux', NULL, NULL, 'Sterling Heights', 'US', 'Katherne', 'Luce', '5862449931', 'MI', '48314'),
	(195, 'amandalucia57@yahoo.com', NULL, NULL, NULL, NULL, NULL, 'Amanda', 'Lucia', '5865040908', NULL, NULL),
	(196, 'chrissylusk@gmail.com', '37294 Forestview Ct.', NULL, NULL, 'Cliton Twp', 'US', 'Christine', 'Lusk', '(586) 549-1582', 'MI', '48036'),
	(197, 'hailiegrace815@yahoo.com', '4198 Tristen Ave', NULL, NULL, 'Fort Gratiot', 'US', 'Raven', 'Mahood', '5867446277', 'MI', '48059'),
	(198, 'jamie9904@live.com', '11116 Lisa Ln', NULL, NULL, 'Shelby Township', 'US', 'Jamie', 'Manarcle', NULL, 'MI', '48316-3789'),
	(199, '', '32001 W Brampton St', NULL, NULL, 'New Haven', 'US', 'Brittany', 'Marchetti', NULL, 'MI', '48048-1977'),
	(200, 'kandicemarchio@yahoo.com', '25415 Gunston', NULL, 'June 08', 'Warren', 'US', 'Kandice', 'Marchio', '2483076886', 'MI', '48089'),
	(201, 'amarchio558@gmail.com', '28325 Elmdale', NULL, 'October 11', 'Saint Clair Shores', 'US', 'Ashley', 'Marchio', '5868711956', 'MI', '48081'),
	(202, 'funnymonkeys72@yahoo.com', NULL, NULL, NULL, NULL, NULL, 'Kourtni', 'Marie', '8105432707', NULL, NULL),
	(203, 'neilla000@hotmail.com', '8537 San Marco Blvd', NULL, NULL, 'Sterling Heights', 'US', 'Neilla', 'Marinello', '5862166629', 'MI', '48313-4857'),
	(204, 'kkliz514@yahoo.com', '42346 Gainsley Dr.', NULL, 'May 14', 'Sterling Heights', 'US', 'Kaitlyn', 'Marquette', '5868547292', 'MI', '48313'),
	(205, 'robinrm329@comcast.net', '18046 Riopelle St', NULL, 'March 29', 'Detroit', 'US', 'Robin', 'Martin', '3134151680', 'MI', '48203-2479'),
	(206, '', '39115 Chantilly', NULL, NULL, 'Sterling Heights', 'US', 'Noelle', 'Maude', NULL, 'MI', '48313'),
	(207, 'karlyschumann@yahoo.com', '15981 Cherry Dr.', NULL, 'November 05', 'Clinton Twp.', 'US', 'Karly', 'McCallum', '5863608231', 'MI', '48038'),
	(208, 'mom-of4boys@hotmail.com', '36719 Lanigan', NULL, 'July 09', 'Sterling Heights', 'US', 'Karen', 'McClellan', '(586) 246-6710', 'MI', '48313'),
	(209, 'soulstrong@att.net', '5280 Fleming Rd', NULL, NULL, 'Fowlerville', 'US', 'Laura', 'McComb', NULL, 'MI', '48836-9549'),
	(210, 'mcconnpj@gmail.com', '4356 Gardner', NULL, 'January 29', 'Sterling Heights', 'US', 'Paula', 'McConnell', '5864810124', 'MI', '48310'),
	(211, 'shay-1994@hotmail.com', NULL, NULL, NULL, NULL, NULL, 'Shalanda', 'Mceachron', '2488942196', NULL, NULL),
	(212, 'senoraloca28@yahoo.com', '43813 Calle Balmez', NULL, NULL, 'Temecula', 'US', 'Heather', 'McGinn', '(248) 514-9639', 'CA', '92592-3977'),
	(213, '74becky@live.com', '5707 Sutters Lane', NULL, 'February 14', 'Bloomfield Hills', 'US', 'Becky', 'McKeever', '2483316539', 'MI', '48301'),
	(214, 'serenity3520@yahoo.com', NULL, NULL, NULL, NULL, NULL, 'Jeanne', 'McQuade', '5862152141', NULL, NULL),
	(215, 'jenmelitz@gmail.com', '41348 Estate Dr', NULL, NULL, 'Sterling Heights', 'US', 'Jennifer', 'Melitz', '(248) 330-0301', 'MI', '48313'),
	(216, 'nicoles2610@gmail.com', '8427 New Bradford Blvd.', NULL, 'November 07', 'Sterling Heights', 'US', 'Nicole', 'Miller', '(586) 846-0428', 'MI', '48312'),
	(217, 'libbytomsha@gmail.com', '46217 Worlington', NULL, NULL, 'Macomb', 'US', 'Libby', 'Miller', '5865336797', 'MI', '48044'),
	(218, 'anitagrandall@yahoo.com', '51295 Brushford Dr', NULL, NULL, 'Chesterfield', 'US', 'Anita', 'Mills', NULL, 'MI', '48047-3175'),
	(219, '', NULL, NULL, NULL, NULL, NULL, 'Satin Hands', 'Mini', '(810) 304-9011', NULL, NULL),
	(220, '', NULL, NULL, NULL, NULL, NULL, 'Skin Care', 'Mini Set', '(810) 304-9011', NULL, NULL),
	(221, 'ka8ieo@gmail.com', '11741 Sullivan Rd.', NULL, NULL, 'Emmett', 'US', 'Mary', 'Minnis', '810-300-4935', 'MI', '48022'),
	(222, '', NULL, NULL, NULL, NULL, NULL, 'Dana', 'Moldovan', NULL, NULL, NULL),
	(223, 'morgan83.mm@gmail.com', '41226 Marjoran Dr', NULL, NULL, 'Sterling Heights', 'US', 'Melissa', 'Morgan', NULL, 'MI', '48314-3929'),
	(224, 'jbfp06@att.net', '14424 Vauxhall Drive', '55', 'December 20', 'Sterling Heights', 'US', 'Becky', 'Mulholland', '(586) 488-9703', 'MI', '48313'),
	(225, 'samanthanassar15@gmail.com', NULL, NULL, NULL, NULL, NULL, 'Samantha', 'Nassar', '5862123603', NULL, NULL),
	(226, 'neely.kelsey@gmail.com', '1530 Havard Rd', NULL, NULL, 'Berkley', 'US', 'Kelsey', 'Neely', '7349685608', 'MI', '48072'),
	(227, 'aanelson913@yahoo.com', '1704 Highview', NULL, NULL, 'Dearborn', 'US', 'Annie', 'Nelson', '3133303159', 'MI', '48128'),
	(228, 'kkay0505@gmail.com', '39457 Kingsbury', NULL, 'May 05', 'Sterling Heights', 'US', 'Kimberly', 'Nencacrow', '6086580832', 'MI', '48313'),
	(229, 'centralgirlz2005@aol.com', NULL, NULL, NULL, NULL, NULL, 'Jessica', 'Nicolia', '5865316752', NULL, NULL),
	(230, '', '43806 Rushcliffe Dr', NULL, NULL, 'Sterling Heights', 'US', 'Laura', 'Noriega', '(586) 212-1391', 'MI', '48313'),
	(231, 'mellimel917@msn.com', '13351 Balfour Dr', NULL, NULL, 'Warren', 'US', 'Melanie', 'Oprita', '5863356602', 'MI', '480884787'),
	(232, 'jessica_polly_89@hotmail.com', '11223 Bryce Rd.', NULL, 'October 17', 'Emmett', 'US', 'Jessy', 'Orrell', '8103578423', 'MI', '48022'),
	(233, 'overholsertracy@yahoo.com', '41134 Harvard Dr', NULL, 'June 25', 'Sterling Heights', 'US', 'Tracy', 'Overholser', '(586) 322-6742', 'MI', '48313'),
	(234, 'victoriapacesoprano@gmail.com', '17482 Goldeneye Dr', NULL, NULL, 'Clinton Township', 'US', 'Victoria', 'Pace', '5867478631', 'MI', '480381191'),
	(235, 'jessicagerow@yahoo.com', '19132 Gearhart Dr', NULL, NULL, 'Macomb', 'US', 'Jessica', 'Pannett', '5867195410', 'MI', '480426237'),
	(236, '', '8439 New Bradford', NULL, 'January 30', 'Sterling Heights', 'US', 'Robin', 'Parkinson', '5863065445', 'MI', '48313'),
	(237, 'leanna.parry94@gmail.com', '7780 Heyden St', NULL, NULL, 'Detroit', 'US', 'Leanna', 'Parry', '3139481664', 'MI', '48228-3280'),
	(238, 'cpaton33@wideopenwest.com', '25355 Pattow St', NULL, 'May 05', 'Roseville', 'US', 'Christine', 'Paton', '(586) 219-3944', 'MI', '48066'),
	(239, 'cassspaton@yahoo.com', '17330 Martin Rd', NULL, 'November 22', 'Roseville', 'US', 'Cassandra', 'Paton', '5862027207', 'MI', '48066-2844'),
	(240, 'rileynemma@yahoo.com', '38183 Brook Dr.', NULL, NULL, 'Sterling Heights', 'US', 'Ann', 'Payne', NULL, 'MI', '48312'),
	(241, 'dommiegirlll@gmail.com', NULL, NULL, NULL, NULL, NULL, 'Dominique', 'Pearcy', '8105809988', NULL, NULL),
	(242, 'bnpellerito@aol.com', '8597 San Marco Blvd', NULL, 'March 16', 'Sterling Heights', 'US', 'Nicole', 'Pellerito', '(586) 453-3768', 'MI', '48313'),
	(243, 'pennazoli2@aol.com', '38764 Covington Dr', NULL, 'January 14', 'Sterling Heights', 'US', 'Deanne', 'Pennazoli', '5869428444', 'MI', '48312-1312'),
	(244, 'peoples.erin95@yahoo.com', '628 Chalmers', NULL, NULL, 'Detroit', 'US', 'Erin', 'Peoples', '3237994923', 'MI', '48215'),
	(245, 'hboosh@yahoo.com', '40469 Long Horn Dr', NULL, NULL, 'Sterling Heights', 'US', 'Heather', 'Perry', '(586) 202-4611', 'MI', '48313-4217'),
	(246, 'jeannepeterson66@gmail.com', '4385 Haver Hill', NULL, 'February 12', 'Detroit', 'US', 'Jeanne', 'Peterson', '7342176991', 'MI', '48044'),
	(247, 'quinsha73@gmail.com', '4385 Haverhill', NULL, NULL, 'Detriot', 'US', 'Quinsha', 'Peterson', '3139485927', 'MI', '48224'),
	(248, 'miyamar09@gmail.com', '2195 Eastlawn St.', NULL, NULL, 'Detriot', 'US', 'Evelyn', 'Peterson', '5868238663', 'MI', '48215'),
	(249, 'nitap313@gmail.com', '8297 E Brentwood St', NULL, NULL, 'Detroit', 'US', 'Juanita', 'Pettway', '3138281135', 'MI', '48234-3633'),
	(250, 'pettwayjoann@yahoo.com', '20239 Riopelle St', NULL, NULL, 'Detroit', 'US', 'Jo Ann', 'Pettway', '3137150121', 'MI', '48203-1251'),
	(251, 'kristen@pignanelli.net', '8526 Lillian Dr', NULL, NULL, 'Washington', 'US', 'Kristen', 'Pignanelli', NULL, 'MI', '48094-3843'),
	(252, '', '5230 Croton Dr.', NULL, 'June 24', 'Sterling Heights', 'US', 'Deborah', 'Pinkerton', '(586) 214-5109', 'MI', '48310'),
	(253, 'jeaninep6190@gmail.com', '24789 St Paul', NULL, 'December 27', 'Harrison Twp', 'US', 'Jeanine', 'Piotrowski', '(586) 610-0576', 'MI', '48045'),
	(254, 'pipes_dayna@hotmail.com', '506 Plum Ct', NULL, 'September 24', 'Romeo', 'US', 'Dayna', 'Pipes', '5864539041', 'MI', '48065'),
	(255, 'pip3s_jessica@yahoo.com', '45326 Pierre Dr', NULL, NULL, 'Macomb Twp', 'US', 'Jessica', 'Pipes', '5862414568', 'MI', '48044'),
	(256, 'sonya.plummer28@gmail.com', '16014 Flanagan St', NULL, NULL, 'Roseville', 'US', 'Sonya', 'Plummer', '3132080489', 'MI', '48066-1445'),
	(257, 'breannakayepodschwit@yahoo.com', '46788 Peach Grove Ave', NULL, 'June 27', 'Macomb', 'US', 'Breanna', 'Podschwit', '8103101448', 'MI', '48044'),
	(258, 'lynn.potts@icloud.com', '4134 Nathan W', NULL, NULL, 'Sterling Heights', 'US', 'Lynn', 'Potts', '(586) 980-4517', 'MI', '48310-2689'),
	(259, '', '4134 Nathan West', NULL, NULL, 'Sterling Heights', 'US', 'Lynn', 'Potts', NULL, 'MI', '48310'),
	(260, 'tracy@mullerfirm.com', NULL, NULL, NULL, NULL, NULL, 'Tracy', 'Poturica', '5869328071', NULL, NULL),
	(261, 'kierap96@yahoo.com', NULL, NULL, 'November 20', NULL, NULL, 'Kiera', 'Powell', '3137402538', NULL, NULL),
	(262, '', '13845 Harbour Ct', NULL, NULL, 'Sterling Heights', 'US', 'Nakia', 'Powell-Thomas', '(313) 613-4163', 'MI', '48312'),
	(263, 'proctor.keely@gmail.com', NULL, NULL, NULL, NULL, NULL, 'Keely', 'Proctor', '2483428982', NULL, NULL),
	(264, 'sharmip@icloud.com', '2417 Casmere St.', NULL, 'January 31', NULL, 'US', 'Sharmi', 'Purkayestha', '3132343278', NULL, NULL),
	(265, '', NULL, NULL, NULL, NULL, NULL, 'MAKEUP', 'QUICK', '(810) 304-9011', NULL, NULL),
	(266, 'randallineup@yahoo.com', '4320 Sandy Creek Dr', NULL, NULL, 'Shelby Twp', 'US', 'Marion', 'Randall', '(586) 242-9884', 'MI', '48316-3079'),
	(267, 'marissa1698@gmail.com', '36465 Edinborough Ct', NULL, NULL, 'Farmington Hills', 'US', 'Marissa', 'Rasak', '2487948147', 'MI', '48335-5496'),
	(268, '', '26201 Marlene St', NULL, NULL, 'Roseville', 'US', 'Andrea', 'Reed', '3132121221', 'MI', '48066'),
	(269, '', NULL, NULL, NULL, NULL, 'US', 'Debbie', 'Renner', NULL, 'MI', NULL),
	(270, '', '21350 33 Mile Rd', NULL, NULL, 'Armada', 'US', 'Lindsey', 'Renner', NULL, 'MI', '48005-3700'),
	(271, '', NULL, NULL, NULL, NULL, NULL, 'Yazmin', 'Renta', '(586) 651-7063', NULL, NULL),
	(272, '', '13054 Winona Dr', NULL, NULL, 'Sterling Heights', 'US', 'Rachel', 'Rice', NULL, 'MI', '48312-1554'),
	(273, 'stefanie_ridlon1@yahoo.com', '37076 Yorkshire Dr', NULL, NULL, 'Sterling Heights', 'US', 'Stefanie', 'Ridlon', '5868733990', 'MI', '48312-2492'),
	(274, 'barbriffenburg@gmail.com', '3730 Lapeer Rd', 'Lot 71', NULL, 'Port Huron', 'US', 'Barbara', 'Riffenburg', NULL, 'MI', '48060-4505'),
	(275, 'mcrohe@yahoo.com', '14341 Lacavera Dr', NULL, NULL, 'Sterling Heights', 'US', 'Malisa', 'Rohe', '5868636784', 'MI', '48313-5444'),
	(276, '', '16820 27 Mile Rd', NULL, NULL, 'Ray', 'US', 'Irene', 'Rohlfing', NULL, 'MI', '48096-3556'),
	(277, 'karucinski@comcast.net', '2546 Townhill', NULL, NULL, 'Troy', 'US', 'Kara', 'Rucinski', '2487362819', 'MI', '48084'),
	(278, 'lilasaba1@gmail.com', '42570 North Pointe Ct.', NULL, 'July 25', 'Clinton Twp.', 'US', 'Lila', 'Saba', '5866344840', 'MI', '48036'),
	(279, 'kiley.sakofske@gmail.com', '32940 Heft Ct.', NULL, 'October 13', 'Warren', 'US', 'Kiley', 'Sakofske', '7343531813', 'MI', '48093'),
	(280, 'ruclucy@gmail.com', NULL, NULL, NULL, NULL, NULL, 'Pink WEEK', 'Sample ORDER', NULL, NULL, NULL),
	(281, 'kyradunn16@yahoo.com', NULL, NULL, NULL, NULL, NULL, 'Kyra', 'Saxton', '5862295974', NULL, NULL),
	(282, '', NULL, NULL, NULL, NULL, NULL, 'Jodi', 'Schneider', '(586) 675-1019', NULL, NULL),
	(283, 'gabriellebschofield@gmail.com', '34175 Blaire Ave.', NULL, NULL, 'Chesterfield', 'US', 'Gabrielle', 'Schofield', '5869942242', 'MI', '48047'),
	(284, 'aschohl@hotmail.com', '32137 Crestwood', NULL, 'March 04', 'Fraser', 'US', 'Amelia', 'Schohl', '5862067859', 'MI', '48026'),
	(285, '', '53672 Poinsetta Dr', NULL, NULL, 'Macomb', 'US', 'Tiffany', 'Scholten', '5865303976', 'MI', '48042'),
	(286, 'esciacchitano@gmail.com', '38478 San Valleluce Dr', NULL, NULL, 'Sterling heights', 'US', 'Elizabeth', 'Sciacchitano', NULL, 'MI', '48312'),
	(287, 'lakitasegar@yahoo.com', NULL, NULL, NULL, NULL, NULL, 'Lakita', 'Segar', '7066220294', NULL, NULL),
	(288, 'jodimseizi@gmail.com', '23927 Elmira St.', NULL, 'October 18', 'Saint Clair Shores', 'US', 'Jodi', 'Seizinger', '(586) 804-2471', 'MI', '48082'),
	(289, 'jasemanco@comcast.net', NULL, NULL, NULL, NULL, NULL, 'Jill', 'Semanco', '5868999926', NULL, NULL),
	(290, 'mikkishea@gmail.com', '8980 Suncrest Dr', NULL, NULL, 'Sterling Heights', 'US', 'Michele', 'Shea', '5862153652', 'MI', '48314'),
	(291, 'silverthornlarissa@yahoo.com', '3628 Rabidue Rd', NULL, 'July 10', 'North Street', 'US', 'Larissa', 'Silverthorn', '8103340242', 'MI', '48049'),
	(292, 'nkidd04@yahoo.com', '41359 Olivet Dr', NULL, NULL, 'Sterling Heights', 'US', 'Nancy', 'Simone', NULL, 'MI', '48313-4358'),
	(293, '', '41359 Olivet', NULL, 'August 27', 'Sterling Heights', 'US', 'Nancy', 'Simone', '5868736183', 'MI', '48313'),
	(294, 'emilyruth0414@gmail.com', '5849 N. Gregory', NULL, NULL, 'Fowlerville', 'US', 'Emily', 'Smallwood', '5175181317', 'MI', '48836'),
	(295, 'dhsmith98@hotmail.com', '49823 Yale Dr', NULL, NULL, 'Macomb', 'US', 'Heather', 'Smith', NULL, 'MI', '48044-1782'),
	(296, '', '49823 Yale Dr', NULL, NULL, 'Macomb', 'US', 'Heather', 'Smith', '+1 (586) 412-4698', 'MI', '48044'),
	(297, 'courtneysneddon@aol.com', NULL, NULL, NULL, NULL, NULL, 'Courtney', 'Sneddon', '5868793374', NULL, NULL),
	(298, 'ss97928@gmail.com', '1325 Greythorne Dr.', NULL, 'July 27', 'Lake Orion', 'US', 'Soha', 'Sohail', '2487953331', 'MI', '48359'),
	(299, 'peggysomerville@yahoo.com', '15411 Cornell Dr', NULL, 'June 29', 'Clinton Twp', 'US', 'Peggy', 'Somerville', '5863541937', 'MI', '48038-1097'),
	(300, 'ssparrowa@gmail.com', '27347 Fairfield Dr', NULL, NULL, 'Warren', 'US', 'Shannon', 'Sparrow', NULL, 'MI', '48088-4762'),
	(301, 'cspear24@yahoo.com', NULL, NULL, NULL, NULL, NULL, 'Carissa', 'Spear', '8104347840', NULL, NULL),
	(302, 'rmsj@sbcglobal.net', '39467 Chart st', NULL, 'April 15', 'Harrison Twp', 'US', 'Becky', 'St John', '(586) 242-3595', 'MI', '48045'),
	(303, 'geany_p@yahoo.com', NULL, NULL, NULL, NULL, NULL, 'Geanina', 'Stan', '(586) 416-1491', NULL, NULL),
	(304, 'vstegman@outlook.com', '70 N. Youngs Rd', NULL, 'June 07', 'Attica', 'US', 'Victoria', 'Stegman', '9723516920', 'MI', '48412'),
	(305, 'naqia.stephens246@gmail.com', '9303 Morang', NULL, 'June 14', 'Detroit', 'US', 'Naqia', 'Stephens', '3134225400', 'MI', '48224'),
	(306, '', '48594 Lakeview Cir', NULL, NULL, 'Shelby Twp', 'US', 'Emily', 'Sterling', NULL, 'MI', '48317-2744'),
	(307, 'acsterling1395@gmail.com', '45117 Walnut Ct', NULL, NULL, 'Shelby Twp', 'US', 'Lexie', 'Sterling', '5864531644', 'MI', '48317-4964'),
	(308, 'kaylasue1108@hotmail.com', '11073 Dale Ave.', NULL, 'November 08', 'Warren', 'US', 'Kayla', 'Streetman', '(586) 943-0960', 'MI', '48089'),
	(309, 'jane.strybis@gmail.com', '51763 Churchill Dr', NULL, NULL, 'Shelby Twp', 'US', 'Jane', 'Strybis', '(586) 556-7022', 'MI', '48316'),
	(310, 'orangetingles@yahoo.com', '7100 24 Mile Rd', NULL, 'July 28', 'Shelby Township', 'US', 'Theresa', 'Subastian', '5862920853', 'MI', '48316'),
	(311, 'lsullivan5298@outlook.com', NULL, NULL, NULL, NULL, NULL, 'Lauren', 'Sullivan', '(248) 568-9482', NULL, NULL),
	(312, 'ellensumner2013@yahoo.com', '21617 Briarcliff St', NULL, NULL, 'Saint Clair Shores', 'US', 'Ellen', 'Sumner', '5869446736', 'MI', '48082-1299'),
	(313, 'ksundberg0624@gmail.com', NULL, NULL, NULL, NULL, NULL, 'Katie', 'Sundberg', '5863816150', NULL, NULL),
	(314, 'sarah.super916@gmail.com', '23816 Deziel St', NULL, 'September 16', 'Saint Clair Shores', 'US', 'Sarah', 'Super', '8102476658', 'MI', '48082'),
	(315, '', '47267 Jeffry', NULL, NULL, 'Shelby Twp', 'US', 'Leeya', 'Sutter', '2483428545', 'MI', '48317'),
	(316, 'vswims50@gmail.com', NULL, NULL, NULL, NULL, NULL, 'Vana', 'Swims', '3134593517', NULL, NULL),
	(317, 'taylormom2010@hotmail.com', '8931 Devon Dr', NULL, 'January 19', 'Shelby Twp', 'US', 'Sandy', 'Taylor', '(586) 930-2686', 'MI', '48317'),
	(318, 'asiadjboo@yahoo.com', NULL, NULL, NULL, NULL, NULL, 'Mintory', 'Taylor', '3138549634', NULL, NULL),
	(319, 'taylord747@gmail.com', NULL, NULL, NULL, NULL, NULL, 'Danielle', 'Taylor', '5868049266', NULL, NULL),
	(320, 'patt38@live.com', '8917 S. Commons Cir.', 'Apt. C', NULL, 'Washington', 'US', 'Pat', 'Taylor', NULL, 'MI', '48094'),
	(321, '', NULL, NULL, NULL, NULL, NULL, 'Melissa', 'Taylor', NULL, NULL, NULL),
	(322, 'cmtaylor54@gmail.com', '14076 Red Pine', NULL, NULL, 'Sterling Heights', 'US', 'Christina', 'Taylor', '(248) 495-4558', 'MI', '48313'),
	(323, 'nicolekthayer@gmail.com', '1436 Crescent Lane', NULL, 'May 19', 'Rochester Hills', 'US', 'Nicole', 'Thayer', '(248) 520-6916', 'MI', '48306'),
	(324, '', NULL, NULL, NULL, NULL, NULL, 'Jeanette', 'Tiffany''s Sister', NULL, NULL, NULL),
	(325, '', NULL, NULL, NULL, NULL, NULL, 'Party', 'Use', NULL, NULL, NULL),
	(326, 'mlvalverde00@gmail.com', '24836 Godin', NULL, NULL, 'Center Line', 'US', 'Marcy', 'Valverde', '5868437852', 'MI', '48015-1012'),
	(327, 'lvang24@yahoo.com', '27337 Jean', NULL, NULL, 'Warren', 'US', 'Lisa', 'Vang', '5862193237', 'MI', '48093'),
	(328, 'manivan_song@hotmail.com', '28575 Adler Dr', NULL, NULL, 'Warren', 'US', 'Manivan', 'Vang', '5863814221', 'MI', '48088-4222'),
	(329, 'llipar@comcast.net', '51302 Brushford Dr.', NULL, NULL, 'Chesterfield', 'US', 'Lauren', 'Vanpeteghem', '5865496943', 'MI', '48047'),
	(330, '', '563 Hudson Circle', NULL, NULL, 'South Lyon', 'US', 'Elizabeth', 'VanSteenkiste', '5864842612', 'MI', '48178'),
	(331, 'christinevasoski@gmail.com', '21346 Whitman Dr', NULL, 'March 16', 'Macomb', 'US', 'Christine', 'Vasoski', '(586) 354-6129', 'MI', '48044'),
	(332, 'dventimiglia77@gmail.com', '39759 Academy Dr.', NULL, 'October 02', 'St Hts.', 'US', 'Danielle', 'Ventimiglia', '5867700765', 'MI', '48310'),
	(333, 'alisha.vermeulen@yahoo.com', NULL, NULL, NULL, NULL, NULL, 'Alisha', 'Vermeulen', '5868942829', NULL, NULL),
	(334, 'lezly.villarreal@gmail.com', '803 Plate St Unit 210', NULL, NULL, 'Rochester', 'US', 'Lezly', 'Villarreal', '4237414321', 'MI', '483071652'),
	(335, 'wallyjim@aol.com', NULL, NULL, NULL, NULL, NULL, 'Diane', 'Walerski', NULL, NULL, NULL),
	(336, 'kwalkowski916@gmail.com', '23607 Irwin Rd', NULL, NULL, 'Armada', 'US', 'Kodi', 'Walkowski', '5866230991', 'MI', '48005'),
	(337, 'kristaward1986@hotmail.com', '3135 Elecric Avenue', '6', 'August 05', 'Port Huron', 'US', 'Krista', 'Ward', '(810) 294-7659', 'MI', '48060'),
	(338, 'demica6@gmail.com', NULL, NULL, NULL, NULL, NULL, 'Damica', 'Washington', '5862179193', NULL, NULL),
	(339, 'lucysmom310@gmail.com', '8401 18 mile', 'Unit 239', 'March 10', 'Sterling Heights', 'US', 'Loretta', 'Webster', '5868725890', 'MI', '48313'),
	(340, 'cwehling65@gmail.com', '39636 Parklawn Drive', NULL, 'December 13', 'Sterling Heights', 'US', 'Chris', 'Wehling', '5866048092', 'MI', '48313'),
	(341, 'weichbrodt.and@gmail.com', '13841 Bowling Green Dr', NULL, 'October 23', 'Sterling Hts', 'US', 'Andrea', 'Weichbrodt', '5864897016', 'MI', '48313-3511'),
	(342, '', NULL, NULL, NULL, NULL, NULL, 'Amy', 'Wendt', NULL, NULL, NULL),
	(343, 'ninjawesson@gmail.com', '13214 Grand Haven', NULL, NULL, 'Sterling Heights', 'US', 'Jaime', 'Wesson', NULL, 'MI', '48312'),
	(344, '', '11202 Lorman Dr', NULL, NULL, 'STERLING HEIGHTS', 'US', 'Sandra', 'Westerby', '5866124965', 'MI', '48312'),
	(345, 'jadewichtner4@gmail.com', NULL, NULL, NULL, NULL, NULL, 'Jade', 'Wichtner', '5869092217', NULL, NULL),
	(346, 'ewilliamswifey@aol.com', '18420 Dean St.', NULL, NULL, 'Detroit', 'US', 'Danielle', 'Williams', '3138546280', 'MI', '43234'),
	(347, 'williamsolivia15@yahoo.com', NULL, NULL, NULL, NULL, NULL, 'Olivia', 'Williams', '3135755572', NULL, NULL),
	(348, 'aliciawilliams1019@yahoo.com', '24765 Willowby', NULL, NULL, 'Eastpointe', 'US', 'Alicia', 'Williams', '(586) 203-7211', 'MI', '48021'),
	(349, 'teamdesymber@gmail.com', '16196 Griggs', NULL, NULL, 'Detriot', 'US', 'Maria', 'Williams', '3133989458', 'MI', '48221'),
	(350, 'joslynnwilliams33@gmail.com', NULL, NULL, NULL, NULL, NULL, 'Joslynn', 'Williams', '3137289663', NULL, NULL),
	(351, 'noelle.willis93@yahoo.com', NULL, NULL, NULL, NULL, NULL, 'Noelle', 'Willis', '586-549-4374', NULL, NULL),
	(352, 'alexandra.emilee@gmail.com', '2151 Crystal Lake Cte', NULL, NULL, NULL, 'US', 'Alexandra', 'Wilson', '5864571955', 'MI', NULL),
	(353, 'dawnwinter@comcast.net', '18392 Sabine Dr', NULL, NULL, 'Macomb', 'US', 'Dawn', 'Winter', '5869333996', 'MI', '48042-6137'),
	(354, 'kerriwolff@comcast.net', '49670 Clavell Dr', NULL, 'May 15', 'Macomb', 'US', 'Kerri', 'Wolff', '(586) 530-2627', 'MI', '48044'),
	(355, 'kendaycat23@gmail.com', NULL, NULL, NULL, NULL, NULL, 'Catina', 'Woods', '3134276208', NULL, NULL),
	(356, 'kellywujkowski@gmail.com', '3 Nicole Dr', NULL, 'October 05', 'Rochester Hills', 'US', 'Kelly', 'Wujkowski', '2488785860', 'MI', '48307'),
	(357, 'jessica.v.yang@gmail.com', '4705 Red Maple Dr.', NULL, NULL, 'Warren', 'US', 'Jessica', 'Yang', '5862196775', 'MI', '48092'),
	(358, 'cassandra.zhong.yang@gmail.com', '33653 Kennedy Dr', NULL, NULL, 'Sterling Heights', 'US', 'Cassandra', 'Yang', '7065259221', 'MI', '48310-6340'),
	(359, 'kayla.yax0234@gmail.com', '19415 Rock Street', NULL, 'May 09', 'Roseville', 'US', 'Kayla', 'Yax', '5863939399', 'MI', '48066'),
	(360, '', '1752 South Shore Dr.', NULL, NULL, 'Rochester Hills', 'US', 'Feyha', 'Younan', '(248) 376-4900', 'MI', '48307'),
	(361, 'sohaasma@hotmail.com', '1325 Greythorne Drive', NULL, 'July 26', 'Lake Orion', 'US', 'Asma', 'Zaheer', '3136031693', 'MI', '48359');


--
-- Data for Name: Inventory; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO "public"."Inventory" ("id", "product", "price", "quantity", "sku") VALUES
	(1, 'Beauty Blotters® Oil-Absorbing Tissues', 10, 0, 10041758),
	(2, 'Belara® Eau de Parfum', 46, 0, 10192900),
	(3, 'Bella Belara® Eau de Parfum', 46, 0, 10012512),
	(4, 'Beyond Ultimate TimeWise® Miracle Set®', 208, 0, 10257838),
	(5, 'Beyond Ultimate TimeWise® Miracle Set®', 208, 0, 10257837),
	(6, 'Cityscape® Cologne Spray', 60, 0, 10221421),
	(7, 'Clear Proof® Acne System Set', 60, 0, 10233587),
	(8, 'Clear Proof® Acne Treatment Gel*', 14, 0, 10095054),
	(9, 'Clear Proof® Blemish Control Toner**', 20, 0, 10056743),
	(10, 'Clear Proof® Clarifying Cleansing Gel**', 20, 0, 10233551),
	(11, 'Clear Proof® Deep-Cleansing Charcoal Mask', 26, 0, 10094148),
	(12, 'Clear Proof® Oil-Free Moisturizer for Acne-Prone Skin', 22, 0, 10241535),
	(13, 'Cosmetic Sponges', 4, 0, 10134452),
	(14, 'Domain® Cologne Spray', 45, 0, 10028783),
	(15, 'Enchanted Wish® Eau de Toilette', 42, 0, 10095688),
	(16, 'Forever Diamonds® Eau de Parfum', 48, 0, 10088620),
	(17, 'Fragrance-Free Satin Hands® Nourishing Shea Cream', 14, 0, 10156069),
	(18, 'Fragrance-Free Satin Hands® Pampering Set', 38, 0, 10238148),
	(19, 'Gel Semi-Matte Lipstick', 20, 0, 10089640),
	(20, 'Hello, Clean', 40, 0, 10080376),
	(21, 'Indulge® Soothing Eye Gel', 20, 0, 10190660),
	(22, 'Lash Intensity® Mascara', 20, 0, 10092105),
	(23, 'Live Fearlessly® Eau de Parfum', 50, 0, 10094305),
	(24, 'Mary Kay® 2-In-1 Body Wash & Shave', 20, 0, 10136769),
	(25, 'Mary Kay® All-Over Eye Shadow Brush', 12, 0, 10122323),
	(26, 'Mary Kay® All-Over Powder Brush', 18, 0, 10122320),
	(27, 'Mary Kay® Apple & Almond Scented Body Lotion', 20, 0, 10162409),
	(28, 'Mary Kay® Apple & Almond Scented Shower Gel', 20, 0, 10162408),
	(29, 'Mary Kay® Balancing Toner', 20, 0, 10201384),
	(30, 'Mary Kay® Berry & Vanilla Scented Body Lotion', 20, 0, 10162416),
	(31, 'Mary Kay® Berry & Vanilla Scented Shower Gel', 20, 0, 10162443),
	(32, 'Mary Kay® Blending Brush', 18, 0, 10128063),
	(33, 'Mary Kay® CC Cream Sunscreen Broad Spectrum SPF 15*', 22, 0, 10072822),
	(34, 'Mary Kay® Cheek Brush', 16, 0, 10122321),
	(35, 'Mary Kay® Clear Brow Styling Gel', 16, 0, 10222938),
	(36, 'Mary Kay® Complexion Sponge', 14, 0, 10248713),
	(37, 'Mary Kay® Cream Color Brush', 12, 0, 10122329),
	(38, 'Mary Kay® Essential Brush Collection', 60, 0, 10107305),
	(39, 'Mary Kay® Exfoliating Scrub', 20, 0, 10201395),
	(40, 'Mary Kay® Extra Emollient Night Cream', 18, 0, 10072682),
	(41, 'Mary Kay® Eye Blending Brush', 12, 0, 10168938),
	(42, 'Mary Kay® Eyebrow/Eyeliner Brush', 12, 0, 10122328),
	(43, 'Mary Kay® Eye Crease Brush', 12, 0, 10122322),
	(44, 'Mary Kay® Eye Smudger Brush', 12, 0, 10122324),
	(45, 'Mary Kay® Foundation Primer Sunscreen Broad Spectrum SPF 15*', 22, 0, 10233087),
	(46, 'Mary Kay® Gel Eyeliner With Expandable Brush Applicator', 22, 0, 10085704),
	(47, 'Mary Kay® Gel Semi-Shine Lipstick', 20, 0, 10094608),
	(48, 'Mary Kay® Great Heights™ Mascara', 18, 0, 10191232),
	(49, 'Mary Kay® Great Heights™ Waterproof Mascara', 18, 0, 10191325),
	(50, 'Mary Kay® Hydrating Cleanser', 20, 0, 10201304),
	(51, 'Mary Kay® Hydrating Cream Mask', 24, 0, 10235578),
	(52, 'Mary Kay® Hydrating Go Set', 22, 0, 10204126),
	(53, 'Mary Kay® Hydrating Lotion', 20, 0, 10073789),
	(54, 'Mary Kay® Hydrating Moisturizer', 20, 0, 10201374),
	(55, 'Mary Kay® Hydrating Regimen', 80, 0, 10230672),
	(56, 'Mary Kay® Hydrogel Eye Patches, pk./30 pairs', 44, 0, 10203701),
	(57, 'Mary Kay® Instant Puffiness Reducer', 38, 0, 10173736),
	(58, 'Mary Kay® Intense Moisturizing Cream (Dry)', 36, 0, 10031541),
	(59, 'Mary Kay® Liquid Foundation Brush', 16, 0, 10122325),
	(60, 'Mary Kay® Makeup Finishing Spray by Skindinävia', 24, 0, 10152557),
	(61, 'Mary Kay® Mask Applicator', 14, 0, 10135951),
	(62, 'Mary Kay® Mattifying Cleanser', 20, 0, 10201340),
	(63, 'Mary Kay® Mattifying Go Set', 22, 0, 10204143),
	(64, 'Mary Kay® Mattifying Moisturizer', 20, 0, 10201376),
	(65, 'Mary Kay® Mattifying Regimen', 80, 0, 10230673),
	(66, 'Mary Kay® Micellar Water', 18, 0, 10160886),
	(67, 'Mary Kay® Mineral Facial Sunscreen Broad Spectrum SPF 30*', 28, 0, 10183253),
	(68, 'Mary Kay® Multi-Benefit Concealer', 18, 0, 10210476),
	(69, 'Mary Kay® Nourishing Oil', 50, 0, 10235072),
	(70, 'Mary Kay® Oil-Free Eye Makeup Remover', 22, 0, 10179024),
	(71, 'Mary Kay® Oil-Free Hydrating Gel (Normal/Oily)', 36, 0, 10197545),
	(72, 'Mary Kay® Precision Brow Liner', 16, 0, 10127611),
	(73, 'Mary Kay® Shimmer Eye Shadow Stick', 20, 0, 10241274),
	(74, 'Mary Kay® Silky Setting Powder', 22, 0, 10175890),
	(75, 'Mary Kay® Sunscreen Broad Spectrum SPF 50*', 30, 0, 10237287),
	(76, 'Mary Kay® Supreme Hydrating Lipstick', 22, 0, 10155207),
	(77, 'Mary Kay® Translucent Loose Powder', 22, 0, 10060182),
	(78, 'Mary Kay® Travel Roll-Up Bag, (unfilled)', 40, 0, 10143940),
	(79, 'Mary Kay® True Optimism™ Eau de Parfum', 55, 0, 10238964),
	(80, 'Mary Kay® Ultimate Mascara™', 18, 0, 10238958),
	(81, 'Mary Kay® Undereye Corrector', 18, 0, 10211391),
	(82, 'Mary Kay® Volumizing Brow Tint', 16, 0, 10125034),
	(83, 'Mary Kay® Waterproof Eyeliner', 16, 0, 10239151),
	(84, 'Mary Kay® Waterproof Lip Liner', 16, 0, 10239167),
	(85, 'Mary Kay® Waterproof Liquid Eyeliner Pen', 20, 0, 10141205),
	(86, 'Mary Kay&reg; Lash Love Fanorama&trade; Define + Lift Mascara', 18, 0, 10238345),
	(87, 'Mary Kay Chromafusion® Blush', 16, 0, 10252251),
	(88, 'Mary Kay Chromafusion® Contour', 16, 0, 10252257),
	(89, 'Mary Kay Chromafusion® Eye Shadow', 10, 0, 10250192),
	(90, 'Mary Kay Chromafusion® Highlighter', 16, 0, 10252261),
	(91, 'Mary Kay Clinical Solutions® Barrier Restore 1:1:3', 46, 0, 10234061),
	(92, 'Mary Kay Clinical Solutions® C + Resveratrol Line-Reducer', 40, 0, 10177899),
	(93, 'Mary Kay Clinical Solutions® Dynamic Wrinkle Limiter™', 58, 0, 10227734),
	(94, 'Mary Kay Clinical Solutions® Ferulic + Niacinamide Brightener', 40, 0, 10177902),
	(95, 'Mary Kay Clinical Solutions® HA + Ceramide Hydrator', 40, 0, 10177906),
	(96, 'Mary Kay Clinical Solutions® PHA + AHA Resurfacer', 40, 0, 10177904),
	(97, 'Mary Kay Clinical Solutions® Retinol 0.3', 70, 0, 10238881),
	(98, 'Mary Kay Confidently You™ Eau de Parfum', 55, 0, 10235051),
	(99, 'Mary Kay Illuminea™ Extrait de Parfum', 80, 0, 10141779),
	(100, 'Mary Kay Perfect Palette® (unfilled)', 24, 0, 10202992),
	(101, 'Mary Kay Petite Palette® (unfilled)', 12, 0, 10114610),
	(102, 'Mary Kay Pro Palette® (unfilled)', 28, 0, 10202993),
	(103, 'Mary Kay Unlimited® Lip Gloss', 20, 0, 10153485),
	(104, 'Mint Bliss™ Energizing Lotion for Feet & Legs', 14, 0, 10223788),
	(105, 'Mix & Mask', 50, 0, 10261957),
	(106, 'MK High Intensity® Cologne Spray', 50, 0, 10109680),
	(107, 'MK High Intensity® Sport Cologne Spray', 50, 0, 10075680),
	(108, 'MK High Intensity Ocean® Cologne Spray', 50, 0, 10095123),
	(109, 'MKMen® Daily Facial Wash', 20, 0, 10234778),
	(110, 'MKMen® Moisturizing Shave Cream', 20, 0, 10234520),
	(111, 'MKMen® Regimen', 70, 0, 10242538),
	(112, 'MKMen® Ultimate Moisturizer', 30, 0, 10234780),
	(113, 'Special-Edition† Mary Kay® After-Sun Replenishing Gel', 20, 0, 10229067),
	(114, 'Special-Edition† Mary Kay® Blush Stick', 20, 0, 10252597),
	(115, 'Special-Edition† Skinvigorate™ Duo Facial Device', 95, 0, 10249002),
	(116, 'Thinking of You® Eau de Parfum', 40, 0, 10218635),
	(117, 'TimeWise® 4-in-1 Cleanser', 26, 0, 10254231),
	(118, 'TimeWise® 4-in-1 Cleanser', 26, 0, 10254234),
	(119, 'TimeWise® Antioxidant Moisturizer', 34, 0, 10217391),
	(120, 'TimeWise® Antioxidant Moisturizer', 34, 0, 10217393),
	(121, 'TimeWise® Daytime Defender Sunscreen Broad Spectrum SPF 30†', 34, 0, 10217385),
	(122, 'TimeWise® Eye Cream', 38, 0, 10217408),
	(123, 'TimeWise® Firming Eye Cream', 34, 0, 10225538),
	(124, 'TimeWise® Luminous 3D Foundation', 28, 0, 10210785),
	(125, 'TimeWise® Matte 3D Foundation', 28, 0, 10210733),
	(126, 'TimeWise® Microdermabrasion Plus Set', 58, 0, 10198866),
	(127, 'TimeWise® Microdermabrasion Refine', 36, 0, 10224657),
	(128, 'TimeWise® Miracle Set®', 116, 0, 10254308),
	(129, 'TimeWise® Miracle Set®', 116, 0, 10254309),
	(130, 'TimeWise® Miracle Set® The Go Set', 30, 0, 10254307),
	(131, 'TimeWise® Miracle Set® The Go Set', 30, 0, 10254305),
	(132, 'TimeWise® Nighttime Recovery', 34, 0, 10254268),
	(133, 'TimeWise® Pore Minimizer', 28, 0, 10198715),
	(134, 'TimeWise® Targeted-Action® Toning Lotion', 38, 0, 10219506),
	(135, 'TimeWise Repair® Lifting Bio-Cellulose Mask', 70, 0, 10107547),
	(136, 'TimeWise Repair® Revealing Radiance® Facial Peel', 68, 0, 10088897),
	(137, 'TimeWise Repair® Ultimate Volu-Firm® Set', 348, 0, 10262871),
	(138, 'TimeWise Repair® Volu-Fill® Deep Wrinkle Filler', 50, 0, 10256972),
	(139, 'TimeWise Repair® Volu-Firm® Advanced Lifting Serum', 74, 0, 10243384),
	(140, 'TimeWise Repair® Volu-Firm® Day Cream Sunscreen Broad Spectrum SPF 30*', 54, 0, 10257266),
	(141, 'TimeWise Repair® Volu-Firm® Eye Renewal Cream', 44, 0, 10208547),
	(142, 'TimeWise Repair® Volu-Firm® Foaming Cleanser', 30, 0, 10257257),
	(143, 'TimeWise Repair® Volu-Firm® Night Treatment', 54, 0, 10243392),
	(144, 'TimeWise Repair® Volu-Firm® Set', 230, 0, 10243732),
	(145, 'TimeWise Repair Volu-Firm The Go Set®', 40, 0, 10243720),
	(146, 'TimeWise Replenishing Serum C+E®', 64, 0, 10171886),
	(147, 'Ultimate TimeWise® Miracle Set®', 150, 0, 10257239),
	(148, 'Ultimate TimeWise® Miracle Set®', 150, 0, 10257238),
	(149, 'White Tea & Citrus Satin Body® Indulgent Shea Wash', 26, 0, 10091502),
	(150, 'White Tea & Citrus Satin Body® Revitalizing Shea Scrub', 26, 0, 10091504),
	(151, 'White Tea & Citrus Satin Body® Silkening Shea Lotion', 26, 0, 10091493),
	(152, 'White Tea & Citrus Satin Hands® Nourishing Shea Cream', 14, 0, 10088632),
	(153, 'White Tea & Citrus Satin Hands® Pampering Set', 38, 0, 10090638),
	(154, 'White Tea & Citrus Satin Lips® Set', 26, 0, 10098324),
	(155, 'White Tea & Citrus Satin Lips® Shea Butter Balm', 14, 0, 10138754),
	(156, 'White Tea & Citrus Satin Lips® Shea Sugar Scrub', 14, 0, 10186363);


--
-- Data for Name: Orders; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Data for Name: Items Ordered; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Data for Name: buckets; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--



--
-- Data for Name: buckets_analytics; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--



--
-- Data for Name: buckets_vectors; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--



--
-- Data for Name: iceberg_namespaces; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--



--
-- Data for Name: iceberg_tables; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--



--
-- Data for Name: objects; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--



--
-- Data for Name: s3_multipart_uploads; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--



--
-- Data for Name: s3_multipart_uploads_parts; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--



--
-- Data for Name: vector_indexes; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--



--
-- Data for Name: hooks; Type: TABLE DATA; Schema: supabase_functions; Owner: supabase_functions_admin
--



--
-- Name: refresh_tokens_id_seq; Type: SEQUENCE SET; Schema: auth; Owner: supabase_auth_admin
--

SELECT pg_catalog.setval('"auth"."refresh_tokens_id_seq"', 1, false);


--
-- Name: Customers_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."Customers_id_seq"', 361, true);


--
-- Name: Inventory_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."Inventory_id_seq"', 312, true);


--
-- Name: Items Ordered_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."Items Ordered_id_seq"', 1, false);


--
-- Name: Orders_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."Orders_id_seq"', 1, false);


--
-- Name: hooks_id_seq; Type: SEQUENCE SET; Schema: supabase_functions; Owner: supabase_functions_admin
--

SELECT pg_catalog.setval('"supabase_functions"."hooks_id_seq"', 1, false);


--
-- PostgreSQL database dump complete
--

-- \unrestrict IgIZgKtKErl6dM0YOKXOjLpdHLYAEcIMr3FJSBKJlCZHhSnLdxNDAkttgC9nQLH

RESET ALL;
