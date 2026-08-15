SET session_replication_role = replica;

--
-- PostgreSQL database dump
--

-- \restrict 1WHdToRqXXHgvn6bCW4zTLgKfWzDDgnUzKcpaRR4vBvXyNq3DDeAw8i1ZgJlN4S

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

INSERT INTO "public"."Customers" ("id", "name", "email") VALUES
	(1, 'Martha Stewart', 'martha.stewart@aol.com'),
	(2, 'Brenda Thompson', 'bthompson@gmail.com'),
	(3, 'Test User', 'test@user.com'),
	(4, 'Sally Que', 'sallyq@outlook.com');


--
-- Data for Name: Inventory; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO "public"."Inventory" ("id", "product", "price", "quantity", "sku") VALUES
	(2, 'Beauty Blotters® Oil-Absorbing Tissues', 10, 0, 10041758),
	(3, 'Belara® Eau de Parfum', 46, 0, 10192900),
	(4, 'Bella Belara® Eau de Parfum', 46, 0, 10012512),
	(5, 'Beyond Ultimate TimeWise® Miracle Set®', 208, 0, 10257838),
	(6, 'Beyond Ultimate TimeWise® Miracle Set®', 208, 0, 10257837),
	(7, 'Cityscape® Cologne Spray', 60, 0, 10221421),
	(8, 'Clear Proof® Acne System Set', 60, 0, 10233587),
	(9, 'Clear Proof® Acne Treatment Gel*', 14, 0, 10095054),
	(10, 'Clear Proof® Blemish Control Toner**', 20, 0, 10056743),
	(11, 'Clear Proof® Clarifying Cleansing Gel**', 20, 0, 10233551),
	(12, 'Clear Proof® Deep-Cleansing Charcoal Mask', 26, 0, 10094148),
	(13, 'Clear Proof® Oil-Free Moisturizer for Acne-Prone Skin', 22, 0, 10241535),
	(14, 'Cosmetic Sponges', 4, 0, 10134452),
	(15, 'Domain® Cologne Spray', 45, 0, 10028783),
	(16, 'Enchanted Wish® Eau de Toilette', 42, 0, 10095688),
	(17, 'Forever Diamonds® Eau de Parfum', 48, 0, 10088620),
	(18, 'Fragrance-Free Satin Hands® Nourishing Shea Cream', 14, 0, 10156069),
	(19, 'Fragrance-Free Satin Hands® Pampering Set', 38, 0, 10238148),
	(20, 'Gel Semi-Matte Lipstick', 20, 0, 10089640),
	(21, 'Hello, Clean', 40, 0, 10080376),
	(22, 'Indulge® Soothing Eye Gel', 20, 0, 10190660),
	(23, 'Lash Intensity® Mascara', 20, 0, 10092105),
	(24, 'Lash Intensity® Mascara', 20, 0, 10092105),
	(25, 'Live Fearlessly® Eau de Parfum', 50, 0, 10094305),
	(26, 'Mary Kay® 2-In-1 Body Wash & Shave', 20, 0, 10136769),
	(27, 'Mary Kay® All-Over Eye Shadow Brush', 12, 0, 10122323),
	(28, 'Mary Kay® All-Over Powder Brush', 18, 0, 10122320),
	(29, 'Mary Kay® Apple & Almond Scented Body Lotion', 20, 0, 10162409),
	(30, 'Mary Kay® Apple & Almond Scented Shower Gel', 20, 0, 10162408),
	(31, 'Mary Kay® Balancing Toner', 20, 0, 10201384),
	(32, 'Mary Kay® Berry & Vanilla Scented Body Lotion', 20, 0, 10162416),
	(33, 'Mary Kay® Berry & Vanilla Scented Shower Gel', 20, 0, 10162443),
	(34, 'Mary Kay® Blending Brush', 18, 0, 10128063),
	(35, 'Mary Kay® CC Cream Sunscreen Broad Spectrum SPF 15*', 22, 0, 10072822),
	(36, 'Mary Kay® Cheek Brush', 16, 0, 10122321),
	(37, 'Mary Kay® Clear Brow Styling Gel', 16, 0, 10222938),
	(38, 'Mary Kay® Complexion Sponge', 14, 0, 10248713),
	(39, 'Mary Kay® Cream Color Brush', 12, 0, 10122329),
	(40, 'Mary Kay® Essential Brush Collection', 60, 0, 10107305),
	(41, 'Mary Kay® Exfoliating Scrub', 20, 0, 10201395),
	(42, 'Mary Kay® Extra Emollient Night Cream', 18, 0, 10072682),
	(43, 'Mary Kay® Eye Blending Brush', 12, 0, 10168938),
	(44, 'Mary Kay® Eyebrow/Eyeliner Brush', 12, 0, 10122328),
	(45, 'Mary Kay® Eye Crease Brush', 12, 0, 10122322),
	(46, 'Mary Kay® Eye Smudger Brush', 12, 0, 10122324),
	(47, 'Mary Kay® Foundation Primer Sunscreen Broad Spectrum SPF 15*', 22, 0, 10233087),
	(48, 'Mary Kay® Gel Eyeliner With Expandable Brush Applicator', 22, 0, 10085704),
	(49, 'Mary Kay® Gel Semi-Shine Lipstick', 20, 0, 10094608),
	(50, 'Mary Kay® Gel Semi-Shine Lipstick', 20, 0, 10094608),
	(51, 'Mary Kay® Great Heights™ Mascara', 18, 0, 10191232),
	(52, 'Mary Kay® Great Heights™ Mascara', 18, 0, 10191232),
	(53, 'Mary Kay® Great Heights™ Waterproof Mascara', 18, 0, 10191325),
	(54, 'Mary Kay® Hydrating Cleanser', 20, 0, 10201304),
	(55, 'Mary Kay® Hydrating Cream Mask', 24, 0, 10235578),
	(56, 'Mary Kay® Hydrating Go Set', 22, 0, 10204126),
	(57, 'Mary Kay® Hydrating Lotion', 20, 0, 10073789),
	(58, 'Mary Kay® Hydrating Moisturizer', 20, 0, 10201374),
	(59, 'Mary Kay® Hydrating Regimen', 80, 0, 10230672),
	(60, 'Mary Kay® Hydrogel Eye Patches, pk./30 pairs', 44, 0, 10203701),
	(61, 'Mary Kay® Instant Puffiness Reducer', 38, 0, 10173736),
	(62, 'Mary Kay® Intense Moisturizing Cream (Dry)', 36, 0, 10031541),
	(63, 'Mary Kay® Liquid Foundation Brush', 16, 0, 10122325),
	(64, 'Mary Kay® Makeup Finishing Spray by Skindinävia', 24, 0, 10152557),
	(65, 'Mary Kay® Mask Applicator', 14, 0, 10135951),
	(66, 'Mary Kay® Mattifying Cleanser', 20, 0, 10201340),
	(67, 'Mary Kay® Mattifying Go Set', 22, 0, 10204143),
	(68, 'Mary Kay® Mattifying Moisturizer', 20, 0, 10201376),
	(69, 'Mary Kay® Mattifying Regimen', 80, 0, 10230673),
	(70, 'Mary Kay® Micellar Water', 18, 0, 10160886),
	(71, 'Mary Kay® Mineral Facial Sunscreen Broad Spectrum SPF 30*', 28, 0, 10183253),
	(72, 'Mary Kay® Multi-Benefit Concealer', 18, 0, 10210476),
	(73, 'Mary Kay® Nourishing Oil', 50, 0, 10235072),
	(74, 'Mary Kay® Oil-Free Eye Makeup Remover', 22, 0, 10179024),
	(75, 'Mary Kay® Oil-Free Hydrating Gel (Normal/Oily)', 36, 0, 10197545),
	(76, 'Mary Kay® Precision Brow Liner', 16, 0, 10127611),
	(77, 'Mary Kay® Shimmer Eye Shadow Stick', 20, 0, 10241274),
	(78, 'Mary Kay® Silky Setting Powder', 22, 0, 10175890),
	(79, 'Mary Kay® Sunscreen Broad Spectrum SPF 50*', 30, 0, 10237287),
	(80, 'Mary Kay® Supreme Hydrating Lipstick', 22, 0, 10155207),
	(81, 'Mary Kay® Translucent Loose Powder', 22, 0, 10060182),
	(82, 'Mary Kay® Travel Roll-Up Bag, (unfilled)', 40, 0, 10143940),
	(83, 'Mary Kay® True Optimism™ Eau de Parfum', 55, 0, 10238964),
	(84, 'Mary Kay® Ultimate Mascara™', 18, 0, 10238958),
	(85, 'Mary Kay® Undereye Corrector', 18, 0, 10211391),
	(86, 'Mary Kay® Volumizing Brow Tint', 16, 0, 10125034),
	(87, 'Mary Kay® Waterproof Eyeliner', 16, 0, 10239151),
	(88, 'Mary Kay® Waterproof Lip Liner', 16, 0, 10239167),
	(89, 'Mary Kay® Waterproof Liquid Eyeliner Pen', 20, 0, 10141205),
	(90, 'Mary Kay&reg; Lash Love Fanorama&trade; Define + Lift Mascara', 18, 0, 10238345),
	(91, 'Mary Kay Chromafusion® Blush', 16, 0, 10252251),
	(92, 'Mary Kay Chromafusion® Contour', 16, 0, 10252257),
	(93, 'Mary Kay Chromafusion® Eye Shadow', 10, 0, 10250192),
	(94, 'Mary Kay Chromafusion® Highlighter', 16, 0, 10252261),
	(95, 'Mary Kay Clinical Solutions® Barrier Restore 1:1:3', 46, 0, 10234061),
	(96, 'Mary Kay Clinical Solutions® C + Resveratrol Line-Reducer', 40, 0, 10177899),
	(97, 'Mary Kay Clinical Solutions® Dynamic Wrinkle Limiter™', 58, 0, 10227734),
	(98, 'Mary Kay Clinical Solutions® Ferulic + Niacinamide Brightener', 40, 0, 10177902),
	(99, 'Mary Kay Clinical Solutions® HA + Ceramide Hydrator', 40, 0, 10177906),
	(100, 'Mary Kay Clinical Solutions® PHA + AHA Resurfacer', 40, 0, 10177904),
	(101, 'Mary Kay Clinical Solutions® Retinol 0.3', 70, 0, 10238881),
	(102, 'Mary Kay Confidently You™ Eau de Parfum', 55, 0, 10235051),
	(103, 'Mary Kay Illuminea™ Extrait de Parfum', 80, 0, 10141779),
	(104, 'Mary Kay Perfect Palette® (unfilled)', 24, 0, 10202992),
	(105, 'Mary Kay Petite Palette® (unfilled)', 12, 0, 10114610),
	(106, 'Mary Kay Pro Palette® (unfilled)', 28, 0, 10202993),
	(107, 'Mary Kay Unlimited® Lip Gloss', 20, 0, 10249006),
	(108, 'Mint Bliss™ Energizing Lotion for Feet & Legs', 14, 0, 10223788),
	(109, 'Mix & Mask', 50, 0, 10261957),
	(110, 'MK High Intensity® Cologne Spray', 50, 0, 10109680),
	(111, 'MK High Intensity® Sport Cologne Spray', 50, 0, 10075680),
	(112, 'MK High Intensity Ocean® Cologne Spray', 50, 0, 10095123),
	(113, 'MKMen® Daily Facial Wash', 20, 0, 10234778),
	(114, 'MKMen® Moisturizing Shave Cream', 20, 0, 10234520),
	(115, 'MKMen® Regimen', 70, 0, 10242538),
	(116, 'MKMen® Ultimate Moisturizer', 30, 0, 10234780),
	(117, 'Special-Edition† Mary Kay® After-Sun Replenishing Gel', 20, 0, 10229067),
	(118, 'Special-Edition† Mary Kay® Blush Stick', 20, 0, 10252597),
	(119, 'Special-Edition† Skinvigorate™ Duo Facial Device', 95, 0, 10249002),
	(120, 'Thinking of You® Eau de Parfum', 40, 0, 10218635),
	(121, 'TimeWise® 4-in-1 Cleanser', 26, 0, 10254231),
	(122, 'TimeWise® 4-in-1 Cleanser', 26, 0, 10254234),
	(123, 'TimeWise® Antioxidant Moisturizer', 34, 0, 10217391),
	(124, 'TimeWise® Antioxidant Moisturizer', 34, 0, 10217393),
	(125, 'TimeWise® Daytime Defender Sunscreen Broad Spectrum SPF 30†', 34, 0, 10217385),
	(126, 'TimeWise® Eye Cream', 38, 0, 10217408),
	(127, 'TimeWise® Firming Eye Cream', 34, 0, 10225538),
	(128, 'TimeWise® Luminous 3D Foundation', 28, 0, 10210785),
	(129, 'TimeWise® Matte 3D Foundation', 28, 0, 10210733),
	(130, 'TimeWise® Microdermabrasion Plus Set', 58, 0, 10198866),
	(131, 'TimeWise® Microdermabrasion Refine', 36, 0, 10224657),
	(132, 'TimeWise® Miracle Set®', 116, 0, 10254308),
	(133, 'TimeWise® Miracle Set®', 116, 0, 10254309),
	(134, 'TimeWise® Miracle Set® The Go Set', 30, 0, 10254307),
	(135, 'TimeWise® Miracle Set® The Go Set', 30, 0, 10254305),
	(136, 'TimeWise® Nighttime Recovery', 34, 0, 10254268),
	(137, 'TimeWise® Pore Minimizer', 28, 0, 10198715),
	(138, 'TimeWise® Targeted-Action® Toning Lotion', 38, 0, 10219506),
	(139, 'TimeWise Repair® Lifting Bio-Cellulose Mask', 70, 0, 10107547),
	(140, 'TimeWise Repair® Revealing Radiance® Facial Peel', 68, 0, 10088897),
	(141, 'TimeWise Repair® Ultimate Volu-Firm® Set', 348, 0, 10262871),
	(142, 'TimeWise Repair® Volu-Fill® Deep Wrinkle Filler', 50, 0, 10256972),
	(143, 'TimeWise Repair® Volu-Firm® Advanced Lifting Serum', 74, 0, 10243384),
	(144, 'TimeWise Repair® Volu-Firm® Day Cream Sunscreen Broad Spectrum SPF 30*', 54, 0, 10257266),
	(145, 'TimeWise Repair® Volu-Firm® Eye Renewal Cream', 44, 0, 10208547),
	(146, 'TimeWise Repair® Volu-Firm® Foaming Cleanser', 30, 0, 10257257),
	(147, 'TimeWise Repair® Volu-Firm® Night Treatment', 54, 0, 10243392),
	(148, 'TimeWise Repair® Volu-Firm® Set', 230, 0, 10243732),
	(149, 'TimeWise Repair Volu-Firm The Go Set®', 40, 0, 10243720),
	(150, 'TimeWise Replenishing Serum C+E®', 64, 0, 10171886),
	(151, 'Ultimate TimeWise® Miracle Set®', 150, 0, 10257239),
	(152, 'Ultimate TimeWise® Miracle Set®', 150, 0, 10257238),
	(153, 'White Tea & Citrus Satin Body® Indulgent Shea Wash', 26, 0, 10091502),
	(154, 'White Tea & Citrus Satin Body® Revitalizing Shea Scrub', 26, 0, 10091504),
	(155, 'White Tea & Citrus Satin Body® Silkening Shea Lotion', 26, 0, 10091493),
	(156, 'White Tea & Citrus Satin Hands® Nourishing Shea Cream', 14, 0, 10088632),
	(157, 'White Tea & Citrus Satin Hands® Pampering Set', 38, 0, 10090638),
	(158, 'White Tea & Citrus Satin Lips® Set', 26, 0, 10098324),
	(159, 'White Tea & Citrus Satin Lips® Shea Butter Balm', 14, 0, 10138754),
	(160, 'White Tea & Citrus Satin Lips® Shea Sugar Scrub', 14, 0, 10186363);


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

SELECT pg_catalog.setval('"public"."Customers_id_seq"', 4, true);


--
-- Name: Inventory_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."Inventory_id_seq"', 160, true);


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

-- \unrestrict 1WHdToRqXXHgvn6bCW4zTLgKfWzDDgnUzKcpaRR4vBvXyNq3DDeAw8i1ZgJlN4S

RESET ALL;
