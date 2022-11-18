--
-- PostgreSQL database dump
--

-- Dumped from database version 12.2 (Ubuntu 12.2-4)
-- Dumped by pg_dump version 12.2 (Ubuntu 12.2-4)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: genres; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.genres (
    id integer,
    genre text
);


--
-- Name: platforms; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.platforms (
    id integer,
    platform text
);


--
-- Name: publishers; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.publishers (
    id integer,
    publisher text
);


--
-- Name: videogames; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.videogames (
    rank integer,
    name text,
    platform_id integer,
    year text,
    genre_id integer,
    publisher_id integer,
    global_sales double precision
);


--
-- Data for Name: genres; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.genres (id, genre) FROM stdin;
1	Sports
2	Platform
3	Racing
4	Role-Playing
5	Puzzle
6	Misc
7	Shooter
8	Simulation
9	Action
10	Fighting
11	Adventure
12	Strategy
\.


--
-- Data for Name: platforms; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.platforms (id, platform) FROM stdin;
1	Wii
2	NES
3	GB
4	DS
5	X360
6	PS3
7	PS2
8	SNES
9	GBA
10	3DS
11	PS4
12	N64
13	PS
14	XB
15	PC
16	2600
17	PSP
18	XOne
19	GC
20	WiiU
21	GEN
22	DC
23	PSV
24	SAT
25	SCD
26	WS
27	NG
28	TG16
29	3DO
30	GG
31	PCFX
\.


--
-- Data for Name: publishers; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.publishers (id, publisher) FROM stdin;
1	Nintendo
2	Microsoft Game Studios
3	Take-Two Interactive
4	Sony Computer Entertainment
5	Activision
6	Ubisoft
7	Bethesda Softworks
8	Electronic Arts
9	Sega
10	SquareSoft
11	Atari
12	505 Games
13	Capcom
14	GT Interactive
15	Konami Digital Entertainment
16	Sony Computer Entertainment Europe
17	Square Enix
18	LucasArts
19	Virgin Interactive
20	Warner Bros. Interactive Entertainment
21	Universal Interactive
22	Eidos Interactive
23	RedOctane
24	Vivendi Games
25	Enix Corporation
26	Namco Bandai Games
27	Palcom
28	Hasbro Interactive
29	THQ
30	Fox Interactive
31	Acclaim Entertainment
32	MTV Games
33	Disney Interactive Studios
34	N/A
35	Majesco Entertainment
36	Codemasters
37	Red Orb
38	Level 5
39	Arena Entertainment
40	Midway Games
41	JVC
42	Deep Silver
43	989 Studios
44	NCSoft
45	UEP Systems
46	Parker Bros.
47	Maxis
48	Imagic
49	Tecmo Koei
50	Valve Software
51	ASCII Entertainment
52	Mindscape
53	Infogrames
54	Unknown
55	Square
56	Valve
57	Activision Value
58	Banpresto
59	D3Publisher
60	Oxygen Interactive
61	Red Storm Entertainment
62	Video System
63	Hello Games
64	Global Star
65	Gotham Games
66	Westwood Studios
67	GungHo
68	Crave Entertainment
69	Hudson Soft
70	Coleco
71	Rising Star Games
72	Atlus
73	TDK Mediactive
74	ASC Games
75	Zoo Games
76	Accolade
77	Sony Online Entertainment
78	3DO
79	RTL
80	Natsume
81	Focus Home Interactive
82	Alchemist
83	Black Label Games
84	SouthPeak Games
85	Mastertronic
86	Ocean
87	Zoo Digital Publishing
88	Psygnosis
89	City Interactive
90	Empire Interactive
91	Success
92	Compile
93	Russel
94	Taito
95	Agetec
96	GSP
97	Microprose
98	Play It
99	Slightly Mad Studios
100	Tomy Corporation
101	Sammy Corporation
102	Koch Media
103	Game Factory
104	Titus
105	Marvelous Entertainment
106	Genki
107	Mojang
108	Pinnacle
109	CTO SpA
110	TalonSoft
111	Crystal Dynamics
112	SCi
113	Quelle
114	mixi, Inc
115	Rage Software
116	Ubisoft Annecy
117	Scholastic Inc.
118	Interplay
119	Mystique
120	ChunSoft
121	Square EA
122	20th Century Fox Video Games
123	Avanquest Software
124	Hudson Entertainment
125	Nordic Games
126	Men-A-Vision
127	Nobilis
128	Big Ben Interactive
129	Touchstone
130	Spike
131	Jester Interactive
132	Nippon Ichi Software
133	LEGO Media
134	Quest
135	Illusion Softworks
136	Tigervision
137	Funbox Media
138	Rocket Company
139	Metro 3D
140	Mattel Interactive
141	IE Institute
142	Rondomedia
143	Sony Computer Entertainment America
144	Universal Gamex
145	Ghostlight
146	Wizard Video Games
147	BMG Interactive Entertainment
148	PQube
149	Trion Worlds
150	Laguna
151	Ignition Entertainment
152	Takara
153	Kadokawa Shoten
154	Destineer
155	Enterbrain
156	Xseed Games
157	Imagineer
158	System 3 Arcade Software
159	CPG Products
160	Aruze Corp
161	Gamebridge
162	Midas Interactive Entertainment
163	Jaleco
164	Answer Software
165	XS Games
166	Activision Blizzard
167	Pack In Soft
168	Rebellion
169	Xplosiv
170	Ultravision
171	GameMill Entertainment
172	Wanadoo
173	NovaLogic
174	Telltale Games
175	Epoch
176	BAM! Entertainment
177	Knowledge Adventure
178	Mastiff
179	Tetris Online
180	Harmonix Music Systems
181	ESP
182	TYO
183	Telegames
184	Mud Duck Productions
185	Screenlife
186	Pioneer LDC
187	Magical Company
188	Mentor Interactive
189	Kemco
190	Human Entertainment
191	Avanquest
192	Data Age
193	Electronic Arts Victor
194	Black Bean Games
195	Jack of All Games
196	989 Sports
197	Takara Tomy
198	Media Rings
199	Elf
200	Kalypso Media
201	Starfish
202	Zushi Games
203	Jorudan
204	Destination Software, Inc
205	New
206	Brash Entertainment
207	ITT Family Games
208	PopCap Games
209	Home Entertainment Suppliers
210	Ackkstudios
211	Starpath Corp.
212	P2 Games
213	BPS
214	Gathering of Developers
215	NewKidCo
216	Storm City Games
217	CokeM Interactive
218	CBS Electronics
219	Magix
220	Marvelous Interactive
221	Nihon Falcom Corporation
222	Wargaming.net
223	Angel Studios
224	Arc System Works
225	Playmates
226	SNK Playmore
227	Hamster Corporation
228	From Software
229	Nippon Columbia
230	Nichibutsu
231	Little Orbit
232	Conspiracy Entertainment
233	DTP Entertainment
234	Hect
235	Mumbo Jumbo
236	Pacific Century Cyber Works
237	Indie Games
238	Liquid Games
239	NEC
240	Axela
241	ArtDink
242	Sunsoft
243	Gust
244	SNK
245	NEC Interchannel
246	FuRyu
247	Xing Entertainment
248	ValuSoft
249	Victor Interactive
250	Detn8 Games
251	American Softworks
252	Nordcurrent
253	Bomb
254	Falcom Corporation
255	AQ Interactive
256	CCP
257	Milestone S.r.l.
258	Sears
259	JoWood Productions
260	Seta Corporation
261	On Demand
262	NCS
263	Aspyr
264	Gremlin Interactive Ltd
265	Agatsuma Entertainment
266	Compile Heart
267	Culture Brain
268	Mad Catz
269	Shogakukan
270	Merscom LLC
271	Rebellion Developments
272	Nippon Telenet
273	TDK Core
274	bitComposer Games
275	Foreign Media Games
276	Astragon
277	SSI
278	Kadokawa Games
279	Idea Factory
280	Performance Designed Products
281	Asylum Entertainment
282	Core Design Ltd.
283	PlayV
284	UFO Interactive
285	Idea Factory International
286	Playlogic Game Factory
287	Essential Games
288	Adeline Software
289	Funcom
290	Panther Software
291	Blast! Entertainment Ltd
292	Game Life
293	DSI Games
294	Avalon Interactive
295	Popcorn Arcade
296	Neko Entertainment
297	Vir2L Studios
298	Aques
299	Syscom
300	White Park Bay Software
301	System 3
302	Vatical Entertainment
303	Daedalic
304	EA Games
305	Media Factory
306	Vic Tokai
307	The Adventure Company
308	Game Arts
309	Broccoli
310	Acquire
311	General Entertainment
312	Excalibur Publishing
313	Imadio
314	Swing! Entertainment
315	Sony Music Entertainment
316	Aqua Plus
317	Paradox Interactive
318	Hip Interactive
319	DreamCatcher Interactive
320	Tripwire Interactive
321	Sting
322	Yacht Club Games
323	SCS Software
324	Bigben Interactive
325	Havas Interactive
326	Slitherine Software
327	Graffiti
328	Funsta
329	Telstar
330	U.S. Gold
331	DreamWorks Interactive
332	Data Design Interactive
333	MTO
334	DHM Interactive
335	FunSoft
336	SPS
337	Bohemia Interactive
338	Reef Entertainment
339	Tru Blu Entertainment
340	Moss
341	T&E Soft
342	O-Games
343	Aksys Games
344	NDA Productions
345	Data East
346	Time Warner Interactive
347	Gainax Network Systems
348	Daito
349	O3 Entertainment
350	Gameloft
351	Xicat Interactive
352	Simon & Schuster Interactive
353	Valcon Games
354	PopTop Software
355	TOHO
356	HMH Interactive
357	5pb
358	Cave
359	CDV Software Entertainment
360	Microids
361	PM Studios
362	Paon
363	Micro Cabin
364	GameTek
365	Benesse
366	Type-Moon
367	Enjoy Gaming ltd.
368	Asmik Corp
369	Interplay Productions
370	Asmik Ace Entertainment
371	inXile Entertainment
372	Image Epoch
373	Phantom EFX
374	Evolved Games
375	responDESIGN
376	Culture Publishers
377	Griffin International
378	Hackberry
379	Hearty Robin
380	Nippon Amuse
381	Origin Systems
382	Seventh Chord
383	Mitsui
384	Milestone
385	Abylight
386	Flight-Plan
387	Glams
388	Locus
389	Warp
390	Daedalic Entertainment
391	Alternative Software
392	Myelin Media
393	Mercury Games
394	Irem Software Engineering
395	Sunrise Interactive
396	Elite
397	Evolution Games
398	Tivola
399	Global A Entertainment
400	Edia
401	Athena
402	Aria
403	Gamecock
404	Tommo
405	Altron
406	Happinet
407	iWin
408	Media Works
409	Fortyfive
410	Revolution Software
411	Imax
412	Crimson Cow
413	10TACLE Studios
414	Groove Games
415	Pack-In-Video
416	Insomniac Games
417	Ascaron Entertainment GmbH
418	Asgard
419	Ecole
420	Yumedia
421	Phenomedia
422	HAL Laboratory
423	Grand Prix Games
424	DigiCube
425	Creative Core
426	Kaga Create
427	WayForward Technologies
428	LSP Games
429	ASCII Media Works
430	Coconuts Japan
431	Arika
432	Ertain
433	Marvel Entertainment
434	Prototype
435	TopWare Interactive
436	Phantagram
437	1C Company
438	The Learning Company
439	TechnoSoft
440	Vap
441	Misawa
442	Tradewest
443	Team17 Software
444	Yeti
445	Pow
446	Navarre Corp
447	MediaQuest
448	Max Five
449	Comfort
450	Monte Christo Multimedia
451	Pony Canyon
452	Riverhillsoft
453	Summitsoft
454	Milestone S.r.l
455	Playmore
456	MLB.com
457	Kool Kizz
458	Flashpoint Games
459	49Games
460	Legacy Interactive
461	Alawar Entertainment
462	CyberFront
463	Cloud Imperium Games Corporation
464	Societa
465	Virtual Play Games
466	Interchannel
467	Sonnet
468	Experience Inc.
469	Zenrin
470	Iceberg Interactive
471	Ivolgamus
472	2D Boy
473	MC2 Entertainment
474	Kando Games
475	Just Flight
476	Office Create
477	Mamba Games
478	Fields
479	Princess Soft
480	Maximum Family Games
481	Berkeley
482	Fuji
483	Dusenberry Martin Racing
484	imageepoch Inc.
485	Big Fish Games
486	Her Interactive
487	Kamui
488	ASK
489	Headup Games
490	KSS
491	Cygames
492	KID
493	Quinrose
494	Sunflowers
495	dramatic create
496	TGL
497	Encore
498	Extreme Entertainment Group
499	Intergrow
500	G.Rev
501	Sweets
502	Kokopeli Digital Studios
503	Number None
504	Nexon
505	id Software
506	BushiRoad
507	Tryfirst
508	Strategy First
509	7G//AMES
510	GN Software
511	Yuke's
512	Easy Interactive
513	Licensed 4U
514	FuRyu Corporation
515	Lexicon Entertainment
516	Paon Corporation
517	Kids Station
518	GOA
519	Graphsim Entertainment
520	King Records
521	Introversion Software
522	Minato Station
523	Devolver Digital
524	Blue Byte
525	Gaga
526	Yamasa Entertainment
527	Plenty
528	Views
529	fonfun
530	NetRevo
531	Codemasters Online
532	Quintet
533	Phoenix Games
534	Dorart
535	Marvelous Games
536	Focus Multimedia
537	Imageworks
538	Karin Entertainment
539	Aerosoft
540	Technos Japan Corporation
541	Gakken
542	Mirai Shounen
543	Datam Polystar
544	Saurus
545	HuneX
546	Revolution (Japan)
547	Giza10
548	Visco
549	Alvion
550	Mycom
551	Giga
552	Warashi
553	System Soft
554	Sold Out
555	Lighthouse Interactive
556	Masque Publishing
557	RED Entertainment
558	Michaelsoft
559	Media Entertainment
560	New World Computing
561	Genterprise
562	Interworks Unlimited, Inc.
563	Boost On
564	Stainless Games
565	EON Digital Entertainment
566	Epic Games
567	Naxat Soft
568	Ascaron Entertainment
569	Piacci
570	Nitroplus
571	Paradox Development
572	Otomate
573	Ongakukan
574	Commseed
575	Inti Creates
576	Takuyo
577	Interchannel-Holon
578	Rain Games
579	UIG Entertainment
\.


--
-- Data for Name: videogames; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.videogames (rank, name, platform_id, year, genre_id, publisher_id, global_sales) FROM stdin;
1	Wii Sports	1	2006	1	1	82.74
2	Super Mario Bros.	2	1985	2	1	40.24
3	Mario Kart Wii	1	2008	3	1	35.82
4	Wii Sports Resort	1	2009	1	1	33
5	Pokemon Red/Pokemon Blue	3	1996	4	1	31.37
6	Tetris	3	1989	5	1	30.26
7	New Super Mario Bros.	4	2006	2	1	30.01
8	Wii Play	1	2006	6	1	29.02
9	New Super Mario Bros. Wii	1	2009	2	1	28.62
10	Duck Hunt	2	1984	7	1	28.31
11	Nintendogs	4	2005	8	1	24.76
12	Mario Kart DS	4	2005	3	1	23.42
13	Pokemon Gold/Pokemon Silver	3	1999	4	1	23.1
14	Wii Fit	1	2007	1	1	22.72
15	Wii Fit Plus	1	2009	1	1	22
16	Kinect Adventures!	5	2010	6	2	21.82
17	Grand Theft Auto V	6	2013	9	3	21.4
18	Grand Theft Auto: San Andreas	7	2004	9	3	20.81
19	Super Mario World	8	1990	2	1	20.61
20	Brain Age: Train Your Brain in Minutes a Day	4	2005	6	1	20.22
21	Pokemon Diamond/Pokemon Pearl	4	2006	4	1	18.36
22	Super Mario Land	3	1989	2	1	18.14
23	Super Mario Bros. 3	2	1988	2	1	17.28
24	Grand Theft Auto V	5	2013	9	3	16.38
25	Grand Theft Auto: Vice City	7	2002	9	3	16.15
26	Pokemon Ruby/Pokemon Sapphire	9	2002	4	1	15.85
27	Pokemon Black/Pokemon White	4	2010	4	1	15.32
28	Brain Age 2: More Training in Minutes a Day	4	2005	5	1	15.3
29	Gran Turismo 3: A-Spec	7	2001	3	4	14.98
30	Call of Duty: Modern Warfare 3	5	2011	7	5	14.76
31	Pokémon Yellow: Special Pikachu Edition	3	1998	4	1	14.64
32	Call of Duty: Black Ops	5	2010	7	5	14.64
33	Pokemon X/Pokemon Y	10	2013	4	1	14.35
34	Call of Duty: Black Ops 3	11	2015	7	5	14.24
35	Call of Duty: Black Ops II	6	2012	7	5	14.03
36	Call of Duty: Black Ops II	5	2012	7	5	13.73
37	Call of Duty: Modern Warfare 2	5	2009	7	5	13.51
38	Call of Duty: Modern Warfare 3	6	2011	7	5	13.46
39	Grand Theft Auto III	7	2001	9	3	13.1
40	Super Smash Bros. Brawl	1	2008	10	1	13.04
41	Call of Duty: Black Ops	6	2010	7	5	12.73
42	Animal Crossing: Wild World	4	2005	8	1	12.27
43	Mario Kart 7	10	2011	3	1	12.21
44	Halo 3	5	2007	7	2	12.14
45	Grand Theft Auto V	11	2014	9	3	11.98
46	Pokemon HeartGold/Pokemon SoulSilver	4	2009	9	1	11.9
47	Super Mario 64	12	1996	2	1	11.89
48	Gran Turismo 4	7	2004	3	4	11.66
49	Super Mario Galaxy	1	2007	2	1	11.52
50	Pokemon Omega Ruby/Pokemon Alpha Sapphire	10	2014	4	1	11.33
51	Super Mario Land 2: 6 Golden Coins	3	1992	11	1	11.18
52	Grand Theft Auto IV	5	2008	9	3	11.02
53	Gran Turismo	13	1997	3	4	10.95
54	Super Mario 3D Land	10	2011	2	1	10.79
55	Gran Turismo 5	6	2010	3	4	10.77
56	Call of Duty: Modern Warfare 2	6	2009	7	5	10.69
57	Grand Theft Auto IV	6	2008	9	3	10.57
58	Super Mario All-Stars	8	1993	2	1	10.55
59	Pokemon FireRed/Pokemon LeafGreen	9	2004	4	1	10.49
60	Super Mario 64	4	2004	2	1	10.42
61	Just Dance 3	1	2011	6	6	10.26
62	Call of Duty: Ghosts	5	2013	7	5	10.21
63	Halo: Reach	5	2010	7	2	9.88
64	Mario Kart 64	12	1996	3	1	9.87
65	New Super Mario Bros. 2	10	2012	2	1	9.82
66	Halo 4	5	2012	7	2	9.76
67	Final Fantasy VII	13	1997	4	4	9.72
68	Call of Duty: Ghosts	6	2013	7	5	9.59
69	Just Dance 2	1	2010	6	6	9.52
70	Gran Turismo 2	13	1999	3	4	9.49
71	Call of Duty 4: Modern Warfare	5	2007	7	5	9.32
72	Donkey Kong Country	8	1994	2	1	9.3
73	Minecraft	5	2013	6	2	9.2
74	Animal Crossing: New Leaf	10	2012	8	1	9.09
75	Mario Party DS	4	2007	6	1	9.02
76	The Elder Scrolls V: Skyrim	5	2011	4	7	8.84
77	Super Mario Kart	8	1992	3	1	8.76
78	FIFA 16	11	2015	1	8	8.49
79	Wii Party	1	2010	6	1	8.49
80	Halo 2	14	2004	7	2	8.49
81	Mario Party 8	1	2007	6	1	8.42
82	Pokemon Black 2/Pokemon White 2	4	2012	4	1	8.33
83	FIFA Soccer 13	6	2012	9	8	8.24
84	The Sims 3	15	2009	8	8	8.11
85	GoldenEye 007	12	1997	7	1	8.09
86	Mario & Sonic at the Olympic Games	1	2007	1	9	8.06
87	Final Fantasy X	7	2001	4	4	8.05
88	Final Fantasy VIII	13	1999	4	10	7.86
89	Pokémon Platinum Version	4	2008	4	1	7.84
90	Pac-Man	16	1982	5	11	7.81
91	Grand Theft Auto: Liberty City Stories	17	2005	9	3	7.72
92	Super Mario Galaxy 2	1	2010	2	1	7.69
93	Star Wars Battlefront (2015)	11	2015	7	8	7.67
94	Call of Duty: Advanced Warfare	11	2014	7	5	7.6
95	The Legend of Zelda: Ocarina of Time	12	1998	9	1	7.6
96	Crash Bandicoot 2: Cortex Strikes Back	13	1997	2	4	7.58
97	Super Mario Bros. 2	2	1988	2	1	7.46
98	Super Smash Bros. for Wii U and 3DS	10	2014	10	1	7.45
99	Call of Duty: World at War	5	2008	7	5	7.37
100	Battlefield 3	5	2011	7	8	7.34
101	The Legend of Zelda: Twilight Princess	1	2006	9	1	7.31
102	Call of Duty: Black Ops 3	18	2015	7	5	7.3
103	Just Dance	1	2009	6	6	7.27
104	Battlefield 3	6	2011	7	8	7.23
105	Need for Speed Underground	7	2003	3	8	7.2
106	Tekken 3	13	1998	10	4	7.16
107	Crash Bandicoot 3: Warped	13	1998	2	4	7.13
108	Super Smash Bros. Melee	19	2001	10	1	7.07
109	Mario Kart 8	20	2014	3	1	6.96
110	Fallout 4	11	2015	4	7	6.96
111	Mario Kart: Double Dash!!	19	2003	3	1	6.95
112	Just Dance 4	1	2012	6	6	6.91
113	FIFA 14	6	2013	1	8	6.9
114	Need for Speed Underground 2	7	2004	3	8	6.9
115	Medal of Honor: Frontline	7	2002	7	8	6.83
116	Uncharted 3: Drake's Deception	6	2011	9	4	6.83
117	Crash Bandicoot	13	1996	2	4	6.82
118	Zumba Fitness	1	2010	1	12	6.81
119	Gears of War 2	5	2008	7	2	6.76
120	Uncharted 2: Among Thieves	6	2009	9	4	6.73
121	Call of Duty 4: Modern Warfare	6	2007	7	5	6.72
122	FIFA 12	6	2011	1	8	6.69
123	Big Brain Academy	4	2005	6	1	6.67
124	Red Dead Redemption	6	2010	9	3	6.6
125	FIFA 15	11	2014	1	8	6.59
126	Donkey Kong Country Returns	1	2010	2	1	6.59
127	The Elder Scrolls V: Skyrim	6	2011	4	7	6.56
128	The Legend of Zelda	2	1986	9	1	6.51
129	Assassin's Creed III	6	2012	9	6	6.5
130	Halo: Combat Evolved	14	2001	7	2	6.43
131	Pokémon Emerald Version	9	2004	4	1	6.41
132	Kingdom Hearts	7	2002	4	4	6.4
133	Pokémon Crystal Version	3	2000	4	1	6.39
134	Halo 3: ODST	5	2009	7	2	6.36
135	Red Dead Redemption	5	2010	9	3	6.34
136	Super Mario Sunshine	19	2002	2	1	6.31
137	Street Fighter II: The World Warrior	8	1992	10	13	6.3
138	World of Warcraft	15	2004	4	5	6.28
139	Driver	13	1999	9	14	6.27
140	Kinect Sports	5	2010	1	2	6.24
141	Gears of War 3	5	2011	7	2	6.24
142	Gears of War	5	2006	7	2	6.11
143	Metal Gear Solid 2: Sons of Liberty	7	2001	9	15	6.05
144	Sonic the Hedgehog 2	21	1992	2	9	6.03
145	Metal Gear Solid 4: Guns of the Patriots	6	2008	9	15	6.03
146	Metal Gear Solid	13	1998	9	15	6.03
147	The Last of Us	6	2013	9	16	5.99
148	Final Fantasy XII	7	2006	4	17	5.95
149	LittleBigPlanet	6	2008	2	4	5.92
150	Dragon Quest IX: Sentinels of the Starry Skies	4	2009	4	1	5.84
151	LEGO Star Wars: The Complete Saga	1	2007	9	18	5.83
152	Resident Evil 2	13	1998	9	19	5.82
153	Tekken 2	13	1996	10	4	5.74
154	Cooking Mama	4	2006	8	12	5.72
155	Destiny	11	2014	7	5	5.65
156	Tetris	2	1988	5	1	5.58
157	Assassin's Creed II	6	2009	9	6	5.57
158	Super Smash Bros.	12	1999	10	1	5.55
159	Assassin's Creed	5	2007	11	6	5.55
160	Batman: Arkham City	6	2011	9	20	5.53
161	Forza Motorsport 3	5	2009	3	2	5.51
162	Monster Hunter Freedom Unite	17	2008	4	13	5.5
163	Super Mario Advance	9	2001	2	1	5.49
164	Mario Kart: Super Circuit	9	2001	3	1	5.47
165	Super Mario World	9	2001	2	1	5.46
166	Pokemon Stadium	12	1999	12	1	5.45
167	Call of Duty: World at War	6	2008	7	5	5.43
168	Crash Bandicoot: The Wrath of Cortex	7	2001	2	21	5.42
169	Minecraft	6	2014	6	4	5.42
170	Final Fantasy XIII	6	2009	4	17	5.36
171	Dr. Mario	3	1989	5	1	5.34
172	Pokemon Pinball	3	1999	6	1	5.31
173	Assassin's Creed III	5	2012	9	6	5.3
174	Final Fantasy IX	13	2000	4	10	5.3
175	Final Fantasy X-2	7	2003	4	8	5.29
176	Donkey Kong 64	12	1999	2	1	5.27
177	Assassin's Creed II	5	2009	9	6	5.27
178	Professor Layton and the Curious Village	4	2007	5	1	5.26
179	Tomb Raider II	13	1997	9	22	5.24
180	Madden NFL 2004	7		1	8	5.23
181	Dragon Quest VIII: Journey of the Cursed King	7	2004	4	17	5.21
182	Diablo III	15	2012	4	5	5.2
183	Super Mario Bros. 3	9	2003	2	1	5.2
184	New Super Mario Bros. U	20	2012	2	1	5.19
185	Super Mario Land 3: Wario Land	3	1994	2	1	5.19
186	FIFA Soccer 13	5	2012	9	8	5.18
187	The Legend of Zelda: Phantom Hourglass	4	2007	9	1	5.17
188	Donkey Kong Country 2: Diddy's Kong Quest	8	1995	2	1	5.15
189	Tomodachi Life	10	2013	8	1	5.15
190	Mario & Sonic at the Olympic Games	4	2008	1	9	5.14
191	Medal of Honor: Rising Sun	7	2003	7	8	5.13
192	Kirby's Dream Land	3	1992	2	1	5.13
193	Fable III	5	2010	4	2	5.13
194	Call of Duty: Advanced Warfare	18	2014	7	5	5.13
195	Microsoft Flight Simulator	15	1996	8	2	5.12
196	Guitar Hero II	7	2006	6	23	5.12
197	Resident Evil 5	6	2009	9	13	5.11
198	Grand Theft Auto V	18	2014	9	3	5.08
199	Grand Theft Auto: Vice City Stories	17	2006	9	3	5.08
200	FIFA Soccer 11	6	2010	1	8	5.08
201	Super Mario Bros.	3	1999	2	1	5.07
202	Resident Evil	13	1996	9	19	5.05
203	Tony Hawk's Pro Skater	13	1999	1	5	5.02
204	Super Smash Bros. for Wii U and 3DS	20	2014	10	1	5.02
205	Warzone 2100	13	1999	12	22	5.01
206	Spyro the Dragon	13	1998	2	4	5
207	Link's Crossbow Training	1	2007	7	1	5
208	Guitar Hero III: Legends of Rock	7	2007	6	5	4.98
209	Fallout 3	5	2008	4	7	4.96
210	Pokemon Mystery Dungeon: Explorers of Time/Explorers of Darkness	4	2007	4	1	4.96
211	Uncharted: Drake's Fortune	6	2007	9	4	4.94
212	Madden NFL 06	7	2005	1	8	4.91
213	LEGO Star Wars: The Complete Saga	4	2007	9	18	4.9
214	Diddy Kong Racing	12	1997	3	1	4.88
215	Monster Hunter Freedom 3	17	2010	4	13	4.87
216	Dr. Mario	2	1990	5	1	4.85
217	God of War III	6	2010	9	4	4.84
218	StarCraft II: Wings of Liberty	15	2010	12	5	4.83
219	Assassin's Creed	6	2007	11	6	4.83
220	FIFA 15	6	2014	1	8	4.82
221	Crash Team Racing	13	1999	3	4	4.79
222	FIFA 17	11	2016	1	8	4.77
223	Batman: Arkham City	5	2011	9	20	4.76
224	Driver 2	13	2000	9	11	4.73
225	The Simpsons: Hit & Run	7	2003	3	24	4.7
226	Tony Hawk's Pro Skater 2	13	2000	1	5	4.68
227	Animal Crossing: City Folk	1	2008	8	1	4.68
228	The Lord of the Rings: The Two Towers	7	2002	9	8	4.67
229	Forza Motorsport 4	5	2011	3	2	4.64
230	Tomb Raider	13	1996	9	22	4.63
231	Guitar Hero III: Legends of Rock	1	2007	6	5	4.62
232	The Legend of Zelda: A Link to the Past	8	1991	9	1	4.61
233	The Legend of Zelda: The Wind Waker	19	2002	9	1	4.6
234	Mario & Sonic at the Olympic Winter Games	1	2009	1	9	4.58
235	Luigi's Mansion: Dark Moon	10	2013	9	1	4.58
236	Splatoon	20	2015	7	1	4.57
237	The Last of Us	11	2014	9	4	4.55
238	Guitar Hero III: Legends of Rock	5	2007	6	5	4.53
239	Madden NFL 2005	7	2004	1	8	4.53
240	Pitfall!	16	1981	2	5	4.5
241	Madden NFL 07	7	2006	1	8	4.49
242	Spider-Man: The Movie	7	2002	9	5	4.48
243	Dragon Quest VII: Warriors of Eden	13	2000	4	25	4.47
244	Uncharted: The Nathan Drake Collection	11	2015	9	4	4.47
245	Call of Duty: Advanced Warfare	6	2014	7	5	4.45
246	God of War	7	2005	9	4	4.45
247	Nintendo Land	20	2012	6	1	4.44
248	Michael Jackson: The Experience	1	2010	6	6	4.42
249	Tony Hawk's Pro Skater 3	7	2001	1	5	4.41
250	Winning Eleven: Pro Evolution Soccer 2007	7	2006	1	15	4.39
251	The Elder Scrolls IV: Oblivion	5	2006	4	3	4.39
252	Zelda II: The Adventure of Link	2	1987	11	1	4.38
253	Need for Speed: Most Wanted	7	2005	3	8	4.37
254	Resistance: Fall of Man	6	2006	7	4	4.35
255	Sonic the Hedgehog	21	1991	2	9	4.34
256	Kingdom Hearts II	7	2005	4	17	4.33
257	FIFA 14	5	2013	1	8	4.31
258	Call of Duty: Advanced Warfare	5	2014	7	5	4.31
259	Asteroids	16	1980	7	11	4.31
260	Fable II	5	2008	4	2	4.31
261	Halo 5: Guardians	18	2015	7	2	4.26
262	Super Mario 3D World	20	2013	2	1	4.25
263	Batman: Arkham Asylum	6	2009	9	22	4.25
264	Assassin's Creed: Revelations	6	2011	9	6	4.24
265	Namco Museum	9	2001	6	26	4.24
266	Metal Gear Solid 3: Snake Eater	7	2004	9	15	4.23
267	Daxter	17	2006	2	4	4.22
268	Warcraft II: Tides of Darkness	15	1995	12	5	4.21
269	The Legend of Zelda: Ocarina of Time	10	2011	9	1	4.21
270	FIFA Soccer 06	7	2005	1	8	4.21
271	EyeToy Play	7	2003	6	4	4.2
272	Uncharted 4: A Thief's End	11	2016	7	4	4.2
273	Gran Turismo 5 Prologue	6	2007	3	4	4.2
274	Assassin's Creed: Revelations	5	2011	9	6	4.19
275	Street Fighter IV	6	2009	10	13	4.19
276	FIFA 12	5	2011	1	8	4.19
277	Teenage Mutant Ninja Turtles	2	1989	9	27	4.17
278	Excitebike	2	1984	3	1	4.16
279	Frogger	13	1997	9	28	4.16
280	Madden NFL 2003	7	2002	1	8	4.14
281	Watch Dogs	11	2014	9	6	4.14
282	Half-Life	15	1997	7	24	4.12
283	Super Mario World 2: Yoshi's Island	8	1995	2	1	4.12
284	FIFA Soccer 07	7	2006	1	8	4.11
285	The Legend of Zelda: Skyward Sword	1	2011	9	1	4.1
286	Street Fighter II Turbo	8	1992	10	13	4.1
287	Carnival Games	1	2007	6	3	4.1
288	Fallout 4	18	2015	4	7	4.09
289	World of Warcraft: The Burning Crusade	15	2007	4	5	4.09
290	Fallout: New Vegas	5	2010	4	7	4.08
291	God of War II	7	2007	9	4	4.07
292	Forza Motorsport 2	5	2007	3	2	4.06
293	World Soccer Winning Eleven 9	7	2005	1	15	4.06
294	Namco Museum Vol.3	13	1996	6	4	4.05
295	Tekken Tag Tournament	7	2000	10	26	4.05
296	Far Cry 4	11	2014	7	6	4.03
297	Star Fox 64	12	1997	7	1	4.03
298	Minecraft	11	2014	6	16	4.02
299	Golf	2	1984	1	1	4.01
300	Fallout 3	6	2008	4	7	4.01
301	Professor Layton and the Diabolical Box	4	2007	5	1	4
302	Left 4 Dead 2	5	2009	7	8	3.99
303	Namco Museum: 50th Anniversary	7	2005	6	26	3.98
304	EA Sports Active	1	2009	1	8	3.92
305	Assassin's Creed: Unity	11	2014	9	6	3.92
306	Donkey Kong Land	3	1994	2	1	3.91
307	Tony Hawk's Underground	7	2003	1	5	3.9
308	Assassin's Creed IV: Black Flag	6	2013	9	6	3.89
309	Monster Hunter 4 Ultimate	10	2014	4	1	3.89
310	MotorStorm	6	2006	3	4	3.88
311	The Elder Scrolls V: Skyrim	15	2011	4	7	3.88
312	Tekken 5	7	2005	10	26	3.87
313	Dragon Warrior III	2	1988	4	25	3.87
314	Sports Champions	6	2010	1	4	3.87
315	NBA 2K16	11	2015	1	3	3.85
316	World Soccer Winning Eleven 8 International	7	2004	1	15	3.85
317	Flash Focus: Vision Training in Minutes a Day	4	2007	6	1	3.84
318	Namco Museum Vol.1	13	1995	6	4	3.84
319	The Legend of Zelda: Link's Awakening	3	1992	9	1	3.83
320	Mario & Luigi: Bowser's Inside Story	4	2009	4	1	3.83
321	Big Brain Academy: Wii Degree	1	2007	6	1	3.82
322	Nintendogs + cats	10	2011	8	1	3.81
323	Batman: Arkham Knight	11	2015	9	20	3.79
324	Mario & Sonic at the London 2012 Olympic Games	1	2011	1	9	3.78
325	LEGO Indiana Jones: The Original Adventures	5	2008	9	5	3.78
326	Resident Evil Director's Cut	13	1996	9	19	3.77
327	Ratchet & Clank: Size Matters	17	2007	2	4	3.77
328	Just Dance 2014	1	2013	6	6	3.76
329	The Sims: Unleashed	15	2002	8	8	3.76
330	Super Paper Mario	1	2007	2	1	3.76
331	Harry Potter and the Sorcerer's Stone	13	2001	9	8	3.73
332	The Witcher 3: Wild Hunt	11	2015	4	26	3.73
333	Resident Evil 3: Nemesis	13	1999	9	22	3.72
334	Spyro: Year of the Dragon	13	2000	2	4	3.71
335	FIFA Soccer 2005	7	2004	1	8	3.7
336	Pokémon Trading Card Game	3	1998	12	1	3.7
337	Battlefield 4	6	2013	7	8	3.69
338	MySims	4	2007	8	8	3.69
339	Friend Collection	4	2009	6	1	3.67
340	Tony Hawk's Pro Skater 4	7	2002	1	5	3.67
341	Midnight Club 3: DUB Edition	17	2005	3	3	3.66
342	Banjo-Kazooie	12	1998	2	1	3.65
343	SOCOM: U.S. Navy SEALs	7	2002	7	4	3.65
344	Guitar Hero: World Tour	1	2008	6	5	3.65
345	Gran Turismo 6	6	2013	3	4	3.64
346	Jak and Daxter: The Precursor Legacy	7	2001	2	4	3.64
347	Pokemon Snap	12	1999	8	1	3.63
348	FIFA Soccer 10	6	2009	1	8	3.63
349	Pro Evolution Soccer 2008	7	2007	1	15	3.63
350	Call of Duty: Ghosts	11	2013	7	5	3.63
351	Resident Evil 4	7	2005	9	13	3.62
352	Tom Clancy's The Division	11	2016	7	6	3.61
353	Star Wars: Battlefront	7	2004	7	18	3.61
354	Doom II: Hell on Earth	15	1994	7	19	3.61
355	The Simpsons: Road Rage	7	2001	3	8	3.61
356	Cooking Mama 2: Dinner With Friends	4	2007	8	12	3.61
357	Luigi's Mansion	19	2001	9	1	3.6
358	Star Wars: Battlefront II	7	2005	7	18	3.59
359	WWF SmackDown!	13	2000	10	29	3.58
360	Croc: Legend of the Gobbos	13	1997	2	30	3.56
361	Grand Theft Auto: Liberty City Stories	7	2006	9	3	3.54
362	The Getaway	7	2002	9	4	3.54
363	Tomb Raider III: Adventures of Lara Croft	13	1997	9	22	3.54
364	James Bond 007: Agent Under Fire	7	2001	7	8	3.53
365	LEGO Star Wars: The Video Game	7	2005	9	22	3.53
366	Battlefield 4	5	2013	7	8	3.53
367	FIFA Soccer 11	5	2010	1	8	3.53
368	Rugrats in Paris: The Movie	13	2000	9	29	3.52
369	Spyro 2: Ripto's Rage!	13	1999	2	4	3.52
370	Left 4 Dead	5	2008	7	8	3.52
371	Mario & Sonic at the Olympic Winter Games	4	2009	1	9	3.52
372	Resident Evil 5	5	2009	9	13	3.51
373	Donkey Kong Country 3: Dixie Kong's Double Trouble!	8	1996	2	1	3.51
374	Assassin's Creed: Brotherhood	5	2010	9	6	3.5
375	Kung Fu	2	1985	9	1	3.5
376	Batman: Arkham Asylum	5	2009	9	22	3.5
377	Clubhouse Games	4	2006	6	1	3.5
378	FIFA Soccer 2004	7		1	8	3.49
379	Star Wars Battlefront (2015)	18	2015	7	8	3.49
380	Battlefield: Bad Company 2	5	2010	7	8	3.48
381	Guitar Hero: On Tour	4	2008	6	5	3.48
382	Assassin's Creed: Unity	18	2014	9	6	3.46
383	Far Cry 3	6	2012	7	6	3.45
384	Monster Hunter 4	10	2013	4	13	3.44
385	Borderlands	5	2009	7	3	3.44
386	Tekken 4	7	2002	10	26	3.44
387	Battlefield 4	11	2013	7	8	3.43
388	LittleBigPlanet 2	6	2011	2	4	3.42
389	Grand Theft Auto 2	13	1998	9	3	3.42
390	Final Fantasy III	8	1994	4	10	3.42
391	Spider-Man 2	7	2004	9	5	3.41
392	F-1 Race	3	1990	3	1	3.41
393	FIFA Soccer 2003	7	2002	1	8	3.4
394	Crash Bash	13	2000	6	4	3.39
395	LEGO Batman: The Videogame	5	2008	9	20	3.38
396	Metal Gear Solid V: The Phantom Pain	11	2015	9	15	3.38
397	The Legend of Zelda: Spirit Tracks	4	2009	9	1	3.38
398	WWF War Zone	13	1998	10	31	3.36
399	The Legend of Zelda: Majora's Mask	12	2000	9	1	3.36
400	Professor Layton and the Unwound Future	4	2008	5	1	3.36
401	Rugrats: Search For Reptar	13	1998	11	29	3.34
402	Assassin's Creed IV: Black Flag	5	2013	9	6	3.34
403	English Training: Have Fun Improving Your Skills!	4	2006	6	1	3.33
404	James Bond 007: Nightfire	7	2002	7	8	3.33
405	Ratchet & Clank	7	2002	2	4	3.33
406	Mario Party 9	1	2012	6	1	3.32
407	Star Wars Episode III: Revenge of the Sith	7	2005	9	18	3.32
408	Max Payne	7	2001	7	3	3.31
409	The Lord of the Rings: The Return of the King	7	2003	9	8	3.28
410	Assassin's Creed Syndicate	11	2015	9	6	3.28
411	Destiny	18	2014	7	5	3.28
412	True Crime: Streets of LA	7	2003	9	5	3.27
413	Wii Music	1	2008	6	1	3.27
414	Gran Turismo (PSP)	17	2009	3	4	3.27
415	Monster Hunter X	10	2015	9	13	3.26
416	Tekken	13	1995	10	4	3.24
417	FIFA 16	18	2015	1	8	3.23
418	L.A. Noire	6	2011	11	3	3.23
419	Madden NFL 16	11	2015	1	8	3.22
420	Yokai Watch 2 Ganso/Honke	10	2014	4	1	3.22
421	007: Tomorrow Never Dies	13	1999	7	8	3.21
422	Baseball	2	1983	1	1	3.2
423	Killer Instinct	8	1995	10	1	3.2
424	WWF SmackDown! 2: Know Your Role	13	2000	10	29	3.2
425	Crisis Core: Final Fantasy VII	17	2007	4	17	3.19
426	God of War: Chains of Olympus	17	2008	9	4	3.19
427	Dragon Quest VI: Maboroshi no Daichi	8	1995	4	25	3.19
428	Dance Central	5	2010	6	32	3.19
429	Enter the Matrix	7	2003	9	11	3.18
430	Super Mario Maker	20	2015	2	1	3.18
431	Fallout: New Vegas	6	2010	4	7	3.17
432	LEGO Batman: The Videogame	1		9	20	3.17
433	Rhythm Heaven	4	2008	6	1	3.17
434	Ace Combat 04: Shattered Skies	7	2001	8	16	3.17
435	Club Penguin: Elite Penguin Force	4	2008	11	33	3.16
436	Animal Crossing	19	2001	8	1	3.15
437	LEGO Batman: The Videogame	4	2008	9	20	3.15
438	Sonic Rush	4	2005	2	9	3.15
439	Resident Evil 6	6	2012	7	13	3.15
440	Halo: The Master Chief Collection	18	2014	7	2	3.15
441	FIFA Soccer 08	7	2007	1	8	3.14
442	Spider-Man	13	2000	9	5	3.13
443	Need for Speed III: Hot Pursuit	13	1998	3	8	3.12
444	Star Wars Episode I Racer	12	1999	3	1	3.12
445	Personal Trainer: Cooking	4	2006	6	1	3.12
446	The Elder Scrolls IV: Oblivion	6	2007	4	6	3.12
447	Dragon Warrior IV	2	1990	4	25	3.12
448	Heavy Rain	6	2010	11	4	3.12
449	Mass Effect 2	5	2010	4	8	3.11
450	FIFA 15	5	2014	1	8	3.11
451	Dragon Ball Z: Budokai	7	2002	10	11	3.09
452	Madden NFL 2002	7	2001	1	8	3.08
453	World Class Track Meet	2	1986	1	26	3.08
454	Borderlands 2	5	2012	7	3	3.07
455	The Legend of Zelda: A Link Between Worlds	10	2013	9	1	3.07
456	Donkey Kong	3	1994	2	1	3.07
457	The Sims: Vacation	15	2002	8	8	3.07
458	Mass Effect 3	5	2012	4	8	3.07
459	Kung Fu Panda	5	2008	9	5	3.05
460	Far Cry 3	5	2012	7	6	3.04
461	Epic Mickey	1	2010	2	33	3.04
462	Saints Row 2	5	2008	9	29	3.03
463	Rayman	13	1995	2	6	3.03
464	Killzone 2	6	2009	7	4	3.02
465	Tom Clancy's Splinter Cell	14	2002	9	6	3.02
466	Mike Tyson's Punch-Out!!	2	1987	10	1	3.02
467	WWE SmackDown! Shut Your Mouth	7	2002	1	29	3.02
468	Gears of War: Ultimate Edition	18	2015	7	2	3
469	NBA 2K13	5	2012	1	3	3
470	Dragon Ball Z: Budokai Tenkaichi 3	7	2007	10	11	3
471	wwe Smackdown vs. Raw 2006	7		10	34	3
472	Middle-Earth: Shadow of Mordor	11	2014	9	20	2.99
473	Star Fox	8	1993	7	1	2.99
474	The Sims: Livin Large	15	2000	6	8	2.99
475	World Soccer Winning Eleven 6 International	7	2002	1	15	2.99
476	Devil May Cry	7	2001	9	13	2.99
477	Animal Crossing: Happy Home Designer	10	2015	8	1	2.98
478	Battlefield: Bad Company 2	6	2010	7	8	2.97
479	The Sims 4	15	2014	8	8	2.97
480	Star Wars: The Old Republic	15	2011	4	8	2.97
481	Sonic Heroes	7	2003	2	9	2.96
482	Kirby Super Star Ultra	4	2008	2	1	2.96
483	Hitman 2: Silent Assassin	7	2002	9	22	2.96
484	Street Fighter IV	5	2009	10	13	2.95
485	Wave Race 64	12	1996	3	1	2.94
486	SOCOM II: U.S. Navy SEALs	7	2003	7	4	2.94
487	WWE SmackDown! vs. RAW 2006	7	2005	10	29	2.94
488	inFAMOUS	6	2009	9	4	2.94
489	Pac-Man Collection	9	2001	5	11	2.94
490	Mass Effect	5	2007	4	2	2.93
491	WarioWare: Smooth Moves	1	2006	5	1	2.92
492	Cooking Mama: Cook Off	1	2007	8	12	2.91
493	Super Mario World 2: Yoshi's Island	9	2002	2	1	2.91
494	FIFA 14	11	2013	1	8	2.9
495	Titanfall	18	2014	7	8	2.9
496	Sonic Mega Collection Plus	7	2004	6	9	2.9
497	Sega Superstars Tennis	5	2008	1	9	2.9
498	World Soccer Winning Eleven 7 International	7	2003	1	15	2.9
499	Need for Speed: Most Wanted	6	2012	3	8	2.89
500	Hot Shots Golf 3	7	2001	1	4	2.89
501	Call of Duty: Finest Hour	7	2004	7	5	2.89
502	Zumba Fitness 2	1	2011	1	35	2.88
503	Syphon Filter	13	1999	7	4	2.88
504	Imagine: Babyz	4	2007	8	6	2.88
505	Colin McRae Rally	13	1998	3	36	2.87
506	Call of Duty: Ghosts	18	2013	7	5	2.86
507	Madden NFL 13	5	2012	1	8	2.86
508	The Elder Scrolls III: Morrowind	14	2002	4	6	2.86
509	Mortal Kombat	6	2011	10	20	2.85
510	F-Zero	8	1990	3	1	2.85
511	Yoshi's Story	12	1997	2	1	2.85
512	Command & Conquer: Red Alert	15	1996	12	19	2.85
513	Skylanders: Spyro's Adventure	1	2011	9	5	2.85
514	FIFA 16	6	2015	1	8	2.85
515	Assassin's Creed: Brotherhood	6	2010	9	6	2.84
516	BioShock	5	2007	7	3	2.83
517	Madden NFL 10	5	2009	1	8	2.83
518	Medal of Honor	6	2010	7	8	2.83
519	WWE SmackDown! vs. Raw	7	2002	10	29	2.83
520	Metroid Prime	19	2002	7	1	2.82
521	Finding Nemo	9	2003	9	29	2.82
522	Myst	15	1994	11	37	2.81
523	Need for Speed: Hot Pursuit	6	2010	3	8	2.81
524	Imagine: Fashion Designer	4	2007	8	6	2.81
525	WWE SmackDown! Here Comes the Pain	7	2003	10	29	2.8
526	Star Wars: The Force Unleashed	5	2008	9	18	2.8
527	Yoshi's Island DS	4	2006	2	1	2.8
528	Hot Shots Golf	13	1997	1	4	2.79
529	Killzone 3	6	2011	7	4	2.79
530	A Bug's Life	13	1998	2	4	2.79
531	WWF SmackDown! Just Bring It	7	2001	10	29	2.79
532	Dragon Quest V: Tenkuu no Hanayome	8	1992	4	25	2.79
533	Mortal Kombat Trilogy	13	1996	10	14	2.79
534	Battlefield 3	15	2011	7	8	2.79
535	NBA Street	7	2001	1	8	2.79
536	Professor Layton and the Last Specter	4	2009	5	1	2.79
537	Monster Hunter Tri	10	2011	4	1	2.79
538	Jak II	7	2003	2	4	2.78
539	inFAMOUS: Second Son	11	2014	9	4	2.78
540	Ratchet & Clank: Going Commando	7	2003	2	4	2.78
541	Tekken 6	6	2009	10	26	2.78
542	The Sims	7	2003	8	8	2.77
543	Sonic and the Secret Rings	1	2007	2	9	2.77
544	Saints Row: The Third	5	2011	9	29	2.77
545	Missile Command	16	1980	7	11	2.76
546	Mario Paint	8	1992	6	1	2.75
547	Assassin's Creed IV: Black Flag	11	2013	9	6	2.74
548	Pokémon Stadium 2	12	2000	12	1	2.73
549	Metroid	2	1986	9	1	2.73
550	L.A. Noire	5	2011	11	3	2.72
551	Call of Duty 3	5	2006	7	5	2.71
552	The Legend of Zelda: A Link to the Past	9	2002	9	1	2.7
553	Onimusha: Warlords	7	2001	9	19	2.7
554	Mortal Kombat X	11	2015	10	20	2.7
555	Mario Party	12	1998	6	1	2.7
556	Madden NFL 12	5	2011	1	8	2.69
557	LEGO Star Wars II: The Original Trilogy	7	2006	9	18	2.69
558	Madden NFL 11	5	2010	1	8	2.69
559	Mario vs. Donkey Kong: Mini-Land Mayhem!	4	2010	5	1	2.69
560	Skate 3	5	2010	1	8	2.68
561	Burnout 3: Takedown	7	2004	3	8	2.68
562	Yokai Watch 2 Shinuchi	10	2014	4	38	2.68
563	Need for Speed: Shift	6	2009	3	8	2.68
564	Final Fantasy XIII-2	6	2011	4	17	2.68
565	Mortal Kombat	21	1992	10	39	2.67
566	Call Of Duty 2: Big Red One	7	2005	7	5	2.67
567	Guitar Hero: World Tour	5	2008	6	5	2.67
568	Medal of Honor	13	1998	7	8	2.67
569	Fable	14	2004	4	2	2.66
570	Hannah Montana	4	2006	9	33	2.65
571	Tom Clancy's Splinter Cell	7	2003	9	6	2.65
572	Skylanders Giants	1	2012	9	5	2.65
573	Medal of Honor Heroes	17	2006	7	8	2.65
574	Super Mario Bros.: The Lost Levels	2	1986	2	1	2.65
1719	Spore	15	2008	12	8	1.17
575	Star Wars: Shadows of the Empire	12	1996	9	1	2.65
576	LEGO Star Wars: The Complete Saga	5	2007	9	18	2.64
577	Midnight Club: Street Racing	7	2000	3	3	2.63
578	Pac-Man: Adventures in Time	17	2006	10	4	2.63
579	Halo Wars	5	2009	12	2	2.63
580	God of War Collection	6	2009	9	4	2.63
581	ESPN NFL 2K5	7	2004	1	9	2.62
582	Mario Strikers Charged	1	2007	1	1	2.62
583	Medal of Honor	5	2010	7	8	2.62
584	FIFA Soccer 10	5	2009	1	8	2.62
585	NBA 2K12	5	2011	1	3	2.62
586	Style Savvy	4	2008	8	1	2.61
587	Harry Potter and the Chamber of Secrets	7	2002	9	8	2.61
588	Super Mario All-Stars: Limited Edition	1	2010	2	1	2.6
589	Streets of Rage	21	1990	9	9	2.6
590	FIFA Soccer 09	6	2008	1	8	2.59
591	Ratchet & Clank Future: Tools of Destruction	6	2007	2	4	2.59
592	NBA Live 2005	7	2004	1	8	2.59
593	LittleBigPlanet	17	2009	2	4	2.58
594	Killzone: Shadow Fall	11	2013	7	4	2.58
595	Ghostbusters: The Video Game (DS Version)	5	2009	9	3	2.58
596	Monster Hunter Freedom 2	17	2007	4	13	2.58
597	WWE SmackDown vs. RAW 2007	7	2006	10	29	2.58
598	Ratchet & Clank: Up Your Arsenal	7	2004	2	4	2.57
599	Art Academy	4	2010	6	1	2.57
600	Dragon Age: Origins	5	2009	4	8	2.57
601	Madden NFL 08	7	2007	1	8	2.57
602	Sonic Adventure 2 Battle	19	2001	2	9	2.56
603	Dragon Warrior II	2	1987	4	25	2.56
604	Madden NFL 13	6	2012	1	8	2.56
605	Pokémon Colosseum	19	2003	4	1	2.54
606	Deca Sports	1	2008	1	15	2.54
607	Madden NFL 09	5	2008	1	8	2.54
608	Space Invaders	16		7	11	2.53
609	Crazy Taxi	7	2001	3	31	2.52
610	Perfect Dark	12	2000	9	1	2.52
611	Game Party	1	2007	6	40	2.52
612	Dragon Warrior	2	1986	4	13	2.52
613	Tomb Raider (2013)	6	2013	9	17	2.51
614	Marvel: Ultimate Alliance	5	2006	4	5	2.5
615	PES 2009: Pro Evolution Soccer	7	2008	1	15	2.5
616	Mario Party 2	12	1999	6	1	2.5
617	Saints Row: The Third	6	2011	9	29	2.49
618	Rockstar Games Double Pack: Grand Theft Auto III & Grand Theft Auto Vice City	14	2003	9	3	2.49
619	LEGO Harry Potter: Years 1-4	1	2010	9	20	2.49
620	Mortal Kombat: Deadly Alliance	7	2002	10	40	2.49
621	Resistance 2	6	2008	7	4	2.48
622	Pure	5	2008	3	33	2.48
623	Tomb Raider: The Last Revelation	13	1998	9	22	2.48
624	NBA 2K13	6	2012	1	3	2.48
625	Rock Band	5		6	8	2.48
626	NBA 2K14	5	2013	1	3	2.47
627	Mario Party 4	19	2002	6	1	2.47
628	uDraw Studio	1	2010	6	29	2.46
629	Midnight Club: Los Angeles	6	2008	3	3	2.45
630	Final Fantasy V	8	1992	4	10	2.45
631	Final Fantasy Tactics	13	1997	4	10	2.45
632	Twisted Metal 2	13	1996	3	4	2.44
633	Halo: Combat Evolved Anniversary	5	2011	7	2	2.44
634	Need for Speed Carbon: Own the City	17	2006	3	8	2.44
635	The Sims: Bustin' Out	7	2003	8	8	2.43
636	Riven: The Sequel to Myst	15	1997	11	37	2.43
637	Tom Clancy's Rainbow Six: Vegas 2	5	2008	7	6	2.42
638	Sonic Adventure	22	1998	2	9	2.42
639	Ice Hockey	2	1988	1	1	2.42
640	pro evolution soccer 2011	6	2010	1	15	2.42
641	Dragon Ball Z: Budokai 2	7	2003	10	11	2.41
642	ATV Offroad Fury	7	2001	3	4	2.41
643	Dino Crisis	13	1998	9	13	2.41
644	Minecraft	18	2014	6	2	2.41
645	Need for Speed: ProStreet	7	2007	3	8	2.41
646	Madden NFL 16	18	2015	1	8	2.4
647	Tetris Plus	13	1996	5	41	2.4
648	Pro Wrestling	2	1987	10	1	2.4
649	Theme Hospital	15	1997	12	8	2.4
650	Frogger's Adventures: Temple of the Frog	9		11	15	2.39
651	Need for Speed (2015)	11	2015	3	8	2.39
652	Zumba Fitness	5	2010	1	12	2.39
653	LEGO Indiana Jones: The Original Adventures	1		9	18	2.39
655	Monopoly	15	1994	6	28	2.39
656	Batman: Arkham Origins	6	2013	9	20	2.39
657	Dead Island	5	2011	9	42	2.39
658	Guitar Hero	7	2005	6	23	2.38
659	LEGO Star Wars: The Complete Saga	6	2007	9	18	2.38
660	Kinect: Disneyland Adventures	5	2011	6	2	2.38
661	WCW/nWo Revenge	12	1998	10	29	2.38
662	Bloodborne	11	2015	9	4	2.38
663	NBA 2K15	11	2014	1	3	2.38
664	Madden NFL 11	6	2010	1	8	2.38
665	Yu-Gi-Oh! The Duelists of the Roses	7	2001	6	15	2.38
666	Madden NFL 08	5	2007	1	8	2.37
667	Half-Life 2	15	2004	7	24	2.37
668	The Incredibles	7	2004	9	29	2.37
669	Tony Hawk's Underground 2	7	2004	1	5	2.37
670	Madden NFL 10	6	2009	1	8	2.37
671	Kinect Sports: Season Two	5	2011	1	2	2.36
3048	NHL 13	5	2012	1	8	0.67
672	Kirby's Dream Land 2	3	1995	2	1	2.36
673	LEGO Harry Potter: Years 1-4	4	2010	9	20	2.35
674	Donkey Kong Land II	3	1996	2	1	2.35
675	Dragon Warrior Monsters	3	1998	4	22	2.35
676	Midnight Club: Los Angeles	5	2008	3	3	2.35
677	Skylanders SWAP Force	1	2013	2	5	2.34
678	WWE SmackDown vs Raw 2008	7	2007	10	29	2.34
679	My Fitness Coach	1	2008	1	6	2.34
680	Resident Evil - Code: Veronica X	7	2001	9	13	2.34
681	The Sims 3	5	2010	8	8	2.33
682	The Legend of Zelda: Majora's Mask 3D	10	2015	9	1	2.32
683	NBA 2K16	18	2015	1	3	2.32
684	Just Dance Kids	1	2010	6	6	2.32
685	Mario Tennis	12	2000	1	1	2.32
686	Grand Theft Auto	13	1997	9	3	2.32
687	James Bond 007: Everything or Nothing	7	2004	7	8	2.31
688	WarioWare Touched!	4	2004	5	1	2.31
689	Need For Speed: High Stakes	13	1999	3	8	2.31
690	Chrono Trigger	8	1995	4	10	2.31
691	Cool Boarders 3	13	1998	1	43	2.31
692	LEGO Marvel Super Heroes	5	2013	9	20	2.3
693	Guild Wars 2	15	2012	9	44	2.3
694	Pokemon Ranger: Shadows of Almia	4	2008	4	1	2.3
695	Dead Island	6	2011	9	42	2.29
696	Tomb Raider II	15	1997	9	22	2.29
697	God of War: Ascension	6	2013	9	4	2.29
698	Need for Speed Underground 2	14	2004	3	8	2.28
699	Pro Evolution Soccer 2010	6	2009	1	15	2.28
700	Just Dance 2015	1	2014	6	6	2.28
701	Yokai Watch Busters	10	2015	9	38	2.28
702	Mario Bros.	2	1983	2	1	2.28
703	FIFA Soccer 09	7	2008	1	8	2.28
704	Star Wars: The Force Unleashed	6	2008	9	18	2.28
705	Borderlands 2	6	2012	7	3	2.28
706	TOCA Touring Car Championship	13	1997	3	36	2.28
707	Paper Mario: Sticker Star	10	2012	4	1	2.27
708	Sonic's Ultimate Genesis Collection	6	2009	6	9	2.27
709	Super Monkey Ball: Banana Blitz	1	2006	6	9	2.27
710	Kirby: Nightmare in Dream Land	9	2002	2	1	2.27
711	Wario Land 4	9	2001	2	1	2.26
712	Guitar Hero III: Legends of Rock	6	2007	6	5	2.26
713	Call of Duty 3	1		7	5	2.26
714	Resident Evil 4	1	2007	9	13	2.26
715	Minecraft	23	2014	6	16	2.25
716	Onimusha 2: Samurai's Destiny	7	2002	11	13	2.25
717	Cool Boarders 2	13	1997	1	45	2.25
718	Paper Mario: The Thousand-Year Door	19	2004	4	1	2.25
719	Madden NFL 12	6	2011	1	8	2.25
720	Monster Hunter Tri	1	2009	4	1	2.25
721	Dissidia: Final Fantasy	17	2008	10	17	2.25
722	Sonic Advance	9	2001	2	9	2.24
723	Spyro: Season of Ice	9	2001	2	24	2.23
724	Teenage Mutant Ninja Turtles II: The Arcade Game	2	1990	9	15	2.23
725	LEGO Indiana Jones: The Original Adventures	4	2008	9	5	2.23
726	Dance Dance Revolution X2	7	2009	8	15	2.23
727	New Super Luigi U	20	2013	2	1	2.22
728	Prince of Persia: The Sands of Time	7	2003	9	6	2.22
729	Scribblenauts	4	2009	5	20	2.22
730	The Legend of Zelda: Link's Awakening DX	3	1998	11	1	2.22
731	Need for Speed: Hot Pursuit	5	2010	3	8	2.22
732	BioShock 2	5	2010	7	3	2.21
733	Assassin's Creed IV: Black Flag	18	2013	9	6	2.21
734	Devil May Cry 3: Dante's Awakening Special Edition	7	2006	9	13	2.21
735	Rock Band 2	5	2008	6	8	2.2
736	Frogger	16	1981	9	46	2.2
737	Guitar Hero II	5	2007	6	5	2.2
738	Wario Land 3	3	2000	2	1	2.2
739	Pro Yakyuu Family Stadium	2	1986	1	26	2.2
740	Sonic Unleashed	1	2008	2	9	2.2
741	High School Musical: Makin' the Cut!	4	2007	5	33	2.2
742	Pro Evolution Soccer 2012	6	2011	9	15	2.19
743	Saints Row	5	2006	9	29	2.19
744	Star Wars: Knights of the Old Republic	14	2003	4	5	2.19
745	Kirby's Pinball Land	3	1992	6	1	2.19
746	Donkey Kong Country	3	2000	2	1	2.19
747	Hitman: Absolution	6	2012	9	17	2.19
748	Yu-Gi-Oh: Duel Monsters 4	3	2000	4	15	2.18
749	ATV Offroad Fury 2	7	2002	3	29	2.18
750	Forza Motorsport 5	18	2013	3	2	2.18
751	Madden NFL 25	5	2013	1	8	2.18
752	Pokemon Ranger	4	2006	4	1	2.18
753	Mario & Luigi: Superstar Saga	9	2003	4	1	2.17
754	Final Fantasy XIII	5	2010	4	17	2.17
755	Star Wars: Rogue Squadron	12	1998	8	1	2.17
756	Tennis	2	1984	1	1	2.17
757	The Sims: House Party	15	2001	8	8	2.16
758	Your Shape featuring Jenny McCarthy	1	2009	1	6	2.16
759	Syphon Filter 2	13	2000	7	4	2.15
760	Tom Clancy's Rainbow Six: Siege	11	2015	7	6	2.15
761	Volleyball	2	1987	1	1	2.15
762	FIFA 15	18	2014	1	8	2.15
763	Call of Duty: Roads to Victory	17	2007	7	5	2.14
764	Super Mario RPG: Legend of the Seven Stars	8	1996	4	1	2.14
765	Mahjong	2	1983	6	1	2.14
766	R.C. Pro-Am	2	1988	3	1	2.14
767	SimCity 2000	15	1992	8	47	2.14
768	Demon Attack	16	1981	7	48	2.13
769	Dance Dance Revolution Extreme	7	2004	8	15	2.13
770	Tetris DS	4	2006	5	1	2.13
771	Final Fantasy Tactics Advance	9	2003	4	10	2.13
772	Far Cry: Primal	11	2016	9	6	2.13
773	Toy Story 3: The Video Game	4	2010	9	33	2.12
774	Final Fantasy III	4	2006	4	17	2.12
775	Kirby's Epic Yarn	1	2010	2	1	2.12
776	Project Gotham Racing	14	2001	3	2	2.12
777	Golf	3	1989	1	1	2.12
778	NBA 2K12	6	2011	1	3	2.11
779	Borderlands	6	2009	7	3	2.11
780	Tony Hawk's Pro Skater	12	2000	1	5	2.11
781	PES 2009: Pro Evolution Soccer	6	2008	1	15	2.11
782	Need for Speed: Hot Pursuit 2	7	2002	3	8	2.11
783	Mario Sports Mix	1	2010	1	1	2.11
784	Rock Band	1		6	32	2.11
785	Dynasty Warriors 4	7	2003	9	49	2.11
786	Mortal Kombat	5	2011	10	20	2.11
787	Parasite Eve	13	1998	4	10	2.1
788	Scooby-Doo! Night of 100 Frights	7	2002	2	29	2.1
789	Project Gotham Racing (JP weekly sales)	14	2002	9	2	2.1
790	Need for Speed: Most Wanted 5-1-0	17	2005	3	8	2.1
791	Portal 2	5	2011	7	50	2.1
792	Devil May Cry 3: Dante's Awakening	7	2005	9	13	2.09
793	Derby Stallion	13	1997	1	51	2.09
794	Dead Rising	5	2006	9	13	2.09
795	Finding Nemo	7	2003	9	29	2.09
796	NBA 2K11	5	2010	9	3	2.09
797	Wipeout: The Game	1	2009	6	52	2.09
798	The Sims 2: Pets	4	2006	8	8	2.09
799	Battlefield: Hardline	11	2015	7	8	2.09
800	Metal Gear Solid: Peace Walker	17	2010	9	15	2.09
801	World of Warcraft: Cataclysm	15	2010	4	5	2.08
802	Tetris Worlds	7	2002	5	29	2.08
803	Need For Speed: Undercover	6	2008	3	8	2.08
804	Dance Dance Revolution: Hottest Party	1	2007	8	15	2.08
805	Mario Party 5	19	2003	6	1	2.08
806	Ghostbusters: The Video Game (DS Version)	6	2010	9	3	2.08
807	Sim Theme Park	15	1998	12	8	2.08
808	Warcraft: Orcs & Humans	15	1994	12	5	2.08
809	Skate 3	6	2010	1	8	2.08
810	Spec Ops: Airborne Commando	13	2002	7	3	2.07
811	Kingdom Hearts: Birth by Sleep	17	2010	4	17	2.07
812	UFC 2009 Undisputed	5	2009	10	29	2.07
813	Dark Souls	6	2011	4	26	2.07
814	Yu-Gi-Oh! The Eternal Duelist Soul	9	2001	12	15	2.07
815	Need for Speed: ProStreet	5	2007	3	8	2.06
816	The Sims 3	6	2010	8	8	2.06
817	Tom Clancy's Splinter Cell: Conviction	5	2010	9	6	2.06
818	Pokemon Mystery Dungeon: Red/Blue Rescue Team	9	2005	4	1	2.06
819	The Incredibles	9	2004	9	29	2.06
820	R4: Ridge Racer Type 4	13	1998	3	26	2.06
821	SoulCalibur II	7	2003	10	26	2.06
822	Mario & Luigi: Dream Team	10	2013	4	1	2.06
823	Need for Speed: ProStreet	6	2007	3	8	2.05
824	Carnival Games	4	2008	6	3	2.05
825	NBA 2K14	6	2013	1	3	2.05
826	Pokémon Mystery Dungeon: Blue Rescue Team	4	2005	4	1	2.05
827	Sonic Mega Collection	19	2002	6	53	2.05
828	Diablo III	6	2013	4	5	2.05
829	NBA Jam	21	1992	1	39	2.05
830	PGR4 - Project Gotham Racing 4	5	2007	3	2	2.05
831	Kingdom Hearts 358/2 Days	4	2009	4	17	2.04
832	Dance Central 2	5	2011	6	2	2.04
833	Rayman Raving Rabbids: TV Party	1	2008	6	6	2.04
834	SOCOM: U.S. Navy SEALs: Combined Assault	7	2006	7	4	2.04
835	Peter Jackson's King Kong: The Official Game of the Movie	7	2005	9	6	2.04
836	Donkey Kong Country	9	2003	2	1	2.04
837	Need for Speed: The Run	6	2011	9	8	2.04
838	Madden NFL 15	11	2014	1	8	2.03
839	1080°: TenEighty Snowboarding	12	1998	1	1	2.03
840	Just Dance 3	5	2011	6	6	2.03
841	NBA Live 2004	7	2003	1	8	2.03
842	Dead Space	6	2008	9	8	2.02
843	Call of Duty 2	5	2005	7	5	2.02
844	Madden NFL 15	5	2014	1	8	2.02
845	Forza Horizon	5	2012	3	2	2.02
846	TouchMaster	4	2007	5	40	2.01
847	Tom Clancy's The Division	18	2016	7	6	2.01
848	LEGO Marvel Super Heroes	6	2013	9	20	2
849	Fire Emblem: Awakening	10	2012	4	1	2
850	DriveClub	11	2014	3	4	2
851	Super Street Fighter II	8	1993	10	1	2
852	Mortal Kombat vs. DC Universe	6	2008	10	40	2
853	Tenchu: Stealth Assassins	13	1997	9	5	1.99
854	Tennis	3	1989	1	1	1.99
855	Harry Potter and the Chamber of Secrets	9	2002	9	8	1.99
856	Harry Potter and the Chamber of Secrets	13	2002	9	8	1.98
857	SimCity	8	1991	8	1	1.98
858	Battlefield 4	18	2013	7	8	1.98
859	Resident Evil 6	5	2012	7	13	1.98
860	Dragon Age: Inquisition	11	2014	4	8	1.97
861	Sonic Classic Collection	4	2010	2	9	1.97
862	Spyro: Enter the Dragonfly	7	2002	2	21	1.97
863	Call of Duty: World at War	1	2008	7	5	1.97
864	Devil May Cry 2	7	2003	9	13	1.97
865	Burnout Paradise	6	2008	3	8	1.97
866	E.T.: The Extra Terrestrial	16	1981	9	11	1.97
867	BioShock Infinite	5	2013	7	3	1.96
868	Hot Shots Golf: Open Tee	17	2004	1	4	1.96
869	Rad Racer	2	1986	3	1	1.96
870	Soccer	2	1985	1	1	1.96
871	Kirby Squeak Squad	4	2006	2	1	1.96
872	Tom Clancy's Rainbow Six: Vegas	5	2006	7	6	1.96
873	Destiny	5	2014	7	5	1.95
874	Crash Nitro Kart	7	2003	3	24	1.95
875	Grand Theft Auto: San Andreas	14	2005	9	3	1.95
876	Star Wars: Dark Forces	15	1994	7	18	1.95
877	NBA Street Vol. 2	7	2003	1	8	1.95
878	Def Jam Vendetta	7	2003	10	8	1.94
879	FIFA Soccer 09	5	2008	1	8	1.94
880	Who wants to be a millionaire	15	1999	6	33	1.94
881	Scooby Doo and the Cyber Chase	13	2001	11	29	1.94
882	Alleyway	3	1989	5	1	1.94
883	Dragon Ball Z: Budokai 3	7	2004	10	11	1.94
884	Jet Moto 2	13	1997	3	4	1.94
885	Tom Clancy's Ghost Recon	7	2002	7	6	1.94
886	X-Men Legends	7	2004	4	5	1.93
887	Batman: Arkham Origins	5	2013	9	20	1.93
888	Guitar Hero: World Tour	6	2008	6	5	1.93
889	Mortal Kombat II	8	1993	10	31	1.93
890	Virtua Fighter 2	24	1995	10	9	1.93
891	Tetris DX	3	1998	5	1	1.93
892	Mortal Kombat vs. DC Universe	5	2008	10	40	1.93
893	Watch Dogs	6	2014	9	6	1.93
894	Mario Super Sluggers	1	2008	1	1	1.93
895	Tomb Raider (2013)	5	2013	9	17	1.92
896	The Legend of Zelda: Oracle of Ages	3	2001	9	1	1.92
897	Need for Speed: Shift	5	2009	3	8	1.92
898	Monopoly	1	2008	6	8	1.92
899	Red Faction	7	2001	7	29	1.92
900	The Sims: Makin' Magic	15	2003	8	8	1.92
901	MX Unleashed	7	2004	3	29	1.92
902	PaRappa The Rapper	13	1996	6	4	1.92
903	Toy Story Mania!	1	2009	6	33	1.92
904	Mario Party 3	12	2000	6	1	1.91
905	Star Wars: The Force Unleashed	1	2008	9	18	1.91
906	Game Party 2	1	2008	6	40	1.91
907	Destiny: The Taken King	11	2015	7	5	1.91
908	LEGO Star Wars III: The Clone Wars	1	2011	9	18	1.91
909	Star Wars Rogue Leader: Rogue Squadron II	19	2001	8	18	1.9
910	Max Payne 3	6	2012	7	3	1.9
911	Need for Speed Rivals	11	2013	3	8	1.89
912	Madden NFL 09	6	2008	1	8	1.89
913	Yokai Watch	10	2013	4	1	1.89
914	Ratchet & Clank Future: A Crack in Time	6	2009	2	4	1.88
915	Yu-Gi-Oh! Forbidden Memories	13	1999	4	15	1.88
916	Mortal Kombat: Deception	7	2004	10	40	1.88
917	Hot Shots Golf 2	13	1999	1	4	1.88
918	Medal of Honor: European Assault (All Region sales)	7	2005	7	8	1.88
919	WCW Nitro	13	1998	10	29	1.88
920	High School Musical: Sing It!	7	2007	6	33	1.87
921	Star Fox Adventures	19	2002	11	1	1.87
922	FIFA 2000	13	1998	1	8	1.87
923	Dynasty Warriors 3	7	2001	9	29	1.87
924	Donkey Kong Country Returns	10	2013	2	1	1.87
925	The Legend of Zelda: Oracle of Seasons	3	2001	11	1	1.86
926	Madden NFL 06	14	2005	1	8	1.86
927	Shrek 2	7	2004	2	5	1.86
928	The Legend of Dragoon	13	1999	4	4	1.86
929	Turok 2: Seeds of Evil	12	1997	2	31	1.86
930	SingStar	7	2004	6	4	1.86
931	LittleBigPlanet 3	11	2014	2	4	1.86
932	NBA Live 2002	7	2001	1	8	1.86
933	Phineas and Ferb	4	2009	9	33	1.86
934	Chrono Cross	13	1999	4	10	1.86
935	GoldenEye 007 (2010)	1	2010	9	5	1.86
936	Mario Party: Island Tour	10	2013	6	1	1.85
937	Jak 3	7	2004	2	4	1.85
938	Rayman Raving Rabbids 2	1	2007	6	6	1.85
939	Kingdom Hearts: Chain of Memories	9	2004	4	17	1.85
940	Pinball	2	1984	9	1	1.85
941	inFAMOUS 2	6	2011	9	4	1.85
942	Gran Turismo Concept 2001 Tokyo	7	2001	3	54	1.84
943	Demon's Souls	6	2009	4	26	1.84
944	NCAA Football 06	7	2005	1	8	1.84
945	Hey You, Pikachu!	12	1998	8	1	1.83
946	2 Games in 1: Sonic Advance & ChuChu Rocket!	9	2005	6	29	1.83
947	World of Warcraft: Mists of Pandaria	15	2012	4	5	1.83
948	Jet Moto	13	1996	3	4	1.83
949	Just Cause 3	11	2015	9	17	1.83
950	Secret of Mana	8	1993	4	10	1.83
951	The Orange Box	5	2007	7	8	1.83
952	Air Combat	13	1995	8	4	1.83
953	Kirby: Triple Deluxe	10	2014	2	1	1.82
954	Sonic & Knuckles	21	1994	2	9	1.82
955	Namco Museum	7	2001	6	26	1.82
956	The Sims: Hot Date	15	2001	8	8	1.82
957	Metroid Prime 3: Corruption	1	2007	7	1	1.82
958	Dragon Quest VI: Realms of Revelation	4	2010	4	1	1.81
959	The Evil Within	11	2014	9	7	1.81
960	DDRMAX2: Dance Dance Revolution	7	2003	8	15	1.81
961	Crazy Taxi	22	2000	3	9	1.81
962	Virtua Fighter 4	7	2002	10	9	1.81
963	Sly 2: Band of Thieves	7	2004	2	4	1.81
964	Guitar Hero: World Tour	7	2008	6	5	1.8
965	Sonic Advance 2	9	2002	2	9	1.8
966	Madden NFL 07	5	2006	1	8	1.8
967	NBA 2K11	6	2010	9	3	1.8
968	NFL GameDay 2000	13	1999	1	43	1.8
969	Call of Duty: Black Ops 3	6	2015	7	5	1.79
970	Disney's The Lion King	8	1994	2	19	1.79
971	Beyond: Two Souls	6	2013	11	4	1.79
972	Kinect Star Wars	5	2012	9	2	1.78
973	Midnight Club II	7	2003	3	3	1.78
974	Dragon Quest Monsters: Joker	4	2006	4	17	1.78
975	SpongeBob SquarePants: SuperSponge	13	2001	9	29	1.78
976	The Getaway: Black Monday	7	2004	9	4	1.78
977	Professor Layton and the Mask of Miracle	10	2011	5	1	1.78
978	Just Cause 2	6	2010	9	17	1.78
979	Dragon's Dogma	6	2012	4	13	1.78
980	The Legend of Zelda: The Wind Waker	20	2013	9	1	1.77
981	50 Cent: Bulletproof	7	2005	9	24	1.77
982	High School Musical: Sing It!	1	2007	6	33	1.77
983	Wii Party U	20	2013	6	1	1.77
984	Madden NFL 25	6	2013	1	8	1.77
985	Final Fantasy II	8	1991	4	55	1.77
986	Kirby 64: The Crystal Shards	12	2000	2	1	1.77
987	Dead or Alive 3	14	2001	10	2	1.77
988	UFC 2009 Undisputed	6	2009	10	29	1.77
989	Metroid II: Return of Samus	3	1991	11	1	1.76
990	WWF Attitude	13	1998	10	31	1.76
991	The SpongeBob SquarePants Movie	7	2004	2	29	1.76
992	Golden Sun	9	2001	4	1	1.76
993	Sonic the Hedgehog 3	21	1994	2	9	1.76
994	Kid Icarus	2	1986	2	1	1.76
995	Def Jam: Fight for NY	7	2004	10	8	1.76
996	Tom Clancy's Ghost Recon	14	2002	7	6	1.76
997	State of Emergency	7	2002	9	3	1.76
998	BioShock Infinite	6	2013	7	3	1.76
999	Hitman: Absolution	5	2012	9	17	1.76
1000	2 Games in 1 Double Pack: The Incredibles / Finding Nemo: The Continuing Adventures	9	2007	9	29	1.76
1001	Call of Duty: Black Ops 3	5	2015	7	5	1.76
1002	The Urbz: Sims in the City	7	2004	8	8	1.76
1003	FIFA Soccer 08	6	2007	1	8	1.76
1004	Star Wars: Starfighter	7	2001	8	5	1.76
1005	Madden NFL 2000	13	1998	1	8	1.75
1006	Kingdom Hearts	6	2013	4	17	1.75
1007	Star Wars: Battlefront	14	2004	7	5	1.75
1008	Pro Evolution Soccer	7	2001	1	15	1.75
1009	Crackdown	5	2007	7	2	1.75
1010	Yoshi	2	1991	5	1	1.75
1011	Disney's Aladdin	8	1993	2	13	1.75
1012	Kirby's Adventure	2	1993	2	1	1.75
1013	Cooking Mama 3: Shop & Chop	4	2009	8	12	1.75
1014	Dance Dance Revolution X	7	2008	8	15	1.75
1015	2 Games in 1: Disney Princess & The Lion King	9	2004	6	29	1.75
1016	Star Wars Episode I: The Phantom Menace	13	1999	11	18	1.74
1017	Xenosaga Episode I: Der Wille zur Macht	7	2002	4	26	1.74
1018	Portal 2	6	2011	7	56	1.74
1019	The Beatles: Rock Band	1	2009	6	32	1.74
1020	Forza Motorsport 6	18	2015	3	2	1.74
1021	Sonic Colors	1	2010	2	9	1.74
1022	Cruis'n USA	12	1996	3	1	1.74
1023	Madden NFL 99	13	1998	1	8	1.74
1024	Diablo III	11	2014	4	5	1.74
1025	Uncharted: Golden Abyss	23	2011	7	4	1.74
1026	Destiny	6	2014	7	5	1.73
1027	SSX Tricky	7	2001	1	8	1.73
1028	Overwatch	11	2016	7	5	1.73
1029	Twisted Metal III	13	1998	9	43	1.73
1030	Harry Potter and the Sorcerer's Stone	3	2001	9	8	1.73
1031	Disney Infinity	1	2013	9	33	1.73
1032	Crash Bandicoot: The Huge Adventure	9	2002	2	21	1.73
1033	Dishonored	5	2012	9	7	1.73
1034	Rockstar Games Double Pack: Grand Theft Auto III & Grand Theft Auto Vice City	7	2003	9	3	1.72
1035	The Order: 1886	11	2015	7	4	1.72
1036	The Elder Scrolls Online	11	2015	4	7	1.72
1037	Call of Duty: World at War Final Fronts	7	2008	7	5	1.72
1038	Imagine: Teacher	4	2008	8	6	1.72
1039	Call of Duty: Modern Warfare 3	15	2011	7	5	1.72
1040	Madden NFL 2005	14	2004	1	8	1.72
1041	Star Ocean: Till The End of Time	7	2003	4	6	1.72
1042	The Sims 3: Late Night Expansion Pack	15	2010	8	8	1.71
1043	Game Party 3	1	2009	5	20	1.71
1044	Toy Story 2: Buzz Lightyear to the Rescue!	13	1998	2	5	1.71
1045	Deal or No Deal	4	2007	6	52	1.71
1046	Ace Combat 5: The Unsung War	7	2004	8	16	1.71
1047	Need for Speed Underground	14	2003	3	8	1.71
1048	Kanshuu Nippon Joushikiryoku Kentei Kyoukai: Imasara Hito ni wa Kikenai Otona no Joushikiryoku Training DS	4	2006	6	1	1.71
1049	Tetris Worlds	9	2001	5	29	1.71
1050	Cabela's Big Game Hunter 2010	1	2009	1	57	1.7
1051	The Crew	11	2014	3	6	1.7
1052	FIFA Soccer 10	7	2009	1	8	1.7
1053	We Ski	1	2008	1	26	1.7
1054	Personal Trainer: Math	4	2007	5	1	1.7
1055	Kirby's Return to Dreamland	1	2011	2	1	1.7
1056	Super Puyo Puyo	8	1993	5	58	1.7
1057	Ben 10: Protector of Earth	4	2007	9	59	1.7
1058	NCAA Football 07	7	2006	1	8	1.7
1059	SOCOM 3: U.S. Navy SEALs	7	2005	7	4	1.69
1060	NBA 2K15	18	2014	1	3	1.69
1061	Saints Row 2	6	2008	9	29	1.69
1062	Saints Row IV	5	2013	9	42	1.69
1063	Jampack Winter '99	13	1999	6	4	1.69
1064	Dragon Age: Origins	6	2009	4	8	1.69
1065	FIFA 16	5	2015	1	8	1.69
1066	WCW vs. nWo: World Tour	12	1997	10	29	1.69
1067	WCW/NWO Thunder	13	1998	10	29	1.69
1068	Harry Potter and the Sorcerer's Stone	9	2001	9	8	1.69
1069	Need For Speed: Undercover	5	2008	3	8	1.69
1070	Dragon Ball Z: The Legacy of Goku	9	2002	4	53	1.69
1071	Sid Meier's Civilization V	15	2010	12	3	1.69
1072	Resident Evil 4	19	2005	9	13	1.69
1073	Call of Duty Black Ops: Declassified	23	2012	9	5	1.69
1074	Star Wars Battlefront: Renegade Squadron	17	2007	7	18	1.68
1075	World Championship Poker: Featuring Howard Lederer - All In	7	2006	6	60	1.68
1076	NFL GameDay 98	13	1997	1	4	1.68
1077	LEGO Batman 2: DC Super Heroes	5	2012	9	20	1.68
1078	Yoshi's Cookie	3	1992	5	1	1.68
1079	Time Crisis	13	1997	7	26	1.68
1080	The Sims: Superstar	15	2003	8	8	1.68
1081	Star Wars The Clone Wars: Lightsaber Duels	1	2008	9	18	1.68
1082	MySims	1	2007	8	8	1.68
1083	Metroid Fusion	9	2002	9	1	1.68
1084	Shaun White Snowboarding: Road Trip	1	2008	1	6	1.67
1085	SSX 3	7	2003	1	8	1.67
1086	Big Beach Sports	1	2008	1	29	1.67
1087	Madden NFL 2001	13	2000	1	8	1.67
1088	Fight Night Round 3	6	2006	10	8	1.67
1089	Knack	11	2013	2	16	1.67
1090	Star Wars: Battlefront II	14	2005	7	5	1.67
1091	Disney's DuckTales	2	1989	2	13	1.67
1092	Tony Hawk's Pro Skater 3	13	2001	1	5	1.67
1093	Monsters, Inc.	9	2001	11	29	1.67
1094	StarCraft II: Heart of the Swarm	15	2013	12	5	1.67
1095	PGR: Project Gotham Racing 2	14	2003	3	2	1.67
1096	Spy Hunter	7	2001	3	40	1.67
1097	NCAA Football 2004	7	2003	1	8	1.67
1098	SpongeBob SquarePants: Battle for Bikini Bottom	7	2003	2	29	1.67
1099	Dying Light	11	2015	9	20	1.66
1100	Heavenly Sword	6	2007	9	4	1.66
1101	Street Fighter II': Special Champion Edition	21	1992	10	9	1.66
1102	SSX	7	2000	1	8	1.66
1103	Max Payne 3	5	2012	7	3	1.66
1104	NBA Ballers	7	2004	1	40	1.66
1105	Need for Speed Carbon	5	2006	3	8	1.66
1106	NBA Live 2003	7	2002	1	8	1.66
1107	Dragon Ball Z: Budokai Tenkaichi	7	2005	10	11	1.66
1108	Ms. Pac-Man	16	1981	5	11	1.65
1109	Mario Party 6	19	2004	6	1	1.65
1110	Super Scope 6	8	1991	7	1	1.65
1111	Go Vacation	1	2011	6	26	1.65
1112	Dragon Quest V: Tenkuu no Hanayome	7	2004	4	25	1.65
1113	Army of Two	5	2008	7	8	1.65
1114	Dragon Quest IV: Chapters of the Chosen	4	2007	4	17	1.64
1115	Kirby & the Amazing Mirror	9	2004	2	1	1.64
1116	LEGO Pirates of the Caribbean: The Video Game	1	2011	9	33	1.64
1117	Dig Dug	16	1982	5	11	1.64
1118	Tom Clancy's Rainbow Six	13	1999	7	61	1.64
1119	Ghosts 'n Goblins	2	1986	9	13	1.64
1120	Tiger Woods PGA Tour 2003	7	2002	1	8	1.64
1121	NBA Live 06 (All region sales)	7	2005	1	8	1.64
1122	Prince of Persia: Warrior Within	7	2004	9	6	1.64
1123	Kinectimals	5	2010	8	2	1.64
1124	Until Dawn	11	2015	11	16	1.64
1125	ESPN NFL 2K5	14	2004	1	9	1.63
1126	Viva Pinata	5	2006	8	2	1.63
1127	Pikmin	19	2001	12	1	1.63
1128	Call of Duty: Black Ops	15		7	5	1.63
1129	Sonic Generations	6	2011	2	9	1.63
1130	Tiger Woods PGA Tour 2004	7	2003	1	8	1.63
1131	Ape Escape	13	1999	2	4	1.63
1132	NBA 2K15	5	2014	1	3	1.63
1133	NCAA Football 2005	7	2004	1	8	1.62
1134	Just Cause 2	5	2010	9	17	1.62
1135	Rock Band	6		6	8	1.62
1136	Tony Hawk's American Wasteland (Old all region sales)	7	2005	1	5	1.62
1137	Rage	5	2011	7	7	1.62
1138	Mario Hoops 3 on 3	4	2006	1	1	1.62
1139	Kirby Air Ride	19	2003	3	1	1.62
1140	Sled Storm	13	1998	3	8	1.62
1141	Pokemon Battle Revolution	1	2006	4	1	1.61
1142	NFL Street 2	7	2004	1	8	1.61
1143	Gears of War: Judgment	5	2013	7	2	1.61
1144	Baseball	3	1989	1	1	1.61
1145	Yu-Gi-Oh! Duel Monsters	3	1998	12	15	1.61
1146	Super Mario Strikers	19	2005	1	1	1.61
1147	Buzz! The Music Quiz	7	2005	6	4	1.61
1148	SpongeBob's Atlantis SquarePantis	4	2007	9	29	1.61
1149	Far Cry 4	18	2014	7	6	1.61
1150	Dance Dance Revolution: Hottest Party 2	1	2008	8	15	1.6
1151	Moshi Monsters: Moshling Zoo	4	2011	6	5	1.6
1152	Dollar Dash	7	2005	9	3	1.6
1153	Far Cry 2	5	2008	9	6	1.6
1154	F-1 World Grand Prix	12	1998	3	62	1.6
1155	River Raid	16	1981	7	5	1.6
1156	Silent Hill	13	1999	9	15	1.6
1157	Dragon Quest V: Hand of the Heavenly Bride	4	2008	4	17	1.6
1158	No Man's Sky	11	2016	9	63	1.6
1159	Sonic Heroes	19	2003	2	9	1.6
1160	ESPN NBA 2K5	7	2004	1	64	1.59
1161	Diablo	15	1996	4	5	1.59
1162	The Legend of Zelda: Twilight Princess	19	2006	9	1	1.59
1163	Soul Edge	13	1996	10	4	1.59
1164	Devil May Cry 4	6	2008	9	13	1.59
1165	Mario Bros.	16	1982	2	11	1.59
1166	Pro Evolution Soccer 2008	6	2007	1	15	1.59
1167	SoulCalibur IV	5	2008	10	6	1.59
1168	LEGO Harry Potter: Years 1-4	5	2010	9	20	1.59
1169	NASCAR 2000	13	1999	3	8	1.59
1170	Wolfenstein: The New Order	11	2014	7	7	1.58
1171	Carnival Games: Mini Golf	1	2008	1	3	1.58
1172	Guitar Hero: On Tour Decades	4	2008	6	5	1.58
1173	MySims Kingdom	4	2008	8	8	1.58
1174	Jampack Summer 2K	13	2000	6	4	1.58
1175	Need for Speed: Most Wanted	5	2012	3	8	1.58
1176	Guitar Hero 5	1	2009	6	5	1.58
1177	High School Musical 3: Senior Year	4	2008	6	33	1.58
1178	Kingdom Hearts 3D: Dream Drop Distance	10	2012	9	17	1.58
1179	Hannah Montana: Music Jam	4	2007	9	33	1.58
1180	Pokemon Mystery Dungeon: Explorers of Sky	4	2009	4	1	1.58
1181	Spyro 2: Season of Flame	9	2002	2	24	1.58
1182	Pro Evolution Soccer 2010	7	2009	1	15	1.57
1183	NCAA Football 2002	7	2001	1	8	1.57
1184	Conflict: Desert Storm	7	2002	7	65	1.57
1185	Mario Party 7	19	2005	6	1	1.57
1186	Pro Evolution Soccer 2013	6	2012	1	15	1.56
1187	Smuggler's Run	7	2000	3	3	1.56
1188	Fight Night Round 3	7	2006	10	8	1.56
1189	Donkey Kong Classics	2	1988	2	1	1.56
1190	Twisted Metal	13	1995	9	4	1.56
1191	Dark Souls III	11	2016	4	26	1.56
1192	Final Fight	8	1990	9	13	1.56
1193	Dragon Quest Monsters 2	3	2001	4	25	1.56
1194	Pokemon Pinball: Ruby & Sapphire	9	2003	6	1	1.56
1195	LEGO Marvel Super Heroes	11	2013	9	20	1.56
1196	Mafia II	5	2010	9	3	1.55
1197	Dishonored	6	2012	9	7	1.55
1198	Stuntman	7	2002	3	11	1.55
1199	Tom Clancy's Rainbow Six 3	14	2003	7	6	1.55
1200	Active Life: Outdoor Challenge	1	2008	1	11	1.55
1201	BioShock 2	6	2010	7	3	1.55
1202	007: The World is not Enough	12	2000	9	8	1.55
1203	Spider-Man 2: Enter: Electro	13	2001	9	5	1.55
1204	Watch Dogs	18	2014	9	6	1.55
1205	Star Wars: The Force Unleashed II	6	2010	9	18	1.55
1206	Ni no Kuni: Wrath of the White Witch	6	2011	4	26	1.55
1207	Command & Conquer: Tiberian Sun	15	1999	12	66	1.55
1208	LEGO Battles: Ninjago	4	2011	12	20	1.55
1209	Mario Party 10	20	2015	6	1	1.55
1210	Dead Rising 3	18	2013	9	2	1.54
1211	Resident Evil: The Umbrella Chronicles	1	2007	9	13	1.54
1212	Fire Emblem Fates	10	2015	4	1	1.54
1213	Dark Cloud	7	2000	4	4	1.54
1214	Warcraft III: The Frozen Throne	15	2003	12	5	1.54
1215	Tom Clancy's Ghost Recon Advanced Warfighter	5	2006	7	6	1.54
1216	Disney Fairies: Tinker Bell	4	2008	11	33	1.54
1217	MVP Baseball 2005	7	2005	1	8	1.54
1218	Die Hard Trilogy	13	1996	7	30	1.54
1219	Call of Duty: Black Ops II	15	2012	7	5	1.53
1220	Fight Night Round 4	6	2009	10	8	1.53
1221	MySims Kingdom	1	2008	8	8	1.53
1222	The Simpsons Game	4	2007	9	8	1.53
1223	Mortal Kombat 3	8	1994	10	31	1.53
1224	NFL GameDay 99	13	1998	1	43	1.53
1225	Call of Duty: Modern Warfare: Reflex Edition	1	2009	7	5	1.53
1226	FIFA 17	18	2016	1	8	1.53
1227	Mario Golf: Toadstool Tour	19	2003	1	1	1.53
1228	Tiger Woods 99 PGA Tour Golf	13	1997	1	8	1.53
1229	Donkey Kong Country: Tropical Freeze	20	2014	2	1	1.52
1230	Dead Space 2	5	2011	7	8	1.52
1231	Sonic Rivals 2	17	2007	3	9	1.52
1232	Knockout Kings	13	1997	10	8	1.52
1233	The Simpsons Skateboarding	7	2002	1	8	1.52
1234	NASCAR 98	13	1996	3	8	1.52
1235	F1 Race	2	1984	3	1	1.52
1236	Xevious	2	1984	7	26	1.52
1237	NASCAR 99	13	1998	3	8	1.52
1238	NBA Live 2000	13	1998	1	8	1.52
1239	Mafia II	6	2010	9	3	1.52
1240	Call of Duty 3	6	2006	7	5	1.52
1241	Super Monkey Ball 2	19	2002	5	11	1.52
1242	Pac-Man World 2	7	2002	9	26	1.51
1243	Madden NFL 15	18	2014	1	8	1.51
1244	Sonic & Sega All-Stars Racing	1	2010	3	9	1.51
1245	LEGO Star Wars III: The Clone Wars	5	2011	9	18	1.51
1246	Football Manager 2012	15	2011	1	9	1.51
1247	Puzzle & Dragons	10	2013	4	67	1.51
1248	Mega Man 2	2	1988	9	13	1.51
1249	Simpsons Wrestling	13	2001	10	8	1.51
1250	NBA Live 98	13	1997	1	8	1.51
1251	The Simpsons Game	7	2007	9	8	1.51
1252	Monopoly	13	1997	6	28	1.51
1253	SoulCalibur II	19	2003	10	26	1.5
1254	Resistance 3	6	2011	7	4	1.5
1255	Tokyo Xtreme Racer Zero	7	2000	3	68	1.5
1256	Final Fantasy XIV: A Realm Reborn	15	2010	4	17	1.5
1257	NFL Blitz	13	1998	1	40	1.5
1258	Red Faction II	7	2002	7	29	1.5
1259	Super Scribblenauts	4	2010	5	20	1.5
1260	Madden NFL 2001	7	2000	1	8	1.5
1261	WWF No Mercy	12	2000	10	29	1.5
1262	Ice Climber	2	1985	2	1	1.5
1263	Sonic CD	25	1993	2	9	1.5
1264	Ninja Hattori Kun: Ninja wa Shuugyou Degogiru no Maki	2	1986	2	69	1.5
1265	Dead Rising 2	5	2010	9	13	1.5
1266	Rock Band 2	6	2008	6	32	1.5
1267	Pac-Man World	13	1998	9	26	1.5
1268	Disney Sing It: Pop Hits	1	2009	6	33	1.49
1269	Final Fantasy: Crystal Chronicles	19	2003	4	1	1.49
1270	Medal of Honor: Frontline	14	2002	7	8	1.49
1271	Madden NFL 09	7	2008	1	8	1.49
1272	Drawn To Life: SpongeBob SquarePants Edition	4	2008	11	29	1.49
1273	Banjo-Tooie	12	2000	2	1	1.49
1274	Buzz! The BIG Quiz	7	2006	6	4	1.49
1275	007: Quantum of Solace	5	2008	9	5	1.49
1276	The Sims 3	1	2010	8	8	1.49
1277	New Play Control! Mario Power Tennis	1	2009	1	1	1.48
1278	Bratz: Forever Diamondz	4	2006	11	29	1.48
1279	Dirge of Cerberus: Final Fantasy VII	7	2006	7	17	1.48
1280	Nintendo World Cup	2	1990	1	1	1.48
1281	WWF WrestleMania 2000	12	1999	10	29	1.48
1282	Wario Land II	3	1997	2	1	1.48
1283	Mass Effect 2	6	2011	4	8	1.48
1284	Major League Baseball 2K5	7	2005	1	3	1.48
1285	Fight Night 2004	7	2004	10	8	1.48
1286	Tom Clancy's Splinter Cell: Pandora Tomorrow	14	2004	9	6	1.48
1287	Imagine: Master Chef	4	2007	8	6	1.47
1288	Assassin's Creed III: Liberation	23	2012	9	6	1.47
1289	SoulCalibur IV	6	2008	10	6	1.47
1290	Mario Golf	12	1999	9	1	1.47
1291	Disney Princess	9	2003	2	29	1.47
1292	Fight Night Round 3	5	2006	10	8	1.47
1293	Metal Gear Rising: Revengeance	6	2013	9	15	1.47
1294	Chrono Trigger	4	2008	4	17	1.47
1295	Star Wars: The Force Unleashed II	5	2010	9	18	1.47
1296	The House of the Dead 2 & 3 Return	1	2008	7	9	1.47
1297	Disney Princess: Magical Jewels	4	2007	11	33	1.47
1298	LittleBigPlanet PS Vita	23	2012	2	4	1.47
1299	Xenogears	13	1998	4	10	1.46
1300	The SpongeBob SquarePants Movie	9	2004	2	29	1.46
1301	Tom Clancy's Ghost Recon: Future Soldier	5	2012	7	6	1.46
1302	Battlefield: Bad Company	5	2008	7	8	1.46
1303	Midway Arcade Treasures	7	2003	6	40	1.46
1304	Wall-E	4	2008	2	29	1.46
1305	Triple Play 99	13		1	34	1.46
1306	Homefront	5	2011	7	29	1.46
1307	Super Monkey Ball	19	2001	5	11	1.46
1308	Donkey Kong	16	1981	2	70	1.46
1309	Mortal Kombat 4	13	1998	10	14	1.46
1310	Mario Superstar Baseball	19	2005	1	1	1.46
1311	Mass Effect 3	6	2012	4	8	1.46
1312	LEGO Batman 2: DC Super Heroes	1	2012	9	20	1.46
1313	Medal of Honor: Warfighter	6	2012	9	8	1.46
1314	WCW vs the World	13	1998	10	29	1.46
1315	SNK vs. Capcom: The Match of the Millennium	17	2006	10	9	1.46
1316	LEGO City Undercover	10	2013	2	1	1.46
1317	Onimusha 3: Demon Siege	7	2004	9	13	1.45
1318	Diablo III	5	2013	4	5	1.45
1319	Batman: Arkham Knight	18	2015	9	20	1.45
1320	BioShock	6	2008	7	3	1.45
1321	Red Dead Revolver	7	2004	7	3	1.45
1322	Anno 2070	15	2011	12	6	1.45
1323	Resident Evil: Outbreak	7	2003	9	13	1.45
1324	Smarty Pants	1	2007	6	8	1.45
1325	Tamagotchi	3	1996	8	26	1.45
1326	4 Nin uchi Mahjong	2	1984	6	1	1.45
1327	Dragon Ball Z	8	1993	10	26	1.45
1328	Game de Hakken!! Tamagotchi 2	3	1997	8	26	1.45
1329	Namco Museum 64	12	1999	6	26	1.45
1330	Hasbro Family Game Night	1	2008	5	8	1.45
1331	Dragon Quest Monsters: Joker 2	4	2010	4	17	1.45
1332	Tony Hawk's American Wasteland (Weekly american sales)	7	2005	1	5	1.45
1333	My Word Coach	4	2007	6	6	1.45
1334	Hello Kitty Party	4	2007	6	71	1.44
1335	SingStar Pop	7	2007	6	4	1.44
1336	Sonic Rivals	17	2006	3	9	1.44
1337	SimCity (2013)	15	2013	8	8	1.44
1338	Kirby Super Star	8	1996	2	1	1.44
1339	Far Cry 4	6	2014	7	6	1.44
1340	WWE SmackDown vs Raw 2008	5	2007	10	29	1.44
1341	Kinect Joy Ride	5	2010	3	2	1.44
3234	Wet	6	2009	7	7	0.63
1342	Rayman Raving Rabbids	1	2006	6	6	1.44
1343	Need for Speed Rivals	6	2013	3	8	1.44
1344	Tiger Woods PGA Tour 2005	7	2004	1	8	1.44
1345	Dead Space 2	6	2011	7	8	1.44
1346	NCAA Football 2003	7	2002	1	8	1.44
1347	Frogger 2: Swampy's Revenge	13	1999	9	28	1.43
1348	Disney Infinity	5	2013	9	33	1.43
1349	LEGO Indiana Jones 2: The Adventure Continues	1	2009	9	5	1.43
1350	Sonic's Ultimate Genesis Collection	5	2009	6	9	1.43
1351	Tiger Woods PGA Tour 09 All-Play	1	2008	1	8	1.43
1352	Disney's DuckTales	3	1988	2	13	1.43
1353	Classic NES Series: Super Mario Bros.	9	2004	2	1	1.43
1354	Triple Play 2000	13	1999	1	8	1.43
1355	Dragon Quest VII: Warriors of Eden	10	2013	4	17	1.42
1356	Cabela's Big Game Hunter	7	2002	1	5	1.42
1357	UFC Undisputed 2010	6	2010	10	29	1.42
1358	NBA Live 06 (Weekly american sales)	7	2005	1	8	1.42
1359	The Legend of Zelda: The Minish Cap	9	2004	9	1	1.42
1360	NFL Street	7	2004	1	8	1.42
1361	Sonic Generations	5	2011	2	9	1.42
1362	Super Metroid	8	1994	9	1	1.42
1363	Pro Yakyuu Family Stadium '87	2	1987	1	26	1.42
1364	Dead Space	5	2008	9	8	1.42
1365	Resident Evil (Remake)	19	2002	9	13	1.42
1366	Inazuma Eleven 2	4	2009	4	1	1.42
1367	Tomb Raider (2013)	11	2014	9	17	1.41
1368	LEGO Star Wars II: The Original Trilogy	17	2006	9	18	1.41
1369	Toy Story 3: The Video Game	1	2010	9	33	1.41
1370	Fight Night Round 4	5	2009	10	8	1.41
1371	LEGO Star Wars: The Video Game	19	2005	9	22	1.41
1372	Injustice: Gods Among Us	5	2013	10	20	1.41
1373	Madden NFL 15	6	2014	1	8	1.41
1374	Disney's The Lion King	21	1994	2	19	1.41
1375	Ridge Racer	17	2004	3	4	1.41
1376	Metroid: Other M	1	2010	9	1	1.41
1377	Knockout Kings 2000	13	1999	10	8	1.41
1378	Gran Turismo 4 Prologue	7	2003	3	4	1.41
1379	Twisted Metal: Black	7	2001	3	4	1.41
1380	NASCAR 2005: Chase for the Cup	7	2004	3	8	1.41
1381	Call of Duty: Black Ops	1	2010	7	5	1.4
1382	Spider-Man: The Movie	14	2002	9	5	1.4
1383	Need For Speed: Undercover	7	2008	3	8	1.4
1384	2Xtreme	13	1996	1	4	1.4
1385	Far Cry 2	6	2008	9	6	1.4
1386	Sonic Advance 3	9	2004	2	29	1.4
1387	Final Fantasy III	2	1990	4	10	1.4
1388	Battlefield 4	15	2013	7	8	1.4
1389	Colin McRae Rally 3	7	2002	3	36	1.4
1390	Madden NFL 2002	13	2001	1	8	1.39
1391	Doom (2016)	11	2016	7	7	1.39
1392	Final Fantasy XII: Revenant Wings	4	2007	4	17	1.39
1393	Bakugan: Battle Brawlers	4	2009	9	5	1.39
1394	Deus Ex: Human Revolution	6	2011	7	17	1.39
1395	NBA Jam	8	1994	1	31	1.39
1396	Teenage Mutant Ninja Turtles III: The Manhattan Project	2	1991	9	15	1.39
1397	Dynasty Warriors 5	7	2005	9	49	1.39
1398	Hannah Montana: Spotlight World Tour	1	2007	9	33	1.39
1399	WWE '13	6	2012	9	29	1.39
1400	Deus Ex: Human Revolution	5	2011	7	17	1.39
1401	True Crime: Streets of LA	14	2003	9	5	1.38
1402	The Sims 2	17	2005	8	8	1.38
1403	Paper Mario	12	2000	4	1	1.38
1404	Bravely Default: Flying Fairy	10	2012	4	1	1.38
1405	Titanfall	5	2014	7	8	1.38
1406	Duke Nukem: Time to Kill	13	1998	7	3	1.38
1407	Persona 4: Golden	23	2012	4	72	1.38
1408	Dead Rising 2	6	2010	9	13	1.38
1409	Hasbro Family Game Night 2	1	2009	6	8	1.38
1410	Disney Princess: Enchanted Journey	1	2007	11	33	1.38
1411	Gardening Mama	4	2009	5	12	1.38
1412	Dave Mirra Freestyle BMX 2	7	2001	1	31	1.38
1413	Need for Speed: The Run	5	2011	9	8	1.38
1414	LEGO Indiana Jones: The Original Adventures	7	2008	9	18	1.37
1415	Assassin's Creed: Rogue	6	2014	9	6	1.37
1416	Ridge Racer 7	6	2006	3	26	1.37
1417	A Collection of Activision Classic Games for the Atari 2600	13	1998	6	5	1.37
1418	Forza Horizon 2	18	2014	3	2	1.37
1419	MotorStorm: Pacific Rift	6	2008	3	4	1.37
1420	Sonic Colors	4	2010	2	9	1.37
1421	Star Wars Knights of the Old Republic II: The Sith Lords	14	2004	4	5	1.37
1422	LEGO Harry Potter: Years 1-4	6	2010	9	20	1.37
1423	Pocket Monsters Stadium	12	1998	12	1	1.37
1424	NBA 2K15	6	2014	1	3	1.36
1425	Tom Clancy's Ghost Recon 2	14	2004	7	6	1.36
1426	Crash Bandicoot 2: N-Tranced	9	2003	2	24	1.36
1427	Burnout Paradise	5	2008	3	8	1.36
1428	SingStar Abba	7	2008	6	4	1.36
1429	Gradius	2	1986	7	15	1.36
1430	Dragon Quest III: Soshite Densetsu e...	8	1996	4	25	1.36
1431	Centipede	16	1981	7	11	1.36
1432	Yoshi's New Island	10	2014	2	1	1.36
1433	Ryse: Son of Rome	18	2013	9	2	1.36
1434	Dead to Rights	7	2002	7	8	1.36
1435	LEGO Harry Potter: Years 5-7	1		9	20	1.36
1436	Marvel vs. Capcom 3: Fate of Two Worlds	6	2011	10	13	1.35
1437	Dance Dance Revolution (Japan)	13	1999	8	15	1.35
1438	F1 2010	6	2010	3	36	1.35
1439	Madden NFL 98	13	1997	1	8	1.35
1440	FIFA Soccer 09	17	2008	1	8	1.35
1441	Namco Museum DS	4	2007	6	11	1.35
1442	FIFA Soccer 08	17	2007	1	8	1.35
1443	Grand Theft Auto: Chinatown Wars	4	2009	9	3	1.35
1444	Alan Wake	5	2010	9	2	1.35
1445	Battlefield: Bad Company	6	2008	7	8	1.35
1446	Mortal Kombat X	18	2015	10	20	1.35
1447	Samurai Warriors	7	2004	9	8	1.35
1448	The Simpsons: Hit & Run	14	2003	3	24	1.35
1449	Devil May Cry 4	5	2008	9	13	1.35
1450	Tom Clancy's Rainbow Six: Vegas 2	6	2008	7	6	1.35
1451	Monster Hunter Freedom	17	2005	4	13	1.35
1452	Crysis 2	5	2011	9	8	1.35
1453	SaGa Frontier	13	1997	4	10	1.35
1454	SingStar Party	7	2004	6	4	1.35
1455	FIFA Soccer 08	5	2007	1	8	1.35
1456	The ICO & Shadow of the Colossus Collection	6	2011	11	4	1.35
1457	Test Drive	7	2002	3	11	1.34
1458	Mario & Luigi: Partners in Time	4	2005	4	1	1.34
1459	Lost Planet: Extreme Condition	5	2006	7	13	1.34
1460	Mortal Kombat 3	21	1994	10	31	1.34
1461	Doom 3	14	2005	7	5	1.34
1462	Donkey Kong Jungle Beat	19	2004	2	1	1.34
1463	Need for Speed Carbon	7	2006	3	8	1.34
1464	Max Payne 2: The Fall of Max Payne	7	2003	7	3	1.34
1465	Command & Conquer: Red Alert 2	15	2000	12	8	1.34
1466	MVP Baseball 2004	7	2004	1	8	1.34
1467	WWE SmackDown vs Raw 2008	6	2007	10	29	1.33
1468	Ratchet & Clank: Up Your Arsenal (Weekly american sales)	7	2004	2	4	1.33
1469	Your Shape: Fitness Evolved	5	2010	1	6	1.33
1470	Rage	6	2011	7	7	1.33
1471	Skylanders SWAP Force	5	2013	2	5	1.33
1472	NBA 2K14	11	2013	1	3	1.33
1473	Spider-Man: The Movie	9	2002	9	5	1.33
1474	WWF War Zone	12	1998	10	31	1.33
1475	Tony Hawk's Pro Skater	3	2000	1	5	1.33
1476	The Sims: Bustin' Out	9	2003	8	8	1.33
1477	Triple Play 2001	13	2000	1	8	1.33
1478	Metroid Prime 2: Echoes	19	2004	7	1	1.33
1479	UFC Undisputed 2010	5	2010	10	29	1.33
1480	Final Fantasy X / X-2 HD Remaster	6	2013	4	17	1.33
1481	Corvette	7	2004	3	73	1.33
1482	Petz Wild Animals: Dolphinz	4	2007	8	6	1.33
1483	Pokemon Ranger: Guardian Signs	4	2010	4	1	1.33
1484	Middle-Earth: Shadow of Mordor	18	2014	9	20	1.32
1485	Need for Speed Underground Rivals	17	2005	3	8	1.32
1486	LEGO Batman: The Videogame	6	2008	9	20	1.32
1487	Dark Souls II	6	2014	4	26	1.32
1488	World of Warcraft: Wrath of the Lich King	15	2008	4	5	1.32
1489	Kingdom Hearts II	6	2014	4	17	1.32
1490	The LEGO Movie Videogame	5	2014	9	20	1.32
1491	TOCA 2: Touring Cars	13	1998	3	36	1.32
1492	Gyromite	2	1985	5	1	1.32
1493	NFL 2K3	7	2002	1	11	1.32
1494	Fighting Force	13	1997	10	22	1.32
1495	Mega Man Battle Network 4: Red Sun / Blue Moon	9	2003	4	13	1.32
1496	MAG: Massive Action Game	6	2010	7	4	1.32
1497	Madden NFL 97	13	1996	1	8	1.32
1498	Cars 2	4	2011	3	33	1.32
1499	Skylanders Giants	5	2012	9	5	1.32
1500	LEGO Batman: The Videogame	17		9	20	1.32
1501	TNN Motor Sports Hardcore 4x4	13	1996	3	74	1.31
1502	IHRA Drag Racing 2	7	2002	3	7	1.31
1503	The Beatles: Rock Band	5	2009	6	32	1.31
1504	Tekken 6	5	2009	10	26	1.31
1505	[Prototype]	5	2009	9	5	1.31
1506	Deal or No Deal	1	2009	6	75	1.31
1507	Madagascar	7	2005	2	5	1.31
1508	Rugrats Studio Tour	13	1999	11	29	1.31
1509	LEGO Battles	4	2009	12	20	1.31
1510	Pitfall II: Lost Caverns	16	1983	2	5	1.31
1511	Turok: Evolution	7	2002	7	31	1.31
1512	High School Musical 3: Senior Year DANCE!	1	2008	6	33	1.31
1513	Gold's Gym: Cardio Workout	1	2008	1	6	1.31
1514	Burnout 3: Takedown	14	2004	3	8	1.31
1515	Adventure	16		11	11	1.3
1516	Yu-Gi-Oh! The Sacred Cards	9	2002	4	15	1.3
1517	Crysis 2	6	2011	9	8	1.3
1518	NBA Live 07	7	2006	1	8	1.3
1519	Saints Row IV	6	2013	9	42	1.3
1520	SingStar '80s	7	2005	6	4	1.3
1521	EA Playground	1	2007	1	8	1.3
1522	Test Drive 5	13	1997	3	76	1.3
1523	Romancing SaGa 3	8	1995	4	10	1.3
1524	EA Sports Active 2	1	2010	1	8	1.3
1525	Digimon World	13	1999	4	26	1.3
1526	Rise of the Tomb Raider	18	2015	11	17	1.3
1527	Need for Speed Carbon	1	2006	3	8	1.29
1528	Yoshi's Woolly World	20	2015	2	1	1.29
1529	Mega Man Battle Network 3 Blue / White Version	9	2002	4	13	1.29
1530	FIFA Street	6	2012	1	8	1.29
1531	Resident Evil Zero	19	2002	9	13	1.29
7584	Cars	14	2006	3	29	0.2
1532	Need for Speed: Most Wanted	5	2005	3	8	1.29
1533	Tom Clancy's Rainbow Six: Siege	18	2015	7	6	1.29
1534	Pirates of the Caribbean: The Curse of the Black Pearl	9	2003	2	73	1.29
1535	Transformers	7	2004	7	11	1.29
1536	Guitar Hero: Aerosmith	1	2008	6	5	1.29
1537	Mystery Case Files: MillionHeir	4	2008	11	1	1.29
1538	Valkyria Chronicles	6	2008	4	9	1.29
1539	Midnight Club 3: DUB Edition (America weekly sales)	7	2005	3	3	1.29
1540	Champions of Norrath	7	2004	4	77	1.28
1541	Watch Dogs	5	2014	9	6	1.28
1542	Imagine: Wedding Designer	4	2008	8	6	1.28
1543	Metal Gear Solid V: Ground Zeroes	11	2014	9	15	1.28
1544	Yakuman	3	1989	6	1	1.28
1545	Assassin's Creed Syndicate	18	2015	9	6	1.28
1546	Army Men 3D	13	1999	9	78	1.28
1547	WWE '13	5	2012	9	29	1.28
1548	Twisted Metal 4	13	1999	3	43	1.28
1549	Manhunt	7	2003	9	3	1.28
1550	Kid Icarus: Uprising	10	2012	9	1	1.28
1551	Silent Hill 2	7	2001	9	15	1.28
1552	Tomb Raider: Underworld	6	2008	9	22	1.27
1553	Castlevania: Symphony of the Night	13	1997	2	15	1.27
1554	The Sims 2: Nightlife	15	2005	8	8	1.27
1555	LEGO Batman: The Videogame	7	2008	9	20	1.27
1556	Road Rash	13	1995	3	8	1.27
1557	Pokemon Mystery Dungeon: Gates to Infinity	10	2012	4	1	1.27
1558	Atlantis	16	1981	7	48	1.27
1559	NBA 2K9	5	2008	1	3	1.27
1560	WWE '12	5	2011	10	29	1.27
1561	Tony Hawk's Underground	14	2003	1	5	1.27
1562	Hogan's Alley	2	1984	7	1	1.27
1563	The Elder Scrolls Online	18	2015	4	7	1.27
1564	Jillian Michaels' Fitness Ultimatum 2009	1	2008	1	42	1.27
1565	.hack//Infection Part 1	7	2002	4	11	1.27
1566	Rockstar Games presents Table Tennis	1	2007	1	3	1.27
1567	Sonic Adventure DX: Director's Cut	19	2003	2	9	1.27
1568	Jet Li: Rise to Honor	7	2004	9	4	1.27
1569	Battle Arena Toshinden	13	1994	10	4	1.27
1570	Yokai Watch 3	10	2016	9	38	1.27
1571	Kung Fu Panda	4	2008	9	5	1.26
1572	Tamagotchi Connection: Corner Shop	4	2005	8	11	1.26
1573	Football Manager 2011	15	2010	1	9	1.26
1574	Devil Dice	13	1998	5	29	1.26
1575	Final Fantasy IV	4	2007	8	17	1.26
1576	Hyrule Warriors	20	2014	9	1	1.26
1577	Need for Speed Carbon	6	2006	3	8	1.26
1578	Championship Manager 03/04	15	2003	1	22	1.26
1579	Brian Lara Cricket	13	1998	1	36	1.26
1580	Ratatouille	4	2007	9	29	1.26
1581	Wheel of Fortune	13	1998	6	28	1.26
1582	LEGO The Lord of the Rings	5	2012	9	20	1.26
1583	Winter Sports: The Ultimate Challenge	1	2007	1	79	1.26
1584	SOCOM: U.S. Navy SEALs Confrontation	6	2008	7	4	1.25
1585	NBA Live 2001	13	2000	1	8	1.25
1586	Star Wars: The Force Unleashed	7	2008	9	18	1.25
1587	Combat	16		9	11	1.25
1588	Tom Clancy's Rainbow Six: Vegas	6	2007	7	6	1.25
1589	Dragon Ball: Daimaou Fukkatsu	2	1988	4	26	1.25
1590	Gegege no Kitarou 2: Youkai Gundan no Chousen	2	1987	4	26	1.25
1591	Reel Fishing	13	1996	1	80	1.25
1592	Injustice: Gods Among Us	6	2013	10	20	1.25
1593	Pokemon XD: Gale of Darkness	19	2005	4	1	1.25
1594	Black	7	2006	7	8	1.25
1595	RollerCoaster Tycoon 2	15	2002	12	11	1.25
1596	Lara Croft Tomb Raider: The Angel of Darkness	7	2003	9	22	1.25
1597	Tom Clancy's Splinter Cell: Pandora Tomorrow	7	2004	9	6	1.25
1598	Road Rash 3D	13	1998	3	8	1.25
1599	Ratchet: Deadlocked	7	2005	7	4	1.24
1600	Baldur's Gate: Dark Alliance	7	2001	4	19	1.24
1601	Transformers: Autobots / Decepticons	4	2007	9	5	1.24
1602	Tales of Xillia	6	2011	4	26	1.24
1603	Diddy Kong Racing DS	4	2007	3	1	1.24
1604	[Prototype]	6	2009	9	5	1.24
1605	Assassin's Creed: Bloodlines	17	2009	9	6	1.24
1606	Oddworld: Abe's Oddysee	13	1997	2	14	1.24
1607	The Witcher 3: Wild Hunt	18	2015	4	26	1.24
1608	Ridge Racer V	7	2000	9	26	1.24
1609	WWE SmackDown vs. Raw 2009	7	2008	10	29	1.24
1610	Tetris 2 (All region sales)	3	1992	5	1	1.24
1611	Star Wars Episode III: Revenge of the Sith	14	2005	9	5	1.24
1612	Ben 10: Protector of Earth	1	2007	9	59	1.23
1613	Frogger: The Great Quest	7	2001	2	15	1.23
1614	2010 FIFA World Cup South Africa	6	2010	1	8	1.23
1615	Ninja Gaiden	14	2004	9	2	1.23
1616	Crash Bandicoot: The Wrath of Cortex	14	2002	2	21	1.23
1617	Driv3r	7	2004	3	11	1.23
1618	Disney's Tarzan / Disney's Aladdin in Nasira's Revenge / Disney's The Emperor's New Groove Action Game	13	2003	6	4	1.23
1619	Farming Simulator 2015	15	2014	8	81	1.23
1620	Guitar Hero: Aerosmith	5	2008	6	5	1.23
1621	Medal of Honor: Airborne	6	2007	7	8	1.23
1622	Kirby Tilt 'n' Tumble	3	2000	5	1	1.23
1623	SpongeBob SquarePants: Battle for Bikini Bottom	9	2003	2	29	1.23
1624	Vigilante 8	13	1998	3	5	1.23
1625	Castlevania	2	1986	2	15	1.23
1626	Donkey Kong Country 2	9	2004	2	1	1.23
1627	Bayonetta	6	2009	9	9	1.23
1628	WarioWare, Inc.: Mega MicroGame$	9	2003	5	1	1.23
1629	Star Wars: Battlefront II	17	2005	7	18	1.23
1630	Madden NFL 17	11	2016	1	8	1.23
1631	Boom Blox	1	2008	5	8	1.23
1632	Fallout 4	15	2015	4	7	1.23
1633	The Sims 2: Castaway	1	2007	8	8	1.23
1634	LEGO Batman 2: DC Super Heroes	6	2012	9	20	1.22
1635	Naruto Shippuden: Ultimate Ninja Storm 2	6	2010	10	26	1.22
1636	Mario Power Tennis	19	2004	1	1	1.22
1637	Intelligent Qube	13	1997	5	4	1.22
1638	Game & Watch Gallery 2	3	1997	6	1	1.22
1639	Game & Watch Gallery 3	3	1999	6	1	1.22
1640	Pac-Man	2	1984	5	26	1.22
1641	Parfait: Chocolat Second Style	7	2006	11	82	1.22
1642	F1 2011	6	2011	3	36	1.22
1643	Cars	17	2006	3	29	1.22
1644	NBA Live 99	13	1997	1	8	1.22
1645	Chocobo no Fushigi Dungeon	13	1997	4	10	1.22
1646	Golden Sun: The Lost Age	9	2002	4	1	1.22
1647	SimCity 2000	13	1996	8	47	1.22
1648	Max Payne	14	2001	7	3	1.22
1649	WCW Mayhem	13	1998	10	8	1.22
1650	NBA 2K2	7	2002	1	9	1.22
1651	NASCAR Thunder 2003	7		3	54	1.22
1652	Super Street Fighter IV: 3D Edition	10	2011	10	13	1.22
1653	Cars	7	2006	3	29	1.21
1654	Fuzion Frenzy	14	2001	6	2	1.21
1655	Call of Duty: Finest Hour	14	2004	7	5	1.21
1656	FIFA Soccer 11	17	2010	1	8	1.21
1657	Sly Cooper and the Thievius Raccoonus	7	2002	2	4	1.21
1658	LEGO Indiana Jones 2: The Adventure Continues	4	2009	9	5	1.21
1659	The Magical Quest starring Mickey Mouse	8	1992	2	13	1.21
1660	Dragon Quest IV: Michibikareshi Monotachi	13	2001	4	25	1.21
1661	Star Wars Episode 1: Jedi Power Battles	13	1999	9	18	1.21
1662	Dino Crisis 2	13	2000	9	19	1.21
1663	Need for Speed Underground	19	2003	3	8	1.21
1664	Shrek / Shrek 2 2-in-1 Gameboy Advance Video	9	2007	6	34	1.21
1665	Test Drive 4	13	1997	3	8	1.21
1666	FIFA Soccer 07	17	2006	1	8	1.21
1667	World Soccer Winning Eleven 9 (JP & Others sales)	17	2005	1	15	1.2
1668	The Lord of the Rings: The Fellowship of the Ring	7	2002	9	83	1.2
1669	LEGO Star Wars III: The Clone Wars	6	2011	9	18	1.2
1670	ATV Offroad Fury 3	7	2004	3	84	1.2
1671	Pikmin 2	19	2004	12	1	1.2
1672	Just Dance 2016	1	2015	6	6	1.2
1673	Disney Sing It	1	2008	6	33	1.2
1674	Battlefield: Hardline	18	2015	7	8	1.2
1675	WWE 2K16	11	2015	1	3	1.2
1676	Dragon Ball Z: La Legende Saien	8	1993	10	26	1.2
1677	TwinBee	2	1986	7	15	1.2
1678	Ganbare Goemon! Karakuri Douchuu	2	1986	2	15	1.2
1679	NFL 2K	22	1999	1	9	1.2
1680	SolarStriker	3	1989	7	1	1.2
1681	Enter the Matrix	14	2003	9	11	1.2
1682	NHL 2002	7	2001	1	8	1.2
1683	Mario vs. Donkey Kong 2: March of the Minis	4	2006	5	1	1.2
1684	PokéPark Wii: Pikachu's Adventure	1	2009	11	1	1.2
1685	One Piece: Pirate Warriors	6	2012	9	26	1.2
1686	WWE 2K14	6	2013	1	3	1.19
1687	Metal Gear Solid: Portable Ops	17	2006	9	15	1.19
1688	Nuclear Strike	13	1997	8	8	1.19
1689	Captain Toad: Treasure Tracker	20	2014	5	1	1.19
1690	WWE SmackDown vs Raw 2008	17	2007	10	29	1.19
1691	The Simpsons: Road Rage	9	2003	3	29	1.19
1692	Pro Evolution Soccer 2008	1	2008	1	15	1.19
1693	SpongeBob SquarePants: Revenge of the Flying Dutchman	9	2002	2	29	1.19
1694	Mario & Sonic at the London 2012 Olympic Games	10	2012	1	9	1.19
1695	Scarface: The World is Yours	7	2006	9	24	1.19
1696	Kobe Bryant in NBA Courtside	12	1998	1	1	1.19
1697	Disney's Chip 'n Dale: Rescue Rangers	2	1990	2	13	1.19
1698	The Dukes of Hazzard: Racing for Home	13	1999	3	6	1.19
1699	Hitman 2: Silent Assassin	14		9	22	1.19
1700	FIFA 14	18	2013	1	8	1.19
1701	Spider-Man: The Movie	19	2002	9	5	1.19
1702	Final Fantasy I & II: Dawn of Souls	9	2004	4	1	1.19
1703	NBA 2K17	11	2016	1	3	1.19
1704	Pokemon Super Mystery Dungeon	10	2015	4	1	1.19
1705	Just Dance 4	5	2012	6	6	1.19
1706	Metal Gear Solid VR Missions	13	1999	11	15	1.18
1707	Pole Position	16	1982	3	11	1.18
1708	Resident Evil: Operation Raccoon City	6	2012	9	13	1.18
1709	LEGO Indiana Jones: The Original Adventures	17	2008	9	18	1.18
1710	Pro Yakyuu Family Stadium '88	2	1988	1	26	1.18
1711	Shenmue	22	1999	11	9	1.18
1712	Mario Tennis	3	2000	1	1	1.18
1713	Tony Hawk's Pro Skater 2	9	2001	1	5	1.18
1714	WWE '12	6	2011	10	29	1.18
1715	WWE SmackDown vs. Raw 2010	6	2009	10	29	1.18
1716	Plants vs. Zombies	4	2011	12	85	1.18
1717	Sonic the Hedgehog	6	2006	2	9	1.18
1718	Super Ghouls 'n Ghosts	8	1991	2	13	1.18
1720	Soviet Strike	13	1996	8	8	1.17
1721	Your Shape: Fitness Evolved 2012	5	2011	1	6	1.17
1722	Army of Two	6	2008	7	8	1.17
1723	Gun	7	2005	7	5	1.17
1724	Ty the Tasmanian Tiger	7	2002	2	8	1.17
1725	Wario Land: Shake It!	1	2008	2	1	1.17
1726	Sonic Rush Adventure	4	2007	2	9	1.17
1727	Medal of Honor: Warfighter	5	2012	9	8	1.17
1728	Mega Man 3	2	1990	2	13	1.17
1729	Ratchet & Clank (2016)	11	2016	2	4	1.17
1730	Mission: Impossible	12	1997	9	86	1.17
1731	Romancing SaGa 2	8	1993	4	10	1.17
1732	Cabela's Dangerous Hunts	7	2003	1	87	1.17
1733	Cool Boarders 4	13	1998	1	43	1.17
1734	Rage Racer	13	1996	3	4	1.17
1735	Medal of Honor: Rising Sun	14	2003	7	8	1.17
1736	Football Manager 2013	15	2012	1	9	1.17
1737	Destruction Derby 2	13	1996	3	88	1.17
1738	Mirror's Edge	5	2008	2	8	1.17
1739	Destiny: The Taken King	18	2015	7	5	1.17
1740	Mario vs. Donkey Kong	9	2004	5	1	1.17
1741	007: Quantum of Solace	6	2008	9	5	1.16
1742	EA Sports Active: More Workouts	1	2009	1	8	1.16
1743	Fallout: New Vegas	15	2010	4	7	1.16
1744	Need for Speed: Most Wanted	23	2012	3	8	1.16
1745	Final Fantasy Tactics: The War of the Lions	17	2007	4	17	1.16
1746	Midnight Club 3: DUB Edition Remix	7	2006	3	3	1.16
1747	Tom Clancy's Ghost Recon: Jungle Storm	7	2004	7	6	1.16
1748	SingStar	6	2007	6	4	1.16
1749	Bushido Blade	13	1997	10	4	1.16
1750	LEGO Star Wars III: The Clone Wars	4	2011	9	18	1.16
1751	NASCAR Thunder 2002	7	2001	3	8	1.16
1752	Jet Force Gemini	12	1999	7	1	1.16
1753	Mega Man X	8	1993	2	13	1.16
1754	Yu-Gi-Oh! The Sacred Cards (American and Others sales)	9	2002	4	15	1.16
1755	Sega Rally Championship	24	1995	3	9	1.16
1756	Test Drive: Off Road	13	1997	3	22	1.16
1757	Medal of Honor Heroes 2	17	2007	7	8	1.16
1758	Sniper: Ghost Warrior	5	2010	7	89	1.16
1759	Rocksmith	6	2011	6	6	1.16
1760	LEGO Star Wars: The Video Game	14	2005	9	22	1.16
1761	FIFA Soccer 10	17	2009	1	8	1.16
1762	Plants vs. Zombies: Garden Warfare	5	2014	7	8	1.16
1763	Worldwide Soccer Manager 2009	15	2008	8	9	1.15
1764	Omerta: City of Gangsters	6	2011	8	15	1.15
1765	Gauntlet: Dark Legacy	7	2001	9	40	1.15
1766	Ninja Gaiden Sigma	6	2007	9	22	1.15
1767	Bad Boys: Miami Takedown	7	2004	7	90	1.15
1768	Kaboom!	16	1980	6	5	1.15
1769	Red Dead Redemption: Undead Nightmare	6	2010	9	3	1.15
1770	Sonic and the Black Knight	1	2009	2	9	1.15
1771	Call of Duty 4: Modern Warfare	15	2007	7	5	1.15
1772	Qix	3	1990	5	1	1.15
1773	Derby Stallion III	8	1995	1	51	1.15
1774	Doraemon	2	1986	9	69	1.15
1775	High School Musical 2: Work This Out!	4	2008	6	33	1.15
1776	Ratchet & Clank: All 4 One	6	2011	2	4	1.15
1777	Donkey Konga	19	2003	6	1	1.15
1778	Fight Night Champion	6	2011	10	8	1.15
1779	Dragon Quest I & II	8	1993	4	25	1.15
1780	Tak and the Power of Juju	7	2003	2	29	1.15
1781	Asteroids	13	1998	7	91	1.15
1782	Puyo Puyo Sun Ketteiban	13	1997	5	92	1.15
1783	Pokemon Rumble Blast	10	2011	9	1	1.14
1784	Action Bass	13	2000	9	3	1.14
1785	Tenchu: Wrath of Heaven	7	2003	9	5	1.14
1786	Shadow of the Colossus	7	2005	9	4	1.14
1787	Brave Fencer Musashi	13	1998	4	10	1.14
1788	Hot Shots Golf: Out of Bounds	6	2007	1	4	1.14
1789	Dance Dance Revolution Extreme 2	7	2005	8	15	1.14
1790	Mirror's Edge	6	2008	2	8	1.14
1791	Rabbids Go Home	1	2009	2	6	1.14
1792	South Park	12	1998	7	31	1.14
1793	Commando	2	1986	9	13	1.14
1794	Pilotwings	8	1990	8	1	1.14
1795	Resident Evil - Code: Veronica	22	2000	9	22	1.14
1796	Super R.C. Pro-Am	3	1991	3	1	1.14
1797	The Lord of the Rings: The Return of the King	14	2003	9	8	1.14
1798	LEGO Star Wars: The Video Game	9	2005	9	22	1.14
1799	Royal Palace of White Sword and The City of Gentiles	7	2005	4	3	1.14
1800	Guitar Hero 5	5	2009	6	5	1.14
1801	Mobile Suit Gundam: Federation vs. Zeon	7	2001	8	11	1.14
1802	Need for Speed Underground 2	19	2004	3	8	1.14
1803	MechAssault	14	2002	8	2	1.13
1804	ModNation Racers	6	2010	3	4	1.13
1805	LEGO Star Wars III: The Clone Wars	10	2011	9	18	1.13
1806	Derby Stallion 99	13	1999	1	51	1.13
1807	Cars	9	2006	3	29	1.13
1808	Fantasy Life	10	2012	4	1	1.13
1809	Tom Clancy's Rainbow Six 3: Black Arrow	14	2004	7	6	1.13
1810	WWE 2K15	11	2014	1	3	1.13
1811	Donkey Kong	2	1983	2	1	1.13
1812	Jampack Winter '98	13	1998	6	4	1.13
1813	WWE 2K14	5	2013	1	3	1.13
1814	Alien: Isolation	11	2014	7	9	1.13
1815	Yakuza 3	6	2009	9	9	1.13
1816	Pokémon Mystery Dungeon: Red Rescue Team (US weekly sales)	9	2005	4	1	1.13
1817	The Beatles: Rock Band	6	2009	6	32	1.13
1818	Dragon Age II	5	2011	9	8	1.12
1819	Moon Patrol	16	1982	7	11	1.12
1820	Supercar Street Challenge	7	2001	3	5	1.12
1821	Pilotwings 64	12	1996	8	1	1.12
1822	Crackdown 2	5	2010	7	2	1.12
1823	Final Fantasy XIV: A Realm Reborn	6	2013	4	17	1.12
1824	Castlevania: Lords of Shadow	6	2010	9	15	1.12
1825	Rocksmith	5	2011	6	6	1.12
1826	Disney Infinity 2.0: Marvel Super Heroes	5	2014	9	33	1.12
1827	SOCOM: U.S. Navy SEALs Fireteam Bravo	17	2005	7	4	1.12
1828	Call Of Duty 2: Big Red One	14	2005	7	5	1.12
1829	Yoshi's Cookie	2	1992	5	1	1.12
1830	Guitar Hero 5	7	2009	6	5	1.12
1831	Worldwide Soccer Manager 2008	15	2007	1	93	1.12
1832	Spider-Man 2	14	2004	9	5	1.12
1833	Counter-Strike	14	2003	7	2	1.11
1834	Mad Max (2015)	11	2015	9	20	1.11
1835	Transformers: The Game (XBox 360, PS2, PS3, Wii & PC Versions)	7	2007	9	5	1.11
1836	GRID	6	2008	3	36	1.11
1837	Guitar Hero Encore: Rocks The 80s	7	2007	6	23	1.11
1838	Sunset Overdrive	18	2014	7	2	1.11
1839	Rock Band	7		6	8	1.11
1840	Tom Clancy's Splinter Cell: Chaos Theory	14	2005	9	6	1.11
1841	Donkey Kong Jr.	2	1983	2	1	1.11
1842	Arc the Lad	13	1995	4	4	1.11
1843	NBA Jam Tournament Edition	21	1994	1	31	1.11
1844	Need for Speed: ProStreet	1	2007	3	8	1.11
1845	Pikmin 3	20	2013	12	1	1.11
1846	Legend of Mana	13	1999	4	10	1.11
1847	Lumines: Puzzle Fusion	17	2004	5	6	1.11
1848	Toy Story 3: The Video Game	6	2010	9	33	1.11
1849	Guitar Hero 5	6	2009	6	5	1.1
1850	Megamania	16	1981	7	5	1.1
1851	Medal of Honor: Airborne	5	2007	7	8	1.1
1852	The Legend of Zelda: Tri Force Heroes	10	2015	9	1	1.1
1853	Jungle Hunt	16	1982	2	11	1.1
1854	Triple Play 98	13	1997	1	8	1.1
1855	LEGO The Lord of the Rings	6	2012	9	20	1.1
1856	Petz Dogz 2	4	2007	8	6	1.1
1857	WWE SmackDown vs. Raw 2011	6	2010	10	29	1.1
1858	Yu-Gi-Oh! Duel Monsters II: Dark Duel Stories	3	1999	12	15	1.1
1859	Lode Runner	2	1984	5	69	1.1
1860	The Final Fantasy Legend	3	1989	4	10	1.1
1861	Famicom Jump: Eiyuu Retsuden	2	1989	4	26	1.1
1862	F-Zero X	12	1998	3	1	1.1
1863	Popeye	2	1983	2	1	1.1
1864	NERF N-Strike	1	2008	7	8	1.1
1865	NBA Live 2001	7	2001	1	8	1.1
1866	SingStar Legends	7	2006	6	4	1.1
1867	SingStar Rocks!	7	2006	6	4	1.1
1868	Tales of Symphonia	19	2003	4	1	1.1
1869	Untold Legends: Brotherhood of the Blade	17	2005	4	5	1.1
1870	Star Ocean: The Second Story	13	1998	4	4	1.1
1871	Lightning Returns: Final Fantasy XIII	6	2013	4	17	1.1
1872	Star Wars: The Force Unleashed	17	2008	9	18	1.09
1873	Imagine: Babysitters	4	2008	8	6	1.09
1874	The Simpsons Game	17	2007	9	8	1.09
1875	Yakuza 2	7	2006	11	9	1.09
1876	Skate 2	5	2009	1	8	1.09
1877	Dragon Ball Z: The Legacy of Goku II	9	2003	4	11	1.09
1878	Virtua Fighter 5	6	2007	10	9	1.09
1879	NFL 2K1	22	2000	1	9	1.09
1880	BeatMania	13	1998	8	15	1.09
1881	Namco Museum Battle Collection	17	2005	6	4	1.09
1882	LEGO Star Wars II: The Original Trilogy	4	2006	9	18	1.09
1883	Madden NFL 2004	14	2003	1	8	1.09
1884	Empire: Total War	15	2009	12	9	1.09
1885	The Godfather	7	2006	9	8	1.09
1886	Tiger Woods PGA Tour 10	1	2009	1	8	1.09
1887	Star Wars: Bounty Hunter	7	2002	7	18	1.09
1888	Densha De Go!	13	1997	8	94	1.09
1889	Dante's Inferno	6	2010	9	8	1.09
1890	Sonic & Sega All-Stars Racing	4	2010	3	9	1.09
1891	Skylanders Giants	6	2012	9	5	1.09
1892	Endless Ocean	1	2007	11	1	1.09
1893	NFL Blitz 2000	13	1998	1	40	1.09
1894	Sonic Free Riders	5	2010	3	9	1.09
1895	NASCAR Thunder 2004	7	2003	3	8	1.08
1896	Prince of Persia	6	2008	9	6	1.08
1897	SpongeBob SquarePants: Revenge of the Flying Dutchman	7	2002	2	29	1.08
1898	Grand Theft Auto V	15	2015	9	3	1.08
1899	The Biggest Loser	1	2009	1	29	1.08
1900	Fisherman's Bass Club	7	2002	1	95	1.08
1901	MySims Agents	4	2009	11	8	1.08
1902	Resident Evil: The Darkside Chronicles	1	2009	9	13	1.08
1903	NCAA Football 13	5	2012	9	8	1.08
1904	Grand Theft Auto: Chinatown Wars	17	2009	9	3	1.08
1905	FIFA Soccer 11	1	2010	1	8	1.08
1906	The Orange Box	6	2007	7	8	1.08
1907	Joust	16	1982	2	11	1.08
1908	Tomb Raider: Underworld	5	2008	9	22	1.08
1909	Tom Clancy's Ghost Recon 2	7	2004	7	6	1.08
1910	DiRT 3	6	2011	3	36	1.08
1911	LEGO City Undercover	20	2013	2	1	1.08
1912	Spore Creatures	4	2008	8	8	1.08
1913	Ready 2 Rumble Boxing	13	1998	1	40	1.08
1914	Dragon Ball Z: Taiketsu	9	2003	10	11	1.08
1915	Disney's Lilo & Stitch	9	2002	2	6	1.08
1916	Star Fox: Assault	19	2005	7	1	1.08
1917	Naruto: Ultimate Ninja Storm	6	2008	10	26	1.08
1918	Marvel vs. Capcom 3: Fate of Two Worlds	5	2011	10	13	1.08
1919	NCAA Football 14	5	2013	1	8	1.07
1920	Doko Demo Issyo	13	1999	6	4	1.07
1921	Call of Duty 3	7	2006	7	5	1.07
1922	Imagine: Fashion Designer New York	4	2008	8	6	1.07
1923	Red Dead Redemption: Undead Nightmare	5	2010	9	3	1.07
1924	Bully: Scholarship Edition	5	2008	9	3	1.07
1925	Virtua Fighter	24	1994	10	9	1.07
1926	Championship Manager 99/00	15	1999	1	22	1.07
1927	WWE SmackDown vs. Raw 2010	7	2009	10	29	1.07
1928	Pro Evolution Soccer 2008	5	2007	1	15	1.07
1929	Super Princess Peach	4	2005	2	1	1.07
1930	NHL 99	13	1997	1	8	1.07
1931	SoulCalibur III	7	2005	10	26	1.07
1932	Skylanders SWAP Force	6	2013	2	5	1.07
1933	F1 2012	6	2012	3	36	1.07
1934	World Tour Soccer	17	2005	1	4	1.07
1935	Disney Universe	1	2011	9	33	1.07
1936	Ridge Racer Revolution	13	1995	3	4	1.07
1937	LEGO Pirates of the Caribbean: The Video Game	5	2011	9	33	1.07
1938	Hot Wheels Turbo Racing	13	1999	3	8	1.07
1939	NCAA Football 99	13	1998	1	8	1.06
1940	Mortal Kombat: Armageddon	7	2006	10	40	1.06
1941	Aliens vs Predator	5	2010	7	9	1.06
1942	Freekstyle	7	2002	3	8	1.06
1943	Junior Brain Trainer	4	2008	6	96	1.06
1944	Darksiders	5	2010	9	29	1.06
1945	DiRT	6	2007	3	36	1.06
1946	Call of Duty 4: Modern Warfare	4	2007	7	5	1.06
1947	Simple 1500 Series Vol. 1: The Mahjong	13	1998	6	59	1.06
1948	Sega Superstars Tennis	1	2008	1	9	1.06
1949	NBA Street V3	7	2005	1	8	1.06
1950	Sleeping Dogs	6	2012	9	17	1.06
1951	Mercenaries 2: World in Flames	5	2008	7	8	1.06
1952	Worms Armageddon	13	1999	12	97	1.06
1953	Hulk	7	2003	9	21	1.06
1954	LEGO Indiana Jones: The Original Adventures	6	2008	9	5	1.06
1955	NFL Blitz	12	1998	1	40	1.06
1956	NFL Quarterback Club 98	12	1997	1	31	1.06
1957	DJ Hero	5	2009	6	5	1.06
1958	Dora the Explorer: Dora Saves the Mermaids	4	2007	2	3	1.06
1959	Diablo II: Lord of Destruction	15	2001	4	24	1.06
1960	Naruto Shippuden: Ultimate Ninja Storm 4	11	2016	10	26	1.06
1961	Spider-Man 2	9	2004	9	5	1.06
1962	Virtua Tennis 3	6	2007	1	9	1.06
1963	Seek and Destroy	7	2002	3	98	1.06
1964	Warhawk	6	2007	8	4	1.06
1965	Apollo Justice: Ace Attorney	4	2007	11	13	1.06
1966	Assassin's Creed: Rogue	5	2014	9	6	1.05
1967	Cosmic Ark	16	1981	7	48	1.05
1968	SOCOM: U.S. Navy SEALs Fireteam Bravo 2	17	2006	7	4	1.05
1969	Skylanders: Trap Team	1	2014	9	5	1.05
1970	Aliens vs Predator	6	2010	7	9	1.05
1971	Defender	16	1980	6	11	1.05
1972	Dance on Broadway	1	2010	6	6	1.05
1973	Adventure Island	2	1986	2	69	1.05
1974	Arc the Lad II	13	1996	4	4	1.05
1975	Tag Team Match M.U.S.C.L.E.	2	1985	10	26	1.05
1976	Derby Stallion 96	8	1996	1	51	1.05
1977	UFC Undisputed 3	6	2012	9	29	1.05
1978	NBA 2K3	7	2002	1	9	1.05
1979	Dragon Ball: XenoVerse	11	2015	10	26	1.05
1980	The Simpsons: Road Rage	14	2001	3	8	1.05
1981	Dave Mirra Freestyle BMX	13	2000	1	31	1.05
1982	Imagine: Animal Doctor	4	2007	8	6	1.05
1983	WWE SmackDown vs. Raw 2010	5	2009	10	29	1.05
1984	Forza Motorsport	14	2005	3	2	1.05
1985	Sonic the Hedgehog	5	2006	2	9	1.05
1986	MySims Agents	1	2009	11	8	1.05
1987	Monster Rancher 2	13	1998	8	4	1.05
1988	Pokemon Conquest	4	2012	4	1	1.05
1989	The Simpsons Game	5	2007	9	8	1.05
1990	Guinness World Records: The Videogame	1	2008	9	20	1.04
1991	MVP Baseball 2003	7	2003	1	8	1.04
1992	Legacy of Kain: Soul Reaver	13		9	22	1.04
1993	Dragon Ball Z: Budokai Tenkaichi 3	1	2007	10	11	1.04
1994	Disney Tangled	4	2010	9	33	1.04
1995	Tales of Destiny	13	1997	4	26	1.04
1996	ATV: Quad Power Racing	13	2000	3	31	1.04
1997	Disney Fairies: Tinker Bell and the Lost Treasure	4	2009	11	33	1.04
1998	Mega Man X4	13	1996	9	19	1.04
1999	Naruto: Clash of Ninja 2	19	2003	10	1	1.04
2000	Dance Dance Revolution SuperNOVA	7	2006	8	15	1.04
2001	Brink	5	2011	7	7	1.04
2002	F-Zero: Maximum Velocity	9	2001	3	1	1.04
2003	Bomberman 64	12	1997	5	69	1.04
2004	Jeremy McGrath Supercross 98	13	1998	3	31	1.04
2005	LEGO Indiana Jones 2: The Adventure Continues	5	2009	9	5	1.04
8136	FIFA 16	15	2015	1	8	0.18
2006	Project CARS	11	2015	3	99	1.04
2007	Need for Speed: Most Wanted	14	2005	3	8	1.04
2008	Kirby: Mass Attack	4	2011	2	1	1.04
2009	LEGO Marvel Super Heroes	18	2013	9	20	1.04
2010	ZhuZhu Pets	4	2010	8	5	1.04
2011	Tom Clancy's Ghost Recon Advanced Warfighter 2	6	2007	7	6	1.04
2012	MotorStorm: Arctic Edge	17	2009	3	4	1.04
2013	WipEout Pure	17	2005	3	4	1.04
2014	EA Sports UFC	11	2014	1	8	1.04
2015	MX vs. ATV Unleashed	7	2005	3	29	1.03
2016	Sonic Unleashed	6	2008	2	9	1.03
2017	Tiger Woods PGA Tour 08	1	2007	1	8	1.03
2018	Rayman Origins	6	2011	2	6	1.03
2019	Epic Mickey 2: The Power of Two	1	2012	9	33	1.03
2020	NCAA March Madness 2004	7	2003	1	8	1.03
2021	Donkey Kong Land III	3		2	1	1.03
2022	Bomberman	2	1985	5	69	1.03
2023	The Simpsons Game	1	2007	9	8	1.03
2024	Tomb Raider	15	1996	9	22	1.03
2025	Rock Band 2	1	2008	6	32	1.03
2026	Street Fighter Alpha 3	13	1998	10	19	1.03
2027	Bulletstorm	5	2011	7	8	1.02
2028	FIFA Soccer 08	1	2007	1	8	1.02
2029	Naruto: Clash of Ninja Revolution	1	2007	10	100	1.02
2030	Tom Clancy's Ghost Recon Advanced Warfighter 2	5	2007	7	6	1.02
2031	ZombiU	20	2012	9	6	1.02
2032	Shrek 2	19	2004	2	5	1.02
2033	Petz: Catz 2	4	2007	8	6	1.02
2034	Tales of Graces f	6	2010	4	26	1.02
2035	Final Fight 2	8	1993	9	13	1.02
2036	Wall-E	1	2008	2	29	1.02
2037	The Lost World: Jurassic Park	13	1997	9	8	1.02
2038	Ace Combat 6: Fires of Liberation	5	2007	8	11	1.02
2039	Madden NFL 07	14	2006	1	8	1.02
2040	Disney Infinity 2.0: Marvel Super Heroes	6	2014	9	33	1.02
2041	Harry Potter and the Prisoner of Azkaban	7	2004	9	8	1.02
2042	Pong: The Next Level	13	1998	5	28	1.01
2043	Bayonetta 2	20	2014	9	1	1.01
2044	Prince of Persia	5	2008	9	6	1.01
2045	God of War: Ghost of Sparta	17	2010	9	4	1.01
2046	Sonic Generations	10	2011	2	9	1.01
2047	Ninja Gaiden II	5	2008	9	49	1.01
2048	NBA Jam Tournament Edition	8	1995	1	31	1.01
2049	Championship Manager 3	15	2003	1	22	1.01
2050	Guitar Hero: Warriors of Rock	1	2010	6	5	1.01
2051	Oshare Majo Love and Berry: DS Collection	4	2006	6	9	1.01
2052	Monster Rancher	13	1997	8	49	1.01
2053	The LEGO Movie Videogame	6	2014	9	20	1.01
2054	DiRT 2	6	2009	3	36	1.01
2055	Rayman Legends	11	2014	2	6	1.01
2056	NERF N-Strike Elite	1	2009	7	8	1
2057	Ford Racing 2	7	2003	3	90	1
2058	Breath of Fire III	13	1997	4	13	1
2059	PES 2009: Pro Evolution Soccer	5	2008	1	15	1
2060	Dead or Alive 2	7	2000	10	49	1
2061	1942	2	1985	7	13	1
2062	Excitebike 64	12	2000	3	1	1
2063	NES Open Tournament Golf	2	1991	1	1	1
2064	Game & Watch Gallery	3	1997	6	1	1
2065	Jissen Pachi-Slot Hisshouhou: Hokuto no Ken	7	2004	6	101	1
2066	SoulCalibur II	14	2003	10	26	1
2067	Haze	6	2008	7	6	1
2068	UFC Undisputed 3	5	2012	9	29	1
2069	Winning Eleven: Pro Evolution Soccer 2007 (All Region sales)	5	2006	1	15	1
2070	Road & Track Presents: The Need for Speed	13	1995	3	8	1
2071	NFL GameDay 2001	13	2000	1	4	1
2072	Killzone: Mercenary	23	2013	7	16	1
2073	NBA Live 97	13	1996	1	8	1
2074	Dynasty Warriors 3: Xtreme Legends	7	2002	9	49	1
2075	Zoo Tycoon DS	4	2005	12	29	1
2076	Rocksmith 2014	6	2013	6	6	1
2077	Dead Space 3	6	2013	9	8	1
2078	Wheel of Fortune	1	2010	6	29	1
2079	Disney Infinity	6	2013	9	33	1
2080	Dark Souls	5	2011	4	26	1
2081	Puzzler Collection	4	2008	5	6	1
2082	Jampack Winter 2000	13	2000	6	4	1
2083	Dead Space 3	5	2013	9	8	0.99
2084	Phoenix Wright: Ace Attorney	4	2005	11	13	0.99
2085	NFL Fever 2002	14	2000	1	2	0.99
2086	The Simpsons: Hit & Run	19	2003	3	24	0.99
2087	Littlest Pet Shop: Winter	4	2008	8	8	0.99
2088	LEGO Harry Potter: Years 5-7	5		9	20	0.99
2089	Tom Clancy's Splinter Cell: Blacklist	5	2013	9	6	0.99
2090	Ace Combat X: Skies of Deception	17	2006	8	26	0.99
2091	NCAA Football 12	5	2011	1	8	0.99
2092	LEGO Pirates of the Caribbean: The Video Game	6	2011	9	33	0.99
2093	Band Hero	1	2009	6	5	0.99
2094	Cars: Race-O-Rama	1	2009	3	29	0.99
2095	Oddworld: Abe's Exoddus	13	1998	2	14	0.99
2096	EyePet	6	2009	8	4	0.99
2097	Scooby-Doo! First Frights	1	2009	9	20	0.99
2098	Midnight Club: LA Remix	17	2008	3	3	0.99
2099	The Bouncer	7	2000	9	4	0.99
2100	Guitar Hero: Aerosmith	6	2008	6	5	0.99
2101	WWE SmackDown vs Raw 2008	1	2007	10	29	0.99
2102	FIFA Soccer 10	1	2009	1	8	0.99
2103	Shadow The Hedgehog	19	2005	2	9	0.99
2104	Farming Simulator 2013	15	2012	8	81	0.99
2105	Fallout 3	15	2008	4	7	0.99
2106	Cars	4	2006	3	29	0.98
2107	Pro Evolution Soccer 2008	17	2008	1	15	0.98
2108	Far Cry 3	15	2012	7	6	0.98
2109	Xenoblade Chronicles	1	2010	4	1	0.98
2110	Just Dance 2014	5	2013	6	6	0.98
2111	Mario Party Advance	9	2005	6	1	0.98
2112	Sonic & Sega All-Stars Racing	6	2010	3	9	0.98
2113	Tetris 2	2	1993	5	1	0.98
2114	NASCAR 99	12	1998	3	8	0.98
2115	Air-Sea Battle	16		7	11	0.98
2116	Suikoden III	7		4	54	0.98
2117	Kingdom Hearts Re:coded	4	2010	4	17	0.98
2118	South Park: The Stick of Truth	6	2014	4	6	0.98
2119	Driver: San Francisco	6	2011	3	6	0.98
2120	Sniper Elite V2	6	2012	7	12	0.98
2121	Far Cry 4	5	2014	7	6	0.98
2122	Grand Theft Auto: San Andreas	15	2005	9	3	0.98
2123	Tom Clancy's Splinter Cell: Blacklist	6	2013	9	6	0.98
2124	Pro Evolution Soccer 2014	6	2013	9	15	0.98
2125	Madden NFL 16	5	2015	1	8	0.98
2126	Madden NFL 10	7	2009	1	8	0.98
2127	Brutal Legend	5	2009	9	8	0.98
2128	Tamagotchi Connection: Corner Shop 2	4	2006	8	26	0.98
2129	Final Fantasy Type-0	11	2015	4	17	0.97
2130	Madden NFL 08	6	2007	1	8	0.97
2131	de Blob	1	2008	2	29	0.97
2132	NCAA Football 06	14	2005	1	8	0.97
2133	Mass Effect 3	15	2012	4	8	0.97
2134	NBA 2K10	5	2009	1	3	0.97
2135	Fire Emblem	9	2003	12	1	0.97
2136	Yakuza 4	6		9	9	0.97
2137	Skylanders: Spyro's Adventure	5	2011	9	5	0.97
2138	Club Penguin: Game Day!	1	2010	1	33	0.97
2139	NHL 2004	7	2003	1	8	0.97
2140	Grand Theft Auto: Vice City Stories	7	2007	9	3	0.97
2141	NBA 2K16	5	2015	1	3	0.97
2142	FIFA Soccer 2005	14	2004	1	8	0.97
2143	LEGO The Lord of the Rings	1	2012	9	20	0.97
2144	Romancing SaGa	8	1992	4	10	0.97
2145	Donkey Kong Junior	16	1981	2	11	0.97
2146	LEGO Star Wars II: The Original Trilogy	19	2006	9	18	0.97
2147	LEGO Harry Potter: Years 5-7	6		9	20	0.97
2148	Final Fantasy X / X-2 HD Remaster	23	2013	4	17	0.97
2149	Medal of Honor: Underground	13	2000	7	8	0.97
2150	The Sims 2	4	2005	8	8	0.96
2151	Dark Cloud 2	7	2002	4	4	0.96
2152	Jampack Summer '99	13	1999	6	4	0.96
2153	PlayStation All-Stars Battle Royale	6	2012	9	4	0.96
2154	Dance Dance Revolution 2nd ReMIX	13	1999	8	15	0.96
2155	Monster High: Ghoul Spirit	4	2011	6	29	0.96
2156	Dragon Quest X	1	2012	4	17	0.96
2157	LEGO Pirates of the Caribbean: The Video Game	4	2011	9	33	0.96
2158	Gangs of London	17	2006	11	4	0.96
2159	Mortal Kombat Trilogy	12	1996	10	14	0.96
2160	Star Soldier	2	1986	7	69	0.96
2161	Sonic Unleashed	5	2008	2	9	0.96
2162	Lost Planet 2	6	2010	7	13	0.96
2163	NHL 2001	7	2000	1	8	0.96
2164	Dragon Quest Monsters: Terry's Wonderland 3D	10	2012	4	17	0.96
2165	My Weight Loss Coach	4	2008	1	6	0.96
2166	Tom Clancy's Ghost Recon: Future Soldier	6	2012	7	6	0.96
2167	Mega Man Star Force Dragon / Leo / Pegasus	4	2006	9	13	0.96
2168	Shinobi	7	2002	2	4	0.96
2169	Mortal Kombat: Deadly Alliance	14	2002	10	40	0.96
2170	The Witcher 2: Assassins of Kings	15	2011	9	26	0.96
2171	PilotWings Resort	10	2011	8	1	0.96
2172	Naruto Shippuden: Ultimate Ninja Storm 3	6	2013	10	26	0.96
2173	LEGO Jurassic World	5	2015	9	20	0.95
2174	ESPN NBA 2K5	14	2004	1	64	0.95
2175	Wheel of Fortune	7		6	54	0.95
2176	World Championship Poker	7	2004	6	98	0.95
2177	Tom Clancy's Splinter Cell: Chaos Theory	7	2005	9	6	0.95
2178	SpongeBob SquarePants: Battle for Bikini Bottom	19	2003	2	29	0.95
2179	South Park: The Stick of Truth	5	2014	4	6	0.95
2180	Ben 10: Alien Force	4	2008	9	102	0.95
2181	SingStar Abba	6	2008	6	4	0.95
2182	Cars 2	1	2011	3	33	0.95
2183	Wild ARMs	13	1996	4	4	0.95
2184	Kessen	7	2000	12	8	0.95
2185	Yu-Gi-Oh! Worldwide Edition: Stairway to the Destined Duel	9	2003	6	15	0.95
2186	NCAA Football 2000	13	1999	1	8	0.95
2187	Brutal Legend	6	2009	9	8	0.95
2188	Skylanders: Spyro's Adventure	6	2011	9	5	0.95
2189	Guitar Hero: Metallica	1	2009	6	5	0.95
2190	Evolve	11	2015	7	3	0.95
2191	WWE SmackDown vs. Raw 2009	6	2008	10	29	0.95
2192	Army of Two: The 40th Day	5	2010	7	8	0.95
2193	Tony Hawk: RIDE	1	2009	1	5	0.95
2194	Lego Batman 3: Beyond Gotham	5	2014	9	20	0.95
2195	Wii Play: Motion	1	2011	6	1	0.95
2196	Killzone	7	2004	7	4	0.94
2197	The Tomb Raider Trilogy	6	2011	9	17	0.94
2198	Colin McRae Rally 04	7	2003	3	36	0.94
2199	Star Fox 64 3D	10	2011	7	1	0.94
2200	The SpongeBob SquarePants Movie	19	2004	2	29	0.94
2201	Rocksmith 2014	5	2013	6	6	0.94
2202	Midway Presents Arcade's Greatest Hits: The Atari Collection 1	13	1996	6	14	0.94
2203	Cars	1	2006	3	29	0.94
2204	Assassin's Creed III	15	2012	9	6	0.94
2205	Castlevania: Lament of Innocence	7	2003	9	15	0.94
2206	Mario Tennis Open	10	2012	1	1	0.94
2207	The Witcher 2: Assassins of Kings	5	2012	9	26	0.94
2208	Bayonetta	5	2009	9	9	0.94
2209	Destroy All Humans!	7	2005	7	29	0.94
2210	MVP Baseball 2005	14	2005	1	8	0.94
2211	SaGa Frontier 2	13	1999	4	10	0.94
2212	NCAA Football 10	5	2009	1	8	0.94
2213	MLB 2000	13	1999	1	4	0.94
2214	The Legend of Zelda: Twilight Princess HD	20	2016	9	1	0.94
2215	Bully	7	2006	9	3	0.94
2216	Prince of Persia: The Sands of Time	14	2003	9	6	0.94
2217	Phantasy Star Portable	17	2008	4	9	0.94
2218	Hot Shots Golf Fore!	7	2003	1	4	0.94
2219	MLB 06: The Show	7	2006	1	4	0.94
2220	NHL 2003	7	2002	1	8	0.93
2221	Operation Flashpoint: Dragon Rising	5	2009	7	36	0.93
2222	Nickelodeon Fit	1	2010	1	3	0.93
2223	Buzz! Quiz World	6	2009	6	4	0.93
2224	Bentley's Hackpack	9	2005	6	34	0.93
2225	Tony Hawk's Pro Skater 4	14	2002	1	5	0.93
2226	Borderlands 2	15	2012	7	3	0.93
2227	EA Sports Grand Slam Tennis	1	2009	1	8	0.93
2228	White Knight Chronicles: International Edition	6	2008	4	4	0.93
2229	SSX	6	2012	1	8	0.93
2230	Sonic Riders: Zero Gravity	1	2008	3	9	0.93
2231	LEGO Jurassic World	6	2015	9	20	0.93
2232	Build-A-Bear Workshop	4	2007	8	103	0.93
2233	Crash City Mayhem	9	2004	3	29	0.93
2234	Spider-Man	16	1981	9	46	0.93
2235	Mega Man 4	2	1991	2	13	0.93
2236	Castlevania II: Simon's Quest	2	1987	2	15	0.93
2237	Toy Story 2: Buzz Lightyear to the Rescue!	12	1999	2	5	0.93
2238	Teenage Mutant Ninja Turtles	9	2003	9	54	0.93
2239	MLB 07: The Show	7	2007	1	4	0.93
2240	Skylanders: Trap Team	5	2014	9	5	0.93
2241	Cars	19	2006	3	29	0.93
2242	Brothers in Arms: Hell's Highway	6	2008	7	6	0.93
2243	Inazuma Eleven 3	4	2010	4	38	0.93
2244	Pokken Tournament	20	2016	10	26	0.93
2245	SnoCross Championship Racing	13	1999	3	6	0.93
2246	Teenage Mutant Ninja Turtles	7	2003	9	15	0.92
2247	Top Gun: Combat Zones	7	2001	8	104	0.92
2248	Blue Dragon	5	2006	4	2	0.92
2249	007: The World is not Enough	13	2000	9	8	0.92
2250	NCAA Football 11	5	2010	1	8	0.92
2251	NHL 98	13	1997	1	8	0.92
2252	FIFA Street	5	2012	1	8	0.92
2253	EA Sports Active 2	6	2010	1	8	0.92
2254	SpongeBob SquarePants: The Yellow Avenger	17	2006	9	29	0.92
2255	WWE SmackDown vs. Raw 2009	5	2008	10	29	0.92
2256	Dante's Inferno	5	2010	9	8	0.92
2257	Wipeout: In The Zone	5	2011	6	5	0.92
2258	Space Jam	13	1996	1	31	0.92
2259	Kung Fu Panda	1	2008	9	5	0.92
2260	Knockout Kings 2000	12	1999	10	8	0.92
2261	Balloon Fight	2	1985	2	1	0.92
2262	Assassin's Creed	15	2008	11	6	0.92
2263	Disney Magical World	10	2013	11	1	0.92
2264	Crysis 3	5	2013	7	8	0.92
2265	Lego Batman 3: Beyond Gotham	11	2014	9	20	0.92
2266	Dynasty Warriors 7	6	2011	9	49	0.92
2267	The Evil Within	6	2014	9	7	0.92
2268	MLB 12: The Show	6	2012	1	4	0.92
2269	Sonic Riders	19	2006	3	9	0.92
2270	Starsky & Hutch	7	2003	3	90	0.92
2271	Tobal No.1	13	1996	10	4	0.92
2272	Lost Odyssey	5	2007	4	2	0.92
2273	MLB 15: The Show	11	2015	1	4	0.92
2274	Operation Flashpoint: Dragon Rising	6	2009	7	36	0.92
2275	Homefront	6	2011	7	29	0.91
2276	AMF Bowling Pinbusters!	1	2007	1	7	0.91
2277	Street Hoops	7	2002	1	5	0.91
2278	Avatar: The Game	6	2009	9	6	0.91
2279	Harvest Moon 3D: A New Beginning	10	2012	9	105	0.91
2280	Tom Clancy's EndWar	5	2008	12	6	0.91
2281	Knockout Kings 2002	7	2002	1	8	0.91
2282	Tokyo Xtreme Racer 3	7	2003	3	106	0.91
2283	LEGO Indiana Jones 2: The Adventure Continues	6	2009	9	5	0.91
2284	Colin McRae Rally 2.0	13	2000	3	36	0.91
2285	Glover	12	1998	2	28	0.91
2286	MX vs. ATV Reflex	6	2009	3	29	0.91
2287	Minecraft: Story Mode	5	2015	11	107	0.91
2288	Namco Museum	14		6	54	0.91
2289	Marvel: Ultimate Alliance 2	5	2009	4	5	0.91
2290	Call of Duty: World at War	4	2008	7	5	0.91
2291	Super Momotarou Dentetsu III	8	1994	8	69	0.91
2292	Sonic Mega Collection Plus	14	2004	6	9	0.91
2293	DJ Hero	6	2009	6	5	0.91
2294	Dragon Age: Inquisition	18	2014	4	8	0.91
2295	The Simpsons Game	6	2007	9	8	0.91
2296	Tiger Woods PGA Tour 2002	7	2002	1	8	0.9
2297	Rhythm Heaven	1		6	54	0.9
2298	Mini-Yonku Shining Scorpion: Let's & Go!!	8	1996	3	51	0.9
2299	MLB 2005	7	2004	1	4	0.9
2300	SOCOM 4: U.S. Navy SEALs	6	2011	7	4	0.9
2301	Burnout Revenge	7	2005	3	8	0.9
2302	Buzz! Quiz TV	6	2008	6	4	0.9
2303	We Ski & Snowboard	1	2008	1	11	0.9
2304	Destruction Derby	13	1995	3	88	0.9
2305	TouchMaster 2	4	2008	5	40	0.9
2306	Crysis 3	6	2013	7	8	0.9
2307	3Xtreme	13	1999	9	43	0.9
2308	Hot Shots Tennis	7	2006	1	4	0.9
2309	Sonic Heroes	14	2003	2	9	0.9
2310	Resistance: Retribution	17	2009	7	4	0.9
2311	Tiger Woods PGA Tour 12: The Masters	6	2011	1	8	0.9
2312	Star Wars: The Force Unleashed	4	2008	9	18	0.9
2313	Madden NFL 99	12	1998	1	8	0.9
2314	Spider-Man 3	7	2007	2	5	0.9
2315	James Bond 007: Agent Under Fire	14	2002	7	8	0.9
2316	Samba De Amigo	1	2008	6	9	0.9
2317	The Elder Scrolls Online	15	2014	4	7	0.9
2318	Pure	6	2008	3	33	0.9
2319	FIFA Soccer 09 All-Play	1	2008	1	8	0.9
2320	Fossil Fighters	4	2008	4	1	0.9
2321	LittleBigPlanet Karting	6	2012	9	4	0.9
2322	X-Men Legends	14	2004	4	5	0.9
2323	NBA Live 2005	14	2004	1	8	0.9
2324	Harry Potter: Quidditch World Cup	7	2003	1	8	0.9
2325	The Biggest Loser: Ultimate Workout	5	2010	1	29	0.9
2326	Madagascar	9	2005	2	5	0.89
2327	Call of Juarez: Bound in Blood	6	2009	7	6	0.89
2328	Killzone: Liberation	17	2006	7	4	0.89
2329	Madden NFL 08	1	2007	1	8	0.89
2330	Blitz: The League	7	2005	1	54	0.89
2331	LEGO Jurassic World	11	2015	9	20	0.89
2332	Castlevania: Circle of the Moon	9	2001	2	15	0.89
2333	Sonic Chronicles: The Dark Brotherhood	4	2008	4	9	0.89
2334	Tiger Woods PGA Tour 06	7	2005	1	8	0.89
2335	Classic NES Series: The Legend of Zelda	9	2004	11	1	0.89
2336	The Jak and Daxter Collection	6	2012	2	4	0.89
2337	Fire Emblem: The Sacred Stones	9	2004	12	1	0.89
2338	Pokemon Card GB2: Here Comes Team GR!	3	2001	12	1	0.89
2339	Finding Nemo	19	2003	9	29	0.89
2340	CSI: Hard Evidence	1	2008	11	6	0.89
2341	Ace Combat 2	13	1997	8	4	0.89
2342	F1 2009	1	2009	3	36	0.89
2343	NFL 2K2	7	2001	1	9	0.89
2344	EA Sports UFC 2	11	2016	1	8	0.89
2345	Dissidia 012: Duodecim Final Fantasy	17	2011	10	17	0.89
2346	LEGO Marvel Super Heroes	10	2013	9	20	0.89
2347	F1 2010	5	2010	3	36	0.89
2348	Monster 4X4: World Circuit	1	2006	3	6	0.89
2349	Call of Duty: Modern Warfare 2	15	2009	7	5	0.89
2350	Wii Fit U	20	2013	1	1	0.89
2351	Kingdoms of Amalur: Reckoning	5	2012	4	8	0.89
2352	Call of Duty: Modern Warfare 3	1	2011	7	5	0.89
2353	MLB 2001	13	2000	1	4	0.89
2354	SingStar Anthems	7	2006	6	4	0.89
2355	Seiken Densetsu 3	8	1995	4	10	0.89
2356	Mega Man 8 Anniversary Collector's Edition	13	1996	2	13	0.88
2357	WWE SmackDown vs. Raw 2011	5	2010	10	29	0.88
2358	Sleeping Dogs	5	2012	9	17	0.88
2359	Grand Theft Auto IV	15	2008	9	3	0.88
2360	Peppa Pig: The Game	4	2008	6	108	0.88
2361	Michael Jackson: The Experience	5	2011	6	6	0.88
2362	Ghostbusters: The Video Game	1	2009	9	11	0.88
2363	Rock Band 3	5	2010	6	32	0.88
2364	Resident Evil: Revelations	10	2012	9	13	0.88
2365	NBA 2K6	7	2005	9	3	0.88
2366	Buzz! The Mega Quiz	7	2007	6	4	0.88
2367	Endless Ocean: Blue World	1	2009	8	1	0.88
2368	Star Wars: Rebel Assault II - The Hidden Empire	13	1996	7	109	0.88
2369	Just Cause 3	18	2015	9	17	0.88
2370	Metal Gear Ac!d	17	2004	12	15	0.88
2371	Cooking Mama: World Kitchen	1	2008	8	12	0.88
2372	Tekken Tag Tournament 2	6	2012	10	26	0.88
2373	ESPN NHL 2K5	7	2004	1	64	0.88
2374	GRID	5	2008	3	36	0.88
2375	Phantasy Star Portable 2	17	2009	4	9	0.88
2376	Crimson Skies: High Road to Revenge	14	2003	8	2	0.87
2377	Spec Ops: Ranger Elite	13	2001	7	110	0.87
2378	Gex	13	1995	2	111	0.87
2379	NBA 2K14	18	2013	1	3	0.87
2380	DiRT	5	2007	3	36	0.87
2381	Derby Stallion II	8	1994	1	51	0.87
2382	Gold's Gym: Dance Workout	1	2010	1	6	0.87
2383	Red Faction: Guerrilla	5	2009	7	29	0.87
2384	Tom Clancy's Ghost Recon: Island Thunder	14	2003	7	6	0.87
2385	Mercenaries 2: World in Flames	6	2008	7	8	0.87
2386	Need for Speed: V-Rally	13	1997	3	53	0.87
2387	Kingdom Hearts Re: Chain of Memories	7	2008	4	17	0.87
2388	Pictionary	1	2010	5	29	0.87
2389	NCAA Football 13	6	2012	9	8	0.87
2390	Kingdoms of Amalur: Reckoning	6	2012	4	8	0.87
2391	NFL GameDay '97	13	1996	1	4	0.87
2392	Beijing 2008	6	2008	1	9	0.87
2393	The House of the Dead: Overkill	1	2009	7	9	0.87
2394	Tony Hawk's Project 8	7	2006	1	5	0.87
2395	Injustice: Gods Among Us	11	2013	10	20	0.87
2396	NHL 2000	13	1998	1	8	0.87
2397	Buzz! Master Quiz	17	2008	6	4	0.87
2398	Brothers in Arms: Hell's Highway	5	2008	7	6	0.87
2399	Fight Night Round 2	7	2005	10	8	0.87
2400	Wizards of Waverly Place	4	2009	6	33	0.87
2401	Scooby-Doo! First Frights	4	2009	9	20	0.87
2402	Conflict: Desert Storm	14	2002	7	112	0.87
2403	Triple Play 2002	7	2002	1	8	0.87
2404	Vagrant Story	13	2000	4	68	0.87
2405	Lemmings	17	2006	5	4	0.87
2406	Warriors Orochi	7	2007	9	49	0.87
2407	Guitar Hero: Warriors of Rock	5	2010	6	5	0.87
2408	Enduro	16	1982	6	113	0.87
2409	Tales of Xillia 2	6	2012	4	26	0.87
2410	SingStar '90s	7	2007	6	4	0.87
2411	Monster Strike 3DS	10	2015	9	114	0.86
2412	Tomb Raider: Anniversary	1	2007	9	22	0.86
2413	Winning Eleven: Pro Evolution Soccer 2007	17	2006	1	15	0.86
2414	Darksiders II	6	2012	9	29	0.86
2415	Ghostbusters: The Video Game	6	2009	9	4	0.86
2416	The World Ends With You	4	2007	4	17	0.86
2417	The Lord of the Rings: War in the North	6		9	20	0.86
2418	Rocky	7	2002	10	115	0.86
2419	Dragon Quest VIII: Journey of the Cursed King	10	2015	4	17	0.86
2420	Ford Racing	13	2001	3	90	0.86
2421	Madden Football 64	12	1997	1	8	0.86
2422	MLB 99	13	1998	1	4	0.86
2423	Dragon Ball Z: Burst Limit	6	2008	10	11	0.86
2424	The Lord of the Rings: War in the North	5		9	20	0.86
2425	The Legendary Starfy	4	2008	2	1	0.86
2426	2010 FIFA World Cup South Africa	5	2010	1	8	0.86
2427	Dynasty Warriors 4: Xtreme Legends	7	2003	9	49	0.86
2428	Ninja Gaiden Sigma 2	6	2009	9	116	0.86
2429	Forza Horizon 2	5	2014	3	2	0.85
2430	Skate 2	6	2009	1	8	0.85
2431	FIFA Soccer 08	4	2007	1	8	0.85
2432	Army Men: Air Attack	13	1999	9	78	0.85
2433	Need for Speed: Nitro	1	2009	3	8	0.85
2434	Madden NFL 09 All-Play	1	2008	1	8	0.85
2435	NBA 2K8	5	2007	1	3	0.85
2436	Far Cry: Primal	18	2016	9	6	0.85
2437	Street Fighter Alpha 2	13	1996	10	19	0.85
2438	Tiger Woods PGA Tour 2005	14	2004	1	8	0.85
2439	Army of Two: The 40th Day	6	2010	7	8	0.85
2440	Blazing Angels: Squadrons of WWII	1	2007	8	6	0.85
2441	Castlevania III: Dracula's Curse	2	1989	2	15	0.85
2442	Harry Potter and the Order of the Phoenix	4	2007	9	8	0.85
2443	Rampage World Tour	13	1997	9	14	0.85
2444	Burnout Legends	17	2005	3	8	0.85
2445	WWE 2K15	6	2014	1	3	0.85
2446	Overwatch	18	2016	7	5	0.85
2447	Ratatouille	7	2007	9	29	0.85
2448	NFL GameDay	13	1995	1	4	0.85
2449	Burnout 2: Point of Impact	7	2002	3	31	0.85
2450	Kirby: Planet Robobot	10	2016	9	1	0.85
2451	Street Fighter EX3	7	2000	10	19	0.85
2452	Karaoke Revolution Glee	1	2010	6	15	0.85
2453	Sniper Elite V2	5	2012	7	12	0.85
2454	Thief (2014)	11	2014	9	17	0.84
2455	Spider-Man 2	19	2004	9	5	0.84
2456	Golden Sun: Dark Dawn	4	2010	4	1	0.84
2457	Tiger Woods PGA Tour 11	6	2010	1	8	0.84
2458	Devil May Cry HD Collection	6	2012	9	13	0.84
2459	MLB 16: The Show	11	2016	9	4	0.84
2460	NBA 2K10	6	2009	1	3	0.84
2461	Xenoblade Chronicles X	20	2015	4	1	0.84
2462	Petz Dogz Fashion	4	2008	8	6	0.84
2463	The Incredibles	19	2004	9	29	0.84
2464	NCAA Football 11	6	2010	1	8	0.84
2465	Dragon Age II	6	2011	9	8	0.84
2466	ATV Quad Power Racing 2	7	2003	3	31	0.84
2467	Harvest Moon: Tree of Tranquility	1	2007	8	71	0.84
2468	Final Fantasy	2	1987	4	10	0.84
2469	Street Fighter X Tekken	6	2012	10	13	0.84
2470	Rocket Power: Team Rocket Rescue	13	2001	1	29	0.84
2471	Duke Nukem Forever	5	2011	7	3	0.84
2472	Big Mutha Truckers	7	2002	3	90	0.84
2473	Borderlands: The Handsome Collection	11	2015	7	3	0.84
2474	Rogue Galaxy	7	2005	4	4	0.84
2475	ESPN College Hoops 2K5	7	2004	1	9	0.84
2476	Metroid: Zero Mission	9	2004	11	1	0.84
2477	FIFA 15	23	2014	1	8	0.84
2478	Time Crisis 4	6	2007	7	26	0.84
2479	Ben 10: Protector of Earth	7	2007	9	59	0.84
2480	Need for Speed Rivals	5	2013	3	8	0.84
2481	Q*bert	13	1999	5	11	0.84
2482	WWE SmackDown vs. Raw 2009	1	2008	10	29	0.83
2483	Ace Combat 3: Electrosphere	13	1999	8	4	0.83
2484	Dynasty Warriors 2	7	2000	9	29	0.83
2485	Battle of Giants: Dinosaurs	4	2008	12	6	0.83
2486	Madden NFL 07	17		1	54	0.83
2487	Lizzie McGuire 2: Lizzie Diaries	9	2004	9	33	0.83
2488	Borderlands 2	23	2014	7	3	0.83
2489	FIFA Soccer World Championship	7	2000	1	8	0.83
2490	Brute Force	14	2003	7	2	0.83
2491	Dance Central 3	5	2012	6	2	0.83
2492	Yu-Gi-Oh! Dark Duel Stories	3	2000	6	15	0.83
2493	The Game of Life	13	1998	6	54	0.83
2494	Mega Man Legends	13	1997	11	13	0.83
2495	NCAA Football 12	6	2011	1	8	0.83
2496	Sly 3: Honor Among Thieves	7	2005	2	4	0.83
2497	The Price is Right	1	2008	6	6	0.83
2498	Sid Meier's Civilization Revolution	5	2008	12	3	0.83
2499	MLB SlugFest 20-03	7		1	54	0.83
2500	I Spy: Fun House	4	2007	5	117	0.83
2501	The Amazing Spider-Man (Console Version)	6	2012	9	5	0.83
2502	Dragon Ball: Raging Blast 2	6	2010	10	26	0.83
2503	MediEvil	13	1998	2	4	0.83
2504	Casper	13	1996	11	118	0.83
2505	Deca Sports 2	1	2009	1	69	0.82
2506	James Bond 007: Nightfire	14	2002	7	8	0.82
2507	Madden NFL 17	18	2016	1	8	0.82
2508	Tony Hawk's Underground 2 Remix	17	2005	1	5	0.82
2509	Tony Hawk's Pro Skater 3	19	2001	1	5	0.82
2510	Marvel: Ultimate Alliance	7	2006	4	5	0.82
2511	Star Wars The Clone Wars: Republic Heroes	1	2009	9	18	0.82
2512	DJ Hero 2	5	2010	6	5	0.82
2513	Street Fighter V	11	2016	10	13	0.82
2514	Need for Speed: Hot Pursuit 2	14	2002	3	8	0.82
2515	Clu Clu Land	2	1984	5	1	0.82
2516	Killer Instinct Gold	12	1996	10	1	0.82
2517	Amped: Freestyle Snowboarding	14	2001	1	2	0.82
2518	Custer's Revenge	16	1981	9	119	0.82
2519	MediEvil: Resurrection	17	2005	11	4	0.82
2520	DmC: Devil May Cry	6	2013	9	13	0.82
2521	Tales of the Abyss	10	2011	4	26	0.82
2522	Rocket Power: Beach Bandits	7	2002	2	29	0.82
2523	Guitar Hero: Warriors of Rock	6	2010	6	5	0.82
2524	Hasbro Family Game Night 3	1	2010	6	8	0.82
2525	Madden NFL 16	6	2015	1	8	0.82
2526	Stranglehold	5	2007	7	40	0.82
2527	Imagine: Rock Star	4	2008	8	6	0.82
2528	Shin Megami Tensei: Persona 4	7	2008	4	72	0.82
2529	SingStar Vol. 2	6	2008	6	4	0.82
2530	Shaun White Snowboarding	5		1	6	0.82
2531	Madden NFL 25	11	2013	1	8	0.82
2532	Twisted Metal (2012)	6	2012	9	4	0.82
2533	Dragon Warrior III	3	2000	4	25	0.81
2534	Disney's The Little Mermaid: Ariel's Undersea Adventure	4	2006	9	33	0.81
2535	Ready 2 Rumble Boxing: Round 2	7	2000	10	40	0.81
2536	Kamaitachi no Yoru	8	1994	11	120	0.81
2537	Patapon	17	2007	6	4	0.81
2538	Tales of Destiny II	13	2000	4	26	0.81
2539	Super Bomberman 2	8	1994	5	69	0.81
2540	NASCAR 2001	13	2000	3	8	0.81
2541	EA Sports Active NFL Training Camp	1	2010	1	8	0.81
2542	The Legend of Zelda: Four Swords Adventures	19	2004	9	1	0.81
2543	Jikkyou Powerful Pro Yakyuu '99 Kaimakuban	13	1999	1	15	0.81
2544	Guitar Hero Live	11	2015	6	5	0.81
2545	Valkyrie Profile	13	1999	4	25	0.81
2546	Final Fantasy Type-0	17	2011	4	54	0.81
2547	Pro Evolution Soccer 2010	5	2009	1	15	0.81
2548	Army Men: Sarge's Heroes	12	1999	9	78	0.81
2549	Mega Man	2	1987	2	13	0.81
2550	Tom Clancy's Rainbow Six 3	7	2004	7	6	0.81
2551	Lego Batman 3: Beyond Gotham	6	2014	9	20	0.81
2552	EarthBound	8	1994	4	1	0.81
2553	DiRT 2	5	2009	3	36	0.81
2554	Professor Layton vs Phoenix Wright: Ace Attorney	10	2012	5	38	0.81
2555	The Next Tetris	13	1998	5	11	0.81
2556	Dying Light	18	2015	9	20	0.81
2557	NCAA Football 10	6	2009	1	8	0.81
2558	Ben 10: Alien Force	1	2008	9	102	0.81
2559	World Soccer Jikkyou Winning Eleven 3: World Cup France '98	13	1998	1	15	0.81
2560	Final Fantasy XI: Wings of the Goddess	7	2007	4	17	0.81
2561	The Sims 2	7	2005	8	8	0.81
2562	Guitar Hero: Metallica	5	2009	6	5	0.81
2563	NCAA Football 14	6	2013	1	8	0.8
2564	MadWorld	1	2009	9	9	0.8
2565	Fight Night Champion	5	2011	10	8	0.8
2566	Who wants to be a millionaire	13	2000	6	22	0.8
2567	Yakuza	7	2005	9	9	0.8
2568	Star Wars Rogue Squadron III: Rebel Strike	19	2003	8	18	0.8
2569	ABBA: You Can Dance	1	2011	6	6	0.8
2570	Moto Racer	13	1997	3	8	0.8
2571	Hitman: Contracts	7	2004	7	22	0.8
2572	The Sims 2: Pets	17	2006	8	8	0.8
2573	Final Fantasy Anthology	13	1999	4	121	0.8
2574	Aliens: Colonial Marines	5	2013	7	9	0.8
2575	Pro Evolution Soccer 2010	17	2009	1	15	0.8
2576	[Prototype 2]	5	2012	9	5	0.8
2577	Sonic & SEGA All-Stars Racing with Banjo-Kazooie	5	2010	3	9	0.8
2578	Goldeneye 007: Reloaded	6	2011	7	5	0.8
2579	NBA 2K16	6	2015	1	3	0.8
2580	All Star Cheer Squad	1	2008	1	29	0.8
2581	The Sims 2: Castaway	17	2007	8	8	0.8
2582	Prince of Persia: Warrior Within	14	2004	9	6	0.8
2583	Dragon's Dogma	5	2012	4	13	0.8
2584	Darksiders II	5	2012	9	29	0.8
2585	Resident Evil: Revelations	6	2013	9	13	0.8
2586	Rayman Raving Rabbids 2	4	2007	6	6	0.8
2587	Super Robot Taisen α	13	2000	12	58	0.8
2588	PES 2009: Pro Evolution Soccer	17		1	15	0.8
2589	Need for Speed: Hot Pursuit 2	19	2002	3	8	0.8
2590	Star Wars: The Force Unleashed II	1	2010	9	18	0.8
2591	Band Hero	5	2009	6	5	0.8
2592	Mario & Sonic at the Sochi 2014 Olympic Winter Games	20	2013	1	1	0.8
2593	Tales of Destiny 2	7	2002	4	26	0.8
2594	Capcom's Soccer Shootout	8	1993	1	1	0.8
2595	Sniper: Ghost Warrior	6	2011	7	89	0.8
2596	The Godfather II	5	2009	9	8	0.79
2597	pro evolution soccer 2011	17	2010	1	15	0.79
2598	Alien	16	1981	9	122	0.79
2599	Dragon Ball Z: Budokai Tenkaichi 2	7	2006	10	11	0.79
2600	The Walking Dead: Season One	6	2012	11	123	0.79
2601	Rayman Origins	5	2011	2	6	0.79
2602	Guitar Hero: Aerosmith	7	2008	6	5	0.79
2603	Ridge Racer	13	1994	3	4	0.79
2604	Final Fantasy Tactics A2: Grimoire of the Rift	4	2007	4	17	0.79
2605	Harvest Moon: A Wonderful Life	19	2003	4	6	0.79
2606	Momotarou Dentetsu 7	13	1997	8	124	0.79
2607	Invizimals	17	2009	12	4	0.79
2608	Motocross Mania	13	2001	3	3	0.79
2609	Tiger Woods PGA Tour 10	6	2009	1	8	0.79
2610	Star Wars The Clone Wars: Jedi Alliance	4	2008	9	18	0.79
2611	WCW Mayhem	12	1999	10	8	0.79
2612	Mega Man 5	2	1992	2	13	0.79
2613	Star Ocean: The Last Hope	5	2009	4	17	0.79
2614	Dance Dance Revolution SuperNOVA 2	7	2007	8	15	0.79
2615	Armored Core 2	7	2000	8	6	0.79
2616	Dragon Quest Monsters 2	10	2014	4	17	0.79
2617	Ghost Squad	1	2007	7	9	0.79
2618	Dead Island: Riptide	5	2013	9	42	0.79
2619	Drawn to Life	4	2007	9	29	0.79
2620	Major League Baseball Featuring Ken Griffey Jr	12	1998	1	1	0.79
2621	FIFA 12	1	2011	1	8	0.79
2622	Too Human	5	2008	4	2	0.79
2623	Sid Meier's Civilization Revolution	6	2008	12	3	0.79
2624	NCAA Football 08	7	2007	1	8	0.79
2625	FIFA Soccer 2004	14	2003	1	8	0.79
2626	Personal Trainer: Walking	4	2008	1	1	0.79
2627	Naruto Shippuden: Ultimate Ninja Storm 2	5	2010	10	26	0.79
2628	PokePark 2: Wonders Beyond	1	2011	9	1	0.79
2629	Professor Layton and the Azran Legacy	10	2013	5	1	0.78
2630	Tom Clancy's Splinter Cell: Double Agent	5	2006	9	6	0.78
2631	Yars' Revenge	16	1982	7	11	0.78
2632	Lips	5	2008	6	2	0.78
2633	Secret Agent Barbie: Royal Jewels Mission	9	2002	2	24	0.78
2634	Metroid Prime Hunters	4	2006	7	1	0.78
2635	The 7th Guest	15	1992	11	19	0.78
2636	Doom	13	1994	7	53	0.78
2637	Buzz! The Hollywood Quiz	7	2007	6	4	0.78
2638	Puzzler World	4	2009	5	6	0.78
2639	My Little Pony: Pinkie Pie's Party	4	2008	11	29	0.78
2640	We Sing	1	2009	6	125	0.78
2641	Marvel vs. Capcom: Clash of Super Heroes	13	1999	10	13	0.78
2642	God of War Saga	6	2012	9	4	0.78
2643	Battle Stations	13	1997	12	8	0.78
2644	Tetris Party Deluxe	4	2010	5	1	0.78
2645	Pro Evolution Soccer 2016	11	2015	1	15	0.78
2646	Worms: Open Warfare	17	2006	12	29	0.78
2647	Star Wars Battlefront: Elite Squadron	17	2009	7	18	0.78
2648	UFC Personal Trainer: The Ultimate Fitness System	5	2011	1	29	0.78
2649	Resident Evil: Operation Raccoon City	5	2012	9	13	0.78
2650	NBA 2K7	7	2006	1	3	0.78
2651	Need for Speed: ProStreet	17	2008	3	8	0.78
2652	Toy Story 3: The Video Game	5	2010	9	33	0.78
2653	Torneko no Daibouken: Fushigi no Dungeon	8	1993	4	120	0.78
2654	Jr. Pac-Man	16	1983	5	11	0.78
2655	James Bond 007: Nightfire	19	2002	7	8	0.78
2656	Banjo-Kazooie: Nuts & Bolts	5	2008	2	2	0.78
2657	NBA ShootOut 98	13	1998	1	4	0.78
2658	Avatar: The Game	5	2009	9	6	0.78
2659	Harry Potter and the Half-Blood Prince	1	2009	9	8	0.77
2660	DJ Hero	1	2009	6	5	0.77
2661	Perfect Dark Zero	5	2005	7	2	0.77
2662	Galaxian	16	1982	7	11	0.77
2663	Andretti Racing	13	1996	3	8	0.77
2664	Caesars Palace 2000: Millennium Gold Edition	13	2000	6	118	0.77
2665	Madden NFL 25	18	2013	1	8	0.77
2666	Air Raid	16	1981	9	126	0.77
2667	Need For Speed: Undercover	17	2008	3	8	0.77
2668	Duke Nukem Forever	6	2011	7	3	0.77
2669	Freedom Wars	23	2014	4	4	0.77
2670	Marvel Nemesis: Rise of the Imperfects	7	2005	10	8	0.77
2671	Boxing	16	1980	10	5	0.77
2672	Need for Speed: Porsche Unleashed	13	1999	3	8	0.77
8318	NHL 07	17	2006	1	8	0.17
2673	Dragon Ball: Raging Blast	6	2009	10	26	0.77
2674	Crystal Castles	16	1983	9	11	0.77
2675	Conker's Bad Fur Day	12	2001	2	29	0.77
2676	Dragon Warrior I&II	3	1999	4	25	0.77
2677	Star Wars Episode II: Attack of the Clones	9	2002	9	29	0.77
2678	My Baby Girl	4	2008	8	127	0.77
2679	LEGO Batman 2: DC Super Heroes	4	2012	9	20	0.77
2680	Twisted Metal: Head On	17	2005	9	4	0.77
2681	Conflict: Desert Storm II - Back to Bagdhad	7	2003	7	112	0.77
2682	Maximo: Ghosts to Glory	7	2001	2	13	0.77
2683	Pokemon Dash	4	2004	3	1	0.77
2684	Donkey Kong Country 3	9	2005	2	1	0.77
2685	All-Star Baseball 2003	7	2002	1	31	0.77
2686	Unlimited Saga	7	2002	4	11	0.77
2687	Cabela's Deer Hunt: 2004 Season	7	2003	1	57	0.76
2688	Sonic Unleashed	7	2008	2	9	0.76
2689	Formula 1	13	1996	3	88	0.76
2690	Plants vs. Zombies: Garden Warfare	6	2014	7	8	0.76
2691	Raving Rabbids: Travel in Time	1	2010	11	6	0.76
2692	The Sims 3	10	2011	8	8	0.76
2693	Driv3r	14	2004	3	11	0.76
2694	Mercenaries: Playground of Destruction	7	2005	9	18	0.76
2695	MTV Celebrity Deathmatch	7	2003	10	65	0.76
2696	Street Fighter Alpha: Warriors' Dreams	13	1995	10	19	0.76
2697	Mortal Kombat	23	2012	10	20	0.76
2698	ISS Pro Evolution	13	1998	1	15	0.76
2699	Lost Planet 2	5	2010	7	13	0.76
2700	SoulCalibur V	6	2012	10	26	0.76
2701	Portal 2	15	2011	7	50	0.76
2702	Super Monkey Ball: Touch & Roll	4	2005	6	9	0.76
2703	Pro Evolution Soccer 2015	11	2014	1	15	0.76
2704	Drawn to Life: The Next Chapter	1	2009	5	29	0.76
2705	The Lord of the Rings: Conquest	6	2009	9	8	0.76
2706	Final Fantasy II	2	1988	4	10	0.76
2707	Tony Hawk's Pro Skater 2	12	2001	1	5	0.76
2708	Taiko no Tatsujin: Tatakon de Dodon ga Don	7	2002	6	26	0.76
2709	Mega Man Battle Network 6: Cybeast Falzar / Gregar	9	2005	4	13	0.76
2710	Syphon Filter: The Omega Strain	7	2004	7	4	0.76
2711	FIFA Soccer 11	7	2010	1	8	0.76
2712	Deer Drive	1	2009	1	128	0.76
2713	Kane & Lynch: Dead Men	5	2007	7	22	0.76
2714	Assassin's Creed: Revelations	15	2011	9	6	0.76
2715	Mortal Kombat: Deception	14	2004	10	40	0.76
2716	Ace Attorney Investigations: Miles Edgeworth	4	2009	11	13	0.76
2717	That's So Raven	9	2004	11	33	0.76
2718	FIFA 15	1	2014	1	8	0.76
2719	Marvel vs. Capcom 2: New Age of Heroes	7	2002	10	13	0.76
2720	Need for Speed: Shift	17	2009	3	8	0.76
2721	Kane & Lynch: Dead Men	6	2007	7	22	0.76
2722	Dark Souls II	5	2014	4	26	0.76
2723	True Crime: New York City	7	2005	9	5	0.76
2724	Legends of Wrestling	7	2001	10	31	0.76
2725	Rockstar Games presents Table Tennis	5	2006	1	3	0.76
2726	Monopoly Streets	1	2010	6	8	0.76
2727	Genji: Days of the Blade	6	2006	9	4	0.76
2728	Harvest Moon: Animal Parade	1	2008	8	71	0.76
2729	Final Fantasy Legend III	3	1991	4	10	0.76
2730	Total War: Rome II	15	2013	12	9	0.76
2731	Rare Replay	18	2015	6	2	0.75
2732	Spectrobes	4	2007	4	33	0.75
2733	Wall-E	7	2008	2	29	0.75
2734	WWE SmackDown vs. Raw 2009	17	2008	10	29	0.75
2735	Band Hero	6	2009	6	5	0.75
2736	Mega Man X5	13	2000	2	13	0.75
2737	Tearaway	23	2013	11	16	0.75
2738	DJ Hero 2	6	2010	6	5	0.75
2739	The Godfather II	6	2009	9	8	0.75
2740	WWE SmackDown vs. Raw 2010	1	2009	10	29	0.75
2741	Turok	5	2008	9	129	0.75
2742	[Prototype 2]	6	2012	9	5	0.75
2743	Shark Tale	7	2004	9	5	0.75
2744	San Francisco Rush: Extreme Racing	12	1997	3	14	0.75
2745	The Amazing Spider-Man (Console Version)	5	2012	9	5	0.75
2746	Zone of the Enders	7	2001	7	15	0.75
2747	Red Faction: Guerrilla	6	2009	7	29	0.75
2748	Street Fighter EX Plus Alpha	13	1997	10	19	0.75
2749	Madden NFL 06	17	2005	1	8	0.75
2750	Coded Arms	17	2005	7	15	0.75
2751	Tony Hawk's Underground 2	14	2004	1	5	0.75
2752	Tales of Vesperia	5	2008	4	11	0.75
2753	X-Men Origins: Wolverine - Uncaged Edition	6	2009	9	5	0.75
2754	Madagascar: Escape 2 Africa	4	2008	9	5	0.75
2755	Split/Second	6	2010	3	33	0.75
2756	Capcom vs. SNK 2: Mark of the Millennium 2001	7	2001	10	13	0.75
2757	MVP 06 NCAA Baseball	7	2006	1	8	0.75
2758	Just Dance 2015	20	2014	6	6	0.75
2759	Borderlands: The Pre-Sequel	5	2014	7	3	0.75
2760	LittleBigPlanet 3	6	2014	2	4	0.75
2761	Marvel: Ultimate Alliance 2	6	2009	4	5	0.75
2762	Sega Superstars Tennis	4	2008	1	9	0.75
2763	The Walking Dead: Season One	5	2012	11	123	0.75
2764	Ace Combat: Assault Horizon	6	2011	9	26	0.74
2765	Jump Ultimate Stars	4	2006	10	1	0.74
2766	Jampack Summer 2001	7	2001	6	4	0.74
2767	Resonance of Fate	6	2010	4	9	0.74
2768	Burnout	7	2001	3	31	0.74
2769	Tom Clancy's Rainbow Six: Vegas	17	2007	7	6	0.74
2770	Final Fantasy XIII-2	5	2011	4	17	0.74
2771	LEGO Batman 2: DC Super Heroes	10	2012	9	20	0.74
2772	Mortal Kombat: Unchained	17	2006	10	40	0.74
2773	Mario & Luigi: Paper Jam	10	2015	4	1	0.74
2774	Yu-Gi-Oh! Dungeon Dice Monsters	9	2001	6	15	0.74
2775	Brink	6	2011	7	7	0.74
2776	LEGO Marvel Super Heroes	20	2013	9	20	0.74
2777	Blur	6	2010	3	5	0.74
2778	Madden NFL 11	1		1	54	0.74
2779	Namco Museum Remix	1	2007	6	11	0.74
2780	Midnight Club 3: DUB Edition	14	2005	3	3	0.74
2781	Crysis 2	15	2011	9	8	0.74
2782	The Lord of the Rings: The Two Towers	9	2002	9	8	0.74
2783	Tiger Woods PGA Tour 2001	7	2001	1	8	0.74
2784	Indiana Jones and the Staff of Kings	1	2009	9	5	0.74
2785	Jet Moto 3	13	1999	3	4	0.74
2786	Naruto Shippuden: Ultimate Ninja Storm Generations	6	2012	10	26	0.74
2787	Unreal Championship	14	2002	7	11	0.74
2788	WarioWare: Twisted!	9		5	54	0.74
2789	Pirates of the Caribbean: At World's End	6	2007	9	33	0.74
2790	Tiger Woods PGA Tour 08	6	2007	1	8	0.74
2791	Persona 4: Arena	6	2012	10	72	0.74
2792	Sword of Mana	9	2003	4	1	0.74
2793	Harvest Moon DS: Island of Happiness	4	2007	8	71	0.74
2794	Star Ocean: The Last Hope International	6	2010	4	17	0.73
2795	The Sims 2: Castaway	4	2007	8	8	0.73
2796	FIFA: Road to World Cup 98	13	1997	1	8	0.73
2797	Dragon Ball Z: Ultime Menace	8	1993	10	26	0.73
2798	Classic NES Series: Donkey Kong	9	2004	2	1	0.73
2799	Call of Duty: Ghosts	15	2013	7	5	0.73
2800	Yoshi	3	1991	5	1	0.73
2801	Mortal Kombat 4	12	1998	10	14	0.73
2802	F1 2011	5	2011	3	36	0.73
2803	Madden NFL 10	1	2009	1	8	0.73
2804	Kirby: Canvas Curse	4	2005	2	1	0.73
2805	Croc 2	13	1999	2	30	0.73
2806	Practise English!	4	2007	6	1	0.73
2807	Oddworld: Munch's Oddysee	14	2001	2	11	0.73
2808	Berzerk	16	1981	7	11	0.73
2809	NHL 11	5	2010	1	8	0.73
2810	Dragon Age: Inquisition	15	2014	4	8	0.73
2811	iCarly	4	2009	11	5	0.73
2812	DiRT 3	5	2011	3	36	0.73
2813	NCAA Football 07	5	2006	1	8	0.73
2814	Just Dance Wii	1	2011	6	1	0.73
2815	Full Spectrum Warrior	14	2004	12	29	0.73
2816	Katamari Damacy	7	2004	5	26	0.73
2817	Beyblade VForce: Ultimate Blader Jam	9	2003	9	11	0.73
2818	Ratchet & Clank Collection	6	2012	9	4	0.73
2819	Avatar: The Game	1	2009	9	6	0.73
2820	Shaun Palmer's Pro Snowboarder	7	2001	1	36	0.73
2821	MX vs. ATV Reflex	5	2009	3	29	0.73
2822	Imagine: Interior Designer	4	2008	8	6	0.73
2823	SSX	5	2012	1	8	0.72
2824	Style Savvy: Trendsetters	10	2012	8	1	0.72
2825	James Bond 007: Agent Under Fire	19	2002	7	8	0.72
2826	XCOM: Enemy Unknown	15	2012	12	3	0.72
2827	Rabbids Go Home	4	2009	2	6	0.72
2828	Star Wars Episode III: Revenge of the Sith	9	2005	9	6	0.72
2829	Ultimate Spider-Man	7	2005	9	5	0.72
2830	FIFA Soccer 13	1	2012	9	8	0.72
2831	God Eater	17	2010	9	54	0.72
2832	Final Fantasy XIV: A Realm Reborn	11	2014	4	17	0.72
2833	SD Gundam G Generation	13	1998	12	26	0.72
2834	Area 51	13	1996	7	14	0.72
2835	NBA Live 08	7	2007	1	8	0.72
2836	Dead to Rights	14	2002	7	8	0.72
2837	Tiger Woods PGA Tour 07	7	2006	1	8	0.72
2838	Test Drive 6	13	1999	3	11	0.72
2839	Kouchuu Ouja Mushi King	9	2005	9	9	0.72
2840	LEGO Harry Potter: Years 5-7	4		9	20	0.72
2841	Major League Baseball 2K7	5	2007	1	130	0.72
2842	X-Men: Mutant Academy 2	13	2001	10	5	0.72
2843	Terraria	5	2013	9	12	0.72
2844	Jampack Winter 2001	7	2001	6	4	0.72
2845	Kangaroo	16	1982	2	11	0.72
2846	James Bond 007: Blood Stone	6	2010	7	5	0.72
2847	Ben 10: Protector of Earth	17	2007	9	59	0.72
2848	Skate	5	2007	1	8	0.72
2849	Super Monkey Ball Jr.	9	2002	5	11	0.72
2850	Driver: San Francisco	5	2011	3	6	0.72
2851	MLB 09: The Show	6	2009	1	4	0.72
2852	Monster Hunter Tri	20	2012	4	1	0.72
2853	Mobile Suit Gundam: Encounters in Space	7	2003	8	26	0.72
2854	Catherine	6	2011	11	42	0.72
2855	Fear Effect	13	1998	9	22	0.72
2856	FIFA Soccer 11	4	2010	1	8	0.72
2857	Crysis	15	2007	7	8	0.72
2858	Battlefield: Bad Company 2	15	2010	7	8	0.71
2859	The Lord of the Rings: The Two Towers	14	2002	9	8	0.71
2860	Madden NFL 2003	14	2002	1	8	0.71
2861	Dragon Quest Swords: The Masked Queen and the Tower of Mirrors	1	2007	4	17	0.71
2862	MLB 13: The Show	6	2013	1	4	0.71
2863	Omerta: City of Gangsters	5	2011	8	15	0.71
2864	Dragon Quest Heroes: The World's Tree Woe and the Blight Below	11	2015	9	17	0.71
2865	Virtua Fighter 4: Evolution	7	2003	10	9	0.71
2866	Top Spin 4	6	2011	1	3	0.71
2867	Resident Evil: Survivor	13	2000	9	22	0.71
2868	Dynasty Warriors 6	6	2007	9	49	0.71
2869	Super Trucks Racing	7	2002	3	131	0.71
2870	Persona Q: Shadow of the Labyrinth	10	2014	4	132	0.71
2871	Madden NFL 08	17	2007	1	8	0.71
2872	Godzilla: Destroy All Monsters Melee	19	2002	10	11	0.71
2873	Jeremy McGrath Supercross 2000	13	2000	3	31	0.71
2874	Conker: Live And Reloaded	14	2005	11	2	0.71
2875	Silent Hill 3	7	2003	9	15	0.71
2876	Madden NFL 09	17	2008	1	8	0.71
2877	Final Fantasy X/X-2 HD Remaster	11	2015	4	17	0.71
2878	Yu-Gi-Oh! The Falsebound Kingdom	19	2002	12	15	0.71
2879	LEGO Rock Band	1	2009	6	20	0.71
2880	MLB 10: The Show	6	2010	1	4	0.71
2881	Spyro: Enter the Dragonfly	19	2002	2	21	0.71
2882	Scooby-Doo 2: Monsters Unleashed	9	2004	9	29	0.71
2883	Power Rangers: Dino Thunder	7	2004	9	29	0.71
2884	Rhythm Heaven: The Best+	10	2015	6	1	0.71
2885	LEGO Racers	12	1999	3	133	0.71
2886	WWF Attitude	12	1999	10	31	0.71
2887	Blast Corps	12	1997	9	1	0.71
2888	LEGO Harry Potter: Years 1-4	17	2010	9	20	0.71
2889	Tactics Ogre: Let Us Cling Together	8	1995	4	134	0.71
2890	WarioWare, Inc.: Mega Party Game$	19	2003	5	1	0.71
2891	Football Manager 2014	15	2013	1	9	0.71
2892	Battle Arena Toshinden 2	13	1995	10	4	0.71
2893	WWE SmackDown vs. Raw 2011	17	2010	10	29	0.71
2894	Jeopardy!	13	1997	6	28	0.71
2895	South Park	13	1998	7	31	0.71
2896	Metal Gear Solid V: The Phantom Pain	18	2015	9	15	0.71
2897	Two Worlds	5	2007	4	84	0.71
2898	Doom 3: Resurrection of Evil	14	2005	7	5	0.71
2899	NCAA Football 09	5	2008	1	8	0.71
2900	NBA Live 09	5	2008	1	8	0.71
2901	Ratchet & Clank: Into the Nexus	6	2013	7	4	0.71
2902	Spider-Man 2	17	2005	9	5	0.71
2903	2014 FIFA World Cup Brazil	6	2014	1	8	0.71
2904	London 2012: The Official Video Game of the Olympic Games	6	2012	1	9	0.7
2905	NHL 12	5	2011	1	8	0.7
2906	Tony Hawk's Underground	19	2003	1	5	0.7
2907	Infinite Undiscovery	5	2008	4	17	0.7
2908	Super Bomberman 3	8	1994	5	69	0.7
2909	Command & Conquer: Red Alert Retaliation	13	1998	12	19	0.7
2910	The Sims 2: Apartment Pets	4	2008	8	8	0.7
2911	Star Wars: Obi-Wan	14	2001	9	5	0.7
2912	NCAA Football 08	5	2007	1	8	0.7
2913	Kill.Switch	7	2003	7	4	0.7
2914	Lalaloopsy	4	2011	8	5	0.7
2915	Madden NFL 2005	19	2004	1	8	0.7
2916	F-14 Tomcat	9	2001	9	35	0.7
2917	SplashDown	7	2001	3	11	0.7
2918	NCAA Football 98	13	1997	1	8	0.7
2919	Jade Empire	14	2005	4	2	0.7
2920	Transformers: Revenge of the Fallen (XBox 360, PS3, & PC Versions)	6	2009	7	5	0.7
2921	The Sims 3	4	2010	8	8	0.7
2922	Skylanders: Trap Team	20	2014	9	5	0.7
2923	Prince of Persia: The Forgotten Sands	6	2010	9	6	0.7
2924	Chocobo's Dungeon 2	13	1998	4	10	0.7
2925	Advance Wars	9	2001	12	1	0.7
2926	Hannah Montana: The Movie	4	2009	11	33	0.7
2927	World of Zoo	4	2009	8	29	0.7
2928	Ape Escape: On the Loose	17	2005	2	4	0.7
2929	NASCAR 2001	7	2000	3	8	0.7
2930	IL-2 Sturmovik: Birds of Prey	6	2009	8	12	0.7
2931	Book of Spells	6	2012	9	4	0.7
2932	NCAA Football 2001	13	2000	1	8	0.7
2933	Mafia	7	2004	9	135	0.7
2934	Mobile Suit Gundam: Journey to Jaburo	7	2000	8	26	0.7
2935	Metal Gear Solid V: The Phantom Pain	6	2015	9	15	0.7
2936	TimeSplitters 2	7	2002	7	22	0.7
2937	MotionSports	5	2010	1	6	0.7
2938	MLB 08: The Show	6	2008	1	4	0.7
2939	Classic NES Series: Zelda II: The Adventure of Link	9	2004	11	1	0.7
2940	Fire Emblem: Monsh? no Nazo	8	1994	4	1	0.7
2941	Disney's Chicken Little	9	2005	2	33	0.7
2942	King Kong	16	1981	9	136	0.69
2943	WWE 2K15	5	2014	1	3	0.69
2944	The LEGO Movie Videogame	10	2014	9	20	0.69
2945	X-Men Origins: Wolverine - Uncaged Edition	5	2009	9	5	0.69
2946	Metal Gear Solid: Portable Ops Plus	17	2007	9	15	0.69
2947	Disney Tangled	1	2010	9	33	0.69
2948	Shrek the Third	5	2007	9	5	0.69
2949	Test Drive Unlimited 2	5		3	11	0.69
2950	Moto Racer 2	13	1997	3	8	0.69
2951	Halo 2 Multiplayer Map Pack	14	2005	7	2	0.69
2952	Minecraft: Story Mode	6	2015	11	107	0.69
2953	Mortal Kombat: Shaolin Monks	7	2005	9	40	0.69
2954	MX vs. ATV Unleashed: On the Edge	17	2006	3	29	0.69
2955	Skylanders: Trap Team	6	2014	9	5	0.69
2956	Mario Pinball Land	9	2004	6	1	0.69
2957	Mappy	2	1984	2	26	0.69
2958	J-League Soccer: Prime Goal	8	1993	1	26	0.69
2959	Dragon Ball Z: Budokai	19	2003	10	11	0.69
2960	NFL Xtreme	13	1998	1	4	0.69
2961	The Sly Collection	6	2010	2	4	0.69
2962	One Piece: Pirate Warriors 2	6	2013	9	26	0.69
2963	Assassin's Creed IV: Black Flag	15	2013	9	6	0.69
2964	Harry Potter and the Chamber of Secrets	19	2002	9	8	0.69
2965	Need for Speed: Shift 2 Unleashed	6	2011	3	8	0.69
2966	The Lord of the Rings: The Return of the King	19	2003	9	8	0.69
2967	Nintendo Presents: New Style Boutique 2 - Fashion Forward	10	2015	6	1	0.69
2968	MX vs. ATV Untamed	5	2007	3	29	0.69
2969	The Last Remnant	5	2008	4	17	0.69
2970	Frozen: Olaf's Quest	4	2013	2	33	0.69
2971	The Sims: Medieval	15	2011	8	8	0.69
2972	Baldur's Gate: Dark Alliance II	7	2004	4	118	0.68
2973	Shark Tale	9	2004	9	5	0.68
2974	Plants vs. Zombies: Garden Warfare	18	2014	7	8	0.68
2975	Kirby's Dream Collection: Special Edition	1	2012	9	1	0.68
2976	Bakugan: Battle Brawlers	1	2009	9	5	0.68
2977	Star Wars: Masters of Teras Kasi	13	1997	9	18	0.68
2978	The Last Story	1	2011	4	1	0.68
2979	NBA Street Vol. 2	14	2003	1	8	0.68
2980	Iron Man	6	2008	9	9	0.68
2981	Disney Infinity 3.0	11	2015	9	33	0.68
2982	Spider-Man 3	6	2007	2	5	0.68
2983	NCAA Football 2005	14	2004	1	8	0.68
2984	Mortal Kombat Mythologies: Sub-Zero	13	1997	10	14	0.68
2985	Rayman Legends	20	2013	2	6	0.68
2986	Naruto: Clash of Ninja	19	2003	10	100	0.68
2987	Prince of Persia: The Two Thrones	7	2005	9	6	0.68
2988	Hot Shots Golf: Open Tee 2	17	2007	1	4	0.68
2989	Metro: Last Light	11	2014	9	42	0.68
2990	Fossil Fighters: Champions	4	2010	4	1	0.68
2991	Mercenaries: Playground of Destruction	14	2005	9	18	0.68
2992	Sniper Elite 3	11	2014	7	12	0.68
2993	Doom (2016)	18	2016	7	7	0.68
2994	Bushido Blade 2	13	1998	10	10	0.68
2995	Suikoden II	13	1998	4	15	0.68
2996	Need for Speed (2015)	18	2015	3	8	0.68
2997	Cars: Mater-National Championship	4	2007	3	29	0.68
2998	FIFA Soccer 06	14	2005	1	8	0.68
2999	Hidden Objects: Mystery Stories	4	2009	11	96	0.68
3000	Red Steel	1	2006	7	6	0.68
3001	Fight Night 2004	14	2004	10	8	0.68
3002	Tourist Trophy: The Real Riding Simulator	7	2006	3	4	0.68
3003	Mass Effect	15	2008	4	8	0.68
3004	.hack//Mutation Part 2	7	2002	4	11	0.68
3005	Country Dance	1	2011	6	137	0.68
3006	Turok	6	2008	9	129	0.68
3007	Midway Arcade Treasures 2	7	2004	6	40	0.68
3008	100 Classic Books	4	2008	6	1	0.67
3009	Unreal Tournament III	6	2007	7	40	0.67
3010	Final Fantasy Crystal Chronicles: Ring of Fates	4	2007	4	17	0.67
3011	Return to Castle Wolfenstein: Tides of War	14	2003	7	5	0.67
3012	Need for Speed Rivals	18	2013	3	8	0.67
3013	Lollipop Chainsaw	6	2012	9	20	0.67
3014	The Darkness	6	2007	7	3	0.67
3015	Street Sk8er	13	1998	1	8	0.67
3016	Club Penguin: Elite Penguin Force - Herbert's Revenge	4	2010	11	33	0.67
3017	Contra: Legacy of War	13	1996	7	15	0.67
3018	Blazing Angels: Squadrons of WWII	6	2006	8	6	0.67
3019	Fight Night Round 2004	14	2004	10	8	0.67
3020	Wolfenstein: The New Order	18	2014	7	7	0.67
3021	The Biggest Loser: Challenge	1	2010	1	29	0.67
3022	Zaidan Houjin Nippon Kanji Nouryoko Kentei Kyoukai Kounin: KanKen DS	4	2006	6	138	0.67
3023	Spice World	13	1998	9	4	0.67
3024	Star Wars: Republic Commando	14	2005	7	5	0.67
3025	Armored Core 3	7	2002	8	139	0.67
3026	Need For Speed: Undercover	1	2008	3	8	0.67
3027	Taiko no Tatsujin Wii	1	2008	6	26	0.67
3028	The Witcher 3: Wild Hunt	15	2015	4	26	0.67
3029	Virtua Tennis: World Tour (US & Others sales)	17	2005	1	9	0.67
3030	The LEGO Movie Videogame	11	2014	9	20	0.67
3031	Ratatouille	17	2007	9	29	0.67
3032	RIFT	15	2011	4	54	0.67
3033	Wild ARMs 2	13	1999	4	4	0.67
3034	Summer Sports: Paradise Island (Others sales)	1	2008	1	6	0.67
3035	Castlevania: Lords of Shadow	5	2010	9	15	0.67
3036	BioShock Infinite	15	2013	7	3	0.67
3037	Minecraft: Story Mode	11	2015	11	107	0.67
3038	TV Show King Party	1	2008	5	6	0.67
3039	Crafting Mama	4	2010	8	12	0.67
3040	007: Quantum of Solace	1	2008	9	5	0.67
3041	Rock Band 3	1	2010	6	32	0.67
3042	Command & Conquer: Red Alert 3	15	2008	12	8	0.67
3043	The Fairly Odd Parents: Breakin Da Rules	7	2003	2	29	0.67
3044	WWE SmackDown vs. RAW 2007	17	2006	10	29	0.67
3045	Peppa Pig: Fun and Games	4	2010	6	6	0.67
3046	Adventures of Tron	16	1981	9	140	0.67
3047	Phoenix Wright: Ace Attorney - Trials and Tribulations	4	2007	11	13	0.67
3049	Borderlands: The Pre-Sequel	6	2014	7	3	0.67
3050	The Sims 3: High-End Loft Stuff	15	2010	8	8	0.67
3051	The Chronicles of Narnia: The Lion, The Witch and The Wardrobe	9		9	33	0.67
3052	Zaidan Houjin Nippon Kanji Nouryoku Kentei Kyoukai Koushiki Soft: 200 Mannin no KanKen: Tokoton Kanji Nou	4	2006	6	141	0.66
3053	Pro Pinball: Big Race USA	13	1999	8	3	0.66
3054	NFL Street	14	2004	1	8	0.66
3055	Shaun White Snowboarding	6	2008	1	6	0.66
3056	The LEGO Movie Videogame	20	2014	9	20	0.66
3057	Tony Hawk's Proving Ground	7	2007	1	5	0.66
3058	MLB 2004	7	2003	1	4	0.66
3059	Naruto Shippuden: Ultimate Ninja 4	7	2007	10	11	0.66
3060	Tiger Woods PGA Tour 2000	13	1998	1	8	0.66
3061	Darkstone	13	2001	4	8	0.66
3062	NCAA March Madness 2003	7	2002	1	8	0.66
3063	Finding Nemo	14	2003	9	29	0.66
3064	Thrillville	7	2006	12	11	0.66
3065	NHL 10	5	2009	1	8	0.66
3066	Jikkyou World Soccer 2000 Final Edition	7	2000	1	15	0.66
3067	Madagascar	19	2005	2	5	0.66
3068	Puzzler Brain Games	1	2012	5	26	0.66
3069	Dragon Quest Monsters: Caravan Heart	9	2003	4	25	0.66
3070	Strawberry Shortcake: Summertime Adventure	9	2004	11	35	0.66
3071	Rayman Legends	6	2013	2	6	0.66
3072	Rocksmith 2014	15	2013	6	6	0.66
3073	Street Fighter Anniversary Collection	7	2004	10	13	0.66
3074	Legend of Legaia	13	1998	4	4	0.66
3075	Napoleon: Total War	15	2010	12	9	0.66
3076	Fist of the North Star: Ken's Rage	6	2010	9	116	0.66
3077	Wario: Master of Disguise	4	2007	2	1	0.66
3078	Toy Story 3: The Video Game	17	2010	9	33	0.66
3079	The Sims: Bustin' Out	19	2003	8	8	0.66
3080	Tiger Woods PGA Tour 09	6	2008	1	8	0.66
3081	Keystone Kapers	16	1982	9	5	0.66
3082	LEGO Marvel Super Heroes	23	2013	9	20	0.66
3083	New Play Control! Pikmin	1	2008	12	1	0.66
3084	Shrek: Hassle at the Castle	9	2002	9	73	0.66
3085	Suikoden IV	7	2004	4	15	0.66
3086	Gods Eater Burst	17	2010	9	26	0.66
3087	Disney's Kim Possible 2: Drakken's Demise	9	2004	2	33	0.66
3088	Um Jammer Lammy	13	1998	6	4	0.66
3089	Brothers In Arms: Road to Hill 30	14	2005	7	6	0.66
3090	Madden NFL 10	17	2009	1	8	0.66
3091	Transformers: The Game (XBox 360, PS2, PS3, Wii & PC Versions)	17	2007	9	5	0.66
3092	Taiko no Tatsujin DS: Touch de Dokodon!	4	2007	6	26	0.66
3093	F1 2015	11	2015	3	36	0.66
3094	Scene It? Box Office Smash	5	2008	6	2	0.66
3095	Animaniacs Ten Pin Alley	13	1998	1	74	0.66
3096	Disney Infinity 2.0: Marvel Super Heroes	20	2014	9	33	0.65
3097	NHL 13	6	2012	1	8	0.65
3098	Kung Fu Panda	7	2008	9	5	0.65
3099	Tom Clancy's EndWar	6	2008	12	6	0.65
3100	The Evil Within	18	2014	9	7	0.65
3101	Tiger Woods PGA Tour 09	5	2008	1	8	0.65
3102	Radiata Stories	7	2005	4	17	0.65
3103	F-Zero GX	19	2003	3	1	0.65
3104	Disney's Chicken Little	7	2005	2	33	0.65
3105	Wall-E	17	2008	2	29	0.65
3106	Yoshi Topsy-Turvy	9	2004	2	1	0.65
3107	Up	4	2009	9	29	0.65
3108	Monster Jam: Maximum Destruction	7	2002	3	6	0.65
3109	Real Heroes: Firefighter	1	2009	9	142	0.65
3110	Cartoon Network Block Party / Cartoon Network Speedway Double Pack	9	2005	6	29	0.65
3111	World of Dragon Warrior - Torneko: The Last Hope	13	1999	4	25	0.65
3112	Drawn to Life: The Next Chapter	4	2009	5	29	0.65
3113	MLB 14: The Show	11	2014	1	143	0.65
3114	Tiger Woods PGA Tour 10	5	2009	1	8	0.65
3115	Advance Wars 2: Black Hole Rising	9	2003	12	1	0.65
3116	Fire Emblem: Shadow Dragon	4	2008	4	1	0.65
3117	Centipede	13	1998	7	11	0.65
3118	Drakengard	7	2003	4	17	0.65
3119	SingStar Pop Hits	7	2007	6	4	0.65
3120	Kung-Fu Master	16	1987	9	5	0.65
3121	Champions: Return to Arms	7	2005	4	77	0.65
3122	Harry Potter and the Goblet of Fire	7	2005	9	8	0.65
3123	SingStar R&B	7	2007	6	4	0.65
3124	Mary-Kate and Ashley: Magical Mystery Mall	13	2000	11	31	0.65
3125	MX vs. ATV Untamed	17	2007	3	29	0.65
3126	Disney Sing It: Party Hits	1	2010	6	33	0.65
3127	Dead or Alive 5	6	2012	10	49	0.65
3128	Star Ocean: First Departure	17	2007	4	17	0.65
3129	Super Robot Taisen Impact	7	2002	12	58	0.65
3130	Dragon Age: Inquisition	6	2014	4	8	0.65
3131	The Black Eyed Peas Experience	1	2011	6	6	0.65
3132	Meccha! Taiko no Tatsujin Master DS: 7-tsu no Shima no Daibouken	4	2008	6	26	0.65
3133	Sengoku Basara: Samurai Heroes	6	2010	9	13	0.65
3134	Crysis 3	15	2013	7	8	0.64
3135	Paws & Claws: Pet Vet	4	2007	8	29	0.64
3136	Harry Potter and the Half-Blood Prince	7	2009	9	8	0.64
3137	Crash Bandicoot Purple: Ripto's Rampage	9	2004	2	24	0.64
3138	Diablo III	18	2014	4	5	0.64
3139	Spyro: A Hero's Tail	7	2004	2	24	0.64
3140	Crash of the Titans	17	2007	9	24	0.64
3141	Aliens: Colonial Marines	6	2013	7	9	0.64
3142	Crash: Twinsanity	7	2004	2	24	0.64
3143	Test Drive Unlimited 2	6		3	11	0.64
3144	Max Payne 2: The Fall of Max Payne	14	2003	7	3	0.64
3145	Dragon Ball: Raging Blast 2	5	2010	10	26	0.64
3146	GoldenEye: Rogue Agent	7	2004	7	8	0.64
3147	NBA 2K17	18	2016	1	3	0.64
3148	Lost Planet: Extreme Condition	6	2008	7	13	0.64
3149	XCOM: Enemy Unknown	5	2012	12	3	0.64
3150	Rayman 3D	10	2011	2	6	0.64
3151	LEGO Marvel's Avengers	11	2016	9	20	0.64
3152	James Bond 007: Everything or Nothing	14	2004	7	8	0.64
3153	X2: Wolverine's Revenge	7	2003	2	5	0.64
3154	Stuntman: Ignition	5	2007	3	29	0.64
3155	NBA Live 06	14	2005	1	8	0.64
3156	Dragon Age II	15	2011	9	8	0.64
3157	LEGO Star Wars II: The Original Trilogy	5	2006	9	18	0.64
3158	Tom Clancy's Rainbow Six	12	1999	7	61	0.64
3159	Castlevania	12	1999	2	15	0.64
3160	Rayman 2: The Great Escape	12	1999	2	6	0.64
3161	Nicktoons Collection: Game Boy Advance Video Volume 1	9	2004	6	34	0.64
3162	The Lord of the Rings: Conquest	5	2009	9	8	0.64
3163	TimeSplitters 2	14	2002	7	22	0.64
3164	Onimusha: Dawn of Dreams	7	2006	9	13	0.64
3165	NieR	6	2010	4	17	0.64
3166	The Princess and the Frog	4	2009	2	33	0.64
3167	Sega Rally Revo	6	2007	3	9	0.64
3168	SpongeBob SquarePants: Game Boy Advance Video Volume 1	9	2004	6	34	0.64
3169	Gravity Rush	23	2012	9	4	0.64
3170	Konami Collector's Series: Arcade Advanced	9	2002	6	15	0.64
3171	White Knight Chronicles II	6	2010	4	4	0.64
3172	Wolfenstein	6	2009	7	5	0.64
3173	Jampack Volume 13 (RP-T)	7	2005	6	4	0.64
3174	LEGO Dimensions	11	2015	9	20	0.64
3175	Start the Party!	6	2010	6	4	0.64
3176	Cruis'n World	12	1998	3	1	0.64
3177	Madden NFL 2001	12	2000	1	8	0.64
3178	NBA Live 08	6	2007	1	8	0.64
3179	The Walking Dead: Survival Instinct	5	2013	7	5	0.64
3180	Donkey Kong Barrel Blast	1	2007	3	1	0.64
3181	Okami	1	2008	9	13	0.64
3182	Lemony Snicket's A Series of Unfortunate Events	7	2004	2	5	0.64
3183	Middle-Earth: Shadow of Mordor	6	2014	9	20	0.64
3184	Family Feud: 2010 Edition	1	2009	6	6	0.64
3185	Red Steel 2	1	2010	7	6	0.63
3186	X-Men Legends II: Rise of Apocalypse	7	2005	4	5	0.63
3187	Nightmare Creatures	13	1997	9	4	0.63
3188	SingStar Queen	7	2009	6	4	0.63
3189	Just Dance 2015	5	2014	6	6	0.63
3190	F1 2013	6	2013	3	36	0.63
3191	Juiced 2: Hot Import Nights	5	2007	3	29	0.63
3192	Tony Hawk's Pro Skater 2x	14	2001	1	5	0.63
3193	Sim Theme Park	13	1999	12	8	0.63
3194	FIFA Soccer 2003	14	2002	1	8	0.63
3195	Ghostbusters: The Video Game	5	2009	9	11	0.63
3196	Monster Hunter 2	7		4	13	0.63
3197	NASCAR 06: Total Team Control	7	2005	3	8	0.63
3198	Tony Hawk's Project 8	6	2006	1	5	0.63
3199	Dogz	9	2004	8	6	0.63
3200	Disney Universe	6	2011	9	33	0.63
3201	Guitar Hero: Metallica	6	2009	6	5	0.63
3202	Iron Man	17	2008	9	9	0.63
3203	Taiko no Tatsujin: Chibi Dragon to Fushigi na Orb	10	2012	6	26	0.63
3204	Harry Potter and the Half-Blood Prince	4	2009	9	8	0.63
3205	A Bug's Life	12	1998	2	5	0.63
3206	Super Castlevania IV	8	1991	2	15	0.63
3207	DJ Hero 2	1	2010	6	5	0.63
3208	Angry Birds Trilogy	10	2012	9	5	0.63
3209	Condemned 2: Bloodshot	5	2008	9	9	0.63
3210	Cabela's Big Game Hunter (2008)	1	2007	1	5	0.63
3211	Mobile Suit Z Gundam: AEUG vs. Titans	7	2003	10	26	0.63
3212	Just Dance 3	6	2011	6	6	0.63
3213	Call of Duty: Black Ops	4	2010	7	5	0.63
3214	God of War III	11	2015	9	4	0.63
3215	Ape Escape 2	7	2002	2	4	0.63
3216	Metroid Prime: Trilogy	1	2009	7	1	0.63
3217	X-Man	16	1982	9	144	0.63
3218	Transformers: Revenge of the Fallen (XBox 360, PS3, & PC Versions)	5	2009	7	5	0.63
3219	Advance Wars: Days of Ruin	4		12	1	0.63
3220	The Sims 3: Generations	15	2011	8	8	0.63
3221	The Crew	18	2014	3	6	0.63
3222	Battle of Giants: Dragons	4	2009	12	6	0.63
3223	Dragon Quest Monsters Joker 3	10	2016	4	17	0.63
3224	Sonic & All-Stars Racing Transformed	5	2012	3	9	0.63
3225	Shin Megami Tensei: Persona 3 FES	7	2007	4	49	0.63
3226	FIFA Soccer 2002	7	2001	1	8	0.63
3227	Shin Megami Tensei: Persona 3 Portable	17	2009	4	145	0.63
3228	Final Fantasy VII International	13	1997	4	55	0.63
3229	Tiger Woods PGA Tour 12: The Masters	5	2011	1	8	0.63
3230	Okami	7	2006	9	13	0.63
3231	NHL 2001	13	2000	1	8	0.63
3232	World of Zoo	1	2009	8	29	0.63
3233	LEGO Jurassic World	18	2015	9	20	0.63
3235	MySims Racing	4	2009	3	8	0.63
3236	Buzz Lightyear of Star Command	13	2000	2	5	0.63
3237	Namco Museum	19	2002	6	26	0.63
3238	Nobunaga no Yabou: Haouden	8	1993	12	49	0.62
3239	Virtua Cop	24	1995	7	9	0.62
3240	Metal Gear Solid 2: Substance	14		9	15	0.62
3241	Tony Hawk's American Wasteland	14	2005	1	5	0.62
3242	WWF in Your House	13	1996	10	31	0.62
3243	Prince of Persia: The Forgotten Sands	5	2010	9	6	0.62
3244	Vanquish	6	2010	7	9	0.62
3245	Wild ARMs 3	7	2002	4	6	0.62
3246	NBA ShootOut '97	13	1997	1	4	0.62
3247	Sacred 2: Fallen Angel	6	2009	4	42	0.62
3248	Madden NFL 07	19	2006	1	8	0.62
3249	Far Cry 4	15	2014	7	6	0.62
3250	Battlezone	16	1982	7	11	0.62
3251	Tiger Woods PGA Tour 2004	14	2003	1	8	0.62
3252	LEGO Pirates of the Caribbean: The Video Game	10	2011	9	33	0.62
3253	Pro Evolution Soccer 2015	6	2014	1	15	0.62
3254	Evolve	18	2015	7	3	0.62
3255	Tak 2: The Staff of Dreams	7	2004	2	29	0.62
3256	Dead Island: Riptide	6	2013	9	42	0.62
3257	Warriors Orochi 3	6	2011	9	116	0.62
3258	Bolt	4	2008	11	33	0.62
3259	Viewtiful Joe	19	2003	9	13	0.62
3260	The Urbz: Sims in the City	9	2004	8	8	0.62
3261	Beetle Adventure Racing!	12	1999	3	8	0.62
3262	FIFA Soccer	23	2012	1	8	0.62
3263	Disney's 102 Dalmatians: Puppies to the Rescue	13	2000	2	22	0.62
3264	Wipeout: The Game	4	2010	6	5	0.62
3265	Strike Force Bowling	7	2004	1	98	0.62
3266	SpongeBob's Atlantis SquarePantis	1	2007	9	29	0.62
3267	Metal Gear Solid V: Ground Zeroes	6	2014	9	15	0.62
3268	Halloween	16	1982	9	146	0.62
3269	Dragon Ball Z: Ultimate Tenkaichi	6	2011	10	26	0.62
3270	WWE SmackDown vs. Raw 2010	17	2009	10	29	0.62
3271	Bass Landing	13	1999	1	51	0.62
3272	XGRA: Extreme G-Racing Association	7	2004	3	22	0.62
3273	Mario's Picross	3	1995	5	1	0.62
3274	Pac-Man Player's Choice Bundle	19	2003	6	26	0.62
3275	Rocksmith 2014	11	2014	6	6	0.62
3276	Fighters MEGAMiX	24	1996	10	9	0.62
3277	Bahamut Lagoon	8	1996	4	10	0.62
3278	Wall-E	5	2008	2	29	0.62
3279	Tomb Raider III: Adventures of Lara Croft	15	1998	9	22	0.62
3280	Toshochu: Run for Money	10	2012	11	26	0.62
3281	Dragon Quest Monsters: Joker 2 Professional	4	2011	4	17	0.62
3282	NFL Quarterback Club 99	12	1998	1	31	0.62
3283	Super Robot Taisen α Gaiden	13	2001	12	58	0.62
3284	Formula 1: Championship Edition	6	2006	3	4	0.61
3285	Muramasa: The Demon Blade	1	2009	4	71	0.61
3286	NBA 2K9	6	2008	1	3	0.61
3287	SingStar Singalong With Disney	7	2008	6	4	0.61
3288	NHL 16	11	2015	1	8	0.61
3289	Plants vs. Zombies: Garden Warfare	11	2014	7	8	0.61
3290	NFL Fever 2003	14	2002	1	2	0.61
3291	Samurai Warriors 2	7	2006	9	49	0.61
3292	Dynasty Warriors 8	6	2013	9	49	0.61
3293	Disney Sing It: Family Hits	1	2010	6	33	0.61
3294	2 Games in 1: Sonic Battle & ChuChu Rocket!	9	2005	6	29	0.61
3295	Robotech: Battlecry	7	2002	7	73	0.61
3296	Dora the Explorer: Super Spies	9	2004	2	65	0.61
3297	New Carnival Games	1	2010	6	3	0.61
3298	Tony Hawk: RIDE	5	2009	1	5	0.61
3299	Just Dance 2014	20	2013	6	6	0.61
3300	Cooking Mama 4: Kitchen Magic!	10	2011	8	12	0.61
3301	Texas Hold 'Em Poker	9	2004	6	35	0.61
3302	Time Crisis 3	7	2003	7	26	0.61
3303	Cabela's Monster Buck Hunter	1	2010	1	5	0.61
3304	Ganbaru Watashi no Kakei Diary	4	2007	6	1	0.61
3305	pro evolution soccer 2011	5	2010	1	15	0.61
3306	New Play Control! Donkey Kong Jungle Beat	1	2008	2	1	0.61
3307	Small Soldiers	13	1998	2	8	0.61
3308	Yakuza: Dead Souls	6	2011	7	9	0.61
3309	Littlest Pet Shop: Garden	4	2008	8	8	0.61
3310	Half-Life 2	14	2005	7	8	0.61
3311	Duke Nukem: Total Meltdown	13	1997	7	14	0.61
3312	Pac-Man Party	1	2010	6	26	0.61
3313	Jak and Daxter: The Lost Frontier	17	2009	2	4	0.61
3314	Major League Baseball 2K8	5	2008	1	7	0.61
3315	SimCity DS	4	2007	8	8	0.61
3316	Major League Baseball 2K9	5	2009	1	130	0.61
3317	Petz: Dogz Pack	4	2008	8	6	0.61
3318	Split/Second	5	2010	3	33	0.61
3319	Final Fantasy IV Advance	9	2005	4	1	0.61
3320	Madden NFL 2003	9	2002	1	8	0.61
3321	Tomb Raider Chronicles	13	1999	9	22	0.61
3322	Harry Potter and the Goblet of Fire	9	2005	9	8	0.61
3323	Dragon Ball Z: Buu's Fury	9	2004	9	11	0.61
3324	Madden NFL 2002	19	2001	1	8	0.61
3325	Guitar Hero: Smash Hits	1	2009	6	5	0.61
3326	Disney TH!NK Fast: The Ultimate Trivia Showdown	1	2008	6	33	0.61
3327	Spider-Man: Mysterio's Menace	9	2001	9	5	0.61
3328	Madden NFL 2000	12	1999	1	8	0.61
3329	Transformers: The Game (XBox 360, PS2, PS3, Wii & PC Versions)	5	2007	9	5	0.61
3330	Game & Watch Gallery 4	9	2002	6	1	0.61
3331	Littlest Pet Shop: Jungle	4	2008	8	8	0.61
3332	Naruto: Ultimate Ninja	7	2003	10	11	0.61
3333	Fighters Uncaged	5	2010	10	6	0.61
3334	Call of Juarez: Bound in Blood	5	2009	7	6	0.61
3335	New Play Control! Pikmin 2	1	2009	12	1	0.6
3336	Tony Hawk's Underground	9	2003	1	5	0.6
3337	Hot Shots Golf: World Invitational	23	2011	1	4	0.6
3338	Monster Trucks	9	2004	3	35	0.6
3339	Shadow The Hedgehog	7	2005	2	9	0.6
3340	Wave Race: Blue Storm	19	2001	3	1	0.6
3341	Backyard Wrestling: Don't Try This at Home	7	2003	10	22	0.6
3342	Fight Night Round 2	14	2005	10	8	0.6
3343	MonHun Nikki: Poka Poka Ailu Mura	17	2010	4	13	0.6
3344	The Golden Compass	4	2007	9	9	0.6
3345	NBA 2K8	7	2007	1	3	0.6
3346	Phineas and Ferb: Across the 2nd Dimension	1	2011	9	33	0.6
3347	Disney Infinity	20	2013	9	33	0.6
3348	The Golden Compass	1		9	9	0.6
3349	WarioWare D.I.Y.	4	2009	6	1	0.6
3350	Tony Hawk: RIDE	6	2009	1	5	0.6
3351	LEGO Jurassic World	10	2015	9	20	0.6
3352	Alice: Madness Returns	6	2011	11	8	0.6
3353	LEGO The Hobbit	11	2014	9	20	0.6
3354	Suikoden	13	1995	4	15	0.6
3355	Secret Agent Clank	7	2009	2	4	0.6
3356	Rayman Arena	7	2001	3	6	0.6
3357	Avatar: The Game	17	2009	9	6	0.6
3358	Jaws Unleashed	7	2006	9	29	0.6
3359	Puyo Puyo Sun	24	1997	5	92	0.6
3360	Half-Life	7	2001	7	24	0.6
3361	Tomb Raider (2013)	18	2014	9	17	0.6
3362	Mickey's Speedway USA	12	2000	3	1	0.6
3363	International Superstar Soccer 64	12	1997	1	15	0.6
3364	Skylanders SWAP Force	20	2013	2	5	0.6
3365	NASCAR Heat 2002	7	2001	3	53	0.6
3366	Disney Sing It! High School Musical 3: Senior Year	1	2008	6	33	0.6
3367	From TV Animation One Piece: Grand Battle 2	13	2002	10	26	0.6
3368	BeatMania Append 3rdMix	13	1998	8	15	0.6
3369	PGR3 - Project Gotham Racing 3	5	2005	3	2	0.6
3370	XCOM: Enemy Unknown	6	2012	12	3	0.6
3371	Blur	5	2010	3	5	0.6
3372	Xena: Warrior Princess	13	1998	11	8	0.6
3373	Scribblenauts: Unlimited	10	2012	9	20	0.6
3374	Front Mission	8	1995	12	10	0.6
3375	NHL 11	6	2010	1	8	0.6
3376	Kinect Rush: A Disney Pixar Adventure	5	2012	11	2	0.6
3377	Monopoly	5	2008	6	8	0.6
3378	Disney Infinity 2.0: Marvel Super Heroes	11	2014	9	33	0.6
3379	Major League Baseball 2K7	7	2007	1	130	0.6
3380	Asphalt: Urban GT	4	2004	3	6	0.6
3381	The Fight: Lights Out	6	2010	10	4	0.6
3382	Dai-2-Ji Super Robot Taisen α	7	2003	12	58	0.6
3383	Pokemon Trozei!	4	2005	5	1	0.6
3384	Dead Space	15	2008	9	8	0.59
3385	Hot Wheels: Stunt Track Challenge	7	2004	3	29	0.59
3386	Rayman Origins	23	2012	2	6	0.59
3387	London 2012: The Official Video Game of the Olympic Games	5	2012	1	9	0.59
3388	Beijing 2008	5	2008	1	9	0.59
3389	Dai-3-Ji Super Robot Taisen α: Shuuen no Ginga e	7	2005	12	58	0.59
3390	Jeopardy!	1	2010	6	29	0.59
3391	Jikkyou Powerful Pro Yakyuu '97 Kaimakuban	13	1997	1	15	0.59
3392	Assassin's Creed: Brotherhood	15	2011	9	6	0.59
3393	CyberTiger	13	1998	1	8	0.59
3394	Jampack Fall 2001	13	2001	6	4	0.59
3395	Medal of Honor: Frontline	19	2002	7	8	0.59
3396	Final Fantasy: The 4 Heroes of Light	4	2009	4	17	0.59
3397	Iron Man	1	2008	9	9	0.59
3398	Kane & Lynch 2: Dog Days	6	2010	7	17	0.59
3399	NFL Blitz 2001	13	2000	1	40	0.59
3400	Total War: Shogun 2	15	2011	12	9	0.59
3401	Jikkyou Powerful Pro Yakyuu '98 Kaimakuban	13	1998	1	15	0.59
3402	Rock Band 2	7	2008	6	32	0.59
3403	Yakuza 5	6	2012	9	9	0.59
3404	LEGO Indiana Jones 2: The Adventure Continues	17	2009	9	5	0.59
3405	BurgerTime	16	1981	5	140	0.59
3406	Naruto: The Broken Bond	5	2008	9	6	0.59
3407	2002 FIFA World Cup	7	2002	1	8	0.59
3408	MVP Baseball 2004	14	2004	1	8	0.59
3409	Crash Bandicoot: The Wrath of Cortex	19	2002	2	21	0.59
3410	Smurf: Rescue In Gargamel's Castle	16	1981	9	70	0.59
3411	Spelling Challenges and more!	4	2007	6	12	0.59
3412	Go Diego Go! Great Dinosaur Rescue	1	2008	9	3	0.59
3413	Transformers: The Game (XBox 360, PS2, PS3, Wii & PC Versions)	1	2007	9	5	0.59
3414	Extreme-G	12	1997	3	31	0.59
3415	Ready 2 Rumble Boxing	12	1999	1	40	0.59
3416	Payday 2	5	2013	7	12	0.59
3417	Dead or Alive Xtreme Beach Volleyball	14	2003	1	2	0.59
3418	Tales of Rebirth	7	2004	4	26	0.59
3419	SoulCalibur V	5	2012	10	26	0.59
3420	NHL 12	6	2011	1	8	0.59
3421	Tales of Zestiria	6	2015	4	26	0.59
3422	Silent Hill: Shattered Memories	7	2010	9	15	0.59
3423	Madden NFL 06	5		1	8	0.59
3424	Skate it	1	2008	1	8	0.59
3425	Game Party in Motion	5	2010	6	20	0.59
3426	Barbie: Race & Ride	13	1999	9	4	0.59
3427	Lost: Via Domus	5	2008	9	6	0.59
3428	Mega Man Anniversary Collection	7	2004	2	13	0.59
3429	Final Fantasy Anniversary Edition	17	2007	4	17	0.59
3430	Dark Souls II	11	2015	4	26	0.59
3431	Ben 10: Alien Force	17	2008	9	102	0.59
3432	Deus Ex: Human Revolution	15	2011	7	17	0.59
3433	Zumba Fitness	6	2010	1	12	0.59
3434	Harvest Moon: Friends of Mineral Town	9	2003	8	6	0.59
3435	Backyard NBA Basketball	7	2003	1	11	0.59
3436	FIFA Soccer 10	4	2009	1	8	0.59
3437	Kirby's Dream Course	8	1994	1	1	0.59
3438	Doom 3 BFG Edition	6	2012	7	7	0.59
3439	Mega Man X7	7	2003	9	13	0.58
3440	Top Spin 3	1	2008	9	3	0.58
3441	Petz Dogz 2	1	2007	8	6	0.58
3442	SpongeBob SquarePants featuring Nicktoons: Globs of Doom	7	2008	9	29	0.58
3443	The Conduit	1	2009	7	9	0.58
3444	Just Dance 2016	20	2015	6	6	0.58
3445	Tokimeki Memorial: Forever with You	13	1995	8	15	0.58
3446	Diablo	13	1997	4	8	0.58
3447	Cabela's Dangerous Hunts 2011	1	2010	1	5	0.58
3448	NHL 15	11	2014	1	8	0.58
3449	Q*bert	16	1982	5	46	0.58
3450	Romancing SaGa	7	2005	4	17	0.58
3451	The Lord of the Rings: The Third Age	7	2004	4	8	0.58
3452	Harvest Moon: Sunshine Islands	4	2008	8	71	0.58
3453	Trivial Pursuit	1	2009	6	8	0.58
3454	The Legend of Spyro: Dawn of the Dragon	1	2008	2	24	0.58
3455	The Sims 3: World Adventures	15	2009	8	8	0.58
3456	Kinect Sports Rivals	18	2014	1	2	0.58
3457	Rayman Origins	1	2011	2	6	0.58
3458	WWE 2K16	18	2015	1	3	0.58
3459	Titanfall	15	2014	7	8	0.58
3460	NCAA Football 09	6	2008	1	8	0.58
3461	Tom Clancy's HAWX	5	2009	9	6	0.58
3462	Sammy Sosa High Heat Baseball 2001	13	2000	1	78	0.58
3463	Frozen: Olaf's Quest	10	2013	2	33	0.58
3464	Terminator 3: Rise of the Machines	7	2003	9	11	0.58
3465	Transformers: War for Cybertron (XBox 360, PS3, & PC Versions)	5	2010	7	5	0.58
3466	Harvest Moon: The Tale of Two Towns	4	2010	8	80	0.58
3467	FIFA: Road to  World Cup 98	12	1997	1	8	0.58
3468	World Cup 98	12	1998	1	8	0.58
3469	International Superstar Soccer '98	12	1998	1	15	0.58
3470	NASCAR: Dirt to Daytona	7		3	54	0.58
3471	Unreal Tournament	7	2000	7	53	0.58
3472	Digimon World 2	13	2000	4	26	0.58
3473	Tales of Phantasia	13	1998	4	26	0.58
3474	Prince of Persia: The Two Thrones	14	2005	9	6	0.58
3475	Xenosaga Episode II: Jenseits von Gut und Böse	7	2004	4	4	0.58
3476	Gex: Enter the Gecko	13	1998	2	147	0.58
3477	Shrek 2: Beg for Mercy	9	2004	11	5	0.58
3478	Mega Man Star Force 2: Zerker x Ninja / Saurian	4	2007	9	13	0.58
3479	JoJo's Bizarre Adventure: All Star Battle	6	2013	10	26	0.58
3480	Petz Nursery	4	2009	8	6	0.58
3481	Contra: Shattered Soldier	7	2002	7	15	0.58
3482	Championship Motocross featuring Ricky Carmichael	13	1998	3	29	0.58
3483	Dragon Ball Z: Chou Saiya Densetsu	8	1992	4	26	0.58
3484	NBA 2K7	5	2006	1	3	0.58
3485	WWE 2K16	6	2015	1	3	0.58
3486	Phoenix Wright: Ace Attorney - Justice for All	4	2006	11	13	0.58
3487	Fire Emblem: Seisen no Keifu	8	1996	12	1	0.58
3488	Rock Band 3	6	2010	6	32	0.58
3489	Disgaea 4: A Promise Unforgotten	6	2011	4	132	0.58
3490	BlazBlue: Calamity Trigger	6	2009	10	148	0.58
3491	Tenchu 2: Birth of the Stealth Assassins	13	2000	9	5	0.58
3492	Tony Hawk's Pro Skater 4	19	2002	1	5	0.58
3493	MLB 11: The Show	6	2011	1	4	0.58
3494	Naruto: Uzumaki Chronicles 2	7	2006	9	26	0.58
3495	NHL 06	7	2005	1	8	0.58
3496	NHL 10	6	2009	1	8	0.58
3497	Rooms: The Main Building	4	2010	11	1	0.58
3498	Rapala: We Fish	1	2009	1	5	0.58
3499	Parasite Eve II	13	1999	4	10	0.58
3500	Tetris Party Deluxe	1	2010	5	1	0.58
3501	NFL Blitz 2000	12	1999	1	40	0.58
3502	Ratchet & Clank: Quest for Booty	6	2008	2	4	0.58
3503	Madden NFL 2002	14		1	54	0.58
3504	NCAA Football 10	7	2009	1	8	0.58
3505	Top Spin 3	6	2008	9	3	0.57
3506	Shin Megami Tensei IV	10	2013	4	72	0.57
3507	Theme Park	13	1994	8	8	0.57
3508	Blacksite: Area 51	5	2007	7	40	0.57
3509	Spider-Man 3	5	2007	2	5	0.57
3510	ATV Offroad Fury: Blazin' Trails	17	2005	3	84	0.57
3511	Far Cry Instincts	14	2005	7	6	0.57
3512	Hasbro Family Game Night	7	2008	5	8	0.57
3513	Tony Hawk's Pro Skater 4	9	2002	1	5	0.57
3514	Up	1	2009	9	29	0.57
3515	Tales of the Abyss	7	2005	4	26	0.57
3516	Disney Universe	5	2011	9	33	0.57
3517	Iron Man	5	2008	9	9	0.57
3518	Mobile Suit Gundam: Giren no Yabou- Zeon no Keifu	13	2000	12	26	0.57
3519	Spyro Orange: The Cortex Conspiracy	9	2004	9	24	0.57
3520	Enslaved: Odyssey to the West	6	2010	9	26	0.57
3521	SpongeBob SquarePants featuring Nicktoons: Globs of Doom	4	2008	9	29	0.57
3522	Beyond The Beyond	13	1995	4	4	0.57
3523	Ben 10: Alien Force	7	2008	9	102	0.57
3524	Tomb Raider: Anniversary	17	2007	9	22	0.57
3525	Warhammer 40,000: Space Marine	5	2011	7	29	0.57
3526	Madden NFL 06	19	2005	1	8	0.57
3527	No More Heroes	1	2007	9	71	0.57
3528	Assassin's Creed II	15	2010	9	6	0.57
3529	Petz Wild Animals: Tigerz	4	2008	8	6	0.57
3530	Naruto: Ultimate Ninja 2	7	2004	10	26	0.57
3531	Defiance	5	2013	7	149	0.57
3532	Dogz	4	2006	8	6	0.57
3533	3D Dot Game Heroes	6	2009	4	84	0.57
3534	The Mysterious Murasame Castle	2	1986	9	1	0.57
3535	NBA Hangtime	12	1997	1	14	0.57
3536	Jillian Michaels Fitness Ultimatum 2010	1	2009	1	35	0.57
3537	Pro Evolution Soccer 2012	17	2011	9	15	0.57
3538	Grease	1	2010	6	12	0.57
3539	Blood Wake	14	2001	7	2	0.57
3540	Dynasty Warriors 5: Xtreme Legends	7	2005	9	49	0.57
3541	Skylanders: Spyro's Adventure	10	2011	9	5	0.57
3542	Dora The Explorer: Dora Saves the Snow Princess	1	2008	2	3	0.57
3543	Jampack Summer 2002	7	2002	6	4	0.57
3544	FIFA World Cup Germany 2006	7	2006	1	8	0.57
3545	Wreckless: ThE YaKuza MisSiOns	14	2002	3	5	0.57
3546	Super Bomberman	8	1992	5	69	0.57
3547	SpongeBob SquarePants: Battle for Bikini Bottom	14	2003	2	29	0.57
3548	Spec Ops: The Line	6	2012	7	3	0.57
3549	SD Gundam G Generation Neo	7	2002	12	26	0.57
3550	Bratz 4 Real	4	2007	11	29	0.57
3551	RalliSport Challenge	14	2002	3	2	0.57
3552	Resident Evil Outbreak File #2	7	2004	9	13	0.57
3553	Bob the Builder: Can We Fix It?	13	2000	9	29	0.57
3554	XIII	7	2003	7	6	0.57
3555	NHL 14	6	2013	1	8	0.57
3556	LEGO Rock Band	5	2009	6	20	0.57
3557	Bolt	1	2008	11	33	0.57
3558	Top Spin 3	5	2008	9	3	0.57
3559	Tom Clancy's HAWX	6	2009	9	6	0.57
3560	LEGO Dimensions	5	2015	9	20	0.56
3561	Breath of Fire IV	13	2000	4	13	0.56
3562	True Crime: Streets of LA	19	2003	9	5	0.56
3563	Odin Sphere	7	2007	4	17	0.56
3564	Donkey Kong Jungle Climber	4	2007	2	1	0.56
3565	The Incredible Hulk	9	2003	9	21	0.56
3566	Ms. Pac-Man Maze Madness	9	2004	5	87	0.56
3567	Arena Football	7	2006	1	8	0.56
3568	The Lord of the Rings: The Return of the King	9	2003	9	8	0.56
3569	NHL Hitz 20-02	7	2001	1	40	0.56
3570	Classic NES Series: Dr. Mario	9	2004	5	1	0.56
3571	The Sims: Bustin' Out	14	2003	8	8	0.56
3572	NCAA March Madness 07	7	2007	1	8	0.56
3573	Monsters, Inc. Scream Team	13	2001	2	4	0.56
3574	Harry Potter Collection	7	2006	6	8	0.56
3575	Tony Hawk's Project 8	17	2006	1	5	0.56
3576	Yu-Gi-Oh! World Championship Tournament 2004	9	2004	6	15	0.56
3577	Cabela's Big Game Hunter 2005 Adventures	7	2004	1	5	0.56
3578	Hotel Dusk: Room 215	4	2007	11	1	0.56
3579	Knockout Kings 2001	7	2001	10	8	0.56
3580	Army Men: Sarge's Heroes	13	1999	9	78	0.56
3581	Phineas and Ferb: Across the 2nd Dimension	4	2011	9	33	0.56
3582	Petz Dogz 2	7	2007	8	6	0.56
3583	Battlefield 2: Modern Combat	14	2005	7	8	0.56
3584	Wolfenstein	5	2009	7	5	0.56
3585	All-Star Baseball 2002	7	2001	1	31	0.56
3586	Backyard NFL Football	9	2002	1	53	0.56
3587	Need for Speed: Most Wanted	19	2005	3	8	0.56
3588	NASCAR Rumble	13	2000	3	8	0.56
3589	Tony Hawk: Shred	1	2010	1	5	0.56
3590	Tony Hawk's Proving Ground	5	2007	1	5	0.56
3591	WWE Raw 2	14	2003	10	29	0.56
3592	Resident Evil 2	12	1999	9	19	0.56
3593	Mega Man X2	8	1993	2	150	0.56
3594	Manhunt 2	7	2007	9	3	0.56
3595	Xenoblade Chronicles	10	2015	4	1	0.56
3596	Fullmetal Alchemist and the Broken Angel	7	2003	4	17	0.56
3597	Monster High: Ghoul Spirit	1	2011	6	29	0.56
3598	Final Fantasy IV: The Complete Collection	17	2011	4	17	0.56
3599	Frontlines: Fuel of War	5	2008	7	29	0.56
3600	Lips: Number One Hits	5	2009	6	2	0.56
3601	Hamtaro: Ham-Hams Unite!	3	2001	4	1	0.56
3602	Batman Begins	7	2005	9	8	0.56
3603	Viva Pinata: Pocket Paradise	4	2008	8	29	0.56
3604	Dr. Seuss' The Cat in the Hat	7	2003	6	24	0.56
3605	Barbie Groovy Games	9	2002	6	21	0.56
3606	Yu-Gi-Oh! Reshef of Destruction	9	2003	12	15	0.56
3607	Blinx: The Time Sweeper	14	2002	2	2	0.56
3608	Madagascar: Escape 2 Africa	1	2008	9	5	0.56
14340	Rampo	24	1995	11	9	0.03
3609	Archer Maclean's Mercury	17	2005	5	151	0.56
3610	ESPN NFL Football	7	2003	1	9	0.56
3611	Fatal Fury Special	8	1994	10	152	0.56
3612	Catz	4	2006	8	6	0.56
3613	Major League Baseball 2K5	14	2005	1	3	0.56
3614	DS Bimoji Training	4	2008	6	1	0.56
3615	WWE 2K15	18	2014	1	3	0.56
3616	Petz Catz Clan	4	2008	8	6	0.56
3617	Soul Sacrifice	23	2013	4	4	0.56
3618	G-Force	4	2009	9	33	0.56
3619	Tiger Woods PGA Tour 11	1	2010	1	8	0.56
3620	Soldier of Fortune: Gold Edition	7	2001	7	36	0.56
3621	Rune Factory: A Fantasy Harvest Moon	4	2006	4	71	0.56
3622	Monster Jam: Path of Destruction	1	2010	3	5	0.56
3623	Rapala Tournament Fishing!	1	2006	1	5	0.56
3624	MX 2002 Featuring Ricky Carmichael	7	2001	3	29	0.56
3625	Purr Pals	4	2007	8	29	0.56
3626	NCAA Football 07	14	2006	1	8	0.56
3627	God of War: Origins Collection	6	2011	9	4	0.56
3628	MX vs. ATV: Alive	5	2011	3	29	0.56
3629	Lunar: Silver Star Story Complete	13	1998	4	153	0.55
3630	Dragon Ball: XenoVerse	6	2015	10	26	0.55
3631	NBA Showtime: NBA on NBC	13	1999	1	40	0.55
3632	ZhuZhu Pets 2: Featuring The Wild Bunch	4	2010	8	5	0.55
3633	Dragon Age: Inquisition	5	2014	4	8	0.55
3634	Soul Reaver 2	7	2001	9	22	0.55
3635	Metal Gear Solid 3: Subsistence	7	2005	9	15	0.55
3636	Sly Cooper: Thieves in Time	6	2013	2	16	0.55
3637	The Godfather (old US sales)	14	2006	9	8	0.55
3638	Daytona USA	24	1994	3	9	0.55
3639	Harry Potter and the Deathly Hallows - Part 1	1	2010	9	8	0.55
3640	Tiger Woods PGA Tour 13	6	2012	1	8	0.55
3641	WWF Raw	14	2002	10	29	0.55
3642	Shin Super Robot Taisen	13	1996	4	58	0.55
3643	Jump Super Stars	4	2005	10	1	0.55
3644	Legends of WrestleMania	6	2009	10	29	0.55
3645	The Activision Decathlon	16	1982	1	5	0.55
3646	Simple 1500 Series Vol. 73: The Invaders ~Space Invaders 1500~	13	2001	7	59	0.55
3647	50 Classic Games	4	2009	6	154	0.55
3648	Fighting Force 2	13	1999	9	22	0.55
3649	Sakura Wars	24	1996	11	9	0.55
3650	Yokai Sangokushi	10	2016	9	38	0.55
3651	Extermination	7	2001	9	4	0.55
3652	Batman: Vengeance	7	2001	11	6	0.55
3653	Unit 13	23	2012	7	4	0.55
3654	Tatsunoko vs. Capcom: Ultimate All-Stars	1	2010	10	13	0.55
3655	TMNT	5	2007	9	6	0.55
3656	F.E.A.R.	6	2007	7	24	0.55
3657	Secret Agent Clank(US sales)	17	2008	2	4	0.55
3658	Assassin's Creed: Unity	15	2014	9	6	0.55
3659	Derby Stallion 04	7	2004	1	155	0.55
3660	NBA 2K8	6	2007	1	3	0.55
3661	Barbie Horse Adventures: Riding Camp	4	2008	1	5	0.55
3662	CrossworDS	4	2008	5	42	0.55
3663	Tony Hawk's Pro Skater 3	14	2002	1	5	0.55
3664	Mega Man Zero	9	2002	2	13	0.55
3665	Contender 2	13	2000	10	78	0.55
3666	The Amazing Spider-Man 2 (2014)	11	2014	9	5	0.55
3667	Star Wars: Dark Forces	13	1996	7	18	0.55
3668	SD Gundam G Generation Zero	13	1999	12	26	0.55
3669	Super Robot Taisen F	24	1997	12	58	0.55
3670	Shrek 2	14	2004	2	5	0.55
3671	Soccer Tsuku 2002: J-League Pro Soccer Club o Tsukurou!	7	2002	1	9	0.55
3672	Time Crisis: Razing Storm	6	2010	7	26	0.55
3673	SpongeBob SquarePants: SuperSponge	9	2001	9	29	0.55
3674	Super Robot Taisen F Kanketsuhen	24	1998	12	58	0.55
3675	Enslaved: Odyssey to the West	5	2010	9	26	0.55
3676	Rune Factory 4	10	2012	4	156	0.55
3677	Summer Sports: Paradise Island	1	2008	1	6	0.55
3678	Tak and the Power of Juju	9	2003	2	29	0.55
3679	Dynasty Warriors: Gundam 3	6	2010	9	49	0.55
3680	Mortal Kombat 3	13	1995	10	4	0.55
3681	Turok: Evolution	14	2002	7	31	0.55
3682	Jak X: Combat Racing	7	2005	3	4	0.55
3683	Metro 2033	5	2010	7	29	0.55
3684	Are You Smarter than a 5th Grader? Make the Grade	1	2008	6	29	0.55
3685	American Idol	7	2003	6	36	0.55
3686	Top Gun: Fire at Will!	13	1996	6	97	0.55
3687	Red Dead Revolver	14	2004	7	3	0.55
3688	Dragon Ball Z: Shin Budokai	17	2006	10	11	0.55
3689	LEGO The Hobbit	6	2014	9	20	0.54
3690	Iron Man	7	2008	9	9	0.54
3691	SingStar Summer Party	7	2008	6	4	0.54
3692	Tiger Woods PGA Tour 08	5	2007	1	8	0.54
3693	NBA Live 10	6	2009	1	8	0.54
3694	The SpongeBob SquarePants Movie	14	2004	2	29	0.54
3695	FIFA Soccer 07	14	2006	1	8	0.54
3696	Gekikuukan Pro Yakyuu: At the End of the Century 1999	7	2000	1	10	0.54
3697	Medarot 2: Kabuto / Kuwagata Version	3	1999	4	157	0.54
3698	Excite Truck	1	2006	3	1	0.54
3699	Sacred 2: Fallen Angel	5	2009	4	42	0.54
3700	System 3 presents Ferrari Challenge Trofeo Pirelli	1	2008	3	158	0.54
3701	Dance Dance Revolution Ultramix	14	2003	8	15	0.54
3702	ModNation Racers	17	2010	3	4	0.54
3703	Crash Tag Team Racing	7	2005	3	24	0.54
3704	Two Worlds II	5	2011	4	54	0.54
3705	Sonic & All-Stars Racing Transformed	6	2012	3	9	0.54
3706	Michael Jackson: The Experience	6	2011	6	6	0.54
3707	Front Mission 4	7	2003	12	17	0.54
3708	The Fairly Odd Parents: Breakin' Da Rules	9	2003	2	29	0.54
3709	LEGO Dimensions	6	2015	9	20	0.54
3710	Inazuma Eleven	4	2008	4	1	0.54
3711	Ninokuni: Shikkoku no Madoushi	4	2010	4	38	0.54
3712	Minecraft: Story Mode	18	2015	11	107	0.54
3713	Resident Evil: Revelations 2	11	2015	9	13	0.54
3714	Manhunt 2	1	2007	9	3	0.54
3715	SRS: Street Racing Syndicate	7	2004	3	26	0.54
3716	Despicable Me: The Game - Minion Mayhem	4	2010	5	59	0.54
3717	Def Jam: Fight for NY	14		10	8	0.54
3718	Action Force	16	1982	9	159	0.54
3719	Gauntlet Legends	12	1999	9	40	0.54
3720	FIFA 99	12	1998	1	8	0.54
3721	Kidou Senshi Gundam: Extreme VS	6	2011	10	26	0.54
3722	Dragon Ball Z: Ultimate Tenkaichi	5	2011	10	26	0.54
3723	Tales of Symphonia	6	2013	4	26	0.54
3724	Bust A Groove	13	1998	6	4	0.54
3725	Fire Emblem: Path of Radiance	19	2005	9	1	0.54
3726	Dragon Quest Characters: Torneko no Daibouken 3: Fushigi no Dungeon	7	2002	4	25	0.54
3727	Let's Draw!	4	2008	6	6	0.54
3728	Pachi-Slot Aruze Oukoku 2	13	1999	6	160	0.54
3729	NHL 14	5	2013	1	8	0.54
3730	Valkyria Chronicles II	17	2010	4	9	0.54
3731	Middle-Earth: Shadow of Mordor	5	2014	9	20	0.54
3732	Madden NFL 13	1	2012	1	8	0.54
3733	Rune Factory 2: A Fantasy Harvest Moon	4	2008	4	71	0.54
3734	Terminator Salvation	6	2009	7	20	0.54
3735	Cars 2	6	2011	3	33	0.54
3736	Bratz: Rock Angelz	9	2004	6	29	0.54
3737	How to Train Your Dragon	4	2010	9	5	0.54
3738	SSX Tricky	19	2001	1	8	0.54
3739	WWE SmackDown vs. Raw 2010	4	2009	10	29	0.54
3740	Greg Hastings' Tournament Paintball	14	2004	7	5	0.54
3741	Hello Kitty: Big City Dreams	4	2008	5	90	0.54
3742	Star Fox Command	4	2006	7	1	0.54
3743	World Soccer Winning Eleven 7 International (JP version)	7	2004	1	15	0.54
3744	ESPN NBA Basketball	7	2003	1	9	0.54
3745	Inazuma Eleven GO	10	2011	4	1	0.54
3746	Over the Hedge	7	2006	2	5	0.54
3747	Mat Hoffman's Pro BMX	13	2001	1	5	0.54
3748	Lego Star Wars: The Force Awakens	11	2016	9	20	0.54
3749	Epic Mickey 2: The Power of Two	5	2012	9	33	0.54
3750	Popeye	16	1982	2	46	0.54
3751	Magician's Quest: Mysterious Times	4	2008	4	15	0.54
3752	The Hobbit	7	2003	2	24	0.54
3753	War of the Monsters	7	2003	10	4	0.54
3754	Tales of Symphonia: Dawn of the New World	1	2008	4	26	0.54
3755	NBA Street Vol. 2	19		1	8	0.54
3756	The Incredible Hulk: Ultimate Destruction	7	2005	9	24	0.54
3757	Star Wars Battlefront (2015)	15	2015	7	8	0.54
3758	Sakura Taisen 2 - Kimi, Shinitamou Koto Nakare	24	1998	11	9	0.53
3759	Jewel Master Egypt	4	2009	5	142	0.53
3760	Time Crisis II	7	2001	7	26	0.53
3761	Clock Tower	13	1996	11	51	0.53
3762	NCAA March Madness 06	7	2005	1	8	0.53
3763	SpongeBob SquarePants featuring Nicktoons: Globs of Doom	1	2008	9	29	0.53
3764	Jampack Volume 11	7	2004	6	4	0.53
3765	Dragon's Crown	6	2013	4	132	0.53
3766	Tactics Ogre: Let Us Cling Together	17	2010	4	17	0.53
3767	Legacy of Kain: Defiance	7	2003	9	22	0.53
3768	SpongeBob SquarePants: Game Boy Advance Video Volume 2	9	2004	6	34	0.53
3769	NCAA March Madness 2005	7	2004	1	8	0.53
3770	007 Racing	13	2000	3	8	0.53
3771	Conflict: Vietnam	7	2004	7	112	0.53
3772	2 in 1 Combo Pack: Sonic Heroes / Super Monkey Ball Deluxe	14	2004	6	9	0.53
3773	Mystery Dungeon: Shiren the Wanderer	4	2006	4	9	0.53
3774	SimAnimals	4	2009	8	8	0.53
3775	MLB SlugFest 20-04	7	2003	1	40	0.53
3776	Gex 3: Deep Cover Gecko	13	1999	2	22	0.53
3777	NASCAR 09	7	2008	3	8	0.53
3778	Blitz: The League	14	2004	1	40	0.53
3779	Jampack Vol. 2	13	1996	6	4	0.53
3780	LEGO Jurassic World	20	2015	9	20	0.53
3781	Sesame Street: Once Upon A Monster	5	2011	6	20	0.53
3782	Virtual Soccer	8	1993	1	69	0.53
3783	Romance of the Three Kingdoms IV: Wall of Fire	8	1994	12	49	0.53
3784	Winning Post	8	1993	1	49	0.53
3785	Peter Jackson's King Kong: The Official Game of the Movie	14	2005	9	6	0.53
3786	SingStar Dance	6	2010	6	4	0.53
3787	Kirby and the Rainbow Curse	20	2015	2	1	0.53
3788	Burnout Revenge	14	2005	3	8	0.53
3789	FIFA 12	17	2011	1	8	0.53
3790	Medal of Honor: European Assault	14	2005	7	8	0.53
3791	Batman: Arkham City	15	2011	9	20	0.53
3792	Ty the Tasmanian Tiger 2: Bush Rescue	7	2004	2	8	0.53
3793	The Lord of the Rings: The Fellowship of the Ring	14	2002	9	21	0.53
3794	NBA 06	7	2005	1	4	0.53
3795	Sonic & All-Stars Racing Transformed	20	2012	3	9	0.53
3796	Spider-Man	12	2000	9	5	0.53
3797	We Cheer	1	2008	8	12	0.53
3798	Tom Clancy's Ghost Recon Advanced Warfighter 2	17	2007	7	6	0.53
3799	X-Men Legends	19	2004	4	5	0.53
3800	Alice in Wonderland	1	2010	11	33	0.53
3801	Littlest Pet Shop 3: Biggest Stars - Blue / Pink / Purple Team	4	2010	8	8	0.53
3802	Front Mission 2	13	1997	12	10	0.53
3803	Bulletstorm	6	2011	7	8	0.53
3804	F.E.A.R. 2: Project Origin	5	2009	7	20	0.53
3805	Tiger Woods PGA Tour 11	5	2010	1	8	0.53
3806	Stuntman: Ignition	6	2007	3	29	0.53
3807	Are You Smarter Than A 5th Grader?	4	2007	6	52	0.53
3808	F1 2009	17	2009	3	36	0.53
3809	Oni	7	2001	9	3	0.53
3810	The Lord of the Rings: The Two Towers	19	2002	9	8	0.53
3811	Juiced	7	2005	3	29	0.53
3812	The Warriors	7	2005	9	3	0.53
3813	Batman: Arkham Origins Blackgate	23	2013	9	20	0.53
3814	J-League Soccer: Prime Goal 2	8	1994	1	26	0.53
3815	Go Diego Go! Safari Rescue	1	2008	9	3	0.53
3816	The Walking Dead: Survival Instinct	6	2013	7	5	0.53
3817	Picross 3D	4	2009	5	1	0.53
3818	Just Dance 2015	18	2014	6	6	0.53
3819	Silent Hill: Origins	17	2007	9	15	0.53
3820	NASCAR 2000	12	1999	3	8	0.53
3821	Wayne Gretzky's 3D Hockey	12	1996	1	1	0.53
3822	Pachi-Slot Aruze Oukoku 4	13	2000	6	160	0.53
3823	Return to Castle Wolfenstein: Operation Resurrection	7	2003	7	5	0.53
3824	Mario Tennis: Power Tour	9	2005	1	1	0.52
3825	Seaman	22	1999	8	9	0.52
3826	Guinness World Records: The Videogame	4	2008	9	20	0.52
3827	The Grinch	13	1999	11	15	0.52
3828	GT Pro Series	1	2006	3	6	0.52
3829	Tales of Destiny	7	2006	4	26	0.52
3830	Spectrobes: Beyond the Portals	4	2008	4	33	0.52
3831	Classic Word Games	4	2009	6	6	0.52
3832	Naruto Shippuden: Clash of Ninja Revolution 3	1	2009	10	1	0.52
3833	Fight Night Round 3	17	2006	10	8	0.52
3834	The Golden Compass	7	2007	9	9	0.52
3835	Final Fantasy Chronicles	13	2001	4	55	0.52
3836	NBA Live 08	5	2007	1	8	0.52
3837	Syphon Filter 3	13	2001	7	4	0.52
3838	Star Wars Battlefront: Elite Squadron	4	2009	7	18	0.52
3839	Metal Gear Solid 2: Substance	7	2002	9	15	0.52
3840	We Love Katamari	7	2005	5	8	0.52
3841	NCAA Football 2003	14	2002	1	8	0.52
3842	Way of the Samurai 3	6	2008	9	161	0.52
3843	NBA Live 09	6	2008	1	8	0.52
3844	DC Universe Online	6	2011	4	77	0.52
3845	Ready 2 Rumble Boxing: Round 2	13	2000	10	40	0.52
3846	Mega Man 6	2	1993	2	13	0.52
3847	Mission: Impossible	13	1999	9	53	0.52
3848	Final Fantasy Explorers	10	2014	4	17	0.52
3849	Rival Schools: United By Fate	13	1998	10	13	0.52
3850	Bully: Scholarship Edition	1	2008	9	3	0.52
3851	IL-2 Sturmovik: Birds of Prey	5	2009	8	12	0.52
3852	PlayStation All-Stars Battle Royale	23	2012	9	4	0.52
3853	Ratatouille	6	2007	9	29	0.52
3854	Cars Toon: Mater's Tall Tales	1	2010	6	33	0.52
3855	Kung Fu Panda	6	2008	9	5	0.52
3856	Swing Away Golf	7	2000	1	8	0.52
3857	J-League Pro Soccer Club o Tsukurou! 3	7	2003	1	9	0.52
3858	Tomb Raider: Legend	7	2006	9	22	0.52
3859	Ratatouille	1	2007	9	29	0.52
3860	Freedom Fighters	7	2003	7	8	0.52
3861	Gun	14	2005	7	5	0.52
3862	That's So Raven 2: Supernatural Style	9	2005	11	33	0.52
3863	Lair	6	2007	9	4	0.52
3864	Madden NFL 07	6	2006	1	8	0.52
3865	The Punisher	7	2005	9	29	0.52
3866	Front Mission 3	13	1999	12	10	0.52
3867	Kenkou Ouen Recipe 1000: DS Kondate Zenshuu	4	2006	6	1	0.52
3868	SSX On Tour	7	2005	1	8	0.52
3869	Tony Hawk's Pro Skater 3	9	2002	1	5	0.52
3870	Harry Potter and the Prisoner of Azkaban	9	2004	9	8	0.52
3871	Petz: Hamsterz Life 2	4	2007	6	6	0.52
3872	Omega Boost	13	1999	7	4	0.52
3873	The Sims 2: Open for Business	15	2006	8	8	0.52
3874	Iron Man	4	2008	9	9	0.52
3875	NFL 2K3	14	2002	1	9	0.52
3876	NBA Live 2002	13	2001	1	8	0.52
3877	Jampack Winter 2002	7	2002	6	4	0.52
3878	My Word Coach	1	2007	6	6	0.51
3879	Way of the Samurai	7	2002	9	22	0.51
3880	Dragon Age: Origins	15	2009	4	8	0.51
3881	Naruto Shippuden: Ultimate Ninja Storm 3	5	2013	10	26	0.51
3882	Fishing Derby	16		1	5	0.51
3883	Pac-Man Fever	7	2001	6	4	0.51
3884	The LEGO Movie Videogame	18	2014	9	20	0.51
3885	The 3rd Birthday	17	2010	4	17	0.51
3886	Prince of Persia Trilogy	6	2010	9	6	0.51
3887	International Track & Field	13	1996	1	15	0.51
3888	100 All-Time Favorites	4	2009	5	6	0.51
3889	HSX HyperSonic.Xtreme	7	2002	3	162	0.51
3890	StarCraft II: Legacy of the Void	15	2015	12	5	0.51
3891	Tiger Woods PGA Tour 13	5	2012	1	8	0.51
3892	SoulCalibur: Broken Destiny	17	2009	10	26	0.51
3893	The Saboteur	5	2009	9	8	0.51
3894	Lords of the Fallen	11	2014	4	17	0.51
3895	Pro Evolution Soccer 2010	1	2009	1	15	0.51
3896	Goldeneye 007: Reloaded	5	2011	7	5	0.51
3897	Jam With the Band	4	2008	6	1	0.51
3898	Madden NFL 2004	19	2003	1	8	0.51
3899	Jikkyou Powerful Pro Yakyuu 10	7	2003	1	15	0.51
3900	Summoner	7	2000	4	29	0.51
3901	Virtual Pool	13	1997	1	118	0.51
3902	NBA Live 07	17	2006	1	8	0.51
3903	Sega Bass Fishing	1	2008	1	9	0.51
3904	Fire Emblem: Radiant Dawn	1	2007	12	1	0.51
3905	Dynasty Warriors	17	2004	9	49	0.51
3906	SpongeBob SquarePants: Lights, Camera, Pants!	9	2005	6	29	0.51
3907	Dragon Ball: Raging Blast	5	2009	10	26	0.51
3908	Rugrats: Scavenger Hunt	12	1999	6	29	0.51
3909	Wrecking Crew	2	1985	2	1	0.51
3910	International Superstar Soccer 2000 (All region sales)	12	1999	1	15	0.51
3911	Major League Baseball 2K10	5	2010	1	3	0.51
3912	Monsters vs. Aliens	4	2009	9	5	0.51
3913	Transformers: War for Cybertron (XBox 360, PS3, & PC Versions)	6	2010	7	5	0.51
3914	SpongeBob SquarePants: Creature from the Krusty Krab	1	2006	2	29	0.51
3915	Lost: Via Domus	6	2008	9	6	0.51
3916	NBA Live 2004	14	2003	1	8	0.51
3917	Dai-4-Ji Super Robot Taisen S	13	1996	12	58	0.51
3918	Disney's Kim Possible: Revenge of Monkey Fist	9	2002	2	29	0.51
3919	WWE SmackDown vs. RAW 2007	5	2006	10	29	0.51
3920	Ace Combat Zero: The Belkan War	7	2006	8	26	0.51
3921	R.U.S.E.	6	2010	12	6	0.51
3922	Disgaea 3: Absence of Justice	6	2008	4	17	0.51
3923	Test Drive Unlimited	17	2007	3	11	0.51
3924	LEGO Dimensions	20	2015	9	20	0.51
3925	Picross DS	4	2007	5	1	0.51
3926	Final Fantasy II Anniversary Edition	17	2007	4	17	0.51
3927	NHL 07	7	2006	1	8	0.51
3928	Harry Potter and the Half-Blood Prince	17	2009	9	8	0.51
3929	Quantum Break	18	2016	9	2	0.51
3930	NBA 2K11	1	2010	9	3	0.51
3931	World Championship Poker	14	2004	6	68	0.51
3932	The BIGS	7	2007	1	3	0.51
3933	Final Fantasy	26	2000	4	10	0.51
3934	Burnout Revenge	5	2006	3	8	0.51
3935	Rory McIlroy PGA Tour	11	2015	9	8	0.51
3936	Euro Truck Simulator	15	2008	8	142	0.51
3937	Dragon Ball Z: Supersonic Warriors	9	2004	10	11	0.51
3938	Dishonored	15	2012	9	7	0.51
3939	Paws & Claws: Dogs & Cats Best Friends	4	2007	8	29	0.51
3940	NBA Ballers	14	2004	1	40	0.51
3941	Silent Hill 4: The Room	7	2004	9	15	0.51
3942	River Raid II	16	1988	7	5	0.51
3943	Capcom Classics Collection	7	2005	6	13	0.51
3944	Guitar Hero Live	18	2015	6	5	0.51
3945	Wolfenstein: The New Order	6	2014	7	7	0.51
3946	Monopoly Party	7	2002	6	53	0.51
3947	Hidden Mysteries: Titanic - Secrets of the Fateful Voyage	4	2009	11	96	0.51
3948	NHL FaceOff 98	13	1997	1	4	0.51
3949	The Adventures of Jimmy Neutron Boy Genius: Attack of the Twonkies	9	2004	9	29	0.5
3950	F1 2012	5	2012	3	36	0.5
3951	NHL 09	5	2008	1	8	0.5
3952	Sonic Riders	7	2006	3	9	0.5
3953	Looney Tunes: Back in Action	7	2003	2	20	0.5
3954	Wet	5		7	7	0.5
3955	Midnight Magic	16	1983	9	11	0.5
3956	Alice: Madness Returns	5	2011	11	8	0.5
3957	Pro Evolution Soccer 2012	5	2011	9	15	0.5
3958	Tiger Woods PGA Tour 07	6	2006	1	8	0.5
3959	Midnight Club II	14	2003	3	3	0.5
3960	Atelier Rorona: Alchemist of Arland	6	2009	4	132	0.5
3961	Monster Hunter Freedom 2	6	2011	4	13	0.5
3962	Dragon Ball Z: Supersonic Warriors 2	4	2005	10	11	0.5
3963	Avatar: The Last Airbender	19	2006	11	29	0.5
3964	Blue's Clues: Blue's Big Musical	13	2001	6	29	0.5
3965	The Mummy Returns	7	2001	9	21	0.5
3966	Hitman: Blood Money	7	2006	9	22	0.5
3967	Disney Sing It	7	2008	6	33	0.5
3968	Chopper Command	16	1982	7	5	0.5
3969	Activision Anthology	7	2002	6	5	0.5
3970	Crash: Mind Over Mutant	7	2008	2	24	0.5
3971	WWE 2K16	5	2015	1	3	0.5
3972	LEGO The Hobbit	5	2014	9	20	0.5
3973	Babysitting Mama	1	2010	8	12	0.5
3974	Boogie	1	2007	6	8	0.5
3975	Theatrhythm: Final Fantasy	10	2012	6	17	0.5
3976	Bleach: Soul Resurreccion	6	2011	10	132	0.5
3977	Madden NFL 07	1	2006	1	8	0.5
3978	Rugrats in Paris: The Movie	12	2000	9	29	0.5
3979	Dance Dance Revolution Universe 2	5	2007	8	15	0.5
3980	Star Wars: Jedi Starfighter	7	2002	8	5	0.5
3981	Tactics Ogre: The Knight of Lodis	9	2001	4	1	0.5
3982	Fortune Street	1	2011	6	1	0.5
3983	Super Robot Taisen MX	7	2004	12	58	0.5
3984	Alice in Wonderland	4	2010	11	33	0.5
3985	NBA Street Homecourt	5	2007	1	8	0.5
3986	Spider-Man 2	4	2004	9	5	0.5
3987	Bases Loaded '96: Double Header	13	1995	1	163	0.5
3988	Dead or Alive Ultimate	14	2004	10	49	0.5
3989	RPG Maker	13	1997	4	51	0.5
3990	FIFA 14	23	2013	1	8	0.5
3991	Star Wars: Clone Wars	7	2002	7	18	0.5
3992	The Saboteur	6	2009	9	8	0.5
3993	The Adventures of Jimmy Neutron Boy Genius: Attack of the Twonkies	7	2004	9	29	0.5
3994	Metal Gear Rising: Revengeance	5	2013	9	15	0.5
3995	Madden NFL 11	7	2010	1	8	0.5
3996	Major League Baseball 2K12	5	2012	1	3	0.5
3997	Alien: Isolation	18	2014	7	9	0.5
3998	The Price is Right	4	2008	6	6	0.5
3999	Monster Hunter	7	2004	4	13	0.5
4000	Cars 2	5	2011	3	33	0.5
4001	Dreamworks Madagascar Kartz	1	2009	3	5	0.5
4002	Tony Hawk's Underground 2	19	2004	1	5	0.5
4003	SplashDown: Rides Gone Wild	7	2003	3	29	0.5
4004	Super Famista 5	8	1996	1	26	0.5
4005	Dynasty Warriors: Gundam 2	6	2008	9	26	0.5
4006	Shrek SuperSlam	7	2005	9	5	0.5
4007	Rayman Advance	9	2001	2	6	0.5
4008	Super Robot Taisen Z	7	2008	12	26	0.5
4009	PoPoLoCrois Monogatari	13	1996	4	4	0.5
4010	Tomb Raider: Anniversary	7	2007	9	22	0.5
4011	Fantastic 4	7	2005	9	5	0.5
4012	Epic Mickey 2: The Power of Two	6	2012	9	33	0.5
4013	Men in Black II: Alien Escape	7	2002	7	53	0.5
4014	The Evil Within	5	2014	9	7	0.5
4015	RealSports Tennis	16	1982	1	11	0.5
4016	Nicktoons: Attack of the Toybots	7	2007	2	29	0.5
4017	Raiders of the Lost Ark	16	1981	9	11	0.5
4018	Gauntlet	16	1982	9	164	0.5
4019	Ridge Racer 3D	10	2011	3	26	0.5
4020	Cars Mater-National Championship	1	2007	3	29	0.49
4021	Ace Combat: Assault Horizon	5	2011	9	26	0.49
4022	Resident Evil: The Mercenaries 3D	10	2011	9	13	0.49
4023	Super Monkey Ball 3D	10	2011	9	9	0.49
4024	Tony Hawk's Project 8	5	2006	1	5	0.49
4025	Tony Hawk's Underground 2	9	2004	1	5	0.49
4026	MotorStorm: Apocalypse	6	2011	3	4	0.49
4027	Ice Hockey	16	1980	1	5	0.49
4028	Dragon Quest Heroes: The World's Tree Woe and the Blight Below	6	2015	9	17	0.49
4029	Lego Batman 3: Beyond Gotham	23	2014	9	20	0.49
4030	The Matrix: Path of Neo	7	2005	9	11	0.49
4031	Kane & Lynch 2: Dog Days	5	2010	7	17	0.49
4032	Lollipop Chainsaw	5	2012	9	20	0.49
4033	WWE Wrestlemania X8	19	2002	10	29	0.49
4034	Sonic Lost World	10	2013	2	9	0.49
4035	Power Rangers: Dino Thunder	9	2003	9	29	0.49
4036	GoldenEye: Rogue Agent	14	2004	7	8	0.49
4037	Ultimate I Spy	1	2008	11	117	0.49
4038	SpongeBob SquarePants: Creature from the Krusty Krab	4	2006	2	29	0.49
4039	The Sims	19	2003	8	8	0.49
4040	Grandia III	7	2005	4	17	0.49
4041	FIFA Soccer 09	4	2008	1	8	0.49
4042	Mobile Suit Gundam Seed Destiny: Rengou vs. Z.A.F.T. II Plus	7	2006	7	26	0.49
4043	Mario & Wario	8	1993	5	1	0.49
4044	Scarface: The World is Yours	14	2006	9	24	0.49
4045	Transformers: Revenge of the Fallen (XBox 360, PS3, & PC Versions)	1	2009	7	5	0.49
4046	Pokemon Art Academy	10	2014	6	1	0.49
4047	FIFA Soccer 64	12	1997	1	8	0.49
4048	Dragon Ball Z: Burst Limit	5	2008	10	11	0.49
4049	Bakugan Battle Brawlers: Defenders of the Core	4	2010	9	5	0.49
4050	Medal of Honor	15	2010	7	8	0.49
4051	Doom 3 BFG Edition	5	2012	7	7	0.49
4052	J-League Pro Soccer Club wo Tsukurou! 2	24	1997	1	9	0.49
4053	Terraria	6	2013	9	12	0.49
4054	Backyard Baseball	7	2004	1	11	0.49
4055	WipEout Pulse	7	2009	3	4	0.49
4056	Barbie Horse Adventures: Wild Horse Rescue	7	2003	1	21	0.49
4057	Epic Mickey: Power of Illusion	10	2012	9	33	0.49
4058	LEGO Marvel Super Heroes	4	2013	9	20	0.49
4059	Taiko no Tatsujin: Appare Sandaime	7	2003	6	26	0.49
4060	Alone in the Dark	5	2008	11	11	0.49
4061	One Piece: Grand Battle!	13	2001	10	11	0.49
4062	Transformers: Revenge of the Fallen (XBox 360, PS3, & PC Versions)	7	2009	7	5	0.49
4063	Football Manager Handheld 2009	17	2008	1	9	0.49
4064	Sniper: Art of Victory	15	2008	7	89	0.49
4065	Crazy Taxi	19	2001	3	31	0.49
4066	Spy Hunter 2	7	2003	3	40	0.49
4067	F1 2014	6	2014	3	36	0.49
4068	Pac-Man World 2	14	2002	9	26	0.49
4069	Bass Pro Shops: The Strike	1	2009	1	165	0.49
4070	Die Hard Trilogy 2: Viva Las Vegas	13	1999	9	30	0.49
4071	Jake Power: Fireman	4	2008	11	6	0.49
4072	Asphalt 3D	10	2011	3	6	0.49
4073	Momotarou Dentetsu X: Kyuushuu-hen mo Arubai	7	2001	6	69	0.49
4074	Steel Diver	10	2011	9	1	0.49
4075	Tales of Legendia	7	2005	4	26	0.49
4076	SimCity 2000	8	1995	8	29	0.49
4077	Crash of the Titans	4	2007	9	24	0.49
4078	Far Cry 2	15	2008	9	6	0.49
4079	Battlefield: Hardline	6	2015	7	8	0.49
4080	Harry Potter and the Order of the Phoenix	1	2007	9	8	0.49
4081	Rayman Raving Rabbids: TV Party	4	2008	6	6	0.49
4082	F.E.A.R. 2: Project Origin	6	2009	7	20	0.49
4083	Sonic & All-Stars Racing Transformed	23	2012	3	9	0.48
4084	Scene It? Lights Camera Action	5	2007	6	2	0.48
4085	Dead Space Extraction	1	2009	7	8	0.48
4086	Scrabble 2007 Edition	4	2007	5	6	0.48
4087	Shrek the Third	7	2007	9	5	0.48
4088	Metal Gear Solid HD Edition	23	2012	9	15	0.48
4089	Children of Mana	4	2006	4	1	0.48
4090	Madagascar: Operation Penguin	9	2005	9	5	0.48
4091	Active Life: Extreme Challenge	1	2009	1	26	0.48
4092	The Sims 2: Pets	1	2007	8	8	0.48
4093	Mario Golf: World Tour	10	2014	1	1	0.48
4094	Need for Speed: Porsche Unleashed	9	2004	3	87	0.48
4095	Yu-Gi-Oh! Forbidden Memories (JP sales)	13	1999	4	15	0.48
4096	NFL Street 2	14	2004	1	8	0.48
4097	Silent Hill: Shattered Memories	1	2009	9	15	0.48
4098	Millipede	16	1983	7	11	0.48
4099	The Legend of the Mystical Ninja	8	1991	11	15	0.48
4100	You're in the Movies	5	2008	6	2	0.48
4101	Dark Sector	5	2008	7	59	0.48
4102	James Bond 007: Blood Stone	5	2010	7	5	0.48
4103	Jeopardy!	7	2003	6	11	0.48
4104	Destroy All Humans! 2	7	2006	9	29	0.48
4105	ECW Hardcore Revolution	13	1999	10	31	0.48
4106	Pinball Hall of Fame: The Williams Collection	1	2008	6	158	0.48
4107	Tiger Woods PGA Tour 07	5	2006	1	8	0.48
4108	Wu-Tang: Shaolin Style	13	1998	10	5	0.48
4109	World of Warcraft: Warlords of Draenor	15	2014	9	166	0.48
4110	Rock Band Unplugged	17	2009	6	32	0.48
4111	OkamiDen	4	2010	11	13	0.48
4112	Crash: Mind Over Mutant	5	2008	2	24	0.48
4113	2010 FIFA World Cup South Africa	17	2010	1	8	0.48
4114	Secret Weapons Over Normandy	7	2003	8	18	0.48
4115	Go Diego Go! Great Dinosaur Rescue	4	2008	9	3	0.48
4116	All-Star Baseball 99	12	1998	1	31	0.48
4117	Harvest Moon 64	12	1999	8	167	0.48
4118	NCAA Football 09	7	2008	1	8	0.48
4119	Bratz: The Movie	7	2007	8	29	0.48
4120	FIFA Soccer 13	20	2012	9	8	0.48
4121	Harvest Moon DS (US sales)	4	2005	8	71	0.48
4122	Vigilante 8: 2nd Offense	13	1999	3	5	0.48
4123	Two Worlds II	6	2011	4	54	0.48
4124	Football Manager 2015	15	2014	8	9	0.48
4125	Theme Park Roller Coaster	7	2000	12	8	0.48
4126	Need for Speed: Hot Pursuit	1	2010	3	8	0.48
4127	Skylanders: SuperChargers	20	2015	9	5	0.48
4128	Viva Pinata: Trouble in Paradise	5	2008	8	2	0.48
4129	Nickelodeon Team Umizoomi	4	2011	9	3	0.48
4130	FlingSmash	1	2010	9	1	0.48
4131	NFL Xtreme 2	13	1999	1	43	0.48
4132	Spider-Man 3	1	2007	2	5	0.48
4133	Midnight Club: Street Racing	9	2001	3	168	0.48
4134	Dynasty Warriors Gundam	6	2007	9	49	0.48
4135	Tomb Raider: Underworld	1	2008	9	22	0.48
4136	Final Fantasy Crystal Chronicles: Echoes of Time	4	2009	4	17	0.48
4137	Fable	5	2014	4	2	0.48
4138	Tiger Woods PGA Tour 06	14	2005	1	8	0.48
4139	FIFA World Cup Germany 2006	5	2006	1	8	0.48
4140	Up	7	2009	9	29	0.48
4141	Grand Prix	16	1981	3	5	0.48
4142	Ford Racing Off Road	1	2008	3	169	0.48
4143	SimCity Creator	1	2008	8	8	0.48
4144	World of Outlaws: Sprint Cars 2002	7	2002	3	151	0.48
4145	Cars: Race-O-Rama	4	2009	3	29	0.48
4146	Emergency Heroes	1	2008	3	6	0.48
4147	Sonic the Hedgehog	6		2	34	0.48
4148	Fantavision	7	2000	5	4	0.47
4149	Double Dragon	16	1989	9	5	0.47
4150	Alien Trilogy	13	1996	7	31	0.47
4151	NBA Live 99	12	1998	1	8	0.47
4152	Bravely Second: End Layer	10	2015	4	1	0.47
4153	Karate	16		10	170	0.47
4154	Dark Sector	6	2008	7	59	0.47
4155	Unreal Tournament III	5	2008	7	40	0.47
4156	X-Men: Next Dimension	7	2002	10	5	0.47
4157	Street Fighter X Tekken	5	2012	10	13	0.47
4158	The Godfather (JP sales)	7	2006	9	8	0.47
4159	MySims Racing	1	2009	3	8	0.47
4160	Hamsterz Life	4	2006	9	6	0.47
4161	Dragon Age Origins: Awakening	5	2010	4	8	0.47
4162	Super Puyo Puyo 2	8	1995	5	92	0.47
4163	Gauntlet Legends	13	2000	9	40	0.47
4164	Castlevania: Dawn of Sorrow	4	2005	2	15	0.47
4165	Naruto Shippuden: Ultimate Ninja Storm Revolution	6	2014	10	26	0.47
4166	Deadpool	6	2013	9	5	0.47
4167	WipEout	13	1995	9	88	0.47
4168	ICO	7	2001	9	4	0.47
4169	Silent Hill: Downpour	6	2012	9	15	0.47
4170	2014 FIFA World Cup Brazil	5	2014	1	8	0.47
4171	WWE SmackDown vs. Raw 2011	1	2010	10	29	0.47
4172	Dragon Quest 25 Shuunen Kinin: Famicom & Super Famicom Dragon Quest I-II-III	1	2011	4	17	0.47
4173	Victorious Boxers: Ippo's Road to Glory	7	2000	10	90	0.47
4174	Petz Sports	1	2008	8	6	0.47
4175	Lego Batman 3: Beyond Gotham	20	2014	9	20	0.47
4176	Densetsu no Stafi	9	2002	2	1	0.47
4177	Valkyrie Profile 2: Silmeria	7	2006	4	17	0.47
4178	Hot Wheels Velocity X	7	2002	3	29	0.47
4179	Shadowrun	5	2007	4	2	0.47
4180	FIFA Soccer 13	23	2012	9	8	0.47
4181	Virtua Tennis 4: World Tour	23	2011	1	9	0.47
4182	Warhammer 40,000: Dawn of War II	15	2009	12	29	0.47
4183	Crazy Taxi: Fare Wars	17	2007	3	9	0.47
4184	Clash of Elementalists	4	2010	9	38	0.47
4185	Spider-Man 3	4	2007	2	5	0.47
4186	Disney Infinity 3.0	6	2015	9	33	0.47
4187	L.A. Rush	7	2005	3	40	0.47
4188	Bomberman Hero	12	1998	2	1	0.47
4189	Automobili Lamborghini	12	1997	3	104	0.47
4190	Quest 64	12	1998	4	15	0.47
4191	Momotarou Dentetsu V	13	1999	6	124	0.47
4192	Doom 64	12	1997	7	40	0.47
4193	Boom Blox Bash Party	1	2009	5	8	0.47
4194	The Sims 3: Ambitions	15	2010	8	8	0.47
4195	Dead or Alive 4	5	2005	10	49	0.47
4196	Commando	16	1987	9	5	0.47
4197	Rise of Nightmares	5	2011	9	9	0.47
4198	The Princess and the Frog	1	2009	2	33	0.47
4199	NBA Ballers: Phenom	7	2006	1	40	0.47
4200	Need for Speed Carbon	14	2006	3	8	0.47
4201	Tiger Woods PGA Tour 07	1		1	8	0.47
4202	NHL 16	18	2015	1	8	0.47
4203	FIFA 12	15	2011	1	8	0.47
4204	MTV Music Generator	13	1999	6	36	0.47
4205	Spider-Man: Friend or Foe	4	2007	9	5	0.47
4206	Major League Baseball 2K13	5	2013	1	3	0.47
4207	Super Momotarou Dentetsu DX	8	1995	6	69	0.47
4208	World Soccer Winning Eleven 8: Liveware Evolution	7	2005	1	15	0.47
4209	The Sims 3: Outdoor Living Stuff	15	2011	8	8	0.47
4210	Cars: Race-O-Rama	7	2009	3	29	0.47
4211	Downhill Domination	7	2003	3	36	0.47
4212	NHL 15	5	2014	1	8	0.47
4213	Pirates of the Caribbean: Dead Man's Chest	9	2006	11	33	0.47
4214	World Series of Poker	7	2005	6	5	0.47
4215	Inazuma Eleven Go 2: Chrono Stone	10	2012	4	38	0.47
4216	NHL 97	13	1996	1	8	0.47
4217	We Sing Encore	1	2010	6	125	0.47
4218	Kong: The 8th Wonder of the World	9	2005	9	6	0.47
4219	MX vs. ATV: Alive	6	2011	3	29	0.47
4220	Mega Man Star Force 3: Black Ace / Red Joker	4	2008	9	13	0.47
4221	Crayola: Treasure Adventures	4	2007	5	151	0.47
4222	Godzilla: Save the Earth	7	2004	10	11	0.47
4223	Dance Dance Revolution: Mario Mix	19	2005	6	1	0.47
4224	Metal Gear Solid: The Twin Snakes	19	2004	9	15	0.47
4225	Imagine: Figure Skater (US sales)	4	2007	1	6	0.47
4226	Mat Hoffman's Pro BMX 2	7	2002	1	5	0.46
4227	Metal Gear Solid: The Essential Collection	7	2007	11	15	0.46
4228	The Legend of Spyro: Dawn of the Dragon	4	2008	2	24	0.46
4229	Iridion 3D	9	2001	7	29	0.46
4230	MX vs. ATV Untamed	6	2007	3	29	0.46
4231	Classic NES Series: Pac-Man	9	2004	5	1	0.46
4232	Destroy All Humans!	14	2005	7	29	0.46
4233	Dragon Ball Z: Collectible Card Game	9	2002	6	53	0.46
4234	Circus Atari	16		9	11	0.46
4235	Country Dance 2	1	2011	6	171	0.46
4236	Razor Freestyle Scooter	13	1999	1	6	0.46
4237	Crash of the Titans	1	2007	9	24	0.46
4238	F.E.A.R. 3	6	2011	7	20	0.46
4239	Disney's Kim Possible 3: Team Possible	9	2005	2	33	0.46
4240	Rygar: The Legendary Adventure	7	2002	9	172	0.46
4241	Syphon Filter: Logan's Shadow	17	2007	7	4	0.46
4242	Super Batter Up	8	1992	1	26	0.46
4243	Kessen II	7	2001	12	29	0.46
4244	Crayon Shin-Chan: Arashi o Yobu Enji	8	1993	2	26	0.46
4245	Stuart Little 2	9	2002	2	5	0.46
4246	Wolfenstein: The New Order	15	2014	7	7	0.46
4247	Warhammer 40,000: Space Marine	6	2011	7	29	0.46
4248	Tak 2: The Staff of Dreams	9	2004	2	29	0.46
4249	Art Academy: Lessons for Everyone	10	2012	9	1	0.46
4250	Sid Meier's Civilization Revolution	4	2008	12	3	0.46
4251	ATV Offroad Fury Pro	17	2006	3	4	0.46
4252	Dora The Explorer: Dora Saves the Snow Princess	4	2008	2	3	0.46
4253	SingStar Amped	7	2007	6	4	0.46
4254	Brothers In Arms: Earned in Blood	7	2005	7	6	0.46
4255	Walk it Out!	1	2010	1	15	0.46
4256	Transformers: Dark of the Moon - Autobots/Decepticons	4	2011	9	5	0.46
4257	Dragon Ball Z: Sagas	7	2005	10	11	0.46
4258	Scooby-Doo	9	2001	2	29	0.46
4259	The Legend of Spyro: Dawn of the Dragon	6	2008	2	24	0.46
4260	Hydro Thunder	13	1999	3	40	0.46
4261	Brothers In Arms: D-Day	17	2006	7	6	0.46
4262	American Girl: Kit Mystery Challenge!	4	2008	11	29	0.46
4263	Mario & Sonic at the Rio 2016 Olympic Games	10	2016	9	1	0.46
4264	NHL FaceOff '97	13	1996	1	4	0.46
4265	Deadpool	5	2013	9	5	0.46
4266	Brothers In Arms: Road to Hill 30	7	2005	7	6	0.46
4267	Virtua Tennis 4	6	2011	1	9	0.46
4268	EA Sports UFC	18	2014	1	8	0.46
4269	Gremlins	16	1983	9	11	0.46
4270	The Mark of Kri	7	2002	9	4	0.46
4271	Jampack Winter 2003 (RP-M)	7	2003	6	4	0.46
4272	Rugrats: Castle Capers	9	2001	9	29	0.46
4273	Crash Nitro Kart	9	2003	3	24	0.46
4274	Star Wars The Clone Wars: Republic Heroes	6	2009	9	18	0.46
4275	Farming Simulator 2015	6	2015	8	102	0.46
4276	Bleach: The Blade of Fate	4	2006	10	9	0.46
4277	Madden NFL 12	1	2011	1	8	0.46
4278	LEGO Rock Band	4	2009	6	20	0.46
4279	Mad Max (2015)	18	2015	9	20	0.46
4280	Barbie: Jet, Set & Style!	4	2011	6	29	0.46
4281	Jak and Daxter: The Lost Frontier	7	2009	2	4	0.46
4282	Momotarou Dentetsu 11	7	2002	6	69	0.46
4283	Command & Conquer: Red Alert 3	5	2008	12	8	0.46
4284	Tomb Raider: Legend	17	2006	9	22	0.46
4285	Skylanders: SuperChargers	5	2015	9	5	0.46
4286	The Golden Compass	5	2007	9	9	0.46
4287	Star Wars: Demolition	13	2000	3	5	0.46
4288	Scooby-Doo! and the Spooky Swamp	1	2010	9	20	0.46
4289	Sword Art Online: Lost Song	23	2015	4	26	0.46
4290	Bloody Roar II	13	1999	10	19	0.46
4291	Delta Force: Black Hawk Down	7	2005	7	173	0.46
4292	Burnout Dominator	17	2007	3	8	0.46
4293	NBA Live 07	5	2006	1	8	0.46
4294	Vin Diesel: Wheelman	5	2009	3	6	0.46
4295	Space Invaders	8	1994	7	94	0.46
4296	.hack//Outbreak Part 3	7	2002	4	11	0.46
4297	Rayman Legends	5	2013	2	6	0.46
4298	Mother 1+2	9	2003	4	1	0.46
4299	Hyperdimension Neptunia	6	2010	4	49	0.46
4300	iCarly	1	2009	11	5	0.46
4301	Puzzle & Dragons Z + Super Mario Bros. Edition	10	2015	5	1	0.46
4302	Harry Potter and the Deathly Hallows - Part 1	5	2010	9	8	0.46
4303	Top Spin	14	2003	1	2	0.46
4304	Disney Guilty Party	1	2010	6	33	0.46
4305	Warhawk	13	1995	8	4	0.46
4306	Pirates of the Caribbean: At World's End	1	2007	9	33	0.46
4307	Red Faction: Armageddon	6	2011	7	29	0.46
4308	DanceStar Party	6	2011	6	4	0.46
4309	Persona 4: Dancing All Night	23	2015	6	132	0.46
4310	Tales of Vesperia	6	2009	4	26	0.45
4311	Thief (2014)	18	2014	9	17	0.45
4312	Dynasty Warriors: Strikeforce	17	2009	9	116	0.45
4313	2 Games in 1: SpongeBob SquarePants: SuperSponge & Rugrats Go Wild	9	2005	2	29	0.45
4314	Tales of Hearts	23	2013	4	26	0.45
4315	Missile Command	13	1999	7	11	0.45
4316	Lego Batman 3: Beyond Gotham	10	2014	9	20	0.45
4317	Barbie as The Island Princess	1	2007	11	5	0.45
4318	Jikkyou Powerful Pro Yakyuu 3	8	1996	1	15	0.45
4319	The Walking Dead: Season One	11	2014	11	174	0.45
4320	Jikkyou Powerful Pro Yakyuu 12	7	2005	1	15	0.45
4321	Enter the Matrix	19	2003	9	11	0.45
4322	Crash: Mind Over Mutant	1	2008	2	24	0.45
4323	NASCAR 2005: Chase for the Cup	14	2004	3	8	0.45
4324	J-League Excite Stage '95	8	1995	1	175	0.45
4325	The New York Times Crosswords	4	2007	5	35	0.45
4326	Phantasy Star Online Episode I & II	19	2002	4	53	0.45
4327	Moshi Monsters: Moshlings Theme Park	4	2012	6	5	0.45
4328	The Powerpuff Girls: Relish Rampage	7	2002	9	176	0.45
4329	Resistance: Burning Skies	23	2012	7	4	0.45
4330	NBA 2K13	1	2012	1	3	0.45
4331	Dead or Alive: Dimensions	10	2011	10	116	0.45
4332	The Chronicles of Riddick: Escape from Butcher Bay	14		7	24	0.45
4333	Brain Challenge	4	2008	6	6	0.45
4334	NFL Head Coach	7	2006	1	8	0.45
4335	Watch Dogs	15	2014	9	6	0.45
4336	Karaoke Revolution Presents American Idol Encore	1	2008	6	15	0.45
4337	Major League Baseball 2K11	5	2011	1	3	0.45
4338	Enemy Territory: Quake Wars	5	2008	7	5	0.45
4339	Ghostbusters	16	1985	5	5	0.45
4340	NCAA Gamebreaker 99	13	1998	1	43	0.45
4341	Area 51	7	2005	7	40	0.45
4342	World Stadium 2	13	1998	1	26	0.45
4343	Sega Rally Revo	5	2007	3	9	0.45
4344	NHL 2005	7	2004	1	8	0.45
4345	TNA iMPACT!	5	2008	10	40	0.45
4346	Star Wars Jedi Knight: Jedi Academy	14	2003	7	5	0.45
4347	Thrillville: Off the Rails	1	2007	12	18	0.45
4348	Phoenix	16	1981	8	11	0.45
4349	Spider-Man: Shattered Dimensions	6	2010	9	5	0.45
4350	F.E.A.R. 3	5	2011	7	20	0.45
4351	My Fashion Studio	4	2007	6	6	0.45
4352	Plants vs. Zombies: Garden Warfare 2	11	2016	7	8	0.45
4353	Rock Band Country Track Pack	1	2009	6	32	0.45
4354	Pro Evolution Soccer 2016	6	2015	1	15	0.45
4355	Apocalypse	13	1998	9	5	0.45
4356	Transformers: Revenge of the Fallen (Wii & PS2 Version)	4	2009	9	5	0.45
4357	PES 2009: Pro Evolution Soccer	1	2009	1	15	0.45
4358	Yu-Gi-Oh! Destiny Board Traveler	9	2004	6	15	0.45
4359	SingStar Queen	6	2009	6	4	0.45
4360	God Eater 2	23	2013	4	26	0.45
4361	Samurai Warriors 3	1	2009	9	1	0.45
4362	World Soccer Winning Eleven 5 Final Evolution	7	2001	1	15	0.45
4363	One Piece: Pirate Warriors 3	11	2015	9	26	0.45
4364	Sphinx and the Cursed Mummy	7	2003	9	29	0.45
4365	Fatal Fury 2	8	1993	10	152	0.45
4366	Rampage World Tour	12	1998	9	14	0.45
4367	Pokemon Puzzle League	12	2000	5	1	0.45
4368	Eternal Sonata	6	2008	4	11	0.45
4369	Dance Dance Revolution: Hottest Party 3	1	2009	8	15	0.45
4370	FIFA 15	10	2014	1	8	0.45
4371	Petz: Catz 2	1	2007	8	6	0.45
4372	Bee Movie Game	4	2007	9	5	0.45
4373	Tekken Advance	9	2001	10	53	0.45
4374	Shin Megami Tensei: Persona 3	7	2006	4	49	0.45
4375	Persona	13	1995	4	72	0.45
4376	Band Hero	4	2009	6	5	0.45
4377	Naruto Shippuden: Ultimate Ninja Storm Generations	5	2012	10	26	0.45
4378	Hot Wheels: Stunt Track Challenge	9	2004	3	29	0.45
4379	Viking: Battle for Asgard	5	2008	9	9	0.45
4380	Maze Craze: A Game of Cops 'n Robbers	16		9	11	0.45
4381	Mobile Suit Gundam	13	1995	9	26	0.45
4382	Silent Hill: Homecoming	5		9	15	0.45
4383	SingStar Take That	7	2009	6	4	0.45
4384	SOCOM: U.S. Navy SEALs Fireteam Bravo 3	17	2010	7	4	0.45
4385	Final Fantasy Collection	13	1999	4	55	0.45
4386	Disney Sing It! High School Musical 3: Senior Year	7	2008	6	33	0.45
4387	NBA Live 10	5	2009	1	8	0.45
4388	Samurai Warriors: Xtreme Legends	7	2004	9	49	0.45
4389	Tony Hawk's Proving Ground	6	2007	1	5	0.45
4390	NHL FaceOff	13	1994	1	4	0.45
4391	WWE WrestleMania 21	14	2005	10	29	0.45
4392	Brunswick Pro Bowling	5	2010	1	12	0.45
4393	Worms: Open Warfare 2	17	2007	12	29	0.45
4394	NBA Live 2005	19	2004	1	8	0.45
4395	Defender II	16	1987	7	11	0.45
4396	WWE Day of Reckoning	19	2004	10	29	0.45
4397	Dragon Quest Heroes: Rocket Slime	4	2005	9	17	0.45
4398	ATV Quad Power Racing 2	14	2003	3	31	0.45
4399	Walt Disney World Quest: Magical Racing Tour	13	2000	3	22	0.45
4400	Sled Storm	7	2002	3	8	0.45
4401	Vandal Hearts	13	1996	4	15	0.45
4402	Mario Tennis Ultra Smash	20	2015	1	1	0.45
4403	Celebrity Sports Showdown	1	2008	1	8	0.45
4404	Jawbreaker	16	1981	9	136	0.45
4405	Scooby-Doo! Mystery Mayhem	7	2004	9	29	0.45
4406	Mario Golf: Advance Tour	9	2004	1	1	0.45
4407	Crash: Mind Over Mutant	17	2008	2	24	0.45
4408	Karaoke Revolution	1	2009	6	15	0.45
4409	Discovery Kids: Kitten Corner	4	2009	8	12	0.45
4410	Just Dance 2014	18	2013	6	6	0.45
4411	Yu-Gi-Oh! Capsule Monster Coliseum	7	2004	6	15	0.44
4412	Payday 2	6	2013	7	12	0.44
4413	Major League Baseball 2K6	7	2006	1	130	0.44
4414	Jampack Volume 13 (RP-M)	7	2005	6	4	0.44
4415	World Soccer Winning Eleven 9	14	2005	1	15	0.44
4416	NBA Live 2000	12	1999	1	8	0.44
4417	Teenage Mutant Ninja Turtles 2: Battle Nexus	7	2004	9	15	0.44
4418	SpongeBob SquarePants: Lights, Camera, Pants!	7	2005	6	29	0.44
4419	Disney Infinity 3.0	5	2015	9	33	0.44
4420	TouchMaster 3	4	2009	5	20	0.44
4421	The Thing	7	2002	11	24	0.44
4422	Disney Infinity 3.0	20	2015	9	33	0.44
4423	Van Helsing	7	2004	9	5	0.44
4424	X-Men Legends II: Rise of Apocalypse	14	2005	4	5	0.44
4425	Food Network: Cook or Be Cooked	1	2009	6	26	0.44
4426	Transformers: Fall of Cybertron	5	2012	9	5	0.44
4427	Metro: Last Light	6	2013	9	42	0.44
4428	The Urbz: Sims in the City (all regions sales)	4	2004	8	8	0.44
4429	Spawn: Armageddon	7	2003	9	8	0.44
4430	The Godfather (US sales)	14	2006	9	8	0.44
4431	DmC: Devil May Cry	5	2013	9	13	0.44
4432	Plants vs. Zombies: Garden Warfare 2	18	2016	7	8	0.44
4433	World Stadium EX	13	1996	1	26	0.44
4434	Tiger Woods PGA Tour 2003	14	2002	1	8	0.44
4435	Battlefield 2: Modern Combat	7	2005	7	8	0.44
4436	G-Force	1	2009	9	33	0.44
4437	Ben 10 Alien Force: Vilgax Attacks	1	2009	9	59	0.44
4438	50 Cent: Bulletproof	14	2005	9	24	0.44
4439	Densetsu no Stafi 2	9	2003	2	1	0.44
4440	Independence Day	13	1997	7	30	0.44
4441	Need for Speed: Shift 2 Unleashed	5	2011	3	8	0.44
4442	Chocobo Racing	13	1999	3	10	0.44
4443	Ninja Gaiden 3	6	2012	9	49	0.44
4444	Child of Eden	5	2011	7	6	0.44
4445	LEGO Star Wars II: The Original Trilogy	14	2006	9	18	0.44
4446	Family Fest Presents Circus Games	1	2008	6	6	0.44
4447	My Spanish Coach	4	2007	6	6	0.44
4448	The Darkness	5	2007	7	3	0.44
4449	Gundam SEED: Federation vs. Z.A.F.T.	7	2005	7	26	0.44
4450	Ms. Pac-Man Maze Madness	13	2000	5	26	0.44
4451	Blood Omen: Legacy of Kain	13	1996	4	111	0.44
4452	Super Bomberman 4	8	1996	5	69	0.44
4453	Bomberman II	2	1991	5	69	0.44
4454	Duke Nukem 64	12	1997	7	14	0.44
4455	Sin and Punishment: Star Successor	1	2009	7	1	0.44
4456	Jump Start Pet Rescue	1	2009	6	177	0.44
4457	Naughty Bear	6	2010	9	12	0.44
4458	SpongeBob SquarePants: Lights, Camera, Pants!	19	2005	6	29	0.44
4459	Super Robot Taisen OG: Original Generations	7	2007	12	58	0.44
4460	Army Men World War: Final Front	13	2001	9	78	0.44
4461	Petz: Horsez 2	4	2007	8	6	0.44
4462	Puppy Luv: Spa and Resort	4	2007	8	5	0.44
4463	Yu-Gi-Oh! 5D's Tag Force 4	17	2009	12	15	0.44
4464	MX Unleashed	14	2004	3	29	0.44
4465	Jikkyou Powerful Pro Yakyuu 9	7	2002	1	15	0.44
4466	Grind Session	13	2000	1	4	0.44
4467	Naruto: Gekito Ninja Taisen! 3	19	2004	10	100	0.44
4468	Barbie: Groom and Glam Pups	4	2010	9	29	0.44
4469	Wario World	19	2003	2	1	0.44
4470	Scooby-Doo! Mystery Mayhem	9	2003	9	29	0.44
4471	Super Breakout	16		5	11	0.44
4472	Taiko no Tatsujin: Doki! Shinkyoku Darake no Haru Matsuri	7	2003	6	26	0.44
4473	Deer Drive	4	2010	1	178	0.44
4474	Robert Ludlum's The Bourne Conspiracy	5		9	24	0.44
4475	Just Dance 4	6	2012	6	6	0.44
4476	TimeSplitters 2	19	2002	7	22	0.44
4477	Battlebots: Design & Destroy	9	2003	9	35	0.44
4478	Devil May Cry HD Collection	5	2012	9	13	0.44
4479	Eternal Darkness: Sanity's Requiem	19	2002	11	1	0.44
4480	Power Rangers: S.P.D.	9	2004	9	29	0.44
4481	Naruto: Ultimate Ninja 3	7	2005	10	11	0.44
4482	SingStar Motown	7	2009	6	4	0.44
4483	Neon Genesis Evangelion	24	1996	11	9	0.44
4484	Nicktoons: Attack of the Toybots	1	2007	2	29	0.44
4485	Mobile Suit Gundam: One Year War	7	2005	9	26	0.44
4486	Tongari Boushi to Mahou no Otana	4	2010	8	15	0.44
4487	NFL Blitz 20-03	7	2002	1	40	0.44
4488	Just Dance: Summer Party	1	2011	6	6	0.44
4489	SpongeBob's Atlantis SquarePantis	7	2007	9	29	0.44
4490	Dragon Ball Z: Shin Budokai - Another Road	17	2007	10	11	0.44
4491	Master of Illusion	4	2006	5	1	0.44
4492	Star Wars: Jedi Starfighter	14	2002	8	5	0.44
4493	Remington Great American Bird Hunt	1	2009	1	178	0.44
4494	Classic NES Series: Metroid	9	2004	11	1	0.43
4495	Alpha Protocol	6	2010	4	9	0.43
4496	Tetris Axis	10	2011	5	179	0.43
4497	Dora the Explorer: Dora Puppy	4	2009	6	3	0.43
4498	Primal	7	2003	9	4	0.43
4499	Madden NFL 2002	12	2001	1	8	0.43
4500	Need for Speed Underground 2	9	2004	3	8	0.43
4501	007: Quantum of Solace	7	2008	9	5	0.43
4502	Spec Ops: Covert Assault	13	2001	7	3	0.43
4503	SSX Tricky	14	2001	1	8	0.43
4504	Flight Control Rocket	9	2005	8	29	0.43
4505	FIFA 14	15	2013	1	8	0.43
4506	The Chronicles of Narnia: The Lion, The Witch and The Wardrobe	7	2005	9	33	0.43
4507	Trials Fusion	11	2014	3	6	0.43
4508	Wheel of Fortune	4	2010	6	29	0.43
4509	NiGHTS into dreams...	24	1996	2	9	0.43
4510	NCAA Football 2004	14	2003	1	8	0.43
4511	Overwatch	15	2016	7	5	0.43
4512	Rock Band 4	18	2015	6	180	0.43
4513	NBA Jam	1	2010	1	8	0.43
4514	Bionicle	7	2003	9	8	0.43
4515	Minecraft	20	2016	6	2	0.43
4516	MLB 2002	13	2001	1	4	0.43
4517	Sleeping Dogs	11	2014	9	17	0.43
4518	TimeSplitters	7	2000	7	22	0.43
4519	Barnstorming	16	1981	9	5	0.43
4520	InuYasha: The Secret of the Cursed Mask	7	2004	4	26	0.43
4521	Rune Factory 3: A Fantasy Harvest Moon	4	2009	4	71	0.43
4522	The Powerpuff Girls: Him and Seek	9	2002	2	176	0.43
4523	Mega Man Zero 2	9	2003	2	13	0.43
4524	Wonder Project J: Kikai no Shonen Pino	8	1994	8	25	0.43
4525	2010 FIFA World Cup South Africa	1	2010	1	8	0.43
4526	Atelier Totori: The Adventurer of Arland	6	2010	4	132	0.43
4527	Spec Ops: The Line	5	2012	7	3	0.43
4528	The Fairly Odd Parents: Game Boy Advance Video Volume 1	9	2004	6	34	0.43
4529	Ghostbusters: The Video Game	7	2009	9	11	0.43
4530	Hunter: The Reckoning  Wayward	7	2003	9	118	0.43
4531	How to Train Your Dragon	1	2010	9	5	0.43
4532	Command & Conquer 3: Tiberium Wars	5	2007	12	8	0.43
4533	WipEout 64	12	1998	3	40	0.43
4534	Mischief Makers	12	1997	2	1	0.43
4535	Max Payne 3	15	2012	7	3	0.43
4536	Petz Bunnyz	4	2008	8	6	0.43
4537	Castlevania: Portrait of Ruin	4	2006	2	15	0.43
4538	NHL Slapshot	1		1	54	0.43
4539	EyeToy: AntiGrav	7	2004	1	4	0.43
4540	FIFA 14	1	2013	1	8	0.43
4541	EverQuest Online Adventures	7	2003	4	77	0.43
4542	Cool Boarders	13	1996	1	4	0.43
4543	999: Nine Hours, Nine Persons, Nine Doors	4	2009	11	120	0.43
4544	Mobile Suit Gundam: Zeonic Front	7	2001	8	26	0.43
4545	Zone of the Enders HD Collection	6	2012	8	15	0.43
4546	Def Jam Icon	6	2007	9	8	0.43
4547	Tales of the World: Radiant Mythology	17	2006	4	6	0.43
4548	Monopoly	7	2008	6	8	0.43
4549	Dawn of Mana	7	2006	4	17	0.43
4550	Microsoft Flight Simulator X	15	2006	8	2	0.43
4551	Lego Batman 3: Beyond Gotham	18	2014	9	20	0.43
4552	Madden NFL 2003	19	2002	1	8	0.43
4553	NASCAR Kart Racing	1	2009	3	8	0.43
4554	Disney Sing It	5	2008	6	33	0.43
4555	Backyard Baseball	9	2002	1	11	0.43
4556	Call of Duty: Black Ops II	20	2012	7	5	0.43
4557	TRON: Evolution	6	2010	9	33	0.43
4558	Midway Arcade Treasures	14	2003	6	40	0.43
4559	Call of Duty: Modern Warfare: Mobilized	4	2009	7	5	0.43
4560	Petz: Horsez 2	1	2007	8	6	0.43
4561	The Smurfs	4	2011	9	6	0.43
4562	Bakugan: Battle Brawlers	7	2009	9	5	0.43
4563	NHL FaceOff 99	13	1997	1	43	0.43
4564	Skylanders: Trap Team	11	2014	9	5	0.43
4565	SEGA Classics Collection	7	2005	6	9	0.43
4566	Pirates of the Caribbean: At World's End	17	2007	9	33	0.43
4567	Juiced: Eliminator	17	2006	3	29	0.43
4568	Naruto: Ninja Council 3	4	2006	9	59	0.42
4569	Neon Genesis Evangelion 2nd Impression	24	1997	4	9	0.42
4570	Dai-2-Ji Super Robot Taisen Z: Hakai-hen	17	2011	12	58	0.42
4571	NBA Street	19	2002	1	8	0.42
4572	Ben 10 Alien Force: Vilgax Attacks	4	2009	9	59	0.42
4573	Ben 10 Alien Force: Vilgax Attacks	17	2009	9	59	0.42
4574	Valkyrie Profile: Covenant of the Plume	4	2008	4	17	0.42
4575	The Legend of Spyro: The Eternal Night	7	2007	2	24	0.42
4576	Mega Man Battle Network	9	2001	4	13	0.42
4577	LEGO Rock Band	6	2009	6	20	0.42
4578	25 to Life	7	2006	7	22	0.42
4579	NHL 2K6	7	2005	1	3	0.42
4580	Medal of Honor: Rising Sun	19	2003	7	8	0.42
4581	The Sims	14	2003	8	8	0.42
4582	Guitar Hero: Smash Hits	5	2009	6	5	0.42
4583	Dog's Life	7	2003	11	4	0.42
4584	The X Files	13	1999	11	4	0.42
4585	Super Wagyan Land	8	1991	9	26	0.42
4586	Rascal	13	1998	9	88	0.42
4587	Hometown Story	10	2013	4	71	0.42
4588	Tony Hawk's American Wasteland	19	2005	1	5	0.42
4589	Top Spin 4	5	2011	1	3	0.42
4590	Famicom Mini: Super Mario Bros. 2	9	2004	2	1	0.42
4591	Crash: Mind Over Mutant	4	2008	2	24	0.42
4592	Medal of Honor Heroes 2	1	2007	7	8	0.42
4593	Yu-Gi-Oh! GX: Tag Force 2	17	2007	12	15	0.42
4594	Colony Wars	13	1997	8	88	0.42
4595	All-Star Baseball 2004	7	2003	1	31	0.42
4596	Big Strike Bowling	13	2003	1	65	0.42
4597	Ragnarok Odyssey	23	2012	4	67	0.42
4598	Harry Potter and the Deathly Hallows - Part 1	4	2010	9	8	0.42
4599	Horsez	4	2006	8	6	0.42
4600	SpongeBob's Truth or Square (US sales)	4	2009	9	29	0.42
4601	NASCAR Thunder 2002	13	2001	3	8	0.42
4602	Grandia	24	1997	4	181	0.42
4603	ESPN NHL 2K5	14	2004	1	64	0.42
4604	Yu-Gi-Oh! 7 Trials to Glory: World Championship Tournament 2005	9	2005	6	15	0.42
4605	Hot Wheels World Race	7	2003	3	29	0.42
4606	Avatar: The Last Airbender - The Burning Earth	7	2007	9	29	0.42
4607	Superman: Shadow of Apokolips	7	2002	9	11	0.42
4608	NiGHTS: Journey of Dreams	1	2007	2	9	0.42
4609	American Chopper	7	2004	3	87	0.42
4610	Vanquish	5	2010	7	9	0.42
4611	Star Wars Trilogy: Apprentice of the Force	9	2004	9	6	0.42
4612	Marvel Super Hero Squad	4	2009	10	29	0.42
4613	Lemony Snicket's A Series of Unfortunate Events	9	2004	2	5	0.42
4614	JGTC: All-Japan Grand Touring Car Championship	13	1998	3	182	0.42
4615	NBA Live 06	17	2005	1	8	0.42
4616	Arc the Lad III	13	1999	4	4	0.42
4617	Solitaire Overload	4	2007	6	183	0.42
4618	Mobile Suit Gundam: Gundam vs. Gundam	17	2008	10	26	0.42
4619	Test Drive	14	2002	3	11	0.42
4620	Jikkyou Powerful Pro Yakyuu 11	7	2004	1	15	0.42
4621	Ghost Trick: Phantom Detective	4	2010	11	13	0.42
4622	The Adventures of Jimmy Neutron Boy Genius: Jet Fusion	7	2003	9	29	0.42
4623	Rush 2: Extreme Racing USA	12	1998	3	40	0.42
4624	NFL Blitz 2001	12	2000	1	40	0.42
4625	Dr. Mario 64	12	2001	5	1	0.42
4626	Jikkyou Powerful Pro Yakyuu 6	12	1999	1	15	0.42
4627	Army Men: Sarge's Heroes 2	12	2000	7	78	0.42
4628	James Bond 007: Everything or Nothing	19	2004	7	8	0.42
4629	Green Day: Rock Band	6	2010	6	32	0.42
4630	Wolfenstein: The Old Blood	11	2015	9	7	0.42
4631	MLB 08: The Show	7	2008	1	4	0.42
4632	Disney Infinity 2.0: Marvel Super Heroes	18	2014	9	33	0.42
4633	Dance Dance Revolution Ultramix 2	14	2004	8	15	0.42
4634	Mega Man Anniversary Collection	19	2004	2	13	0.42
4635	Blazing Angels: Squadrons of WWII	5	2006	8	6	0.42
4636	Super Famista 4	8	1995	1	26	0.42
4637	The Fairly Odd Parents: Game Boy Advance Video Volume 2	9	2004	6	34	0.42
4638	Cabela's Legendary Adventures	7	2008	1	5	0.42
4639	Taiko no Tatsujin DS: Dororon! Youkai Daikessen!!	4	2010	6	26	0.42
4640	Harry Potter and the Goblet of Fire	19	2005	9	8	0.42
4641	JumpStart: Escape from Adventure Island	1	2009	11	177	0.42
4642	Thrillville: Off the Rails	7	2007	12	18	0.42
4643	Style Lab: Makeover	4	2009	8	6	0.42
4644	Condemned: Criminal Origins	5	2005	9	9	0.42
4645	Mega Man X6	13	2001	9	13	0.42
4646	Monster Jam: Urban Assault	1	2008	3	5	0.42
4647	BloodRayne	7	2002	7	21	0.42
4648	Kumamon Bomber: Puzzle de Kumamon Taisou	19	2005	5	9	0.42
4649	Castlevania: Curse of Darkness	7	2005	9	15	0.42
4650	Tom Clancy's HAWX 2	6	2010	9	6	0.42
4651	Harvest Moon: Grand Bazaar	4	2008	8	71	0.42
4652	International Superstar Soccer Pro '98	13	1998	1	15	0.42
4653	Jimmy Neutron: Boy Genius	9	2001	2	29	0.42
4654	Black	14	2006	7	8	0.42
4655	Zack & Wiki: Quest for Barbaros' Treasure	1	2007	11	1	0.42
4656	Double Pack: Finding Nemo / The Incredibles	14	2006	9	29	0.42
4657	Star Wars The Clone Wars: Republic Heroes	17	2009	9	18	0.42
4658	NBA 2K11	17	2010	9	3	0.42
4659	Animal Crossing: Amiibo Festival	20	2015	6	1	0.42
4660	Hyrule Warriors	10	2016	9	1	0.42
4661	Harry Potter and the Deathly Hallows - Part 1	6	2010	9	8	0.42
4662	Fishing Resort	1	2011	1	26	0.42
4663	WWE All Stars	6	2011	10	29	0.42
4664	Lord of the Rings: The Third Age	14	2004	4	8	0.42
4665	Football Manager Handheld 2011	17	2010	1	9	0.42
4666	Pirates of the Caribbean: At World's End	7	2007	9	33	0.42
4667	Mega Man Legends 2	13	2000	11	13	0.42
4668	X-Men vs. Street Fighter	13	1997	10	13	0.42
4669	High Rollers Casino	7	2004	6	184	0.42
4670	Castlevania: The Dracula X Chronicles	17	2007	2	15	0.42
4671	The Suffering	7	2004	9	40	0.42
4672	Cyber Troopers Virtual-On	24	1995	10	9	0.42
4673	Katamari Forever	6	2009	5	26	0.42
4674	Star Wars Starfighter: Special Edition	14	2001	8	18	0.42
4675	TimeShift	5	2007	7	24	0.41
4676	NBA Jam	7	2003	1	31	0.41
4677	Zone of the Enders: The 2nd Runner	7	2003	8	15	0.41
4678	Ghostbusters: The Video Game	4	2009	9	11	0.41
4679	Attack on Titan: Humanity in Chains	10	2013	9	185	0.41
4680	Jampack Spring 2004 (RP-T)	7	2003	6	4	0.41
4681	Dexter's Laboratory Deesaster Strikes	9	2001	11	176	0.41
4682	NFL GameDay 2004	7	2003	1	4	0.41
4683	Scooby-Doo and the Cyber Chase	9	2001	11	6	0.41
4684	Danganronpa: Trigger Happy Havoc	23	2013	6	132	0.41
4685	TERA	15		4	54	0.41
4686	Tomb Raider: The Last Revelation	15	1998	9	22	0.41
4687	pro evolution soccer 2011	7	2010	1	15	0.41
4688	Sega Rally Championship 2	22	1999	3	9	0.41
4689	Quake II	13	1998	7	5	0.41
4690	Crash of the Titans	7	2007	9	24	0.41
4691	BioShock	15	2007	7	3	0.41
4692	Cars: Mater-National Championship	6	2007	3	29	0.41
4693	MLB 10: The Show	7	2010	1	4	0.41
4694	Wheel of Fortune: 2nd Edition	13	2000	6	28	0.41
4695	Tom Clancy's Rainbow Six: Lockdown	14	2005	7	6	0.41
4696	Mobile Suit Gundam: Gundam vs. Gundam NEXT PLUS	17	2009	10	26	0.41
4697	Cool Boarders 2001	13	2000	1	4	0.41
4698	Grudge Warriors	13	1999	9	3	0.41
4699	World Soccer Jikkyou Winning Eleven 2000: U-23 Medal heno Chousen	13	2000	1	15	0.41
4700	Destiny: The Taken King	6	2015	7	5	0.41
4701	Mobile Suit Gundam	24	1995	9	26	0.41
4702	Mass Effect Trilogy	5	2012	9	8	0.41
4703	Transformers: Revenge of the Fallen (XBox 360, PS3, & PC Versions)	17	2009	7	5	0.41
4704	Wolfenstein: The New Order	5	2014	7	7	0.41
4705	James Patterson Women's Murder Club: Games of Passion	4	2009	11	29	0.41
4706	Farming Simulator 2015	5	2015	8	102	0.41
4707	Jimmy Neutron: Boy Genius	7	2002	2	29	0.41
4708	Itadaki Street DS	4	2007	6	17	0.41
4709	Castlevania: Order of Ecclesia	4	2008	2	15	0.41
4710	BlazBlue: Continuum Shift	6	2010	10	148	0.41
4711	X-Men: The Official Game	7	2006	9	5	0.41
4712	300: March to Glory	17	2007	9	20	0.41
4713	E0: Enemy Zero	24	1996	11	9	0.41
4714	Nicktoons: Unite!	7	2005	11	29	0.41
4715	Six Flags Fun Park	1	2009	6	6	0.41
4716	Spore Hero	1	2009	8	8	0.41
4717	Mass Effect Trilogy	6	2012	9	8	0.41
4718	NASCAR Racing	13	1996	3	186	0.41
4719	LEGO Jurassic World	23	2015	9	20	0.41
4720	Monotaro Dentetsu 2010: Sengoku Ishin no Hero Daishuugou! no Maki	1	2009	6	69	0.41
4721	Up	17	2009	9	29	0.41
4722	Spider-Man: Web of Shadows	5	2008	9	5	0.41
4723	Boku no Natsuyasumi 2: Umi no Bouken Hen	7	2002	11	4	0.41
4724	SpongeBob SquigglePants	1	2011	6	29	0.41
4725	Cars: Race-O-Rama	17	2009	3	29	0.41
4726	Fantastic Pets	5	2011	8	29	0.41
4727	Command & Conquer: Red Alert	13	1997	12	19	0.41
4728	Star Wars The Clone Wars: Republic Heroes	4	2009	9	18	0.41
4729	Dig Dug	2	1985	5	26	0.41
4730	Ogre Battle 64: Person of Lordly Caliber	12	1999	4	1	0.41
4731	Superman: The New Superman Adventures	12	1999	9	104	0.41
4732	UEFA Euro 2008 Austria-Switzerland	6	2008	1	8	0.41
4733	The Terminator: Dawn of Fate	7	2002	9	11	0.41
4734	The LEGO Movie Videogame	23	2014	9	20	0.41
4735	Rogue Galaxy: Director's Cut	7	2007	4	4	0.41
4736	Armored Core	13	1997	8	4	0.41
4737	Monster Trucks Mayhem	1	2009	3	75	0.41
4738	Winter Sports 2: The Next Challenge	1	2008	1	79	0.41
4739	Green Day: Rock Band	5	2010	6	32	0.41
4740	Densha De Go! 2	13	1999	8	94	0.41
4741	Transformers: Fall of Cybertron	6	2012	9	5	0.41
4742	Call of Duty: Advanced Warfare	15	2014	7	5	0.41
4743	Disney Princess: Enchanting Storybooks	1	2011	6	29	0.41
4744	Monopoly Streets	6	2010	6	8	0.41
4745	Band Hero	7	2009	6	5	0.41
4746	The Wonderful 101	20	2013	9	1	0.41
4747	No More Heroes 2: Desperate Struggle	1	2010	9	71	0.41
4748	Battlefield 2: Modern Combat	5	2006	7	8	0.41
4749	Armored Core 2: Another Age	7	2001	8	139	0.41
4750	Buzz! Junior: Jungle Party	7	2006	6	4	0.41
4751	Mortal Kombat: Deadly Alliance	19	2002	10	40	0.41
4752	Marvel: Ultimate Alliance	1	2006	4	5	0.41
4753	NBA 2K11	7	2010	9	3	0.41
4754	AKB1/48: Idol to Koishitara...	17	2010	6	26	0.41
4755	Pro Pinball	13	1996	6	90	0.41
4756	'98 Koshien	13	1998	1	187	0.41
4757	NBA 2K9	7	2008	1	3	0.41
4758	Yu-Gi-Oh! The Eternal Duelist Soul (JP sales)	9	2001	6	15	0.41
4759	Speed Racer: The Videogame	1	2008	3	20	0.41
4760	Naughty Bear	5	2010	9	12	0.41
4761	Littlest Pet Shop	1	2008	8	8	0.41
4762	TNA iMPACT!	6	2008	10	40	0.41
4763	Just Dance Kids 2	5	2011	6	6	0.41
4764	Duke Nukem Forever	15	2011	7	3	0.41
4765	Hatsune Miku: Project Diva 2nd	17	2010	6	9	0.41
4766	Marvel: Ultimate Alliance 2	7	2009	4	5	0.41
4767	Mario no Super Picross	8	1995	5	1	0.41
4768	Ed, Edd n Eddy: The Mis-Edventures	7	2005	2	40	0.41
4769	Jikkyou Powerful Pro Yakuu '94	8	1994	1	15	0.41
4770	Disney's Tarzan Untamed	7	2001	2	6	0.41
4771	Borderlands: The Handsome Collection	18	2015	7	3	0.41
4772	The Gunstringer	5	2011	7	2	0.41
4773	Knockout Kings 2001	13	2000	10	8	0.41
4774	From Russia With Love	7	2005	9	8	0.41
4775	FIFA Soccer 13	15	2012	9	8	0.41
4776	Asura's Wrath	6	2012	9	13	0.41
4777	Avatar: The Game	4	2009	9	6	0.41
4778	My Virtual Tutor: Reading Adventure First to Second Grade	4	2009	6	188	0.41
4779	Minority Report: Everybody Runs	7	2002	9	5	0.41
4780	Disney's Hercules / Disney's The Jungle Book: Groove Party / A Bug's Life	13	2003	6	4	0.4
4781	NFL GameDay 2002	13	2001	1	4	0.4
4782	Pengo	16	1983	11	11	0.4
4783	Disney Sing It! High School Musical 3: Senior Year	6	2008	6	33	0.4
4784	Story of Seasons	10	2014	8	1	0.4
4785	Beowulf: The Game	5	2007	9	6	0.4
4786	Mouse Trap	16	1981	9	70	0.4
4787	Super Monkey Ball: Step & Roll	1	2010	9	9	0.4
4788	Hatsune Miku: Project Diva F 2nd	23	2014	6	9	0.4
4789	Overlord	5	2007	12	36	0.4
4790	Tak and the Power of Juju	19	2003	2	29	0.4
4791	Transformers: The Game (XBox 360, PS2, PS3, Wii & PC Versions)	6	2007	9	5	0.4
4792	Sega Superstars Tennis	6	2008	1	9	0.4
4793	LEGO Harry Potter: Years 5-7	10		9	20	0.4
4794	Dragon Quest X	20	2013	4	17	0.4
4795	Wall-E	6	2008	2	29	0.4
4796	Medarot: Kabuto / Kuwagata Version	3	1997	4	157	0.4
4797	NBA 2K10	7	2009	1	3	0.4
4798	Defender	7	2002	6	40	0.4
4799	NFL GameDay 2003	7		1	54	0.4
4800	WipeOut 3 The Game	1	2012	9	5	0.4
4801	Taiko no Tatsujin Wii: Dodon to 2 Yome!	1	2009	6	26	0.4
4802	Thief (2014)	6	2014	9	17	0.4
4803	Congo Bongo	16	1982	9	9	0.4
4804	Gauntlet: Seven Sorrows	7	2005	4	40	0.4
4805	Harry Potter: Quidditch World Cup	19	2003	1	8	0.4
4806	Advance Wars: Dual Strike	4	2005	12	1	0.4
4807	Yu-Gi-Oh! 5D's Stardust Accelerator: World Championship 2009	4	2009	9	15	0.4
4808	Warriors Orochi 2 (JP sales)	7	2008	9	49	0.4
4809	WWE SmackDown! vs. RAW 2006	17	2005	10	29	0.4
4810	The Chronicles of Narnia: Prince Caspian	7	2008	9	33	0.4
4811	The Incredibles: Rise of the Underminer	9	2005	9	29	0.4
4812	Pet in TV	13	1997	12	4	0.4
4813	Battalion Wars	19	2005	12	1	0.4
4814	NBA ShootOut 2000	13	1999	1	43	0.4
4815	Power Rangers: Dino Thunder	19	2004	9	29	0.4
4816	Rocksmith 2014	18	2014	6	6	0.4
4817	Samurai Shodown	8	1994	10	152	0.4
4818	NHL 15	18	2014	1	8	0.4
4819	TMNT	1	2007	9	6	0.4
4820	Final Fantasy Crystal Chronicles: The Crystal Bearers	1	2009	9	17	0.4
4821	Cabela's Big Game Hunter 2010	6	2009	1	57	0.4
4822	EA Sports UFC 2	18	2016	1	8	0.4
4823	Fighting Vipers	24	1995	10	9	0.4
4824	NCAA GameBreaker 2000	13	1999	1	43	0.4
4825	Iron Man 2	6	2010	9	9	0.4
4826	The Legend of Spyro: Dawn of the Dragon	7	2008	2	24	0.4
4827	AKB1/48: Idol to Guam de Koishitara...	17	2011	6	26	0.4
4828	RR64: Ridge Racer 64	12	1999	3	1	0.4
4829	Top Gear Rally	12	1997	3	189	0.4
4830	NFL Quarterback Club 2000	12	1999	1	31	0.4
4831	Mortal Kombat Mythologies: Sub-Zero	12	1997	10	40	0.4
4832	18 Wheeler: American Pro Trucker	7	2001	3	31	0.4
4833	Atari Anthology	7	2004	6	11	0.4
4834	Bugs Bunny: Lost in Time	13	1999	2	53	0.4
4835	NBA Jam	5	2010	1	8	0.4
4836	Sherlock Holmes: The Mystery of the Mummy	4	2009	11	81	0.4
4837	Hot Wheels: Beat That!	7	2007	3	5	0.4
4838	MLB 2006	7	2005	1	4	0.4
4839	Star Wars The Clone Wars: Republic Heroes	5	2009	9	18	0.4
4840	Brunswick Pro Bowling	7	2007	1	12	0.4
4841	Mafia II	15	2010	9	3	0.4
4842	Rocket Power: Dream Scheme	9	2001	9	29	0.4
4843	SpongeBob's Truth or Square (US sales)	1	2009	9	29	0.4
4844	MX vs. ATV Unleashed	14	2005	3	29	0.4
4845	Rampage: Total Destruction	19	2006	9	40	0.4
4846	Planet 51	4	2009	9	9	0.4
4847	The Urbz: Sims in the City	19	2004	8	8	0.4
4848	Road Rash: Jailbreak	13	1999	3	8	0.4
4849	Mother 3	9	2006	4	1	0.4
4850	Nicktoons: Freeze Frame Frenzy	9	2004	9	29	0.4
4851	Diner Dash: Sizzle & Serve	4	2007	5	22	0.4
4852	Rapala Pro Bass Fishing 2010	5	2010	1	5	0.4
4853	Legends of WrestleMania	5	2009	10	29	0.4
4854	Wii Sports Club	20	2014	1	1	0.4
4855	Tomb Raider: Anniversary	5	2007	9	22	0.4
4856	You Don't Know Jack	13	1999	6	24	0.4
4857	Mystery Dungeon: Shiren the Wanderer	8	1995	4	120	0.4
4858	Sonic Lost World	20	2013	2	9	0.4
4859	Condemned 2: Bloodshot	6	2008	9	9	0.4
4860	Silent Hill: Homecoming	6		9	15	0.4
4861	Star Wars: Clone Wars	19	2002	7	5	0.4
4862	NBA Live 2002	14	2001	1	8	0.4
4863	Boku no Natsuyasumi	13	2000	11	4	0.4
4864	Armored Core V	6	2012	8	26	0.4
4865	I-Ninja	7	2003	2	4	0.4
4866	Command & Conquer	13	1996	12	19	0.4
4867	Harvest Moon: Save the Homeland	7		8	54	0.4
4868	NBA Jam	6	2010	1	8	0.4
4869	Mass Effect 2	15	2010	4	8	0.4
4870	SD Gundam G Generation Seed	7	2004	12	26	0.4
4871	Call of Duty: Finest Hour	19	2004	7	5	0.4
4872	Scooby-Doo! and the Spooky Swamp	4	2010	9	20	0.4
4873	Naruto: Path of the Ninja	4	2007	4	59	0.4
4874	Rise of the Tomb Raider	5	2015	11	17	0.4
4875	Hitman: Blood Money	5	2006	9	22	0.4
4876	Tales of Phantasia	8	1995	4	26	0.4
4877	Alpha Protocol	5	2010	4	9	0.4
4878	Suzuki TT Superbikes	7	2005	3	131	0.4
4879	Rumble Roses	7	2004	10	15	0.39
4880	Just Dance 2014	6	2013	6	6	0.39
4881	Fantastic Four: Rise of the Silver Surfer	7	2007	9	3	0.39
4882	Ultimate Spider-Man	14	2005	9	5	0.39
4883	GRID 2	6	2013	3	36	0.39
4884	LEGO The Lord of the Rings	10	2012	9	20	0.39
4885	Juiced 2: Hot Import Nights	7	2007	3	29	0.39
4886	Skylanders: SuperChargers	6	2015	9	5	0.39
4887	NHL 99	12	1998	1	8	0.39
4888	NBA 2K10	1	2009	1	3	0.39
4889	Dungeon Siege III	6	2011	4	17	0.39
4890	Viking: Battle for Asgard	6	2008	9	9	0.39
4891	Brunswick Pro Bowling	1	2007	1	12	0.39
4892	Monster Jam: Urban Assault	4	2008	3	5	0.39
4893	Danball Senki	17	2011	4	38	0.39
4894	NASCAR Heat	13	2000	3	28	0.39
4895	Bloody Roar	13	1997	10	19	0.39
4896	Bump 'n' Jump	16	1982	3	140	0.39
4897	Mobile Suit Gundam: Lost War Chronicles	7	2002	7	26	0.39
4898	Disney's Brother Bear	9	2003	9	29	0.39
4899	Naruto: Clash of Ninja Revolution 2	1	2008	10	100	0.39
4900	NBA Live 09	7	2008	1	8	0.39
4901	LEGO Star Wars III: The Clone Wars	17	2011	9	18	0.39
4902	The House of The Dead III	14	2002	7	9	0.39
4903	Rune Factory: Frontier	1	2008	4	71	0.39
4904	Fire Emblem: Fuuin no Tsurugi	9	2002	4	1	0.39
4905	SpongeBob's Truth or Square (US sales)	17	2009	9	29	0.39
4906	FIFA 12	10	2011	1	8	0.39
4907	Ener-G: Gym Rockets	4	2008	1	6	0.39
4908	The Darkness II	5	2012	7	3	0.39
4909	NBA Live 09	17	2008	1	8	0.39
4910	Laser Blast	16	1981	9	5	0.39
4911	Dancing with the Stars: We Dance!	4	2008	6	5	0.39
4912	LocoRoco	17	2006	2	4	0.39
4913	Thrasher Presents: Skate and Destroy	13	1998	1	3	0.39
4914	Are You Smarter than a 5th Grader? Make the Grade	4	2008	6	29	0.39
4915	Donkey Konga 2	19	2004	6	1	0.39
4916	Just Dance 2014	11	2013	6	6	0.39
4917	Metal Gear Solid: The Legacy Collection	6	2013	11	15	0.39
4918	Tear Ring Saga Yutona Eiyuu Senki	13	2001	4	155	0.39
4919	Project X Zone	10	2012	4	26	0.39
4920	Red Faction: Armageddon	5	2011	7	29	0.39
4921	Wipeout 2048	23	2012	3	4	0.39
4922	Need for Speed: Nitro	4	2009	3	8	0.39
4923	Mystery Case Files: The Malgrave Incident	1	2011	11	1	0.39
4924	Yoshi Touch & Go	4	2005	2	1	0.39
4925	EA Sports Active 2	5	2010	1	8	0.39
4926	Combat of Giants: Dinosaurs 3D	10	2011	12	6	0.39
4927	Taiko no Tatsujin Wii: Ketteiban	1	2011	6	26	0.39
4928	Age of Empires III	15	2005	12	2	0.39
4929	SSX 3	14	2003	1	8	0.39
4930	MLB 15: The Show	6	2015	1	4	0.39
4931	Madden NFL 2005	9	2004	1	8	0.39
4932	All-Star Baseball 2000	12	1999	1	31	0.39
4933	Custom Robo V2	12	2000	10	1	0.39
4934	Extreme-G: XG2	12	1998	3	31	0.39
4935	BattleTanx: Global Assault	12	1999	9	78	0.39
4936	Robert Ludlum's The Bourne Conspiracy	6		9	24	0.39
4937	Chibi-Robo! Plug into Adventure!	19	2005	11	1	0.39
4938	Dawn of Discovery	15	2009	8	6	0.39
4939	Jampack Winter 2003 (RP-T)	7	2003	6	4	0.39
4940	Dancing with the Stars: We Dance!	1	2008	6	5	0.39
4941	Kengo: Master of Bushido	7	2000	10	6	0.39
4942	Blood Omen 2	7	2002	9	22	0.39
4943	Sesame Street: Elmo's A-to-Zoo Adventure	1	2010	6	20	0.39
4944	Skylanders Giants	20	2012	9	5	0.39
4945	Just Dance 4	20	2012	6	6	0.39
4946	Super Fire ProWrestling	8	1991	10	190	0.39
4947	Cabela's Dangerous Hunts 2	7	2005	1	5	0.39
4948	Marvel: Ultimate Alliance	6	2006	4	5	0.39
4949	SpongeBob vs The Big One: Beach Party Cook Off	4	2009	11	29	0.39
4950	MotoGP 08	6	2008	3	13	0.39
4951	Imagine: Party Babyz	1	2008	8	6	0.39
4952	Chessmaster	7	2003	6	6	0.39
4953	Tiger Woods PGA Tour 14	6	2013	1	8	0.39
4954	Fatal Fury	8	1992	10	152	0.39
4955	Farming Simulator 2013	5	2013	8	81	0.39
4956	From TV Animation One Piece: Yume no Lufy Kaizokudan Tanjou!	3	2001	4	58	0.39
4957	The Dog Island	1	2007	11	6	0.39
4958	Madden NFL Football	10	2011	1	8	0.39
4959	The Sims 2	9	2005	8	8	0.39
4960	Ice Age 2: The Meltdown	7	2006	2	24	0.39
4961	MLB 14: The Show	6	2014	1	143	0.39
4962	Super Famista 3	8	1994	1	26	0.39
4963	Auto Modellista	7	2002	3	13	0.39
4964	Tom Clancy's Ghost Recon 2: Summit Strike	14	2005	7	6	0.39
4965	Junior Classic Games	4	2009	6	191	0.39
4966	Hooked! Again: Real Motion Fishing	1	2009	1	12	0.39
4967	Tiger Woods PGA Tour 08	7	2007	1	8	0.39
4968	Karaoke Revolution Presents American Idol Encore	7	2008	6	15	0.39
4969	Airlock	16	1981	9	192	0.39
4970	Tokimeki Memorial 2	13	1999	8	15	0.39
4971	Samurai Warriors Chronicles	10	2011	9	49	0.39
4972	Tomb Raider: Legend	5	2006	9	22	0.39
4973	Ice Age: Dawn of the Dinosaurs	4	2009	9	5	0.39
4974	Dance Party: Pop Hits	1	2009	6	125	0.39
4975	Harry Potter: Quidditch World Cup	9	2003	1	8	0.39
4976	Jam Sessions: Sing and Play Guitar (US sales)	4	2007	6	6	0.38
4977	Saints Row IV	11	2015	9	42	0.38
4978	Evil Dead: Fistfull of Boomstick	7	2003	9	29	0.38
4979	One Piece: Unlimited World Red	10	2013	9	26	0.38
4980	Phantasy Star Ø	4	2008	4	9	0.38
4981	Triple Play 97	13	1996	1	193	0.38
4982	Virtua Tennis 2009	6	2009	1	9	0.38
4983	Super Soccer	8	1991	1	1	0.38
4984	Shin Megami Tensei: Nocturne	7	2003	4	145	0.38
4985	Wario Land II (GBC)	3	1998	2	1	0.38
4986	San Francisco Rush: Extreme Racing	13	1997	3	14	0.38
4987	Dragon's Crown	23	2013	4	132	0.38
4988	Bakusou Dekotora Densetsu: Otoko Ippiki Yume Kaidoi	13	1998	3	190	0.38
4989	Imagine: Salon Stylist	4	2009	8	6	0.38
4990	ESPN College Hoops 2K5	14	2004	1	9	0.38
4991	Looney Tunes: Acme Arsenal	7	2007	9	20	0.38
4992	Cabela's Dangerous Hunts 2009	1	2008	1	57	0.38
4993	Fragile Dreams: Farewell Ruins of the Moon	1	2009	4	71	0.38
4994	SD Gundam G Generation Spirits	7	2007	12	26	0.38
4995	Batman: Arkham City	20	2012	9	20	0.38
4996	Disney Sing It	6	2008	6	33	0.38
4997	Peppa Pig: The Game	1	2009	6	108	0.38
4998	God Eater 2: Rage Burst	23	2015	4	26	0.38
4999	Get Fit with Mel B	6	2010	1	194	0.38
5000	The Cat in the Hat	9	2005	2	195	0.38
5001	Naruto Shippuden: Ultimate Ninja Heroes 3	17	2009	10	26	0.38
5002	NFL GameDay 2002	7	2001	1	4	0.38
5003	Turok: Evolution	19	2002	7	31	0.38
5004	Destiny: The Taken King	5	2015	7	5	0.38
5005	Tamagotchi Connection: Corner Shop 3	4	2007	8	11	0.38
5006	Mobile Suit Gundam: Giren no Yabou Zeon Dokuritsu Sensouden	7	2002	12	26	0.38
5007	Ice Age	9	2002	9	6	0.38
5008	Sega Superstars Tennis	7	2008	1	9	0.38
5009	Headhunter	7	2002	9	9	0.38
5010	Skate	6	2007	1	8	0.38
5011	Shin Megami Tensei: Devil Summoner	24	1995	4	72	0.38
5012	Raving Rabbids: Travel in Time 3D	10	2011	2	6	0.38
5013	NCAA Football 08	6	2007	1	8	0.38
5014	Marvel Nemesis: Rise of the Imperfects	19	2005	10	8	0.38
5015	NHL 15	6	2014	1	8	0.38
5016	ESPN Extreme Games	13	1994	1	4	0.38
5017	Forza Horizon 3	18	2016	3	2	0.38
5018	Overlord: Dark Legend	1	2009	9	36	0.38
5019	Ninja: Shadow of Darkness	13	1998	9	22	0.38
5020	SD Gundam G Generation-F	13	2000	12	26	0.38
5021	Bratz: Rock Angelz	7	2005	6	29	0.38
5022	FlatOut	7	2004	3	90	0.38
5023	Phoenix Wright: Ace Attorney - Dual Destinies	10	2013	11	13	0.38
5024	SSX 3	19	2003	1	8	0.38
5025	NCAA Football 11	7	2010	1	8	0.38
5026	Tales of Zestiria	11	2015	4	26	0.38
5027	Lilo & Stitch 2: Hämsterviel Havoc	9	2004	9	33	0.38
5028	Metal Gear Solid: Snake Eater 3D	10	2012	9	15	0.38
5029	Risk: Global Domination	7	2003	12	11	0.38
5030	Elite Beat Agents	4	2006	6	1	0.38
5031	NBA 2K7	6	2006	1	3	0.38
5032	Mobile Suit Gundam version 2.0	13	1996	9	26	0.38
5033	Grandia Xtreme	7	2002	4	25	0.38
5034	Silent Scope	7	2000	7	15	0.38
5035	Final Fantasy Adventure	3	1991	4	10	0.38
5036	Virtua Tennis 2009	1	2009	1	9	0.38
5037	Dora The Explorer: Dora Saves the Snow Princess	7	2008	2	3	0.38
5038	The Incredible Hulk	7	2008	9	9	0.38
5039	Mercenaries 2: World in Flames	7	2008	7	8	0.38
5040	Cabela's Big Game Hunter 2012	1	2011	1	5	0.38
5041	EA Sports MMA	6	2010	10	8	0.38
5042	Iron Man 2	17	2010	9	9	0.38
5043	DiRT 2	1	2009	3	36	0.38
5044	Tokimeki Memorial: Forever with You	24	1996	8	15	0.38
5045	MediEvil II	13	1999	9	4	0.38
5046	Guitar Hero On Tour: Modern Hits	4	2009	6	5	0.38
5047	Hunter: The Reckoning	14	2002	9	118	0.38
5048	MX vs. ATV Untamed	7	2007	3	29	0.38
5049	Rogue Trip: Vacation 2012	13	1998	3	14	0.38
5050	Dai-4-Ji Super Robot Taisen	8	1995	12	58	0.38
5051	Tiger Woods PGA Tour 08	17	2007	1	8	0.38
5052	Pokemon Channel	19	2003	11	1	0.38
5053	Taiko no Tatsujin Portable DX	17	2011	6	26	0.38
5054	Etrian Odyssey IV: Legends of the Titans	10	2012	4	72	0.38
5055	Moto Racer World Tour	13	2000	3	4	0.38
5056	NCAA Final Four 2000	13	1999	1	196	0.38
5057	Scribblenauts: Unlimited	20	2012	9	20	0.38
5058	FIFA 17	6	2016	1	8	0.38
5059	Saints Row: The Third	15	2011	9	29	0.38
5060	Just Dance 2015	11	2014	6	6	0.38
5061	Madagascar: Escape 2 Africa	7	2008	9	5	0.38
5062	ZhuZhu Pets: Featuring The Wild Bunch	1	2010	8	5	0.38
5063	Hangman	16		5	11	0.38
5064	Petz Rescue: Wildlife Vet	4	2008	8	6	0.38
5065	Green Day: Rock Band	1	2010	6	32	0.38
5066	Gravitar	16	1982	9	11	0.38
5067	Monster Jam: Path of Destruction	4	2010	3	5	0.38
5068	Toukiden: The Age of Demons	23	2013	9	49	0.38
5069	EyeToy Play 2	7	2004	6	4	0.38
5070	Dance Dance Revolution Ultramix 3	14	2005	8	15	0.38
5071	Mobile Suit Gundam: Extreme VS Full Boost	6	2014	10	26	0.38
5072	WWE SmackDown vs. Raw 2011	7	2010	10	29	0.38
5073	Need for Speed: Hot Pursuit	15	2010	3	8	0.38
5074	The Legend of Spyro: A New Beginning	4	2006	2	24	0.38
5075	Pro Evolution Soccer 2011 3D	10	2011	1	15	0.38
5076	Shin Megami Tensei: Devil Survivor Overclocked	10	2011	4	145	0.38
5077	Dragon Ball Z: Attack of the Saiyans	4	2009	4	26	0.38
5078	Marvel Super Hero Squad	1	2009	10	29	0.38
5079	The House of the Dead: Overkill - Extended Cut	6	2011	7	9	0.38
5080	The Golden Compass	17		9	9	0.38
5081	Harry Potter and the Prisoner of Azkaban	19	2004	9	8	0.38
5082	Quake 4	5	2005	7	5	0.38
5083	Petz Rescue: Ocean Patrol	4	2008	11	6	0.37
5084	Solaris	16	1986	7	11	0.37
5085	Puppy Palace	4	2008	8	6	0.37
5086	Super Dragon Ball Z	7	2006	10	11	0.37
5087	Paws & Claws: Pampered Pets	4	2009	8	29	0.37
5088	ESPN: Sports Connection	20	2012	1	6	0.37
5089	Alien: Isolation	6	2014	7	9	0.37
5090	Naruto Shippuden: Ninja Destiny 2	4	2008	10	197	0.37
5091	SAW	6	2009	9	15	0.37
5092	The Legend of Spyro: The Eternal Night	4	2007	2	24	0.37
5093	Tobal 2	13	1997	10	10	0.37
5094	Digging for Dinosaurs	4	2010	9	117	0.37
5095	Trivial Pursuit	5	2009	6	8	0.37
5096	Tiger Woods PGA Tour 09	7	2008	1	8	0.37
5097	Ultimate Spider-Man	19	2005	9	5	0.37
5098	Life is Strange	11	2016	11	17	0.37
5099	Kingdom Under Fire: Circle of Doom	5	2007	4	2	0.37
5100	NBA Inside Drive 2002	14	2002	1	2	0.37
5101	The BIGS	1	2007	1	3	0.37
5102	Major League Baseball 2K6	5	2006	1	130	0.37
5103	Kileak: The DNA Imperative	13	1994	7	4	0.37
5104	Petz: Catz 2	7	2006	8	6	0.37
5105	Mini Ninjas	1	2009	9	22	0.37
5106	Tom Clancy's The Division	15	2016	7	6	0.37
5107	Phantasy Star Portable 2: Infinity	17	2011	4	9	0.37
5108	Hell's Kitchen: The Game	4	2008	8	6	0.37
5109	LEGO Dimensions	18	2015	9	20	0.37
5110	Monsters, Inc. Scream Arena	19	2002	2	29	0.37
5111	Reel Fishing III	7	2003	1	80	0.37
5112	Cabela's Deer Hunt 2005 Season	7	2004	1	5	0.37
5113	Prince of Persia: The Forgotten Sands	17	2010	9	6	0.37
5114	Rampage: Total Destruction	7	2006	9	40	0.37
5115	High Heat Major League Baseball 2003	7	2002	1	78	0.37
5116	Madden NFL 11	17	2010	1	8	0.37
5117	Super Formation Soccer 94	8	1994	1	190	0.37
5118	Panzer Dragoon	24	1995	7	9	0.37
5119	Tiger Woods PGA Tour 12: The Masters	1	2011	1	8	0.37
5120	Rage	15	2011	7	7	0.37
5121	Spider-Man: Friend or Foe	7	2007	9	5	0.37
5122	Yarudora Series Vol.1: Double Cast	13	1998	11	4	0.37
5123	Dungeon Siege III	5	2011	4	17	0.37
5124	Juiced 2: Hot Import Nights	17	2007	3	29	0.37
5125	Rec Room Games	1	2009	1	154	0.37
5126	Fushigi no Dungeon: Furai no Shiren 2 - Oni Shuurai! Shiren Shiro!	12	2000	4	120	0.37
5127	Turok: Rage Wars	12	1999	7	31	0.37
5128	Scooby-Doo! Classic Creep Capers	12	2000	9	29	0.37
5129	Dragonfire	16	1981	9	48	0.37
5130	Custom Robo	19	2004	4	1	0.37
5131	FIFA Soccer 13	17	2012	9	8	0.37
5132	Command & Conquer: Red Alert 3 Ultimate Edition	6	2009	12	8	0.37
5133	Harry Potter and the Order of the Phoenix	17	2007	9	8	0.37
5134	Medieval II: Total War Gold Edition	15	2008	12	9	0.37
5135	Pac-Man World 2	19	2002	9	1	0.37
5136	Kotoba no Puzzle: Mojipittan DS	4	2007	5	26	0.37
5137	Barbie Horse Adventures: Blue Ribbon Race	9	2003	1	177	0.37
5138	Bionic Commando	6	2009	2	13	0.37
5139	Wanted: Weapons of Fate	5	2009	7	20	0.37
5140	Slime MoriMori Dragon Quest: Shougeki No Shippo Dan	9	2003	11	17	0.37
5141	Dishonored	11	2015	9	7	0.37
5142	Marvel: Ultimate Alliance	17	2006	4	5	0.37
5143	NFL Street 2 Unleashed	17	2005	1	8	0.37
5144	Super Robot Taisen EX	8	1994	12	58	0.37
5145	FIFA Street 2	7	2006	1	8	0.37
5146	Bottom of the 9th	12	1999	1	15	0.37
5147	Theatrhythm Final Fantasy: Curtain Call	10	2014	6	17	0.37
5148	Trauma Center: Under the Knife	4	2005	8	1	0.37
5149	Shin Megami Tensei II	8	1994	4	72	0.37
5150	Xenosaga Episode III: Also sprach Zarathustra	7	2006	4	26	0.37
5151	Build-A-Bear Workshop: A Friend Fur All Seasons	1	2008	8	103	0.37
5152	Sid Meier's Civilization: Beyond Earth	15	2014	12	3	0.37
5153	Need for Speed: The Run	15	2011	9	8	0.37
5154	Virtua Fighter 3tb	22	1998	10	9	0.37
5155	Transformers: Dark of the Moon	6	2011	9	5	0.37
5156	Mini-Yonku GB: Let's & Go!!	3	1997	12	51	0.37
5157	Skylanders SWAP Force	11	2013	2	5	0.37
5158	LEGO Batman 2: DC Super Heroes	23	2012	9	20	0.37
5159	Rock Band 4	11	2015	6	180	0.37
5160	Left 4 Dead 2	15	2009	7	50	0.37
5161	The Sims 2: Castaway	7	2007	8	8	0.37
5162	NCAA Football 07	17	2006	1	8	0.37
5163	The Chronicles of Narnia: Prince Caspian	1	2008	9	33	0.36
5164	NBA Live 2003	14		1	8	0.36
5165	Dreamworks Madagascar Kartz	4	2009	3	5	0.36
5166	My Horse & Me	4	2007	1	11	0.36
5167	GoldenEye: Rogue Agent	19	2004	7	8	0.36
5168	Zero4 Champ RR	8	1994	1	198	0.36
5169	Dragon Ball Z: Infinite World	7	2008	10	26	0.36
5170	Nonomura Byoin no Hitobito	24	1996	11	199	0.36
5171	Tom Clancy's HAWX 2	5	2010	9	6	0.36
5172	ESPN X Games Skateboarding	7	2001	1	15	0.36
5173	Bejeweled 3	4		5	54	0.36
5174	Resident Evil Zero	11	2016	9	13	0.36
5175	Super Fire ProWrestling Special	8	1994	10	190	0.36
5176	Yuu Yuu Hakusho	8	1993	10	26	0.36
5177	Kamaitachi no Yoru 2	7	2002	11	120	0.36
5178	High Heat Major League Baseball 2004	7	2003	1	78	0.36
5179	Robots	7	2005	9	24	0.36
5180	NARC	7	2005	7	40	0.36
5181	One Piece: Gigant Battle!	4	2010	10	26	0.36
5182	Valkyrie Profile: Lenneth	17	2006	4	17	0.36
5183	Tiger Woods PGA Tour 09	17	2008	1	8	0.36
5184	Metro: Last Light	5	2013	9	42	0.36
5185	Tiger Woods PGA Tour 14	5	2013	1	8	0.36
5186	LocoRoco 2	17	2008	2	4	0.36
5187	Monster Rancher 3	7	2001	8	49	0.36
5188	The Incredibles: Rise of the Underminer	7	2005	9	29	0.36
5189	Spider-Man: Shattered Dimensions	5	2010	9	5	0.36
5190	BlazBlue: Calamity Trigger	5	2009	10	148	0.36
5191	MechWarrior 2: 31st Century Combat	13	1997	8	5	0.36
5192	Earth Defense Force 2025	6	2013	7	59	0.36
5193	Hamtaro: Ham-Ham Heartbreak	9	2002	9	1	0.36
5194	Okage: Shadow King	7	2001	4	4	0.36
5195	Press Your Luck 2010 Edition	1	2009	6	6	0.36
5196	Mobile Suit Z-Gundam	13	1997	9	26	0.36
5197	Cubix Robots for Everyone: Clash 'n' Bash	9		9	54	0.36
5198	Tropico 4	5		12	200	0.36
5199	Speed Racer: The Videogame	4	2008	3	20	0.36
5200	NHL 2K10	1	2009	1	3	0.36
5201	Assassin's Creed III	20	2012	9	6	0.36
5202	Kirby's Dream Land 3	8	1997	2	1	0.36
5203	Big Bass World Championship	13	1997	1	201	0.36
5204	NFL GameDay 2001	7	2000	1	4	0.36
5205	NBA 2K6	14	2005	9	3	0.36
5206	Jurassic Park	2	1993	9	86	0.36
5207	Mystical Ninja starring Goemon	12	1997	9	15	0.36
5208	Tetrisphere	12	1997	5	1	0.36
5209	Saban's Power Rangers: Lightspeed Rescue	12	2000	9	29	0.36
5210	Senran Kagura Shinovi Versus: Sh?jo-tachi no Sh?mei	23	2013	10	105	0.36
5211	North American Hunting Extravaganza	1	2008	1	202	0.36
5212	World's Scariest Police Chases	13	2001	3	5	0.36
5213	Guitar Hero: Smash Hits	6	2009	6	5	0.36
5214	Shaun Palmer's Pro Snowboarder	9	2001	1	5	0.36
5215	AMF Bowling World Lanes	1	2008	1	7	0.36
5216	MechAssault 2: Lone Wolf	14	2004	8	2	0.36
5217	Middle-Earth: Shadow of Mordor	15	2014	9	20	0.36
5218	Hamster Club 3	9	2002	8	203	0.36
5219	Breath of Fire II	8	1994	4	150	0.36
5220	Call of Duty: Ghosts	20	2013	7	5	0.36
5221	LEGO Racers	13	1999	3	133	0.36
5222	NBA 2K12	1	2011	1	3	0.36
5223	Teenage Mutant Ninja Turtles: Smash-Up	1	2009	10	6	0.36
5224	Kinectimals: Now with Bears!	5	2011	6	2	0.36
5225	ESPN NFL Football	14	2003	1	9	0.36
5226	ATV/Monster Truck Mayhem	4	2007	3	204	0.36
5227	Naruto: Ultimate Ninja 3 (JP sales)	7	2005	10	11	0.36
5228	Just Dance 2016	5	2015	6	6	0.36
5229	Worms: Open Warfare 2	4	2007	12	29	0.36
5230	Rapala Pro Fishing	7	2004	1	87	0.36
5231	J-League Pro Soccer Club o Tsukurou '04	7	2004	1	9	0.36
5232	Dark Void	6	2010	9	13	0.36
5233	James Bond 007: Legends	6	2012	7	5	0.36
5234	Dai-2-Ji Super Robot Taisen Z Saisei-hen	17	2012	12	26	0.36
5235	WWE '12	1	2011	10	29	0.36
5236	Disney's The Haunted Mansion	7	2003	2	3	0.36
5237	Arc the Lad: Twilight of the Spirits	7	2003	4	4	0.36
5238	Dance Dance Revolution 3rdMix	13	2000	8	15	0.36
5239	Ryu Ga Gotoku Kenzan!	6	2008	11	9	0.36
5240	U-Sing	1	2009	6	52	0.36
5241	Super Robot Taisen A	9	2001	12	58	0.36
5242	Tomb Raider (2013)	15		9	17	0.36
5243	Chicken Shoot	1	2007	9	87	0.36
5244	Company of Heroes 2	15	2013	12	29	0.36
5245	Defiance	6	2013	7	149	0.36
5246	We Sing Deutsche Hits	1	2011	6	125	0.36
5247	Boxer's Road	13	1995	10	205	0.36
5248	Frogs And Flies	16	1981	9	140	0.36
5249	DanceDanceRevolution	1	2010	8	15	0.36
5250	Harry Potter and the Chamber of Secrets	14	2002	9	8	0.36
5251	EA Sports MMA	5	2010	10	8	0.36
5252	Toriko: Gourmet Survival!	17	2011	4	26	0.36
5253	South Park Rally	13	1998	3	31	0.36
5254	Ganbare Goemon 3: Shishi Jyuurokubei no Karakuri Manji Katame	8	1994	2	15	0.36
5255	Monopoly	6	2008	6	8	0.36
5256	Mega Man Zero Collection	4	2010	2	13	0.36
5257	Arctic Thunder	7	2001	3	40	0.36
5258	G-Force	17	2009	9	8	0.36
5259	NHL 2K10	7	2009	1	3	0.36
5260	Football Manager Handheld 2010	17	2009	1	9	0.36
5261	J-League Pro Soccer Club o Tsukurou!	22	1999	1	9	0.36
5262	Wonder Pets! Save the Animals!	4	2008	11	3	0.36
5263	Formula 1 Championship Edition	13	1997	3	88	0.36
5264	Shrek	14	2001	2	73	0.36
5265	CSI: Deadly Intent - The Hidden Cases	4	2009	11	6	0.35
5266	SOCOM: Tactical Strike	17	2007	7	4	0.35
5267	Blasto	13	1998	9	4	0.35
5268	Trauma Center: Second Opinion	1	2006	8	1	0.35
5269	Backyard Baseball 2006	9	2005	1	11	0.35
5270	Dark Souls III	18	2016	4	26	0.35
5271	Cabela's Outdoor Adventures (2006)	7	2005	1	87	0.35
5272	Nicktoons: Unite!	19	2005	11	29	0.35
5273	Suikoden V	7	2006	4	15	0.35
5274	Picross 2	3	1996	5	1	0.35
5275	Remember Me	6	2013	9	13	0.35
5276	Battalion Wars 2	1	2007	12	1	0.35
5277	Outlaw Golf 2	7	2004	1	64	0.35
5278	SpongeBob's Boating Bash	1	2010	6	29	0.35
5279	Sentouchu: Densetsu no Shinobi to Survival Battle!	10	2013	9	26	0.35
5280	Vancouver 2010 - The Official Video Game of the Olympic Winter Games	6	2010	1	9	0.35
5281	Momotarou Dentetsu 12	7	2003	6	69	0.35
5282	Mini Ninjas	6	2009	9	22	0.35
5283	Tekken Tag Tournament 2	5	2012	10	26	0.35
5284	Batman: Rise of Sin Tzu	7	2003	9	6	0.35
5285	Disney's Tarzan: Return to the Jungle	9	2002	9	5	0.35
5286	Cabela's Dangerous Hunts	14	2003	1	87	0.35
5287	Terminator Salvation	5	2009	7	20	0.35
5288	Jikkyou Powerful Pro Yakyuu 13	7	2006	1	15	0.35
5289	Fossil Fighters: Frontier	10	2014	4	1	0.35
5290	Star Fox: Zero	20	2016	7	1	0.35
5291	Mega Man X3	8	1995	9	150	0.35
5292	Mini Ninjas	4	2009	9	22	0.35
5293	Stunt Race FX	8	1993	3	1	0.35
5294	Bloody Roar 3	7	2001	10	19	0.35
5295	WWE Crush Hour	7	2003	3	29	0.35
5296	Persona 2: Eternal Punishment	13	2000	4	72	0.35
5297	Star Wars: Flight of the Falcon	9	2003	9	29	0.35
5298	One Piece: Gigant Battle 2 Shin Sekai	4	2011	10	26	0.35
5299	Pac-Man All-Stars	6	2011	10	26	0.35
5300	Def Jam Rapstar	1	2010	6	15	0.35
5301	SimCity Creator	4	2008	8	8	0.35
5302	Hannah Montana: The Movie	1	2009	11	33	0.35
5303	Angry Birds Star Wars	1	2013	12	5	0.35
5304	Dragon Ball Z: Budokai Tenkaichi 2 (JP sales)	1		9	34	0.35
5305	Mega Man ZX Advent	4	2007	2	13	0.35
5306	Jikkyou Powerful Pro Yakyuu 2000	12	2000	1	15	0.35
5307	Sniper: Ghost Warrior 2	6	2013	7	89	0.35
5308	Racquet Sports	6	2010	1	6	0.35
5309	Harry Potter and the Deathly Hallows - Part 2	1	2011	9	8	0.35
5310	Supreme Commander 2	5	2010	12	17	0.35
5311	Resident Evil: Dead Aim	7	2003	9	13	0.35
5312	Need for Speed Carbon	19	2006	3	8	0.35
5313	The Adventures of Jimmy Neutron Boy Genius: Jet Fusion	9	2003	9	29	0.35
5314	SpongeBob SquarePants: The Yellow Avenger	4	2005	9	29	0.35
5315	The Fairly Odd Parents: Shadow Showdown	7	2004	2	29	0.35
5316	Saban's Power Rangers: Lightspeed Rescue	13	2000	9	29	0.35
5317	Xbox Music Mixer	14	2003	6	2	0.35
5318	WWE All Stars	5	2011	10	29	0.35
5319	The Shoot	6	2010	7	4	0.35
5320	College Hoops 2K8	7	2007	1	3	0.35
5321	Guitar Hero: Metallica	7	2009	6	5	0.35
5322	Guilty Gear X2	7	2002	10	101	0.35
5323	MotoGP 08	5	2008	3	13	0.35
5324	Yu-Gi-Oh! 5D's Tag Force 5	17	2010	12	15	0.35
5325	Enemy Territory: Quake Wars	6	2008	7	5	0.35
5326	Tom Clancy's Rainbow Six: Lockdown	7	2005	7	6	0.35
5327	From TV Animation One Piece: Tobidase Kaizokudan!	13	2001	4	26	0.35
5328	The Tale of Despereaux	7	2008	2	206	0.35
5329	Aggressive Inline	7	2002	1	31	0.35
5330	Karaoke Revolution	7	2003	6	15	0.35
5331	NFL Street	19	2004	1	8	0.35
5332	Hello Kitty Daily	4	2008	6	127	0.35
5333	Metal Arms: Glitch in the System	7	2003	7	24	0.35
5334	Farming Simulator 2015	11	2015	8	102	0.35
5335	Jikkyou Powerful Pro Yakyuu 7	7	2000	1	15	0.35
5336	Rally Cross 2	13	1998	3	43	0.35
5337	EverGrace	7	2000	4	6	0.35
5338	Def Jam Icon	5	2007	9	8	0.35
5339	Lunar 2: Eternal Blue Complete	13	1999	4	153	0.35
5340	Street Fighter Alpha: Warriors' Dreams	24	1996	10	13	0.35
5341	Rugrats: Royal Ransom	7	2002	2	29	0.35
5342	Disney Fairies: Tinker Bell and the Great Fairy Rescue	4	2010	11	33	0.35
5343	MLB 06: The Show	17	2006	1	4	0.35
5344	F1 Race Stars	6	2012	3	36	0.35
5345	Over the Hedge	19	2006	2	5	0.35
5346	Naruto Shippuden: Ultimate Ninja Impact	17	2011	10	26	0.35
5347	Just Dance 2016	11	2015	6	6	0.35
5348	Charlie and the Chocolate Factory	7	2005	11	64	0.35
5349	Pirates of the Caribbean: At World's End	4	2007	9	33	0.35
5350	UEFA Euro 2008 Austria-Switzerland	5	2008	1	8	0.35
5351	Kurushi Final: Mental Blocks	13	1998	5	4	0.34
5352	Style Lab: Jewelry Design	4	2009	8	6	0.34
5353	Risk / Battleship / Clue	9	2005	6	87	0.34
5354	SD Gundam G Generation World	17	2011	12	26	0.34
5355	LEGO Pirates of the Caribbean: The Video Game	17	2011	9	33	0.34
5356	The Wild Thornberrys Movie	9	2002	2	29	0.34
5357	High School Musical 3: Senior Year DANCE!	7	2008	6	33	0.34
5358	Dynasty Warriors 5 Empires	7	2006	9	49	0.34
5359	SoulCalibur	22	1999	10	26	0.34
5360	WipEout 3	13	1999	3	88	0.34
5361	Etrian Odyssey	4	2007	4	1	0.34
5362	Conan	6	2007	9	29	0.34
5363	Classic NES Series: Ice Climber	9	2004	2	1	0.34
5364	Skylanders: Trap Team	18	2014	9	5	0.34
5365	Avatar: The Last Airbender - The Burning Earth	4	2007	9	29	0.34
5366	F.E.A.R.	5	2006	7	24	0.34
5367	Tenchu Z	5	2006	9	2	0.34
5368	Freeway	16	1980	9	5	0.34
5369	Driver 2 Advance	9	2002	9	11	0.34
5370	Monster Rancher 4	7	2003	8	49	0.34
5371	Iron Man 2	4	2010	9	9	0.34
5372	Chicken Riot	1	2010	9	89	0.34
5373	Tim Burton's The Nightmare Before Christmas: Oogie's Revenge	7	2004	11	33	0.34
5374	Iron Storm	24	1995	7	9	0.34
5375	Harry Potter and the Deathly Hallows - Part 2	5	2011	9	8	0.34
5376	MotorStorm: Arctic Edge	7	2009	3	4	0.34
5377	The Fairly Odd Parents: Shadow Showdown	9	2004	2	29	0.34
5378	Radiant Historia	4	2010	4	72	0.34
5379	Marvel Super Heroes	13	1997	10	19	0.34
5380	Super Bust-A-Move	7	2000	5	31	0.34
5381	Hitman: Contracts	14	2004	7	22	0.34
5382	Thunderstrike: Operation Phoenix	7	2001	8	22	0.34
5383	Alien's Return	16	1982	9	207	0.34
5384	Frostbite	16	1983	9	5	0.34
5385	LEGO Marvel's Avengers	5	2016	9	20	0.34
5386	Kameo: Elements of Power	5	2005	9	2	0.34
5387	Power Rangers Samurai	1	2011	9	26	0.34
5388	WWE Day of Reckoning 2	19	2005	10	29	0.34
5389	Dynasty Warriors 6 Empires	6	2009	9	49	0.34
5390	The Urbz: Sims in the City	14	2004	8	8	0.34
5391	Fantastic Voyage	16	1981	9	122	0.34
5392	The Adventures of Tintin: The Game	1	2011	9	6	0.34
5393	Bee Movie Game	1	2007	9	5	0.34
5394	Silent Hill HD Collection	6	2012	9	15	0.34
5395	Night Warriors: Darkstalkers' Revenge	24	1995	10	19	0.34
5396	Off Road Challenge	12	1998	3	14	0.34
5397	Bank Heist	16	1982	9	122	0.34
5398	Harry Potter and the Half-Blood Prince	6	2009	9	8	0.34
5399	Tom Clancy's Ghost Recon: Shadow Wars	10	2011	12	6	0.34
5400	Backstreet Billiards	13	1998	6	51	0.34
5401	MX vs. ATV Untamed	1	2008	3	29	0.34
5402	Carnival	16	1981	7	70	0.34
5403	Football Manager Handheld 2008	17	2007	1	9	0.34
5404	Leisure Suit Larry: Magna Cum Laude	7	2004	11	24	0.34
5405	Harry Potter and the Deathly Hallows - Part 2	6	2011	9	8	0.34
5406	MVP 06 NCAA Baseball	14	2006	1	8	0.34
5407	Momotarou Dentetsu DS: Tokyo & Japan	4	2007	6	69	0.34
5408	Point Blank	13	1997	7	4	0.34
5409	Bookworm	4	2009	5	208	0.34
5410	Smart Girl's Party Game	4	2008	6	12	0.34
5411	Rayman Legends	18	2014	2	6	0.34
5412	Puzzle Quest: Challenge of the Warlords	4	2007	5	59	0.34
5413	Star Ocean: Second Evolution	17	2008	4	17	0.34
5414	My Baby Boy	4	2008	8	127	0.34
5415	Tiny Tank	13	1998	9	4	0.34
5416	Jonah Lomu Rugby Challenge	5	2011	1	209	0.34
5417	Spy Hunter	14	2002	3	40	0.34
5418	Angry Birds Star Wars	10	2013	12	5	0.34
5419	Imagine: Movie Star	4	2008	8	6	0.34
5420	NHL 09	6	2008	1	8	0.34
5421	Zoo Tycoon (2013)	18	2013	8	2	0.34
5422	Herbie: Fully Loaded	9	2005	3	33	0.34
5423	The Sims 3: Town Life Stuff	15	2011	8	8	0.34
5424	Teenage Mutant Ninja Turtles	19	2003	9	15	0.34
5425	Pony Friends 2	4	2009	8	22	0.34
5426	Disney Sing It: Pop Hits	7	2009	6	33	0.34
5427	Buzz! The Ultimate Music Quiz	6	2010	6	4	0.34
5428	Persona 5	11	2016	4	72	0.34
5429	The Eye of Judgment	6	2007	6	4	0.34
5430	Pirates of the Caribbean: At World's End	5	2007	9	33	0.34
5431	Modnation Racers: Road Trip	23	2012	3	4	0.34
5432	Dynasty Warriors: Gundam 2	7	2008	9	26	0.34
5433	Power Rangers Samurai	4	2011	9	26	0.34
5434	Fade to Black	13	1996	9	8	0.34
5435	MXRider	7	2001	3	11	0.34
5436	Avatar: The Last Airbender	4	2006	11	29	0.34
5437	Battlefield: Hardline	5	2015	7	8	0.34
5438	Delta Force: Black Hawk Down	14	2005	7	173	0.34
5439	Night at the Museum: Battle of the Smithsonian	4	2009	9	35	0.34
5440	World Championship Poker 2: Featuring Howard Lederer	7	2005	6	60	0.34
5441	Sengoku Musou 3 Z	6	2011	9	210	0.33
5442	Operation Flashpoint: Red River	6	2011	7	36	0.33
5443	Ninja Blade	5	2009	9	2	0.33
5444	Tom Clancy's Ghost Recon Advanced Warfighter	14	2006	7	6	0.33
5445	Transformers: Revenge of the Fallen (DS Versions)	4	2009	9	5	0.33
5446	Fracture	5	2008	7	18	0.33
5447	Tokyo Highway Battle	13	1996	3	163	0.33
5448	Pandora's Tower	1	2011	4	1	0.33
5449	Binary Domain	6	2012	9	9	0.33
5450	The King of Fighters XIII	5	2011	10	71	0.33
5451	Beyond Good & Evil	7	2003	11	6	0.33
5452	Banjo-Kazooie: Grunty's Revenge	9	2003	2	29	0.33
5453	Bomberman World	13	1998	5	4	0.33
5454	The X-Factor	1	2010	6	42	0.33
5455	Digimon World: Dawn / Dusk	4	2007	4	26	0.33
5456	Street Fighter Alpha 3 MAX	17	2006	10	13	0.33
5457	Untold Legends: The Warriors Code	17	2006	4	6	0.33
5458	Virtua Tennis 2009	5	2009	1	9	0.33
5459	Deathtrap Dungeon	13	1998	9	22	0.33
5460	Tales of the World: Radiant Mythology 2	17	2009	4	26	0.33
5461	Wipeout 2	1	2011	6	5	0.33
5462	Iron Man 2	1	2010	9	9	0.33
5463	Ape Escape Academy	17	2004	6	4	0.33
5464	The Darkness II	6	2012	7	3	0.33
5465	SingStar Take That	6	2009	6	4	0.33
5466	Marvel: Ultimate Alliance 2	1	2009	4	5	0.33
5467	Ultimate Marvel vs. Capcom 3	23	2011	10	13	0.33
5468	WWE Wrestlemania XIX	19	2003	10	29	0.33
5469	Planet Puzzle League	4	2007	5	1	0.33
5470	The Sims 2	19	2005	8	8	0.33
5471	Hulk	14	2003	9	21	0.33
5472	Naruto: Rise of a Ninja	5	2007	9	6	0.33
5473	Chicken Blaster	1	2009	7	202	0.33
5474	Family Party: 90 Great Games Party Pack	1	2010	6	59	0.33
5475	Klonoa 2: Lunatea's Veil	7	2001	2	4	0.33
5476	Deus Ex: Invisible War	14	2003	7	22	0.33
5477	Resonance of Fate	5	2010	4	9	0.33
5478	Hell's Kitchen: The Game	1	2008	8	6	0.33
5479	Disney's Treasure Planet	7	2002	9	4	0.33
5480	NASCAR Thunder 2002	14	2001	3	8	0.33
5481	Jeanne d'Arc	17	2006	4	4	0.33
5482	NCAA Basketball 10	6	2009	1	8	0.33
5483	BeatMania Append GottaMix	13	1999	8	15	0.33
5484	Dead or Alive 5	11	2015	10	49	0.33
5485	Tak 2: The Staff of Dreams	19	2004	2	29	0.33
5486	Rugby World Cup 2011	6	2011	1	12	0.33
5487	Medal of Honor: Warfighter	15	2012	9	8	0.33
5488	Kelly Slater's Pro Surfer	7	2002	1	5	0.33
5489	Shrek SuperSlam	9	2005	9	5	0.33
5490	Sonic Boom: Rise of Lyric	20	2014	9	9	0.33
5491	Legends of Wrestling II	7	2002	10	31	0.33
5492	World Stadium 3	13	1999	1	26	0.33
5493	Little Deviants	23	2011	2	4	0.33
5494	Silent Hill: Downpour	5	2012	9	15	0.33
5495	Extra Bases	3	1990	1	26	0.33
5496	Super Power League 2	8	1994	1	69	0.33
5497	Night at the Museum: Battle of the Smithsonian	1	2009	9	35	0.33
5498	Capcom Classics Collection Reloaded	17	2006	6	13	0.33
5499	Madden NFL 09	4	2008	1	8	0.33
5500	MLB 09: The Show	7	2009	1	4	0.33
5501	Deus Ex: Mankind Divided	11	2016	4	17	0.33
5502	Cool Boarders 2001	7	2001	1	4	0.33
5503	Classic NES Series: Castlevania	9	2004	2	1	0.33
5504	Dragon Ball Z: Battle of Z	6	2014	10	26	0.33
5505	Scooby-Doo! First Frights	7	2009	9	20	0.33
5506	Fight Night Round 3	14	2006	10	8	0.33
5507	GT Advance Championship Racing	9	2001	3	29	0.33
5508	Way of the Samurai 2	7	2003	9	13	0.33
5509	FIFA Street 3	6	2008	1	8	0.33
5510	Custom Robo	12		4	1	0.33
5511	BattleTanx	12	1998	9	78	0.33
5512	Hatsune Miku: Project Diva Extend	17	2011	6	9	0.33
5513	Battlestations: Pacific	5	2009	12	22	0.33
5514	Pitfall 3D: Beyond the Jungle	13	1998	2	5	0.33
5515	Disgaea 2: Cursed Memories	7	2006	4	49	0.33
5516	Cabela's Dangerous Hunts 2011	6	2010	1	5	0.33
5517	DECA Sports Freedom	5	2010	1	69	0.33
5518	Clock Tower 3	7	2002	11	13	0.33
5519	Battle Dodge Ball	8	1991	1	58	0.33
5520	Goosebumps HorrorLand	4	2008	11	117	0.33
5521	Phineas and Ferb: Across the 2nd Dimension	6	2011	9	33	0.33
5522	Call Of Duty 2: Big Red One	19	2005	7	5	0.33
5523	Elebits	1	2006	9	15	0.33
5524	Warhammer 40,000: Squad Command	17	2007	12	29	0.33
5525	F1 2013	5	2013	3	36	0.33
5526	Disgaea: Hour of Darkness	7	2003	4	49	0.33
5527	NeoGeo Battle Coliseum	7	2005	10	151	0.33
5528	SSX Blur	1	2007	1	8	0.33
5529	DiRT 2	17	2009	3	4	0.33
5530	Vin Diesel: Wheelman	6	2009	3	6	0.33
5531	SpongeBob SquarePants: Creature from the Krusty Krab	19	2006	2	29	0.33
5532	My Baby: First Steps	4	2009	8	84	0.33
5533	MLB 08: The Show	17	2008	1	4	0.33
5534	The Black Eyed Peas Experience	5	2011	6	6	0.33
5535	Parodius	13	1994	7	15	0.33
5536	Spy Kids 3-D: Game Over	9	2003	2	33	0.33
5537	Sakura Wars 3: Paris wa Moeteiru ka	22	2001	11	9	0.33
5538	1001 Touch Games	4	2011	9	191	0.33
5539	NCAA GameBreaker 2001	13	2000	1	4	0.33
5540	Power Rangers: Ninja Storm	9	2003	6	29	0.33
5541	Angry Birds Star Wars	6	2013	12	5	0.33
5542	Naruto: Gekito Ninja Taisen! 4	19	2005	10	100	0.33
5543	Kidou Senshi Gundam F91: Formula Senki 0122	8	1991	12	26	0.33
5544	Despicable Me: The Game	1	2010	2	59	0.33
5545	Golden Axe: Beast Rider	5	2008	9	9	0.33
5546	MySims SkyHeroes	4	2010	9	8	0.33
5547	MVP Baseball 2005	19	2005	1	8	0.33
5548	Zaidan Houjin Nippon Kanji Nouryoku Kentei Kyoukai Kounin: KanKen DS 2 + Jouyou Kanji Jiten	4	2007	6	138	0.33
5549	Carnival Games: Monkey See, Monkey Do!	5	2011	6	3	0.33
5550	Eternal Sonata	5	2007	4	11	0.33
5551	DX Game of Life 2	13	1997	6	152	0.33
5552	EA Playground	4	2007	1	8	0.33
5553	NBA Live 96	13	1996	1	8	0.33
5554	Clash of the Titans	6	2010	9	26	0.33
5555	Folklore	6	2007	4	4	0.33
5556	Dragon Ball Z: Extreme Butoden	10	2015	10	26	0.33
5557	Samurai Warriors 2: Xtreme Legends (JP sales)	7	2007	9	49	0.33
5558	Sniper Elite 3	18	2014	7	12	0.33
5559	Teen Titans	19	2006	9	29	0.33
5560	Dead Rising 2: Off the Record	6	2011	9	13	0.33
5561	Frogger II: Threeedeep!	16	1983	9	46	0.33
5562	Etrian Odyssey III: The Drowned City	4	2010	4	72	0.33
5563	LEGO The Lord of the Rings	23	2012	9	20	0.33
5564	NBA Live 06	19	2005	1	8	0.33
5565	Karaoke Revolution Presents American Idol Encore 2	1	2008	6	15	0.33
5566	Fireball	16	1981	9	211	0.33
5567	Batman: Arkham Origins	20	2013	9	20	0.33
5568	Discovery Kids: Puppy Playtime	4	2009	8	12	0.33
5569	Dr. Mario / Puzzle League	9	2005	5	1	0.33
5570	Bleach: Shattered Blade	1	2006	10	9	0.33
5571	Shin Nippon Pro Wrestling: Toukon Retsuden	13	1995	10	100	0.33
5572	Major League Baseball 2K6	14	2006	1	3	0.33
5573	Pinball Hall of Fame: The Gottlieb Collection	7	2004	6	98	0.33
5574	God of War Collection	23	2014	9	4	0.33
5575	Dead Space 2	15	2011	7	8	0.33
5576	Def Jam Rapstar	6	2010	6	15	0.33
5577	Overlord II	5	2009	9	36	0.32
5578	NBA 2K10	17	2009	1	3	0.32
5579	J Stars Victory Vs.	6	2014	10	26	0.32
5580	The Witcher: Enhanced Edition	15	2008	4	11	0.32
5581	Teenage Mutant Ninja Turtles 2: Battle Nexus	9	2004	9	15	0.32
5582	Nicktoons: Movin'	7	2004	9	29	0.32
5583	One Piece: Romance Dawn - Bouken no Yoake	17	2012	10	26	0.32
5584	Batman: Arkham Origins	15	2013	9	20	0.32
5585	SWAT: Global Strike Team	7	2003	7	24	0.32
5586	Championship Bass	13	1999	1	8	0.32
5587	Resident Evil: Revelations 2	6	2015	9	13	0.32
5588	Test Drive Unlimited	5	2006	3	11	0.32
5589	Golden Axe: Beast Rider	6	2008	9	9	0.32
5590	Madden NFL 13	23	2012	1	8	0.32
5591	Bratz: Girlz Really Rock	4	2008	9	29	0.32
5592	NCAA Basketball 10	5	2009	1	8	0.32
5593	Dead or Alive 5	5	2012	10	116	0.32
5594	Shin Megami Tensei: Devil Survivor 2	4	2011	4	145	0.32
5595	NHL Breakaway 98	12	1998	1	31	0.32
5596	Momotarou Dentetsu 20-Shuunen	4	2008	6	69	0.32
5597	LEGO Marvel's Avengers	18	2016	9	20	0.32
5598	Tekken 6	17	2009	10	26	0.32
5599	Kinetica	7	2001	3	4	0.32
5600	Beautiful Katamari	5	2007	5	26	0.32
5601	Bust-A-Move '99	13	1997	5	31	0.32
5602	NBA Street V3	14	2005	1	8	0.32
5603	Overlord II	6	2009	9	36	0.32
5604	Dragon Quest Monsters 1·2	13	2002	4	25	0.32
5605	Army of Two: The 40th Day	17	2010	7	8	0.32
5606	Ben 10 Ultimate Alien: Cosmic Destruction	4	2010	2	59	0.32
5607	Bigfoot: Collision Course	1	2008	3	87	0.32
5608	Batman: Arkham Asylum	15	2009	9	22	0.32
5609	Crash of the Titans	5	2007	9	24	0.32
5610	The Legend of Spyro: Dawn of the Dragon	5	2008	2	24	0.32
5611	Prey	5	2006	7	3	0.32
5612	Birthday Party Bash	1	2009	6	3	0.32
5613	OverBlood	13	1996	9	8	0.32
5614	ESPN X-Games Pro Boarder	13	1997	1	4	0.32
5615	Murdered: Soul Suspect	11	2014	9	17	0.32
5616	Tony Hawk's American Wasteland	5	2005	1	5	0.32
5617	Harvest Moon: Back to Nature	13	1999	8	6	0.32
5618	Sniper Elite 3	5	2014	7	12	0.32
5619	Naruto: Ultimate Ninja (JP sales)	7	2003	10	11	0.32
5620	Final Fantasy XI	7		4	54	0.32
5621	The Settlers 7: Paths to a Kingdom	15	2010	12	6	0.32
5622	Go, Diego, Go!: Great Dinosaur Rescue	7	2008	9	3	0.32
5623	TrackMania Turbo	11	2016	9	6	0.32
5624	The Biggest Loser	4	2009	1	29	0.32
5625	Minute to Win It	5	2011	6	75	0.32
5626	Darkwatch	7	2005	7	6	0.32
5627	Singularity	5		7	54	0.32
5628	Dance Dance Revolution Universe	5	2007	8	15	0.32
5629	SimAnimals	1	2009	8	8	0.32
5630	Prince of Persia: The Sands of Time	19	2003	9	6	0.32
5631	Sky Odyssey	7	2000	8	4	0.32
5632	Nagano Winter Olympics 98	12	1997	1	15	0.32
5633	Rayman 2: The Great Escape	13	2000	2	6	0.32
5634	Kirby's Block Ball	3	1995	5	1	0.32
5635	DiRT Rally	11	2016	3	36	0.32
5636	Fortress	9	2001	9	35	0.32
5637	FIFA 2001 Major League Soccer	13	2000	1	8	0.32
5638	Peppa Pig: Theme Park Fun	4	2011	6	212	0.32
5639	Rally Cross	13	1997	3	4	0.32
5640	My Horse & Me	1	2007	1	11	0.32
5641	Frogger's Adventures: The Rescue	7	2003	2	15	0.32
5642	Extreme Pinball	13	1995	6	8	0.32
5643	Shaun White Snowboarding	17	2008	1	6	0.32
5644	Karaoke Revolution Volume 3	7	2004	6	15	0.32
5645	Gold's Gym: Cardio Workout (Others sales)	1	2008	1	6	0.32
5646	Seaman: Kindan no Pet - Gaze Hakushi no Jikken Shima	7	2001	8	51	0.32
5647	Street Fighter Alpha 2	24	1995	10	19	0.32
5648	No.1 Muscle Ranking - Kinniku Banzuke Vol. 1: Oregasaikyouno Otokoda!	13	1999	1	15	0.32
5649	Cartoon Network Collection: Game Boy Advance Video Platinum Edition	9	2005	6	34	0.32
5650	Ultimate Fighting Championship: Throwdown	7	2002	10	6	0.32
5651	Marvel Nemesis: Rise of the Imperfects	17	2005	10	8	0.32
5652	SpongeBob SquarePants: Double Pack	9	2005	2	29	0.32
5653	Tetris 2 + Bombliss	2	1991	5	213	0.32
5654	Harry Potter and the Half-Blood Prince	5	2009	9	8	0.32
5655	Disney's Extreme Skate Adventure	7	2003	1	5	0.32
5656	Rock Band Country Track Pack	7	2009	6	32	0.32
5657	7 Wonders II	4	2009	5	142	0.32
5658	Ed, Edd n Eddy: Jawbreakers!	9	2002	11	176	0.32
5659	Dragster	16		3	5	0.32
5660	Frankenstein's Monster	16	1982	9	192	0.32
5661	Riven: The Sequel to Myst	13	1997	11	31	0.32
5662	Derby Stallion DS	4	2008	1	155	0.32
5663	Mirror's Edge Catalyst	11	2016	2	8	0.32
5664	Manhunt 2	17	2007	9	3	0.32
5665	NBA 2K3	14	2002	1	9	0.32
5666	Monster Lab	1	2008	4	22	0.32
5667	Dragon Quest Monsters: Battle Road Victory	1	2010	12	17	0.32
5668	Shin Momotarou Densetsu	8	1993	4	69	0.32
5669	From TV Animation One Piece: Grand Battle! 3	7	2003	10	26	0.32
5670	Sega Smash Pack	9	2002	6	11	0.32
5671	All-Star Baseball 2005	7		1	54	0.32
5672	The Conveni: Ano Machi wo Dokusen Seyo	13	1997	8	190	0.32
5673	Shin Super Robot Taisen Special Disk	13	1997	12	58	0.32
5674	Live A Live	8	1994	4	10	0.32
5675	NFL Fever 2004	14	2003	1	2	0.32
5676	Madden NFL 2002	9	2001	1	8	0.32
5677	UEFA Euro 2008 Austria-Switzerland	7	2008	1	8	0.32
5678	Clive Barker's Jericho	5	2007	7	36	0.32
5679	Littlest Pet Shop: City Friends	4	2009	8	8	0.32
5680	Kingdom Under Fire: The Crusaders	14	2004	12	42	0.32
5681	4x4 Evolution	7	2001	3	214	0.32
5682	Cabela's Dangerous Hunts 2011	5	2010	1	5	0.32
5683	Momotarou Dentetsu Happy	8	1996	6	69	0.32
5684	Power Rangers: Time Force	13	2001	9	29	0.32
5685	Romance of the Three Kingdoms VII	7	2000	12	49	0.32
5686	Shrek the Third	17	2007	9	5	0.32
5687	Catherine	5	2011	11	42	0.32
5688	BlazBlue: Continuum Shift	5	2010	10	148	0.32
5689	Monsters, Inc.	7	2002	11	4	0.32
5690	DJ Hero	7	2009	6	5	0.32
5691	WipEout Pulse	17	2007	3	4	0.32
5692	Quiz Magic Academy DS	4	2008	6	15	0.32
5693	Just Dance 2016	18	2015	6	6	0.32
5694	Resident Evil Archives: Resident Evil	1	2008	9	13	0.32
5695	Dynasty Warriors 4 Empires	7	2004	9	49	0.32
5696	Shenmue II	14	2002	11	2	0.32
5697	Heart of Darkness	13	1998	2	86	0.32
5698	LEGO Marvel's Avengers	6	2016	9	20	0.32
5699	Virtua Striker 2	22	1999	1	9	0.32
5700	Fable III	15	2011	4	2	0.32
5701	Dragon Ball: XenoVerse	18	2015	10	26	0.31
5702	Might & Magic Heroes VI	15	2011	4	6	0.31
5703	Fuel	5	2009	3	36	0.31
5704	ExerBeat	1	2010	1	26	0.31
5705	WarCraft II: The Dark Saga	13	1997	12	8	0.31
5706	MonHun Nikki: Poka Poka Ailu Mura G	17	2011	4	13	0.31
5707	Crash Nitro Kart	14	2003	3	24	0.31
5708	Sesame Street: Cookie's Counting Carnival	1	2010	6	20	0.31
5709	NBA ShootOut	13	1995	1	4	0.31
5710	Fishing Master	1	2007	6	15	0.31
5711	Phineas and Ferb Ride Again	4	2010	9	33	0.31
5712	Jikkyou Powerful Pro Yakyuu 14	7	2007	1	15	0.31
5713	Contra 4	4	2007	7	15	0.31
5714	Madden NFL 2004	9	2003	1	8	0.31
5715	Sniper Elite 3	6	2014	7	12	0.31
5716	Ganbare Goemon: KiraKira Douchuu - Boku ga Dancer ni Natta Riyuu	8	1995	2	15	0.31
5717	Bust-A-Move Universe	10	2011	5	17	0.31
5718	Mario Golf	3	1999	9	1	0.31
5719	Jikkyou Powerful Pro Yakyuu Portable 3	17	2008	1	15	0.31
5720	Sesame Street: Elmo's Letter Adventure	13	1998	6	215	0.31
5721	The Incredible Hulk	1	2008	9	9	0.31
5722	Namco Museum: Virtual Arcade	5	2008	6	11	0.31
5723	NBA Inside Drive 2003	14	2002	1	2	0.31
5724	FIFA Street	7	2005	1	8	0.31
5725	Barbie as The Island Princess	4	2007	11	5	0.31
5726	Star Wars Episode III: Revenge of the Sith	4	2005	9	6	0.31
5727	Hatsune Miku: Project Mirai DX	10	2015	6	9	0.31
5728	Dragon Ball Heroes: Ultimate Mission 2	10	2014	12	26	0.31
5729	Shrek: Forever After	4	2010	2	5	0.31
5730	MLB 07: The Show	6	2007	1	4	0.31
5731	Homefront: The Revolution	11	2016	7	42	0.31
5732	Jampack: Summer 2003 (RP-M)	7	2003	6	4	0.31
5733	Alone in the Dark: One-Eyed Jack's Revenge	13	1996	11	53	0.31
5734	Yu-Gi-Oh! The Dawn of Destiny	14	2004	12	15	0.31
5735	The Matrix: Path of Neo	14	2005	9	11	0.31
5736	Mortal Kombat: Shaolin Monks	14	2005	9	40	0.31
5737	Happy Feet	4	2006	9	40	0.31
5738	Einhänder	13	1997	7	10	0.31
5739	Tiny Toon Adventures: The Great Beanstalk	13	1998	6	4	0.31
5740	Foto Frenzy: Spot The Diffrence	4	2009	5	216	0.31
5741	Metro: Last Light	18	2014	9	42	0.31
5742	Dark Void	5	2010	9	13	0.31
5743	Pro Evolution Soccer 2013	5	2012	1	15	0.31
5744	Armored Core: Silent Line	7	2003	8	95	0.31
5745	SD Gundam G Generation Wars	7	2009	12	26	0.31
5746	Dr. Seuss: How the Grinch Stole Christmas	4	2007	9	217	0.31
5747	Panzer Dragoon II Zwei	24	1995	7	9	0.31
5748	KISS Pinball	13	2001	9	3	0.31
5749	Brothers In Arms: Earned in Blood	14	2005	7	6	0.31
5750	2 Games in 1: Disney's Brother Bear / The Lion King 1 1/2	9	2005	9	29	0.31
5751	Super Robot Taisen Complete Box	13	1999	12	58	0.31
5752	Mega Man Maverick Hunter X	17	2005	2	13	0.31
5753	Cabela's Outdoor Adventures (2009)	1	2009	1	57	0.31
5754	Lord of Arcana	17	2010	4	17	0.31
5755	Jikkyou Powerful Pro Yakyuu 4	12	1997	1	15	0.31
5756	Goemon's Great Adventure	12	1998	2	15	0.31
5757	Hot Wheels Turbo Racing	12	1999	3	8	0.31
5758	Vigilante 8	12	1998	3	5	0.31
5759	Bass Hunter 64	12	1999	1	3	0.31
5760	Doubutsu no Mori	12	2001	8	1	0.31
5761	Football Manager 2016	15	2015	8	9	0.31
5762	Naruto: Ninja Destiny (US sales)	4	2006	10	26	0.31
5763	TRON: Evolution	5	2010	9	33	0.31
5764	Disney Infinity 3.0	18	2015	9	33	0.31
5765	Taiko Drum Master: Don and Katsu's Space-Time Great Adventure	10	2014	9	26	0.31
5766	Calvin Tucker's Redneck Jamboree	1	2008	6	75	0.31
5767	MySims SkyHeroes	1	2010	9	8	0.31
5768	J-League Winning Eleven 2007: Club Championship	7	2007	1	15	0.31
5769	Shrek's Carnival Craze Party Games	1	2008	6	5	0.31
5770	Harvest Moon: Magical Melody	1	2008	8	71	0.31
5771	Star Wars Jedi Knight II: Jedi Outcast	14		7	5	0.31
5772	Yu-Gi-Oh! 5D's World Championship 2010 Reverse of Arcadia	4	2010	12	15	0.31
5773	Mega Man Battle Network 2	9	2002	9	6	0.31
5774	Little King's Story	1	2009	12	71	0.31
5775	Mountain King	16	1982	9	218	0.31
5776	Jampack Volume 12	7	2005	6	4	0.31
5777	Madagascar	4	2005	2	5	0.31
5778	Tiger Woods PGA Tour 06	5	2005	1	8	0.31
5779	Shaun White Snowboarding	7	2008	1	6	0.31
5780	Shin Megami Tensei: Devil Summoner - Soul Hackers	24	1997	4	72	0.31
5781	Major League Baseball 2K8	6	2008	1	7	0.31
5782	Rapala Pro Bass Fishing 2010	1	2010	1	5	0.31
5783	Lord of the Rings: Battle for Middle-Earth	5	2006	12	8	0.31
5784	Demolition Racer	13	1998	3	53	0.31
5785	Midway Arcade Treasures 2	14	2004	6	40	0.31
5786	Final Fantasy IV	13	1997	8	10	0.31
5787	Math Play	4	2006	5	6	0.31
5788	Kingdoms of Amalur: Reckoning	15	2012	4	8	0.31
5789	NASCAR Thunder 2003	19	2002	3	8	0.31
5790	SD Gundam G Generation: Overworld	17	2012	12	26	0.31
5791	Sorcery	6	2012	9	4	0.31
5792	TouchMaster: Connect	4	2010	5	20	0.31
5793	NHL FaceOff 2000	13	1998	1	4	0.31
5794	Star Wars Racer Revenge	7	2002	3	18	0.31
5795	NBA Live 08	17	2007	1	8	0.31
5796	The King of Fighters XIII	6	2011	10	71	0.31
5797	NCAA Final Four 2002	7	2001	1	4	0.31
5798	South Park: Chef's Luv Shack	13	1998	6	31	0.31
5799	Music Maker	7	2001	6	219	0.31
5800	Slot Machine	16		9	11	0.31
5801	Ganbare Goemon 2: Kiteretsu Shougun Magginesu	8	1993	2	15	0.31
5802	Astroblast	16	1981	9	140	0.31
5803	Blade II	7	2002	9	5	0.31
5804	40 Winks	13	1999	2	14	0.31
5805	The Legend of Heroes: Trails of Cold Steel	23	2013	4	132	0.31
5806	Fate/Extra	17	2010	4	220	0.31
5807	Shaun White Snowboarding: World Stage	1	2009	1	6	0.31
5808	My Virtual Tutor: Reading Adventure Pre-K to Kindergarten	4	2009	6	188	0.31
5809	Skylanders SWAP Force	18	2013	2	5	0.31
5810	A Collection of Classic Games from the Intellivision	13	1999	6	5	0.31
5811	Monsters vs. Aliens	6	2009	9	5	0.31
5812	Silent Hill: Shattered Memories	17	2010	9	15	0.31
5813	Bruce Lee: Quest of the Dragon	14	2002	10	21	0.31
5814	Spin Jam	13	2000	5	90	0.31
5815	KuruKuru Kururin	9	2001	5	1	0.31
5816	Disney's The Emperor's New Groove	13	2000	2	4	0.31
5817	Disney's Stitch: Experiment 626	7	2002	9	4	0.31
5818	RPG Tsukuru 2	8	1996	4	51	0.31
5819	Yuu Yuu Hakusho 2: Kakutou no Sho	8	1994	10	26	0.31
5820	Orphen: Scion of Sorcery	7	2000	4	5	0.31
5821	LEGO Legends of Chima: Laval's Journey	10	2013	11	20	0.31
5822	Imagine: Family Doctor	4	2009	8	6	0.3
5823	Magna Carta 2	5	2009	4	58	0.3
5824	Ultimate Spider-Man	9	2005	9	5	0.3
5825	Nicktoons: Battle for Volcano Island	4	2006	9	29	0.3
5826	Midtown Madness 3	14	2003	3	2	0.3
5827	Shrek Swamp Kart Speedway	9	2002	3	73	0.3
5828	One Piece: Unlimited World Red	6	2014	9	26	0.3
5829	Alien: Isolation	5	2014	7	9	0.3
5830	Gameboy Gallery	3	1995	6	1	0.3
5831	Virtua Cop 2	24	1996	7	9	0.3
5832	Ehrgeiz	13	1998	10	10	0.3
5833	Touhoku Daigaku Mirai Kagaku Gijutsu Kyoudou Kenkyuu Center Kawashima Ryuuta Kyouju Kanshu: Nou Ryoku Trainer Portable	17	2005	6	9	0.3
5834	Karaoke Revolution Glee: Volume 3	1	2011	6	15	0.3
5835	Spyro: Attack of the Rhynocs	9	2003	2	21	0.3
5836	Army Men World War: Land, Sea, Air	13	2000	9	78	0.3
15673	NEVES	4	2007	5	151	0.02
5837	Dai-2-Ji Super Robot Taisen OG	6	2012	12	26	0.3
5838	Stranglehold	6	2007	7	40	0.3
5839	Trauma Center: New Blood	1	2007	8	1	0.3
5840	Shrek the Third	4		9	5	0.3
5841	Lumines ll	17	2006	5	33	0.3
5842	NES Remix	20	2014	9	1	0.3
5843	1701 A.D.	15	2006	8	42	0.3
5844	Jumping Flash!	13	1995	2	4	0.3
5845	Karaoke Revolution Party	7	2005	6	15	0.3
5846	Batman: The Brave and the Bold the Videogame	4	2010	9	20	0.3
5847	Burnout	19	2002	3	31	0.3
5848	Lizzie McGuire 3: Homecoming Havoc	9	2005	2	33	0.3
5849	Chaos Legion	7	2003	9	13	0.3
5850	PowerUp Heroes	5	2011	10	6	0.3
5851	NASCAR 2011: The Game	5	2011	3	5	0.3
5852	Puyo Puyo 7	4	2009	5	9	0.3
5853	Shrek: Forever After	1	2010	2	5	0.3
5854	Charlie and the Chocolate Factory	9	2005	11	64	0.3
5855	Neopets: The Darkest Faerie	7	2005	11	4	0.3
5856	Blazing Heroes	24	1995	4	9	0.3
5857	Rhythm Tengoku	9	2006	6	1	0.3
5858	Super Robot Taisen W	4	2007	12	58	0.3
5859	Cart World Series	13	1997	3	4	0.3
5860	Invizimals: Shadow Zone	17	2010	12	4	0.3
5861	24: The Game	7	2006	11	4	0.3
5862	Spider-Man 3	17	2007	2	5	0.3
5863	The Dukes of Hazzard II: Daisy Dukes It Out	13		3	54	0.3
5864	Famista '91	2	1990	1	26	0.3
5865	Squinkies	4	2011	6	5	0.3
5866	Zoo Tycoon 2 DS	4	2008	12	29	0.3
5867	Looney Tunes: Duck Amuck	4	2007	9	20	0.3
5868	Super Robot Taisen OG: Original Generations Gaiden	7	2007	12	58	0.3
5869	Drakengard 3	6	2013	4	17	0.3
5870	Decathlete	24	1994	1	9	0.3
5871	The Sims 2	15	2004	8	8	0.3
5872	Disgaea 3: Absence of Detention	23		4	132	0.3
5873	Tom Clancy's Splinter Cell 3D	10	2011	9	6	0.3
5874	DmC: Devil May Cry	11	2015	9	13	0.3
5875	Jonas	4	2009	11	33	0.3
5876	Dynasty Warriors 6	5	2007	9	49	0.3
5877	Wacky Races: Crash & Dash	1	2008	3	22	0.3
5878	Dynasty Warriors 8: Xtreme Legends	11	2014	9	49	0.3
5879	Toukiden Kiwami	23	2014	9	49	0.3
5880	Sengoku Basara: Samurai Heroes	1	2010	9	13	0.3
5881	Romance of the Three Kingdoms VIII	7	2002	12	49	0.3
5882	Fossil Fighters (JP sales)	4	2008	4	1	0.3
5883	Daikaijyuu Monogatari	8	1994	4	69	0.3
5884	Tropico 5	11	2015	8	200	0.3
5885	Hard Hitter Tennis	7	2001	1	162	0.3
5886	Glory of Heracles	4	2008	4	1	0.3
5887	Monster Truck Madness 64	12	1999	3	3	0.3
5888	Quake II	12	1999	7	5	0.3
5889	Nounai Aeshe: IQ Suppli DS	4	2006	6	130	0.3
5890	Crazy Taxi: Catch a Ride	9	2003	3	29	0.3
5891	MySims Party	4	2009	8	8	0.3
5892	Harry Potter and the Order of the Phoenix	5	2007	9	8	0.3
5893	Skylanders: SuperChargers	11	2015	9	5	0.3
5894	Macross Digital Mission VF-X	13	1997	8	26	0.3
5895	One Piece Unlimited Cruise SP	10	2011	9	26	0.3
5896	Rayman 2: Revolution	7	2000	2	6	0.3
5897	Yu Yu Hakusho Ghost Files: Spirit Detective	9	2003	9	11	0.3
5898	Super Bomberman 5	8	1997	5	69	0.3
5899	N3: Ninety-Nine Nights	5	2006	9	2	0.3
5900	Shin Megami Tensei: Persona 2: Innocent Sin	17	2011	4	72	0.3
5901	Army Men: Air Attack 2	13	2000	9	78	0.3
5902	Need for Speed: Most Wanted	15	2005	3	8	0.3
5903	NBA Live 2003	19		1	8	0.3
5904	Pride FC: Fighting Championships	7	2003	10	29	0.3
5905	Eternal Ring	7	2000	4	6	0.3
5906	Dragon Force	24	1996	12	9	0.3
5907	John Deere: Harvest in the Heartland	4	2007	8	6	0.3
5908	Rabbids: Alive & Kicking	5	2011	6	6	0.3
5909	Shin Megami Tensei: Devil Summoner - Soul Hackers	10	2012	4	72	0.3
5910	Winning Post 2	8	1995	1	49	0.3
5911	Star Gladiator Episode: I Final Crusade	13	1996	10	19	0.3
5912	Spider-Man: Friend or Foe	5	2007	9	5	0.3
5913	FIFA 15	15	2014	1	8	0.3
5914	Dance Dance Revolution Universe 3	5	2008	8	15	0.3
5915	Harvest Moon: The Tale of Two Towns	10		8	54	0.3
5916	We Sing Pop!	1	2012	6	125	0.3
5917	Showdown: Legends of Wrestling	7	2004	10	31	0.3
5918	Capcom Classics Collection Remixed	17	2006	6	13	0.3
5919	Reel Fishing: Angler's Dream	1	2009	1	202	0.3
5920	Call of Duty: Modern Warfare 3: Defiance	4	2011	7	5	0.3
5921	SimCity 4	15	2003	8	8	0.3
5922	Far East of Eden Zero	8	1995	4	69	0.3
5923	Sword Art Online: Hollow Fragment	23	2014	4	26	0.3
5924	Star Ocean 5: Integrity and Faithlessness	11	2016	4	17	0.3
5925	Call of Juarez: The Cartel	6	2011	7	6	0.3
5926	Full Spectrum Warrior	7	2005	12	29	0.3
5927	Alvin and the Chipmunks: The Squeakquel	4	2009	6	35	0.3
5928	Taiko no Tatsujin Wii: Minna de Party * 3-Yome!	1	2010	6	26	0.3
5929	James Bond 007: Legends	5	2012	7	5	0.3
5930	The Sims 2: Pets	7	2006	8	8	0.3
5931	Dragon Quest Builders: Revive Alefgard	23	2016	4	17	0.3
5932	The Suite Life of Zack & Cody: Circle of Spies	4	2007	9	33	0.3
5933	Power Pro Kun Pocket 6	9	2003	1	15	0.3
5934	Mega Man ZX	4	2006	2	13	0.3
5935	Harvest Moon DS Cute (US sales)	4	2005	8	220	0.3
5936	Power Pro Kun Pocket 10	4	2007	1	15	0.3
5937	Wanted: Weapons of Fate	6	2009	7	20	0.3
5938	Finding Nemo: The Continuing Adventures	9	2004	9	29	0.3
5939	Spirit: Stallion of the Cimarron	9	2002	2	29	0.3
5940	Dreamworks Madagascar Kartz	6	2009	3	5	0.3
5941	Future Cop L.A.P.D.	13	1997	8	8	0.3
5942	Guitar Hero: Van Halen	5	2009	6	5	0.3
5943	Final Fantasy XI: Wings of the Goddess	5	2007	4	17	0.3
5944	Hamster Tarou	3	1999	8	203	0.3
5945	Shark Tale	19	2004	9	5	0.3
5946	Fist of the North Star: Ken's Rage 2	6	2012	10	49	0.3
5947	MLB SlugFest Loaded	7	2004	1	40	0.3
5948	Teenage Mutant Ninja Turtles	14	2003	9	15	0.3
5949	Trace Memory	4	2005	11	1	0.3
5950	FIFA Street 3	5	2008	1	8	0.3
5951	Mah Jong Quest: Expeditions	4	2007	5	191	0.3
5952	Batman: The Brave and the Bold the Videogame	1	2010	9	20	0.3
5953	Dragon Ball Z: Budokai Tenkaichi 2	1	2006	10	11	0.3
5954	AMF Bowling 2004	14	2003	1	184	0.3
5955	Thief (2014)	5	2014	9	17	0.3
5956	Scooby-Doo! Night of 100 Frights	19	2002	2	29	0.3
5957	Just Dance Kids 2	1	2011	6	6	0.29
5958	RealSports Boxing	16	1986	1	11	0.29
5959	Imagine: Makeup Artist	4	2020	8	6	0.29
5960	Grandia II	7	2002	4	6	0.29
5961	Syphon Filter: Dark Mirror	17	2006	7	4	0.29
5962	Front Mission Evolved	6	2010	7	17	0.29
5963	Tom and Jerry Tales	4	2006	2	20	0.29
5964	Mini Ninjas	5	2009	9	22	0.29
5965	NieR	5	2010	4	17	0.29
5966	The BIGS 2	1	2009	1	3	0.29
5967	X-Men Legends II: Rise of Apocalypse	17	2005	4	5	0.29
5968	Junior Brain Trainer 2	4	2010	6	96	0.29
5969	The Chronicles of Riddick: Assault on Dark Athena	5	2009	7	11	0.29
5970	Need for Speed Underground	9	2003	3	8	0.29
5971	Power Pro Kun Pocket 4	9	2002	1	15	0.29
5972	The Godfather: Dons Edition	6	2007	9	8	0.29
5973	Soul Sacrifice Delta	23	2014	9	4	0.29
5974	Guardian Heroes	24	1995	4	9	0.29
5975	Assassin's Creed IV: Black Flag	20	2013	9	6	0.29
5976	MLB Power Pros	1	2007	1	15	0.29
5977	Outlaw Golf	14	2002	1	73	0.29
5978	The Amazing Spider-Man 2 (2014)	6	2014	9	5	0.29
5979	Dynasty Warriors: Strikeforce	6	2009	9	49	0.29
5980	Fisherman's Bait 2: Big Ol' Bass	13	1999	1	15	0.29
5981	Lupin the 3rd: Treasure of the Sorcerer King	7	2002	11	12	0.29
5982	Up	5	2009	9	29	0.29
5983	Kurohyou: Ryu ga Gotoku Shinshou	17	2010	11	9	0.29
5984	Prince of Persia: Rival Swords	1	2007	9	6	0.29
5985	One Piece Unlimited Cruise 2: Awakening of a Hero	1	2009	9	26	0.29
5986	Ben 10 Alien Force: Vilgax Attacks	7	2009	9	59	0.29
5987	Majin and the Forsaken Kingdom	6	2010	11	26	0.29
5988	NBA Street V3	19	2005	1	8	0.29
5989	WinBack: Covert Operations	7	2000	7	162	0.29
5990	Punch-Out!!	1	2007	1	1	0.29
5991	FlatOut: Head On	17	2008	3	90	0.29
5992	Kagero: Deception II	13	1998	12	19	0.29
5993	Jikkyou Powerful Pro Yakyuu 2000 Kaimakuban	13	2000	1	15	0.29
5994	The Bureau: XCOM Declassified	6	2013	7	3	0.29
5995	NBA Live 06	5	2005	1	8	0.29
5996	Guitar Hero: Van Halen	1	2009	6	5	0.29
5997	J-League Victory Goal '96	24	1996	1	9	0.29
5998	Shin Megami Tensei: Strange Journey	4	2009	4	72	0.29
5999	Jeopardy! 2nd Edition	13	2000	6	28	0.29
6000	SD Gundam G Century	13	1997	12	26	0.29
6001	Ratchet & Clank: Size Matters	7	2008	2	4	0.29
6002	Ben 10 Ultimate Alien: Cosmic Destruction	1	2010	2	59	0.29
6003	Atelier Iris 3: Grand Phantasm (US Sales)	7	2006	4	49	0.29
6004	Itadaki Street 2: Neon Sign wa Bara Iro ni	8	1994	6	25	0.29
6005	Def Jam Rapstar	5	2010	6	15	0.29
6006	Need for Speed: The Run	1	2011	9	8	0.29
6007	From TV Animation One Piece: Treasure Battle!	19	2002	10	26	0.29
6008	Starhawk	6	2012	9	4	0.29
6009	Dolphin	16	1983	9	5	0.29
6010	Imagine: Fashion Designer World Tour	4	2009	8	6	0.29
6011	Area 51	14	2005	7	40	0.29
6012	The Smurfs: Dance Party	1	2011	6	6	0.29
6013	Disney Channel: All Star Party	1	2010	6	33	0.29
6014	Ace Combat: Joint Assault	17	2010	8	26	0.29
6015	Hamster Club 4: Shigessa Daidassou	9	2003	8	203	0.29
6016	Medieval Moves: Deadmund's Quest	6	2011	9	4	0.29
6017	Angry Birds Star Wars	5	2013	12	5	0.29
6018	Mega Man X8	7	2004	2	13	0.29
6019	CSI: Deadly Intent	1	2009	11	6	0.29
6020	Ford Mustang: The Legend Lives	7	2005	3	3	0.29
6021	Ys: Memories of Celceta	23	2012	9	221	0.29
6022	FIFA Soccer 13	10	2012	9	8	0.29
6023	Fast Food	16	1981	9	54	0.29
6024	Jikkyou Powerful Pro Yakyuu 8	7	2001	1	15	0.29
6025	Viz	12	1998	3	31	0.29
6026	Top Gear Overdrive	12	1998	3	189	0.29
6027	Xena: Warrior Princess - The Talisman of Fate	12	1999	10	104	0.29
6028	Jeremy McGrath Supercross 2000	12	1999	3	31	0.29
6029	The New Tetris	12	1999	5	1	0.29
6030	Ken Griffey Jr.'s Slugfest	12	1999	1	1	0.29
6031	Supercross 2000	12	1999	3	8	0.29
6032	War Gods	12	1997	10	40	0.29
6033	Bladestorm: The Hundred Years' War	6	2007	9	49	0.29
6034	World of Tanks	15	2011	7	222	0.29
6035	Jewel Quest Mysteries: Curse of the Emerald Tear	4	2010	5	191	0.29
6036	Duel Masters: Sempai Legends	9	2003	6	11	0.29
6037	Marvel Super Hero Squad	7	2009	10	29	0.29
6038	Turning Point: Fall of Liberty	5	2008	7	36	0.29
6039	Heroes of the Pacific	7	2005	8	36	0.29
6040	Dead Rising: Chop Till You Drop	1	2009	9	13	0.29
6041	The Lord of the Rings: The Third Age	19	2004	4	8	0.29
6042	Disney Infinity	10	2013	9	33	0.29
6043	Fable: The Journey	5	2012	4	2	0.29
6044	Nicktoons: Battle for Volcano Island	19		9	54	0.29
6045	Sonic Boom: Shattered Crystal	10	2014	9	9	0.29
6046	Just Dance Wii 2	1	2012	6	1	0.29
6047	Madden NFL 08	14	2007	1	8	0.29
6048	DX Game of Life	13	1996	6	152	0.29
6049	Pirates of the Caribbean	14	2003	4	6	0.29
6050	Operation Flashpoint: Red River	5	2011	7	36	0.29
6051	One Piece: Pirate Warriors 3	6	2015	9	26	0.29
6052	The Punisher	14	2005	9	29	0.29
6053	MLB Pennant Race	13	1996	1	4	0.29
6054	Transformers: Dark of the Moon	5	2011	9	5	0.29
6055	SD Gundam Gaiden: Knight Gundam Monogatari: Ooinaru Isan	8	1991	4	223	0.29
6056	GRID 2	5	2013	3	36	0.29
6057	WWII Aces	1	2008	8	154	0.29
6058	Puzzle Quest: Challenge of the Warlords	1	2007	5	59	0.29
6059	Shrek Super Party	7	2002	6	73	0.29
6060	Sakura Wars 4: Koi Seyo,Otome	22	2002	11	9	0.29
6061	Sakura Wars: So Long, My Love	7	2005	4	9	0.29
6062	Dynasty Tactics	7	2002	12	49	0.29
6063	The Urbz: Sims In the City (US weekly sales)	4	2004	8	8	0.29
6064	Lightning Returns: Final Fantasy XIII	5	2013	4	17	0.29
6065	Feel the Magic XY/XX	4	2004	5	9	0.29
6066	Trivial Pursuit	6	2009	6	8	0.29
6067	Neopets Puzzle Adventure	4	2008	5	13	0.29
6068	Sonic & All-Stars Racing Transformed	10	2012	3	9	0.29
6069	Shrek the Third	1	2007	9	5	0.29
6070	Snowboarding	13	2000	1	162	0.29
6071	Purr Pals	1	2008	8	42	0.29
6072	Dragon Ball Heroes: Ultimate Mission	10	2013	6	26	0.29
6073	Borderlands: The Pre-Sequel	15	2014	7	3	0.29
6074	Surf's Up	7	2007	1	6	0.29
6075	BlazBlue: Chrono Phantasma	6	2013	10	224	0.29
6076	Looney Tunes Racing	13	2000	3	53	0.29
6077	Final Fantasy X-2: International + Last Mission	7	2004	4	17	0.29
6078	Namco Museum Vol.2	13	1996	6	4	0.29
6079	Rayman 3: Hoodlum Havoc	7	2003	2	6	0.29
6080	Penguin no Mondai: Saikyou Penguin Densetsu! A Penguin's Troubles	4	2008	11	15	0.29
6081	Psi-Ops: The Mindgate Conspiracy	7	2004	7	40	0.29
6082	I Spy: Spooky Mansion	1	2010	5	216	0.29
6083	Tomba! 2: The Evil Swine Return	13	1999	2	4	0.29
6084	SAW	5	2009	9	15	0.29
6085	Wappy Dog	4	2011	8	5	0.29
6086	Dragon Quest: Shounen Yangus to Fushigi no Dungeon	7	2006	4	17	0.29
6087	BeatMania Append 4thMix: The beat goes on	13	1999	8	15	0.29
6088	NASCAR 08	5	2007	3	8	0.29
6089	World of Warcraft: Legion	15	2016	4	5	0.29
6090	Romance of the Three Kingdoms III: Dragon of Destiny	8	1992	12	49	0.29
6091	Power Pro Kun Pocket 11	4	2008	1	15	0.29
6092	El Shaddai: Ascension of the Metatron	6	2011	9	151	0.29
6093	Family Guy: Back to the Multiverse	6	2012	9	5	0.29
6094	Spyro: A Hero's Tail	19	2004	2	24	0.29
6095	Warriors Orochi 2	17	2008	9	49	0.29
6096	Ratatouille: Food Frenzy	4	2007	5	29	0.29
6097	Links 2004	14	2003	1	2	0.29
6098	PGA Tour 97	13	1996	1	8	0.29
6099	Bratz: Super Babyz	4	2008	9	29	0.29
6100	Battle & Get! Pokemon Typing DS	4	2011	6	1	0.29
6101	Kung Zhu	4	2010	9	5	0.29
6102	Earthworm Jim	9	2001	2	118	0.29
6103	Tales of Phantasia	9	2003	4	1	0.29
6104	The Golden Compass	6	2007	9	9	0.29
6105	F1 Race Stars	5	2012	3	36	0.29
6106	All Star Cheer Squad	4	2008	1	29	0.28
6107	Rugby World Cup 2011	5	2011	1	12	0.28
6108	Ice Age: Dawn of the Dinosaurs	1	2009	9	5	0.28
6109	Monster 4x4: Masters of Metal	7	2003	3	6	0.28
6110	SingStar Country	7	2008	6	4	0.28
6111	DeathSmiles	5	2009	7	71	0.28
6112	VMX Racing	13	1997	3	225	0.28
6113	Hot Shots Golf: World Invitational	6	2012	1	4	0.28
6114	Disney's Extreme Skate Adventure	9	2003	1	5	0.28
6115	Dragon Ball GT: Transformation	9	2005	9	11	0.28
6116	Bratz Ponyz	4	2007	11	103	0.28
6117	Super Fire ProWrestling X	8	1995	10	190	0.28
6118	Baby Pals	4	2007	8	29	0.28
6119	International Superstar Soccer	8	1994	1	15	0.28
6120	Metal Gear Solid V: Ground Zeroes	18	2014	9	15	0.28
6121	Tigger's Honey Hunt	13	2000	2	6	0.28
6122	The Warriors	14	2005	9	3	0.28
6123	Monopoly Streets	5	2010	6	8	0.28
6124	Shadow Hearts	7	2001	4	40	0.28
6125	NHL 2K11	1	2010	1	3	0.28
6126	One Piece: Burning Blood	11	2016	10	26	0.28
6127	Haven: Call of the King	7		2	40	0.28
6128	Street Hoops	14	2002	1	5	0.28
6129	Yu-Gi-Oh! Double Pack	9	2006	4	15	0.28
6130	X-Men: Reign of Apocalypse	9	2001	9	5	0.28
6131	R: Racing Evolution	7	2003	3	26	0.28
6132	Tony Hawk: Shred	6	2010	1	5	0.28
6133	Netsu Chu! Pro Yakyuu 2003	7	2003	1	26	0.28
6134	ATV Quad Power Racing 2	19	2003	3	31	0.28
6135	Digimon Adventure: Anode Tamer	26	1999	4	26	0.28
6136	Fantastic 4: Flame On	9	2005	9	5	0.28
6137	Siren: Blood Curse	6	2008	9	4	0.28
6138	Pro Evolution Soccer 2017	11	2016	1	15	0.28
6139	Chromehounds	5	2006	8	9	0.28
6140	Marvel Nemesis: Rise of the Imperfects	14	2005	10	8	0.28
6141	The King of Fighters '95	24	1995	10	226	0.28
6142	Pirates of the Caribbean: Dead Man's Chest	17	2006	11	33	0.28
6143	Assassin's Creed II: Discovery	4	2009	9	6	0.28
6144	F/A-18F Super Hornet	9	2004	8	35	0.28
6145	Avatar: The Last Airbender	1	2006	11	29	0.28
6146	Final Fantasy VI Advance	9	2006	4	1	0.28
6147	Polaris	16	1982	9	136	0.28
6148	Viewtiful Joe	7	2004	9	13	0.28
6149	Triple Play 2000	12	1999	1	8	0.28
6150	Beyblade: Metal Masters	4	2010	9	15	0.28
6151	Need for Speed: Most Wanted	20	2013	3	8	0.28
6152	Arcade Hits: Frisky Tom	13	2002	9	227	0.28
6153	Dead to Rights: Retribution	6	2010	7	26	0.28
6154	Harry Potter and the Sorcerer's Stone	7	2003	9	8	0.28
6155	Unreal Championship 2: The Liandri Conflict	14		7	40	0.28
6156	Kung Fu Chaos	14	2003	10	2	0.28
6157	Mega Man: Dr. Wily's Revenge	3	1991	2	1	0.28
6158	Yu-Gi-Oh! World Championship 2008	4	2007	12	15	0.28
6159	Naruto Shippuden: Ultimate Ninja Storm 4	18	2016	10	26	0.28
6160	Godzilla: Domination!	9	2002	10	11	0.28
6161	Sly Cooper: Thieves in Time	23	2013	2	16	0.28
6162	Tales of the World: Radiant Mythology 3	17	2011	4	26	0.28
6163	Famista '92	2	1991	1	26	0.28
6164	Jissen Pachi-Slot Hisshouhou! Moujuu-Oh S	7	2002	6	101	0.28
6165	Jackass the Game	7	2007	9	90	0.28
6166	Mega Man II	3	1991	2	1	0.28
6167	Lord of Darkness	8	1991	9	49	0.28
6168	Hannah Montana: Spotlight World Tour	7	2008	9	33	0.28
6169	Rocket Power: Beach Bandits	9	2002	2	29	0.28
6170	Surf's Up	4	2007	1	6	0.28
6171	Carol Vorderman's Sudoku	7	2006	5	169	0.28
6172	MX SuperFly featuring Ricky Carmichael	7	2002	3	29	0.28
6173	Remington Super Slam Hunting: Africa	1	2010	1	178	0.28
6174	Army of Two: The Devil's Cartel	6	2013	7	8	0.28
6175	Syphon Filter: Dark Mirror	7	2007	7	4	0.28
6176	Conflict: Desert Storm II - Back to Bagdhad	14	2003	7	112	0.28
6177	Guitar Hero Live	6	2015	6	5	0.28
6178	Mission: Impossible - Operation Surma	7	2003	2	11	0.28
6179	Sesame Street: Elmo's A-to-Zoo Adventure	4	2010	6	20	0.28
6180	MLB 07: The Show	17	2007	1	4	0.28
6181	Pitfall: The Mayan Adventure	9	2001	2	118	0.28
6182	Driver: Parallel Lines	7	2006	3	11	0.28
6183	Sing Party	20	2012	6	1	0.28
6184	Shrek: Ogres & Dronkeys	4	2007	8	5	0.28
6185	Monopoly	4	2010	6	8	0.28
6186	Hot Wheels: Track Attack	4	2010	3	29	0.28
6187	Backyard Wrestling 2: There Goes the Neighborhood	7	2004	10	22	0.28
6188	Virtua Fighter 5 Online	5	2007	10	9	0.28
6189	Disney's Treasure Planet	9	2002	9	6	0.28
6190	Dead or Alive	13	1998	10	4	0.28
6191	Wild ARMs 5	7	2006	4	12	0.28
6192	Bionic Commando	5	2009	2	13	0.28
6193	NFL Blitz 20-02	7	2002	1	40	0.28
6194	Mega Man 7	8	1995	2	150	0.28
6195	NCAA March Madness 2005	14	2004	1	8	0.28
6196	Shadows of the Damned	6	2011	9	8	0.28
6197	The Chronicles of Narnia: The Lion, The Witch and The Wardrobe	19		9	33	0.28
6198	NBA In The Zone	13	1995	1	15	0.28
6199	Corvette	9	2003	3	73	0.28
6200	F1 ROC: Race of Champions	8	1992	1	86	0.28
6201	Just Dance 2015	6	2014	6	6	0.28
6202	The Adventures of Jimmy Neutron Boy Genius: Attack of the Twonkies	19	2004	9	29	0.28
6203	Silent Hill 2: Restless Dreams	14	2001	9	15	0.28
6204	Cabela's Big Game Hunter 2012	5	2011	1	5	0.28
6205	Dragon Quest Heroes II: Twin Kings and the Prophecy's End	11	2016	9	17	0.28
6206	Moshi Monsters: Moshlings Theme Park	10	2012	6	5	0.28
6207	UEFA Euro 2016	11	2016	1	15	0.28
6208	Soul Nomad & the World Eaters	7	2007	4	49	0.28
6209	RollerCoaster Tycoon 3	15	2004	12	11	0.28
6210	Bass Strike	7	2001	1	29	0.28
6211	NHL Hitz 20-03	7	2002	1	40	0.28
6212	Danganronpa Another Episode: Ultra Despair Girls	23	2014	9	132	0.28
6213	Pac-Man Fever	19		6	54	0.28
6214	Over the Hedge	4	2006	2	5	0.28
6215	Real Pool	7	2000	1	162	0.28
6216	iCarly 2: iJoin The Click!	4	2010	11	5	0.28
6217	The Warriors	17	2007	9	3	0.28
6218	Mister Mosquito	7	2001	7	22	0.28
6219	Kakyuusei	24	1997	12	199	0.28
6220	Patapon 3	17	2011	6	4	0.28
6221	Sesame Street: Cookie's Counting Carnival	4	2010	6	20	0.28
6222	Civilization II	13	1998	12	5	0.28
6223	Guitar Hero: Van Halen	6	2009	6	5	0.28
6224	Dynasty Warriors: Gundam	7	2008	9	26	0.28
6225	Madagascar	14	2005	2	5	0.28
6226	Transformers: Cybertron Adventures	1	2010	9	5	0.28
6227	Indiana Jones and the Staff of Kings	7	2009	9	5	0.28
6228	F-1 Grand Prix	8	1992	3	62	0.28
6229	Mass Effect 3	20	2012	4	8	0.28
6230	Pinkalicious	4	2011	6	171	0.28
6231	SimCity 2000	24	1994	8	9	0.28
6232	Deer Hunter	7	2003	1	11	0.28
6233	Pokemon Box: Ruby & Sapphire	19	2003	6	1	0.28
6234	Puyo Puyo! 15th Anniversary	4	2006	5	9	0.28
6235	Yu-Gi-Oh! Monster Capsule Breed & Battle	13	1998	4	15	0.28
6236	FIFA Soccer 07	5	2006	1	8	0.28
6237	Mass Effect Trilogy	15	2012	9	8	0.28
6238	Dave Mirra Freestyle BMX 2	19	2001	1	31	0.28
6239	AC/DC LIVE: Rock Band Track Pack	1	2008	6	32	0.28
6240	My Japanese Coach	4	2008	6	6	0.28
6241	Puppeteer	6	2013	2	16	0.28
6242	Warpath: Jurassic Park	13	1998	10	8	0.28
6243	Tak and the Guardians of Gross	7	2008	9	29	0.28
6244	True Crime: New York City	14	2005	9	5	0.28
6245	Summer Heat Beach Volleyball	7	2003	1	31	0.28
6246	NCAA Basketball 09	7	2008	1	8	0.28
6247	One Piece Unlimited Cruise 1: The Treasure Beneath the Waves	1	2008	11	26	0.28
6248	Marvel Super Hero Squad: The Infinity Gauntlet	1	2010	9	29	0.28
6249	Dead Rising 2: Off the Record	5	2011	9	13	0.28
6250	Power Pro Kun Pocket 3	9	2001	1	15	0.28
6251	Myst III: Exile	7	2002	11	6	0.28
6252	Castlevania: Aria of Sorrow	9	2003	2	15	0.28
6253	NBA 2K12	17	2011	1	3	0.28
6254	R.U.S.E.	15	2010	12	6	0.28
6255	Mobile Suit Gundam Side Story I: Senritsu no Blue	24	1996	7	26	0.28
6256	Armored Core: Project Phantasma	13	1997	8	228	0.28
6257	Donkey Kong GB: Dinky Kong & Dixie Kong	3	2000	2	1	0.28
6258	Kobitodzukan: Kobito Kansatsu Set	10	2012	6	229	0.28
6259	ExciteBots: Trick Racing	1	2009	3	1	0.28
6260	Pro Evolution Soccer 2013	17	2012	1	15	0.28
6261	Deadpool	11	2015	9	5	0.28
6262	Nichibutsu Arcade Classics	8	1995	6	230	0.28
6263	Kenka Bancho: Badass Rumble	17	2008	9	130	0.27
6264	Cabela's Trophy Bucks	7	2007	1	57	0.27
6265	Moero! Nekketsu Rhythm Damashii: Osu! Tatakae! Ouendan! 2	4	2007	6	1	0.27
6266	Q-Ball: Billiards Master	7	2000	1	3	0.27
6267	Mr. Do!	16	1982	9	70	0.27
6268	How to Train Your Dragon 2	1	2014	11	231	0.27
6269	Boogie	4	2007	6	8	0.27
6270	Tao Feng: Fist of the Lotus	14	2003	10	2	0.27
6271	Rapala Pro Bass Fishing 2010	6	2010	1	5	0.27
6272	Shin Nippon Pro Wrestling: Toukon Retsuden 2	13	1996	10	100	0.27
6273	Dragon Ball Z: Budokai 2	19	2004	10	11	0.27
6274	The Legend of Zelda: The Minish Cap(weekly JP sales)	9		9	34	0.27
6275	Motocross Maniacs Advance	9	2002	3	15	0.27
6276	Resident Evil 2: Dual Shock Edition	13	1998	9	13	0.27
6277	Dynasty Warriors	13	1997	9	49	0.27
6278	M&M's Blast!	9	2001	5	54	0.27
6279	Zumba Fitness: World Party	1	2013	6	35	0.27
6280	Need for Speed: Most Wanted	4	2005	3	8	0.27
6281	Final Fantasy X International	7	2004	4	17	0.27
6282	Tiny Toon Adventures: Plucky's Big Adventure	13	2001	9	232	0.27
6283	NHL Hitz 20-02	14	2001	1	40	0.27
6284	Iron Man 2	5	2010	9	9	0.27
6285	Indy 500	16		3	11	0.27
6286	Littlest Pet Shop: Beach Friends	4	2009	8	8	0.27
6287	Trivial Pursuit	7	2009	6	8	0.27
6288	Suikoden Tierkreis	4	2008	4	15	0.27
6289	Evil Dead: Hail to the King	13	2000	11	29	0.27
6290	Dragon Ball GT: Final Bout	13	1997	10	26	0.27
6291	Burstrick: Wake Boarding!!	13	2000	1	80	0.27
6292	Dave Mirra Freestyle BMX: Maximum Remix	13	2001	1	31	0.27
6293	Divinity: Original Sin	11	2015	4	81	0.27
6294	R.U.S.E.	5	2010	12	6	0.27
6295	Hatsune Miku: Project Diva f	6	2013	6	9	0.27
6296	Resident Evil: Deadly Silence	4	2006	9	13	0.27
6297	Pac-Pix	4	2005	5	26	0.27
6298	Beamrider	16	1984	3	5	0.27
6299	EyePet	17	2010	8	4	0.27
6300	The Evil Within	15	2014	9	7	0.27
6301	Athens 2004	7	2004	1	4	0.27
6302	Gunship	13	1996	8	97	0.27
6303	Jikkyou Powerful Pro Yakyuu Portable 4	17	2009	1	15	0.27
6304	SD Gundam G Generation Portable	17	2006	12	26	0.27
6305	Sydney 2000	13	2000	1	22	0.27
6306	Pro Race Driver	7	2002	3	36	0.27
6307	Baten Kaitos: Eternal Wings and the Lost Ocean	19	2003	4	1	0.27
6308	Bishoujo Senshi Sailormoon R	8	1993	10	26	0.27
6309	The Club	5	2008	7	9	0.27
6310	Slam Dunk: Yonkyo Taiketsu!!	8	1994	1	26	0.27
6311	Rhythm Thief & the Emperor's Treasure	10	2012	6	9	0.27
6312	Rocky: Legends	7	2004	9	6	0.27
6313	NickToons: Racing	9	2002	3	53	0.27
6314	MotionSports: Adrenaline	5	2011	1	6	0.27
6315	Tiger Woods PGA Tour 07	17	2006	1	8	0.27
6316	Gun	5		7	5	0.27
6317	NHL 07	5	2006	1	8	0.27
6318	Flag Capture	16		9	11	0.27
6319	Bridge	16	1980	6	5	0.27
6320	G-Force	7	2009	9	33	0.27
6321	LEGO Harry Potter: Years 5-7	17		9	20	0.27
6322	The Adventures of Tintin: The Game	6	2011	9	6	0.27
6323	RalliSport Challenge 2	14	2004	3	2	0.27
6324	Fushigi no Dungeon: Fuurai no Shiren GB: Tsukikagemura no Kaibutsu	3	1996	4	120	0.27
6325	Wave Rally	7	2001	3	22	0.27
6326	Over the Hedge	9	2006	2	5	0.27
6327	Disgaea 5: Alliance of Vengeance	11	2015	4	132	0.27
6328	Disney's Chicken Little	19	2005	2	33	0.27
6329	Battle of Giants: Mutant Insects	4	2010	12	6	0.27
6330	Ty the Tasmanian Tiger	19	2002	2	8	0.27
6331	Sengoku Basara 4	6	2014	9	13	0.27
6332	Yu-Gi-Oh! The Sacred Cards (JP weekly sales)	9	2002	4	15	0.27
6333	WWE Road to WrestleMania X8	9	2002	10	29	0.27
6334	Medarot 3: Kabuto / Kuwagata Version	3	2000	4	157	0.27
6335	Fullmetal Alchemist 2: Curse of the Crimson Elixir	7	2004	4	17	0.27
6336	Sherlock Holmes: Crimes & Punishments	11	2014	11	81	0.27
6337	NASCAR 06: Total Team Control	14	2005	3	8	0.27
6338	Bratz: The Movie	1	2007	8	29	0.27
6339	BloodRayne 2	7	2004	7	29	0.27
6340	Spider-Man: Web of Shadows	6	2008	9	5	0.27
6341	NHL 2002	14	2001	1	8	0.27
6342	Reader Rabbit Kindergarten	4	2008	6	125	0.27
6343	Tropico 4	15	2011	12	200	0.27
6344	NBA In The Zone '98	12	1997	1	15	0.27
6345	Jikkyou Powerful Pro Yakyuu 5	12	1998	1	15	0.27
6346	NBA Jam 99	12	1998	1	31	0.27
6347	Shadow Man	12	1999	9	31	0.27
6348	Command & Conquer	12	1999	12	1	0.27
6349	Call of Juarez: The Cartel	5	2011	7	6	0.27
6350	Shadow of Rome	7	2005	9	13	0.27
6351	Tohoku Daigaku Karei Igaku Kenkyuusho - Kawashima Ryuuta Kyouju Kanshuu - Mono Sugoku Nou o Kitaeru 5-Funkan no Oni Training	10	2012	9	1	0.27
6352	Tales of Eternia	17	2005	4	6	0.27
6353	Harry Potter and the Order of the Phoenix	7	2007	9	8	0.27
6354	Ben 10 Triple Pack	4	2011	6	59	0.27
6355	Need for Speed Rivals	15	2013	3	8	0.27
6356	Stuntman: Ignition	7	2007	3	29	0.27
6357	Fantastic 4	14	2005	9	5	0.27
6358	Mat Hoffman's Pro BMX	9	2001	1	5	0.27
6359	MotoGP	7	2000	3	26	0.27
6360	The Penguins of Madagascar	4	2010	9	29	0.27
6361	Summer Athletics: The Ultimate Challenge (US sales)	1	2008	1	233	0.27
6362	Rock Revolution	5	2008	6	15	0.27
6363	Etrian Odyssey II: Heroes of Lagaard	4	2008	4	72	0.27
6364	LEGO The Hobbit	18	2014	9	20	0.27
6365	Jikkyou Powerful Pro Yakyuu 2	8	1995	1	15	0.27
6366	The Incredible Hulk	6	2008	9	9	0.27
6367	Resident Evil: Revelations	5	2013	9	13	0.27
6368	Major League Baseball 2K10	1	2010	1	3	0.27
6369	NASCAR 2011: The Game	6	2011	3	5	0.27
6370	Thoroughbred Breeder II	8	1994	8	234	0.27
6371	Shin Megami Tensei: Devil Survivor	4	2009	4	72	0.27
6372	Magical Vacation	9	2001	4	1	0.27
6373	XGIII: Extreme G Racing	7	2001	3	31	0.27
6374	NBA Live 2004	19	2003	1	8	0.27
6375	Dragon Ball: XenoVerse	5	2015	10	26	0.27
6376	NASCAR Thunder 2003	14	2002	3	8	0.27
6377	Section 8	5	2009	7	84	0.27
6378	Superbike 2000	13	1999	3	8	0.27
6379	America's Test Kitchen: Let's Get Cooking	4	2010	8	1	0.27
6380	Final Fantasy XI: Ultimate Collection	5	2009	4	17	0.27
6381	Fire Emblem: Shin Monshou no Nazo Hikari to Kage no Eiyuu	4	2010	12	1	0.27
6382	F1 2016 (Codemasters)	11	2016	3	36	0.27
6383	Connect Four / Perfection / Trouble	9	2005	6	87	0.27
6384	Wipeout 2	5	2011	6	5	0.27
6385	Ratatouille	5	2007	9	29	0.27
6386	The Incredible Hulk	5	2008	9	9	0.27
6387	Dora the Explorer: Dora Saves the Crystal Kingdom	1	2009	6	3	0.27
6388	Alundra 2: A New Legend Begins	13	1999	4	5	0.27
6389	Reign of Fire	7	2002	7	176	0.27
6390	Scooby-Doo! and the Spooky Swamp	7	2010	9	20	0.27
6391	Jikkyou Powerful Pro Yakyuu '98 Ketteiban	13	1998	1	15	0.27
6392	Ace Attorney 6	10	2016	11	13	0.27
6393	The Sims 2: Pets	19	2006	8	8	0.27
6394	Cake Mania 2: Jill's Next Adventure!	4	2008	5	35	0.27
6395	Batman: Arkham Origins Blackgate	10	2013	9	20	0.27
6396	The BIGS	5	2007	1	3	0.27
6397	Initial D: Special Stage	7	2003	3	9	0.27
6398	Madden NFL 08	4	2007	1	8	0.27
6399	Jurassic Park: Operation Genesis	7	2003	8	15	0.27
6400	Family Feud: 2010 Edition	4	2009	6	6	0.27
6401	Final Doom	13	1995	7	14	0.27
6402	Deadly Premonition	5	2010	9	71	0.27
6403	Rock Revolution	6		6	54	0.27
6404	Are You Smarter than a 5th Grader? Game Time	1	2009	5	29	0.27
6405	NBA ShootOut 2001	13	2000	1	4	0.27
6406	Knockout Kings 2002	14	2002	1	8	0.27
6407	Wipeout 2	4	2011	6	5	0.27
6408	Payday 2	11	2015	7	12	0.27
6409	Ultimate NES Remix	10	2014	9	54	0.27
6410	Megamind: The Blue Defender	4	2010	11	29	0.27
6411	NFL Street 3	17	2006	1	8	0.27
6412	Battle Arena Toshinden 3	13	1996	10	4	0.27
6413	Teenage Mutant Ninja Turtles: Danger of the Ooze	6	2014	11	5	0.27
6414	Jade Cocoon: Story of the Tamamayu	13	1998	4	68	0.27
6415	Super Nazo Puyo: Ruruu no Ruu	8	1995	5	58	0.27
6416	Cabela's Big Game Hunter 2010	5	2009	1	57	0.27
6417	InuYasha: Feudal Combat	7	2005	10	26	0.27
6418	Duel Masters	7	2004	12	11	0.27
6419	Ninja Gaiden Sigma	23	2012	9	49	0.27
6420	Super Collapse! 3	4	2007	5	235	0.27
6421	Superman Returns	5	2006	9	8	0.27
6422	The Dog Island	7	2007	11	6	0.27
6423	My Virtual Tutor: Reading Adventure Kindergarten to First	4	2009	6	188	0.27
6424	Dynasty Warriors Next	23	2011	9	49	0.27
6425	Major League Baseball 2K9	1	2009	1	3	0.27
6426	Jikkyou Powerful Pro Yakyuu 2010	6	2010	1	15	0.27
6427	Operation Armored Liberty	9	2003	9	35	0.27
6428	Rory McIlroy PGA Tour	18	2015	9	8	0.27
6429	Dynasty Warriors 7: Xtreme Legends	6	2011	9	49	0.27
6430	Summer Sports 2: Island Sports Party	1	2008	1	6	0.27
6431	Imagine: Fashion Party	1	2009	8	6	0.27
6432	Fish Tycoon	4	2007	8	35	0.27
6433	Scene It? Twilight	1	2009	6	15	0.27
6434	And1 Streetball	7	2006	9	6	0.27
6435	Don King Boxing	1	2009	1	3	0.27
6436	Atelier Ayesha: The Alchemist of Dusk	6	2012	4	49	0.27
6437	Angry Birds Trilogy	5	2012	9	5	0.27
6438	Dragon Ball Z: Tenkaichi Tag Team	17	2010	10	26	0.27
6439	Sonic X: Game Boy Advance Video Volume 1	9	2004	6	34	0.27
6440	ESPN NBA Basketball	14	2003	1	9	0.27
6441	Gallop Racer 2: One and Only Road to Victory	13	1997	1	49	0.27
6442	NBA 07	6	2006	1	4	0.26
6443	Lowrider	7	2002	6	236	0.26
6444	Reload: Target Down	1	2010	7	178	0.26
6445	All-Pro Football 2K8	5	2007	1	3	0.26
6446	Dungeons & Dragons: Eye of the Beholder	9	2002	4	11	0.26
6447	The Crew	5	2014	3	6	0.26
6448	Barbie: Jet, Set & Style!	1	2011	6	29	0.26
6449	Battlestations: Midway	5	2007	12	22	0.26
6450	Rayman DS	4	2005	2	6	0.26
6451	Gundam Breaker	6	2013	9	26	0.26
6452	The House of the Dead 2	22	1998	7	9	0.26
6453	Create	1	2010	9	8	0.26
6454	A.C.E.: Another Century's Episode R	6	2010	8	26	0.26
6455	Littlest Pet Shop: Friends	1	2009	8	8	0.26
6456	Rune: Viking Warlord	7	2001	9	3	0.26
6457	Panzer Dragoon Orta	14	2002	7	9	0.26
6458	Jikkyou Powerful Pro Yakyuu '99 Ketteiban	13	1999	1	15	0.26
6459	Dragon Age Origins: Awakening	6	2010	4	130	0.26
6460	King's Field II	13	1996	4	228	0.26
6461	Danganronpa 2: Goodbye Despair	23	2014	6	132	0.26
6462	Aikatsu! 2-nin no My Princess	10	2013	9	26	0.26
6463	Beyblade: Metal Fusion	4	2009	4	69	0.26
6464	NCAA Gamebreaker	13	1996	1	4	0.26
6465	Petz: Horsez 2	7	2007	8	6	0.26
6466	NPPL: Championship Paintball 2009	7	2008	7	57	0.26
6467	Skylanders: SuperChargers	1	2015	9	5	0.26
6468	Zoo Tycoon 2: Ultimate Collection	15	2008	12	2	0.26
6469	Tomba!	13	1997	2	4	0.26
6470	Love Plus	4	2009	8	15	0.26
6471	Tales of Innocence	4	2007	4	26	0.26
6472	MLB SlugFest 2006	7	2006	1	40	0.26
6473	J Stars Victory Vs.	23	2014	10	26	0.26
6474	Rugrats: I Gotta Go Party	9	2002	9	29	0.26
6475	Virtua Racing	21	1994	3	9	0.26
6476	Crash Tag Team Racing	17	2005	3	24	0.26
6477	Prison Break: The Conspiracy	6	2010	9	42	0.26
6478	Bolt	7	2008	11	33	0.26
6479	DS Bungaku Zenshuu	4	2007	6	1	0.26
6480	We Cheer 2	1	2009	8	26	0.26
6481	Nancy Drew: The Mystery of the Clue Bender Society	4	2008	11	36	0.26
6482	Inazuma Eleven GO 3: Galaxy	10	2013	1	38	0.26
6483	Ford Racing 3	7	2004	3	3	0.26
6484	Michael Jackson: The Experience	4	2010	6	6	0.26
6485	Phantasy Star Universe: Ambition of the Illuminus	7	2007	4	9	0.26
6486	Project Runway	1	2010	8	11	0.26
6487	Jikkyou Powerful Pro Yakyuu 2013	6	2013	1	15	0.26
6488	The Adventures of Jimmy Neutron Boy Genius vs. Jimmy Negatron	9	2002	9	29	0.26
6489	Sengoku Basara 2	7	2006	9	13	0.26
6490	Naruto: Ultimate Ninja Heroes	17	2006	10	26	0.26
6491	Inazuma Eleven Strikers	1	2011	4	1	0.26
6492	Hey Arnold! The Movie	9	2002	2	29	0.26
6493	Final Fantasy V Advance	9	2006	4	1	0.26
6494	Need for Speed: Most Wanted	9	2005	3	8	0.26
6495	Lumines: Electronic Symphony	23	2012	6	6	0.26
6496	Star Trek: Invasion	13	2000	8	5	0.26
6497	Final Fantasy Crystal Chronicles: Echoes of Time	1	2009	4	17	0.26
6498	Jonah Lomu Rugby Challenge	6		1	209	0.26
6499	Babysitting Mania	4	2008	8	35	0.26
6500	Star Wars: Bounty Hunter	19	2002	7	18	0.26
6501	Tom and Jerry in War of the Whiskers	7	2002	10	6	0.26
6502	Ace Attorney Investigations 2	4	2011	11	13	0.26
6503	Minute to Win It	1	2010	6	75	0.26
6504	Smart Girl's Playhouse	4	2007	6	12	0.26
6505	Racquet Sports	1	2010	1	6	0.26
6506	TouchMaster 3(Others sales)	4	2009	5	20	0.26
6507	The Elder Scrolls IV: Oblivion	15	2006	4	3	0.26
6508	Jikkyou Powerful Pro Yakyuu 2011	6	2011	1	15	0.26
6509	Madden NFL 2005	4	2004	1	8	0.26
6510	Skylanders: Trap Team	10	2014	9	5	0.26
6511	Yu-Gi-Oh! Ultimate Masters: World Championship Tournament 2006	9	2006	6	15	0.26
6512	Power Pro Kun Pocket 5	9	2003	1	15	0.26
6513	Konjiki no Gashbell!! Makai no Bookmark	9	2004	11	58	0.26
6514	Plants vs. Zombies	5	2010	12	208	0.26
6515	Riding Spirits	7	2002	3	176	0.26
6516	Disney Sing It: Pop Hits	6	2009	6	33	0.26
6517	Indiana Jones and the Staff of Kings	4	2009	9	5	0.26
6518	Etrian Odyssey Untold: The Millennium Girl	10	2013	4	72	0.26
6519	Bust A Groove 2	13	1999	6	25	0.26
6520	Hatsune Miku: Project Diva	17	2009	6	9	0.26
6521	Juiced 2: Hot Import Nights	6	2007	3	29	0.26
6522	Gundam Battle Universe	17	2008	10	26	0.26
6523	Sengoku Basara: Battle Heroes	17	2009	9	13	0.26
6524	Nightmare Creatures	12	1996	9	5	0.26
6525	Star Wars Episode I: Battle for Naboo	12	2000	8	18	0.26
6526	Duke Nukem: Zero Hour	12	1999	7	14	0.26
6527	Armorines: Project S.W.A.R.M.	12	1999	7	31	0.26
6528	NCAA March Madness 08	7	2007	1	8	0.26
6529	Armored Core: Nexus	7	2004	8	237	0.26
6530	Evolution Skateboarding	7	2002	1	15	0.26
6531	Dora the Explorer: The Search for Pirate Pig's Treasure	9	2002	11	215	0.26
6532	Muramasa: The Demon Blade	23	2013	4	105	0.26
6533	Yakuza: Ishin	6	2014	9	9	0.26
6534	Indiana Jones and the Staff of Kings	17	2009	9	5	0.26
6535	Tony Hawk: Shred	5	2010	1	5	0.26
6536	Outlaw Volleyball	14	2003	1	73	0.26
6537	Batman: Vengeance	19	2001	11	6	0.26
6538	The Amazing Spider-Man 2 (2014)	5	2014	9	5	0.26
6539	RealSports Football	16	1981	1	11	0.26
6540	Tiger Woods PGA Tour 10	7	2009	1	8	0.26
6541	SD Gundam G Generation: Cross Drive	4	2007	12	26	0.26
6542	Tom Clancy's Splinter Cell: Double Agent	6	2007	9	6	0.26
6543	Monsters vs. Aliens	1	2009	9	5	0.26
6544	Dungeons & Dragons Heroes	14	2003	4	11	0.26
6545	The Testament of Sherlock Holmes	6	2012	11	81	0.26
6546	Game of Thrones	5	2012	4	81	0.26
6547	Loving Life with Hello Kitty & Friends	4	2011	6	71	0.26
6548	McGrath Vs. Pastrana Freestyle Motocross	13	2000	3	31	0.26
6549	Legaia 2: Duel Saga	7	2001	4	22	0.26
6550	Crash Nitro Kart	19	2003	3	24	0.26
6551	Karaoke Joysound Wii	1	2008	6	69	0.26
6552	MLB 09: The Show	17	2009	1	4	0.26
6553	Polarium	4	2004	5	1	0.26
6554	Samurai Warriors 4	6	2014	9	49	0.26
6555	F1 2014	5	2014	3	36	0.26
6556	Classic NES Series: Bomberman	9	2004	9	1	0.26
6557	Avatar: The Last Airbender - The Burning Earth	1	2007	9	29	0.26
6558	Peter Jackson's King Kong: The Official Game of the Movie	5	2005	9	6	0.26
6559	Bratz Ponyz 2	4	2008	11	103	0.26
6560	A.C.E.: Another Century's Episode	7	2005	8	58	0.26
6561	Frogger's Journey: The Forgotten Relic	9	2003	9	15	0.26
6562	X-Men vs. Street Fighter	24	1997	10	13	0.26
6563	Army of Two: The Devil's Cartel	5	2013	7	8	0.26
6564	Dora the Explorer: Game Boy Advance Video Volume 1	9	2004	6	34	0.26
6565	Oddworld: Stranger's Wrath	14	2005	11	8	0.26
6566	Sega Rally Revo	17	2007	3	9	0.26
6567	King of Fighters: Maximum Impact	7	2004	10	151	0.26
6568	Marvel Super Heroes vs. Street Fighter	13	1998	10	19	0.26
6569	Legendary	5	2008	7	11	0.26
6570	J-League Pro Soccer Club wo Tsukurou!	24	1996	1	9	0.26
6571	Daisy Fuentes Pilates	1	2009	1	12	0.26
6572	Star Trek: The Game	6	2013	9	26	0.26
6573	Drakan: The Ancients' Gates	7	2002	11	4	0.26
6574	Dead or Alive Xtreme 2	5	2006	1	49	0.26
6575	Petz: Crazy Monkeyz	1	2008	8	6	0.26
6576	SpongeBob SquarePants: Lights, Camera, Pants!	14	2005	6	29	0.26
6577	Choro Q3	13	1998	3	152	0.26
6578	Tokyo Jungle	6	2012	9	4	0.26
6579	Hunted: The Demon's Forge	6	2011	9	7	0.26
6580	Lemony Snicket's A Series of Unfortunate Events	19	2004	2	5	0.26
6581	Pirates of the Caribbean: Dead Man's Chest	4	2006	11	33	0.26
6582	Bionicle: Matoran Adventures	9	2002	2	8	0.26
6583	Armored Core: Master of Arena	13	1999	8	228	0.26
6584	Fire Emblem: Thracia 776	8	1999	12	1	0.26
6585	Desert Falcon	16	1987	7	11	0.26
6586	NASCAR 09	6	2008	3	8	0.26
6587	Tengai Makyou: Daishi no Mokushiroku - The Apocalypse IV	24	1997	4	69	0.26
6588	A.C.E.: Another Century's Episode 3: The Final	7	2007	8	58	0.26
6589	ATV: Quad Power Racing	9	2002	3	238	0.26
6590	Mario & Sonic at the Rio 2016 Olympic Games	20	2016	9	1	0.26
6591	The Backyardigans	4	2009	11	3	0.26
6592	Backyard NFL Football	19	2002	1	53	0.26
6593	All-Star Baseball 2003	14	2002	1	31	0.26
6594	Silent Hunter 5: Battle of the Atlantic	15	2010	8	6	0.26
6595	MTX Mototrax	7	2004	3	5	0.26
6596	Tomb Raider: Underworld (Others sales)	7	2009	11	22	0.26
6597	NHL Rock the Rink	13	1999	1	8	0.26
6598	LEGO Star Wars III: The Clone Wars	15	2011	9	18	0.26
6599	NBA ShootOut 2004	7	2003	1	4	0.26
6600	TOCA Race Driver 2: Ultimate Racing Simulator	17	2005	3	36	0.26
6601	Super Robot Taisen R	9	2002	12	58	0.26
6602	Castlevania: Harmony of Dissonance	9	2002	2	15	0.26
6603	Metroid Prime Pinball	4	2005	6	1	0.26
6604	Formula One 2001	7	2001	3	4	0.26
6605	Nickelodeon Dance	1	2011	6	3	0.26
6606	Doukyuusei if	24	1996	4	239	0.26
6607	Baldur's Gate: Dark Alliance II	14	2004	4	31	0.26
6608	MVP Baseball 2004	19	2004	1	8	0.26
6609	Super Street Fighter II: Turbo Revival	9	2001	10	6	0.25
6610	Secret Weapons Over Normandy	14	2003	8	18	0.25
6611	Combination Pro Soccer: J-League no Kantoku ni Natte Sekai wo Mezase!!	13	1998	1	240	0.25
6612	NHL 08	6	2007	9	8	0.25
6613	Kidou Senshi Gundam: Giren no Yabou	24	1998	12	26	0.25
6614	Imagine: Ballet Star	4	2008	8	6	0.25
6615	Teen Titans	7	2006	9	29	0.25
6616	Percy Jackson and the Olympians: The Lightning Thief	4	2010	4	5	0.25
6617	Spelling Challenges and more!	17	2007	6	68	0.25
6618	Crusaders of Might and Magic	13	1999	4	78	0.25
6619	Journey	6	2012	11	16	0.25
6620	Tearaway Unfolded	11	2015	2	4	0.25
6621	Star Wars The Clone Wars: Republic Heroes	7	2009	9	18	0.25
6622	Bomberman Generation	19	2002	11	24	0.25
6623	NASCAR 09	5	2008	3	8	0.25
6624	Surfing H3O	7	2000	1	3	0.25
6625	Romance of the Three Kingdoms II	8	1991	12	49	0.25
6626	The Chronicles of Riddick: Assault on Dark Athena	6	2009	7	24	0.25
6627	Resident Evil Archives: Resident Evil Zero	1	2008	9	13	0.25
6628	Zoo Resort 3D	10	2011	8	6	0.25
6629	Ice Age 2: The Meltdown	9	2006	2	24	0.25
6630	The Suite Life of Zack & Cody: Tipton Trouble	4	2006	9	33	0.25
6631	World Series of Poker	14	2005	6	5	0.25
6632	Hatsune Miku: Project Diva F 2nd	6	2014	6	9	0.25
6633	Galactic Attack	24	1994	7	31	0.25
6634	Power Pro Kun Pocket 2	3	2000	1	15	0.25
6635	Game of Thrones	6	2012	4	81	0.25
6636	Happy Feet	19	2006	9	40	0.25
6637	Walt Disney's The Jungle Book: Rhythm N'Groove	7	2003	6	33	0.25
6638	Triple Play 2002	14	2002	1	8	0.25
6639	Scrabble	4	2009	6	6	0.25
6640	Evil Zone	13	1998	10	104	0.25
6641	Spy Kids Challenger	9	2002	2	33	0.25
6642	K-ON! Houkago Live!!	17	2010	6	9	0.25
6643	A. IV Evolution: A Ressha de Ikou 4	13	1994	12	241	0.25
6644	Exhibition	14	2001	6	2	0.25
6645	Scrabble	13	1999	6	6	0.25
6646	Tony Hawk's Proving Ground	1	2007	1	5	0.25
6647	Amped 2	14	2003	1	2	0.25
6648	Blaster Master: Blasting Again	13	2000	7	242	0.25
6649	College Hoops 2K6	7		1	54	0.25
6650	Cartoon Network Collection: Game Boy Advance Video Volume 1	9	2004	6	34	0.25
6651	Cars	5	2006	3	29	0.25
6652	Family Guy: Back to the Multiverse	5	2012	9	5	0.25
6653	Kung Fu Panda 2	5	2011	9	29	0.25
6654	Up	6	2009	9	29	0.25
6655	Birds of Steel	6	2012	8	15	0.25
6656	Madagascar: Escape 2 Africa	5	2008	9	5	0.25
6657	WipEout XL	13	1996	3	88	0.25
6658	Animal Paradise	4	2007	8	90	0.25
6659	The Powerpuff Girls: Chemical X-Traction	13	2001	9	176	0.25
6660	NHL 08	5	2007	9	8	0.25
6661	Dynasty Warriors 6 (JP sales)	7	2008	9	49	0.25
6662	Just Dance Kids 2	6	2011	6	6	0.25
6663	FIFA 14	10	2013	1	8	0.25
6664	Men of Valor	14	2004	7	24	0.25
6665	Bomberman Tournament	9	2001	5	5	0.25
6666	Medal of Honor European Assault	19	2005	7	8	0.25
6667	Spider-Man: Web of Shadows	1	2008	9	5	0.25
6668	Billy Hatcher and the Giant Egg	19	2003	2	9	0.25
6669	Midway's Greatest Arcade Hits	9	2001	6	40	0.25
6670	SpongeBob's Truth or Square (US sales)	5	2009	9	29	0.25
6671	Final Fantasy II	26	2001	4	10	0.25
6672	WipEout Fusion	7	2002	3	4	0.25
6673	Spider-Man: Edge of Time	5	2011	9	5	0.25
6674	UEFA Euro 2008 Austria-Switzerland	17	2008	1	8	0.25
6675	Marie no Atelier: Salburg no Renkinjutsushi	13	1997	4	243	0.25
6676	The Outfit	5	2006	9	29	0.25
6677	Golden Nugget Casino	9	2004	6	35	0.25
6678	NHL 06	14	2005	1	8	0.25
6679	Atari Anthology	14	2004	6	11	0.25
6680	Ultimate Fighting Championship	13	2000	10	6	0.25
6681	XIII	14	2003	7	6	0.25
6682	MotoGP '07	5	2007	3	29	0.25
6683	Samurai Shodown II	27	1994	10	244	0.25
6684	Mortal Kombat: Armageddon	1	2007	10	40	0.25
6685	Don King Presents: Prizefighter	5	2008	1	3	0.25
6686	Hybrid Heaven	12	1999	4	15	0.25
6687	NBA Showtime: NBA on NBC	12	1999	1	40	0.25
6688	Fox Sports College Hoops '99	12	1998	1	30	0.25
6689	Wheel of Fortune	12	1997	6	3	0.25
6690	MRC: Multi-Racing Championship	12	1997	3	86	0.25
6691	F1 Pole Position 64	12	1997	3	6	0.25
6692	Gex 64: Enter the Gecko	12	1998	9	14	0.25
6693	Wayne Gretzky's 3D Hockey '98	12	1997	1	40	0.25
6694	NBA Courtside 2 featuring Kobe Bryant	12	1999	1	1	0.25
6695	J Stars Victory Vs.	11	2015	10	26	0.25
6696	U-Sing: Girls Night	1	2010	6	52	0.25
6697	The Mummy: Tomb of the Dragon Emperor	7	2008	9	24	0.25
6698	Def Jam Vendetta	19	2003	10	8	0.25
6699	Scooby-Doo! Unmasked	7	2005	2	29	0.25
6700	Penny Racers	13	1996	3	4	0.25
6701	The Sims 2	14	2005	8	8	0.25
6702	Caesars Palace II	13	1998	6	118	0.25
6703	Final Fantasy Type-0	18	2015	4	17	0.25
6704	World Series Baseball 2K3	7	2003	1	9	0.25
6705	Freshly-Picked: Tingle's Rosy Rupeeland	4	2006	4	1	0.25
6706	Pro Yakyuu Team o Tsukurou!	24	1998	1	9	0.25
6707	L.A. Noire: The Complete Edition	15	2011	11	3	0.25
6708	Sentimental Graffiti	24	1998	11	245	0.25
6709	Hitman: Absolution	15	2012	9	17	0.25
6710	Bolt	5	2008	11	33	0.25
6711	Marvel: Ultimate Alliance 2	17	2009	4	5	0.25
6712	The Legend of Legacy	10	2015	4	246	0.25
6713	Disgaea 2: Dark Hero Days	17	2009	4	132	0.25
6714	Devil Kings	7	2005	9	13	0.25
6715	Ultimate Band	1	2008	6	33	0.25
6716	NBA Jam Tournament Edition	13	1995	1	31	0.25
6717	Far Cry Instincts Predator	5	2006	7	6	0.25
6718	Medabots AX: Metabee	9	2002	4	80	0.25
6719	Tennis no Oji-Sama: Genius Boys Academy	9	2002	1	15	0.25
6720	X-Men: Destiny	6	2011	9	5	0.25
6721	Shadow Man	13	1998	9	31	0.25
6722	X-Men Origins: Wolverine	1	2009	9	5	0.25
6723	Netsu Chu! Pro Yakyuu 2002	7	2002	1	26	0.25
6724	Ninja Gaiden 3	5	2012	9	49	0.25
6725	Ben 10 Ultimate Alien: Cosmic Destruction	6	2010	2	59	0.25
6726	Yakuza Zero: The Place of Oath	6	2015	9	9	0.25
6727	Prince of Persia: The Forgotten Sands	1	2010	9	6	0.25
6728	Dynasty Warriors 6	7	2008	9	49	0.25
6729	Imagine: Zookeeper	4	2009	8	6	0.25
6730	Porky's	16	1982	9	122	0.25
6731	America's Army: Rise of a Soldier	14	2005	7	6	0.25
6732	Grandia	13	1999	4	6	0.25
6733	TV Superstars	6	2010	6	4	0.25
6734	Armored Core 4	5	2007	8	12	0.25
6735	F1 2000	13	2000	3	8	0.25
6736	Littlest Pet Shop: Country Friends	4	2009	8	8	0.25
6737	Dood's Big Adventure	1	2010	2	29	0.25
6738	Pirates of the Caribbean: The Legend of Jack Sparrow	7	2006	11	6	0.25
6739	We Love Golf!	1	2007	1	13	0.25
6740	WRC: World Rally Championship	7	2001	3	4	0.25
6741	Ed, Edd n Eddy: The Mis-Edventures	19	2005	2	40	0.25
6742	Cars: Mater-National Championship	7	2007	3	29	0.25
6743	Dreamworks Madagascar Kartz	5	2009	3	5	0.25
6744	Harry Potter and the Order of the Phoenix	6	2007	9	8	0.25
6745	Anno 2205	15	2015	12	6	0.25
6746	Dune 2000	13	1999	12	8	0.25
6747	Cradle of Rome	4	2008	5	71	0.25
6748	Monster Hunter G	1	2009	4	13	0.25
6749	Fuel	6	2009	3	36	0.25
6750	Hasbro Family Game Night 3	6	2010	6	8	0.25
6751	Pro Evolution Soccer 2014	5	2013	9	15	0.25
6752	Project Overkill	13	1996	7	15	0.25
6753	Jumping Flash! 2	13	1996	2	4	0.25
6754	Nickelodeon Party Blast	19	2002	6	11	0.25
6755	SBK Superbike World Championship	6	2008	3	194	0.25
6756	Final Fantasy XI: Chains of Promathia	7	2004	4	17	0.25
6757	Choro Q2	13	1997	3	152	0.25
6758	Disney's A Christmas Carol	4	2009	11	33	0.25
6759	Butt Ugly Martians: B.K.M. Battles	9	2002	9	24	0.25
6760	Major League Baseball 2K7	6	2007	1	130	0.25
6761	X-Men Legends II: Rise of Apocalypse	19	2005	4	5	0.25
6762	Sorry! / Aggravation / Scrabble Junior	9	2005	6	87	0.25
6763	Driver '76	17	2007	3	6	0.25
6764	Turning Point: Fall of Liberty	6	2008	7	36	0.25
6765	NBA Courtside 2002	19	2002	1	1	0.25
6766	How to Train Your Dragon 2	10	2014	11	231	0.25
6767	The Adventures of Tintin: The Game	5	2011	9	6	0.25
6768	Classic NES Series: Excitebike	9	2004	3	1	0.25
6769	Classic NES Series: Xevious	9	2004	7	1	0.25
6770	Avatar: The Last Airbender - Into the Inferno	7	2008	11	29	0.25
6771	Disney's Planes	4	2013	8	33	0.25
6772	Dora the Explorer: Journey to the Purple Planet	7	2005	11	64	0.24
6773	Tales of Hearts	4	2008	4	26	0.24
6774	Digimon World: Data Squad	7	2006	4	26	0.24
6775	Dynasty Warriors 7	5	2011	9	49	0.24
6776	Catz	9	2005	8	6	0.24
6777	Jikkyou Powerful Pro Yakyuu 2001	13	2001	1	15	0.24
6778	Transformers: War for Cybertron (DS Version)	4	2010	7	5	0.24
6779	Mega Man X Collection	7		6	54	0.24
6780	Trials Fusion	18	2014	3	6	0.24
6781	LEGO Ninjago: Shadow of Ronin	23	2015	9	20	0.24
6782	Avalon Code	4	2008	4	71	0.24
6783	That's So Raven: Psychic on the Scene	4	2006	11	33	0.24
6784	Monster Jam: Path of Destruction	6	2010	3	5	0.24
6785	Tongari Boushi to Oshare na Mahou Tsukai	4	2011	9	15	0.24
6786	Panzer General	13	1995	12	52	0.24
6787	Broken Sword: Shadow of the Templars - The Director's Cut	1	2009	11	6	0.24
6788	Gallop Racer (JP)	13	1996	1	49	0.24
6789	Spawn the Eternal	13	1997	9	4	0.24
6790	MLB	17	2005	1	4	0.24
6791	Army Men: Sarge's Heroes 2	13	2000	7	78	0.24
6792	Command & Conquer 3: Kane's Wrath	5	2008	12	8	0.24
6793	Dreamcast Collection	5	2011	6	9	0.24
6794	Madden NFL 13	20	2012	1	8	0.24
6795	Corpse Party: Blood Drive	23	2014	11	220	0.24
6796	Homefront	15	2011	7	29	0.24
6797	Disney Stitch Jam	4	2009	6	33	0.24
6798	Bakugan: Battle Brawlers	5	2009	9	5	0.24
6799	Britney's Dance Beat	7	2002	6	29	0.24
6800	Guitar Freaks	13	1999	8	15	0.24
6801	World Soccer Winning Eleven 7	7	2003	1	15	0.24
6802	Ace Combat: Assault Horizon Legacy	10	2011	8	26	0.24
6803	Cabela's Outdoor Adventures (2009)	5	2009	1	57	0.24
6804	SRS: Street Racing Syndicate	14	2004	3	26	0.24
6805	Namco Tennis Smash Court	13	1995	1	4	0.24
6806	Vexx	7	2003	2	31	0.24
6807	The Incredible Hulk	4	2008	9	9	0.24
6808	BioShock 2	15		7	3	0.24
6809	Marvel vs. Capcom Origins	7	2006	10	13	0.24
6810	Pro Yaky? Spirits 2011	17	2011	1	15	0.24
6811	Imagine: Teacher Class Trip	4	2009	11	6	0.24
6812	TimeSplitters: Future Perfect	7	2005	7	8	0.24
6813	Final Fantasy Fables: Chocobo Tales	4	2006	11	6	0.24
6814	Harvest Moon: Magical Melody	19	2005	8	6	0.24
6815	Genma Onimusha	14	2002	9	13	0.24
6816	DK: King of Swing	9	2005	2	1	0.24
6817	K-1 Revenge	13	1997	10	247	0.24
6818	G-Police	13	1997	9	88	0.24
6819	Pure Futbol	6	2010	1	6	0.24
6820	Spider-Man: Shattered Dimensions	1	2010	9	5	0.24
6821	Corvette	14	2003	3	73	0.24
6822	Atelier Meruru: Alchemist of Arland 3	6	2011	4	132	0.24
6823	AC/DC LIVE: Rock Band Track Pack	6	2008	6	32	0.24
6824	Deca Sports 3	1	2010	1	69	0.24
6825	Harry Potter and the Goblet of Fire	4	2005	9	8	0.24
6826	Midway Arcade Treasures: Extended Play	17	2005	6	40	0.24
6827	F1 2015	18	2015	3	36	0.24
6828	Skylanders SWAP Force	10	2013	2	5	0.24
6829	Bass Pro Shops: The Hunt	1	2010	1	165	0.24
6830	What Did I Do to Deserve This, My Lord!? 2	17	2008	4	132	0.24
6831	Boogie SuperStar	1	2008	6	8	0.24
6832	Burnout 2: Point of Impact	14	2003	3	31	0.24
6833	Rock Band Track Pack Volume 1	1	2008	6	32	0.24
6834	Singularity	6		7	54	0.24
6835	Super Monkey Ball Deluxe	7	2005	6	9	0.24
6836	Street Fighter X Tekken	23	2012	10	13	0.24
6837	Kill.Switch	14	2003	7	26	0.24
6838	Ben 10 Ultimate Alien: Cosmic Destruction	17	2010	2	59	0.24
6839	Metro 2033	15	2010	7	29	0.24
6840	Peter Jackson's King Kong: The Official Game of the Movie	19	2005	9	6	0.24
6841	Stella Glow	10	2015	4	72	0.24
6842	Dancing With The Stars	1	2007	6	5	0.24
6843	Summon Night 3	7	2003	4	58	0.24
6844	Pro Yaky? Spirits 2010	17	2010	1	15	0.24
6845	The Simpsons: Road Rage	19	2001	3	8	0.24
6846	Megamind: Mega Team Unite	1	2010	11	29	0.24
6847	PDC World Championship Darts 2008	1	2008	1	60	0.24
6848	Jissen Pachi-Slot Hisshouhou! Hokuto no Ken SE	7	2006	6	9	0.24
6849	Azurik: Rise of Perathia	14	2001	9	2	0.24
6850	Luminous Arc	4	2007	4	71	0.24
6851	All Grown Up!: Game Boy Advance Video Volume 1	9	2004	6	34	0.24
6852	The Lord of the Rings: Aragorn's Quest	1	2010	9	20	0.24
6853	Dragon Ball Z: Sagas	14	2005	10	11	0.24
6854	Paws & Claws: Pet Resort	4	2008	8	29	0.24
6855	Grand Slam Tennis 2	6	2012	1	8	0.24
6856	Sakura Wars: Atsuki Chishio Ni	7	2003	4	9	0.24
6857	Ms. Pac-Man: Maze Madness / Pac-Man World	9	2005	5	26	0.24
6858	NHRA Championship Drag Racing	7	2005	3	248	0.24
6859	The Price is Right 2010 Edition	1	2009	6	6	0.24
6860	Monster Jam	7	2007	3	5	0.24
6861	Valhalla Knights	17	2006	4	71	0.24
6862	Harvest Moon: Another Wonderful Life	19	2004	4	220	0.24
6863	NBA Live 10	17	2009	1	8	0.24
6864	The Godfather (US & Others sales)	5	2006	9	8	0.24
6865	Jikkyou Powerful Pro Yakyuu 15	7	2008	1	15	0.24
6866	MX vs. ATV Reflex	17	2009	3	29	0.24
6867	Bakugan: Battle Brawlers	6	2009	9	5	0.24
6868	Front Line	16	1981	9	94	0.24
6869	Paperboy	12	1999	9	40	0.24
6870	South Park: Chef's Luv Shack	12	1999	6	31	0.24
6871	Midway's Greatest Arcade Hits Volume 1	12	2000	6	40	0.24
6872	Road Rash 64	12	1999	3	29	0.24
6873	Ready 2 Rumble Boxing: Round 2	12	2000	10	40	0.24
6874	Army Men: Air Combat	12	2000	9	78	0.24
6875	Rock Band Track Pack Volume 2	1	2008	6	32	0.24
6876	NCAA College Basketball 2K3	7	2002	1	9	0.24
6877	Mobile Suit Gundam Battlefield Record U.C.0081	6	2009	9	26	0.24
6878	Harry Potter and the Deathly Hallows - Part 2	4	2011	9	8	0.24
6879	NCAA March Madness 2004	14	2003	1	8	0.24
6880	Lucky Luke	13	1998	2	86	0.24
6881	Fantastic 4	19	2005	9	5	0.24
6882	Ashes Cricket 2009	1	2009	1	36	0.24
6883	Ghost Rider	17	2007	9	3	0.24
6884	Tony Hawk's American Sk8land	9	2005	1	5	0.24
6885	Juiced 2: Hot Import Nights	4	2007	3	29	0.24
6886	Are You Smarter than a 5th Grader? Game Time	4	2009	5	29	0.24
6887	Amazing Adventures: The Forgotten Ruins	4	2008	11	208	0.24
6888	Densetsu no Stafi 3	9	2004	2	1	0.24
6889	Forsaken	13	1998	7	31	0.24
6890	Ratchet & Clank: Going Commando (JP weekly sales)	7	2003	9	4	0.24
6891	Pictionary: Ultimate Edition	6	2011	6	29	0.24
6892	LEGO The Hobbit	10	2014	9	20	0.24
6893	Samurai Warriors 4	11	2014	9	49	0.24
6894	The Hobbit	14	2003	2	24	0.24
6895	Dance Dance Revolution: Disney Channel Edition	7	2008	8	15	0.24
6896	DiRT Showdown	5	2012	3	36	0.24
6897	Divinity II: Ego Draconis	5	2009	4	233	0.24
6898	Checkers	16	1980	6	11	0.24
6899	Front Mission: Gun Hazard	8	1996	4	10	0.24
6900	X-Men: Destiny	5	2011	9	5	0.24
6901	Hello Kitty Seasons	1	2010	11	26	0.24
6902	Chibi-Robo! Zip Lash	10	2015	2	1	0.24
6903	4x4 EVO 2	14	2001	3	214	0.24
6904	XS Airboat Racing	13	2002	3	165	0.24
6905	Lunar: Silver Star Harmony	17	2009	4	67	0.24
6906	Sherlock Holmes and the Mystery of Osborne House	4	2010	11	81	0.24
6907	Grand Theft Auto	9	2004	9	3	0.24
6908	Dora the Explorer: Super Star Adventures	9	2004	11	103	0.24
6909	Viva Pinata: Party Animals	5	2007	6	2	0.24
6910	Scrabble (Others sales)	4	2009	5	6	0.24
6911	Asura's Wrath	5	2012	9	13	0.24
6912	Lego Star Wars: The Force Awakens	18	2016	9	20	0.24
6913	Dynasty Warriors 6 Empires	5	2009	9	49	0.24
6914	My Street	7	2003	6	4	0.24
6915	Wild 9	13	1998	9	118	0.24
6916	Shadow Hearts: Covenant	7	2004	4	40	0.24
6917	Tiger Woods PGA Tour 10	17	2009	1	8	0.24
6918	Shrek's Carnival Craze Party Games	4	2008	6	5	0.24
6919	Angry Birds	15	2011	5	81	0.24
6920	Risen 2: Dark Waters	6	2012	4	42	0.24
6921	Danganronpa: Trigger Happy Havoc	17		6	54	0.24
6922	Guitar Hero Live	5	2015	6	5	0.24
6923	Game & Wario	20	2013	6	1	0.24
6924	PGA Tour 96	13	1995	1	8	0.24
6925	Onechanbara Z2: Chaos	11	2014	9	132	0.24
6926	Fallout 3 Game Add-On Pack: Broken Steel and Point Lookout	5	2009	4	7	0.24
6927	Covert Ops: Nuclear Dawn	13	2000	9	4	0.24
6928	DanceDanceRevolution II	1		6	15	0.24
6929	Pictionary: Ultimate Edition	5	2011	6	29	0.24
6930	LEGO Harry Potter: Years 5-7	23	2012	9	20	0.24
6931	TrackMania: Build to Race	1	2010	3	81	0.24
6932	Nintendo Presents: Crossword Collection	4	2009	5	1	0.24
6933	Galaga: Destination Earth	13	2000	7	28	0.24
6934	G.I. Joe: The Rise of Cobra	5	2009	9	8	0.24
6935	Ar tonelico Qoga: Knell of Ar Ciel	6	2010	4	49	0.24
6936	FIFA World Cup Germany 2006	14	2006	1	8	0.24
6937	Polly Pocket: Super Splash Island	9	2003	9	177	0.24
6938	God Eater 2	17	2013	4	26	0.24
6939	Tony Hawk's Downhill Jam	1		1	5	0.24
6940	Sesame Street: Elmo's Number Journey	13	1998	6	215	0.24
6941	Rampage	16	1988	9	5	0.24
6942	Dark Cavern	16	1981	7	140	0.24
6943	Jewels of the Tropical Lost Island	4	2010	5	216	0.24
6944	Afro Samurai	5	2009	9	11	0.24
6945	The Bureau: XCOM Declassified	5	2013	7	3	0.24
6946	Sands of Destruction	4	2008	4	9	0.24
6947	NASCAR 2011: The Game	1	2011	3	5	0.24
6948	Silent Hill: Book of Memories	23	2012	9	15	0.24
6949	Lunar Knights	4	2006	4	15	0.24
6950	The Walking Dead: Season Two	11	2014	11	174	0.24
6951	Epic Mickey 2: The Power of Two	20	2012	9	33	0.24
6952	DC Universe Online	15	2011	4	77	0.24
6953	NASCAR 08	7	2007	3	8	0.24
6954	Madagascar: Escape 2 Africa	6	2008	9	5	0.23
6955	New Carnival Games	4	2010	6	3	0.23
6956	Need For Speed: Undercover	4	2008	3	8	0.23
6957	LEGO Marvel's Avengers	20	2016	9	20	0.23
6958	Naruto: Path of the Ninja 2	4	2006	4	197	0.23
6959	Wallace & Gromit in Project Zoo	7	2003	2	176	0.23
6960	Karaoke Revolution Volume 2	7	2004	6	15	0.23
6961	Wizards of Waverly Place: Spellbound	4	2010	6	33	0.23
6962	Love Plus +	4	2010	8	15	0.23
6963	Etrian Mystery Dungeon	10	2015	4	132	0.23
6964	Mobile Suit Gundam: Climax U.C.	7	2006	9	26	0.23
6965	Street Fighter EX2 Plus	13	1998	10	19	0.23
6966	The Smurfs 2	4	2013	2	6	0.23
6967	Big Family Games	1	2009	6	29	0.23
6968	Big Beach Sports 2	1		1	29	0.23
6969	Hot Wheels: Beat That!	4	2007	3	5	0.23
6970	Jet X20	7		3	54	0.23
6971	Super Robot Taisen D	9	2003	12	58	0.23
6972	NASCAR Thunder 2004	14	2003	3	8	0.23
6973	Buffy the Vampire Slayer	14	2002	9	8	0.23
6974	LEGO Marvel's Avengers	23	2016	9	20	0.23
6975	Star Wars: The Force Unleashed II	4	2010	9	18	0.23
6976	Harry Potter and the Goblet of Fire	14	2005	9	8	0.23
6977	Zumba Fitness: World Party	18	2013	6	35	0.23
6978	Saint Seiya: Sanctuary Battle	6	2011	9	26	0.23
6979	Girls Mode 3: Kirakira Code	10	2015	9	1	0.23
6980	Meteos	4	2005	5	1	0.23
6981	Virtua Tennis 4	5	2011	1	9	0.23
6982	Kung Fu Panda 2	4	2011	9	29	0.23
6983	Cross Edge	6	2008	4	132	0.23
6984	Hotel for Dogs	4	2008	8	12	0.23
6985	Cabela's Big Game Hunter 2012	6	2011	1	5	0.23
6986	Pro Yakyuu Team o Tsukurou!	22	1999	1	9	0.23
6987	Me & My Katamari	17	2005	5	26	0.23
6988	Asphalt: Injection	23	2011	9	6	0.23
6989	Total War: Attila	15	2015	12	9	0.23
6990	SSX On Tour	17	2005	1	8	0.23
6991	Vancouver 2010 - The Official Video Game of the Olympic Winter Games	5	2010	1	9	0.23
6992	World Series Baseball	14	2002	1	9	0.23
6993	SingStar Pop Edition	6	2009	6	4	0.23
6994	Test Drive: Eve of Destruction	7	2004	3	11	0.23
6995	Starsky & Hutch	14	2003	3	90	0.23
6996	Dynasty Warriors: Gundam Reborn	6	2013	9	49	0.23
6997	Hatsune Miku: Project Diva f	23	2012	6	9	0.23
6998	The Club	6	2008	7	9	0.23
6999	Carnival Island	6	2011	6	4	0.23
7000	Jeremy McGrath Supercross World	7	2001	3	31	0.23
7001	M&M's Kart Racing	1	2007	3	87	0.23
7002	Rock Band Track Pack: Classic Rock	1	2009	6	32	0.23
7003	The Scorpion King: Rise of the Akkadian	7	2002	9	21	0.23
7004	Let's Make a Soccer Team!	7	2006	1	9	0.23
7005	Looney Tunes: Acme Arsenal	1	2007	9	20	0.23
7006	Monster Hunter G	7	2005	4	13	0.23
7007	All-Star Baseball 2001	12	2000	1	31	0.23
7008	Pinball Hall of Fame: The Gottlieb Collection	17	2005	6	98	0.23
7009	Sword Art Online: Lost Song	11	2015	4	26	0.23
7010	Star Wars Jedi Knight II: Jedi Outcast	19	2002	7	5	0.23
7011	Tom Clancy's Splinter Cell	19	2003	9	6	0.23
7012	Pitfall: The Big Adventure	1	2008	11	5	0.23
7013	Rock Band Country Track Pack	5	2009	6	32	0.23
7014	Worms: Battle Islands	1	2010	12	29	0.23
7015	ESPN NHL Hockey	7	2003	1	9	0.23
7016	Harvest Moon GB	3	1997	8	249	0.23
7017	Imagine: Detective	4	2009	8	6	0.23
7018	The Incredible Hulk: Ultimate Destruction	14	2005	9	24	0.23
7019	Hannah Montana: The Movie	6	2009	11	33	0.23
7020	NCAA GameBreaker 2003	7	2002	1	4	0.23
7021	Skylanders: SuperChargers	18	2015	9	5	0.23
7022	Gundam Battle Assault	13	1998	10	26	0.23
7023	Virtua Fighter Kids	24	1995	10	9	0.23
7024	Lunar: Silver Star Story	24	1996	4	153	0.23
7025	Rocket Power: Beach Bandits	19	2002	2	29	0.23
7026	Shaun White Snowboarding	4	2008	1	6	0.23
7027	LEGO The Hobbit	20	2014	9	20	0.23
7028	Ultimate Band	4	2008	6	33	0.23
7029	NBA 2K6	5	2005	9	3	0.23
7030	Age of Empires: The Age of Kings	4	2006	12	29	0.23
7031	What's Cooking? Jamie Oliver	4	2008	8	11	0.23
7032	Tom Clancy's Rainbow Six: Rogue Spear	13	2001	7	6	0.23
7033	NHL FaceOff 2001	13	2000	1	4	0.23
7034	Ultimate Duck Hunting: Hunting & Retrieving Ducks	1	2007	1	250	0.23
7035	Yu-Gi-Oh! GX: Duel Academy	9	2005	6	15	0.23
7036	FIFA 14	17	2013	1	8	0.23
7037	Tribes: Aerial Assault	7		7	54	0.23
7038	Colony Wars: Vengeance	13	1998	8	88	0.23
7039	Last Window: The Secret of Cape West	4	2010	11	1	0.23
7040	Yu-Gi-Oh! GX: Tag Force 3	17	2008	12	15	0.23
7041	Dynasty Warriors: Strikeforce	5	2009	9	49	0.23
7042	Naruto Shippuden: Ultimate Ninja Storm Revolution	5	2014	10	26	0.23
7043	I Love Horses	4	2008	8	96	0.23
7044	Madden NFL 06	9	2005	1	8	0.23
7045	Karaoke Revolution Glee 2: Road to Regionals	1	2011	6	15	0.23
7046	NASCAR 08	6	2007	3	8	0.23
7047	The King of Fighters '95 (CD)	27	1994	10	244	0.23
7048	Perfect Weapon	13	1996	9	251	0.23
7049	Luminous Arc 2	4	2008	4	71	0.23
7050	Project CARS	18	2015	3	99	0.23
7051	Major League Baseball 2K10	7	2010	1	3	0.23
7052	Call of Duty: Black Ops 3	15	2015	7	5	0.23
7053	Mafia	14	2004	9	3	0.23
7054	Spider-Man: Edge of Time	6	2011	9	5	0.23
7055	Deadly Creatures	1	2009	9	29	0.23
7056	Airblade	7	2001	1	4	0.23
7057	Cabela's Outdoor Adventures (2009)	6	2009	1	57	0.23
7058	Mega Man & Bass	9	2002	2	13	0.23
7059	NBA Live 15	11	2014	1	8	0.23
7060	Neopets Puzzle Adventure	1	2008	5	13	0.23
7061	Risen 2: Dark Waters	15	2012	4	42	0.23
7062	Dragon Quest Heroes II: Twin Kings and the Prophecy's End	23	2016	9	17	0.23
7063	Puss in Boots	5	2011	9	29	0.23
7064	Family Fest presents: Movie Games	1	2008	9	6	0.23
7065	AKB1/149: Love Election	17	2012	11	26	0.23
7066	Tony Hawk's Proving Ground	4	2007	1	5	0.23
7067	Tetris 2 (weekly jp sales)	3	1992	5	1	0.23
7068	Pro Yakyuu Team o Tsukurou! 2	7	2003	1	9	0.23
7069	Musou Orochi Z	6	2009	9	49	0.23
7070	World Series of Poker 2008: Battle for the Bracelets	7	2007	6	5	0.23
7071	WWE All Stars	10	2011	10	29	0.23
7072	Naruto Shippuden: Ninja Council 4	4	2007	9	1	0.23
7073	Genji: Dawn of the Samurai	7	2005	9	4	0.23
7074	Rocket League	11	2016	1	12	0.23
7075	Wipeout 2	10	2011	6	5	0.23
7076	The Idolm@ster SP: Wandering Star / Perfect Sun / Missing Moon	17	2009	11	26	0.23
7077	Critical Depth	13	1997	9	14	0.23
7078	Barbie as The Island Princess	9	2007	11	5	0.23
7079	Petz Rescue: Wildlife Vet	1	2008	8	6	0.23
7080	Tales of VS.	17	2009	10	26	0.23
7081	Saka-Tsuku DS: Touch and Direct	4	2008	1	9	0.23
7082	Super Swing Golf	1	2006	1	1	0.23
7083	The Italian Job	7	2003	3	22	0.23
7084	Mega Man Battle Network 5: Team Colonel / Protoman	9	2004	4	13	0.23
7085	Barbie and the Three Musketeers	1	2009	11	5	0.23
7086	Star Ocean	8	1996	4	25	0.23
7087	Freedom Fighters	14	2003	7	8	0.23
7088	Naruto: Ninja Council 2 European Version	4	2005	10	100	0.23
7089	Soldier of Fortune II: Double Helix	14	2003	7	5	0.23
7090	pro evolution soccer 2011	1	2010	1	15	0.23
7091	Disney Princess: Enchanted Journey	7	2007	11	33	0.23
7092	Final Fantasy XI: Treasures of Aht Urhgan	7	2006	4	17	0.23
7093	Alundra	13	1997	4	88	0.23
7094	World Soccer Winning Eleven 2010: Aoki Samurai no Chousen	6	2010	1	15	0.23
7095	Bratz: Girlz Really Rock	7	2008	9	29	0.23
7096	Super R-Type	8	1991	7	1	0.23
7097	Rampage 2: Universal Tour	13	1998	9	14	0.23
7098	Super Robot Taisen F Kanketsuhen	13	1999	12	58	0.23
7099	Tiger Woods PGA Tour 2003	19	2002	1	8	0.23
7100	BlowOut	7	2003	7	87	0.23
7101	NFL Blitz Pro	7	2003	1	40	0.23
7102	MySims Party	1	2009	8	8	0.23
7103	TRON: Evolution - Battle Grids	1	2010	3	33	0.23
7104	The Raiden Project	13	1995	7	86	0.23
7105	Hooked! Real Motion Fishing	1	2007	1	12	0.23
7106	Pocket Fighter	13	1997	10	19	0.23
7107	Bicycle Casino 2005	14	2004	6	87	0.23
7108	Valhalla Knights 2	17	2008	4	71	0.23
7109	.hack//G.U. Vol.2//Reminisce	7	2006	4	26	0.23
7110	Disgaea: Afternoon of Darkness	17	2006	4	49	0.23
7111	Ratchet & Clank: Full Frontal Assault	6	2012	11	4	0.23
7112	NCAA Football 09	17	2008	1	8	0.23
7113	Family Party: 30 Great Games Winter Fun	1	2010	1	59	0.23
7114	NCAA GameBreaker 2004	7	2003	1	4	0.23
7115	101-in-1 Party Megamix Wii	1	2009	6	252	0.23
7116	The Polar Express	7	2004	11	29	0.23
7117	Dinosaur King	4	2007	12	9	0.23
7118	Buzz! Junior: RoboJam	7	2007	6	4	0.23
7119	Child of Eden	6	2011	7	6	0.23
7120	All Star Karate	1	2010	9	29	0.23
7121	AC/DC LIVE: Rock Band Track Pack	5	2008	6	32	0.23
7122	Tetris Attack	3	1996	5	1	0.23
7123	NBA ShootOut 2003	7	2002	1	4	0.23
7124	The Magic School Bus: Oceans	4	2011	11	117	0.23
7125	Shin Nippon Pro Wrestling: Toukon Retsuden 3	13	1998	10	100	0.23
7126	Senran Kagura: Estival Versus	23	2015	9	220	0.23
7127	Digimon World DS (JP sales)	4	2006	4	26	0.23
7128	NHL FaceOff 2003	7	2002	1	4	0.23
7129	Jersey Devil	13	1997	2	86	0.23
7130	Rogue Ops	7	2003	9	189	0.23
7131	NBA Street: Showdown	17	2005	1	8	0.23
7132	3rd Super Robot Wars Z Jigoku Hen	6	2014	4	26	0.23
7133	Cars 2	10	2011	3	33	0.23
7134	Petz Monkeyz House	4	2008	8	6	0.23
7135	Spec Ops: The Line	15	2012	7	3	0.23
7136	Legion: The Legend of Excalibur	7	2002	9	40	0.22
7137	FaceBreaker K.O. Party	1	2008	10	8	0.22
7138	Justice League Heroes	17	2006	4	22	0.22
7139	Gekijouban Macross F: Sayonara no Tsubasa - Hybrid Pack	6	2011	9	26	0.22
7140	TNA iMPACT!	7	2008	10	40	0.22
7141	Yu-Gi-Oh! GX: Spirit Caller (American Sales)	4	2006	6	15	0.22
7142	Def Jam: Fight for NY	19	2004	10	8	0.22
7143	Sword Art Online: Infinity Moment	17	2013	4	26	0.22
7144	Spartan: Total Warrior	7	2005	9	9	0.22
7145	Killer is Dead	6	2013	9	42	0.22
7146	EX Monopoly	9	2001	6	152	0.22
7147	Star Trek: The Game	5	2013	9	26	0.22
7148	64 de Hakken! Tamagotchi Minna de Tamagotchi World	12	1997	6	26	0.22
7149	Mary-Kate and Ashley: Sweet 16 - Licenced to Drive	19	2003	6	31	0.22
7150	Deadly Duck	16	1981	7	122	0.22
7151	Assault	16	1982	9	253	0.22
7152	Reactor	16	1981	9	46	0.22
7153	Ys Seven	17	2009	4	254	0.22
7154	Marvel Super Hero Squad: The Infinity Gauntlet	4	2010	9	29	0.22
7155	Gundam Battle Chronicle	17	2007	9	26	0.22
7156	G-Force	6	2009	9	33	0.22
7157	Danball Senki Boost	17	2011	9	38	0.22
7158	Kidz Bop Dance Party! The Video Game	1	2010	6	59	0.22
7159	Conflict: Vietnam	14	2004	7	112	0.22
7160	Whirl Tour	7	2002	1	68	0.22
7161	Time Crisis: Crisis Zone	7	2004	7	26	0.22
7162	Momotarou Dentetsu 15	7	2005	6	69	0.22
7163	Dark Souls II	18	2015	4	26	0.22
7164	Discovery Kids: Dolphin Discovery	4	2008	8	12	0.22
7165	Ben 10 Ultimate Alien: Cosmic Destruction	7	2010	2	59	0.22
7166	Hatsune Miku: Project Mirai 2	10	2013	9	9	0.22
7167	Skies of Arcadia Legends	19	2002	4	11	0.22
7168	Cloudy With a Chance of Meatballs	4	2009	2	6	0.22
7169	MotoGP 08	7	2008	3	13	0.22
7170	Madden NFL 12	17	2011	1	8	0.22
7171	Sengoku Basara 3 Utage	6	2011	9	13	0.22
7172	Breath of Fire	9	2001	4	6	0.22
7173	Ragnarok DS	4	2008	4	67	0.22
7174	Ford vs. Chevy	7	2005	3	64	0.22
7175	NCAA Football 2005	19	2004	1	8	0.22
7176	Hamtaro: Ham-Ham Games	9	2004	1	1	0.22
7177	Danny Phantom: The Ultimate Enemy	9	2005	9	29	0.22
7178	Petz Rescue: Endangered Paradise	4	2008	11	6	0.22
7179	MotoGP 09/10	6	2010	3	13	0.22
7180	Rune Factory: Tides of Destiny	6	2011	4	220	0.22
7181	A Boy and His Blob	1	2009	2	35	0.22
7182	Battleborn	11	2016	7	3	0.22
7183	Move Fitness	6		1	4	0.22
7184	Atelier Escha & Logy: Alchemists of the Dusk Sky	6	2013	4	49	0.22
7185	Hidden Mysteries: Buckingham Palace	4	2010	5	191	0.22
7186	Crazy Climber	16	1981	9	11	0.22
7187	Super Adventure Island	8	1992	2	69	0.22
7188	Bust-A-Move 4	13	1998	5	31	0.22
7189	The Legend of Spyro: The Eternal Night	1	2007	2	24	0.22
7190	NFL Quarterback Club 97	13	1996	1	31	0.22
7191	Rampage: Total Destruction	1	2006	9	40	0.22
7192	Galactic Wrestling: Featuring Ultimate Muscle	7	2004	10	26	0.22
7193	Petz: Horse Club	1	2008	6	6	0.22
7194	Dino Stalker	7	2002	7	13	0.22
7195	Rapala's Fishing Frenzy	1	2008	1	5	0.22
7196	Mobile Suit Gundam Seed	7	2003	9	26	0.22
7197	Shinobi	10	2011	2	9	0.22
7198	Puss in Boots	1	2011	9	29	0.22
7199	Tony Hawk's Downhill Jam	4	2006	1	5	0.22
7200	Mega Man Zero 3	9	2004	2	13	0.22
7201	LEGO The Lord of the Rings	15	2012	9	20	0.22
7202	Hitman: HD Trilogy	6	2013	9	17	0.22
7203	Aliens vs Predator: Requiem	17	2007	9	24	0.22
7204	Castlevania: Lords of Shadow 2	6	2014	9	15	0.22
7205	Barbie: Groom and Glam Pups	1	2010	9	29	0.22
7206	KORG DS-10 Synthesizer	4	2008	6	255	0.22
7207	Tenchu: Shadow Assassins	1	2008	9	6	0.22
7208	Barbie Super Sports	13	1999	1	140	0.22
7209	CSI: Fatal Conspiracy	1	2010	11	6	0.22
7210	Nicktoons Collection: Game Boy Advance Video Volume 2	9	2004	6	34	0.22
7211	Jackass the Game	17	2007	9	90	0.22
7212	The Legend of Heroes: Trails of Cold Steel	6	2013	4	132	0.22
7213	Tom Clancy's Rainbow Six: Siege	15	2015	7	6	0.22
7214	Dungeon Hunter Alliance	23	2012	9	6	0.22
7215	LEGO Harry Potter: Years 5-7	15		9	20	0.22
7216	Duel Masters: Kaijudo Showdown	9	2004	6	11	0.22
7217	Imagine: Boutique Owner	4	2009	8	6	0.22
7218	The Walking Dead: Season Two	6	2014	11	174	0.22
7219	The Lord of the Rings: The Third Age	9	2004	4	8	0.22
7220	Cursed Mountain	1	2009	11	42	0.22
7221	The Suffering	14	2004	9	40	0.22
7222	Dragon Quest Builders: Revive Alefgard	11	2016	4	17	0.22
7223	Tetris Worlds	19	2002	5	29	0.22
7224	Teenage Mutant Ninja Turtles: Danger of the Ooze	5	2014	11	5	0.22
7225	ECW Hardcore Revolution	12	2000	10	31	0.22
7226	Mega Man 64	12	2000	9	13	0.22
7227	Chou-Kuukan Night Pro Yakyuu King(higher JP sales)	12	1996	1	157	0.22
7228	Rampage 2: Universal Tour	12	1999	9	14	0.22
7229	Ms. Pac-Man: Maze Madness	12	2000	5	26	0.22
7230	Tales of Graces	1	2009	4	26	0.22
7231	Age of Empires: Mythologies	4	2008	12	29	0.22
7232	Viewtiful Joe 2	19	2004	9	13	0.22
7233	Where's Waldo? The Fantastic Journey	4	2009	11	6	0.22
7234	ATV Quad Kings	1	2009	3	87	0.22
7235	Mary-Kate and Ashley: Sweet 16 - Licenced to Drive	7	2002	6	31	0.22
7236	Jewel Quest: Expeditions	4	2007	5	191	0.22
7237	NBA Jam Extreme	13	1996	1	31	0.22
7238	Dragon Ball: Origins (JP & incomplete US sales)	4	2008	11	11	0.22
7239	Touch the Dead	4	2007	7	22	0.22
7240	Tropico 3	5	2009	12	200	0.22
7241	Nickelodeon Party Blast	14	2002	6	53	0.22
7242	Ben 10 Alien Force: Vilgax Attacks	5	2009	9	59	0.22
7243	NHL Championship 2000	13	1998	1	30	0.22
7244	G.I. Joe: The Rise of Cobra	1	2009	9	8	0.22
7245	Shellshock: Nam '67	14	2004	7	22	0.22
7246	Hunted: The Demon's Forge	5	2011	9	7	0.22
7247	Kartia: The Word of Fate	13	1998	12	15	0.22
7248	Tales of Berseria	11	2016	4	26	0.22
7249	All-Star Baseball 2002	19	2001	1	31	0.22
7250	Magna Carta: Tears of Blood	7	2004	4	12	0.22
7251	Lethal Skies Elite Pilot: Team SW	7	2001	8	101	0.22
7252	Capcom vs. SNK	22	2000	10	19	0.22
7253	NBA Live 09 All-Play	1	2008	1	8	0.22
7254	Infinite Space	4	2009	4	9	0.22
7255	Yoostar2	5	2011	6	54	0.22
7256	Transformers: Devastation	11	2015	9	5	0.22
7257	Tamagotchi no KiraKira Omisecchi	4	2008	6	26	0.22
7258	From Russia With Love	19	2005	9	8	0.22
7259	You Don't Know Jack	1	2011	6	29	0.22
7260	Just Dance 2016	6	2015	6	6	0.22
7261	Pinball Hall of Fame: The Williams Collection	6	2009	6	68	0.22
7262	Guitar Hero: Smash Hits	7	2009	6	5	0.22
7263	NFL Quarterback Club 2002	7	2001	1	31	0.22
7264	Kirby's Star Stacker	3	1997	5	1	0.22
7265	NCAA Basketball 09	5	2008	1	8	0.22
7266	Full Auto	5	2006	7	9	0.22
7267	Dead Island	15	2011	9	42	0.22
7268	Growlanser: Heritage of War	7	2006	4	71	0.22
7269	Hasbro Family Game Night	4	2009	5	8	0.22
7270	Shin Megami Tensei x Fire Emblem	20	2015	4	1	0.22
7271	Rugby 2004	7	2003	1	8	0.22
7272	Disney's Magical Quest Starring Mickey and Minnie	9	2002	9	1	0.22
7273	Spirit Camera: The Cursed Memoir	10	2012	11	1	0.22
7274	NBA 06	17	2005	1	4	0.22
7275	Naruto: Ninja Council	9	2003	9	100	0.22
7276	Shin Megami Tensei: Persona	17	2009	4	72	0.22
7277	DS Nishimura Kyotaro Suspense Shin Tantei Series: Kyoto Atami Zekkai no Kotou - Satsui no Wana	4	2007	11	49	0.22
7278	Wreckless: ThE YaKuza MisSiOns	7	2002	3	5	0.22
7279	Madden NFL 07	4	2006	1	8	0.22
7280	Jikkyou Powerful Major League	7	2006	1	15	0.22
7281	NFL 2K3	19	2002	1	9	0.22
7282	Darksiders II	11	2015	9	125	0.22
7283	Saltwater Sportfishing	13	2001	1	3	0.22
7284	Yoshi Touch & Go (JP sales)	4	2005	2	1	0.22
7285	Samurai Jack: The Amulet of Time	9	2003	2	87	0.22
7286	Pass the Pigs	4	2008	6	29	0.22
7287	J-League Winning Eleven 2008: Club Championship	7	2008	1	15	0.22
7288	Jackie Chan: Stuntmaster	13	1999	9	4	0.22
7289	Sports Car GT	13	1999	3	8	0.22
7290	Lost Planet 3	6	2013	7	13	0.22
7291	Order Up!	1	2008	6	87	0.22
7292	Code Name: S.T.E.A.M.	10	2015	12	1	0.22
7293	SBK X: Superbike World Championship	6	2010	3	194	0.22
7294	NBA Live 14	11	2013	1	8	0.22
7295	Scooby-Doo! Mystery Mayhem	19	2004	9	29	0.22
7296	Kanzen Chuuki Pro Yakyuu Greatest Nine	24	1995	1	9	0.22
7297	American Idol	9	2003	6	36	0.22
7298	Summer Athletics: The Ultimate Challenge (Others sales)	1	2008	1	233	0.22
7299	Britney's Dance Beat	9	2002	6	29	0.22
7300	Shrek SuperSlam	19	2005	9	5	0.22
7301	Sniper: Ghost Warrior 2	5	2013	7	89	0.22
7302	Over G Fighters	5	2006	8	6	0.22
7303	Sailor Moon	8	1993	9	26	0.22
7304	Apache: Air Assault	6	2010	8	5	0.22
7305	One Piece: Pirate Warriors 3	23	2015	9	26	0.22
7306	Herdy Gerdy	7	2002	11	22	0.22
7307	Armored Core V	5	2012	8	26	0.22
7308	EVE Online	15	2003	4	256	0.22
7309	Digimon World Re:Digitize	17	2012	9	26	0.22
7310	Ninja Gaiden: Dragon Sword	4	2008	9	49	0.22
7311	Ride	11	2015	3	257	0.22
7312	Blue Dragon Plus	4	2008	4	151	0.22
7313	Lords of the Fallen	18	2014	4	17	0.22
7314	NBA in the Zone 2000	13	2000	1	15	0.21
7315	Dark Summit	7	2001	1	29	0.21
7316	Afrika	6	2008	11	54	0.21
7317	Cabela's Big Game Hunter: Ultimate Challenge	13	2001	1	57	0.21
7318	The Legend of Heroes: Trails in the Sky First Chapter	17	2006	4	145	0.21
7319	Are You Smarter Than a 5th Grader? Back to School	1	2010	6	1	0.21
7320	Steins;Gate	23	2013	11	148	0.21
7321	The Dukes of Hazzard: Return of the General Lee	7	2004	3	6	0.21
7322	Pandemonium!	13	1996	2	147	0.21
7323	SingStar: Back to the 80s	6	2011	6	4	0.21
7324	Namco Museum: 50th Anniversary	19	2005	6	26	0.21
7325	Crash 'N' Burn	7	2004	3	22	0.21
7326	NBA	17	2005	1	4	0.21
7327	Teenage Mutant Ninja Turtles: Smash-Up	7	2009	10	6	0.21
7328	Pro Yakyuu Greatest Nine '97	24	1997	1	9	0.21
7329	Transformers: Dark of the Moon	10	2011	9	5	0.21
7330	Final Fantasy Fables: Chocobo's Dungeon	1	2007	4	17	0.21
7331	Lunar: Silver Star Story Complete	24	1997	4	153	0.21
7332	Dorabase DS: Dramatic Stadium	4	2007	1	26	0.21
7333	Disaster Report	7	2002	9	95	0.21
7334	EVE: burst error	24	1997	11	157	0.21
7335	We Sing Robbie Williams	1	2010	6	125	0.21
7336	Backyard NFL Football '09	1	2008	1	11	0.21
7337	Pro Evolution Soccer 2012	1	2011	9	15	0.21
7338	Akiba's Trip: Undead & Undressed	23	2013	9	132	0.21
7339	Speed Racer: The Videogame	7	2008	3	20	0.21
7340	College Hoops 2K7	5	2006	1	3	0.21
7341	The Amazing Spider-Man 2 (2014)	18	2014	9	5	0.21
7342	Big League Sports	5	2011	1	5	0.21
7343	Bratz: Forever Diamondz	19	2006	11	29	0.21
7344	WCW Backstage Assault	13	1999	9	8	0.21
7345	UFC Undisputed 2010	17	2010	10	29	0.21
7346	Baja: Edge of Control	6	2008	3	29	0.21
7347	Wild Wild Racing	7	2000	3	118	0.21
7348	Magician's Quest: Town of Magic	10	2012	8	15	0.21
7349	The Bard's Tale	7	2004	4	6	0.21
7350	NCAA March Madness 08	5	2007	1	8	0.21
7351	Momotarou Dentetsu 16	7	2006	6	69	0.21
7352	Robotech: The Macross Saga	9	2002	7	73	0.21
7353	Yu Yu Hakusho: Dark Tournament	7		10	34	0.21
7354	MTV Celebrity Deathmatch	14	2003	10	65	0.21
7355	Gekijouban Macross F: Itsuwarino Utahime - Hybrid Pack	6	2010	9	26	0.21
7356	Conflict Zone	7	2002	12	6	0.21
7357	Tony Hawk's American Sk8land	4	2005	1	5	0.21
7358	de Blob 2	6	2011	2	29	0.21
7359	The BIGS 2	5	2009	1	3	0.21
7360	BloodRayne	14	2002	7	21	0.21
7361	Hannah Montana: The Movie	5	2009	11	33	0.21
7362	50 Cent: Blood on the Sand	5	2009	7	29	0.21
7363	Bratz: Girlz Really Rock	1	2008	9	29	0.21
7364	NHL 2K6	14	2005	1	3	0.21
7365	Tenchu: Return From Darkness	14	2004	9	5	0.21
7366	World Poker Tour	7	2005	6	3	0.21
7367	Prison Break: The Conspiracy	5	2010	9	42	0.21
7368	Neo Contra	7	2004	7	15	0.21
7369	MVP Baseball	17	2005	1	8	0.21
7370	GRID Autosport	6	2014	3	36	0.21
7371	Ghostbusters II	16		9	5	0.21
7372	Breakaway IV	16		5	258	0.21
7373	RealSports Baseball	16	1981	1	11	0.21
7374	Now! That's What I Call Music: Dance & Sing	1	2011	6	54	0.21
7375	Yu-Gi-Oh! 5D's World Championship 2011: Over the Nexus	4	2011	12	15	0.21
7376	Metal Gear Solid V: The Phantom Pain	5	2015	9	15	0.21
7377	Hasbro Family Game Night 3	5	2010	6	8	0.21
7378	G.I. Joe: The Rise of Cobra	6	2009	9	8	0.21
7379	Rayman Raving Rabbids	5	2007	6	6	0.21
7380	Viewtiful Joe 2	7	2004	9	13	0.21
7381	Quake III: Revolution	7	2001	7	8	0.21
7382	Pac-Man World 3	7	2005	2	26	0.21
7383	Naruto: Clash of Ninja (JP sales)	19	2003	10	100	0.21
7384	Robotech: Battlecry	14		7	54	0.21
7385	NOëL: NOT DiGITAL	13	1996	11	186	0.21
7386	Transformer: Rise of the Dark Spark	11	2014	9	5	0.21
7387	Dragon Ball Z Hyper Dimension	8	1995	10	26	0.21
7388	Hidden Mysteries: Titanic - Secrets of the Fateful Voyage	1	2009	11	96	0.21
7389	Senran Kagura 2: Deep Crimson	10	2014	9	105	0.21
7390	Marvel Super Hero Squad	17	2009	10	29	0.21
7391	The Chronicles of Narnia: Prince Caspian	4	2008	9	33	0.21
7392	Champion Jockey: G1 Jockey & Gallop Racer	6	2011	1	49	0.21
7393	HBO Boxing	13	2000	10	31	0.21
7394	Yoga Wii	1	2009	1	259	0.21
7395	Darkwatch	14	2005	7	6	0.21
7396	Cabela's Survival: Shadows of Katmai	1	2011	1	5	0.21
7397	Prince of Persia: Revelations	17	2005	11	6	0.21
7398	Bass Pro Shops: The Strike	5	2009	1	165	0.21
7399	Front Mission 5: Scars of the War	7	2005	12	17	0.21
7400	Maximo vs Army of Zin	7	2003	2	13	0.21
7401	The Fairly OddParents: Breakin' Da Rules	19	2003	2	29	0.21
7402	Namco Museum Megamix	1	2010	6	26	0.21
7403	Wedding Dash	4	2009	9	75	0.21
7404	Hot Shots Tennis: Get a Grip	17	2010	1	4	0.21
7405	Summoner 2	7	2002	4	29	0.21
7406	The Land Before Time: Big Water Adventure	13	2002	2	73	0.21
7407	Shadow of Destiny	7	2001	11	15	0.21
7408	Valkyria Chronicles III: Unrecorded Chronicles	17		12	9	0.21
7409	Cabela's Deer Hunt: 2004 Season	14	2003	1	57	0.21
7410	Disney's Planes	20	2013	8	33	0.21
7411	Brunswick Pro Bowling	17	2007	1	12	0.21
7412	World Series of Poker	17	2005	6	5	0.21
7413	ClayFighter 63 1/3	12	1997	10	118	0.21
7414	Monopoly	12	1999	6	28	0.21
7415	WCW Nitro	12	1998	10	29	0.21
7416	Cruis'n Exotica	12	2000	3	40	0.21
7417	Gex 3: Deep Cover Gecko	12	1999	2	68	0.21
7418	WinBack: Covert Operations	12	1999	7	19	0.21
7419	Heroes of Ruin	10	2012	4	1	0.21
7420	WipeOut 3 The Game	5	2012	9	5	0.21
7421	Bastard!! Utsuro Naru Kamigami no Utsuwa	13	1996	4	260	0.21
7422	SBK Superbike World Championship	5	2008	3	194	0.21
7423	The King of Fighters '96	24	1996	10	244	0.21
7424	Bionicle	19	2003	9	8	0.21
7425	WRC: FIA World Rally Championship	6		3	194	0.21
7426	Angel Blade: Neo Tokyo Guardians	13	1997	4	261	0.21
7427	Threads of Fate	13	1999	4	10	0.21
7428	PoPoLoCrois Monogatari II	13	2000	4	4	0.21
7429	Famicom Mini: Ganbare Goemon! Karakuri Douchuu	9	2004	2	15	0.21
7430	Vampire Rain	5	2007	9	2	0.21
7431	Way of the Samurai 3	5	2009	9	161	0.21
7432	Deus Ex: The Conspiracy	7	2002	9	22	0.21
7433	Unreal II: The Awakening	14	2004	7	11	0.21
7434	Rumble Racing	7	2001	3	8	0.21
7435	Spider-Man: Web of Shadows	7	2008	9	5	0.21
7436	Disgaea D2: A Brighter Darkness	6	2013	4	132	0.21
7437	Batman Begins	14	2005	9	8	0.21
7438	Just Dance: Greatest Hits	1	2012	6	6	0.21
7439	J-League Winning Eleven 10 + Europa League 06-07	7	2006	1	15	0.21
7440	Shrek: Reekin' Havoc	9	2003	2	73	0.21
7441	Solatorobo: Red the Hunter	4	2010	4	1	0.21
7442	Tales of Phantasia: Narikiri Dungeon X	17	2010	4	26	0.21
7443	JSRF: Jet Set Radio Future	14	2002	9	9	0.21
7444	NHL Hitz 20-02	19	2001	1	40	0.21
7445	The Last Airbender	1	2010	9	29	0.21
7446	NCAA Football 2003	19	2002	1	8	0.21
7447	StokEd	5	2009	1	202	0.21
7448	Rollcage	13	1999	3	88	0.21
7449	ESPN Winter X Games: Snowboarding 2002	7	2000	1	15	0.21
7450	Project: Snowblind	7	2005	9	22	0.21
7451	Tony Hawk's Motion	4	2008	1	5	0.21
7452	Super Robot Taisen K	4	2009	12	26	0.21
7453	Mortal Kombat: Special Forces	13	2000	10	40	0.21
7454	LEGO The Hobbit	23	2014	9	20	0.21
7455	Rayman Legends	23	2014	2	6	0.21
7456	Dragon Ball Z: Harukanaru Densetsu	4	2007	4	26	0.21
7457	Wacky Races: Crash & Dash	4	2008	3	22	0.21
7458	I Spy: Castle	4	2011	5	117	0.21
7459	Shin Megami Tensei: Persona 3 (jp sales)	7	2006	4	49	0.21
7460	Greg Hastings Paintball 2	5	2010	7	35	0.21
7461	Evil Dead: Regeneration	7	2005	9	29	0.21
7462	Dead to Rights: Retribution	5	2010	7	26	0.21
7463	NCAA March Madness 07	5	2007	1	8	0.21
7464	NHL 2003	14	2002	1	8	0.21
7465	Marvel Super Hero Squad: Comic Combat	6	2011	9	29	0.21
7466	X-Men: Children of the Atom	24	1995	10	31	0.21
7467	Barbie Fashion Show: An Eye for Style	4	2008	6	5	0.21
7468	Tiger Woods PGA Tour	17	2005	1	8	0.21
7469	Yarudora Series Vol. 2: Kisetsu wo Dakishimete	13	1998	11	4	0.21
7470	NHL 2K3	7	2002	1	9	0.21
7471	Heisei Kyouiku linkai DS	4	2006	6	26	0.21
7472	SpongeBob SquarePants: Game Boy Advance Video Volume 3	9	2004	6	34	0.21
7473	Pro Yaky? Spirits 2010	6	2010	1	15	0.21
7474	The Naked Brothers Band: The Video Game	1	2008	6	29	0.21
7475	Final Fight One	9	2001	10	6	0.21
7476	Rune Factory: Tides of Destiny	1	2011	4	220	0.21
7477	The Amazing Spider-Man (Console Version)	4	2012	9	5	0.21
7478	NCAA Football 10	17	2009	1	8	0.21
7479	Gallop Racer 2003: A New Breed	7	2002	1	87	0.21
7480	Dawn of Discovery	1	2009	8	6	0.21
7481	BeyBlade VForce: Super Tournament Battle	19	2002	9	11	0.21
7482	Outlaw Golf 2	14	2004	1	64	0.21
7483	Little Battlers eXperience: Baku Boost	10	2012	9	1	0.21
7484	Anarchy Reigns	6	2012	9	9	0.21
7485	CSI: Deadly Intent	5	2009	11	6	0.21
7486	Defiance	15	2013	7	149	0.21
7487	J-League Pro Soccer Club o Tsukurou! 7 Euro Plus	17	2011	1	9	0.21
7488	LEGO Ninjago: Shadow of Ronin	10	2015	9	20	0.21
7489	Bugs Bunny & Taz: Time Busters	13	2000	11	53	0.21
7490	Need for Speed Carbon: Own the City	4	2006	3	8	0.21
7491	Dragon Ball Z: Sagas	19	2005	10	11	0.21
7492	Kung Fu Rider	6	2010	9	4	0.21
7493	Jikkyou Powerful Pro Yakyuu 2012	6	2012	9	15	0.21
7494	X2: Wolverine's Revenge	14	2003	2	5	0.21
7495	Power Rangers: Wild Force	9	2002	9	29	0.21
7496	The Wolf Among Us	11	2014	11	174	0.21
7497	Thrillville	17	2006	12	11	0.2
7498	Battle of Giants: Dinosaurs Strike	1	2010	12	6	0.2
7499	Attack on Titan (KOEI)	11	2016	9	49	0.2
7500	The King of Fighters '95	27	1995	10	244	0.2
7501	Discovery Kids: Pony Paradise	4	2009	8	12	0.2
7502	Mary-Kate and Ashley: Girls Night Out	9	2002	6	31	0.2
7503	Cabela's North American Adventures	1	2010	1	5	0.2
7504	Enchanted Arms	6	2007	4	6	0.2
7505	Beyblade G-Revolution	9	2004	9	11	0.2
7506	WWE All Stars	1	2011	10	29	0.2
7507	Trade & Battle: Card Hero	3	2000	12	1	0.2
7508	World Championship Cards	17	2008	6	68	0.2
7509	You Don't Know Jack	5	2011	6	29	0.2
7510	Chronicles of Mystery: Curse of the Ancient Temple	4	2009	11	89	0.2
7511	NBA Live 15	18	2014	1	8	0.2
7512	Capcom Fighting Evolution	7	2004	10	13	0.2
7513	Frogger 3D	10	2011	9	15	0.2
7514	SD Gundam GNext	8	1995	12	26	0.2
7515	Backyard NFL Football 2006	7	2005	1	11	0.2
7516	NASCAR Heat 2002	14	2001	3	53	0.2
7517	Planet 51	1	2009	9	9	0.2
7518	Sloane to MacHale no Nazo no Monogatari	4	2009	5	38	0.2
7519	DarkStar One: Broken Alliance	5	2010	8	200	0.2
7520	My Fitness Coach 2: Exercise and Nutrition	1	2009	1	194	0.2
7521	Sengoku Basara 2 Heroes	7	2007	9	13	0.2
7522	Buzz! The Schools Quiz	7	2008	6	4	0.2
7523	Two Worlds II	15	2011	4	54	0.2
7524	Suikoden Tactics	7	2005	12	15	0.2
7525	NCAA March Madness 06	14	2005	1	8	0.2
7526	Major League Baseball 2K11	6	2011	1	3	0.2
7527	Mobile Suit Gundam: Crossfire	6	2006	8	26	0.2
7528	Phantasy Star Online	22	2000	4	9	0.2
7529	Crazy Taxi 3: High Roller	14	2002	3	9	0.2
7530	Dark Messiah of Might and Magic Elements	5	2008	4	6	0.2
7531	Just Dance 2: Extra Songs	1	2011	6	6	0.2
7532	Midnight Club 3: DUB Edition Remix	14	2006	3	3	0.2
7533	International Superstar Soccer 2000	7	2000	1	15	0.2
7534	Warhammer 40,000: Space Marine	15	2011	7	29	0.2
7535	CandyLand / Chutes & Ladders / Memory	9	2005	6	87	0.2
7536	The Bible Game	7	2005	6	68	0.2
7537	Drift King Shutokou Battle '94	8	1994	3	213	0.2
7538	Shining Blade	17	2012	4	9	0.2
7539	Fairy Fencer F	6	2013	4	132	0.2
7540	Atelier Shallie: Alchemists of the Dusk Sea	6	2014	4	49	0.2
7541	The Ultimate Red Ball Challenge	1	2009	6	52	0.2
7542	PBR: Out of the Chute	7	2008	1	68	0.2
7543	The King of Fighters Collection: The Orochi Saga	7	2006	10	151	0.2
7544	Jikkyou Powerful Pro Yakyuu 10 Chou Ketteiban: 2003 Memorial	7	2003	1	15	0.2
7545	Arcana Heart 3	6	2011	10	148	0.2
7546	Tekken 3D: Prime Edition	10	2012	10	1	0.2
7547	Deal or No Deal: The Banker is Back!	4	2008	6	52	0.2
7548	Jillian Michaels' Fitness Adventure	5	2011	6	12	0.2
7549	MLB 10: The Show	17	2010	1	4	0.2
7550	State of Decay	18	2015	12	2	0.2
7551	Ashes Cricket 2009	5	2009	1	36	0.2
7552	Saturday Night Speedway	7	2004	3	98	0.2
7553	Bratz: Rock Angelz	19	2005	6	29	0.2
7554	Langrisser III	24	1996	12	262	0.2
7555	Samurai Spirits (CD)	27	1994	10	244	0.2
7556	MLB SlugFest 20-03	14	2002	1	40	0.2
7557	Dragon Ball: Revenge of King Piccolo	1	2009	9	26	0.2
7558	Spectrobes: Origins	1	2009	4	33	0.2
7559	Earth Defense Force: Insect Armageddon	6	2011	7	59	0.2
7560	Pitfall: The Lost Expedition	7	2004	2	5	0.2
7561	Marvel: Ultimate Alliance 2	4	2009	4	5	0.2
7562	From TV Animation One Piece: Grand Battle! 3	19	2003	10	26	0.2
7563	Assassin's Creed Syndicate	15	2015	9	6	0.2
7564	Rocket Power: Zero Gravity Zone	9	2003	1	29	0.2
7565	Le Mans 24 Hours	7	2001	3	53	0.2
7566	XCOM 2	15	2016	12	3	0.2
7567	International Cricket 2010	6	2010	1	36	0.2
7568	ESPN MLB Baseball	7	2004	1	9	0.2
7569	Neighborhood Games	1	2009	6	29	0.2
7570	All Star Pro-Wrestling	7	2000	10	10	0.2
7571	Way of the Samurai 4	6	2011	9	132	0.2
7572	Clive Barker's Jericho	6	2007	7	36	0.2
7573	Harvest Moon: More Friends of Mineral Town	9	2003	8	6	0.2
7574	Captain America: Super Soldier	6	2011	9	9	0.2
7575	MLB 12: The Show	23	2012	1	4	0.2
7576	The Fairly Odd Parents: Shadow Showdown	19	2004	2	29	0.2
7577	NHL 17	11	2016	1	8	0.2
7578	Mobile Suit Gundam Side Story II: Aoi o Uketsugu Mono	24	1996	7	26	0.2
7579	Camping Mama: Outdoor Adventures	4	2011	8	12	0.2
7580	Kurohyou 2: Ryu ga Gotoku Ashura Hen	17	2012	9	9	0.2
7581	NBA 2K2	14	2002	1	9	0.2
7582	X2: Wolverine's Revenge	9	2003	2	5	0.2
7583	7th Dragon 2020	17	2011	4	9	0.2
7585	Taiko no Tatsujin: Waku Waku Anime Matsuri	7	2003	6	26	0.2
7586	Imagine: Babyz Fashion	4	2009	8	6	0.2
7587	Spy Hunter	19	2002	3	40	0.2
7588	Warriors Orochi	17	2008	9	49	0.2
7589	Dead to Rights II	7	2005	7	8	0.2
7590	Super Dodge Ball Advance	9	2001	1	6	0.2
7591	Ogre Battle Saga Episode Five: The March of the Black Queen	13	1996	4	241	0.2
7592	Ridge Racer 6	5	2005	3	26	0.2
7593	Angry Birds Star Wars	11	2013	12	5	0.2
7594	Ni Hao, Kai-lan: New Year's Celebration	4	2009	6	3	0.2
7595	Press Your Luck 2010 Edition	4	2009	6	6	0.2
7596	Treasure World	4	2009	8	263	0.2
7597	Front Mission Evolved	5	2010	7	17	0.2
7598	Body and Brain Connection	5	2010	6	26	0.2
7599	MDK	13	1997	7	118	0.2
7600	Monster Jam	5	2007	3	5	0.2
7601	Afro Samurai	6	2009	9	11	0.2
7602	Rock Band Track Pack: Classic Rock	7	2009	6	32	0.2
7603	Zone of the Enders HD Collection	5	2012	8	15	0.2
7604	Ty the Tasmanian Tiger 2: Bush Rescue	19	2004	2	8	0.2
7605	Speed Punks	13	1998	3	4	0.2
7606	The Legend of Heroes VII: The Trail of Blue	17	2011	4	254	0.2
7607	No More Heroes: Heroes' Paradise	6	2010	9	15	0.2
7608	Mahjongg Mysteries: Ancient Egypt	4	2010	5	191	0.2
7609	Saints Row IV	18	2015	9	42	0.2
7610	Injustice: Gods Among Us	20	2013	10	20	0.2
7611	MVP Baseball 2003	14	2003	1	8	0.2
7612	CSI: Unsolved!	4	2010	11	6	0.2
7613	Star Wars: Battlefront	15	2004	7	18	0.2
7614	NCAA Final Four 2004	7	2003	1	4	0.2
7615	The Chronicles of Narnia: The Lion, The Witch and The Wardrobe	14	2005	9	33	0.2
7616	Tigger's Honey Hunt	12	2000	2	6	0.2
7617	Famista 64	12		1	26	0.2
7618	Roadsters 99	12	1999	3	104	0.2
7619	Magical Tetris Challenge	12	1997	5	5	0.2
7620	Twisted Edge Extreme Snowboarding	12	1998	1	189	0.2
7621	Disney's Tarzan	12	2000	2	5	0.2
7622	South Park Rally	12	2000	3	31	0.2
7623	Body Harvest	12	1998	7	264	0.2
7624	San Francisco Rush 2049	12	2000	3	40	0.2
7625	Super Robot Taisen 64	12	1999	12	58	0.2
7626	Snowboard Kids	12	1996	1	72	0.2
7627	NBA 07	17	2006	1	4	0.2
7628	IHRA Drag Racing 2004	14	2003	3	7	0.2
7629	Shining Hearts	17	2010	4	9	0.2
7630	Magical ZhuZhu Princess: Carriages & Castles	4	2011	8	5	0.2
7631	Code of Princess	10	2012	9	265	0.2
7632	Tomb Raider: Underworld	4	2008	9	22	0.2
7633	The Con	17	2005	10	4	0.2
7634	Tony Hawk's Pro Skater 5	11	2015	1	5	0.2
7635	Jissen Pachi-Slot Hisshouhou! Aladdin A	7	2002	6	101	0.2
7636	Namco Museum: 50th Anniversary	9	2005	6	26	0.2
7637	Ford Racing Off Road	7	2008	3	169	0.2
7638	The Witch and the Hundred Knight	6	2013	4	132	0.2
7639	Nobunaga no Yabou: Reppuuden	13	1999	12	49	0.2
7640	Hot Wheels: Track Attack	1	2010	3	29	0.2
7641	Schlag den Raab	1	2010	6	26	0.2
7642	UFC Personal Trainer: The Ultimate Fitness System	6	2011	1	29	0.2
7643	Total War: Shogun 2 - Fall of the Samurai	15	2012	12	9	0.2
7644	The BIGS 2	7	2009	1	3	0.2
7645	Mat Hoffman's Pro BMX 2	14	2002	1	5	0.2
7646	Treasure Hunter G	8	1996	4	10	0.2
7647	Untold Legends: Dark Kingdom	6	2006	4	8	0.2
7648	From Russia With Love	14	2005	9	8	0.2
7649	Wing Arms	24	1994	7	9	0.2
7650	Dead Space 3	15		9	8	0.2
7651	Pro Yaky? Spirits 2013	6	2013	1	15	0.2
7652	We Wish You A Merry Christmas	1	2009	9	154	0.2
7653	BioShock The Collection	11	2016	7	3	0.2
7654	DanceDanceRevolution	6	2010	8	15	0.2
7655	Cabela's Big Game Hunter (2008)	7	2007	1	57	0.2
7656	Grandia II	22	2000	4	6	0.2
7657	Namco Museum Vol.4	13	1996	6	4	0.2
7658	The Cheetah Girls: Passport to Stardom	4	2008	6	33	0.2
7659	UFC Personal Trainer: The Ultimate Fitness System	1	2011	1	29	0.2
7660	How to Train Your Dragon 2	5	2014	11	231	0.2
7661	Shark Tale	14	2004	9	5	0.2
7662	NFL Street 2	19	2004	1	8	0.2
7663	Pro Yaky? Spirits 2013	17	2013	1	15	0.2
7664	Teenage Mutant Ninja Turtles 3: Mutant Nightmare	7	2005	9	15	0.2
7665	My Secret World by Imagine	4	2008	6	6	0.2
7666	Soldier of Fortune: Payback	5	2007	7	5	0.2
7667	Ridge Racer	23	2011	3	26	0.2
7668	Bleach: The 3rd Phantom	4	2008	4	9	0.2
7669	Gladius	7	2003	12	5	0.2
7670	Family Feud: 2012 Edition	1	2011	6	6	0.2
7671	Dave Mirra Freestyle BMX 2	14	2001	1	31	0.2
7672	Spore Hero Arena	4	2009	8	8	0.2
7673	Pro Yaky? Spirits 2012	17	2012	1	15	0.2
7674	Puzzle & Dragons X: God Chapter / Dragon Chapter	10	2016	9	67	0.2
7675	SpongeBob SquarePants: Revenge of the Flying Dutchman	19	2002	2	29	0.2
7676	Record of Agarest War	5	2008	4	266	0.2
7677	Baja: Edge of Control	5	2008	3	29	0.2
7678	Sid Meier's Pirates!	17	2007	12	3	0.2
7679	Taiko no Tatsujin: Go! Go! Godaime	7	2004	6	26	0.2
7680	Taiko Drum Master	7	2004	6	26	0.2
7681	High School Musical 3: Senior Year DANCE!	5	2008	6	33	0.2
7682	Harry Potter and the Goblet of Fire	17	2005	9	8	0.2
7683	Bust-A-Move 2 Arcade Edition	13	1995	5	31	0.2
7684	South Park: The Stick of Truth	15	2014	4	6	0.2
7685	Tom Clancy's Splinter Cell: Essentials	17	2006	7	6	0.2
7686	Tetris Worlds (Online Edition)	14	2003	5	29	0.2
7687	Armored Core 4	6	2006	8	12	0.2
7688	Sleeping Dogs	18	2014	9	17	0.2
7689	Forgotten Realms: Demon Stone	7	2004	9	11	0.2
7690	Super Baseball Simulator 1.000	8	1991	1	267	0.2
7691	Barbie Horse Adventures: Riding Camp	1	2008	1	5	0.2
7692	Resident Evil: Revelations	20	2013	9	13	0.2
7693	Go Play: Lumberjacks	1	2009	8	35	0.2
7694	Looney Tunes: Space Race	7	2002	3	53	0.2
7695	Puzzle Challenge: Crosswords and More!	17	2006	5	68	0.2
7696	NASCAR Unleashed	1	2011	3	5	0.2
7697	Backyard Hockey	9	2003	1	11	0.2
7698	Playboy: The Mansion	7	2005	8	6	0.2
7699	Jikkyou Powerful Pro Yakyuu 2010	17	2010	1	15	0.2
7700	Shiren the Wanderer	1	2008	4	9	0.2
7701	Ore no Shikabane o Koete Yuke	17	2011	4	4	0.2
7702	Shaman King: Spirit of Shamans	13	2002	9	26	0.2
7703	Tiger Woods PGA Tour 06	17	2005	1	8	0.2
7704	Conan	5	2007	9	29	0.2
7705	Ratatouille	9	2007	9	29	0.2
7706	The Fairly Odd Parents: Enter the Cleft	9	2002	2	29	0.2
7707	Warriors Orochi	5	2007	9	49	0.2
7708	MC Groovz Dance Craze	19	2004	6	268	0.2
7709	The Thing	14	2002	11	24	0.2
7710	Tom and Jerry in House Trap	13	2000	9	6	0.2
7711	Power Rangers: Time Force	9	2001	9	29	0.2
7712	101-in-1 Explosive Megamix	4	2008	5	252	0.2
7713	X-Men Origins: Wolverine	4	2009	9	5	0.2
7714	Jikkyou Powerful Pro Yakyuu 2011	17	2011	1	15	0.2
7715	DS Kageyama Method: Dennou Hanpuku - Masu x Masu Hyaku Masu Keisan	4	2006	6	269	0.2
7716	Baldur's Gate: Dark Alliance	14	2002	4	19	0.2
7717	Family Guy	17	2006	9	3	0.2
7718	Prince of Persia: Warrior Within	19	2004	9	6	0.2
7719	UFC: Tapout	14	2002	10	68	0.2
7720	Aikatsu! Cinderella Lesson	10	2012	4	26	0.2
7721	Marvel Super Hero Squad: Comic Combat	1	2011	9	29	0.2
7722	Test Drive Unlimited 2	15		3	11	0.2
7723	Mega Man Legacy Collection	10	2016	2	13	0.2
7724	Predator: Concrete Jungle	7	2005	9	24	0.2
7725	Beyblade: Metal Fusion - Battle Fortress	1	2009	9	15	0.2
7726	WipeOut 3 The Game	10	2012	9	5	0.2
7727	Big Mutha Truckers 2	7	2005	3	169	0.2
7728	Shutter Island	15	2009	11	270	0.2
7729	The Naked Brothers Band: The Video Game	4	2008	6	29	0.2
7730	Demon Gaze	23	2013	4	132	0.2
7731	Zombie Army Trilogy	11	2015	7	271	0.2
7732	NHL FaceOff 2001	7	2001	1	4	0.2
7733	Mana Khemia 2: Fall of Alchemy	7	2008	4	243	0.2
7734	The Great Escape	7	2003	9	112	0.2
7735	Dexter's Lab Chess Challenge	9	2002	6	176	0.2
7736	Nostalgia	4	2008	4	49	0.19
7737	DiRT Showdown	6	2012	3	36	0.19
7738	Iron Chef America: Supreme Cuisine	4	2008	8	154	0.19
7739	Arcade Shooting Gallery	1	2008	7	75	0.19
7740	The Rise of the Argonauts	6	2008	4	36	0.19
7741	Big Mutha Truckers	14	2002	3	90	0.19
7742	ESA Foundation Compilation	7	2005	6	4	0.19
7743	The Hobbit	9	2003	2	24	0.19
7744	The King of Fighters XI	7	2006	10	151	0.19
7745	Ninja Gaiden 3	20	2012	9	1	0.19
7746	Metro: Last Light	15	2013	9	42	0.19
7747	Dragon Ball Z: Idainaru Dragon Ball Densetsu	13	1996	10	26	0.19
7748	Silent Hill HD Collection	5	2012	9	15	0.19
7749	Bound By Flame	11	2014	4	81	0.19
7750	Conflict: Denied Ops	5	2008	7	22	0.19
7751	Saw II: Flesh & Blood	6	2010	9	15	0.19
7752	Ice Age: Dawn of the Dinosaurs	6	2009	9	5	0.19
7753	Sniper Elite	7	2005	7	6	0.19
7754	Arc Rise Fantasia	1	2009	4	220	0.19
7755	Ni Hao, Kai-lan: Super Game Day	1	2009	6	3	0.19
7756	Kouchuu Ouja Mushi King: Greatest Champion e no Michi DS	4	2005	9	9	0.19
7757	Dynasty Warriors: Gundam 2	5	2008	9	26	0.19
7758	Petz Pony: Beauty Pageant	4	2009	8	6	0.19
7759	Parlor! Mini 4	8	1996	6	272	0.19
7760	Breath of Fire II	9	2001	4	6	0.19
7761	The Spiderwick Chronicles	1	2008	9	24	0.19
7762	Danganronpa 2: Goodbye Despair	17	2012	6	130	0.19
7763	Aliens vs Predator	15	2010	7	9	0.19
7764	Ice Age 2: The Meltdown	19	2006	2	24	0.19
7765	Steins;Gate	17	2011	11	153	0.19
7766	Enchanted Arms	5	2006	4	6	0.19
7767	Dinotopia: The Timestone Pirates	9	2002	9	273	0.19
7768	Power Pro Kun Pocket 12	4	2009	1	15	0.19
7769	J-League Jikkyou Winning Eleven 3	13	1997	1	15	0.19
7770	The Sims 4: Get Together	15	2015	8	8	0.19
7771	Jissen Pachi-Slot Hisshouhou	8	1993	6	101	0.19
7772	Pac-Man & Galaga Dimensions	10	2011	6	26	0.19
7773	Quantum Theory	6	2010	7	49	0.19
7774	Manhunt	14	2004	9	3	0.19
7775	NCAA Final Four 2003	7	2002	1	4	0.19
7776	Air Conflicts: Secret Wars	6	2011	8	274	0.19
7777	Rio	1	2011	6	29	0.19
7778	Dream Salon	4	2009	6	87	0.19
7779	Scene It? Twilight	4	2010	6	15	0.19
7780	Disgaea DS	4	2008	4	17	0.19
7781	Peter Jackson's King Kong: The Official Game of the Movie	17	2005	9	6	0.19
7782	Space Invaders Extreme 2	4	2009	7	17	0.19
7783	X-Men Origins: Wolverine	17	2009	9	5	0.19
7784	Great Phoenix Wright: Ace Attorney - Naruhodou Ryuunosuke no Bouken	10	2015	9	13	0.19
7785	Mystery Tales of Time Travel	4	2010	5	275	0.19
7786	J-League Excite Stage '96	8	1996	1	175	0.19
7787	Risen	5	2009	4	42	0.19
7788	Hidden Mysteries: Vampire Secrets	4	2010	11	276	0.19
7789	New Love Plus	10	2012	8	15	0.19
7790	Final Fantasy XI	5	2006	4	17	0.19
7791	Breath of Fire: Dragon Quarter	7	2002	4	13	0.19
7792	Jikkyou J-League Perfect Striker	12	1996	1	15	0.19
7793	Dante's Inferno	17	2010	9	8	0.19
7794	Shrek: Forever After	6	2010	2	5	0.19
7795	Rock Band Country Track Pack	6	2009	6	32	0.19
7796	Super Robot Taisen: Scramble Commander	7	2003	12	58	0.19
7797	Re-Volt	13	1998	3	31	0.19
7798	Conception II: Children of the Seven Stars	23	2013	4	185	0.19
7799	Descent	13	1996	7	118	0.19
7800	Supreme Commander 2	15	2010	12	17	0.19
7801	DanceMasters	5	2010	6	15	0.19
7802	50 Cent: Blood on the Sand	6	2009	7	29	0.19
7803	Disney's Magical Mirror Starring Mickey Mouse	19	2002	11	1	0.19
7804	Need for Speed: The Run	10	2011	9	8	0.19
7805	Jeep Thrills	1	2008	3	87	0.19
7806	Conflict: Denied Ops	6	2008	7	22	0.19
7807	FaceBreaker	5	2008	10	8	0.19
7808	Major League Baseball 2K12	6	2012	1	3	0.19
7809	Might & Magic: Clash of Heroes	4	2009	4	6	0.19
7810	Avatar: The Last Airbender - Into the Inferno	1	2008	11	29	0.19
7811	IHRA Professional Drag Racing 2005	7	2004	3	7	0.19
7812	Mace Griffin: Bounty Hunter	7	2003	7	8	0.19
7813	Legacy of Kain: Defiance	14	2003	9	22	0.19
7814	Story of Seasons: Good Friends of the Three Villages	10	2016	8	220	0.19
7815	Chaotic: Shadow Warriors	1	2009	9	5	0.19
7816	Majin and the Forsaken Kingdom	5	2010	11	26	0.19
7817	Trivial Pursuit unhinged	7	2004	6	11	0.19
7818	Tales of the World: Narikiri Dungeon 2	9	2002	4	26	0.19
7819	Spider-Man: Shattered Dimensions	4	2010	9	5	0.19
7820	Aliens versus Predator: Extinction	7	2003	12	8	0.19
7821	Plants vs. Zombies	6	2011	12	208	0.19
7822	NBA Live 14	18	2013	1	8	0.19
7823	Silent Scope 2: Dark Silhouette	7	2001	7	15	0.19
7824	Dave Mirra Freestyle BMX 2	9	2001	1	31	0.19
7825	Jikkyou Powerful Pro Yakyuu '96 Kaimakuban	8	1996	1	15	0.19
7826	Tokimeki Memorial Girl's Side 3rd Story	4	2010	11	15	0.19
7827	NHL Hitz Pro	7	2003	1	40	0.19
7828	Tom Clancy's Splinter Cell: Blacklist	15	2013	9	6	0.19
7829	Allied General	13	1996	12	277	0.19
7830	Fire ProWrestling G	13	1999	10	190	0.19
7831	Kamen Rider: Battride War	6	2013	9	26	0.19
7832	Binary Domain	5	2012	9	9	0.19
7833	IL-2 Sturmovik: Birds of Prey	17	2009	8	12	0.19
7834	Farming Simulator 2015	18	2015	8	102	0.19
7835	Armored Core: For Answer	6	2008	8	6	0.19
7836	Mahjong: Journey Quest for Tikal	4	2008	5	142	0.19
7837	uDraw Studio: Instant Artist	1	2011	6	29	0.19
7838	Naruto: Ninja Destiny	4	2006	10	26	0.19
7839	GunGriffon	24	1995	8	9	0.19
7840	SingStar Pop Vol.2	7	2008	6	4	0.19
7841	SNK Arcade Classics Vol. 1	7	2008	6	151	0.19
7842	Darkstalkers 3	13	1998	10	13	0.19
7843	SpongeBob's Surf & Skate Roadtrip	5	2011	9	29	0.19
7844	Frequency	7	2001	6	4	0.19
7845	Death Jr.	17	2005	2	15	0.19
7846	Cars: Race-O-Rama	6	2009	3	29	0.19
7847	Inazuma Eleven Strikers 2012 Xtreme	1	2011	4	38	0.19
7848	The Polar Express	9	2004	11	29	0.19
7849	2002 FIFA World Cup	14	2002	1	8	0.19
7850	Kan Colle Kai	23	2016	9	278	0.19
7851	SpongeBob SquigglePants 3D	10	2011	6	29	0.19
7852	Jampack: Summer 2003 (RP-T)	7	2003	6	4	0.19
7853	Need for Speed: Shift 2 Unleashed	15	2011	3	8	0.19
7854	Monster 4x4: Stunt Racer	1	2009	3	6	0.19
7855	Frogger's Adventures 2: The Lost Wand	9	2002	11	15	0.19
7856	Sudeki	14	2004	4	2	0.19
7857	Rango: The Video Game	6	2011	9	8	0.19
7858	The Amazing Spider-Man (Console Version)	10	2012	9	5	0.19
7951	Call of Duty: World at War	15	2008	7	5	0.19
7859	Boku no Natsuyasumi 4: Seitouchi Shounen Tanteidan, Boku to Himitsu no Chizu	17	2009	11	4	0.19
7860	Hyperdevotion Noire: Goddess Black Heart	23	2014	4	279	0.19
7861	Hexen	12	1996	7	14	0.19
7862	Mace: The Dark Age	12	1997	10	14	0.19
7863	AeroFighters Assault	12	1997	9	62	0.19
7864	Puyo Puyo Sun 64	12	1997	5	92	0.19
7865	Chou-Kuukan Night Pro Yakyuu King (weekly JP sales)	12	1996	1	157	0.19
7866	Quake	12	1998	7	14	0.19
7867	Sesame Street: Elmo's Number Journey	12	1999	6	215	0.19
7868	Disney Magic World 2	10	2015	9	1	0.19
7869	Squeeballs Party	1	2009	5	280	0.19
7870	Tottadoo! Yoiko no Mujintou Seikatsu	4	2008	11	26	0.19
7871	Where's Waldo? The Fantastic Journey	1	2009	11	6	0.19
7872	Family Game Night 4: The Game Show	1	2011	6	8	0.19
7873	Teenage Mutant Ninja Turtles 2: Battle Nexus	19	2004	9	15	0.19
7874	Saints Row IV	15	2013	9	42	0.19
7875	Fighter Within	18	2013	10	6	0.19
7876	Barbie Horse Adventures: Riding Camp	7	2008	1	5	0.19
7877	SSX Tricky	9	2002	1	8	0.19
7878	Kenka Banchou 4: Ichinen Sensou	17	2010	9	130	0.19
7879	Warhammer: Shadow of the Horned Rat	13	1996	12	52	0.19
7880	Shadows of the Damned	5	2011	9	8	0.19
7881	NBA 2K11	15	2010	9	3	0.19
7882	Pro Yakyuu Team o Tsukurou!	4	2008	1	9	0.19
7883	Warriors: Legends of Troy	6	2011	9	49	0.19
7884	Jeopardy!	4	2010	6	29	0.19
7885	ESPN International Track & Field	7	2000	1	15	0.19
7886	Lunar Legend	9	2002	4	198	0.19
7887	Conflict: Global Terror	7	2005	7	22	0.19
7888	Valhalla Knights 3	23	2013	4	156	0.19
7889	Tamagotchi Party On!	1	2006	6	26	0.19
7890	Hisshou Pachinko*Pachi-Slot Kouryaku Series Vol. 5: CR Shinseiki Evangelion * Pachi-Slot Shinseiki Evangelion	7	2006	6	59	0.19
7891	Brunswick Pro Bowling	6	2010	1	12	0.19
7892	Shaun White Skateboarding	6	2010	1	6	0.19
7893	Hulk	19	2003	9	21	0.19
7894	The Heavy Rain and Beyond: Two Souls Collection	11	2016	9	4	0.19
7895	Cabela's Survival: Shadows of Katmai	6	2011	1	5	0.19
7896	Shaun White Skateboarding	1	2010	1	6	0.19
7897	Boogie	7	2007	6	8	0.19
7898	Gungrave	7	2002	7	5	0.19
7899	Phantasy Star Universe	7	2006	4	9	0.19
7900	Transworld Surf	7	2002	1	11	0.19
7901	God Eater Resurrection	23	2015	9	26	0.19
7902	Tenchu: Fatal Shadows	7	2004	9	9	0.19
7903	Active Health with Carol Vorderman	4	2009	1	1	0.19
7904	Escape The Museum	4	2010	11	276	0.19
7905	The Legend of Spyro: A New Beginning	19	2006	2	24	0.19
7906	International Soccer	16	1981	1	140	0.19
7907	Sing4: The Hits Edition	1	2011	6	68	0.19
7908	Jewel Master: Cradle of Athena	4	2010	5	216	0.19
7909	Princess Maker: Yumemiru Yosei	13	1997	12	4	0.19
7910	Pet Zombies	10		8	35	0.19
7911	Big Air	13	1999	1	76	0.19
7912	Shining Force II	21	1993	12	9	0.19
7913	Gallop Racer	13	1999	1	49	0.19
7914	Harry Potter and the Prisoner of Azkaban	14	2004	9	8	0.19
7915	NASCAR Unleashed	10	2011	3	5	0.19
7916	3rd Super Robot Wars Z Jigoku Hen	23	2014	4	26	0.19
7917	Sudoku Gridmaster (JP sales)	4	2006	5	1	0.19
7918	Dynasty Warriors Gundam	5	2007	9	26	0.19
7919	Taiko no Tatsujin: Wii U Version!	20	2013	6	26	0.19
7920	Monsters vs. Aliens	7	2009	9	5	0.19
7921	CSI: Fatal Conspiracy	6	2010	11	6	0.19
7922	College Slam	13	1995	1	31	0.19
7923	Arcania: Gothic 4	15	2010	4	259	0.19
7924	Mushroom Men: The Spore Wars	1	2008	9	84	0.19
7925	Zumba Fitness Rush	5	2012	1	12	0.19
7926	Pro Yaky? Spirits 4	7	2007	1	15	0.19
7927	Pictionary	4	2010	5	29	0.19
7928	SoulCalibur Legends	1	2007	9	26	0.19
7929	Daigasso! Band Brothers	4	2004	6	1	0.19
7930	Rise of the Kasai	7	2005	9	4	0.19
7931	Thoroughbred Breeder	8	1993	8	234	0.19
7932	F1 2011	15	2011	3	36	0.19
7933	Momotarou Dentetsu World	4	2010	6	69	0.19
7934	Nobunaga no Yabou: Souzou	6	2013	12	49	0.19
7935	Doctor Who: Return to Earth	1	2010	11	281	0.19
7936	The Munchables	1	2009	9	26	0.19
7937	We Dance	1	2011	6	125	0.19
7938	Chibi-Robo! Park Patrol	4	2007	11	54	0.19
7939	Bolt	6	2008	11	33	0.19
7940	Singstar: Ultimate Party	11	2014	6	16	0.19
7941	Mathews Bowhunting	1	2010	1	75	0.19
7942	3rd Super Robot Wars Z: Tengoku-Hen	23	2015	9	26	0.19
7943	One Piece: Unlimited Adventure	1	2007	11	26	0.19
7944	Remington Super Slam Hunting: North America	1	2010	1	178	0.19
7945	Crash & Spyro Superpack	9	2005	2	24	0.19
7946	Earth Defense Force: Insect Armageddon	5	2011	7	59	0.19
7947	Face Training	4	2007	6	1	0.19
7948	Star Trek: Legacy	5		8	6	0.19
7949	ThunderStrike 2	13	1994	8	282	0.19
7950	Disney's Meet the Robinsons	1	2007	9	33	0.19
7952	Pro Yaky? Spirits 2012	6	2012	1	15	0.19
7953	Kuma-Tomo	10	2013	6	26	0.19
7954	Super Real Mahjong P V	24	1995	6	260	0.19
7955	Thomas the Tank Engine & Friends	9	2004	11	34	0.19
7956	Grand Slam Tennis 2	5	2012	1	8	0.19
7957	Penguin no Mondai X: Tenkuu no 7 Senshi	4	2009	9	15	0.19
7958	The Scorpion King: Sword of Osiris	9	2002	9	24	0.19
7959	Bubsy 3D	13	1996	2	76	0.19
7960	Reel Fishing Paradise 3D	10	2011	1	220	0.19
7961	NCAA Final Four 2001	7	2000	1	4	0.19
7962	Farmtopia	4	2010	8	12	0.19
7963	Robin Hood: Defender of the Crown	7	2003	12	13	0.19
7964	SD Gundam GX	8	1994	12	26	0.19
7965	R-Type Final	7	2003	7	139	0.19
7966	Jackie Chan Adventures: Legend of the Dark Hand	9	2001	9	5	0.19
7967	MotoGP	1	2009	3	13	0.19
7968	Sega GT 2002	14	2002	3	9	0.19
7969	Ty the Tasmanian Tiger 3: Night of the Quinkan	7	2005	9	5	0.19
7970	WWE SmackDown vs. Raw 2009	4	2008	10	29	0.19
7971	Pro Evolution Soccer 2014	10	2013	9	15	0.19
7972	Samurai Warriors 2: Empires	7	2006	9	49	0.19
7973	Blood Omen 2	14	2002	9	22	0.19
7974	Jurassic: The Hunted	6	2009	7	5	0.19
7975	J-League Pro Soccer Club o Tsukurou! 5	7	2007	1	9	0.19
7976	Harry Potter: Quidditch World Cup	14	2003	1	8	0.19
7977	Dance Central: Spotlight	18	2014	6	2	0.19
7978	Little Battlers eXperience W	17	2012	4	38	0.19
7979	Magical Starsign (US sales)	4	2006	4	1	0.19
7980	Tekken Tag Tournament 2	20	2012	10	26	0.19
7981	Hot Wheels: Battle Force 5	1	2009	3	5	0.19
7982	Dragon Blade: Wrath of Fire	1	2007	9	59	0.19
7983	La Pucelle: Tactics	7	2002	4	49	0.19
7984	Phantasy Star Nova	23	2014	4	9	0.19
7985	SBK X: Superbike World Championship	5	2010	3	194	0.19
7986	Samurai Warriors: State of War	17	2005	9	49	0.19
7987	Tiger Woods PGA Tour 07	14	2006	1	8	0.19
7988	Call of Juarez	5	2007	7	6	0.19
7989	Star Wars: The Clone Wars & Tetris Worlds	14	2002	6	2	0.19
7990	The Bee Game	4	2007	11	40	0.19
7991	EverQuest Online Adventures: Frontiers	7	2003	4	77	0.19
7992	Cabela's Survival: Shadows of Katmai	5	2011	1	5	0.19
7993	NBA Ballers: Chosen One	5	2008	1	40	0.19
7994	WWE All Stars	17	2011	10	29	0.19
7995	Treasures of the Deep	13	1997	9	26	0.19
7996	Phantasy Star Online Ver. 2	22	2001	4	9	0.19
7997	EyePet & Friends	6	2011	8	4	0.19
7998	The Lord of the Rings: War in the North	15	2011	9	20	0.18
7999	Major League Baseball 2K10	6	2010	1	3	0.18
8000	Fight Club	7	2004	10	24	0.18
8001	Hello Kitty: Birthday Adventures	4	2010	11	26	0.18
8002	Syndicate	5	2012	7	8	0.18
8003	Dance Dance Revolution: Disney Grooves	1	2009	8	15	0.18
8004	Pure Futbol	5	2010	1	6	0.18
8005	Harvest Moon: A Wonderful Life Special Edition	7	2004	8	12	0.18
8006	Sports Illustrated for Kids: Football	9	2003	1	176	0.18
8007	The Last Airbender	4	2010	9	29	0.18
8008	Happy Cooking	4	2006	8	6	0.18
8009	.hack//Quarantine Part 4: The Final Chapter	7	2003	4	11	0.18
8010	Close Combat: First to Fight	14	2005	7	3	0.18
8011	MotoGP 14	11	2014	3	257	0.18
8012	Indiana Jones and the Emperor's Tomb	14	2003	9	18	0.18
8013	NBA Live 08	1	2007	1	8	0.18
8014	Buffy the Vampire Slayer: Chaos Bleeds	7	2003	9	24	0.18
8015	Half-Minute Hero	17	2009	4	71	0.18
8016	Rock Band Track Pack Volume 2	5	2008	6	32	0.18
8017	Reel Fishing II	13	2000	1	249	0.18
8018	Ringling Bros. and Barnum & Bailey Circus	1	2009	9	3	0.18
8019	The Walking Dead: Season One	23	2013	11	17	0.18
8020	Ty the Tasmanian Tiger	14	2002	2	8	0.18
8021	Dead or Alive	24	1997	10	49	0.18
8022	Driving Emotion Type-S	7	2000	3	8	0.18
8023	Siren	7	2003	11	4	0.18
8024	The Chronicles of Narnia: The Lion, The Witch and The Wardrobe	4	2005	9	33	0.18
8025	NARC	14	2005	7	40	0.18
8026	Naruto Shippuden: Dragon Blade Chronicles	1	2009	9	12	0.18
8027	Dynasty Warriors 8: Empires	11	2014	9	49	0.18
8028	Super Robot Taisen J	9	2005	12	58	0.18
8029	Evolve	15	2015	7	3	0.18
8030	Nep League DS	4	2007	1	163	0.18
8031	Ar tonelico 2: Melody of Metafalica	7	2007	4	132	0.18
8032	de Blob 2	1	2011	2	29	0.18
8033	Lips: Party Classics	5	2010	6	2	0.18
8034	Casper: Friends Around the World	13	2000	9	273	0.18
8035	Borderlands	15	2009	7	3	0.18
8036	Jurassic Park III: Island Attack	9	2001	11	15	0.18
8037	Chaotic: Shadow Warriors	4	2009	9	5	0.18
8038	Ghostbusters: The Video Game	17	2009	9	11	0.18
8039	GameBoy Wars	3	1991	12	1	0.18
8040	Amplitude	7	2003	6	4	0.18
8041	Alone in the Dark	1	2008	11	11	0.18
8042	Company of Heroes: Anthology	15	2009	12	29	0.18
8043	Shape Up	18	2014	6	6	0.18
8044	Gauntlet: Seven Sorrows	14	2005	4	40	0.18
8045	AirForce Delta Storm	14	2001	7	15	0.18
8046	Trauma Team	1		8	54	0.18
8047	Monopoly Party	14	2002	6	53	0.18
8048	Fear Effect 2: Retro Helix	13	2001	9	22	0.18
8049	How to Train Your Dragon	6	2010	9	5	0.18
8050	Remember Me	5	2013	9	13	0.18
8051	International Superstar Soccer 2000 (JP weekly sales)	12	1999	1	15	0.18
8052	Chocobo no Fushigi Dungeon for WonderSwan	26	1999	4	26	0.18
8053	Klonoa: Door to Phantomile	13	1997	2	4	0.18
8054	Vietcong: Purple Haze	7	2004	7	214	0.18
8055	Hitman: HD Trilogy	5	2013	9	17	0.18
8056	Atari Anniversary Advance	9	2002	6	11	0.18
8057	Summer Athletics: The Ultimate Challenge	7	2008	1	233	0.18
8058	Driver: San Francisco	15	2011	3	6	0.18
8059	Metal Gear Ac!d 2	17	2005	12	15	0.18
8060	Hatsune Miku and Future Stars: Project Mirai	10	2012	6	9	0.18
8061	Let's TAP	1	2008	6	9	0.18
8062	X-Men Origins: Wolverine	7	2009	9	5	0.18
8063	TalkMan (Japan)	17	2005	6	4	0.18
8064	Cabela's Adventure Camp	1	2011	6	5	0.18
8065	LEGO Marvel's Avengers	10	2016	9	20	0.18
8066	Bloody Roar: Primal Fury	19	2002	10	5	0.18
8067	Shrek SuperSlam	4	2005	9	5	0.18
8068	We Sing UK Hits	1	2011	6	125	0.18
8069	Mega Man Soccer	8	1993	1	13	0.18
8070	The Chronicles of Narnia: Prince Caspian	5	2008	9	33	0.18
8071	ZhuZhu Puppies	4	2011	8	5	0.18
8072	Rabbids Party Collection	1	2010	6	6	0.18
8073	Trinity Universe	6	2009	4	132	0.18
8074	Jewel Match	4	2010	5	283	0.18
8075	FIFA Soccer 07	19	2006	1	8	0.18
8076	Dungeon Travelers 2: The Royal Library & The Monster Seal	23	2014	4	72	0.18
8077	Dying Light	15	2015	9	20	0.18
8078	Vampire Savior: The Lord of Vampire	24	1998	10	13	0.18
8079	Pokémon I Choose You / Squirtle Squad Game Boy Advance Video	9	2004	6	1	0.18
8080	Super Robot Taisen UX	10	2013	4	26	0.18
8081	Six Flags Fun Park	4	2008	6	206	0.18
8082	Test Drive Off-Road Wide Open	14	2001	3	53	0.18
8083	Guilty Gear Xrd: Sign	6	2014	10	224	0.18
8084	Pro Yaky? Spirits 2011	6	2011	1	15	0.18
8085	Ben 10 Ultimate Alien: Cosmic Destruction	5	2010	2	59	0.18
8086	Dengeki Bunko Fighting Climax	23	2014	10	9	0.18
8087	Battle Commander: Hachibushu Shura no Heihou	8	1991	12	58	0.18
8088	Backbreaker	5		1	54	0.18
8089	Odin Sphere: Leifthrasir	11	2016	4	132	0.18
8090	Bad Boys: Miami Takedown	14	2004	7	90	0.18
8091	Jampack Vol. 1	13	1996	6	4	0.18
8092	Spider-Man: Friend or Foe	17	2007	9	5	0.18
8093	Mega Man X: Command Mission	7	2004	4	13	0.18
8094	Tokyo Xtreme Racer DRIFT	7	2003	3	106	0.18
8095	Moon	13	1997	11	51	0.18
8096	FIFA Soccer 11	15	2010	1	8	0.18
8097	LEGO Marvel Super Heroes	15	2013	9	20	0.18
8098	Cabela's Big Game Hunter 2005 Adventures	14	2004	1	5	0.18
8099	Disney Friends	4	2007	8	33	0.18
8100	Sesame Street: Elmo's Letter Adventure	12	1999	6	215	0.18
8101	Re-Volt	12	1999	3	31	0.18
8102	Gokujou Parodius	8	1994	7	15	0.18
8103	Hyperdimension Neptunia	23	2013	4	266	0.18
8104	Gauntlet: Dark Legacy	19	2002	9	40	0.18
8105	A.C.E.: Another Century's Episode 2	7	2006	8	58	0.18
8106	Guitar Hero Live	20	2015	6	5	0.18
8107	Shadow The Hedgehog	14	2005	2	9	0.18
8108	Ridge Racer Unbounded	6	2012	3	26	0.18
8109	Burnout Legends	4	2005	3	8	0.18
8110	Horrid Henry: Missions of Mischief	4	2010	11	84	0.18
8111	Batman: Vengeance	9	2001	11	6	0.18
8112	Full Auto 2: Battlelines	6	2006	3	9	0.18
8113	Soccer Tsuku Tokudai Gou: J-League Pro Soccer Club o Tsukurou	22	2000	1	9	0.18
8114	The Adventures of Cookie & Cream	7	2000	5	90	0.18
8115	Van Helsing	14	2007	9	5	0.18
8116	Aliens: Colonial Marines	15	2013	7	9	0.18
8117	Splatterhouse	5	2010	9	26	0.18
8118	MindJack	6	2011	7	17	0.18
8119	Dark Souls II	15	2014	4	26	0.18
8120	Daigasso! Band Brothers P	10	2013	6	1	0.18
8121	Gun	19	2005	7	5	0.18
8122	World of Outlaws: Sprint Cars	5	2010	3	29	0.18
8123	Marvel Super Hero Squad: Comic Combat	5	2011	9	29	0.18
8124	SingStar Motown	6	2009	6	4	0.18
8125	Cabela's Legendary Adventures	1	2008	1	5	0.18
8126	F1 Challenge	24	1994	3	9	0.18
8127	Transformers: Dark of the Moon	1	2011	9	5	0.18
8128	Shadow Madness	13	1999	9	68	0.18
8129	Tom Clancy's Ghost Recon: Future Soldier	15	2012	7	6	0.18
8130	Tiger Woods PGA Tour 2004	9	2003	1	8	0.18
8131	Aliens: Infestation	4	2011	9	9	0.18
8132	Brink	15	2011	7	7	0.18
8133	The Game of Life / Yahtzee / Payday	9	2005	6	87	0.18
8134	American Chopper 2: Full Throttle	7	2005	3	87	0.18
8135	Dynasty Warriors: Gundam 3	5	2010	9	49	0.18
8137	Silent Hill 4: The Room	14	2004	9	15	0.18
8138	Heavy Fire: Afghanistan	6	2011	7	54	0.18
8139	Commandos 2: Men of Courage	7	2002	12	22	0.18
8140	Doom (2016)	15	2016	7	7	0.18
8141	Chuck E. Cheese's Party Games	4	2010	6	284	0.18
8142	Pro Evolution Soccer 2013	10	2012	1	15	0.18
8143	Pirates: Hunt For Blackbeard's Booty	1	2008	11	5	0.18
8144	FIFA Soccer 2002	19	2001	1	8	0.18
8145	Godzilla (2015)	11	2014	9	26	0.18
8146	Race Pro	5	2009	3	11	0.18
8147	Atari Anniversary Edition Redux	13	2000	6	53	0.18
8148	Toukiden: The Age of Demons	17	2013	9	49	0.18
8149	Fireblade	7	2002	9	40	0.18
8150	Mercury Meltdown Revolution	1	2007	9	151	0.18
8151	Disney's Tarzan Untamed	19	2001	2	6	0.18
8152	WordJong Party	1	2008	5	154	0.18
8153	Brunswick Circuit Pro Bowling	13	1998	1	29	0.18
8154	Cabela's Dangerous Hunts 2009	7	2008	1	57	0.18
8155	Velvet Assassin	5	2009	7	233	0.18
8156	Ball Breakers	13	2000	9	3	0.18
8157	Mobile Suit Gundam Seed Destiny: Generation of C.E.	7	2005	9	26	0.18
8158	EyeToy: Groove	7	2003	6	4	0.18
8159	Twisted Metal: Small Brawl	13		9	54	0.18
8160	Disgaea 4: A Promise Unforgotten	23	2014	4	132	0.18
8161	Charlie and the Chocolate Factory	19	2005	11	64	0.18
8162	Armored Core: Last Raven	7	2005	8	12	0.18
8163	Tomb Raider: Underworld	7	2009	9	22	0.18
8164	All Grown Up! Express Yourself	9	2004	6	29	0.18
8165	College Hoops 2K7	6	2007	1	3	0.18
8166	K-1 World Grand Prix	7	2002	1	15	0.18
8167	Skate it	4	2008	1	8	0.18
8168	Kidou Senshi Gundam: Senjou no Kizuna Portable	17	2009	12	26	0.18
8169	Otomedius Excellent	5		7	54	0.18
8170	Super Robot Taisen A Portable	17	2008	12	26	0.18
8171	Juiced	14	2005	3	29	0.18
8172	Looney Tunes: Back in Action	9	2003	2	8	0.18
8173	Virtua Tennis	9	2002	1	11	0.18
8174	Tales of the Tempest	4	2006	4	26	0.18
8175	SimCity Creator (JP sales)	4	2008	8	8	0.18
8176	Biohazard: Revival Selection	6	2011	9	13	0.18
8177	Sonic Riders: Zero Gravity	7	2008	3	9	0.18
8178	Driver: San Francisco	1	2011	3	6	0.18
8179	UFC: Sudden Impact	7	2004	10	64	0.18
8180	Shawn Johnson Gymnastics	1	2010	1	75	0.18
8181	NBA Hoopz	7	2001	1	40	0.18
8182	Captain America: Super Soldier	5	2011	9	9	0.18
8183	TRON: Evolution	4	2010	9	33	0.18
8184	Pac-Man World 3	4	2005	2	26	0.18
8185	ESPN X Games Skateboarding	9	2001	1	15	0.18
8186	Nancy Drew: The Hidden Staircase	4	2008	11	29	0.18
8187	Brunswick Cosmic Bowling	1	2010	1	171	0.18
8188	Star Wars: Battlefront II	15	2005	7	18	0.18
8189	Speedball 2100	13	2000	1	90	0.18
8190	LEGO Island 2: The Brickster's Revenge	13	2001	11	133	0.18
8191	College Hoops 2K8	5	2007	1	3	0.18
8192	FIFA 17	5	2016	1	8	0.18
8193	Fancy Nancy: Tea Party Time!	4	2010	11	29	0.18
8194	Backyard Basketball	9	2004	1	11	0.18
8195	Madden NFL 09	14	2008	1	8	0.18
8196	Scooby-Doo! Unmasked	9	2005	2	29	0.18
8197	Summon Night 4	7	2006	4	58	0.18
8198	Pro Yaky? Spirits 5	7	2008	1	15	0.18
8199	NHL 2004	14	2003	1	8	0.18
8200	Namco Museum: 50th Anniversary	14	2005	6	26	0.18
8201	You Don't Know Jack	6	2011	6	29	0.18
8202	Marvel Super Hero Squad: The Infinity Gauntlet	6	2010	9	29	0.18
8203	NFL 2K2	14	2002	1	9	0.18
8204	My French Coach	4	2007	6	6	0.18
8205	Camp Rock: The Final Jam	4	2010	6	33	0.18
8206	NBA Starting Five	7		1	54	0.18
8207	Castlevania Judgment	1	2008	10	15	0.18
8208	Dead or Alive Paradise	17	2010	6	116	0.17
8209	The Suffering: Ties That Bind	7	2005	9	40	0.17
8210	Disney Sing It: Family Hits	6	2010	6	33	0.17
8211	Ashes Cricket 2009	6	2009	1	36	0.17
8212	EyeToy: Kinetic	7	2005	1	4	0.17
8213	Petz: Horseshoe Ranch	4	2009	11	6	0.17
8214	Army Men: Sarge's Heroes 2	7	2001	7	162	0.17
8215	Stormrise	6	2009	12	9	0.17
8216	Yu-Gi-Oh! Zexal World Duel Carnival	10	2013	6	15	0.17
8217	Winning Eleven: Pro Evolution Soccer 2007	4	2006	1	15	0.17
8218	Green Lantern: Rise of the Manhunters	6	2011	9	20	0.17
8219	Monkey Island: Special Edition Collection	15	2011	11	18	0.17
8220	Broken Sword: Shadows of the Templars - The Director's Cut	4	2009	11	6	0.17
8221	The Wild Thornberrys: Animal Adventures	13	2000	11	140	0.17
8222	MotoGP 10/11	6	2011	3	13	0.17
8223	Jikkyou Powerful Pro Baseball 2016	23	2016	1	15	0.17
8224	SEGA Bass Fishing Duel	7	2002	1	9	0.17
8225	Teen Titans	9		9	54	0.17
8226	Hyperdimension Neptunia U: Action Unleashed	23	2014	9	285	0.17
8227	Sports Illustrated for Kids: Baseball	9	2001	1	176	0.17
8228	Fairytale Fights	6	2009	9	286	0.17
8229	Mark Davis Pro Bass Challenge	7	2002	1	80	0.17
8230	Rugrats: Royal Ransom	19	2002	2	29	0.17
8231	Warriors of Might and Magic	7	2001	11	78	0.17
8232	Open Season	19	2006	2	6	0.17
8233	The Chronicles of Narnia: Prince Caspian	6	2008	9	33	0.17
8234	Back to the Future: The Game	11	2015	11	174	0.17
8235	Project Spark	18	2014	6	2	0.17
8236	Backyard Sports Football: Rookie Rush	4	2010	1	11	0.17
8237	Street Fighter: The Movie	13	1995	10	31	0.17
8238	Lost in Blue 3	4	2007	11	15	0.17
8239	World Championship Poker	9	2004	6	68	0.17
8240	Global Defence Force	7	2005	7	287	0.17
8241	Rapala Fishing Frenzy 2009	6	2008	1	5	0.17
8242	Major League Baseball 2K6	19	2006	1	3	0.17
8243	Major League Baseball 2K9	6	2009	1	130	0.17
8244	SaGa 2: Hihou Densetsu - Goddess of Destiny	4	2009	4	17	0.17
8245	Smash Court Tennis Pro Tournament	7	2002	1	4	0.17
8246	The Cursed Crusade	6	2011	9	233	0.17
8247	Super Robot Taisen L	4	2010	12	26	0.17
8248	The Grim Adventures of Billy & Mandy	19	2006	9	40	0.17
8249	NBA Inside Drive 2004	14	2003	1	2	0.17
8250	The King of Fighters '97	13	1998	10	244	0.17
8251	Dungeon Siege III	15	2011	4	17	0.17
8252	Cabela's Big Game Hunter: Hunting Party	5	2011	1	5	0.17
8253	Time Commando	13	1996	9	288	0.17
8254	Professional Fisherman's Tour: Northern Hemisphere	4	2007	1	12	0.17
8255	Iron Chef America: Supreme Cuisine	1	2008	8	154	0.17
8256	Kekkaishi: Karasumori Ayakashi Kidan	4	2007	9	26	0.17
8257	Gretzky NHL 2005	7	2004	1	4	0.17
8258	FaceBreaker	6	2008	10	8	0.17
8259	Squeeballs Party	4	2009	5	280	0.17
8260	NCAA Football 09 All-Play	1	2008	1	8	0.17
8261	Yakuza Zero: The Place of Oath	11	2015	9	9	0.17
8262	The Hobbit	19	2003	2	24	0.17
8263	The Secret World	15	2012	4	289	0.17
8264	NHL 2K9	5	2008	1	3	0.17
8265	X-Men: The Official Game	5	2006	9	5	0.17
8266	True Crime: New York City	19	2005	9	5	0.17
8267	Metal Arms: Glitch in the System	14	2003	7	24	0.17
8268	PlayStation Move Heroes	6	2011	2	4	0.17
8269	The Idolm@ster: Shiny Festa - Honey Sound / Funky Note / Groovy Tune	17	2012	9	26	0.17
8270	Ice Age: Dawn of the Dinosaurs	7	2009	9	5	0.17
8271	ESPN Final Round Golf 2002	9	2001	1	15	0.17
8272	MDK2 Armageddon	7	2001	7	19	0.17
8273	Exhibition Volume 02	14	2003	6	2	0.17
8274	Watchmen: The End is Nigh - The Complete Experience	6	2009	9	20	0.17
8275	Fight Night Round 2	19	2005	10	8	0.17
8276	Sudoku Gridmaster	4	2006	5	1	0.17
8277	Disney's Atlantis: The Lost Empire	13	2001	2	4	0.17
8278	Power Pro Kun Pocket	3	1999	1	15	0.17
8279	The King of Fighters '97	24	1998	10	244	0.17
8280	Tamagotchi no Narikiri Challenge	4	2010	9	26	0.17
8281	Goosebumps HorrorLand	1	2008	11	117	0.17
8282	One Piece: Unlimited World Red	23	2014	9	26	0.17
8283	Space Battleship Yamato: Harukanaru Hoshi Iscandar	13	1999	12	26	0.17
8284	Sound Novel Evolution 1: Otogirisou Sosei-Hen	13	1999	11	120	0.17
8285	Dementium: The Ward	4	2007	7	84	0.17
8286	Psi-Ops: The Mindgate Conspiracy	14	2004	7	40	0.17
8287	SWAT: Global Strike Team	14	2003	7	24	0.17
8288	Despicable Me: The Game	17	2010	2	59	0.17
8289	MX World Tour Featuring Jamie Little	7	2005	3	98	0.17
8290	Goblin Commander: Unleash the Horde	7	2003	12	163	0.17
8291	Hello Kitty: Happy Party Pals	9	2005	6	29	0.17
8292	Ringling Bros. and Barnum & Bailey: Circus Friends	4	2009	9	3	0.17
8293	Backyard NFL Football '09	7	2008	1	11	0.17
8294	World Destruction League: Thunder Tanks	7	2000	9	78	0.17
8295	Shin Megami Tensei IV: Final	10	2016	4	42	0.17
8296	Age of Empires III: Complete Collection	15	2009	12	2	0.17
8297	Finding Nemo: Escape to the Big Blue	4	2006	9	29	0.17
8298	Backyard Baseball '10	7	2009	1	11	0.17
8299	Resident Evil Director's Cut: Dual Shock Edition	13	1997	9	13	0.17
8300	The Lord of the Rings: Aragorn's Quest	6	2010	9	20	0.17
8301	Top Spin 2	5	2006	1	3	0.17
8302	N3 II: Ninety-Nine Nights	5	2010	9	2	0.17
8303	The King of Fighters '95	13	1996	10	4	0.17
8304	RoadKill	7	2003	9	40	0.17
8305	Hanjuku Eiyuu Tai 3D	7	2003	4	17	0.17
8306	.hack//G.U. Vol.3//Redemption	7	2007	4	26	0.17
8307	Chuck E. Cheese's Party Games	1	2010	6	284	0.17
8308	Super Robot Taisen Compact 2 Dai-1-Bu	26	2000	12	26	0.17
8309	Looney Tunes: Back in Action	19	2003	2	20	0.17
8310	Tak: The Great Juju Challenge	9	2005	2	29	0.17
8311	Macross Ultimate Frontier	17	2009	9	26	0.17
8312	Cabela's Legendary Adventures	17	2008	1	5	0.17
8313	Jillian Michaels Fitness Ultimatum 2011	1	2010	1	59	0.17
8314	Pursuit Force: Extreme Justice	17	2007	9	4	0.17
8315	Backbreaker	6		1	54	0.17
8316	Hunter: The Reckoning Redeemer	14	2003	9	118	0.17
8317	The Rise of the Argonauts	5	2008	4	36	0.17
8319	Pro Evolution Soccer 2014	17	2013	9	15	0.17
8320	Tokyo Xtreme Racer	22	1999	3	106	0.17
8321	Fighter Maker	13	1998	10	95	0.17
8322	Bee Movie Game	5	2007	9	5	0.17
8323	Backyard NFL Football '10	1	2009	1	11	0.17
8324	Professor Heinz Wolff's Gravity	1	2008	5	42	0.17
8325	Thief: Deadly Shadows	14	2004	9	22	0.17
8326	Buzz! Brain of the UK	6	2009	6	4	0.17
8327	NBA 09: The Inside	17	2008	1	4	0.17
8328	Transformers: Prime	10	2012	9	5	0.17
8329	Batman Begins	9	2005	9	8	0.17
8330	Transformer: Rise of the Dark Spark	5	2014	9	5	0.17
8331	Glover	13	1999	2	11	0.17
8332	Dragon Ball GT: Game Boy Advance Video Volume 1	9	2004	6	34	0.17
8333	Luxor 3	1	2008	5	235	0.17
8334	Bratz Kidz	1	2008	6	103	0.17
8335	Fairytale Fights	5	2009	9	286	0.17
8336	James Cameron's Dark Angel	7		9	21	0.17
8337	MotoGP 09/10	5	2010	3	13	0.17
8338	Mahjong Fight Club	17	2004	6	15	0.17
8339	World Driver Championship	12	1999	3	40	0.17
8340	Bomberman 64: The Second Attack!	12	1999	11	69	0.17
8341	Turok 3: Shadow of Oblivion	12	2000	7	31	0.17
8342	Spawn: Armageddon	14	2003	9	8	0.17
8343	Codename: Kids Next Door: Game Boy Advance Video Volume 1	9	2004	6	34	0.17
8344	Zoo Hospital	1	2008	8	35	0.17
8345	Pokémon Beach Blank-out Blastoise / Go West Young Meowth Game Boy Advance Video	9	2004	6	1	0.17
8346	Time and Eternity	6	2012	4	132	0.17
8347	Major League Baseball 2K9	7	2009	1	130	0.17
8348	Gundam Assault Survive	17	2010	9	26	0.17
8349	Disney TH!NK Fast: The Ultimate Trivia Showdown	7	2008	6	33	0.17
8350	Fate/Stay Night [Réalta Nua]	7	2007	11	153	0.17
8351	Disney's Home on the Range	9	2004	9	33	0.17
8352	Sid Meier's Civilization IV	15	2005	12	3	0.17
8353	Jikkyou Powerful Pro Yakyuu 2013	17	2013	1	15	0.17
8354	Space Griffon VF-9	13	1995	4	290	0.17
8355	Family Feud Decades	1	2010	6	6	0.17
8356	NBA Live 16	11	2015	1	8	0.17
8357	CSI: Fatal Conspiracy	5	2010	11	6	0.17
8358	Solitaire Overload Plus	4	2010	6	183	0.17
8359	.hack//G.U. Vol.1//Rebirth	7	2006	4	26	0.17
8360	Gyakuten Saiban 3	9	2004	11	13	0.17
8361	Tak: Mojo Mistake	4	2008	9	29	0.17
8362	Gallop Racer 2001	7	2001	1	49	0.17
8363	Nightmare Creatures II	13	2000	9	15	0.17
8364	Marble Saga: Kororinpa	1	2009	5	15	0.17
8365	Fuzion Frenzy 2	5	2007	6	2	0.17
8366	Catwoman	7	2004	9	8	0.17
8367	Monsters vs. Aliens	5	2009	9	5	0.17
8368	Country Dance: All Stars	5	2012	9	171	0.17
8369	Garfield: Lasagna World Tour	7	2007	9	291	0.17
8370	Teenage Mutant Ninja Turtles: Game Boy Advance Video Volume 1	9	2004	6	34	0.17
8371	Disney's Planes	1	2013	8	33	0.17
8372	Bomberman Land	1	2007	6	71	0.17
8373	Bomberman B-Daman	8	1996	7	69	0.17
8374	Terminator 3: The Redemption	7	2004	7	11	0.17
8375	World Destruction League: Thunder Tanks	13	2000	9	78	0.17
8376	Beat Down: Fists of Vengeance	7	2005	9	13	0.17
8377	Reloaded	13	1996	9	264	0.17
8378	Sword of the Samurai	7		10	6	0.17
8379	MotoGP 15	11	2015	3	257	0.17
8380	SSX On Tour	19	2005	1	8	0.17
8381	Hot Wheels: Beat That!	5	2007	3	5	0.17
8382	G-Force	5	2009	9	33	0.17
8383	James Bond 007: Everything or Nothing	9	2003	7	8	0.17
8384	Naruto Shippuden: Ultimate Ninja 5	7	2007	10	26	0.17
8385	Shrek Extra Large	19	2002	2	73	0.17
8386	Final Fantasy V	13	1998	4	10	0.17
8387	World Tour Soccer 2006	7	2004	1	4	0.17
8388	Gunvalkyrie	14	2002	7	53	0.17
8389	NickToons: Racing	13	2001	3	28	0.17
8390	VR Golf '97	13	1996	1	264	0.17
8391	Michael Jackson: The Experience 3D	10	2011	6	6	0.17
8392	State of Emergency	14	2003	9	3	0.17
8393	Digimon Story: Cyber Sleuth	23	2015	4	26	0.17
8394	Off-World Interceptor Extreme	13	1995	3	111	0.17
8395	Bakugan Battle Brawlers: Defenders of the Core	1	2010	9	5	0.17
8396	Disney Golf	7	2002	1	8	0.17
8397	The Naked Brothers Band: The Video Game	7	2008	6	29	0.17
8398	Custom Robo Arena	4	2006	10	1	0.17
8399	Clock Tower II: The Struggle Within	13	1998	11	190	0.17
8400	Batman Beyond: Return of the Joker	13	2000	9	6	0.17
8401	Surf's Up	1	2007	1	6	0.17
8402	Jikkyou Powerful Pro Baseball 2016	11	2016	1	15	0.17
8403	Mega Man Network Transmission	19	2003	2	13	0.17
8404	I'm A Celebrity: Get Me Out of Here!	1	2009	6	52	0.17
8405	Pursuit Force	17	2005	3	4	0.17
8406	Densetsu no Stafi 4	4	2006	2	1	0.17
8407	Shin Megami Tensei: Devil Summoner 2 - Raidou Kuzunoha vs. King Abaddon (JP sales)	7	2008	4	72	0.17
8408	Naval Assault: The Killing Tide	5	2010	8	12	0.17
8409	Tokimeki Memorial: Private Collection	13	1996	6	15	0.17
8410	RC Revenge Pro	7	2000	3	31	0.17
8411	Valkyria Chronicles	11	2016	4	9	0.17
8412	Hellboy: The Science of Evil	6	2008	9	15	0.17
8413	Backyard Wrestling: Don't Try This at Home	14	2003	10	22	0.17
8414	Zoo Keeper	4	2004	5	151	0.17
8415	Gauntlet: Dark Legacy	14	2002	9	40	0.17
8416	Toukiden Kiwami	11	2015	9	49	0.17
8417	Far East of Eden II: Manji Maru	7	2003	4	69	0.17
8418	Lost Kingdoms	19	2002	4	5	0.17
8419	WRC 2: FIA World Rally Championship	6	2011	3	6	0.17
8420	Blood Bowl	5	2009	1	81	0.17
8421	Matchbox Cross Town Heroes	9	2002	3	29	0.17
8422	Wolfenstein 3D	9	2002	7	176	0.17
8423	Nobunaga no Yabou: Tenshoki	8	1996	12	49	0.17
8424	Learning to Spell	4	2010	6	12	0.17
8425	Go, Diego, Go! Safari Rescue	4	2007	11	3	0.17
8426	Super Power League	8	1993	1	69	0.17
8427	Easy Piano	4	2009	6	292	0.17
8428	Street Fighter Alpha 2	8	1996	10	1	0.17
8429	Dragon Quest X	10	2014	4	17	0.17
8430	Payday 2	18	2015	7	12	0.17
8431	25 to Life	14	2006	7	22	0.17
8432	Sumikko Gurashi: Koko ga Ochitsukundesu	10	2014	9	229	0.17
8433	NASCAR '15	5	2015	1	42	0.17
8434	TransFormers Animated: The Game	4	2008	9	5	0.17
8435	Fracture	6	2008	7	18	0.17
8436	Sega Superstars	7	2004	6	9	0.17
8437	Midway Arcade Treasures	19	2003	6	40	0.17
8438	Leisure Suit Larry: Magna Cum Laude	14	2004	11	24	0.17
8439	Mousetrap / Operation / Simon	9	2005	6	293	0.17
8440	Klonoa	1	2008	2	26	0.17
8441	Splatterhouse	6		9	26	0.17
8442	NBA 09: The Inside	7	2008	1	4	0.17
8443	Spyro: Shadow Legacy	4	2005	9	24	0.17
8444	Resident Evil	24	1997	9	13	0.17
8445	Wildstar	15	2014	4	44	0.17
8446	Dragon Ball: Fusions	10	2016	4	26	0.17
8447	Apache: Air Assault	5	2010	8	5	0.17
8448	TOEIC Test Training DS	4	2007	6	141	0.17
8449	Jikkyou Powerful Pro Yakyuu 2014	6	2014	1	15	0.17
8450	Senran Kagura: Estival Versus	11	2015	9	220	0.17
8451	Itoi Shigesato no Bass Tsuri No. 1	8	1997	1	1	0.17
8452	Cubivore: Survival of the Fittest	19	2002	11	1	0.17
8453	The Sims 3: Seasons	15	2012	8	8	0.17
8454	Anarchy Reigns	5	2012	9	9	0.17
8455	FlatOut	14	2004	3	90	0.17
8456	Project X Zone 2: Brave New World	10	2015	4	26	0.17
8457	NCAA Basketball 09	6	2008	1	8	0.17
8458	Bakugan Battle Brawlers: Defenders of the Core	6	2010	9	5	0.17
8459	Mr. Do!'s Castle	16	1983	9	46	0.17
8460	Death Trap	16	1982	9	294	0.17
8461	Armor Ambush	16	1981	9	140	0.17
8462	Parodius	24	1995	7	15	0.17
8463	Thrillville: Off the Rails	5	2007	12	18	0.16
8464	Hyperdimension Neptunia Victory	6	2012	4	266	0.16
8465	Taz Wanted	7	2002	2	11	0.16
8466	Mobile Suit Gundam: Extreme VS Force	23	2015	9	26	0.16
8467	Sid Meier's Pirates!	1	2010	12	3	0.16
8468	MLB 16: The Show	6	2016	9	4	0.16
8469	Phantasy Star Online 2	23	2013	4	9	0.16
8470	Vehicular Combat League presents Motor Mayhem	7	2001	3	11	0.16
8471	PoPoLoCrois: Hajimari no Bouken	7	2002	4	4	0.16
8472	Star Wars: Super Bombad Racing	7	2001	3	18	0.16
8473	Hamster Heroes	1	2008	5	295	0.16
8474	Hot Wheels Velocity X	9	2002	3	29	0.16
8475	Ar Nosurge: Ode to an Unborn Star	6	2014	4	49	0.16
8476	Chaotic: Shadow Warriors	6	2009	9	5	0.16
8477	Leisure Suit Larry: Box Office Bust	5	2009	11	36	0.16
8478	Alien Resurrection	13	2000	7	30	0.16
8479	World Tour Soccer 2005	7	2004	1	4	0.16
8480	Dungeon Siege: Throne of Agony	17	2006	4	3	0.16
8481	Spider-Man: Web of Shadows - Amazing Allies Edition	17	2008	9	5	0.16
8482	F1 2011	10	2011	3	36	0.16
8483	Rio	4	2011	6	29	0.16
8484	Gunslingers	1	2010	7	296	0.16
8485	Create	6	2010	9	8	0.16
8486	Lufia: Curse of the Sinistrals	4	2010	4	17	0.16
8487	El Shaddai: Ascension of the Metatron	5	2011	9	151	0.16
8488	ESPN College Hoops	7	2003	1	9	0.16
8489	Thor: God of Thunder	1	2011	9	9	0.16
8490	F1 Championship Season 2000	7	2000	3	8	0.16
8491	Guilty Gear Judgment	17	2006	10	35	0.16
8492	Pen 1 Grand Prix: Penguin no Mondai Special	4	2009	10	15	0.16
8493	Clash of the Titans	5	2010	9	26	0.16
8494	Around the World in 80 Days	4	2010	9	283	0.16
8495	Robotech: Battlecry	19	2002	7	73	0.16
8496	True Swing Golf	4	2005	1	1	0.16
8497	Zapper: One Wicked Cricket!	7	2002	2	53	0.16
8498	Bomberman Land	13	2000	6	69	0.16
8499	Paws & Claws: Pet Resort	9	2006	8	29	0.16
8500	Kya: Dark Lineage	7	2003	11	11	0.16
8501	Dynasty Warriors 8: Xtreme Legends	6	2013	9	49	0.16
8502	Curious George	9	2006	9	26	0.16
8503	Monster Jam	1	2007	3	5	0.16
8504	Medieval Games	1	2009	9	297	0.16
8505	Stronghold 3	15	2011	12	34	0.16
8506	The Amazing Spider-Man (Console Version)	1	2012	9	5	0.16
8507	Kid Adventures: Sky Captain	1	2010	9	54	0.16
8508	Lethal Skies II	7	2003	8	101	0.16
8509	Doctor Lautrec and the Forgotten Knights	10	2011	11	15	0.16
8510	Disney's American Dragon Jake Long: Attack of the Dark Dragon	4	2006	9	33	0.16
8511	Godzilla Unleashed	1	2007	10	11	0.16
8512	Kamaitachi no Yoru × 3	7	2006	11	9	0.16
8513	Tom and Jerry: Infurnal Escape	9	2003	9	6	0.16
8514	The Legend of Heroes VII: The Trail of Zero	17	2010	4	254	0.16
8515	Warriors Orochi 3	5	2011	9	116	0.16
8516	King's Field	13	1995	4	4	0.16
8517	Hannah Montana: Rock Out the Show	17	2009	6	33	0.16
8518	Let's Ride: Sunshine Stables	9	2005	1	233	0.16
8519	World Stadium 4	13	2000	1	26	0.16
8520	Midway Arcade Treasures 2	19	2004	6	40	0.16
8521	Hot Wheels World Race	19	2003	3	29	0.16
8522	San Goku Shi Taisen DS	4	2007	12	9	0.16
8523	Kawa no Nushi Tsuri	13	1998	1	249	0.16
8524	N2O: Nitrous Oxide	13	1998	3	264	0.16
8525	Magic: The Gathering - Battlegrounds	14	2003	12	11	0.16
8526	Heroes over Europe	6	2009	8	6	0.16
8527	Dancing With The Stars	7	2007	6	5	0.16
8528	Major League Baseball 2K12	1	2012	1	3	0.16
8529	Pro Evolution Soccer 2015	5	2014	1	15	0.16
8530	Bladestorm: Nightmare	11	2015	9	49	0.16
8531	Otogirisou	8	1992	11	120	0.16
8532	SD Gundam G Generation 3D	10	2011	4	26	0.16
8533	Crash Tag Team Racing	19	2005	3	24	0.16
8534	Grease Dance	5	2011	6	12	0.16
8535	Ready 2 Rumble Revolution	1	2009	1	11	0.16
8536	My Baby 3 & Friends	4	2010	8	35	0.16
8537	NASCAR '14	5	2014	3	42	0.16
8538	TimeSplitters: Future Perfect	14	2005	7	8	0.16
8539	Midway Arcade Treasures 3	7	2005	6	40	0.16
8540	Dr. Muto	7	2002	2	40	0.16
8541	Beowulf: The Game	6	2007	9	6	0.16
8542	Puzzle Quest: Galactrix	4	2009	5	59	0.16
8543	DS Rakubiki Jiten	4	2005	6	1	0.16
8544	SeaWorld Adventure Parks: Shamu's Deep Sea Adventure	7	2005	11	5	0.16
8545	Fatal Frame II: Crimson Butterfly	7	2003	9	6	0.16
8546	Angry Birds Trilogy	6	2012	9	5	0.16
8547	Dewy's Adventure	1	2007	2	15	0.16
8548	Shadow Man: 2econd Coming	7	2002	11	31	0.16
8549	Yu-Gi-Oh! 5D's Tag Force 6	17	2011	12	15	0.16
8550	NPPL: Championship Paintball 2009	6	2008	7	57	0.16
8551	Dynasty Warriors 4	14	2003	9	49	0.16
8552	Wakeboarding Unleashed Featuring Shaun Murray	7	2003	1	5	0.16
8553	The Incredibles: Rise of the Underminer	19	2005	9	29	0.16
8554	Jikkyou Powerful Pro Yakyuu 3 '97 Haru	8	1997	1	15	0.16
8555	Alone in the Dark: The New Nightmare	13		11	53	0.16
8556	The BIGS	6	2007	1	3	0.16
8557	Flushed Away	19	2006	2	59	0.16
8558	Eragon	4	2006	9	24	0.16
8559	Scarface: Money. Power. Respect.	17	2006	12	24	0.16
8560	Summon Night EX-Thesis: Yoake no Tsubasa	7	2005	4	58	0.16
8561	Pro Yaky? Spirits 3	7	2006	1	15	0.16
8562	Silent Scope 3	7	2002	7	15	0.16
8563	World Series of Poker: Tournament of Champions 2007 Edition	5	2006	6	5	0.16
8564	NASCAR Heat 2002	9	2002	3	53	0.16
8565	Namco Classic Fighter Collection	7	2008	10	26	0.16
8566	International Superstar Soccer Deluxe	8	1995	1	15	0.16
8567	TNA iMPACT!	1	2008	10	40	0.16
8568	Intellivision Lives!	7	2003	6	98	0.16
8569	Field Commander	17	2006	12	77	0.16
8570	Robots	19	2005	9	24	0.16
8571	Little League World Series Baseball 2009	1	2009	1	5	0.16
8572	The King of Fighters XII	6	2009	10	151	0.16
8573	Doctor Who: Evacuation Earth	4	2010	11	281	0.16
8574	Murdered: Soul Suspect	18	2014	9	17	0.16
8575	Ener-G: Dance Squad	4	2008	1	6	0.16
8576	Our House	4	2009	12	35	0.16
8577	SimEarth: The Living Planet	8	1991	8	157	0.16
8578	Major League Baseball 2K11	1	2011	1	3	0.16
8579	Sengoku Basara: Chronicle Heroes	17	2011	9	13	0.16
8580	NBA 2K12	15	2011	1	3	0.16
8581	The Wild Thornberrys: Chimp Chase	9	2001	9	29	0.16
8582	Power Stakes	13	1997	1	298	0.16
8583	Fighters Destiny	12	1998	10	86	0.16
8584	Asteroids Hyper 64	12	1999	7	68	0.16
8585	The Powerpuff Girls: Chemical X-Traction	12	2001	9	176	0.16
8586	Jikkyou Powerful Pro Yakyuu Basic-han 2001	12	2001	1	15	0.16
8587	Tom and Jerry in Fists of Furry	12	2000	10	6	0.16
8588	Hydro Thunder	12	2000	3	40	0.16
8589	Space Invaders	12	1999	7	5	0.16
8590	Starcraft 64	12	2000	12	1	0.16
8591	Destruction Derby 64	12	1999	3	29	0.16
8592	Buck Bumble	12	1998	9	6	0.16
8593	California Speed	12	1999	6	40	0.16
8594	Wonder Project J2: Koruro no Mori no Josette	12	1996	8	25	0.16
8595	Culdcept SAGA	5	2006	4	26	0.16
8596	Take A Break's: Puzzle Master	4	2009	5	6	0.16
8597	Dragon Ball: Origins 2	4	2010	9	26	0.16
8598	Minna no DS Seminar: Kanpeki Kanji Ryoku	4	2006	6	273	0.16
8599	Innocent Life: A Futuristic Harvest Moon	17	2006	8	71	0.16
8600	The Crew	15	2014	3	6	0.16
8601	Macross Ace Frontier	17	2008	8	26	0.16
8602	Black & Bruised	7	2003	10	24	0.16
8603	Sherlock Holmes vs. Jack the Ripper	5	2009	11	81	0.16
8604	.hack//G.U. Vol.2//Reminisce (jp sales)	7	2006	4	26	0.16
8605	Rapala Pro Fishing	14	2004	1	87	0.16
8606	TimeShift	6	2007	7	24	0.16
8607	Blitz: The League	5	2006	1	40	0.16
8608	Scripps Spelling Bee	4	2010	8	29	0.16
8609	MotionSports: Adrenaline	6	2011	1	6	0.16
8610	Ener-G Horse Riders	4	2008	1	6	0.16
8611	Time Hollow	4	2008	11	15	0.16
8612	Farming Simulator 2013	6	2013	8	81	0.16
8613	Rudolph the Red-Nosed Reindeer	1	2010	9	68	0.16
8614	Shinobido 2: Tales of the Ninja	23	2011	9	4	0.16
8615	SpongeBob's Truth or Square	4	2009	9	29	0.16
8616	Ghost in the Shell: Stand Alone Complex	7	2004	11	26	0.16
8617	Rondo of Swords (US sales)	4	2007	4	91	0.16
8618	Bulletstorm	15	2011	7	8	0.16
8619	Battle Soccer: Field no Hasha	8	1992	1	58	0.16
8620	Shaun White Skateboarding	5	2010	1	6	0.16
8621	MLB 11: The Show	17	2011	1	4	0.16
8622	Vegas Party	1		6	54	0.16
8623	Amped 3	5	2005	1	3	0.16
8624	Family Party: 30 Great Games Outdoor Fun	1	2009	6	59	0.16
8625	FlatOut 2	7	2006	3	90	0.16
8626	Naruto: Ultimate Ninja Heroes 2 - The Phantom Fortress	17	2006	10	11	0.16
8627	FIFA Soccer 96	13	1995	1	8	0.16
8628	Burger Island	4	2008	9	154	0.16
8629	Dynasty Warriors 8	5	2013	9	49	0.16
8630	NCAA Final Four 2001	13	2000	1	4	0.16
8631	Tak and the Guardians of Gross	1	2008	9	29	0.16
8632	Just Dance: Disney Party	5	2012	6	6	0.16
8633	LEGO The Lord of the Rings	4	2012	9	20	0.16
8634	Dengeki Bunko Fighting Climax	6	2014	10	9	0.16
8635	J-League Jikkyou Winning Eleven 2000	13	2000	1	15	0.16
8636	Eve: The Lost One	24	1998	11	157	0.16
8637	Chessmaster: The Art of Learning	4	2007	6	6	0.16
8638	Yu-Gi-Oh! 5D's: Duel Transer	1	2010	12	15	0.16
8639	LEGO Legends of Chima: Laval's Journey	23	2013	11	20	0.16
8640	Konami Krazy Racers	9	2001	3	15	0.16
8641	Saturday Night Slam Masters	8	1994	10	13	0.16
8642	Blitz: The League II	6	2008	1	40	0.16
8643	F-Zero: GP Legend	9	2003	3	1	0.16
8644	Racing Lagoon	13	1999	3	55	0.16
8645	Victorious: Hollywood Arts Debut	4	2011	6	59	0.16
8646	Mr. Driller 2	9	2001	5	26	0.16
8647	Just Sing!	4	2009	6	233	0.16
8648	Darksiders II	20	2012	9	29	0.16
8649	Dragon's Lair Trilogy	1	2010	11	154	0.16
8650	Trivial Pursuit: Bet You Know It	1	2011	6	8	0.16
8651	Imagine: Ice Champions	4	2007	1	130	0.16
8652	J-League Pro Soccer Club o Tsukurou! 6: Pride of J	17	2009	1	9	0.16
8653	Nicktoons: MLB	1	2011	1	3	0.16
8654	Sniper: Ghost Warrior	15	2010	7	89	0.16
8655	Left Brain Right Brain: Use Both Hands Train Both Sides	4	2007	6	12	0.16
8656	Rio	6	2011	6	29	0.16
8657	Power Rangers Double Pack	9	2005	9	29	0.16
8658	Mugen Souls	6	2012	4	132	0.16
8659	Yakuza Kiwami	11	2016	11	9	0.16
8660	Pachi-Slot Kanzen Kouryaku 3: Universal Koushiki Gaido Volume 3	13	1998	6	299	0.16
8661	BCFX: The Black College Football Xperience, The Doug Williams Edition	5	2009	1	263	0.16
8662	FIFA Soccer 97	13	1996	1	8	0.16
8663	Saw II: Flesh & Blood	5	2010	9	15	0.16
8664	Psychic Force	13	1996	10	31	0.16
8665	Trigger Man	7	2004	7	98	0.16
8666	Bomberman Land Touch! 2	4	2007	5	71	0.16
8667	Michael Jackson: The Experience	17	2010	6	6	0.16
8668	The Godfather: Blackhand Edition	1	2007	11	8	0.16
8669	StarBlade α	13	1995	7	4	0.16
8670	Kidou Senshi Gundam: Giren no Yabou - Axis no Kyoui	17	2008	12	26	0.16
8671	Tiger Woods PGA Tour 2004	19	2003	1	8	0.16
8672	Monster House	4	2006	11	29	0.16
8673	Angry Birds Star Wars	18	2013	12	5	0.16
8674	Backyard Sports: Sandlot Sluggers	1	2010	1	11	0.16
8675	Guilty Gear Xrd: Sign	11	2014	10	224	0.16
8676	Arcade Zone	1	2009	6	5	0.16
8677	SpongeBob's Boating Bash	4	2010	6	29	0.16
8678	7th Dragon III Code: VFD	10	2015	4	9	0.16
8679	DiRT 3	15	2011	3	36	0.16
8680	Culdcept	10	2012	6	1	0.16
8681	Birds of Steel	5	2012	8	15	0.16
8682	Rudolph the Red-Nosed Reindeer	4	2010	9	68	0.16
8683	WWE '13	1	2012	9	29	0.16
8684	MX 2002 Featuring Ricky Carmichael	9	2001	3	29	0.16
8685	Halo Triple Pack	14	2005	7	2	0.16
8686	Street Racer	13	1996	3	6	0.16
8687	Bomberman	4	2005	5	6	0.16
8688	NBA 2K3	19	2002	1	9	0.16
8689	Arcana Heart	7	2007	10	255	0.16
8690	NHL 2005	14	2004	1	8	0.16
8691	World Soccer Winning Eleven 2010: Aoki Samurai no Chousen	17	2010	1	15	0.16
8692	Infected	17	2005	7	29	0.16
8693	Battlestar Galactica	7	2003	7	24	0.16
8694	The Walking Dead: Season One	18	2014	11	174	0.16
8695	Kingdom Hearts: Birth by Sleep - Final Mix	17	2011	4	17	0.16
8696	Bust-A-Move Bash!	1	2007	5	12	0.16
8697	Block Party	1	2008	6	5	0.16
8698	Toriko: Gourmet Monsters!	10	2012	4	26	0.16
8699	The Incredible Hulk: The Pantheon Saga	13	1996	9	22	0.16
8700	Darksiders II	15	2012	9	125	0.16
8701	Megamind: Ultimate Showdown	6	2010	9	29	0.16
8702	The Idolm@ster 2	6	2011	6	26	0.16
8703	Space Camp	4	2009	9	5	0.16
8704	Imagine: Music Fest	4	2009	8	6	0.16
8705	AC/DC LIVE: Rock Band Track Pack	7	2008	6	32	0.16
8706	Senran Kagura: Sh?jo-tachi no Shinei	10	2011	9	220	0.16
8707	Ultimate Spider-Man	4	2005	9	5	0.16
8708	Fist of the North Star: Ken's Rage	5	2010	9	116	0.16
8709	Jurassic Park: The Game	5		9	54	0.16
8710	He-Man: Power of Grayskull	9	2002	9	73	0.16
8711	WordJong	4	2007	5	300	0.16
8712	Putty Squad	11	2013	2	301	0.16
8713	Polaris SnoCross	13	2000	3	302	0.16
8714	Wing Commander III: Heart of the Tiger	13	1996	9	8	0.16
8715	Top Spin 4	1	2011	1	3	0.16
8716	Prince of Persia: The Forgotten Sands	4	2010	9	6	0.16
8717	Mat Hoffman's Pro BMX 2	9	2002	1	5	0.16
8718	Muppet RaceMania	13	1999	3	4	0.15
8719	Namco Museum Vol.5	13	1996	6	4	0.15
8720	Courier Crisis	13	1997	3	147	0.15
8721	Bleach: Dark Souls	4	2007	10	9	0.15
8722	The Oregon Trail	1	2011	8	68	0.15
8723	Digimon Battle Spirit 2	9	2003	10	26	0.15
8724	Winning Post 3	13	1998	3	49	0.15
8725	FIFA 06: Road to FIFA World Cup	5	2005	1	8	0.15
8726	Driven	7	2001	3	176	0.15
8727	F.E.A.R. 3	15	2011	7	20	0.15
8728	de Blob 2	5	2011	2	29	0.15
8729	Warhammer 40,000: Fire Warrior	7	2003	7	29	0.15
8730	Hot Wheels: Battle Force 5	4	2009	3	5	0.15
8731	James Noir's Hollywood Crimes	10	2011	11	6	0.15
8732	Deadly Premonition	6	2010	9	71	0.15
8733	Bomberman	17	2006	5	15	0.15
8734	MTV Music Generator 2	7	2001	6	36	0.15
8735	The Quest Trio	4	2008	5	191	0.15
8736	Chaotic: Shadow Warriors	5	2009	9	5	0.15
8737	Space Invaders Extreme	4	2008	7	17	0.15
8738	Burnout 2: Point of Impact	19	2003	3	31	0.15
8739	Paris-Dakar Rally	7	2001	3	31	0.15
8740	All-Pro Football 2K8	6	2007	1	3	0.15
8741	Dragon Ball Z: Harukanaru Densetsu (JP sales)	4	2007	4	26	0.15
8742	Atelier Iris: Eternal Mana	7	2004	4	49	0.15
8743	Blinx 2: Masters of Time & Space	14	2004	2	2	0.15
8744	Stormrise	5	2009	12	9	0.15
8745	NHL 2K10	6	2009	1	3	0.15
8746	FIFA Street 2	17	2006	1	8	0.15
8747	Tak: The Great Juju Challenge	19	2005	2	29	0.15
8748	Deponia	15	2012	11	303	0.15
8749	Harvest Moon: The Lost Valley	10	2014	8	80	0.15
8750	Knockout Kings 2003	19	2002	1	8	0.15
8751	NCAA Football 2004	19	2003	1	8	0.15
8752	XGIII: Extreme G Racing	19	2001	3	31	0.15
8753	NHL 17	18	2016	1	8	0.15
8754	Jewel Quest Solitaire	4	2009	5	96	0.15
8755	Metal Gear Solid V: Ground Zeroes	5	2014	9	15	0.15
8756	Digimon World 4	7	2005	4	11	0.15
8757	Cars: Race-O-Rama	5	2009	3	29	0.15
8758	Disney's Story Studio: Disney's Mulan	13	1999	6	4	0.15
8759	Klax	16	1989	5	11	0.15
8760	Pressure Cooker	16	1982	9	5	0.15
8761	Saturn Bomberman	24	1996	5	9	0.15
8762	Home Run	16		1	11	0.15
8763	Jikkyou Powerful Pro Yakyuu Portable	17	2006	1	15	0.15
8764	The Adventures of Tintin: The Game	10	2011	9	6	0.15
8765	American Chopper	14	2004	3	87	0.15
8766	Sonny with a Chance	4	2010	9	33	0.15
8767	Murdered: Soul Suspect	6	2014	9	17	0.15
8768	Farm Frenzy: Animal Country	4	2009	8	89	0.15
8769	Kingdom Under Fire: Heroes	14	2005	12	42	0.15
8770	Wolfenstein: The Old Blood	18	2015	9	7	0.15
8771	The Terminator: Dawn of Fate	14	2002	9	11	0.15
8772	Cartoon Network Collection: Game Boy Advance Video Special Edition	9	2005	6	34	0.15
8773	Naruto Shippuden: Legends: Akatsuki Rising	17	2009	10	26	0.15
8774	Scooby-Doo! Unmasked	19	2005	2	29	0.15
8775	Streak: Hoverboard Racing	13	1998	3	14	0.15
8776	Samurai Warriors: Katana	1	2007	9	49	0.15
8777	Project Sylpheed: Arc of Deception	5	2006	7	2	0.15
8778	Enthusia Professional Racing	7	2005	3	15	0.15
8779	NCAA GameBreaker 2001	7	2000	1	4	0.15
8780	Get On Da Mic	7	2004	6	22	0.15
8781	Heroes of Mana	4	2007	12	17	0.15
8782	Jurassic: The Hunted	1	2009	7	5	0.15
8783	Army Men: Sarge's War	19	2004	7	64	0.15
8784	Horse Life Adventures	1	2008	8	42	0.15
8785	Amagami	17	2011	11	153	0.15
8786	Ice Age 2: The Meltdown	4	2006	2	24	0.15
8787	Jikkyou Powerful Pro Yakyuu 2009	7	2009	1	15	0.15
8788	Blazing Angels 2: Secret Missions of WWII	6	2007	8	6	0.15
8789	Bigfoot: Collision Course	4	2009	3	87	0.15
8790	Marvel Super Hero Squad: The Infinity Gauntlet	5	2010	9	29	0.15
8791	Kidou Senkan Nadesico	24	1997	12	9	0.15
8792	Tears to Tiara II: Heir of the Overlord	6	2013	4	132	0.15
8793	Frogger's Adventures: The Rescue	19	2003	2	15	0.15
8794	The Incredibles: Rise of the Underminer	4	2005	9	29	0.15
8795	Darksiders	15	2010	9	29	0.15
8796	The Secret Saturdays: Beasts of the 5th Sun	7	2009	9	59	0.15
8797	Countdown: The Game	4	2009	5	52	0.15
8798	Active Life Explorer	1	2010	1	26	0.15
8799	MLB Power Pros 2008	7	2008	1	15	0.15
8800	The Fairly Odd Parents: Clash with the Anti-World	9	2005	11	29	0.15
8801	Theatrhythm Dragon Quest	10	2015	6	17	0.15
8802	Major League Baseball 2K10	4	2010	1	3	0.15
8803	Naruto: Powerful Shippuden	10	2012	2	26	0.15
8804	Disney's The Lion King: Simba's Mighty Adventure	13	2000	9	5	0.15
8805	Family Party: Fitness Fun	1	2010	1	59	0.15
8806	Thor: God of Thunder	6	2011	9	9	0.15
8807	Fantastic Four: Rise of the Silver Surfer	6	2007	9	3	0.15
8808	Metal Slug Anthology	1	2006	7	151	0.15
8809	GoldenEye 007 (2010)	4	2010	9	5	0.15
8810	Jikkyou Powerful Pro Yakyuu 2012	17	2012	9	15	0.15
8811	All Japan Pro Wrestling featuring Virtua	24	1997	10	9	0.15
8812	Rudra no Hihou	8	1996	4	10	0.15
8813	Gundam Breaker 2	23	2014	9	26	0.15
8814	Prince of Persia: The Sands of Time	9	2003	9	6	0.15
8815	Cake Mania: In The Mix!	1	2008	5	35	0.15
8816	Zoids: Battle Legends	19	2003	9	100	0.15
8817	World Series Baseball 2K3	14	2003	1	9	0.15
8818	Serious Sam	14	2002	7	3	0.15
8819	Kowloon's Gate	13	1997	11	4	0.15
8820	Killer7	19	2005	9	13	0.15
8821	Kingdom of Paradise	17	2005	4	4	0.15
8822	Hidden Mysteries: Salem Secrets - Witch Trials of 1692	4	2010	5	276	0.15
8823	NBA Street Homecourt	6	2007	1	8	0.15
8824	The Sims Medieval: Pirates and Nobles	15	2011	8	8	0.15
8825	The Cursed Crusade	5	2011	9	233	0.15
8826	Super Monkey Ball Adventure	19	2006	2	9	0.15
8827	Kids Learn Math: A+ Edition	4	2011	6	54	0.15
8828	FIFA Soccer 2002	13	2001	1	8	0.15
8829	Build-A-Bear Workshop: Welcome to Hugsville	4	2010	6	103	0.15
8830	Street Fighter Anniversary Collection	14	2004	10	13	0.15
8831	Final Fantasy XI: Vana'diel Collection 2008	5	2007	4	17	0.15
8832	Suzumiya Haruhi no Yakusoku	17	2007	11	26	0.15
8833	Shadow Ops: Red Mercury	14	2004	7	11	0.15
8834	Indigo Prophecy	7	2005	11	11	0.15
8835	Mind Zero	23	2013	4	67	0.15
8836	World League Soccer	8	1991	1	157	0.15
8837	NBA ShootOut 2001	7	2001	1	4	0.15
8838	Earth Defense Force 2025	5	2013	7	59	0.15
8839	Spider-Man: Friend or Foe	1	2007	9	5	0.15
8840	Ultimate Board Game Collection	1	2007	6	169	0.15
8841	Syndicate	6	2012	7	304	0.15
8842	Samurai Shodown Anthology	7	2008	10	151	0.15
8843	NBA 09: The Inside	6	2008	1	4	0.15
8844	Musashi: Samurai Legend	7	2005	4	11	0.15
8845	Saint Seiya: Soldiers' Soul	11	2015	10	26	0.15
8846	Terraria	15	2011	9	54	0.15
8847	Castlevania: Lords of Shadow - Mirror of Fate	10	2013	9	15	0.15
8848	3rd Super Robot Wars Z: Tengoku-Hen	6	2015	9	26	0.15
8849	Fantasia: Music Evolved	18	2014	6	33	0.15
8850	Pokémon: Johto Photo Finish: Game Boy Advance Video	9	2004	6	34	0.15
8851	F1 2001	7	2001	3	8	0.15
8852	The Legend of Heroes: Trails of Cold Steel II	23	2014	4	132	0.15
8853	Top Gun: Combat Zones	19	2002	8	104	0.15
8854	J-League Victory Goal	24	1995	1	9	0.15
8855	Bakugan Battle Brawlers: Defenders of the Core	17	2010	9	5	0.15
8856	Oreshika: Tainted Bloodlines	23	2014	4	4	0.15
8857	White Knight Chronicles: Origins	17	2011	4	4	0.15
8858	Return to PopoloCrois: A Story of Seasons Fairytale	10	2015	8	105	0.15
8859	Spongebob Squarepants / Fairly Odd Parents Double Pack	9	2005	9	29	0.15
8860	History Civil War: Secret Missions	7	2008	7	5	0.15
8861	NHL 09	7	2008	1	8	0.15
8862	Mirror's Edge Catalyst	18	2016	2	8	0.15
8863	Derby Stallion 64	12	2001	1	305	0.15
8864	Doraemon 3: Nobi Dai no Machi SOS!	12	2000	2	175	0.15
8865	Space Station Silicon Valley	12	1997	11	3	0.15
8866	Dark Rift	12	1997	10	306	0.15
8867	Tokyo Xanadu	23	2015	4	221	0.15
8868	All-Star Baseball 2003	19	2002	1	31	0.15
8869	Burger Island	1	2009	9	154	0.15
8870	Petz: Dogz Talent Show	4	2009	8	6	0.15
8871	T'ai Fu: Wrath of the Tiger	13	1998	9	5	0.15
8872	Rocky	14	2002	10	115	0.15
8873	Ford Racing 2	14	2003	3	90	0.15
8874	Odin Sphere: Leifthrasir	23	2016	4	132	0.15
8875	Sam & Max: Season One	1	2008	11	259	0.15
8876	Virtua Tennis 4	1	2011	1	9	0.15
8877	Tetris Attack	8	1995	5	1	0.15
8878	Candace Kane's Candy Factory	1	2008	9	154	0.15
8879	BloodRayne 2	14	2004	7	29	0.15
8880	Hot Wheels: Beat That!	1	2007	3	5	0.15
8881	Soldier of Fortune: Payback	6	2007	7	5	0.15
8882	Jaws Unleashed	14	2006	9	29	0.15
8883	Pro Yaky? Spirits 6	6	2009	1	15	0.15
8884	Star Trek: Voyager Elite Force	7	2001	7	36	0.15
8885	X-Men: The Official Game	19	2006	9	5	0.15
8886	Brain Boost: Gamma Wave	4	2005	5	12	0.15
8887	Scarface: The World is Yours	1	2007	9	24	0.15
8888	Rock Band: Metal Track Pack	5	2009	6	32	0.15
8889	Chessmaster II	13	1998	12	52	0.15
8890	All-Star Baseball 2003	9	2002	1	31	0.15
8891	Scooby-Doo! Mystery Mayhem	14	2004	9	29	0.15
8892	Winning Post 4	13	1999	1	49	0.15
8893	Major League Baseball 2K13	6	2013	1	3	0.15
8894	DreamWorks Super Star Kartz	1	2011	3	5	0.15
8895	Pro Baseball Spirits 2015	6	2015	9	15	0.15
8896	187: Ride or Die	7	2005	3	6	0.15
8897	Curious George	19	2006	9	26	0.15
8898	Strawberry Shortcake: Game Boy Advance Video Volume 1	9	2004	6	34	0.15
8899	Armored Core: For Answer	5	2008	8	6	0.15
8900	Geist	19	2005	11	1	0.15
8901	eJay Clubworld	7		6	90	0.15
8902	Cardinal Syn	13	1998	10	4	0.15
8903	Charm Girls Club: Pajama Party	1	2009	6	8	0.15
8904	Street Fighter Alpha 3	9	2002	10	13	0.15
8905	The Wizard of Oz: Beyond The Yellow Brick Road	4	2008	4	59	0.15
8906	Mobile Suit Gundam Side Story III: Sabakareshi Mono	24	1997	7	26	0.15
8907	Ridge Racer DS	4	2004	3	26	0.15
8908	Warriors Orochi 3	11	2014	9	49	0.15
8909	Nancy Drew: The White Wolf of Icicle Creek	1	2008	11	9	0.15
8910	Super Street Fighter II	21	1993	10	13	0.15
8911	Metal Gear Solid: Peace Walker HD Edition	6	2011	9	15	0.15
8912	Battle Stadium D.O.N	7	2006	10	26	0.15
8913	No.1 Muscle Ranking - Kinniku Banzuke Vol. 2: Aratanarugenkai Enochousen!	13	2000	1	15	0.15
8914	Brain Boost: Beta Wave	4	2005	5	12	0.15
8915	Power Pro Kun Pocket 9	4	2006	1	15	0.15
8916	Rubik's World	1	2008	5	103	0.15
8917	Gallop & Ride!	1	2008	1	29	0.15
8918	Shenmue II	22	2001	11	9	0.15
8919	Major League Baseball 2K8	7	2008	1	7	0.15
8920	Capcom Classics Collection	14	2005	6	13	0.15
8921	Fugitive Hunter: War on Terror	7	2003	7	98	0.15
8922	The Incredible Hulk: Ultimate Destruction	19	2005	9	24	0.15
8923	Prince of Persia: The Two Thrones	19	2005	9	6	0.15
8924	Ore no Imouto ga Konna ni Kawaii wake ga Nai Portable	17	2011	11	58	0.15
8925	Baseball Blast!	1	2009	1	3	0.15
8926	Pac-Man World 3	14	2005	2	26	0.15
8927	The Walking Dead: Season Two	23	2014	11	174	0.15
8928	Harvest Moon: Hero of Leaf Valley	17	2009	8	71	0.15
8929	Phantasy Star Online Episode I & II	14	2003	4	9	0.15
8930	F1 2012	15	2012	3	36	0.15
8931	All-Star Baseball 2005	14		1	54	0.15
8932	Rayman Raving Rabbids	4	2007	6	6	0.15
8933	Kung-Fu: High Impact	5	2011	9	194	0.15
8934	SNK Arcade Classics Vol. 1	17	2008	6	151	0.15
8935	Darkstalkers Chronicle: The Chaos Tower	17	2004	10	13	0.15
8936	NHL 2K10	5	2009	1	3	0.15
8937	Batman Begins	19	2005	9	8	0.15
8938	Toy Story Racer	13	2001	3	5	0.15
8939	Yakuza: Ishin	11	2014	9	9	0.15
8940	F1 2011	23	2011	3	36	0.15
8941	Disney's Donald Duck: Goin' Quackers	13	2000	2	6	0.15
8942	Mobile Suit Gundam: Perfect One Year War	13	1997	12	26	0.15
8943	Galerians	13	1999	11	68	0.15
8944	Crash: Twinsanity	14	2004	2	24	0.15
8945	DrumMania	7	2000	8	15	0.15
8946	Yu-Gi-Oh! Nightmare Troubadour (US sales)	4	2005	9	15	0.15
8947	Code:Realize - Sousei no Himegimi	23	2014	11	279	0.15
8948	Hoppechan: Tsukutte! Asonde! Punipuni Town!!	10	2013	9	229	0.15
8949	Deus Ex: Mankind Divided	18	2016	4	17	0.15
8950	Arena Football	14	2006	1	8	0.15
8951	Tamagotchi no Narikiri Channel	4	2009	4	26	0.15
8952	Power Pro Kun Pocket 1+2	9	2004	1	15	0.15
8953	Rayman Origins	10	2012	2	6	0.15
8954	Thor: God of Thunder	5	2011	9	9	0.15
8955	Medal of Honor: Infiltrator	9	2003	7	8	0.15
8956	Risen 2: Dark Waters	5	2012	4	42	0.15
8957	Blazing Dragons	13	1996	11	111	0.15
8958	Geometry Wars: Galaxies	4	2007	7	24	0.15
8959	Super Monkey Ball Deluxe	14	2005	6	9	0.15
8960	Shin Megami Tensei: Devil Summoner - Soul Hackers	13	1999	4	72	0.15
8961	Shin Chan: ¡Aventuras de Cine!	4	2008	2	12	0.15
8962	Alien: Isolation	15	2014	7	9	0.15
8963	High Velocity Bowling	6	2010	1	4	0.15
8964	Tamagotchi Collection	4	2011	6	26	0.15
8965	Pac-Man Party 3D	10	2011	6	26	0.15
8966	NewU Fitness First Mind Body, Yoga & Pilates Workout	1	2010	1	194	0.15
8967	Backyard Sports: Sandlot Sluggers	4	2010	1	11	0.15
8968	Turbo Prop Racing	13	1997	3	4	0.15
8969	Barbie Superpack: Secret Agent / Groovy Games	9	2005	6	24	0.15
8970	Tom Clancy's Ghost Recon	19	2003	7	6	0.15
8971	Dance Dance Revolution (North America)	13	2001	8	15	0.15
8972	Bakugan Battle Brawlers: Defenders of the Core	5	2010	9	5	0.15
8973	Mad Dash Racing	14	2001	3	22	0.15
8974	Dreamworks 2-in-1 Party Pack	4	2010	6	5	0.15
8975	Summon Night 5	17	2013	4	26	0.15
8976	MotoGP 2: Ultimate Racing Technology	7	2001	3	4	0.15
8977	Black * Rock Shooter: The Game	17	2011	4	54	0.15
8978	Travel Games For Dummies	4	2008	6	8	0.15
8979	BMX XXX	7	2002	1	31	0.15
8980	SafeCracker: The Ultimate Puzzle Adventure	4	2009	5	307	0.15
8981	Tiger Woods PGA Tour	4	2004	1	8	0.15
8982	Dragon Ball Z: Idainaru Dragon Ball Densetsu	24	1995	10	26	0.15
8983	Sonic Advance & Sonic Pinball Party Combo Pack	9	2005	6	9	0.15
8984	Boktai: The Sun is in Your Hand	9	2003	4	15	0.15
8985	Cars: Mater-National Championship	5	2007	3	29	0.15
8986	Making History: The Great War	1	2010	12	26	0.15
8987	Drawn to Life Collection	4	2010	6	29	0.15
8988	Guilty Gear X2 #Reload	14	2004	10	87	0.15
8989	Wizardry VII: Gadeia no Houshu	13	1995	4	4	0.15
8990	Dynasty Warriors 8: Xtreme Legends	23	2013	9	49	0.15
8991	Moshi Monsters: Katsuma Unleashed	4	2013	9	5	0.15
8992	Elf: The Movie	9	2004	9	68	0.15
8993	Metal Slug 7	4	2008	7	151	0.15
8994	MLB SlugFest 20-03	19	2002	1	40	0.15
8995	Tamagotchi no Appare! Niji Venture	4	2007	4	26	0.14
8996	Grabbed by the Ghoulies	14	2003	9	2	0.14
8997	Ys: The Oath in Felghana	17	2010	4	254	0.14
8998	Shadow Hearts: From The New World	7	2005	4	145	0.14
8999	Mega Man Powered Up	17	2006	2	13	0.14
9000	CSI: 3 Dimensions of Murder	7	2007	11	6	0.14
9001	Barbarian	7	2002	10	104	0.14
9002	QuickSpot	4	2006	6	26	0.14
9003	Deception IV: Blood Ties	23	2014	9	49	0.14
9004	Tennis no Oji-Sama: Aim at The Victory!	9	2002	1	15	0.14
9005	L.A. Rush	14	2005	3	40	0.14
9006	Lunar 2: Eternal Blue(sales, but wrong system)	21	1994	4	308	0.14
9007	Where the Wild Things Are	4	2009	2	20	0.14
9008	Pipe Dreams 3D	13	2001	5	90	0.14
9009	Derby Stallion Gold	10	2014	1	153	0.14
9010	Adventure Time: Explore the Dungeon Because I Don't Know!	10	2013	9	59	0.14
9011	Lost Dimension	23	2014	4	132	0.14
9012	Fox Sports Golf '99	13	1997	1	264	0.14
9013	Jurassic: The Hunted	7	2009	7	5	0.14
9014	Power Rangers: Super Legends	7	2007	9	33	0.14
9015	Sakura Wars GB	3	2000	11	305	0.14
9016	Shining Force CD	25	1994	12	9	0.14
9017	Rayman 3	9	2003	2	6	0.14
9018	Fatal Frame	7	2001	9	172	0.14
9019	The Fifth Element	13	1998	9	4	0.14
9020	Kung Fu Panda 2	1	2011	9	29	0.14
9021	Fast Food Panic	4	2010	8	127	0.14
9022	Diner Dash: Flo on the Go	4	2009	5	75	0.14
9023	Adrenalin Misfits	5	2010	3	15	0.14
9024	Okaeri! Chibi-Robo! Happy Richie Oosouji	4	2009	11	1	0.14
9025	Wild ARMs 4	7	2005	4	12	0.14
9026	Haunted House	1	2010	9	11	0.14
9027	Ratatouille	19	2007	9	29	0.14
9028	G.I. Joe: The Rise of Cobra	7	2009	9	8	0.14
9029	Casper: Spirit Dimensions	7	2001	2	73	0.14
9030	Super Robot Taisen OG Saga: Endless Frontier (JP sales)	4	2008	4	26	0.14
9031	Sengoku Musou 3 Empires	6	2011	9	49	0.14
9032	Dream Pinball 3D	1	2008	6	84	0.14
9033	Thunder Truck Rally	13	1997	3	88	0.14
9034	Dishonored	18	2015	9	7	0.14
9035	Klonoa: Empire of Dreams	9	2001	2	53	0.14
9036	G.I. Joe: The Rise of Cobra	17	2009	9	8	0.14
9037	Dragon Age: Origins - Ultimate Edition	15	2010	4	8	0.14
9038	Balloon Pop	4	2009	5	284	0.14
9039	Disney Infinity 2.0: Marvel Super Heroes	23	2015	9	33	0.14
9040	Iron & Blood	13	1996	10	31	0.14
9041	Asphalt: Urban GT 2	4	2006	3	6	0.14
9042	Pinball Hall of Fame: The Gottlieb Collection	1	2006	6	158	0.14
9043	Second Sight	7	2004	11	36	0.14
9044	Spider-Man: Edge of Time	4	2011	9	5	0.14
9045	Monster House	7	2006	11	29	0.14
9046	Phantom Brave	7	2004	4	49	0.14
9047	Just Cause	5	2006	9	22	0.14
9048	ArmA II	15	2009	7	12	0.14
9049	Championship Motocross 2001 featuring Ricky Carmichael	13	2001	3	29	0.14
9050	Kenka Banchou 5: Otoko no Housoku	17	2011	9	130	0.14
9051	Legend of the Guardians: The Owls of Ga'Hoole	4	2010	9	20	0.14
9052	Doshin the Giant	19	2002	8	1	0.14
9053	Shrek 2 and Shark Tale 2-in-1 Pack	9	2005	6	5	0.14
9054	Star Ocean: Blue Sphere	3	2001	4	25	0.14
9055	Mojo!	7	2003	5	52	0.14
9056	Destroy All Humans! Big Willy Unleashed	1	2008	9	29	0.14
9057	Age of Empires: Collector's Edition	15	2000	12	6	0.14
9058	Ford Racing Off Road	17	2008	3	169	0.14
9059	Kamen Rider Ryuki	13	2002	9	26	0.14
9060	Front Mission Alternative	13	1997	12	10	0.14
9061	World Championship Poker: Howard Lederer - All In	17	2006	6	12	0.14
9062	FIFA Soccer 2005	19	2004	1	8	0.14
9063	Cave Story 3D	10	2011	2	132	0.14
9064	The Orange Box	15	2007	7	8	0.14
9065	Super Dodgeball Brawlers	4	2008	1	224	0.14
9066	Victorious Boxers: Revolution	1	2007	10	6	0.14
9067	Record of Agarest War 2	6	2010	4	266	0.14
9068	SBK 2011: FIM Superbike World Championship	6	2011	3	194	0.14
9069	Power Stone	22	1998	10	22	0.14
9070	Jonny Moseley Mad Trix	7	2001	1	78	0.14
9071	Monster Lab	4	2008	4	22	0.14
9072	Uta no * Prince-Sama: Repeat	17	2011	11	309	0.14
9073	Senran Kagura Burst: Guren no Sh?jo-tachi	10	2012	9	105	0.14
9074	MTV Music Generator 3: This Is the Remix	7	2004	6	36	0.14
9075	Cake Mania 3	4	2009	8	35	0.14
9076	.hack//Link	17	2010	4	26	0.14
9077	Terminator 3: Rise of the Machines	14	2003	9	11	0.14
9078	Star Wars: Knights of the Old Republic	15	2003	4	18	0.14
9079	SSX On Tour	14	2005	1	8	0.14
9080	NCAA College Basketball 2K3	14	2002	1	9	0.14
9081	Class of Heroes	17	2008	4	310	0.14
9082	Yogi Bear: The Video Game	4	2010	9	59	0.14
9083	Our House Party!	1		8	54	0.14
9084	The Legend of Heroes II: Prophecy of the Moonlight Witch	17	2004	4	26	0.14
9085	Cranium Kabookii	1	2007	6	6	0.14
9086	Hero's Saga Laevatein Tactics	4	2008	4	67	0.14
9087	Doom	9	2001	7	5	0.14
9088	Gundam Breaker 2	6	2014	9	26	0.14
9089	TRINITY: Souls of Zill O'll	6	2010	4	116	0.14
9090	Mary-Kate and Ashley: Winners Circle	13	2001	9	31	0.14
9091	PaRappa The Rapper 2	7	2001	6	4	0.14
9092	Hexyz Force	17	2009	4	72	0.14
9093	OutRun 2	14	2004	3	9	0.14
9094	Okami	6	2012	9	13	0.14
9095	Marvel vs. Capcom 2: New Age of Heroes	22	2000	10	19	0.14
9096	Hitman: Blood Money	14	2006	9	22	0.14
9097	Soukaigi	13	1998	4	10	0.14
9098	Naruto Shippuden: Ninja Destiny 3	4	2006	10	59	0.14
9099	Xevious 3D/G+	13	1997	7	4	0.14
9100	Pipe Mania	7	2008	5	90	0.14
9101	Gretzky NHL 06	17	2005	1	4	0.14
9102	Shonen Jump's Shaman King: Master of Spirits	9	2004	4	15	0.14
9103	PANGYA: Fantasy Golf	17	2009	1	197	0.14
9104	NFL Blitz 20-03	14	2002	1	40	0.14
9105	Sumikko Gurashi: Omise Hajimerundesu	10	2015	9	229	0.14
9106	Pirates: The Legend of Black Kat	7	2002	11	8	0.14
9107	Fur Fighters: Viggo's Revenge	7	2001	9	31	0.14
9108	Krull	16	1982	9	11	0.14
9109	Yu-Gi-Oh! Monster Capture GB	3	2000	4	15	0.14
9110	Risen	15	2009	4	42	0.14
9111	Top Spin 3	4	2008	9	59	0.14
9112	Zapper: One Wicked Cricket!	9	2002	2	53	0.14
9113	The Da Vinci Code	7	2006	9	3	0.14
9114	Watch Dogs	20	2014	9	6	0.14
9115	Mr. Driller: Drill Spirits	4	2004	5	1	0.14
9116	Arctic Tale	4	2007	11	87	0.14
9117	Scooby-Doo! Night of 100 Frights	14	2003	2	29	0.14
9118	MX vs. ATV Reflex	4	2009	3	29	0.14
9119	Anno 1701: Dawn of Discovery	4	2007	8	129	0.14
9120	Chicken Shoot	4	2007	9	87	0.14
9121	Dead to Rights	19	2002	7	8	0.14
9122	Sphinx and the Cursed Mummy	19	2003	9	29	0.14
9123	Cabela's Outdoor Adventures (2009)	7	2009	1	57	0.14
9124	T.R.A.G. - Tactical Rescue Assault Group: Mission of Mercy	13	1998	11	242	0.14
9125	Naruto RPG 2: Chidori vs Rasengan	4	2005	4	100	0.14
9126	Destruction Derby Raw	13	2000	3	4	0.14
9127	Project V6	13	1998	12	311	0.14
9128	Farming Simulator 2012	10	2012	9	312	0.14
9129	NFL Head Coach 09	6	2008	1	8	0.14
9130	World Tour Soccer 2003	7	2002	1	4	0.14
9131	Akiba's Trip	17	2011	11	310	0.14
9132	Bravo Air Race	13	1997	3	29	0.14
9133	Onimusha Essentials	7	2008	9	13	0.14
9134	Blazing Angels 2: Secret Missions of WWII	5	2007	8	6	0.14
9135	Gundam: The Battle Master	13	1997	10	26	0.14
9136	Spyro: A Hero's Tail	14	2004	2	24	0.14
9137	¡Shin Chan Flipa en colores!	4	2007	2	12	0.14
9138	Just Cause 3	15	2015	9	17	0.14
9139	Eternal Poison	7	2008	4	58	0.14
9140	Lord of the Rings: Tactics	17	2005	12	8	0.14
9141	X-Blades	5	2009	9	84	0.14
9142	Gretzky NHL 06	7	2005	1	4	0.14
9143	Gungrave: Overdose	7	2004	7	98	0.14
9144	Kidou Senshi Gundam: Shin Gihren no Yabou	17	2011	12	26	0.14
9145	How to Train Your Dragon	5	2010	9	5	0.14
9146	Your Shape: Fitness Evolved 2013	20	2012	9	6	0.14
9147	My Fitness Coach: Club	6	2011	1	6	0.14
9148	NBA ShootOut 2002	13	2001	1	4	0.14
9149	SingStar Vol. 3	6	2008	6	4	0.14
9150	The Granstream Saga	13	1997	4	4	0.14
9151	Scene It? Bright Lights! Big Screen!	1	2009	6	20	0.14
9152	Holy Invasion of Privacy, Badman! What Did I Do to Deserve This?	17	2007	4	132	0.14
9153	WCW Backstage Assault	12		9	54	0.14
9154	Micro Machines 64 Turbo	12	1999	3	36	0.14
9155	Bassmasters 2000	12	1999	1	29	0.14
9156	Baldur's Gate: Dark Alliance	19	2002	4	19	0.14
9157	Bio FREAKS	12	1998	9	14	0.14
9158	Eternal Eyes	13	1999	4	242	0.14
9159	Injustice: Gods Among Us	23	2013	10	20	0.14
9160	Fate/Unlimited Codes	7	2008	10	13	0.14
9161	Atari's Greatest Hits: Volume 1	4	2010	6	11	0.14
9162	The Operative: No One Lives Forever	7	2002	7	8	0.14
9163	International Cricket 2010	5	2010	1	36	0.14
9164	Epidemic	13	1995	7	4	0.14
9165	Monster House	19	2006	11	29	0.14
9166	Dead or Alive 2	22	2000	10	31	0.14
9167	Buck Fever	1	2009	1	154	0.14
9168	NCAA Basketball Final Four 97	13	1997	1	52	0.14
9169	Ecco the Dolphin: Defender of the Future	7	2002	11	4	0.14
9170	Heroes over Europe	5	2009	8	6	0.14
9171	The Bombing Islands	13	1997	2	189	0.14
9172	Earth Defense Force 2: Invaders from Planet Space	17	2011	9	59	0.14
9173	Bejeweled 3	6		5	54	0.14
9174	Monster Jam	4	2007	3	5	0.14
9175	Robots	4	2005	9	24	0.14
9176	Gyakuten Saiban 2	9	2002	9	13	0.14
9177	Godzilla: Save the Earth	14	2004	10	11	0.14
9178	Skylanders Giants	10	2012	9	5	0.14
9179	Eragon	5	2006	9	24	0.14
9180	Micro Machines	7	2002	3	11	0.14
9181	Detective Barbie: The Mystery Cruise	13	1999	11	140	0.14
9182	Jim Henson's the Muppets: On With the Show!	9	2003	9	73	0.14
9183	Desire	24	1997	11	313	0.14
9184	Valhalla Knights: Eldar Saga	1	2009	4	71	0.14
9185	Lips: I Love The 80s	5	2010	6	2	0.14
9186	Monster Hunter Diary: Poka Poka Airou Village DX	10	2015	9	13	0.14
9187	Frank Thomas Big Hurt Baseball	13	1996	1	31	0.14
9188	Tim Burton's The Nightmare Before Christmas: The Pumpkin King	9	2005	2	33	0.14
9189	Power Pro Kun Pocket 8	4	2005	1	15	0.14
9190	Sid Meier's Pirates!	14	2005	12	3	0.14
9191	Enclave	14	2002	11	314	0.14
9192	Bottom of the 9th	13	1996	1	15	0.14
9193	Pro Yaky? Spirits 2014	6	2014	1	15	0.14
9194	Dino Crisis 3	14	2003	9	13	0.14
9195	Syberia	4	2008	9	52	0.14
9196	Zoobles! Spring to Life!	4	2011	6	5	0.14
9197	NFL Blitz 20-03	19	2002	1	40	0.14
9198	The King of Fighters '94 (CD)	27	1993	10	244	0.14
9199	The Walking Dead: Season Two	18	2014	11	174	0.14
9200	Master Jin Jin's IQ Challenge	4	2006	6	12	0.14
9201	The Darkness II	15	2012	7	3	0.14
9202	Create	5	2010	9	8	0.14
9203	Karaoke Revolution Glee: Volume 3	5	2011	6	15	0.14
9204	Barbie Explorer	13	2001	2	54	0.14
9205	Rango: The Video Game	1	2011	9	8	0.14
9206	Disney's Chicken Little	14	2005	2	33	0.14
9207	Power Gig: Rise of the SixString	6	2010	6	54	0.14
9208	Transformers: Prime	20	2012	9	5	0.14
9209	Agile Warrior F-111X	13	1995	8	19	0.14
9210	NCIS	5	2011	11	6	0.14
9211	Jikkyou Powerful Pro Yakyuu Wii	1	2007	1	15	0.14
9212	Reality Fighters	23	2012	10	4	0.14
9213	Dynasty Warriors 7: Empires	6	2012	9	116	0.14
9214	Cabela's African Safari	5	2006	1	57	0.14
9215	Ben 10 Galactic Racing	4	2011	3	59	0.14
9216	College Hoops 2K8	6	2007	1	3	0.14
9217	Super Puzzle Fighter II Turbo	13	1996	5	19	0.14
9218	Ninjatown	4	2008	12	84	0.14
9219	Star Wars: Jedi Power Battles	9	2002	9	29	0.14
9220	Ultimate Muscle - The Kinnikuman Legacy: Legends vs New Generation	19	2002	10	26	0.14
9221	Hard Rock Casino	17	2007	6	60	0.14
9222	Space Venus starring Morning Musume	7	2001	6	315	0.14
9223	To Heart	13	1999	11	316	0.14
9224	Wild ARMs XF	17	2007	4	12	0.14
9225	Doukyuusei	28	1995	11	239	0.14
9226	RockMan & Forte	8	1998	2	13	0.14
9227	Persona 4: Arena Ultimax	6	2014	10	72	0.14
9228	NBA 2K13	20	2012	1	3	0.14
9229	Science Papa	1	2009	6	5	0.14
9230	Yu-Gi-Oh! Nightmare Troubadour (JP sales)	4	2005	9	15	0.14
9231	MySims Collection	1	2010	6	8	0.14
9232	Cities: Skylines	15	2015	8	317	0.14
9233	Football Manager 2012	17	2011	1	9	0.14
9234	Ape Escape Academy (jp sales)	17	2004	6	4	0.14
9235	FIFA 06 Soccer	19	2005	1	8	0.14
9236	Rayman Arena	19	2002	3	6	0.14
9237	PaRappa The Rapper	17	2006	6	4	0.14
9238	4x4 EVO 2	19	2002	3	24	0.14
9239	X-Blades	6	2009	9	84	0.14
9240	Pro Yakyuu Netsu Star 2006	7	2006	1	26	0.14
9241	The History Channel: Civil War - A Nation Divided	5	2006	7	5	0.14
9242	Zetta Hero Project: Unlosing Ranger vs. Darkdeath Evilman	17	2010	4	132	0.14
9243	Cyber Sled	13	1995	9	4	0.14
9244	Puyo Puyo!! 20th Anniversary	4	2011	5	9	0.14
9245	Famista Returns	10	2015	1	26	0.14
9246	Bust-A-Move Deluxe	17	2006	5	12	0.14
9247	I Spy: Universe	4	2010	5	117	0.14
9248	Shining Soul	9	2002	4	11	0.14
9249	Littlest Pet Shop: Spring	4	2009	8	8	0.14
9250	The Amazing Race	1	2010	6	6	0.14
9251	Alvin and the Chipmunks	4	2007	6	206	0.14
9252	Far Cry: Primal	15	2016	9	6	0.14
9253	Bejeweled 3	5		5	54	0.14
9254	Need for Speed Underground 2	4	2005	3	8	0.14
9255	Dead Rising 2	15	2010	9	13	0.14
9256	Let's Cheer	5	2011	6	3	0.14
9257	Happy Feet	1	2006	9	40	0.14
9258	In the Hunt	13	1995	7	29	0.14
9259	Daytona USA Championship Circuit Edition	24	1995	3	9	0.14
9260	Major League Baseball 2K8	1	2008	1	3	0.14
9261	Marvel vs. Capcom 2: New Age of Heroes	14	2002	10	13	0.14
9262	SNK vs. Capcom: The Match of the Millennium	7	2006	10	9	0.14
9263	BlazBlue: Chrono Phantasma Extend	11	2015	9	148	0.14
9264	Alone in the Dark: Inferno	6	2008	11	11	0.14
9265	Rogue Warrior	6	2009	7	7	0.14
9266	Singstar: Ultimate Party	6	2014	6	16	0.14
9267	The X-Factor	6	2010	6	42	0.14
9268	Fear Factor: Unleashed	9	2004	9	318	0.14
9269	Avatar: The Last Airbender - The Burning Earth	5	2007	9	29	0.14
9270	Vampire Moon: The Mystery of the Hidden Sun	4	2010	11	89	0.14
9271	Paws & Claws: Pet Vet 2	4	2007	8	29	0.14
9272	G.I. Joe: The Rise of Cobra	4	2009	9	8	0.14
9273	Football Manager 2014	23	2013	1	9	0.14
9274	BIT.TRIP SAGA	10	2011	6	71	0.14
9275	Touch My Katamari	23	2011	5	26	0.14
9276	MotoGP '06	5	2006	3	29	0.14
9277	Houshinengi	13	1998	12	49	0.14
9278	7th Dragon	4	2009	4	9	0.14
9279	Pet Pals: Animal Doctor	1	2008	8	259	0.14
9280	LEGO Island Xtreme Stunts	9	2002	3	133	0.14
9281	Cruise Ship Vacation Games	1	2009	5	191	0.14
9282	Yu-Gi-Oh! GX: Tag Force	17	2006	12	15	0.14
9283	Gourmet Chef: Cook Your Way to Fame	4	2008	6	6	0.14
9284	Learn Math	4	2009	5	319	0.14
9285	Nitrobike	1	2008	3	6	0.14
9286	Magnetica	4	2006	5	1	0.14
9287	World Soccer Winning Eleven 9 Bonus Pack	7	2006	1	15	0.14
9288	UEFA Euro 2004: Portugal	7	2004	1	8	0.14
9289	Hot Wheels: World Race	9	2003	3	29	0.14
9290	MLB 14: The Show	23	2014	1	143	0.14
9291	Dragon Age Origins: Awakening	15	2010	4	8	0.14
9292	Scene It? Bright Lights! Big Screen!	5	2009	6	20	0.14
9293	NBA Jam	14	2003	1	31	0.14
9294	Shining Resonance	6	2014	4	9	0.14
9295	World Tour Soccer 2002	7	2001	1	4	0.14
9296	Interactive Sampler Disc 6	13	1997	6	4	0.14
9297	Let's Play Ballerina	4	2010	1	42	0.14
9298	Wild Earth: African Safari	1	2008	8	35	0.14
9299	Apex	14	2003	3	11	0.14
9300	Kamen Rider Battle: Ganbaride	4	2010	12	26	0.14
9301	Tomb Raider: The Prophecy	9	2002	9	6	0.14
9302	Vampire Night	7	2001	7	4	0.14
9303	Kororinpa: Marble Mania	1	2006	5	1	0.14
9304	Open Season	4	2006	2	6	0.14
9305	Guilty Gear	13	1998	10	19	0.14
9306	Battlefield: Hardline	15	2015	7	8	0.14
9307	Game Party: Champions	20	2012	9	20	0.14
9308	Divinity II: The Dragon Knight Saga	5	2010	4	81	0.14
9309	World Championship Poker 2: Featuring Howard Lederer	17	2005	6	12	0.14
9310	Mary-Kate and Ashley: Crush Course	13	2001	9	31	0.14
9311	NHL Breakaway 98	13	1996	1	31	0.14
9312	Disney's Cinderella: Magical Dreams	9		2	33	0.14
9313	Top Shot Arcade	1	2011	7	5	0.14
9314	Imagine: Fashion Stylist	4	2010	8	6	0.14
9315	Pro Evolution Soccer 2015	18	2014	1	15	0.14
9316	Red Orchestra 2: Heroes of Stalingrad	15	2011	7	320	0.14
9317	Tiger Woods PGA Tour 2005	19	2004	1	8	0.14
9318	Deepak Chopra's Leela	1	2011	6	29	0.14
9319	Tom Clancy's Ghost Recon	1	2010	7	6	0.14
9320	007: Quantum of Solace	4	2008	9	5	0.14
9321	Salt Lake 2002	7	2002	1	22	0.14
9322	ESPN MLB Baseball	14	2004	1	9	0.14
9323	NCIS	1	2011	11	6	0.14
9324	Little League World Series Baseball 2009	4	2009	1	5	0.14
9325	Gladius	14	2003	12	5	0.14
9326	Legends of Wrestling	14	2002	10	31	0.14
9327	Queen's Gate: Spiral Chaos	17	2011	4	26	0.14
9328	Nayuta no Kiseki	17	2012	9	221	0.14
9329	Back At The Barnyard: Slop Bucket Games	4	2008	1	29	0.14
9330	Quick Yoga Training	4	2008	6	6	0.14
9331	Fashion Studio: Paris Collection	4	2009	6	6	0.13
9332	Legendary	6	2008	7	11	0.13
9333	Spy Hunter 2	14	2003	3	40	0.13
9334	Peppa Pig: Fun and Games	1	2010	6	6	0.13
9335	Backyard Soccer	13	2001	1	53	0.13
9336	Final Fantasy XI: Rise of the Zilart	7	2003	4	17	0.13
9337	James Bond 007: Nightfire	9	2003	7	8	0.13
9338	Nobunaga no Yabou: Tendou	6	2010	12	49	0.13
9339	Medalot 7	10	2012	9	138	0.13
9340	Bio FREAKS	13	1998	9	14	0.13
9341	Castlevania Chronicles	13	2001	2	15	0.13
9342	Suzumiya Haruhi no Tomadoi	7	2008	11	58	0.13
9343	MLB Power Pros 2008	1	2008	1	15	0.13
9344	NHL 2K8	5	2007	1	3	0.13
9345	Dokapon Kingdom	1	2008	4	321	0.13
9346	Bratz	9	2002	2	6	0.13
9347	Go Play: Circus Star	1	2009	9	35	0.13
9348	King Arthur	7	2004	9	15	0.13
9349	Winter Stars	1	2011	1	42	0.13
9350	Hisshou Pachinko*Pachi-Slot Kouryaku Series Vol. 1: CR Shinseiki Evangelion	7	2005	6	59	0.13
9351	The Guy Game	7	2004	6	214	0.13
9352	Rurouni Kenshin: Enjou! Kyoto Rinne	7	2006	9	58	0.13
9353	Blade II	14	2002	9	5	0.13
9354	Suikoden: Tsumugareshi Hyakunen no Toki	17	2012	4	15	0.13
9355	Baseball Advance	9	2002	1	9	0.13
9356	Shonen Jump's One Piece: Grand Battle	7	2005	10	11	0.13
9357	Retro Atari Classics	4	2005	6	11	0.13
9358	NHL 2K9	6	2008	1	3	0.13
9359	Pro Yaky? Spirits 6	7	2009	1	15	0.13
9360	Freddi Fish: ABC under the sea	4	2008	6	11	0.13
9361	Puzzle Kingdoms	4	2009	5	87	0.13
9362	Shovel Knight	10	2015	2	322	0.13
9363	Hyperdimension Idol Neptunia PP	23	2013	6	26	0.13
9364	Paperboy / Rampage	9	2005	6	87	0.13
9365	Shiren the Wanderer 4 - God's Eye and the Demon's Navel	4	2010	4	130	0.13
9366	Ben 10 Galactic Racing	10	2011	3	59	0.13
9367	Sentou Kokka Air Land Battle	13	1995	12	4	0.13
9368	NTRA Breeders' Cup World Thoroughbred Championships	7	2005	8	7	0.13
9369	Tak 2: The Staff of Dreams	14	2004	2	29	0.13
9370	Hulk Hogan's Main Event	5	2011	10	12	0.13
9371	Transformers: Devastation	18	2015	9	5	0.13
9372	Euro Truck Simulator 2	15	2012	9	323	0.13
9373	DmC: Devil May Cry	18	2015	9	13	0.13
9374	WipeOut 3 The Game	20	2012	9	5	0.13
9375	Ys: The Ark of Napishtim	7	2005	4	15	0.13
9376	Peter Jackson's King Kong: The Official Game of the Movie	4	2005	9	6	0.13
9377	Brain Assist	4	2007	6	9	0.13
9378	Azure Dreams	13	1997	4	15	0.13
9379	Rumble Roses XX	5	2006	10	15	0.13
9380	Space Camp	1	2009	9	5	0.13
9381	SingStar Latino	7	2007	6	4	0.13
9382	Bakugan: Battle Trainer	4	2010	9	5	0.13
9383	Phantom Brave: We Meet Again	1	2009	4	132	0.13
9384	Monster Rancher DS	4	2008	4	49	0.13
9385	Kurt Warner's Arena Football Unleashed	13	2000	1	40	0.13
9386	Suite PreCure: Melody Collection	4	2011	6	26	0.13
9387	Shin Megami Tensei: Devil Summoner 2 - Raidou Kuzunoha vs. King Abaddon	7	2008	4	72	0.13
9388	NHL 2K9	7	2008	1	3	0.13
9389	Venetica	5	2010	4	233	0.13
9390	Disney's Kim Possible: Kimmunicator	4	2005	2	33	0.13
9391	James Bond 007: Legends	20	2012	7	5	0.13
9392	Rogue Ops	14	2003	9	189	0.13
9393	NBA Hoopz	13	2001	1	40	0.13
9394	Transworld Surf	14		1	11	0.13
9395	Rugby 15	6	2015	1	324	0.13
9396	MLB 11: The Show	7	2011	1	4	0.13
9397	Castrol Honda Superbike Racing	13	1998	3	29	0.13
9398	History Civil War: Secret Missions	5	2008	7	5	0.13
9399	Army Men: Green Rogue	7	2001	9	78	0.13
9400	My Spanish Coach	17	2008	6	6	0.13
9401	Chessmaster	14	2004	6	6	0.13
9402	Over the Hedge: Hammy Goes Nuts!	4	2006	2	5	0.13
9403	Fatal Inertia	5	2007	3	49	0.13
9404	Superman: The Man of Steel	14	2002	9	11	0.13
9405	Ken to Mahou to Gakuen Mono. 3	17	2010	4	310	0.13
9406	Greg Hastings Paintball 2	1	2010	7	12	0.13
9407	The Flintstones: Bedrock Bowling	13	2000	1	6	0.13
9408	Teenage Mutant Ninja Turtles: Danger of the Ooze	10	2014	11	5	0.13
9409	NHL 2003	19	2002	1	8	0.13
9410	Chicken Run	13	2000	11	22	0.13
9411	Scene It? Bright Lights! Big Screen!	6	2009	6	20	0.13
9412	My Baby: First Steps	1	2009	8	84	0.13
9413	Pro Baseball Spirits 2015	23	2015	9	15	0.13
9414	Shining Force III	24	1997	12	9	0.13
9415	Jikkyou Powerful Pro Yakyuu 2011 Ketteiban	17	2011	1	15	0.13
9416	Tales of the Heroes: Twin Brave	17	2012	4	26	0.13
9417	WWE Survivor Series	9	2004	10	29	0.13
9418	Kouchuu Ouja Mushi King: Greatest Champion e no Michi DS 2	4	2006	9	9	0.13
9419	Super Robot Wars BX	10	2015	9	26	0.13
9420	Persona 4: Arena	5	2012	10	72	0.13
9421	Tomb Raider: Legend	14	2006	9	22	0.13
9422	Nagano Winter Olympics '98	13	1997	1	15	0.13
9423	Destroy All Humans! Path of the Furon	5	2008	9	29	0.13
9424	Winning Post 5	7	2001	1	49	0.13
9425	Star Wars: Lethal Alliance	17	2006	9	6	0.13
9426	Midnight Mysteries: The Edgar Allan Poe Conspiracy	4	2010	11	275	0.13
9427	All Star Cheer Squad 2	1	2009	1	29	0.13
9428	Frogger Beyond	19	2002	2	15	0.13
9429	RPG Maker II	7	2002	4	155	0.13
9430	Resident Evil: Revelations 2	23	2015	9	13	0.13
9431	SpongeBob's Surf & Skate Roadtrip	4	2011	9	29	0.13
9432	Destruction Derby Arenas	7	2004	3	4	0.13
9433	Cabela's Dangerous Hunts 2009	5	2008	1	5	0.13
9434	The Unholy War	13	1998	12	22	0.13
9435	Chuck E. Cheese's Game Room	4	2010	6	284	0.13
9436	Wantame Music Channel: Doko Demo Style	4	2007	6	13	0.13
9437	Disney's Winnie the Pooh's Rumbly Tumbly Adventure	9	2005	2	6	0.13
9438	Shaman King: Power of Spirit	7	2004	11	15	0.13
9439	Eat Lead: The Return of Matt Hazard	6	2009	7	59	0.13
9440	Attack on Titan (KOEI)	23	2016	9	49	0.13
9441	Soccer Tsuku DS: World Challenge 2010	4	2010	1	9	0.13
9442	Family Fortunes	1	2009	6	52	0.13
9443	Megamind: The Blue Defender	17	2010	11	29	0.13
9444	Contra III: The Alien Wars	8	1992	7	15	0.13
9445	Dead to Rights: Reckoning	17	2005	7	8	0.13
9446	The BIGS 2	6	2009	1	3	0.13
9447	Slime MoriMori Dragon Quest 3: Taikaizoku to Shippo Dan	10	2011	4	17	0.13
9448	Amagami	7	2009	11	155	0.13
9449	Diablo II	15	2000	4	325	0.13
9450	How to Train Your Dragon 2	6	2014	11	231	0.13
9451	NBA 08	6	2007	1	4	0.13
9452	The Smurfs 2	5	2013	2	6	0.13
9453	NeverDead	6	2012	7	15	0.13
9454	No Fear Downhill Mountain Biking	13	1998	1	36	0.13
9455	Fire ProWrestling	9	2001	10	130	0.13
9456	Eternal Poison (JP sales)	7	2008	4	58	0.13
9457	Mission: Impossible - Operation Surma	14	2003	2	11	0.13
9458	Naruto Shippuden: Kizuna Drive	17	2010	9	26	0.13
9459	The IdolM@ster: One for All	6	2014	6	26	0.13
9460	MX 2002 Featuring Ricky Carmichael	14	2001	3	29	0.13
9461	Indianapolis 500 Legends	1	2007	3	154	0.13
9462	Romance of the Three Kingdoms IV: Wall of Fire	13	1995	12	49	0.13
9463	Illusion of Gaia	8	1993	4	1	0.13
9464	Steel Battalion: Heavy Armor	5	2012	6	13	0.13
9465	Academy of Champions: Soccer	1	2009	1	6	0.13
9466	Mega Man Anniversary Collection	14	2005	2	13	0.13
9467	Disney Princess: Enchanting Storybooks	4	2011	6	29	0.13
9468	Sally's Salon	4	2008	8	13	0.13
9469	The Oregon Trail	10	2011	8	68	0.13
9470	Disruptor	13	1995	7	118	0.13
9471	NBA Ballers: Chosen One	6	2008	1	40	0.13
9472	Lovely Lisa and Friends	4	2010	8	100	0.13
9473	Hasbro Family Fun Pack	18	2015	6	6	0.13
9474	Shrek Smash n' Crash Racing	19	2006	3	5	0.13
9475	Under Night In-Birth	6	2014	10	132	0.13
9476	Drakengard 2	7	2005	4	6	0.13
9477	Street Fighter IV	15		10	13	0.13
9478	Grand Knights History	17	2011	4	220	0.13
9479	Harvest Moon DS (jp sales)	4	2005	8	71	0.13
9480	Summon Night: Twin Age	4	2007	4	58	0.13
9481	Sin and Punishment	12	2000	7	1	0.13
9482	NBA Jam 2000	12	1999	1	31	0.13
9483	Castlevania: Legacy of Darkness	12	1999	2	15	0.13
9484	Just Dance: Disney Party	1	2012	6	6	0.13
9485	Cabela's Alaskan Adventure	5	2006	1	5	0.13
9486	Rango: The Video Game	5	2011	9	8	0.13
9487	Shrek Super Party	14	2002	6	73	0.13
9488	Sonic Riders	14	2006	3	9	0.13
9489	Shimano Xtreme Fishing	1	2009	1	178	0.13
9490	The History Channel: Great Battles - Medieval	5	2010	12	326	0.13
9491	TRON: Evolution	17	2010	9	33	0.13
9492	Rally Fusion: Race of Champions	7	2002	3	5	0.13
9493	Barbie and the Three Musketeers	4	2009	11	5	0.13
9494	Secret Agent Clank	17	2008	2	4	0.13
9495	The House of the Dead	24	1997	7	9	0.13
9496	DreamWorks Super Star Kartz	4	2011	3	5	0.13
9497	RealSports Volleyball	16	1981	1	11	0.13
9498	Heroes of the Pacific	14	2005	8	36	0.13
9499	Smart Boy's Gameroom	4	2007	6	12	0.13
9500	NightCaster	14	2002	9	2	0.13
9501	RollerCoaster Tycoon	14	2003	12	11	0.13
9502	FIFA World Cup Germany 2006	19	2006	1	8	0.13
9503	Hitman 2: Silent Assassin	19	2003	9	22	0.13
9504	MLB 13: The Show	23	2013	1	4	0.13
9505	Nicktoons: MLB	5	2011	1	3	0.13
9506	Digimon Racing	9	2004	3	26	0.13
9507	Ape Escape 3	7	2005	2	4	0.13
9508	Green Lantern: Rise of the Manhunters	5	2011	9	20	0.13
9509	Crouching Tiger, Hidden Dragon	7	2003	9	6	0.13
9510	Last Bronx	24	1996	10	9	0.13
9511	Iridion II	9	2003	7	24	0.13
9512	Momotaro Douchuuki	24	1997	6	69	0.13
9513	Brothers: A Tale of Two Sons	11	2015	11	12	0.13
9514	Tom Clancy's Splinter Cell: Double Agent	1	2006	9	6	0.13
9515	Whiplash	7	2003	3	22	0.13
9516	BlazBlue: Continuum Shift II	17	2011	10	148	0.13
9517	Backyard Sports Football: Rookie Rush	1	2010	1	11	0.13
9518	Warcraft III: Reign of Chaos	15	2002	12	24	0.13
9519	Farming Simulator 2011	15	2010	8	34	0.13
9520	Margot's Word Brain	1	2008	5	87	0.13
9521	Spider-Man: Battle for New York	4	2006	2	5	0.13
9522	Imagine: Fashion Designer	10	2011	8	6	0.13
9523	Pop'n Music Portable	17	2010	6	15	0.13
9524	Nintendo Puzzle Collection	19		5	54	0.13
9525	Borderlands: Double Game Add-On Pack	5	2010	7	3	0.13
9526	Otogi: Myth of Demons	14	2002	9	9	0.13
9527	The Price is Right 2010 Edition	4	2009	6	6	0.13
9528	Army Men: Soldiers of Misfortune	1	2008	7	75	0.13
9529	Alter Echo	7	2003	7	29	0.13
9530	Walt Disney Pictures Presents: The Wild	9	2006	2	33	0.13
9531	Puzzle de Harvest Moon	4	2007	5	80	0.13
9532	Reader Rabbit Kindergarten	1	2010	6	327	0.13
9533	Onechanbara: Bikini Samurai Squad	5	2006	9	59	0.13
9534	Metal Max 3	4	2010	4	155	0.13
9535	Rock Band Track Pack Volume 1	7	2008	6	32	0.13
9536	Puyo Puyo!! 20th Anniversary	10	2011	5	9	0.13
9537	Hour of Victory	5	2007	7	40	0.13
9538	Namco Soccer Prime Goal	13	1995	1	4	0.13
9539	NBA 08	7	2007	1	4	0.13
9540	Dragon Quest Heroes II: Twin Kings and the Prophecy's End	6	2016	9	17	0.13
9541	Monster Hunter Frontier Online	5	2010	4	13	0.13
9542	Green Lantern: Rise of the Manhunters	10	2011	9	20	0.13
9543	Shin Megami Tensei: Digital Devil Saga	7	2004	4	145	0.13
9544	7 Wonders of the Ancient World	4	2007	5	328	0.13
9545	Backyard Baseball '09	4	2008	1	11	0.13
9546	Puppies 3D	10	2011	6	6	0.13
9547	Jissen Pachi-Slot Hisshouhou! Aladdin II Evolution	7	2005	6	9	0.13
9548	Mystic Ark	8	1995	4	25	0.13
9549	Just Cause 2	15	2010	9	17	0.13
9550	Ty the Tasmanian Tiger 2: Bush Rescue	9	2004	2	8	0.13
9551	Venetica	6	2010	4	233	0.13
9552	Teenage Mutant Ninja Turtles 2: Battle Nexus	14	2004	9	15	0.13
9553	LEGO Racers 2	7	2001	3	8	0.13
9554	Backyard Baseball	19	2003	1	53	0.13
9555	Transformers: War for Cybertron -- Decepticons	4	2010	9	5	0.13
9556	Overlord: Raising Hell	6	2008	9	36	0.13
9557	Sega GT	22	2000	3	9	0.13
9558	Fuse (Insomniac)	5	2013	7	8	0.13
9559	Cabela's Dangerous Hunts 2009	6	2008	1	57	0.13
9560	Legends of Wrestling	19	2002	10	31	0.13
9561	Space Bust-A-Move	4	2008	5	17	0.13
9562	Legend of the Guardians: The Owls of Ga'Hoole	1	2010	9	20	0.13
9563	Gunstar Heroes	21	1992	7	9	0.13
9564	All-Star Baseball 2004	14	2003	1	31	0.13
9565	Tamagotchi no Pichi Pichi Omisecchi	4	2010	9	26	0.13
9566	Shining Wind	7	2007	4	9	0.13
9567	Brothers in Arms: Double Time	1	2008	7	6	0.13
9568	Portal Runner	7	2001	2	78	0.13
9569	Pokémon: For Ho-Oh the Bells Toll!: Game Boy Advance Video	9	2004	6	1	0.13
9570	Pro Evolution Soccer 2016	5	2015	1	15	0.13
9571	Batman: Arkham Knight	15	2015	9	20	0.13
9572	Warriors Orochi 2	7	2008	9	49	0.13
9573	Disney's Winnie the Pooh's Rumbly Tumbly Adventure	7	2005	2	6	0.13
9574	Need for Speed: ProStreet	4	2007	3	8	0.13
9575	Assault: Retribution	13	1998	9	329	0.13
9576	Sengoku Basara 3 Utage	1	2011	9	13	0.13
9577	Spartan: Total Warrior	14	2005	9	9	0.13
9578	Gravity Rush Remastered	11	2015	9	4	0.13
9579	Rock Band Track Pack Volume 2	6	2008	6	32	0.13
9580	City Crisis	7	2001	8	3	0.13
9581	Zapper: One Wicked Cricket!	19	2002	2	53	0.13
9582	Star Wars: Clone Wars	14	2003	7	18	0.13
9583	Assassination Classroom: Grand Siege on Kuro-sensei	10	2015	9	26	0.13
9584	Dynasty Warriors 5 Empires	5	2006	9	49	0.13
9585	High Rollers Casino	14	2004	6	184	0.13
9586	Advent Rising	14	2005	9	29	0.13
9587	Surf Riders	13	1999	1	6	0.13
9588	Torino 2006	7	2006	1	3	0.13
9589	Nobunaga no Yabou: Ranseiki	7	2002	12	49	0.13
9590	Derby Stallion Advance	9	2002	1	155	0.13
9591	PBR: Out of the Chute	1	2008	1	68	0.13
9592	Monopoly Party	19	2002	6	53	0.13
9593	LEGO Batman 2: DC Super Heroes	20	2013	9	20	0.13
9594	Thor: God of Thunder	4	2011	9	9	0.13
9595	TOCA Race Driver 2: Ultimate Racing Simulator	14	2004	3	36	0.13
9596	The Price is Right: Decades	1	2011	6	6	0.13
9597	Snood	9	2001	5	204	0.13
9598	The Sky Crawlers: Innocent Aces	1	2008	8	26	0.13
9599	Avatar: The Last Airbender - Into the Inferno	4	2008	11	29	0.13
9600	Fit in Six	6	2011	1	6	0.13
9601	Monster Jam: Urban Assault	7	2008	3	5	0.13
9602	Ice Age: Dawn of the Dinosaurs	5	2009	9	5	0.13
9603	DT Racer	7	2005	3	165	0.13
9604	SimAnimals Africa	1	2009	8	8	0.13
9605	Deepak Chopra's Leela	5	2011	6	29	0.13
9606	Twister Mania	5	2011	6	12	0.13
9607	World Cup Golf: Professional Edition	13	1995	1	330	0.13
9608	Black Dawn	13	1996	8	19	0.13
9609	Soccer Tsuku: Pro Soccer Club o Tsukurou!	6	2013	1	9	0.13
9610	428: Fuusa Sareta Shibuya de	1	2008	11	9	0.13
9611	Kelly Slater's Pro Surfer	9	2002	1	5	0.13
9612	Warriors of Might and Magic	13	2001	11	78	0.13
9613	Drome Racers	7	2002	3	8	0.13
9614	X-Men: Next Dimension	19	2002	10	5	0.13
9615	Impossible Mission	4	2007	2	158	0.13
9616	NCIS	6	2011	11	6	0.13
9617	Cabela's Dangerous Hunts 2011	4	2010	1	5	0.13
9618	Garfield's Fun Fest	4	2008	2	87	0.13
9619	7th Dragon 2020-II	17	2013	4	9	0.13
9620	Doukyuusei 2	24	1997	4	245	0.13
9621	SkullMonkeys	13	1998	2	331	0.13
9622	Cloudy With a Chance of Meatballs	1	2009	2	6	0.13
9623	Burnout	14	2002	3	31	0.13
9624	Zenses: Ocean	4	2008	5	103	0.13
9625	Ben 10 Galactic Racing	1	2011	3	59	0.13
9626	Teenage Mutant Ninja Turtles: Arcade Attack	4	2009	9	6	0.13
9627	Baroque	7	2007	4	71	0.13
9628	Left Brain Right Brain 2	4	2008	6	35	0.13
9629	Dynasty Warriors: Gundam Reborn	23	2013	9	26	0.13
9630	Kidz Sports: Crazy Golf	1	2008	1	332	0.13
9631	Little Battlers eXperience: Wars	10	2013	12	38	0.13
9632	Victorious: Time to Shine	5	2011	9	59	0.13
9633	NBA Ballers: Phenom	14	2006	1	40	0.13
9634	Aikatsu! 365 Idol Days	10	2014	11	26	0.13
9635	Petz Puppyz & Kittenz	4	2011	6	6	0.13
9636	Crash Tag Team Racing	14	2005	3	24	0.13
9637	Freedom Fighters	19	2003	7	8	0.13
9638	The Stronghold Collection	15	2009	12	3	0.13
9639	Operation Abyss: New Tokyo Legacy	23	2014	4	132	0.13
9640	Transformer: Rise of the Dark Spark	6	2014	9	5	0.13
9641	Mega Man X Collection	19	2006	6	13	0.13
9642	Detana TwinBee Yahho! Deluxe Pack	24	1995	7	15	0.13
9643	Dragon Ball: Origins	4	2008	9	11	0.13
9644	Last Ranker	17	2010	4	13	0.13
9645	Quantum Redshift	14	2002	3	2	0.13
9646	Smash Court Tennis Pro Tournament 2	7	2004	1	4	0.13
9647	Eat Lead: The Return of Matt Hazard	5	2009	7	59	0.13
9648	Battleborn	18	2016	7	3	0.13
9649	Legends of Wrestling II	14	2002	10	31	0.13
9650	Power Pro Kun Pocket 13	4	2010	1	15	0.13
9651	Armed and Dangerous	14	2003	7	18	0.13
9652	Jurassic: The Hunted	5	2009	7	5	0.13
9653	Adventures to Go!	17	2008	4	202	0.13
9654	Conduit 2	1	2011	7	9	0.13
9655	Supremacy MMA	6	2011	10	12	0.13
9656	World Soccer Winning Eleven 2002	13	2002	1	15	0.13
9657	Geometry Wars: Galaxies	1	2007	7	24	0.13
9658	Actua Tennis	13	1997	1	264	0.13
9659	Horse Life	4	2007	8	292	0.13
9660	Monster Truck Madness	9	2003	3	29	0.12
9661	Sonic Jam	24	1997	2	9	0.12
9662	Puella Magi Madoka Magica Portable	17	2012	4	26	0.12
9663	Ninja Reflex	1	2008	9	8	0.12
9664	Peter Jacobsen's Golden Tee Golf	13	2000	1	53	0.12
9665	Calling	1	2009	11	15	0.12
9666	Marvel Avengers: Battle for Earth	20	2012	9	6	0.12
9667	Disney's Atlantis: The Lost Empire	9	2001	2	29	0.12
9668	Nippon Daihyou Team no Kantoku ni Narou! Sekaihatsu Soccer RPG	24	1998	1	9	0.12
9669	Charm Girls Club: My Fashion Mall	4		8	54	0.12
9670	Where the Wild Things Are	1	2009	2	20	0.12
9671	High Velocity: Mountain Racing Challenge	24	1995	3	72	0.12
9672	NHL 2K7	6	2006	1	3	0.12
9673	Resident Evil	6	2006	9	13	0.12
9674	Capcom vs. SNK 2: Millionaire Fighting 2001	22	2001	10	13	0.12
9675	Criticom	13	1996	10	306	0.12
9676	SCORE International Baja 1000: The Official Game	5	2008	3	5	0.12
9677	Disney Sing It: Party Hits	6	2010	6	33	0.12
9678	Sleeping Dogs	15	2012	9	17	0.12
9679	Mega Man X: Command Mission	19	2004	4	13	0.12
9680	Diner Dash: Sizzle & Serve	17	2007	5	22	0.12
9681	After Hours Athletes	6	2011	1	4	0.12
9682	Lego Star Wars: The Force Awakens	6	2016	9	20	0.12
9683	Worms 3D	7	2003	12	9	0.12
9684	Clock Tower: The First Fear	13	1997	11	190	0.12
9685	Kidou Senshi Gundam Seed Battle Destiny	23	2012	9	26	0.12
9686	Godzilla Unleashed: Double Smash	4	2007	9	11	0.12
9687	Star Trek: Conquest	1	2007	12	7	0.12
9688	Kilari: Na-san, Mon Meilleur Ami	4	2006	8	15	0.12
9689	Strikers 1945	13	1998	7	162	0.12
9690	Ochaken no Heya DS	4	2006	8	333	0.12
9691	Obscure: The Aftermath	1	2008	9	286	0.12
9692	Galidor: Defenders of the Outer Dimension	9	2002	9	8	0.12
9693	Tom Clancy's Splinter Cell Trilogy	6	2011	9	6	0.12
9694	WRC: FIA World Rally Championship	5		3	194	0.12
9695	Fire ProWrestling S: 6Men Scramble	24	1996	10	190	0.12
9696	Blackwater	5	2011	7	12	0.12
9697	Pryzm Chapter One: The Dark Unicorn	7	2002	11	73	0.12
9698	Gundam Battle Royale	17	2006	9	26	0.12
9699	Solitaire & Mahjong	1	2009	5	68	0.12
9700	Zen-Nippon Pro Wrestling: Ouja no Kon	13	1999	10	190	0.12
9701	NASCAR 2005: Chase for the Cup	19	2004	3	8	0.12
9702	Homefront: The Revolution	18	2016	7	42	0.12
9703	Hisshou Pachinko*Pachi-Slot Kouryaku Series Vol. 12: CR Shinseiki Evangelion - Shito, Futatabi	7	2008	6	59	0.12
9704	Guilty Gear X	7	2001	10	101	0.12
9705	Deadliest Catch: Sea of Chaos	1	2010	1	68	0.12
9706	One Piece: Pirate Warriors 2	23	2013	9	26	0.12
9707	NHL 2002	9	2002	1	8	0.12
9708	Disney's PK: Out of the Shadows	7	2002	2	6	0.12
9709	Mugen no Frontier: Super Robot Taisen OG Saga EXCEED	4	2010	4	26	0.12
9710	Karaoke Revolution	5	2009	6	15	0.12
9711	Echo Night	13	1998	11	228	0.12
9712	Are You Smarter than a 5th Grader? Game Time	5	2009	5	29	0.12
9713	Rocket League	18	2016	1	12	0.12
9714	Wild ARMs 5 (jp sales)	7	2006	4	12	0.12
9715	Tom Clancy's Splinter Cell: Blacklist	20	2013	9	6	0.12
9716	Gladiator Begins	17	2010	9	148	0.12
9717	Colony Wars III: Red Sun	13	2000	8	88	0.12
9718	Magic: The Gathering - Battlemage	13	1997	12	31	0.12
9719	The King of Fighters '94	27	1994	10	244	0.12
9720	DS Yamamura Misa Suspense: Maiko Kogiku - Kisha Katherine - Sougiya Isa Akashi - Koto ni Maru Hana Sanrin: Kyoto Satujin Jinken File	4	2008	11	49	0.12
9721	Puzzle Quest 2	4	2010	5	59	0.12
9722	All Kamen Rider: Rider Generation	4	2011	9	26	0.12
9723	The King of Fighters '98 Ultimate Match	7	2008	10	151	0.12
9724	Onechanbara: Bikini Zombie Slayers	1	2008	9	59	0.12
9725	Puzzle Quest: Challenge of the Warlords	7	2007	5	59	0.12
9726	Angry Birds Star Wars	23	2013	12	5	0.12
9727	Guardian's Crusade	13	1998	4	5	0.12
9728	Undead Knights	17	2009	9	116	0.12
9729	Final Fantasy XIV: Heavensward	11	2015	9	17	0.12
9730	Lemony Snicket's A Series of Unfortunate Events	14	2004	2	5	0.12
9731	MotoGP 3 - Official Game of MotoGP	7	2003	3	26	0.12
9732	Makai Kingdom: Chronicles of the Sacred Tome	7	2005	4	49	0.12
9733	The Ant Bully	19	2006	2	40	0.12
9734	M&M's Kart Racing	4	2008	3	87	0.12
9735	Bomberman Party Edition	13	1998	5	19	0.12
9736	Gotouchi Tetsudou: Gotouchi Chara to Nihon Zenkoku no Tabi	10	2014	6	26	0.12
9737	Dragon Ball Z: Battle of Z	23	2014	10	26	0.12
9738	Eyeshield 21: Max Devil Power	4	2006	4	1	0.12
9739	Summon Night 3	17	2012	4	26	0.12
9740	O.D.T.: Escape... Or Die Trying	13	1997	11	88	0.12
9741	Madden NFL 06	4	2005	1	8	0.12
9742	Escape The Museum	1	2009	11	35	0.12
9743	Fuse (Insomniac)	6	2013	7	8	0.12
9744	Record of Agarest War Zero	6		12	145	0.12
9745	Lunar: Dragon Song	4	2005	4	71	0.12
9746	Break 'Em All	4	2005	5	59	0.12
9747	WWE SmackDown vs Raw 2008	4	2007	10	29	0.12
9748	MotoGP 14	6	2014	3	257	0.12
9749	Cars 2	17	2011	3	33	0.12
9750	Major League Baseball 2K8 Fantasy All-Stars	4	2008	1	3	0.12
9751	Super Robot Wars OG Saga: Masou Kishin II - Revelation of Evil God	17		12	34	0.12
9752	Mobile Suit Gundam Seed: Rengou vs. Z.A.F.T. Portable	17	2007	7	26	0.12
9753	San Goku Shi V	24	1996	12	49	0.12
9754	Puzzle Kingdoms	1	2009	5	87	0.12
9755	The Lord of the Rings: Aragorn's Quest	4	2010	9	20	0.12
9756	WRC 5: FIA World Rally Championship	6	2015	1	324	0.12
9757	Red Faction II	14	2003	7	29	0.12
9758	Daikaijyuu Monogatari II	8	1996	4	69	0.12
9759	Rock Band Track Pack Volume 2	7	2008	6	32	0.12
9760	Voodoo Vince	14	2003	2	2	0.12
9761	Bodycount	6	2011	7	36	0.12
9762	Gundam Memories: Tatakai no Kioku	17	2011	9	26	0.12
9763	Megamind: Ultimate Showdown	5	2010	9	29	0.12
9764	Kaijuu Busters	4	2009	9	26	0.12
9765	Neopets Petpet Adventures: The Wand of Wishing	17	2006	11	4	0.12
9766	Ferrari Challenge Trofeo Pirelli	7	2008	3	158	0.12
9767	Virtua Fighter CG Portrait Series Vol.4: Pai Chan	24	1995	6	9	0.12
9768	Chase: Hollywood Stunt Driver	14	2002	3	176	0.12
9769	The X Files: Resist or Serve	7	2004	11	24	0.12
9770	Mobile Suit Gundam Side Story: Missing Link	6	2014	9	26	0.12
9771	Saru! Get You! Million Monkeys	7		2	54	0.12
9772	Curious George	7	2006	9	26	0.12
9773	Crush3D	10	2012	2	9	0.12
9774	Zathura	7	2005	11	3	0.12
9775	Lovely Lisa	4	2007	8	334	0.12
9776	Medarot DS: Kabuto / Kuwagata Ver.	4	2010	4	138	0.12
9777	Mountain Sports	1	2009	1	5	0.12
9778	Tenchu: Shadow Assassins	17	2009	9	6	0.12
9779	NPPL: Championship Paintball 2009	5	2008	7	57	0.12
9780	Lost Planet 3	5	2013	7	13	0.12
9781	Making History: The Great War	17	2010	12	26	0.12
9782	Shin Megami Tensei: Devil Survivor 2	10	2015	4	72	0.12
9783	The God of War Trilogy	6	2010	9	4	0.12
9784	Dance Paradise	5	2010	6	52	0.12
9785	Backyard Baseball '10	4	2009	1	11	0.12
9786	Blazblue: Continuum Shift Extend	23	2011	10	148	0.12
9787	Cel Damage	14	2001	3	8	0.12
9788	Go! Sudoku	17	2005	5	4	0.12
9789	Alice: Madness Returns	15	2011	11	8	0.12
9790	SSX 3	9	2003	1	8	0.12
9791	My Chinese Coach	4	2008	6	6	0.12
9792	DiRT 2	4	2009	3	36	0.12
9793	Yamakawa Shuppansha Kanshuu: Shousetsu Nihonshi B	4	2007	6	26	0.12
9885	Deus Ex: Human Revolution	20	2013	7	17	0.12
9794	The King of Fighters Collection: The Orochi Saga	1	2008	10	151	0.12
9795	Atelier Annie: Alchemists of Sera Island	4	2009	4	243	0.12
9796	Breakdown	14	2004	11	8	0.12
9797	Rush	17	2006	3	40	0.12
9798	Ecco the Dolphin	21	1992	11	9	0.12
9799	The Legend of Heroes: Trails of Cold Steel II	6	2014	4	132	0.12
9800	Looney Tunes: Sheep Raider	13	2001	2	53	0.12
9801	Yard Sale Hidden Treasures: Sunnyville	4	2010	5	15	0.12
9802	Harvest Moon 2 GBC	3	1999	8	6	0.12
9803	Killer is Dead	5	2013	9	42	0.12
9804	Lost in Shadow	1	2010	2	15	0.12
9805	Cory in the House	4	2007	9	33	0.12
9806	X2: Wolverine's Revenge	19	2003	2	5	0.12
9807	McDROID	1	2011	12	26	0.12
9808	Gallop Racer 2000	13	2000	1	49	0.12
9809	Showdown: Legends of Wrestling	14	2004	10	31	0.12
9810	Macross Triangle Frontier	17	2011	9	26	0.12
9811	Chessmaster: The Art of Learning	17	2008	6	6	0.12
9812	Petz Fantasy: Moonlight Magic	4	2010	8	6	0.12
9813	Gundam Breaker 3	23	2016	9	26	0.12
9814	My Farm Around the World	4	2008	8	11	0.12
9815	Fat Princess: Fistful of Cake	17	2010	9	4	0.12
9816	Zubo	4	2008	6	8	0.12
9817	Street Hoops	19		1	54	0.12
9818	NFL QB Club 2001	12	2000	1	31	0.12
9819	Earthworm Jim 3D	12	1999	2	118	0.12
9820	Rocket: Robot on Wheels	12	1999	2	6	0.12
9821	Densha De Go! 64	12	1999	8	94	0.12
9822	Godzilla: Destroy All Monsters Melee	14		10	54	0.12
9823	The Daring Game for Girls	4		11	54	0.12
9824	Conception II: Children of the Seven Stars	10	2013	4	185	0.12
9825	Animal Genius	4	2007	5	6	0.12
9826	Sega Soccer Slam	7	2002	1	9	0.12
9827	Zenses: Rainforest	4	2008	5	103	0.12
9828	Dora the Explorer: Dora Saves the Mermaids	7	2008	2	3	0.12
9829	Grand Theft Auto: San Andreas	5	2008	9	3	0.12
9830	Phantasy Star Universe	5	2006	4	9	0.12
9831	Skate City Heroes	1	2008	1	87	0.12
9832	NASCAR Unleashed	5	2011	3	5	0.12
9833	2 Games in 1 Double Pack: Hot Wheels Velocity X / Hot Wheels World Race	9	2005	3	29	0.12
9834	College Hoops 2K6	5	2006	1	3	0.12
9835	Mytran Wars	17	2009	12	42	0.12
9836	MX vs. ATV Untamed	4	2007	3	29	0.12
9837	Prince of Persia: Rival Swords	17	2007	9	6	0.12
9838	Mahou Shoujo Lyrical Nanoha A's Portable: The Gears of Destiny	17	2011	10	26	0.12
9839	Gungnir: Mayari no Gunshin to Eiyuu Sensou	17	2011	4	72	0.12
9840	Dodge Racing: Charger vs Challenger	1	2009	3	202	0.12
9841	Fate/Extra CCC	17	2013	9	105	0.12
9842	Rocksmith	15		6	54	0.12
9843	MTV Sports: Pure Ride	13	2000	1	29	0.12
9844	Sonic Adventure 2	22	2001	2	9	0.12
9845	Burning Road	13	1996	3	335	0.12
9846	Slayers	8	1994	4	58	0.12
9847	Super Robot Wars OG Saga: Masou Kishin - The Lord of Elemental	4	2010	12	26	0.12
9848	IndyCar Series	7	2003	3	36	0.12
9849	Space Chimps	7	2008	2	206	0.12
9850	Crash Superpack: Crash Bandicoot 2: N-Tranced / Crash Nitro Kart	9	2005	6	24	0.12
9851	Famicom Mini: TwinBee	9	2004	7	15	0.12
9852	4 Game Fun Pack: Monopoly / Boggle / Yahtzee / Battleship	4	2005	6	11	0.12
9853	Gladiator: Sword of Vengeance	7	2003	9	31	0.12
9854	nail'd	6	2010	3	42	0.12
9855	PixelJunk Monsters Deluxe	17	2010	12	4	0.12
9856	Tom Clancy's EndWar	17	2008	12	6	0.12
9857	Ultimate Card Games	9	2003	6	183	0.12
9858	Jikkyou Powerful Pro Yakyuu 8 Ketteiban	7	2001	1	15	0.12
9859	Rubik's World	4	2008	5	103	0.12
9860	Lost Magic	4	2006	4	6	0.12
9861	Wallace & Gromit: Curse of the Were-Rabbit	7	2005	11	15	0.12
9862	DreamWorks Super Star Kartz	10	2011	3	5	0.12
9863	Minute to Win It	4	2010	6	75	0.12
9864	The Bible Game	9	2005	6	68	0.12
9865	NFL Head Coach	14	2006	1	8	0.12
9866	Pinball Hall of Fame: The Williams Collection	5	2009	6	68	0.12
9867	Medarot 4: Kabuto / Kuwagata Version	3	2001	4	157	0.12
9868	Backyard Sports Football: Rookie Rush	5	2010	1	11	0.12
9869	Sacred 3	6	2014	4	42	0.12
9870	Major League Baseball 2K6	17		1	54	0.12
9871	Vacation Isle: Beach Party	1	2010	6	20	0.12
9872	Fit in Six	1	2011	1	6	0.12
9873	Mahou Shoujo Lyrical Nanoha A's Portable: The Battle of Aces	17	2010	7	26	0.12
9874	Ed, Edd n Eddy: The Mis-Edventures	9	2005	2	40	0.12
9875	Onimusha: Blade Warriors	7	2003	10	13	0.12
9876	Tecmo Bowl: Kickoff	4	2008	1	49	0.12
9877	Disney's Extreme Skate Adventure	19	2003	1	5	0.12
9878	Akuji the Heartless	13	1998	2	22	0.12
9879	NBA 2K2	19	2002	1	9	0.12
9880	7 Days to Die	11	2016	9	174	0.12
9881	Monster Jam: Path of Destruction	5	2010	3	5	0.12
9882	Everybody Dance	6	2011	6	4	0.12
9883	Psychonauts	14	2005	2	29	0.12
9884	Power Gig: Rise of the SixString	5	2010	6	54	0.12
9886	Jeremy McGrath Supercross World	19	2002	3	31	0.12
9887	Uta no * Prince-Sama: All Star	17	2013	9	309	0.12
9888	HardBall 5	13	1996	1	336	0.12
9889	Airborne Troops: Countdown to D-Day	7	2005	7	286	0.12
9890	MLB Inside Pitch 2003	14	2003	1	2	0.12
9891	ArmA III	15	2013	7	337	0.12
9892	The Walking Dead: Season Two	5	2014	11	174	0.12
9893	Marvel Trading Card Game	4	2007	6	15	0.12
9894	One Piece: Super Grand Battle! X	10	2014	10	26	0.12
9895	The Penguins of Madagascar: Dr. Blowhole Returns - Again!	4	2011	9	29	0.12
9896	Self-Defense Training Camp	5	2011	1	6	0.12
9897	Battles of Prince of Persia	4	2005	12	6	0.12
9898	Deca Sports Extreme	10	2011	1	69	0.12
9899	Cruis'n	1	2007	3	40	0.12
9900	Hatsune Miku: Project Diva X	23	2016	6	9	0.12
9901	Battle Arena Toshinden Remix	24	1994	10	9	0.12
9902	Assassin's Creed Chronicles	23	2016	9	6	0.12
9903	Legends of Wrestling II	19	2002	10	31	0.12
9904	Tropico 5	15	2014	8	200	0.12
9905	A.C.E.: Another Century's Episode Portable	17	2011	8	26	0.12
9906	Dragon Quest Builders: Revive Alefgard	6	2016	4	17	0.12
9907	Rodea the Sky Soldier	20	2015	9	132	0.12
9908	Peggle: Dual Shot	4	2009	5	208	0.12
9909	Jikkyou Powerful Pro Yakyuu 9	19	2002	1	15	0.12
9910	Sniper Elite	1	2010	7	338	0.12
9911	Etrian Odyssey V	10	2016	4	72	0.12
9912	Jikkyou Powerful Pro Yakyuu 2014	23	2014	1	15	0.12
9913	Barbie as The Island Princess	7	2007	11	5	0.12
9914	Crime Killer	13	1998	3	118	0.12
9915	NPPL: Championship Paintball 2009	1	2008	7	57	0.12
9916	Backyard Wrestling 2: There Goes the Neighborhood	14	2004	10	22	0.12
9917	Dementium II	4	2010	7	84	0.12
9918	Don Bradman Cricket 14	11	2015	1	339	0.12
9919	USA Today Crossword Challenge	4	2008	5	154	0.12
9920	MegaTagmension Blanc + Neptune VS Zombies	23	2015	9	285	0.12
9921	Bishoujo Senshi Sailormoon S: Juugai Rantou!? Shuyaku Soudatsusen	8	1994	10	223	0.12
9922	SD Gundam G Generation-F.I.F	13	2001	12	26	0.12
9923	Jaws: Ultimate Predator	10	2011	9	35	0.12
9924	Yakuza Kiwami	6	2016	11	9	0.12
9925	Raiden IV	5	2008	7	340	0.12
9926	Deception IV: Blood Ties	6	2014	9	49	0.12
9927	The Walking Dead: Survival Instinct	20	2013	7	5	0.12
9928	Rock Band: Metal Track Pack	6	2009	6	32	0.12
9929	Charm Girls Club: My Perfect Prom	4	2009	8	8	0.12
9930	DreamWorks Super Star Kartz	6	2011	3	5	0.12
9931	Harukanaru Augusta 2: Masters	8	1993	1	341	0.12
9932	Castlevania: Curse of Darkness	14	2005	9	15	0.12
9933	Spider-Man: Edge of Time	10	2011	9	5	0.12
9934	Mobil 1 Rally Championship	13	2000	3	8	0.12
9935	King of Colosseum (Red): Shin Nippon x Zen Nippon x Pancrase Disc	7	2002	10	130	0.12
9936	Turok: Evolution	9	2002	7	31	0.12
9937	The Clique: Diss and Make Up	4	2009	11	20	0.12
9938	Love Live! School Idol Paradise	23	2014	6	278	0.12
9939	Rugrats: Totally Angelica	13	2001	11	29	0.12
9940	Nightshade	7	2003	9	9	0.12
9941	NFL Tour	6	2008	1	8	0.12
9942	Ridge Racer Unbounded	5	2012	3	26	0.12
9943	CSI: Crime Scene Investigation	14	2004	11	6	0.12
9944	The Lord of the Rings: Aragorn's Quest	17	2010	9	20	0.12
9945	Yogi Bear: The Video Game	1	2010	9	59	0.12
9946	Makai Shin Trillion	23	2014	4	279	0.12
9947	Buffy the Vampire Slayer: Chaos Bleeds	14	2003	9	24	0.12
9948	Lost Horizon	15	2010	11	42	0.12
9949	Hanagumi Taisen Columns	24	1997	5	9	0.12
9950	Tales of Destiny 2	17	2007	4	26	0.12
9951	Teenage Mutant Ninja Turtles 3: Mutant Nightmare	19	2005	9	15	0.12
9952	Power Pro Kun Pocket 14	4	2011	1	15	0.12
9953	Get Up and Dance	1	2011	6	342	0.12
9954	Merv Griffin's Crosswords	1	2008	5	29	0.12
9955	Rango: The Video Game	4	2011	9	8	0.12
9956	Planet 51	6	2009	9	9	0.12
9957	Ultimate Puzzle Games: Sudoku Edition	4	2007	5	183	0.12
9958	Tokyo Twilight Ghost Hunters	23	2014	4	343	0.12
9959	Deadpool	18	2015	9	5	0.12
9960	UN Squadron	8	1991	7	13	0.12
9961	Tecmo Super Bowl	13	1996	1	49	0.12
9962	TMNT	17	2007	9	6	0.12
9963	Dora the Explorer: Journey to the Purple Planet	19	2005	11	64	0.12
9964	Lunar 2: Eternal Blue	24	1998	4	153	0.12
9965	NHL Powerplay '96	13	1996	1	19	0.12
9966	Thousand Arms	13	1998	4	72	0.12
9967	de Blob 2	4	2011	2	29	0.12
9968	Arctic Thunder	14	2001	3	40	0.12
9969	Hyperdimension Neptunia Re;Birth 3	23	2014	9	285	0.12
9970	Barnyard	19	2006	9	29	0.12
9971	Stolen Song	13	1998	11	4	0.12
9972	Darkspore	15	2011	4	8	0.12
9973	2 in 1 Combo Pack: Sonic Heroes / Super Monkey Ball Deluxe	5	2013	6	6	0.12
9974	Armored Core: Verdict Day	6	2013	8	228	0.12
9975	Yattaman DS: BikkuriDokkiri Daisakusen da Koron	4	2008	9	197	0.12
9976	Harvey Birdman: Attorney at Law	7	2008	11	13	0.12
9977	Wipeout 2	6	2011	6	5	0.12
9978	Dawn of Discovery	4	2009	8	6	0.12
9979	DEATH NOTE: Kira Game	4	2007	11	15	0.12
9980	Sengoku Cyber: Fujimaru Jigokuhen	13	1995	12	4	0.12
9981	Hisshou Pachinko*Pachi-Slot Kouryaku Series Vol.10: CR Shinseiki Evangelion: Kiseki no Kachi	7	2007	6	59	0.12
9982	ASH: Archaic Sealed Heat	4	2007	4	1	0.12
9983	Happy Feet Two	4		9	20	0.12
9984	Brunswick Pro Bowling	10	2011	1	68	0.12
9985	Fantastic Four: Rise of the Silver Surfer	5	2007	9	3	0.12
9986	Dorabase 2: Nettou Ultra Stadium	4	2009	1	26	0.12
9987	Center Ring Boxing	24	1994	10	41	0.12
9988	NHL 2K3	14	2002	1	9	0.12
9989	Puzzler World 2	4	2010	5	6	0.12
9990	Die Hard: Vendetta	19	2002	7	344	0.12
9991	Sword Art Online: Hollow Fragment	11	2015	4	26	0.12
9992	F1 2002	7	2002	3	8	0.12
9993	Hasbro Family Game Night Fun Pack	1	2011	6	8	0.12
9994	FIFA Soccer	17	2005	1	8	0.12
9995	Dead Island Definitive Collection	11	2016	9	42	0.12
9996	Sphinx and the Cursed Mummy	14	2003	9	29	0.12
9997	Army Men: Soldiers of Misfortune	4	2008	7	75	0.12
9998	GT Advance 2: Rally Racing	9	2001	3	29	0.11
9999	Mystery P.I. - Portrait of a Thief	4	2008	11	54	0.11
10000	Yakuza	6	2012	9	9	0.11
10001	DOA 2: Dead or Alive 2 Hardcore	7	2000	10	49	0.11
10002	A Witch's Tale	4	2009	4	132	0.11
10003	Hollywood Squares	1	2010	6	6	0.11
10004	Cabela's Deer Hunt 2005 Season	14	2004	1	5	0.11
10005	SplashDown	14	2002	3	11	0.11
10006	Nobunaga no Yabou: Tenshoki	24	1995	12	49	0.11
10007	Stronghold	15	2001	12	214	0.11
10008	Warhammer: Battle March	5	2008	12	42	0.11
10009	F1 Racing Championship	13	2000	3	62	0.11
10010	Dead Man's Hand	14	2004	7	11	0.11
10011	Smash Cars	7	2003	3	139	0.11
10012	NASCAR 07	7	2006	3	8	0.11
10013	Karaoke Revolution Presents American Idol Encore 2	6	2008	6	15	0.11
10014	Nickelodeon Dance	5	2011	6	3	0.11
10015	Pac 'n Roll	4	2005	2	26	0.11
10016	Cabela's North American Adventures	6	2010	1	5	0.11
10017	Mechanic Master	4	2008	5	40	0.11
10018	Jikkyou Powerful Pro Yakyuu 12 Ketteiban	7	2005	1	15	0.11
10019	Melty Blood: Act Cadenza	7	2006	10	9	0.11
10020	Dokapon Kingdom	7	2007	4	321	0.11
10021	ToeJam & Earl III: Mission to Earth	14	2002	9	9	0.11
10022	Phantasy Star Collection	9	2002	4	11	0.11
10023	Doukoku Shoshite...	24	1998	11	345	0.11
10024	LEGO Knights' Kingdom	9	2004	9	29	0.11
10025	Final Fantasy III	17	2012	4	17	0.11
10026	Family Game Night 4: The Game Show	6	2011	6	8	0.11
10027	Retro Game Challenge	4	2007	9	26	0.11
10028	NBA Jam 2002	9	2002	1	31	0.11
10029	Every Extend Extra	17	2006	7	33	0.11
10030	Shining Force NEO	7	2005	4	9	0.11
10031	Tony Hawk's Pro Skater 5	18	2015	1	5	0.11
10032	Brain Quest: Grades 5 & 6	4	2008	6	8	0.11
10033	SingStar Latino	6	2009	6	4	0.11
10034	Girl Time	4	2009	8	29	0.11
10035	Army Men: Sarge's War	14	2004	7	64	0.11
10036	Ultimate Mortal Kombat	4	2007	10	40	0.11
10037	Pocket Soccer League: Calciobit	10	2012	1	1	0.11
10038	Primal Rage	13	1994	10	346	0.11
10039	FIFA Street 2	19	2006	1	8	0.11
10040	DiRT Rally	18	2016	3	36	0.11
10041	Heart Catch PreCure! Oshare Collection	4	2010	9	26	0.11
10042	UEFA Euro 2016	6	2016	1	15	0.11
10043	Taito Legends	7	2005	6	90	0.11
10044	Tom Clancy's Rainbow Six: Rogue Spear	9	2002	7	6	0.11
10045	BoomBots	13	1999	10	84	0.11
10046	Monster Madness: Battle for Suburbia	5	2007	7	84	0.11
10047	Star Trek: Conquest	7		12	7	0.11
10048	FIFA Soccer 06	17	2005	1	8	0.11
10049	Life is Strange	18	2016	11	17	0.11
10050	NFL Head Coach 09	5	2008	1	8	0.11
10051	World Championship Rugby	7	2004	1	31	0.11
10052	Phantom Dust	14	2004	9	2	0.11
10053	Shinseiki Evangelion: Koutetsu no Girlfriend	13	1998	11	347	0.11
10054	Shin Sangoku Musou: Multi Raid 2	17	2010	9	49	0.11
10055	Taiko Drum Master: Tokumori!	20	2014	6	26	0.11
10056	Growlanser Generations	7	2003	4	72	0.11
10057	Mega Man Battle Chip Challenge	9	2003	6	13	0.11
10058	Desktop Tower Defense	4	2009	12	29	0.11
10059	Puyo Puyo Tetris	10	2014	5	9	0.11
10060	Pro Evolution Soccer 2014	15	2013	9	15	0.11
10061	Sakura Wars: So Long, My Love	1	2010	4	210	0.11
10062	The Settlers	4	2007	9	6	0.11
10063	Grease	4	2010	6	12	0.11
10064	My SAT Coach with The Princeton Review	4	2008	6	6	0.11
10065	Family Fun Football	1	2009	1	49	0.11
10066	Ring of Red	7	2000	12	15	0.11
10067	Cold Winter	7	2005	7	24	0.11
10068	International Track & Field 2000	13	1999	1	15	0.11
10069	The Hardy Boys: Treasure on the Tracks	4	2009	11	9	0.11
10070	PDC World Championship Darts: Pro Tour	6	2010	1	342	0.11
10071	Stubbs the Zombie in Rebel Without a Pulse	14	2005	9	29	0.11
10072	Batman: Dark Tomorrow	14	2003	9	189	0.11
10073	Ping Pals	4	2004	6	29	0.11
10074	Fatal Frame: Maiden of Black Water	20	2014	9	1	0.11
10075	MySims SkyHeroes	6	2010	9	8	0.11
10076	Blood Drive	5	2010	3	5	0.11
10077	18 Wheeler: American Pro Trucker	19	2002	3	31	0.11
10078	Jake Hunter Detective Story: Memories of the Past	4	2007	11	148	0.11
10079	Start the Party! Save the World	6	2011	6	4	0.11
10080	The King of Fighters XII	5	2009	10	151	0.11
10081	Digimon World DS	4	2006	4	26	0.11
10082	Naruto Ultimate Collection	7	2008	6	26	0.11
10083	The King of Fighters '99	13	2000	10	244	0.11
10084	Mass Destruction	13	1997	7	147	0.11
10085	Bodycount	5	2011	7	36	0.11
10086	Batman: Rise of Sin Tzu	14	2003	9	6	0.11
10087	Shinseiki Evangelion: Koutetsu no Girlfriend	24	1998	11	9	0.11
10088	Skylanders: SuperChargers	10	2015	9	5	0.11
10089	Super Swing Golf Season 2	1	2007	1	71	0.11
10090	Queen's Blade: Spiral Chaos	17	2009	4	26	0.11
10091	Jikkyou Powerful Pro Yakyuu '95	13	1994	1	15	0.11
10092	Spy vs Spy	14	2005	9	64	0.11
10093	Coraline	7	2009	9	59	0.11
10094	The Price is Right: Decades	5	2011	6	6	0.11
10095	Sega Touring Car Championship	24	1996	3	9	0.11
10096	GoldenEye: Rogue Agent	4	2005	7	8	0.11
10097	JASF: Jane's Advanced Strike Fighters	6	2011	8	42	0.11
10098	Cake Mania	4	2007	5	35	0.11
10099	Cold Fear	7	2005	9	6	0.11
10100	Akiba's Trip: Undead & Undressed	11	2014	9	310	0.11
10101	Zangeki no Reginleiv	1	2010	9	1	0.11
10102	Stronghold Kingdoms	15	2011	12	233	0.11
10103	Fabulous Finds	4	2009	5	248	0.11
10104	Vacation Sports	1	2009	1	6	0.11
10105	Daito Giken Koushiki Pachi-Slot Simulator: Hihouden	7	2006	6	348	0.11
10106	PDC World Championship Darts: Pro Tour	1	2010	1	342	0.11
10107	Pimp My Ride	1	2008	3	5	0.11
10108	Surf's Up	17	2007	1	6	0.11
10109	Invizimals: The Lost Tribes	17	2011	9	4	0.11
10110	Let's Play Garden	4	2010	8	42	0.11
10111	NHL Hitz 20-03	14	2002	1	40	0.11
10112	Murakumo: Renegade Mech Pursuit	14	2002	7	228	0.11
10113	Heavy Fire: Afghanistan	1	2011	7	178	0.11
10114	Samurai Warriors 4-II	11	2015	9	49	0.11
10115	Open Season	5	2006	2	6	0.11
10116	WireWay	4	2009	11	15	0.11
10117	Gun Metal	14	2002	7	115	0.11
10118	Just In Time Translations	4	2009	6	29	0.11
10119	John Daly's ProStroke Golf	6	2010	1	342	0.11
10120	Pro Yaky? Spirits 5	6	2008	1	15	0.11
10121	Samurai Warriors 4-II	6	2015	9	49	0.11
10122	BloodRayne	19	2002	7	21	0.11
10123	The Hardy Boys: The Hidden Theft	1	2009	11	307	0.11
10124	Metal Slug 4 & 5	7	2005	7	226	0.11
10125	Pac-Man and the Ghostly Adventures 2	5	2014	11	26	0.11
10126	ECW Anarchy Rulz	13	1999	10	31	0.11
10127	InuYasha: A Feudal Fairy Tale	13	2002	10	26	0.11
10128	Gem Quest: 4 Elements	4	2011	5	85	0.11
10129	Funky Barn	10	2012	8	6	0.11
10130	J-League Winning Eleven 9: Asia Championship	7	2005	1	15	0.11
10131	Sabrina The Teenage Witch: Potion Commotion	9	2002	9	6	0.11
10132	Pac-Man Pinball Advance	9	2005	6	87	0.11
10133	Pocket Pets	4	2007	8	349	0.11
10134	Yu Yu Hakusho: Tournament Tactics	9	2004	12	11	0.11
10135	Home Run King	19	2002	1	9	0.11
10136	Power Rangers: Super Legends	4	2007	9	33	0.11
10137	To Heart 2: Dungeon Travelers	17	2011	11	316	0.11
10138	Where the Wild Things Are	5	2009	2	20	0.11
10139	Lost in Blue	4	2005	11	15	0.11
10140	Criminal Girls: Invite Only	23	2013	4	132	0.11
10141	WWE All Stars	7	2011	10	29	0.11
10142	MLB Power Pros	7	2007	1	15	0.11
10143	Truth or Lies	5	2010	6	29	0.11
10144	Virtua Fighter CG Portrait Series Vol.1: Sarah Bryant	24	1995	6	9	0.11
10145	Kousoku Card Battle: Card Hero	4	2007	12	1	0.11
10146	AirForce Delta Strike	7	2004	8	15	0.11
10147	Dora's Big Birthday Adventure	1	2010	6	3	0.11
10148	Tokimeki Memorial: Girl's Side 2nd Season	4	2008	11	15	0.11
10149	Disney's Peter Pan: Return to Never Land	9	2002	2	6	0.11
10150	The Fairly Odd Parents: Breakin Da Rules	14	2003	2	29	0.11
10151	Monkey Island: Special Edition Collection	6	2011	11	5	0.11
10152	Capcom vs. SNK 2 EO	19	2002	10	13	0.11
10153	Hot Wheels Velocity X	19	2002	3	29	0.11
10154	Super Run For Money Tousouchuu Atsumare! Saikyou no Tousou Monotachi	10	2015	9	26	0.11
10155	Spyborgs	1	2009	9	13	0.11
10156	American Girl: Julie Finds a Way	4	2007	11	29	0.11
10157	Contra Advance: The Alien Wars EX	9	2002	7	15	0.11
10158	Jikkyou Powerful Pro Baseball 2016	6	2016	1	15	0.11
10159	The History Channel: Battle for the Pacific	1	2007	7	5	0.11
10160	18 Wheels of Steel: Extreme Trucker 2	15	2011	3	142	0.11
10161	Happy Feet Two	10	2011	9	20	0.11
10162	Army Men: RTS	7	2002	12	78	0.11
10163	Mobile Suit Gundam: MS Sensen 0079	1	2007	8	26	0.11
10164	Pinball Hall of Fame: The Williams Collection	17	2008	6	158	0.11
10165	Space Chimps	5	2008	2	206	0.11
10166	The Spiderwick Chronicles	5	2008	9	24	0.11
10167	Project CARS	15	2015	3	99	0.11
10168	Green Lantern: Rise of the Manhunters	4	2011	9	20	0.11
10169	Eragon	17	2006	9	24	0.11
10170	Shin Kamaitachi no Yoru: 11 Hitome no Suspect	6	2011	11	29	0.11
10171	Guitar Rock Tour	4	2007	6	350	0.11
10172	Mortal Kombat: Deception	19	2005	10	40	0.11
10173	ESPN NHL Hockey	14	2003	1	9	0.11
10174	Monster Lab	7	2008	4	22	0.11
10175	XXX	9	2002	9	5	0.11
10176	Machinarium	15	2009	11	303	0.11
10177	The Smurfs 2	6	2013	2	6	0.11
10178	Maximum Force	13	1997	7	14	0.11
10179	NCIS 3D	10	2011	11	6	0.11
10180	Worms Forts: Under Siege	7	2004	12	31	0.11
10181	Alvin and the Chipmunks: Chipwrecked	4	2011	6	12	0.11
10182	Totally Spies! Totally Party	1	2008	6	6	0.11
10183	Smash Court Tennis 3	5	2007	1	11	0.11
10184	ATV Quad Kings	4	2010	3	216	0.11
10185	Naruto Shippuden: Naruto vs. Sasuke	4	2008	9	197	0.11
10186	DualPenSports	10	2011	1	26	0.11
10187	Project: Snowblind	14	2005	9	22	0.11
10188	Astro Boy: The Video Game	7	2009	9	59	0.11
10189	HOP	4	2011	2	12	0.11
10190	Brave Story: New Traveler (US sales)	17	2006	4	4	0.11
10191	Disney's Extreme Skate Adventure	14	2003	1	5	0.11
10192	Tales of Phantasia (PS1 & PSP Versions)	17	2006	4	26	0.11
10193	Kouchuu Ouja Mushi King: Super Collection	4	2007	9	9	0.11
10194	The Adventures of Jimmy Neutron Boy Genius: Jet Fusion	19	2003	9	29	0.11
10195	Pac-Man World 2	9	2005	9	87	0.11
10196	Yoostar2	6	2011	6	54	0.11
10197	Avatar: The Last Airbender	17	2006	11	29	0.11
10198	Odama	19	2006	6	1	0.11
10199	Karaoke Revolution Presents American Idol Encore	5	2008	6	15	0.11
10200	FlatOut: Ultimate Carnage	5	2007	3	90	0.11
10201	Mobile Light Force 2	7	2002	7	94	0.11
10202	Naval Ops: Warship Gunner	7	2003	8	49	0.11
10203	Soma Bringer	4	2008	4	1	0.11
10204	Sesame Street: Ready, Set, Grover!	1	2011	6	20	0.11
10205	Shin Sangoku Musou 6 Special	17	2011	9	49	0.11
10206	The Penguins of Madagascar: Dr. Blowhole Returns - Again!	5	2011	9	29	0.11
10207	Go! Sudoku (JP sales)	17	2005	5	4	0.11
10208	EA Replay	17	2006	9	8	0.11
10209	Paws & Claws Pet Vet: Australian Adventures	4	2009	8	29	0.11
10210	Bionicle Heroes	19	2006	7	22	0.11
10211	Trauma Center: Under the Knife 2	4	2008	8	72	0.11
10212	Puss in Boots	4	2011	9	29	0.11
10213	Split/Second	17	2010	3	33	0.11
10214	The Croods: Prehistoric Party!	1	2013	6	59	0.11
10215	The King of Fighters 2000/2001	7	2003	10	151	0.11
10216	Lunacy	24	1996	11	9	0.11
10217	Batman & Robin	13	1998	9	31	0.11
10218	Snowboard Kids 2	12	1999	1	72	0.11
10219	Tonic Trouble	12	1999	2	6	0.11
10220	Nuclear Strike 64	12	1999	8	29	0.11
10221	Chameleon Twist	12	1997	2	242	0.11
10222	Top Gear Rally 2	12	1999	3	189	0.11
10223	Chopper Attack	12	1997	9	14	0.11
10224	Vigilante 8: 2nd Offense	12	2000	3	5	0.11
10225	Fighting Force 64	12	1999	9	68	0.11
10226	Thief (2014)	15	2014	9	17	0.11
10227	Rock Band: Metal Track Pack	1	2009	6	32	0.11
10228	Pac-Man and the Ghostly Adventures 2	6	2014	11	26	0.11
10229	BlazBlue: Calamity Trigger Portable	17	2010	10	148	0.11
10230	Night at the Museum: Battle of the Smithsonian	5	2009	9	35	0.11
10231	Street Fighter Collection	24	1996	10	13	0.11
10232	Ninja Assault	7	2002	7	26	0.11
10233	Tales of Berseria	6	2016	4	26	0.11
10234	Samurai Warriors 4	23	2014	9	49	0.11
10235	GunGriffon Blaze	7	2000	8	314	0.11
10236	Higurashi no Naku Koro ni Matsuri	7	2007	11	82	0.11
10237	Frontier Gate	17	2011	4	15	0.11
10238	Transformers: Devastation	6	2015	9	5	0.11
10239	Top Angler: Real Bass Fishing	7	2002	1	351	0.11
10240	Gabrielle's Ghostly Groove 3D	10	2011	11	137	0.11
10241	Michael Phelps: Push the Limit	5	2011	1	12	0.11
10242	Breakout	13	1999	5	28	0.11
10243	Frogger: Helmet Chaos	17	2005	2	15	0.11
10244	AKB48+Me	10	2012	9	54	0.11
10245	Touch Detective 2 1/2	4	2007	11	12	0.11
10246	Alias	7	2004	9	31	0.11
10247	Planet 51	5	2009	9	9	0.11
10248	Call of Juarez: The Cartel	15	2011	7	6	0.11
10249	Sakura Taisen Hanagumi Tsuushin	24	1997	6	9	0.11
10250	Famicom Mini: Famicom Tantei Club - Kieta Koukeisha Zenkouhen	9	2004	11	1	0.11
10251	Tornado Outbreak	1	2009	9	15	0.11
10252	Pimp My Ride	5	2006	3	5	0.11
10253	Michael Jackson: The Experience	23	2011	6	6	0.11
10254	Astro Boy: The Video Game	1	2009	9	59	0.11
10255	Outlaw Golf: Nine Holes of Christmas	14	2002	1	352	0.11
10256	NHL Rivals 2004	14	2003	1	2	0.11
10257	X-Men: Next Dimension	14	2002	10	5	0.11
10258	Tyco RC: Assault with a Battery	13	1999	3	299	0.11
10259	Felony 11-79	13	1997	3	51	0.11
10260	Terraria	23	2013	9	185	0.11
10261	Classic Road	8	1993	1	249	0.11
10262	Bust-A-Move DS	4	2005	5	12	0.11
10263	Nicktoons: Unite!	4	2006	11	29	0.11
10264	SimAnimals Africa	4	2009	8	8	0.11
10265	Death Jr.: Root of Evil	1	2008	2	22	0.11
10266	One Piece: Burning Blood	23	2016	10	26	0.11
10267	Panzer Dragoon Saga	24	1997	4	9	0.11
10268	Sonic Generations	15	2011	2	9	0.11
10269	Mushroom Men: Rise of the Fungi	4	2008	9	84	0.11
10270	Shining Ark	17	2013	4	9	0.11
10271	The Scorpion King: Rise of the Akkadian	19	2002	9	21	0.11
10272	Backyard Baseball '10	1	2009	1	11	0.11
10273	Transformers: Beast Wars Transmetals	13	2000	10	176	0.11
10274	GiFTPiA	19		4	54	0.11
10275	Animal Planet: Vet Life	4	2009	8	5	0.11
10276	My Little Sister Can't Be This Cute Portable	17	2012	9	26	0.11
10277	Silly Bandz: Play The Craze	4	2010	5	42	0.11
10278	Charlie and the Chocolate Factory	14	2005	11	64	0.11
10279	Constantine	7	2005	9	112	0.11
10280	Where the Wild Things Are	6	2009	2	20	0.11
10281	Dynasty Tactics 2	7	2003	12	49	0.11
10282	Real World Golf	7	2005	1	353	0.11
10283	Winter Heat	24	1996	1	9	0.11
10284	Ty the Tasmanian Tiger 2: Bush Rescue	14	2004	2	8	0.11
10285	Digimon Story: Cyber Sleuth	11	2016	4	26	0.11
10286	JU-ON: The Grudge	1	2009	9	71	0.11
10287	Defender	19	2002	6	40	0.11
10288	Deca Sports DS	4	2009	1	69	0.11
10289	The Polar Express	19	2004	11	29	0.11
10290	BMX XXX	14	2002	1	31	0.11
10291	ATV: Quad Frenzy	4	2005	3	35	0.11
10292	Akiba's Trip: Undead & Undressed	6	2013	9	132	0.11
10293	Backyard NFL Football '10	5	2009	1	11	0.11
10294	The Godfather: Mob Wars	17	2006	9	8	0.11
10295	Lady Sia	9	2001	2	73	0.11
10296	Rock Band: Metal Track Pack	7	2009	6	32	0.11
10297	Rocky Balboa	17	2007	1	6	0.11
10298	The Lord of the Rings: Conquest	4	2009	9	8	0.11
10299	PriPara Mezase! Idol Grand Prix No.1!	10	2015	6	197	0.11
10300	National Geographic Challenge!	1	2011	6	194	0.11
10301	Robotech: Invasion	7	2004	7	64	0.11
10302	Hole in the Wall: Deluxe Edition	5	2011	6	6	0.11
10303	Dr. Seuss' The Cat in the Hat	14	2003	6	24	0.11
10304	Rogue Warrior	5	2009	7	7	0.11
10305	Irozuki Tingle no Koi no Balloon Trip	4	2009	11	1	0.11
10306	Master of the Monster Lair	4	2007	4	71	0.11
10307	Hellboy: The Science of Evil	5	2008	9	15	0.11
10308	Murdered: Soul Suspect	5	2014	9	17	0.11
10309	X-Men: Destiny	1	2011	9	5	0.11
10310	Starsky & Hutch	19	2003	3	176	0.11
10311	Final Fantasy I & II	2	1994	4	55	0.11
10312	Rugby 15	11	2015	1	324	0.11
10313	Langrisser IV	24	1997	12	262	0.11
10314	FoxKids.com Micro Maniacs Racing	13	2000	3	36	0.11
10315	Cats & Dogs: The Revenge of Kitty Galore	4	2010	9	12	0.11
10316	Hexen: Beyond Heretic	13	1997	7	14	0.11
10317	Arcade Party Pak	13	1999	6	40	0.11
10318	Kotoba no Puzzle: Mojipittan Daijiten	17	2004	5	26	0.11
10319	Yamaha Supercross	4	2009	3	87	0.11
10320	Picross 3D 2	10	2015	5	1	0.11
10321	Hitman Trilogy	7	2007	9	22	0.11
10322	Dragon Quest & Final Fantasy in Itadaki Street Portable	17	2006	6	17	0.11
10323	Tetris Evolution	5	2007	5	29	0.11
10324	Patapon 2	17	2008	6	4	0.11
10325	Cabela's Adventure Camp	6	2011	6	5	0.11
10326	Attack of the Movies 3D	1	2010	7	35	0.11
10327	Railroad Tycoon II	13	1999	12	354	0.11
10328	Angry Birds Star Wars	20	2013	12	5	0.11
10329	Hysteria Hospital: Emergency Ward	4	2009	9	60	0.11
10330	The Cheetah Girls: Pop Star Sensations	4	2007	6	33	0.11
10331	Transformer: Rise of the Dark Spark	18	2014	9	5	0.11
10332	Kirarin * Revolution: Kira Kira Idol Audition	4	2006	8	15	0.11
10333	Ranma 1/2: Akanekodan Teki Hihou	8	1993	4	355	0.11
10334	The BIGS	17	2007	1	3	0.11
10335	Blades of Time	5	2012	9	15	0.11
10336	My Boyfriend	4	2008	8	233	0.11
10337	Scribblenauts Unmasked: A DC Comics Adventure	20	2013	5	20	0.11
10338	Victory Zone	13	1995	6	4	0.11
10339	Rengoku: The Tower of Purgatory	17	2005	9	15	0.11
10340	Goal Storm '97	13	1996	1	15	0.11
10341	Paws & Claws: Pet Resort	1	2009	8	29	0.11
10342	Dynasty Warriors Advance	9	2005	9	1	0.11
10343	Pachi-Slot Aruze Oukoku 3	13	2000	6	160	0.11
10344	Science Papa	4	2009	6	5	0.11
10345	Tournament Pool	1	2009	1	154	0.11
10346	Cabela's North American Adventures	5	2010	1	5	0.11
10347	Aqua Aqua	7	2000	5	78	0.11
10348	Viewtiful Joe: Double Trouble!	4	2005	9	13	0.11
10349	Tom Clancy's Splinter Cell: Conviction	15	2010	9	6	0.11
10350	Mega Man Zero 4	9	2005	2	13	0.11
10351	Black Bass with Blue Marlin	13	1999	1	201	0.11
10352	Mega Man Battle Network 5: Double Team DS (JP sales)	4	2005	4	1	0.11
10353	Utawarerumono: Chiriyukusha e no Komoriuta	7	2006	11	316	0.11
10354	Hyper Formation Soccer	13	1995	1	190	0.11
10355	Tiger Woods PGA Tour 06	19	2005	1	8	0.11
10356	Jupiter Strike	13	1994	7	31	0.11
10357	Sudokuro	4	2007	5	68	0.11
10358	BlazBlue: Continuum Shift II	10	2011	10	148	0.11
10359	Saigo no Yakusoku no Monogatari	17	2011	4	54	0.11
10360	The Book of Unwritten Tales	15	2009	11	356	0.11
10361	Metal Gear Solid Integral	13	1999	11	15	0.11
10362	Naruto Shippuden 3D: The New Era	10	2011	9	12	0.11
10363	FIFA World Cup Germany 2006	17	2006	1	8	0.11
10364	Disney's Chicken Little: Ace In Action	1		7	33	0.11
10365	Lego Star Wars: The Force Awakens	5	2016	9	20	0.11
10366	Reign of Fire	19	2002	7	176	0.11
10367	Rock Band Track Pack: Classic Rock	6	2009	6	32	0.11
10368	Rock Revolution	4	2008	6	15	0.11
10369	Big League Sports: Summer	4	2009	1	5	0.11
10370	Tom Clancy's HAWX 2	1	2010	9	6	0.11
10371	Sakura Wars	22	2000	11	9	0.11
10372	Jampack Volume 14 (RP-T)	7	2006	6	4	0.11
10373	Pro Yakyuu Team o Tsukurou! 2	4	2009	1	9	0.11
10374	Mace Griffin: Bounty Hunter	14	2003	7	8	0.11
10375	Martian Gothic: Unification	13	2001	11	3	0.11
10376	Woody Woodpecker Racing	13	1999	3	15	0.11
10377	Final Fantasy XII International Zodiac Job System	7	2007	4	17	0.11
10378	Barbie in The 12 Dancing Princesses	4	2007	11	5	0.11
10379	Fight Club	14	2004	10	24	0.11
10380	Carnage Heart	13	1995	12	4	0.11
10381	Grand Theft Auto: Mission Pack #1, London 1969	13	1998	11	3	0.11
10382	Kamen Rider: Climax Heroes	7	2009	10	26	0.11
10383	Robotics;Notes	6	2012	11	357	0.11
10384	Disney Channel Collection Vol. 1	9	2004	6	34	0.11
10385	Total Immersion Racing	7	2002	3	90	0.11
10386	Virtual Hydlide	24	1995	4	9	0.11
10387	World Series of Poker: Tournament of Champions 2007 Edition	17	2006	6	5	0.11
10388	Tales of the World: Reve Unitia	10	2014	4	26	0.11
10389	Karaoke Revolution	6	2009	6	15	0.11
10390	Warriors Orochi 3	17	2012	9	116	0.11
10391	The Bachelor: The Videogame	1	2010	6	20	0.11
10392	Space Invaders	9	2002	7	5	0.11
10393	BlazBlue: Chrono Phantasma	23	2014	10	224	0.11
10394	Digimon Digital Card Battle	13	1999	12	26	0.11
10395	Toukiden 2	23	2016	9	49	0.11
10396	Earth Defense Force 2: Invaders from Planet Space	23	2014	9	156	0.11
10397	Kuroko's Basketball: Miracle Game	17	2012	1	26	0.11
10398	Dreamer Series: Top Model	4	2009	8	319	0.11
10399	Jikkyou Powerful Pro Yakyuu 13 Ketteiban	7	2006	1	15	0.11
10400	Shovel Knight	20	2015	2	322	0.11
10401	Yuusha no Kuse ni Namaikida Or 3D	17	2010	12	4	0.11
10402	The First Templar	5	2011	9	200	0.11
10403	X-Men: The Official Game	4	2006	9	5	0.11
10404	Dead to Rights II	14	2005	7	8	0.11
10405	Petz Fashion: Dogz & Catz	4	2009	8	6	0.11
10406	Project: Horned Owl	13	1995	7	4	0.11
10407	Mobile Suit Gundam Age: Universe Accel / Cosmic Drive	17	2012	9	26	0.11
10408	Child of Light	23	2014	4	6	0.11
10409	SingStar Guitar	6	2010	6	4	0.11
10410	Dragon Ball Z Super Gokuden: Kakusei-Hen	8	1995	4	26	0.11
10411	Help Wanted: 50 Wacky Jobs	1	2008	8	69	0.11
10412	Busou Shinki: Battle Masters Mk. 2	17	2011	9	15	0.11
10413	Cabela's Dangerous Hunts 2	14	2005	1	5	0.11
10414	Fairy Tail: Portable Guild	17	2010	10	15	0.11
10415	Champion Jockey: G1 Jockey & Gallop Racer	1	2011	1	49	0.11
10416	SimCity 2000	9	2003	8	87	0.11
10417	Brunswick Circuit Pro Bowling 2	13	2000	1	29	0.11
10418	D	13	1995	11	31	0.11
10419	Winning Eleven: Pro Evolution Soccer 2007	5	2006	1	15	0.1
10420	Ennichi no Tatsujin	1	2006	6	26	0.1
10421	Squinkies 2: Adventure Mall Surprize!	4	2011	2	5	0.1
10422	Wizardry VI: Bane of the Cosmic Forge	8	1995	4	51	0.1
10423	Power Pocket Koushien	4	2005	1	15	0.1
10424	Gravity Games Bike: Street Vert Dirt	7	2002	1	40	0.1
10425	Contact	4	2006	4	71	0.1
10426	Pro Yaky? Spirits 2010	7	2010	1	15	0.1
10427	Princess Debut	4	2008	6	358	0.1
10428	My First Dollhouse	4	2010	6	12	0.1
10429	Cloudy With a Chance of Meatballs	6	2009	2	6	0.1
10430	Family Party: 30 Great Games	1	2008	6	59	0.1
10431	Top Spin	7	2005	1	3	0.1
10432	Derby Stallion P	17	2006	1	155	0.1
10433	Kenka Bancho Bros: Tokyo Battle Royale	17	2012	9	130	0.1
10434	UFC: Tapout 2	14	2003	10	13	0.1
10435	Adventure Time: Finn & Jake Investigations	6	2015	9	231	0.1
10436	Kamen Rider: Battride War II	6	2014	9	26	0.1
10437	Kirarin * Revolution: Tsukutte Misechao! Kime * Kira Stage	4	2007	8	15	0.1
10438	Thrillville: Off the Rails	17	2007	12	18	0.1
10439	Imagine: Soccer Captain	4	2009	1	6	0.1
10440	Jikkyou Powerful Pro Yakyuu 10	19	2003	1	15	0.1
10441	Vexx	14	2003	2	31	0.1
10442	F1 Career Challenge	7	2003	3	8	0.1
10443	Taiko no Tatsujin: V Version	23	2015	9	26	0.1
10444	Pariah	14	2005	9	318	0.1
10445	Cabela's Outdoor Adventures	14	2005	1	87	0.1
10446	Agatha Christie: The ABC Murders	4	2009	11	259	0.1
10447	Metal Slug 3	14	2004	7	151	0.1
10448	The Smurfs 2	1	2013	2	6	0.1
10449	Motocross Mania 3	7	2004	3	3	0.1
10450	Fatal Frame 2: Wii Edition	1	2012	9	1	0.1
10451	Dancing on Ice	1	2010	1	145	0.1
10452	Pro Yakyuu Famista DS 2009	4	2009	1	26	0.1
10453	Banjo-Pilot	9	2005	3	29	0.1
10454	Family Feud: 2012 Edition	5	2011	6	6	0.1
10455	Gallop Racer 2006	7	2005	1	49	0.1
10456	Army Corps of Hell	23	2011	9	17	0.1
10457	Frogger: Ancient Shadow	7	2005	2	15	0.1
10458	Digimon Story: Lost Evolution	4	2010	4	26	0.1
10459	Exit DS	4	2008	5	17	0.1
10460	Ski-Doo Snowmobile Challenge	6	2009	3	148	0.1
10461	Universe at War: Earth Assault	5	2008	9	9	0.1
10462	Despicable Me: The Game	7	2010	2	59	0.1
10463	Metal Arms: Glitch in the System	19	2003	7	24	0.1
10464	The Whispered World	15	2009	11	42	0.1
10465	Tom Clancy's Splinter Cell: Chaos Theory	19	2005	9	6	0.1
10466	Learn Chess	4	2009	6	319	0.1
10467	Happy Feet Two	6		9	20	0.1
10468	Escape From Monkey Island	7	2001	11	18	0.1
10469	Leisure Suit Larry: Box Office Bust	6	2009	11	36	0.1
10470	The Wolf Among Us	6	2014	11	174	0.1
10471	Mickey's Speedway USA (weekly JP sales)	12	2000	3	1	0.1
10472	Who Wants to Be a Millionaire: 3rd Edition	1	2010	6	6	0.1
10473	Boku no Natsuyasumi Portable: Mushi Mushi Hakase to Teppen-yama no Himitsu!!	17	2006	11	4	0.1
10474	Miami Law	4	2009	11	15	0.1
10475	Macross 30: Ginga o Tsunagu Utagoe	6	2013	7	26	0.1
10476	Kidou Senshi Gundam UC	6	2012	9	26	0.1
10477	Yu-Gi-Oh! 5D's Wheelie Breakers	1	2009	3	15	0.1
10478	Nicktoons: MLB	4	2011	1	3	0.1
10479	Gretzky NHL	17	2005	1	4	0.1
10480	Corvette Evolution GT	4	2008	3	194	0.1
10481	May's Mystery: Forbidden Memories	4	2011	5	85	0.1
10482	PictoImage	4	2007	5	9	0.1
10483	Etrian Odyssey II: Heroes of Lagaard	10	2014	4	72	0.1
10484	Ridge Racer 2	17	2006	3	4	0.1
10485	Momotarou Dentetsu 16	1	2007	6	69	0.1
10486	Igor: The Game	1	2008	11	359	0.1
10487	Dropship: United Peace Force	7	2002	8	4	0.1
10488	Road Rash: Jailbreak	9	2003	3	87	0.1
10489	Rome: Total War	15	2004	12	5	0.1
10490	Green Lantern: Rise of the Manhunters	1	2011	9	20	0.1
10491	Castlevania: Lords of Shadow 2	5	2014	9	15	0.1
10492	Lucha Libre AAA: Heroes del Ring	6	2010	10	15	0.1
10493	Syberia	14	2003	9	360	0.1
10494	G1 Jockey 3	7	2002	1	29	0.1
10495	Shrek: Forever After	5	2010	2	5	0.1
10496	Atsumare! Power Pro Kun no DS Koushien	4		1	34	0.1
10497	Revolution X	13	1995	7	31	0.1
10498	Myst	4	2007	11	40	0.1
10499	Little Battlers eXperience W	10	2013	4	38	0.1
10500	Riviera: The Promised Land	9	2004	4	321	0.1
10501	Risen 3: Titan Lords	6	2014	4	42	0.1
10502	Top Gun: Combat Zones	9	2004	8	178	0.1
10503	Bujingai: The Forsaken City	7	2003	10	12	0.1
10504	Doko Demo Issho	17	2004	6	4	0.1
10505	Alvin and the Chipmunks: The Squeakquel	1	2009	6	35	0.1
10506	The Story of Noah's Ark	4	2010	9	84	0.1
10507	Brooktown High: Senior Year	17	2007	8	15	0.1
10508	Astro Boy: The Video Game	4	2009	9	59	0.1
10509	Zombie Army Trilogy	18	2015	7	271	0.1
10510	Beyond Good & Evil	14	2003	11	6	0.1
10511	Blitz: The League II	5	2008	1	40	0.1
10512	Death By Degrees	7	2005	9	4	0.1
10513	Vandal Hearts II	13	1999	12	15	0.1
10514	Gouketuji Ichizoku 2: Chottodake Saikyou Densetsu	13	1995	10	72	0.1
10515	Samurai Warriors Chronicles 2nd	10	2012	9	116	0.1
10516	Medal of Honor: Vanguard	1	2007	7	8	0.1
10517	Toaru Majutsu no Index	17	2011	11	153	0.1
10518	Dora's Cooking Club	4	2010	6	3	0.1
10519	ESA Game Pack	6	2010	6	4	0.1
10520	America's Next Top Model	4	2008	9	22	0.1
10521	God Eater 2: Rage Burst	11	2015	4	26	0.1
10522	Uta no Prince-Sama: Music	17	2011	6	309	0.1
10523	UNO / Skip-Bo / UNO Freefall	4	2006	6	87	0.1
10524	Culdcept DS	4	2008	12	9	0.1
10525	Colin McRae Rally 04	14	2004	3	36	0.1
10526	Monster Jam: Maximum Destruction	9	2002	3	6	0.1
10527	The King of Fighters: Dream Match 1999	22	1999	10	244	0.1
10528	FIFA Street	14	2005	1	8	0.1
10529	Truth or Lies	1	2010	6	29	0.1
10530	Weiss Schwarz Portable	17	2011	12	26	0.1
10531	Kirarin * Revolution: Mezase! Idol Queen	4	2007	8	15	0.1
10532	Dungeons & Dragons Tactics	17	2007	12	11	0.1
10533	X-Men: Children of the Atom	13	1998	10	31	0.1
10534	Hot Wheels: Stunt Track Challenge	14	2004	3	29	0.1
10535	Dora & Kai-Lan's Pet Shelter	4	2011	12	3	0.1
10536	DJ Max Fever	17	2009	6	361	0.1
10537	Math Blaster in the Prime Adventure	4	2009	6	35	0.1
10538	Football Director DS	4	2008	1	108	0.1
10539	Shellshock	13	1995	9	282	0.1
10540	Blue Stinger	22	1999	11	5	0.1
10541	Yggdra Union: We'll Never Fight Alone	17	2008	4	321	0.1
10542	The Destiny of Zorro	1	2009	9	12	0.1
10543	Hot Wheels Ultimate Racing	17	2007	9	5	0.1
10544	Capcom vs. SNK 2 EO	14	2003	10	13	0.1
10545	Inazuma Eleven GO Strikers 2013	1	2012	4	38	0.1
10546	Metal Gear Solid HD Edition	6	2011	9	15	0.1
10547	Hunter: The Reckoning	19	2002	9	19	0.1
10548	Daito Giken Koushiki Pachi-Slot Simulator: Hihouden - Ossu! Banchou - Yoshimune DS	4	2007	6	362	0.1
10549	Urban Chaos	13	1999	9	22	0.1
10550	Creeper World 3: Arc Eternal	1	2009	12	26	0.1
10551	Monkey Mischief! Party Time	1	2008	6	5	0.1
10552	Draglade	4	2007	10	12	0.1
10553	DS Kageyama Method: Dennou Hanpuku - Tadashii Kanji Kakitori-Kun	4	2007	6	269	0.1
10554	Water Sports	1	2009	9	191	0.1
10555	Freaky Flyers	7	2003	3	40	0.1
10556	Baten Kaitos Origins	19	2006	4	54	0.1
10557	E·O·E: Eve of Extinction	7	2002	10	22	0.1
10558	Pro Evolution Soccer 2016	18	2015	1	15	0.1
10559	Dark Summit	14	2001	1	29	0.1
10560	Penguin no Mondai: The World	4	2010	11	15	0.1
10561	My Healthy Cooking Coach	4		8	54	0.1
10562	Yaiba: Ninja Gaiden Z	6	2014	9	49	0.1
10563	Flushed Away	4	2006	2	59	0.1
10564	Surf's Up	5	2007	1	6	0.1
10565	Hakuouki Portable	17	2009	11	279	0.1
10566	NHL 2004	19	2003	1	8	0.1
10567	Fallout 3 Game Add-On Pack: The Pitt and Operation: Anchorage	5	2009	4	7	0.1
10568	Cabela's Adventure Camp	5	2011	6	5	0.1
10569	KORG DS-10 Synthesizer Plus	4	2009	6	255	0.1
10570	World Snooker Championship 2007	6	2007	1	9	0.1
10571	X-Men: The Official Game	14	2006	9	5	0.1
10572	RLH: Run Like Hell	7	2002	7	19	0.1
10573	Digimon Adventure	17	2013	4	26	0.1
10574	Doom 3	15	2004	7	5	0.1
10575	The Ant Bully	7	2006	2	40	0.1
10576	Conflict: Global Terror	14	2005	7	112	0.1
10577	Minority Report: Everybody Runs	19	2002	9	5	0.1
10578	Monster Rancher EVO	7	2005	4	49	0.1
10579	Project Hacker: Kakusei	4	2006	9	1	0.1
10580	Pajama Sam: Don't Fear The Dark	1	2008	11	11	0.1
10581	GRID Autosport	5	2014	3	36	0.1
10582	World Series of Poker 2008: Battle for the Bracelets	6	2007	6	5	0.1
10583	Wasteland 2	11	2015	4	42	0.1
10584	Guitar Hero: Van Halen	7	2009	6	5	0.1
10585	Olympic Summer Games: Atlanta 1996	13	1996	1	330	0.1
10586	Little League World Series Baseball 2008	1	2008	1	5	0.1
10587	Disney's The Haunted Mansion	19	2003	2	3	0.1
10588	Tatsunoko vs. Capcom: Cross Generation of Heroes	1	2008	10	13	0.1
10589	Alvin and the Chipmunks: Chipwrecked	5	2011	6	12	0.1
10590	Darius Gaiden	24	1995	7	31	0.1
10591	All Kamen Rider: Rider Generation 2	4	2012	9	26	0.1
10592	Beach Spikers: Virtua Beach Volleyball	19	2002	1	9	0.1
10593	Total War: WARHAMMER	15	2016	12	9	0.1
10594	Tom Clancy's Ghost Recon: Predator	17	2010	7	6	0.1
10595	You Don't Know Jack: Mock 2	13	2000	6	24	0.1
10596	Blue Dragon: Awakened Shadow	4	2009	4	26	0.1
10597	3D Tank Warfare Simulator Panzer Front	13	1999	8	294	0.1
10598	[Prototype 2]	15	2012	9	5	0.1
10599	NASCAR The Game: Inside Line	5	2012	3	5	0.1
10600	Sudoku Mania	4	2006	5	87	0.1
10601	Blades of Time	6	2012	9	15	0.1
10602	Rolling Stone: Drum King	1	2009	6	12	0.1
10603	Jade Cocoon 2	7	2001	4	6	0.1
10604	Lord of Apocalypse	23	2011	4	17	0.1
10605	Bejeweled Twist	4	2010	5	208	0.1
10606	Rock Band 3	4	2010	6	32	0.1
10607	Kabushiki Baibai Trainer: Kabutore!	4	2006	8	15	0.1
10608	Sword & Sorcery	24	1996	4	363	0.1
10609	Van Helsing	9	2004	9	5	0.1
10610	NFL Tour	5	2008	1	8	0.1
10611	Bee Movie Game	7	2007	9	5	0.1
10612	NBA Live 16	18	2015	1	8	0.1
10613	Spider-Man: Web of Shadows	4	2008	9	5	0.1
10614	Bullet Witch	5	2006	7	11	0.1
10615	USA Today Puzzle Craze	4	2009	5	154	0.1
10616	Machi-Ing Maker 3 x Tousouchuu	17	2010	8	59	0.1
10617	Kelly Slater's Pro Surfer	14	2002	1	5	0.1
10618	SNK vs. Capcom: SVC Chaos	14	2004	10	151	0.1
10619	Codename: Kids Next Door: Operation V.I.D.E.O.G.A.M.E.	7	2005	2	64	0.1
10620	Choujikuu Yousai Macross: Ai Oboete Imasu ka	24	1997	7	26	0.1
10621	Vanishing Point	13	2001	3	31	0.1
10622	SCORE International Baja 1000: The Official Game	1	2008	3	5	0.1
10623	Dragonseeds	13	1998	9	163	0.1
10624	The Bard's Tale	14	2004	4	6	0.1
10625	Opoona	1	2007	4	49	0.1
10626	Big League Sports	1	2008	1	5	0.1
10627	nail'd	5	2010	3	42	0.1
10628	Nodame Cantabile	4	2007	6	26	0.1
10629	Alien Hominid	7	2004	7	87	0.1
10630	Record of Agarest War Zero	5	2010	12	266	0.1
10631	L'Aigle de Guerre	9	2001	12	1	0.1
10632	Jeopardy!	12	1998	6	364	0.1
10633	Disney's Donald Duck: Goin' Quackers	12	2000	2	6	0.1
10634	Aidyn Chronicles: The First Mage	12	2001	4	29	0.1
10635	Aquapazza: Aquaplus Dream Match	6	2012	10	316	0.1
10636	Virtual Pool 64	12	1998	1	68	0.1
10637	Indy Racing 2000	12	2000	3	53	0.1
10638	Flying Dragon	12	1997	10	80	0.1
10639	International Superstar Soccer 64 (weekly JP sales)	12	1997	1	15	0.1
10640	Lode Runner 3-D	12	1998	9	53	0.1
10641	The History Channel: Civil War - Secret Missions	6	2008	7	5	0.1
10642	GT64 Championship Edition	12	1998	3	86	0.1
10643	Milo's Astro Lanes	12	1998	1	118	0.1
10644	Gekido	13	1999	10	53	0.1
10645	Harry Potter and the Deathly Hallows - Part 1	15	2010	9	8	0.1
10646	Fifi and the Flowertots	4	2009	6	191	0.1
10647	Disney's The Jungle Book	9	2002	2	6	0.1
10648	King of Clubs: Mini Golf	1	2008	1	60	0.1
10649	Ultimate Marvel vs. Capcom 3	6	2011	10	13	0.1
10650	Cate West: The Vanishing Files	4	2008	11	60	0.1
10651	Army Men World War: Team Assault	13	2001	9	78	0.1
10652	Tom Clancy's Splinter Cell	9	2003	9	6	0.1
10653	Harry Potter and the Deathly Hallows - Part 2	15	2011	9	8	0.1
10654	NHL 2K6	5	2005	1	3	0.1
10655	Marvel vs. Capcom: Clash of Super Heroes	22	1999	10	13	0.1
10656	NBA Ballers: Rebound	17	2006	1	40	0.1
10657	King's Field: The Ancient City	7	2001	4	139	0.1
10658	LEGO Rock Raiders	13	1999	12	133	0.1
10659	Silent Scope Complete	14	2004	7	15	0.1
10660	Digimon All-Star Rumble	6	2014	10	26	0.1
10661	Ghost in the Shell	13	1997	8	4	0.1
10662	Atelier Sophie: The Alchemist of the Mysterious Book	11	2015	4	49	0.1
10663	Marvel Super Hero Squad: The Infinity Gauntlet	10	2011	9	29	0.1
10664	Evil Dead: Fistfull of Boomstick	14	2003	9	29	0.1
10665	Tom Clancy's Classic Trilogy	14	2004	7	6	0.1
10666	Harvest Moon DS Cute (jp sales)	4	2005	8	220	0.1
10667	Bleach: Dark Souls (JP sales)	4	2007	10	9	0.1
10668	Indigo Prophecy	14	2005	11	11	0.1
10669	NASCAR '14	6	2014	3	42	0.1
10670	Kiku! Kaku! Kotoba o Fuyasu! Hajimete no Eigo Training	4	2007	6	365	0.1
10671	Over the Hedge	14	2006	2	5	0.1
10672	Sneakers	14	2002	5	2	0.1
10673	Sword Art Online: Lost Song	6	2015	4	26	0.1
10674	Crime Crackers	13	1994	4	4	0.1
10675	Earth Defense Force 2025.1: The Shadow of New Despair	11	2015	9	59	0.1
10676	Pro Evolution Soccer 2013	1	2012	1	15	0.1
10677	Micro Machines V3	13	1997	3	36	0.1
10678	Alvin and the Chipmunks: Chipwrecked	1	2011	6	12	0.1
10679	College Hoops 2K6	14	2005	1	3	0.1
10680	Sakura Wars 2: Kimi, Shinitamou koto Nakare	22	2000	11	9	0.1
10681	NatGeo Challenge! Wild Life	6	2010	6	194	0.1
10682	Idol Janshi Suchie-Pai Remix	24	1995	6	163	0.1
10683	Kung Fu Panda 2	6	2011	9	29	0.1
10684	Star Wars: Lethal Alliance	4	2006	9	6	0.1
10685	Exhibition Volume 03	14	2003	6	2	0.1
10686	Zero4 Champ RR-Z	8	1995	3	198	0.1
10687	Initial D: Street Stage	17	2006	3	9	0.1
10688	Tales of Innocence R	23	2012	4	26	0.1
10689	Generator Rex: Agent of Providence	10	2011	9	5	0.1
10690	Petz Hamsterz Superstarz	4	2009	8	6	0.1
10691	NeverDead	5	2012	7	15	0.1
10692	Happy Feet Two	5		9	20	0.1
10693	Age of Empires II: The Age of Kings	15	1999	12	2	0.1
10694	Warhammer 40,000: Dawn of War II - Chaos Rising	15	2010	12	29	0.1
10695	Predator: Concrete Jungle	14	2005	9	24	0.1
10696	CSI: Hard Evidence	5	2007	11	6	0.1
10697	F1 2014	15	2014	3	36	0.1
10698	Code Lyoko: Quest for Infinity	1	2007	9	103	0.1
10699	Fate/hollow ataraxia	23	2014	11	366	0.1
10700	Lucky * Star: Ryouou Gakuen Outousai	7	2008	11	153	0.1
10701	Scribblenauts Unmasked: A DC Comics Adventure	10	2013	5	20	0.1
10702	Murder in Venice	4	2011	11	89	0.1
10703	Nancy Drew: The Model Mysteries	4	2010	5	29	0.1
10704	Ride	18	2015	3	257	0.1
10705	Naruto Shippuden: Gekito Ninja Taisen! EX	1	2007	10	197	0.1
10706	Universal Studios Theme Parks Adventure	19	2001	6	189	0.1
10707	Nihon Keizai Shinbunsha Kanshuu: Shiranai Mamade wa Son o Suru Mono ya Okane no Shikumi DS	4	2009	6	1	0.1
10708	Little League World Series Baseball 2010	5	2010	1	5	0.1
10709	Piglet's Big Game	7	2003	2	65	0.1
10710	Real Bout Garou Densetsu	24	1996	10	244	0.1
10711	Arcania: Gothic 4	5	2010	4	259	0.1
10712	Ben 10 Galactic Racing	5	2011	3	59	0.1
10713	Project FIFA World Cup	7	2002	1	8	0.1
10714	System Flaw	4	2009	7	367	0.1
10715	Rio	5	2011	6	29	0.1
10716	Rocky: Legends	14	2004	9	6	0.1
10717	Lord of Apocalypse	17	2011	4	17	0.1
10718	The BIGS 2	17	2009	1	3	0.1
10719	Horse Life Adventures	4	2008	8	42	0.1
10720	iCarly 2: iJoin The Click!	1	2010	11	5	0.1
10721	Burnout Paradise: The Ultimate Box	15	2009	3	8	0.1
10722	Famicom Mini: Famicom Tantei Club Part II - Ushiro ni Tatsu Shoujo Zenkouhen	9	2004	11	1	0.1
10723	The Secret Saturdays: Beasts of the 5th Sun	1	2009	9	59	0.1
10724	Winter Stars	5	2011	1	42	0.1
10725	Higurashi no Nakukoru ni Kizuna: Dai-Ni-Kan - Sou	4	2008	11	82	0.1
10726	Star Trek: Shattered Universe	7	2004	8	64	0.1
10727	The Land Before Time: Great Valley Racing Adventure	13	2001	3	73	0.1
10728	Ultra Street Fighter IV	11	2015	10	13	0.1
10729	Animal Planet: Vet Life	1	2009	8	5	0.1
10730	Cubic Ninja	10	2011	2	6	0.1
10731	Championship Pony	4	2008	8	204	0.1
10732	Harvest Moon: Frantic Farming	4	2009	5	71	0.1
10733	Rise of the Tomb Raider	15	2016	11	17	0.1
10734	Pinball Hall of Fame: The Williams Collection	10	2011	6	68	0.1
10735	Persona 5	6	2016	4	54	0.1
10736	Power Stone Collection	17	2006	9	13	0.1
10737	MTX Mototrax	14	2004	3	5	0.1
10738	Blast Chamber	13	1996	7	5	0.1
10739	Thor: God of Thunder	10	2011	9	9	0.1
10740	Mana Khemia: Student Alliance	17	2008	4	132	0.1
10741	Retro Game Challenge (US sales)	4	2007	9	26	0.1
10742	EyeToy: Operation Spy	7	2005	9	4	0.1
10743	Zoo Tycoon (2013)	5	2013	8	2	0.1
10744	MotoGP 07	7	2007	3	13	0.1
10745	Touch Detective	4	2006	11	12	0.1
10746	Option Tuning Car Battle	13	1998	3	333	0.1
10747	Rapala Pro Bass Fishing 2010	4	2010	1	5	0.1
10748	Derby Jockey 2	8	1995	1	368	0.1
10749	Famicom Mini: Mappy	9	2004	2	1	0.1
10750	Reign of Fire	14	2002	7	176	0.1
10751	Descent Maximum	13	1997	7	369	0.1
10752	Disney Sing It! High School Musical 3: Senior Year	5	2009	6	33	0.1
10753	Blast Works: Build, Trade, Destroy	1	2008	7	22	0.1
10754	Resident Evil: Revelations 2	18	2015	9	13	0.1
10755	Major League Baseball 2K11	4	2011	1	3	0.1
10756	Shining Force EXA	7	2007	4	9	0.1
10757	Virtual Pro Wrestling	13	1996	10	370	0.1
10758	Wasteland 2	15	2015	4	371	0.1
10759	Shadow Tower	13	1998	4	228	0.1
10760	Luminous Arc 2 (JP sales)	4		4	54	0.1
10761	Ninja Reflex	4	2008	9	8	0.1
10762	Dragon Ball: Evolution	17	2009	10	26	0.1
10763	Red Bull BC One	4	2008	6	286	0.1
10764	Heatseeker	1	2007	9	36	0.1
10765	Watchmen: The End is Nigh Part 1 & 2	5	2009	9	20	0.1
10766	Ford Racing 3	4	2005	3	87	0.1
10767	Ice Age 2: The Meltdown	14	2006	2	24	0.1
10768	Guilty Gear Isuka	7	2004	10	12	0.1
10769	MySims SkyHeroes	5	2010	9	8	0.1
10770	NASCAR Unleashed	6	2011	3	5	0.1
10771	Shadow Master	13	1997	11	88	0.1
10772	Global Touring Challenge: Africa	7	2001	3	115	0.1
10773	Jikkyou Powerful Pro Yakyuu 2013	23	2013	1	15	0.1
10774	Dead or Alive 5	23	2013	10	49	0.1
10775	Tokimeki Memorial: Taisen Pazurudama	13	1996	5	15	0.1
10776	InuYasha: Secret of the Divine Jewel	4	2007	4	26	0.1
10777	MotoGP 2	14	2003	3	29	0.1
10778	Pro Yakyuu Famista DS	4	2007	1	26	0.1
10779	Ultimate Muscle - The Kinnikuman Legacy: The Path of the Superhero	9	2002	10	58	0.1
10780	BIT.TRIP COMPLETE	1	2011	6	71	0.1
10781	EyeCreate	6	2007	6	4	0.1
10782	Skylanders: Spyro's Adventure	15	2011	9	5	0.1
10783	Paws & Claws: Pet Vet	1	2009	8	29	0.1
10784	Touch Mechanic	4	2008	8	1	0.1
10785	Ciel Nosurge: Ushinawareta Hoshi e Sasagu Uta	23	2012	11	243	0.1
10786	Ar tonelico: Melody of Elemia	7	2006	4	12	0.1
10787	Man vs. Wild	5	2011	9	68	0.1
10788	Sol Trigger	17	2012	4	372	0.1
10789	Pony Friends 2	1	2009	8	22	0.1
10790	Castlevania Double Pack	9	2006	2	15	0.1
10791	Ballistic: Ecks vs. Sever	9	2002	7	176	0.1
10792	Jikkyou Powerful Pro Yakyuu 11	19	2004	1	15	0.1
10793	Steel Battalion	14	2002	8	2	0.1
10794	The Daring Game for Girls	1		11	54	0.1
10795	Glory Days 2	4	2007	12	145	0.1
10796	Johnny Bravo in The Hukka-Mega-Mighty-Ultra-Extreme Date-O-Rama	4	2009	9	291	0.1
10797	Street Fighter Collection	13	1997	10	13	0.1
10798	thinkSMART	4	2010	6	232	0.1
10799	Digimon Story: Super Xros Wars Blue/Red	4	2011	4	26	0.1
10800	Tennis no Oji-Sama: Motto Gakuensai no Ouji-Sama - More Sweet Edition	4	2010	1	15	0.1
10801	Mind Quiz	17	2006	9	6	0.1
10802	Populous DS	4	2008	12	71	0.1
10803	Who Wants to Be A Millionaire?	5	2011	6	6	0.1
10804	Bladestorm: The Hundred Years' War	5	2007	9	49	0.1
10805	Cartoon Network: Punch Time Explosion	10	2011	10	42	0.1
10806	Imagine: Reporter	4	2010	8	6	0.1
10807	Disney Planes Fire & Rescue	10	2014	9	33	0.1
10808	MX SuperFly featuring Ricky Carmichael	14	2002	3	29	0.1
10809	Gokuhou!! Mecha Mote Iinchou: MM Town de Miracle Change!	4	2009	8	15	0.1
10810	Natural Doctrine	11	2014	4	132	0.1
10811	SNK vs. Capcom Card Fighters DS	4	2006	12	151	0.1
10812	Mystery Stories: Curse of the Ancient Spirits	4	2011	11	96	0.1
10813	Kuroko's Basketball: Miracle Game	10	2014	1	26	0.1
10814	Minority Report: Everybody Runs	14	2002	9	5	0.1
10815	MindJack	5	2011	7	17	0.1
10816	ReCore	18	2016	9	2	0.1
10817	NASCAR	17	2006	3	8	0.1
10818	Halo 2	15	2007	7	2	0.1
10819	Shox	7	2002	3	8	0.09
10820	Unou no Tatsujin: Soukai! Machigai Museum 2	4	2007	6	26	0.09
10821	Playboy: The Mansion	14	2005	8	6	0.09
10822	The X-Factor	5	2010	6	42	0.09
10823	Gundam Breaker	23	2013	9	26	0.09
10824	Neo Atlas	13	1998	12	241	0.09
10825	Jaws: Ultimate Predator	1	2011	9	35	0.09
10826	Disney's Aladdin in Nasira's Revenge	13	2000	9	4	0.09
10827	Kiniro no Corda 3	17	2010	11	49	0.09
10828	SeaWorld Adventure Parks: Shamu's Deep Sea Adventure	19	2005	11	5	0.09
10829	Taiko no Tatsujin: Don Don! Mystery Adventure	10	2016	9	26	0.09
10830	Winning Post 6	7	2003	1	49	0.09
10831	Egg Monster Hero	4		4	17	0.09
10832	Rock Band Country Track Pack 2	1	2011	6	32	0.09
10833	Darkest of Days	5	2009	7	373	0.09
10834	Whacked!	14	2002	6	2	0.09
10835	Ghostbusters: The Video Game (DS Version)	15	2010	9	3	0.09
10836	Barnyard	7	2006	9	29	0.09
10837	Big League Sports: Summer	1	2009	1	5	0.09
10838	Angry Birds: Rio	15	2011	5	81	0.09
10839	Dance on Broadway	6	2011	6	6	0.09
10840	Risen 3: Titan Lords	15	2014	4	42	0.09
10841	Dungeons	15	2011	12	200	0.09
10842	Pac-Man World 3	19	2005	2	26	0.09
10843	SingStar Apres-Ski Party 2	6	2010	6	4	0.09
10844	Raven Squad: Operation Hidden Dagger	5	2009	7	374	0.09
10845	Rocky	19	2002	10	115	0.09
10846	Gundam Breaker 3	11	2016	9	26	0.09
10847	Crash 'N' Burn	14	2004	3	22	0.09
10848	Medieval II: Total War	15	2006	12	9	0.09
10849	NFL Blitz 20-02	14	2002	1	40	0.09
10850	Metal Fight Beyblade	4	2009	9	69	0.09
10851	Robots	14	2005	9	24	0.09
10852	Speed Kings	7	2003	3	31	0.09
10853	Monopoly Collection	1	2011	6	8	0.09
10854	The King of Fighters XIV	11	2016	10	42	0.09
10855	Langrisser V: The End of Legend	24	1998	12	262	0.09
10856	FIFA Street 3	4	2008	1	8	0.09
10857	PhotoKano	17	2012	11	153	0.09
10858	Ouchi Mainichi Tamagotchi	10	2012	9	26	0.09
10859	Fresh PreCure! Asobi Collection	4	2009	9	26	0.09
10860	Populous: The Beginning	13	1998	12	8	0.09
10861	Rygar: The Battle of Argus	1	2008	9	71	0.09
10862	Chess	13	2001	12	91	0.09
10863	Rosco McQueen: Firefighter Extreme	13	1997	9	4	0.09
10864	Terranigma	8	1995	4	1	0.09
10865	PAC-MAN and the Ghostly Adventures	10	2013	2	26	0.09
10866	The Voice	20	2014	9	5	0.09
10867	Forever Kingdom	7	2001	4	228	0.09
10868	Blitz: Overtime	17	2006	1	40	0.09
10869	Cabela's North American Adventures	17	2010	1	5	0.09
10870	Altered Beast: Guardian of the Realms	9	2002	9	29	0.09
10871	Field & Stream: Total Outdoorsman Challenge	5	2010	1	12	0.09
10872	Wordmaster	4	2008	12	87	0.09
10873	Shining Tears	7	2004	4	9	0.09
10874	MotoGP	14	2002	3	29	0.09
10875	Scaler	7	2004	2	3	0.09
10876	Gradius V	7	2004	7	15	0.09
10877	X-COM: UFO Defense	13	1995	12	97	0.09
10878	Raiden Fighters Aces	5	2008	7	353	0.09
10879	Scooby-Doo! Who's Watching Who?	4	2006	11	29	0.09
10880	World Cup '98 France: Road to Win	24	1998	1	9	0.09
10881	MLB SlugFest 20-04	14	2003	1	40	0.09
10882	Barbie and the Magic of Pegasus	9	2005	9	24	0.09
10883	SD Gundam G Generation DS	4	2005	4	26	0.09
10884	Adventure Time: Finn & Jake Investigations	5	2015	9	231	0.09
10885	Bleach: Heat the Soul	17	2005	10	4	0.09
10886	Fishing Master World Tour	1	2009	1	124	0.09
10887	Psychonauts	7	2005	2	35	0.09
10888	Harvey Birdman: Attorney at Law	17	2008	11	13	0.09
10889	World Stadium 5	13	2001	1	26	0.09
10890	The Legend of Heroes: A Tear of Vermillion	17	2005	4	26	0.09
10891	Digimon World: Next Order	23	2016	9	26	0.09
10892	The Amazing Spider-Man (Console Version)	20	2013	9	5	0.09
10893	The Crew: Wild Run	11	2015	9	6	0.09
10894	ESPN NBA 2Night	7	2000	1	15	0.09
10895	Uta no Prince-Sama: Debut	17	2012	11	309	0.09
10896	Galactic Taz Ball	4	2010	2	20	0.09
10897	Freekstyle	19	2002	3	8	0.09
10898	Ford Mustang: The Legend Lives	14	2005	3	3	0.09
10899	Virtua Fighter CG Portrait Series Vol.3: Akira Yuki	24	1995	6	9	0.09
10900	Digimon Rumble Arena 2	7	2004	10	11	0.09
10901	Scooby-Doo! Unmasked	4	2005	2	29	0.09
10902	Dora the Explorer: Dora Saves the Crystal Kingdom	7	2009	6	3	0.09
10903	Etrian Odyssey 2 Untold: Knight of Fafnir	10	2014	4	72	0.09
10904	Prinny 2: Dawn of Operation Panties, Dood!	17	2010	2	132	0.09
10905	Alien Monster Bowling League	1	2009	1	154	0.09
10906	Devil May Cry 4	11	2015	9	13	0.09
10907	Shockwave Assault	13	1995	8	8	0.09
10908	echochrome	17	2008	5	4	0.09
10909	Ribbit King	7	2003	1	11	0.09
10910	Generator Rex: Agent of Providence	1	2011	9	5	0.09
10911	Championship Foosball	1	2008	1	12	0.09
10912	World Championship Poker 2: Featuring Howard Lederer	14	2005	6	68	0.09
10913	Alien Hominid	19	2004	7	349	0.09
10914	Lego Star Wars: The Force Awakens	23	2016	9	20	0.09
10915	Pro Yakyuu Greatest Nine 98	24	1998	1	9	0.09
10916	Snood 2: On Vacation	4	2005	5	87	0.09
10917	Ninja Gaiden Black	14	2005	9	2	0.09
10918	Playmobil Pirates	4	2009	9	52	0.09
10919	Girls und Panzer: I Will Master Tankery	23	2014	9	26	0.09
10920	Bogey: Dead 6	13	1996	8	4	0.09
10921	Hakuouki: Zuisouroku Portable	17	2010	11	279	0.09
10922	Puyo Pop Fever (JP sales)	4	2004	5	151	0.09
10923	Dragon Ball Kai: Ultimate Butouden	4	2011	10	26	0.09
10924	Yu-Gi-Oh! GX: The Beginning of Destiny (US sales)	7	2007	12	15	0.09
10925	Brain Age: Concentration Training	10	2012	5	1	0.09
10926	Henry Hatsworth in the Puzzling Adventure	4	2009	5	8	0.09
10927	Shin Megami Tensei	13	2001	4	72	0.09
10928	Trivial Pursuit unhinged	14	2004	6	11	0.09
10929	U-Sing  2	1	2010	6	52	0.09
10930	Backyard Sports: Sandlot Sluggers	5	2010	1	11	0.09
10931	The Revenge of Shinobi	9	2002	2	11	0.09
10932	Bloody Roar 4	7	2003	10	15	0.09
10933	Playmobil Circus	1	2009	9	52	0.09
10934	Let's Ride! Silver Buckle Stables	7	2006	1	29	0.09
10935	Star Wars: Empire at War - Gold Pack	15	2007	12	18	0.09
10936	Hakuoki: Demon of the Fleeting Blossom	17	2009	11	279	0.09
10937	Cabela's Big Game Hunter	9	2002	1	57	0.09
10938	Import Tuner Challenge (American sales)	5	2006	3	6	0.09
10939	I-Ninja	19	2003	2	26	0.09
10940	Truth or Lies	6	2010	6	29	0.09
10941	WSC Real 11: World Snooker Championship	6	2011	1	102	0.09
10942	World Soccer Winning Eleven 2010: Aoki Samurai no Chousen	7	2010	1	15	0.09
10943	Crash Boom Bang!	4	2006	6	24	0.09
10944	Dragon Tales: Dragon Seek	13	2000	2	6	0.09
10945	NCAA March Madness 08	6	2007	1	8	0.09
10946	Tom Clancy's EndWar	4	2008	12	6	0.09
10947	Yourself Fitness	14	2004	1	375	0.09
10948	Tak: The Great Juju Challenge	4	2005	2	29	0.09
10949	NBA 2K16	15	2015	1	3	0.09
10950	Def Jam Fight For NY: The Takeover	17	2006	9	8	0.09
10951	NHL 2K8	6	2007	1	3	0.09
10952	Black & White 2	15	2005	12	8	0.09
10953	GripShift	17	2005	3	6	0.09
10954	Jenga World Tour	4	2007	6	11	0.09
10955	Riviera: The Promised Land	17	2006	4	12	0.09
10956	The Idolmaster: Platinum Stars	11	2016	8	26	0.09
10957	Get Fit with Mel B	1	2010	1	194	0.09
10958	Destroy All Humans! Path of the Furon	6	2009	9	29	0.09
10959	Resident Evil Chronicles HD	6	2012	7	13	0.09
10960	Wonder World Amusement Park	4	2009	6	35	0.09
10961	Return Fire	13	1996	12	346	0.09
10962	Lock's Quest	4	2008	12	29	0.09
10963	Transformers: Devastation	5	2015	9	5	0.09
10964	Wild ARMs: Alter Code F	7	2003	4	4	0.09
10965	Bomberman Max 2: Blue Advance	9	2002	5	24	0.09
10966	Dora's Big Birthday Adventure	4	2010	6	3	0.09
10967	Atari Classics Evolved	17	2007	6	11	0.09
10968	Pillow Pets	4	2011	11	171	0.09
10969	SingStar: Made In Germany	6	2009	6	4	0.09
10970	Kawasaki Quad Bikes	1	2007	3	332	0.09
10971	Shrek SuperSlam	14	2005	9	5	0.09
10972	Rapid Reload	13	1995	7	4	0.09
10973	New Legends	14	2002	9	29	0.09
10974	Total Overdose: A Gunslinger's Tale in Mexico	7	2005	7	22	0.09
10975	The Secret Saturdays: Beasts of the 5th Sun	17	2009	9	59	0.09
10976	Island Xtreme Stunts	7	2002	9	8	0.09
10977	Fighting Fantasy: The Warlock of Firetop Mountain	4	2009	4	263	0.09
10978	Agassi Tennis Generation	7	2003	1	319	0.09
10979	Young Justice: Legacy	6	2013	9	26	0.09
10980	Metal Slug X	13	2001	7	19	0.09
10981	Samurai Shodown Anthology	17		10	151	0.09
10982	Space Invaders Extreme	17	2008	7	17	0.09
10983	Driver: Renegade	10	2011	3	6	0.09
10984	Running Wild	13	1997	3	43	0.09
10985	Romance of the Three Kingdoms X	7	2005	12	49	0.09
10986	Brigandine: The Legend of Forsena	13	1998	12	72	0.09
10987	Pro Evolution Soccer 2012	15	2011	9	15	0.09
10988	MX SuperFly featuring Ricky Carmichael	19	2002	3	29	0.09
10989	Disney's The Haunted Mansion	14	2003	2	3	0.09
10990	Sound Novel Machi	24	1998	11	120	0.09
10991	FIFA 2001: Major League Soccer	7	2000	1	8	0.09
10992	I Love Puppies	4	2010	8	154	0.09
10993	Jikkyou Powerful Pro Yakyuu 14 Ketteiban	7	2007	1	15	0.09
10994	Pokemon Rumble World	10	2015	9	1	0.09
10995	JASF: Jane's Advanced Strike Fighters	5	2011	8	42	0.09
10996	Beaterator	17	2009	6	3	0.09
10997	Skies of Arcadia	22	2000	4	9	0.09
10998	NASCAR: Dirt to Daytona	19	2002	3	53	0.09
10999	Demon Chaos	7		9	15	0.09
11000	Challenge Me: Brain Puzzles 2	4	2010	5	342	0.09
11001	Cake Mania: Main Street	4	2011	8	35	0.09
11002	Road Trip	7	2002	3	98	0.09
11003	Blood of Bahamut	4	2009	4	17	0.09
11004	Damnation	6	2009	7	36	0.09
11005	DaGeDar	4	2011	9	171	0.09
11006	Quiz Magic Academy DS: Futatsu no Jikuu Koku	4	2010	6	15	0.09
11007	Lilie no Atelier: Salburg no Renkinjutsushi 3	7	2001	4	243	0.09
11008	Supremacy MMA	23	2012	10	12	0.09
11009	Top Gun: Firestorm Advance	9	2002	7	104	0.09
11010	Justice League Heroes	4	2006	4	22	0.09
11011	Project Eden	7	2001	9	22	0.09
11012	Disney Art Academy	10	2016	9	1	0.09
11013	Pipe Mania	4	2008	5	90	0.09
11014	NERF N-Strike: Double Blast Bundle	1	2010	7	8	0.09
11015	Space Chimps	1	2008	2	206	0.09
11016	Sega Casino	4	2005	6	9	0.09
11017	Ben 10 Galactic Racing	6	2011	3	59	0.09
11018	Ghosthunter	7	2003	9	4	0.09
11019	Junior Mystery Quest	4	2011	5	96	0.09
11020	Obscure: The Aftermath	17	2009	9	286	0.09
11021	Family GameShow	1	2009	6	202	0.09
11022	Great Party Games	1	2010	6	342	0.09
11023	Seven: Molmorth no Kiheitai	7	2000	9	26	0.09
11024	Doraemon: Nobita to Midori no Kyojinden DS	4	2008	2	9	0.09
11025	Jimmie Johnson's Anything With an Engine	5	2011	3	15	0.09
11026	Hello Kitty's Cube Frenzy	13	1998	5	376	0.09
11027	Are You Smarter Than a 5th Grader? Back to School	4	2010	6	29	0.09
11028	Spectral Force Genesis	4	2008	4	127	0.09
11029	Jikkyou Powerful Pro Yakyuu 9 Ketteiban	7	2002	1	15	0.09
11030	Agatha Christie: Evil Under the Sun	1	2008	11	307	0.09
11031	World Championship Games: A Track & Field Event	4	2008	1	145	0.09
11032	Astro Boy: Omega Factor	9	2003	9	29	0.09
11033	Karaoke Joysound Wii Super DX: Hitori de Minna de Utai Houdai!	1	2010	6	69	0.09
11034	Fullmetal Alchemist: Dual Sympathy	4	2005	4	90	0.09
11035	Cardfight!! Vanguard: Ride to Victory	10	2013	6	246	0.09
11036	Last Rebellion	6	2010	4	132	0.09
11037	How to Train Your Dragon 2	20	2014	11	231	0.09
11038	Quantum Theory	5	2010	7	49	0.09
11039	Jikkyou Powerful Pro Yakyuu Portable 2	17	2007	1	15	0.09
11040	Reading Training	4	2007	6	365	0.09
11041	Kawashima Ryuuta Kyouju Kanshuu Nouryoku Trainer Portable 2	17	2006	6	9	0.09
11042	Bass Pro Shops: The Hunt	5	2010	1	377	0.09
11043	Rugby 2005	7	2005	1	8	0.09
11044	Carnival Games: Wild West 3D	10	2011	6	3	0.09
11045	Ochaken no Heya DS 2	4	2007	8	333	0.09
11046	Ratchet & Clank Future: Quest for Booty	6	2008	2	4	0.09
11047	V-Rally Edition 99	12	1998	3	53	0.09
11048	Saikyou Habu Shogi	12	1996	6	260	0.09
11049	Castlevania Dracula X	8	1995	2	15	0.09
11050	Golden Nugget 64	12	1998	6	8	0.09
11051	Robotron 64	12	1998	7	14	0.09
11052	Batman Beyond: Return of the Joker	12	2000	9	6	0.09
11053	Inazuma Eleven 3	10	2013	4	1	0.09
11054	Ski-Doo Snowmobile Challenge	1	2009	3	353	0.09
11055	Naruto RPG 3: Rejiuu vs Konoha Shoutai	4	2006	4	197	0.09
11056	Tunnel B1	13	1996	9	86	0.09
11057	2-in-1 Game Pack: Spider-Man & Spider-Man 2	9	2005	2	5	0.09
11058	Winter Stars	6	2011	1	42	0.09
11059	Go Play: City Sports	1	2009	1	35	0.09
11060	Porsche Challenge	13	1997	3	4	0.09
11061	Dragon Ball Z: Shin Butouden	24	1995	10	26	0.09
11062	Beowulf: The Game	17	2007	9	6	0.09
11063	Super Robot Taisen MX Portable	17	2005	12	58	0.09
11064	Mimana Iyar Chronicle	17	2009	4	67	0.09
11065	Detana TwinBee Yahho! Deluxe Pack	13	1995	7	15	0.09
11066	Shin Ken to Mah? to Gakuenmono. Toki no Gakuen	17	2012	4	310	0.09
11067	Super Robot Wars OG: The Moon Dwellers	11	2016	6	26	0.09
11068	Uta no Prince-Sama: Music 2	17	2013	11	309	0.09
11069	Jambo! Safari Animal Rescue	1	2009	8	9	0.09
11070	Supreme Commander	5	2008	12	12	0.09
11071	Saiyuuki: Kinkaku, Ginkaku no Inbou	4	2007	4	59	0.09
11072	Bleach: Heat the Soul 6	17	2009	10	4	0.09
11073	Roary the Racing Car	4	2009	6	191	0.09
11074	Ski and Shoot	1	2008	1	79	0.09
11075	Mugen Keitai Disgaea	7	2007	4	49	0.09
11076	Scrabble	17	2009	6	8	0.09
11077	Samurai Warriors 4: Empires	11	2015	9	49	0.09
11078	Action Man-Operation Extreme	13		9	34	0.09
11079	Blazblue: Continuum Shift Extend	6	2011	10	148	0.09
11080	Tornado Outbreak	6	2009	9	15	0.09
11081	Mystic Heroes	19	2002	9	49	0.09
11082	Pachitte Chonmage Tatsujin 10: Pachinko Fuyu no Sonata	7	2007	6	378	0.09
11083	Defender	14	2002	6	40	0.09
11084	The Sims 2: Apartment Life	15	2008	8	8	0.09
11085	MLB Superstars	1	2008	1	3	0.09
11086	Captain Tsubasa: Aratanaru Densetsu Joshou	13	2002	1	15	0.09
11087	Remington Super Slam Hunting: Alaska	1	2011	1	178	0.09
11088	Blood: The Last Vampire (Joukan)	7	2000	11	4	0.09
11089	Clockwork Knight	24	1994	2	9	0.09
11090	MotoGP 14	5	2014	3	257	0.09
11091	Freestyle Metal X	7	2003	3	40	0.09
11092	Prinny: Can I Really Be the Hero?	17	2008	2	49	0.09
11093	Sidewinder Max	7	2000	8	370	0.09
11094	The $1 Pyramid	1	2011	6	6	0.09
11095	Burnout Paradise: The Ultimate Box	6	2009	3	8	0.09
11096	Kenka Banchou 2: Full Throttle	7	2007	9	130	0.09
11097	Zoids Assault	5	2007	12	197	0.09
11098	Pro Yaky? Spirits 2014	17	2014	1	15	0.09
11099	Dark Angel: Vampire Apocalypse	7	2001	4	139	0.09
11100	The Mummy: Tomb of the Dragon Emperor	1	2008	9	24	0.09
11101	Spider-Man: Edge of Time	1	2011	9	5	0.09
11102	Momu-chan Diet Wii: Figurobics by Chon Dayon	1	2010	6	69	0.09
11103	Karaoke Revolution Presents American Idol Encore 2	5	2008	6	15	0.09
11104	Atelier Totori: The Adventurer of Arland	23	2012	4	243	0.09
11105	Mad Dog McCree: Gunslinger Pack	1	2009	7	35	0.09
11106	No More Heroes: Red Zone	6	2011	9	220	0.09
11107	Game Hits!	4	2010	6	275	0.09
11108	Bakugan: Rise of the Resistance	4	2011	12	5	0.09
11109	Thomas & Friends: Hero of the Rails	4	2010	6	54	0.09
11110	Super Puzzle Fighter II	9		5	13	0.09
11111	The Mummy: Tomb of the Dragon Emperor	4	2008	9	24	0.09
11112	Battle Stadium D.O.N	19	2006	10	26	0.09
11113	Deadliest Catch: Sea of Chaos	5	2010	1	68	0.09
11114	Karaoke Revolution Presents American Idol Encore	6	2008	6	15	0.09
11115	Crysis: Maximum Edition	15	2009	7	8	0.09
11116	Crayon Shin-Chan Shokkugan! Densetsu o Yobu Omake Daiketsusen!!	4	2010	9	26	0.09
11117	Wacky World of Sports	1	2009	1	9	0.09
11118	Kurikin: Nano Island Story	4	2007	4	1	0.09
11119	Transworld Snowboarding	14	2002	1	11	0.09
11120	NFL Blitz 20-02	19	2002	1	40	0.09
11121	Sniper Elite	14	2005	7	6	0.09
11122	Data East Arcade Classics	1	2010	6	35	0.09
11123	World Soccer Winning Eleven 8 International	14	2004	1	15	0.09
11124	Test Drive: Eve of Destruction	14	2004	3	11	0.09
11125	Crimson Sea	14	2002	9	49	0.09
11126	Naruto Shippuden: Gekito Ninja Taisen! EX 2	1	2007	10	197	0.09
11127	The Weakest Link	13	2001	6	5	0.09
11128	Dreamer Series: Teacher	4	2009	8	42	0.09
11129	Lethal Enforcers	8	1993	7	15	0.09
11130	Knights in the Nightmare	4	2008	4	321	0.09
11131	Romance of the Three Kingdoms XII	6	2012	12	49	0.09
11132	El Tigre: The Adventures of Manny Rivera	4	2007	2	29	0.09
11133	Ikaruga	19	2003	7	11	0.09
11134	Back to the Future: The Game	6	2011	11	174	0.09
11135	Hyperdimension Neptunia Re;Birth 2	23	2014	9	285	0.09
11136	The Suffering: Ties That Bind	14	2005	9	40	0.09
11137	Nobunaga's Ambition: Iron Triangle	7	2006	12	49	0.09
11138	Little League World Series Baseball: Double Play	1	2010	1	5	0.09
11139	Jikkyou Powerful Pro Yakyuu 2012	23	2012	9	15	0.09
11140	Harvest Moon: Boy & Girl	17	2005	8	220	0.09
11141	Mahjong Cub3D	10	2011	5	242	0.09
11142	F1 2016 (Codemasters)	18	2016	3	36	0.09
11143	Major League Baseball 2K12	17	2012	1	3	0.09
11144	Happy Feet Two	1		9	20	0.09
11145	Viewtiful Joe: Red Hot Rumble	17	2006	9	13	0.09
11146	The Ant Bully	1	2006	2	40	0.09
11147	MLB 2K9 Fantasy All-Stars	4	2009	1	3	0.09
11148	RollerCoaster Tycoon 3: Platinum	15	2005	12	11	0.09
11149	Age of Mythology	15	2002	12	2	0.09
11150	Sengoku Basara 4: Sumeragi	6	2015	9	13	0.09
11151	Shrek Smash n' Crash Racing	17	2006	3	5	0.09
11152	The Smurfs 2	20	2013	2	6	0.09
11153	Digimon World Re:Digitize Decode	10	2013	4	26	0.09
11154	The Bachelor: The Videogame	4	2010	6	20	0.09
11155	Harvey Birdman: Attorney at Law	1	2008	11	13	0.09
11156	Digimon World 4	19	2005	4	26	0.09
11157	Resident Evil: Revelations 2	5	2015	9	13	0.09
11158	Jumper: Griffin's Story	1	2008	9	22	0.09
11159	My Stop Smoking Coach: Allen Carr's EasyWay	4	2008	6	6	0.09
11160	Star Wars: Empire at War	15	2006	12	18	0.09
11161	Ford Racing 3	14	2004	3	3	0.09
11162	MLB SlugFest Loaded	14	2004	1	40	0.09
11163	Ty the Tasmanian Tiger 3: Night of the Quinkan	19	2005	9	5	0.09
11164	Sotsugyou Crossworld	13	1996	8	379	0.09
11165	R: Racing Evolution	14	2003	3	26	0.09
11166	Bionicle	9	2003	9	29	0.09
11167	Bomberman Land Touch!	4	2006	5	71	0.09
11168	Battle Fantasia	5	2008	10	12	0.09
11169	Lego Star Wars: The Force Awakens	20	2016	9	20	0.09
11170	Bleach GC: Tasogare Ni Mamieru Shinigami	19	2005	10	9	0.09
11171	ShellShock 2: Blood Trails	5	2009	7	22	0.09
11172	F.E.A.R. Files	5	2007	7	24	0.09
11173	SpongeBob: HeroPants	5	2015	2	5	0.09
11174	Team Elimination Games	1	2009	6	6	0.09
11175	Spectral Force 3	5	2006	4	279	0.09
11176	Chou Jigen Game Neptune Mk-II	6	2011	4	266	0.09
11177	Bella Sara	4	2008	6	36	0.09
11178	Jikkyou Powerful Pro Yakyuu 2000 Ketteiban	13	2000	1	15	0.09
11179	Karaoke Revolution	14	2004	6	15	0.09
11180	Escape Dead Island	5	2014	9	42	0.09
11181	Red Faction: Armageddon	15	2011	7	29	0.09
11182	Fire Pro Wrestling Returns	7	2005	1	12	0.09
11183	Brain Voyage	4	2008	5	22	0.09
11184	Jimmy Neutron: Boy Genius	19	2002	2	29	0.09
11185	Adventure Time: Finn & Jake Investigations	11	2015	9	231	0.09
11186	Derby Stallion	24	1999	1	51	0.09
11187	Puss in Boots	6	2011	9	29	0.09
11188	PAC-MAN and the Ghostly Adventures	6	2013	2	26	0.09
11189	Rollcage Stage II	13	2000	3	4	0.09
11190	Samurai Warriors 2: Xtreme Legends	7	2007	9	49	0.09
11191	Karaoke Joysound Wii DX	1	2009	6	69	0.09
11192	Sloane to MacHale no Nazo no Monogatari 2	4	2009	5	38	0.09
11193	Tabi no Yubisashi Kaiwachou DS: DS Series 4 America	4	2006	6	1	0.09
11194	Invasion From Beyond	13	1998	7	14	0.09
11195	50 Cent: Bulletproof	17	2006	9	24	0.09
11196	Forgotten Realms: Demon Stone	14	2004	9	11	0.09
11197	Counter-Strike: Source	15	2004	7	24	0.09
11198	My Make-Up	4	2008	6	60	0.09
11199	Major League Baseball 2K7	17	2007	1	3	0.09
11200	The Penguins of Madagascar: Dr. Blowhole Returns - Again!	1	2011	9	29	0.09
11201	LEGO Star Wars II: The Original Trilogy	9	2006	9	18	0.09
11202	Tim Burton's The Nightmare Before Christmas: Oogie's Revenge	14	2005	11	33	0.09
11203	Knights in the Nightmare	17	2010	4	72	0.09
11204	Mahjong Master	12	1996	6	15	0.09
11205	Adventure Time: The Secret of the Nameless Kingdom	5	2014	9	231	0.09
11206	Royal Palace of White Sword and The City of Gentiles	14	2005	4	3	0.09
11207	Midnight Play! Pack	4	2008	6	6	0.09
11208	Top Gear Rally	9	2003	3	189	0.09
11209	Busy Scissors	1	2010	8	231	0.09
11210	Knights Contract	6	2011	9	26	0.09
11211	Gray Matter	15	2011	11	233	0.09
11212	L: the proLogue to DEATH NOTE - Rasen no Wana	4	2008	11	15	0.09
11213	Famicom Mini: Makaimura	9	2004	2	13	0.09
11214	Might & Magic Heroes VII	15	2015	12	6	0.09
11215	XIII	19	2003	7	6	0.09
11216	Pro Evolution Soccer 2013	15	2012	1	15	0.09
11217	Dynasty Warriors 8: Empires	6	2014	9	49	0.09
11218	The Incredibles: Rise of the Underminer	14	2005	9	29	0.09
11219	Theme Hospital	13	1998	12	8	0.09
11220	Princess Isabella: A Witch's Curse	4	2010	11	96	0.09
11221	Blacksite: Area 51	6	2007	7	40	0.09
11222	Wizardry: Tale of the Forsaken Land	7	2001	4	6	0.09
11223	Cloudy With a Chance of Meatballs	5	2009	2	6	0.09
11224	Charlotte's Web	4	2006	9	9	0.09
11225	ChuChu Rocket!	9	2001	12	11	0.09
11226	FIFA 12	7	2011	1	8	0.09
11227	Monster Jam: Urban Assault	17	2008	3	5	0.09
11228	Ys I & II Chronicles	17	2009	4	254	0.09
11229	Codename Tenka	13	1997	7	88	0.09
11230	Edna & Harvey: Harvey's New Eyes	15	2011	11	142	0.09
11231	Savage Skies	7	2002	7	128	0.09
11232	Cartoon Network: Punch Time Explosion XL	1	2011	10	68	0.09
11233	1 vs. 100	4	2008	6	293	0.09
11234	Sega Bass Fishing	22	1999	1	9	0.09
11235	Indianapolis 500 Legends	4	2007	3	154	0.09
11236	Walt Disney's The Jungle Book: Rhythm N'Groove	13	2000	6	4	0.09
11237	Petz: Saddle Club	17	2009	8	6	0.09
11238	Just Dance Wii U	20	2014	6	1	0.09
11239	Cyberia	13	1995	9	118	0.09
11240	Killer7	7	2005	9	13	0.09
11241	Million God	7	2002	6	380	0.09
11242	The Penguins of Madagascar: Dr. Blowhole Returns - Again!	6	2011	9	29	0.09
11243	Rugby 15	18	2015	1	324	0.09
11244	Ys VIII: Lacrimosa of Dana	23	2016	4	221	0.09
11245	Build 'n Race	1	2009	3	75	0.09
11246	Lost Heroes	10	2012	4	26	0.09
11247	Astro Boy	7	2004	9	9	0.09
11248	Wing Commander IV: The Price of Freedom	13	1997	8	381	0.09
11249	Monster House	9	2006	11	29	0.09
11250	MetropolisMania	7	2001	12	80	0.09
11251	Shin Megami Tensei: Devil Summoner - Raidou Kuzunoha vs. The Soulless Army	7	2006	4	49	0.09
11252	Shadow of Destiny	17	2009	11	15	0.09
11253	Guilty Gear XX Accent Core Plus	17	2008	10	148	0.08
11254	Kuroko's Basketball: Ties to Future	10	2015	9	26	0.08
11255	NCAA Football 08	14	2007	1	8	0.08
11256	Princess Maker 2	24	1995	8	363	0.08
11257	Ephemeral Fantasia	7	2000	4	15	0.08
11258	SRS: Street Racing Syndicate	19	2004	3	26	0.08
11259	Winter Sports 2: The Next Challenge	7	2008	1	232	0.08
11260	Chameleon	17	2006	5	12	0.08
11261	Aibou DS	4	2009	11	49	0.08
11262	Ultimate Card Games DS	4	2008	12	183	0.08
11263	Tokimeki Memorial: Taisen Pazurudama	24	1996	5	15	0.08
11264	Diva Girls: Divas on Ice	1	2009	1	12	0.08
11265	Beat Sketch!	6	2010	6	4	0.08
11266	Natural Doctrine	23	2014	4	132	0.08
11267	Lara Croft and the Temple of Osiris	11	2014	9	17	0.08
11268	Bleach: Heat the Soul 5	17	2008	10	4	0.08
11269	Koudelka	13	1999	4	11	0.08
11270	Disgaea Infinite	17	2010	11	132	0.08
11271	Virtua Fighter CG Portrait Series Vol.2: Jacky Bryant	24	1995	6	9	0.08
11272	IHRA Drag Racing: Sportsman Edition	7	2006	3	7	0.08
11273	Famicom Mini: Famicom Mukashi Banashi - Shin Oniga Shima Zenkouhen	9	2004	11	1	0.08
11274	Don King Boxing	4	2009	1	3	0.08
11275	Escape Dead Island	6	2014	9	42	0.08
11276	Animal Planet: Emergency Vets	4	2009	8	5	0.08
11277	Martian Panic	1	2010	11	54	0.08
11278	America's Army: True Soldiers	5	2007	7	6	0.08
11279	Pachitte Chonmage Tatsujin 13: Pachinko Hissatsu Shigotojin III	7	2007	6	378	0.08
11280	Sesame Street: Ready, Set, Grover!	4	2011	6	20	0.08
11281	Marvel Nemesis: Rise of the Imperfects	4	2005	10	8	0.08
11282	Wreckin Crew	13	1998	3	329	0.08
11283	Theme Park	24	1994	8	8	0.08
11284	Famicom Mini: Mario Bros.	9	2004	2	1	0.08
11285	MX vs. ATV Supercross	5	2014	3	125	0.08
11286	Major League Baseball 2K9	17	2009	1	130	0.08
11287	RockMan EXE 4.5 Real Operation	9	2004	4	13	0.08
11288	Rescue Heroes: Billy Blazes	9	2003	9	24	0.08
11289	SafeCracker: The Ultimate Puzzle Adventure	1	2008	5	307	0.08
11290	Battlefield 2	15	2005	7	8	0.08
11291	Frantix	17	2005	5	6	0.08
11292	Sega GT Online	14	2003	3	9	0.08
11293	Derby Tsuku: Derby Uma o Tsukurou!	22	2000	1	9	0.08
11294	Captain Tsubasa: New Kick Off	4	2010	1	15	0.08
11295	The Spiderwick Chronicles	4	2008	9	24	0.08
11296	ZhuZhu Babies	4	2011	8	5	0.08
11297	SeaWorld Adventure Parks: Shamu's Deep Sea Adventure	9	2005	11	5	0.08
11298	Prisoner of War	14	2002	11	11	0.08
11299	Arslan: The Warriors of Legend	11	2015	9	49	0.08
11300	S.C.A.R.S	13	1998	3	6	0.08
11301	The Secret Saturdays: Beasts of the 5th Sun	4	2009	9	59	0.08
11302	Risen 3: Titan Lords	5	2014	4	42	0.08
11303	The King of Fighters '98: Dream Match Never Ends	13	1999	10	226	0.08
11304	Air Conflicts: Secret Wars	5	2011	8	274	0.08
11305	Elebits: The Adventures of Kai and Zero	4	2008	11	15	0.08
11306	PAC-MAN and the Ghostly Adventures	5	2013	2	26	0.08
11307	Dead or Alive 5	18	2015	10	49	0.08
11308	ESPN NFL Primetime 2002	7	2001	1	15	0.08
11309	Wildlife Park 3	15	2011	8	274	0.08
11310	101-in-1 Sports Megamix	4	2010	1	252	0.08
11311	From Russia With Love	17	2006	9	8	0.08
11312	Sniper: Ghost Warrior 2	15	2013	7	89	0.08
11313	Warriors Orochi 3 Hyper	20	2012	9	49	0.08
11314	Zoids: Legacy	9	2003	4	100	0.08
11315	Kidou Senshi Gundam 00	4	2008	9	26	0.08
11316	Monster Jam: Path of Destruction	17	2010	3	5	0.08
11317	Captain America: Super Soldier	10	2011	9	9	0.08
11318	Major League Baseball 2K12	4	2012	1	3	0.08
11319	Onimusha Tactics	9	2003	12	13	0.08
11320	Bomberman Jetters	19	2002	5	69	0.08
11321	TOCA Race Driver 3	7	2006	3	36	0.08
11322	Sports Collection	4	2010	1	6	0.08
11323	Konami Classics Vol. 1	5	2009	6	15	0.08
11324	Pac-Man Power Pack	7	2008	6	26	0.08
11325	Charm Girls Club: My Fashion Show	4		8	54	0.08
11326	Disney's Donald Duck: Goin' Quackers	7	2000	2	6	0.08
11327	Ultimate Brain Games	9	2003	6	183	0.08
11328	NHL 2K7	5	2006	1	3	0.08
11329	The Seven Deadly Sins: Unjust Sin	10	2015	11	26	0.08
11330	Armorines: Project S.W.A.R.M.	13	2000	7	31	0.08
11331	Gundam Seed: Battle Assault	9	2004	10	26	0.08
11332	Chibi Maruko-Chan: Harikiri 365-Nichi no Maki	8	1991	6	175	0.08
11333	Get Fit with Mel B	5		1	194	0.08
11334	SaGa 3: Jikuu no Hasha - Shadow or Light	4	2011	4	17	0.08
11335	Miami Nights: Singles in the City	4	2008	8	6	0.08
11336	Phantom Brave: The Hermuda Triangle	17	2010	4	132	0.08
11337	Famicom Mini: Adventure Island	9	2004	9	69	0.08
11338	Aliens versus Predator: Extinction	14	2003	12	8	0.08
11339	RTX Red Rock	7	2003	7	18	0.08
11340	Nano Assault	10	2011	7	35	0.08
11341	X Rebirth	15	2013	8	102	0.08
11342	FIFA Street 2	14	2006	1	8	0.08
11343	Tokimeki Memorial: Girl's Side	7	2002	11	15	0.08
11344	Naruto Shippuden: Shinobi Rumble	4	2010	10	197	0.08
11345	Shining Force: Resurrection of the Dark Dragon	9	2004	4	29	0.08
11346	Shining Soul II	9	2003	4	29	0.08
11347	Orega Kantoku Da! Gekitou Pennant Race	7	2000	1	25	0.08
11348	America's Next Top Model	1	2010	9	68	0.08
11349	Nikoli's Pencil Puzzle	10	2011	5	69	0.08
11350	Hello Kitty: Roller Rescue	19	2005	9	90	0.08
11351	Jikkyou Powerful Pro Yakyuu 12	19	2005	1	15	0.08
11352	Metal Slug Advance	9	2004	7	151	0.08
11353	Pac-Man World Rally	19	2006	3	26	0.08
11354	Gradius Galaxies	9	2001	7	15	0.08
11355	Blazing Angels: Squadrons of WWII	14	2006	8	6	0.08
11356	Mortal Kombat Kollection	7	2008	10	40	0.08
11357	Blades of Blood: Samurai Shodown III	13	1995	10	4	0.08
11358	LEGO Soccer Mania	7	2002	1	8	0.08
11359	Puchi Puchi Virus	4	2007	5	163	0.08
11360	Gundam the 3D Battle	10	2011	9	26	0.08
11361	Petz: Dogz Family	17	2009	8	6	0.08
11362	Worms: Open Warfare	4	2006	12	29	0.08
11363	Ride	6	2015	3	257	0.08
11364	Deadliest Catch: Sea of Chaos	6	2010	1	68	0.08
11365	Godzilla Generations	22	1998	9	9	0.08
11366	Strider 2	13	2000	2	19	0.08
11367	ShellShock 2: Blood Trails	6	2009	7	22	0.08
11368	Forbidden Siren 2	7	2006	9	4	0.08
11369	Board Game Classics	9	2005	6	204	0.08
11370	Supremacy MMA	5	2011	10	12	0.08
11371	Game of Thrones	15	2012	4	81	0.08
11372	Shin Megami Tensei: Digital Devil Saga 2	7	2005	4	145	0.08
11373	Death Jr. and the Science Fair of Doom	4	2007	2	15	0.08
11374	Steins;Gate	6	2012	11	148	0.08
11375	Super Monkey Ball Adventure	17	2006	2	9	0.08
11376	Zatch Bell! Mamodo Battles	7	2005	10	26	0.08
11377	Dream Day: Wedding Destinations	4	2009	8	29	0.08
11378	Face Racers: Photo Finish	10		3	35	0.08
11379	Bejeweled 3	15	2010	5	208	0.08
11380	Iron Man / X-O Manowar in Heavy Metal	13	1996	2	31	0.08
11381	Derby Stallion 98	8	1998	1	51	0.08
11382	Pimp My Ride: Street Racing	7	2009	3	5	0.08
11383	Exit	17	2005	5	6	0.08
11384	God Eater Resurrection	11	2015	9	26	0.08
11385	Robotron X	13	1996	7	14	0.08
11386	Pretty Rhythm: My Deco Rainbow Wedding	10	2013	6	197	0.08
11387	Kamen Rider: Travelers Senki	10	2013	9	382	0.08
11388	Sushi Academy	4	2009	9	233	0.08
11389	J-League Winning Eleven 2009: Club Championship	7	2009	1	15	0.08
11390	The Sims 2: Ikea Home Stuff	15	2008	8	8	0.08
11391	Grand Prix Challenge	7	2002	3	11	0.08
11392	Super Robot Taisen OG Saga: Endless Frontier	4	2008	4	26	0.08
11393	Meitantei Conan & Kindaichi Shounen no Jikenbou: Meguri au Futari no Meitantei	4	2009	11	26	0.08
11394	Smart Bomb	17	2005	5	22	0.08
11395	FIFA Soccer 2005	9	2004	1	8	0.08
11396	PoPoLoCrois (JP sales)	17	2005	4	151	0.08
11397	Ken to Mahou to Gakuen Mono. 2	17	2009	4	310	0.08
11398	NHL 06	19	2005	1	8	0.08
11399	Kaijuu Busters Powered	4	2011	9	26	0.08
11400	Major League Baseball 2K11	15	2011	1	3	0.08
11401	Initial D: Extreme Stage	6	2008	3	9	0.08
11402	Pinobee: Wings of Adventure	9	2001	2	124	0.08
11403	State of Emergency 2	7	2006	7	84	0.08
11404	Gintama Gin-Oh Quest: Gin-San ga Tenshoku Shitari Sekai wo Sukuttari	4	2007	4	58	0.08
11405	My English Coach: Para Hispanoparlantes	4	2009	6	6	0.08
11406	Ninjabread Man	1	2007	9	295	0.08
11407	One Piece: Romance Dawn - Bouken no Yoake	10	2013	10	26	0.08
11408	Crush	17	2007	5	9	0.08
11409	I Am In The Movie	1	2012	8	26	0.08
11410	Fatal Frame III: The Tormented	7	2005	9	3	0.08
11411	Zero: Tsukihami no Kamen	1		9	1	0.08
11412	Ice Age 2: The Meltdown	1	2006	2	24	0.08
11413	Seven Samurai 20XX	7	2004	9	9	0.08
11414	10 Minute Solution	1	2010	1	5	0.08
11415	Hisshou Pachinko*Pachi-Slot Kouryaku Series DS Vol. 2: Shinseiki Evangelion - Shito, Futatabi	4	2008	6	59	0.08
11416	Jikkyou Powerful Pro Yakyuu 15	1	2008	1	15	0.08
11417	Cloudy With a Chance of Meatballs	17	2009	2	6	0.08
11418	Tom Clancy's Splinter Cell: Pandora Tomorrow	19	2004	9	6	0.08
11419	Ultimate Ghosts 'n Goblins	17	2006	2	13	0.08
11420	Slayers Royal	13	1998	4	153	0.08
11421	Swingerz Golf	19	2002	1	22	0.08
11422	Pro Evolution Soccer 2008 (JP sales)	4	2007	1	15	0.08
11423	Petz Fantasy: Sunshine Magic	4	2010	8	6	0.08
11424	C.O.P.: The Recruit	4	2009	9	6	0.08
11425	Adventure Time: Explore the Dungeon Because I Don't Know!	5	2013	9	59	0.08
11426	Toukiden 2	11	2016	9	49	0.08
11427	The King of Fighters 2006	7	2006	10	151	0.08
11428	Tornado Outbreak	5	2009	9	15	0.08
11429	Pretty Rhythm Rainbow Live: Kira Kira My * Design	10	2013	6	197	0.08
11430	Nobunaga's Ambition: Rise to Power	7	2004	12	49	0.08
11431	FIFA Soccer 2003	19	2002	1	8	0.08
11432	Adventure Time: The Secret of the Nameless Kingdom	10	2014	9	231	0.08
11433	Little League World Series Baseball: Double Play	4	2010	1	5	0.08
11434	DanceDanceRevolution	5	2011	8	15	0.08
11435	3 in 1: Solitaire, Mahjong & Tangram	4	2010	6	42	0.08
11436	Pop'n Music	1	2009	6	15	0.08
11437	Outlaw Golf	19	2002	1	73	0.08
11438	Worms: A Space Oddity	1	2008	12	29	0.08
11439	Steins;Gate: Hiyoku Renri no Darling	5	2011	11	357	0.08
11440	Diego's Build & Rescue	4	2010	9	3	0.08
11441	King's Field (Japan)	13	1994	4	228	0.08
11442	Slam 'n Jam '96 featuring Magic & Kareem	13	1995	1	111	0.08
11443	Far Cry Vengeance	1	2006	7	6	0.08
11444	Looney Tunes: Acme Arsenal	5	2007	9	20	0.08
11445	Samurai Shodown Sen	5	2009	10	71	0.08
11446	Bangai-O Spirits	4	2008	7	59	0.08
11447	NASCAR The Game: Inside Line	6	2012	3	5	0.08
11448	ToraDora Portable!	17	2009	11	26	0.08
11449	The Italian Job	14	2003	3	22	0.08
11450	Smuggler's Run: Warzones	19	2002	6	3	0.08
11451	Kaidan Restaurant: Ura Menu 100-Sen	4	2010	6	26	0.08
11452	R/C Stunt Copter	13	1998	8	118	0.08
11453	Yamakawa Shuppansha Kanshuu: Shousetsu Sekaishi B	4	2007	6	26	0.08
11454	Pac-Man and the Ghostly Adventures 2	10	2014	11	26	0.08
11455	Final Fantasy VI	13	1999	4	4	0.08
11456	Horrid Henry's Horrid Adventure	4	2010	11	281	0.08
11457	The Hidden	10		11	54	0.08
11458	Jikkyou Powerful Major League 2009	7	2009	1	15	0.08
11459	Princess in Love	4	2009	8	233	0.08
11460	The Legend of Alon D'ar	7	2001	4	6	0.08
11461	Space Channel 5 Special Edition	7	2003	6	95	0.08
11462	Cate West: The Vanishing Files	1	2009	11	60	0.08
11463	Jimmie Johnson's Anything With an Engine	1	2011	3	15	0.08
11464	Black/Matrix	24	1998	12	245	0.08
11465	Big Mutha Truckers	19	2003	3	90	0.08
11466	Wolfenstein: The Old Blood	15	2015	9	7	0.08
11467	Qubed	5	2009	5	11	0.08
11468	The Sims 3: Fast Lane Stuff	15	2010	8	8	0.08
11469	TrackMania DS	4	2008	3	81	0.08
11470	Junior Classic Books & Fairytales	4	2010	6	96	0.08
11471	The King of Fighters '96	13	1997	10	244	0.08
11472	Prey the Stars	4	2008	9	49	0.08
11473	Knights Contract	5	2011	9	26	0.08
11474	Chronicles of Mystery: The Secret Tree of Life	4	2011	11	89	0.08
11475	Uta no Prince-Sama: All Star After Secret	17	2015	9	309	0.08
11476	The Space Bar	24	1996	11	9	0.08
11477	Bust-A-Move 2 Arcade Edition	12	1997	5	31	0.08
11478	Knife Edge: NoseGunner	12	1998	7	383	0.08
11479	Puzzle Chronicles	17	2010	5	15	0.08
11480	Wetrix	12	1998	5	86	0.08
11481	NHL Breakaway 99	12	1998	1	31	0.08
11482	Tony Hawk's Pro Skater 3	12	2002	1	5	0.08
11483	Iggy's Reckin' Balls	12	1998	3	31	0.08
11484	The Witch and the Hundred Knight	11	2015	4	132	0.08
11485	Tomb Raider: Underworld	15	2008	9	22	0.08
11486	Samurai Western	7	2004	9	12	0.08
11487	Warhammer 40,000: Dawn of War II - Retribution	15	2011	12	29	0.08
11488	Line Rider 2: Unbound	4	2008	5	42	0.08
11489	Earth Defense Force 2017	5	2006	9	59	0.08
11490	Persona 4: Arena Ultimax	5	2014	10	72	0.08
11491	Harry Potter and the Sorcerer's Stone	19	2003	9	8	0.08
11492	High Heat Major League Baseball 2004	14	2003	1	78	0.08
11493	TimeSplitters: Future Perfect	19	2005	7	8	0.08
11494	Ultimate Shooting Collection	1	2008	7	384	0.08
11495	Kenshuui Tendo Dokuta	4	2004	8	130	0.08
11496	Super Sentai Battle: Ranger Cross	1	2011	9	26	0.08
11497	Soul Bubbles	4	2008	5	22	0.08
11498	Gradius III and IV	7	2000	7	15	0.08
11499	Pilot ni Narou! 2	7	2001	8	249	0.08
11500	AKB1/149: Love Election	6	2013	11	26	0.08
11501	Ken to Mahou to Gakuen Mono. Final: Shinnyusei wa Ohimesama	17	2011	12	310	0.08
11502	Man vs. Wild	6	2010	9	385	0.08
11503	Incredible Crisis	13	1999	9	104	0.08
11504	Midway Arcade Treasures 3	14	2005	6	40	0.08
11505	Witches & Vampires: The Secrets of Ashburry	4	2010	11	233	0.08
11506	The King of Fighters EX2: Howling Blood	9	2002	10	220	0.08
11507	Samurai Shodown III	27	1995	10	244	0.08
11508	Disney's Meet the Robinsons	5	2007	9	33	0.08
11509	Cabela's North American Adventures	7	2010	1	5	0.08
11510	Akiba's Trip Plus	17	2012	11	310	0.08
11511	Famicom Mini: SD Gundam World Gachapon Senshi - Scramble Wars	9	2004	12	1	0.08
11512	NBA 10: The Inside	17	2009	1	4	0.08
11513	Jillian Michaels Fitness Ultimatum 2010	4	2009	1	35	0.08
11514	Dragon Ball Z: Battle of Z	5	2014	10	26	0.08
11515	Silent Hunter III	15	2005	8	6	0.08
11516	Famicom Mini: Star Soldier	9	2004	7	1	0.08
11517	Sentimental Graffiti 2	22	2000	11	245	0.08
11518	Shonen Jump's One Piece: Pirates Carnival	19	2005	6	26	0.08
11519	Kobitodzukan: Kobito no Fushigi - Jikken Set	10	2013	6	229	0.08
11520	Goblin Commander: Unleash the Horde	14	2003	12	163	0.08
11521	Serious Sam 3: BFE	15	2011	7	85	0.08
11522	MXGP 2	11	2016	3	257	0.08
11523	Doraemon: Nobita and the Island of Miracles	10	2012	9	246	0.08
11524	Puzzler Mind Gym 3D	10	2011	5	6	0.08
11525	Lost Dimension	6	2014	4	132	0.08
11526	Sentimental Graffiti: First Window	24	1997	11	245	0.08
11527	Gekijouban Madoka Magicka: The Battle Pentagram	23	2013	9	26	0.08
11528	Cartoon Network Collection: Game Boy Advance Video Volume 2	9	2004	6	34	0.08
11529	Sherlock Holmes: Crimes & Punishments	18	2014	11	81	0.08
11530	Tempest 3X	13	1995	7	118	0.08
11531	A-Train	13	1995	8	4	0.08
11532	Hidden Invasion	7	2001	7	314	0.08
11533	My Friends	4	2009	6	60	0.08
11534	World Series of Poker 2008: Battle for the Bracelets	5	2007	6	5	0.08
11535	Superman: Shadow of Apokolips	19	2003	9	11	0.08
11536	Armored Core 3 Portable	17	2009	8	228	0.08
11537	Bleach: Erabareshi Tamashii	7	2005	11	4	0.08
11538	The Croods: Prehistoric Party!	4	2013	6	59	0.08
11539	Sengoku Musou 3: Moushouden	1	2011	9	210	0.08
11540	Batman: Dark Tomorrow	19	2003	9	189	0.08
11541	Code Lyoko: Fall of X.A.N.A.	4	2008	11	103	0.08
11542	Looney Tunes: Galactic Sports	23	2015	9	4	0.08
11543	Yuu Yuu Hakusho: Makyo Toitsusen	21	1994	10	9	0.08
11544	The First Templar	15	2011	9	200	0.08
11545	Rock Revolution	1		6	54	0.08
11546	Ogre Battle Series: Tactics Ogre	13	1997	4	72	0.08
11547	Little League World Series Baseball 2010	6	2010	1	5	0.08
11548	Wordfish	4	2008	5	6	0.08
11549	Battlestar Galactica	14	2003	7	24	0.08
11550	Fireblade	14	2002	9	40	0.08
11551	futureU: The Prep Game for SAT	4	2008	6	263	0.08
11552	BioShock The Collection	18	2016	7	3	0.08
11553	Johnny Test	4	2011	2	12	0.08
11554	Just Dance: Disney Party 2	20	2015	9	6	0.08
11555	Tomb Raider: Legend	19	2006	9	22	0.08
11556	Boxing Fever	9	2001	1	29	0.08
11557	RoadKill	14	2003	9	40	0.08
11558	Discovery Kids: Spider Quest	4	2009	6	12	0.08
11559	Valkyrie Drive: Bhikkhuni	23	2015	9	148	0.08
11560	Gintama: Gin-San to Issho! Boku no Kabuki Machi Nikki	7	2007	9	26	0.08
11561	7 Wonders of the Ancient World	17	2007	5	235	0.08
11562	New International Track & Field	4	2008	1	15	0.08
11563	Indycar Series 2005	14	2004	9	36	0.08
11564	Final Fantasy XI: Vana'diel Collection 2008	7	2007	4	17	0.08
11565	Lost in Blue: Shipwrecked	1	2008	11	15	0.08
11566	Madden NFL 17	5	2016	1	8	0.08
11567	Taz Wanted	19	2002	2	11	0.08
11568	The Voice	5	2014	9	5	0.08
11569	Penny Racers Party: Turbo-Q Speedway	1	2008	3	197	0.08
11570	Skydiving Extreme	13	2001	1	58	0.08
11571	Evil Dead: Regeneration	14	2005	9	29	0.08
11572	Need For Speed: Undercover	15	2008	3	8	0.08
11573	Dreamer Series: Shop Owner	4	2009	8	42	0.08
11574	Evolution Worlds	19	2002	4	6	0.08
11575	Dead Island: Riptide	15		9	42	0.08
11576	Sherlock Holmes: Crimes & Punishments	6	2014	11	81	0.08
11577	Drama Queens	4	2009	6	35	0.08
11578	Motto! Stitch! DS Rhythm de Rakugaki Daisakusen	4	2010	6	33	0.08
11579	Rapala Pro Bass Fishing 2010	7	2010	1	5	0.08
11580	My First Songs	1	2010	6	52	0.08
11581	Dungeon Travelers 2: The Royal Library & The Monster Seal	17	2013	4	316	0.08
11582	Ultimate Party Challenge	1	2009	6	15	0.08
11583	Assassin's Creed Chronicles	11	2016	9	6	0.08
11584	Scooby-Doo! Who's Watching Who?	17	2006	11	29	0.08
11585	Sub Rebellion	7	2002	8	139	0.08
11586	Legend of the Guardians: The Owls of Ga'Hoole	6	2010	9	20	0.08
11587	Striker 96	13	1995	1	346	0.08
11588	Tokimeki Memorial 4	17	2009	11	15	0.08
11589	Bleach: Heat the Soul 4	17	2007	10	4	0.08
11590	Pocket Dogs	9	2004	6	265	0.08
11591	Real Robots Final Attack	13	1998	7	58	0.08
11592	Minecraft: Story Mode	15	2015	11	107	0.08
11593	P.N.03 - Product Number Three	19	2003	7	13	0.08
11594	Samurai Warriors 2	5	2006	9	49	0.08
11595	Boku no Natsuyasumi 3: Hokkoku Hen: Chiisana Boku no Dai Sougen​	6	2007	11	4	0.08
11596	Ape Escape: Pumped & Primed	7	2004	6	4	0.08
11597	Alien Syndrome	17	2007	4	9	0.08
11598	Monster Trucks DS	4	2005	3	35	0.08
11599	FabStyle	4	2011	12	49	0.08
11600	Outlaw Tennis	7	2005	1	64	0.08
11601	Grease Dance	6	2011	6	12	0.08
11602	The Golf Club	11	2014	1	54	0.08
11603	Mission Runway	4	2008	8	22	0.08
11604	Agatha Christie: And Then There Were None	1	2008	11	307	0.08
11605	Rayman Origins	15	2012	2	6	0.08
11606	Medabots Dual: Kabuto / Kuwagata	10	2013	4	138	0.08
11607	We Sing Rock!	1	2011	6	125	0.08
11608	LEGO Soccer Mania	9	2002	1	8	0.08
11609	Gunblade NY & L.A. Machineguns Arcade Hits Pack	1	2010	7	9	0.08
11610	Dawn of Heroes	4	2010	4	35	0.08
11611	Imagine: My Restaurant	4	2009	8	6	0.08
11612	Gadget Racers	7	2000	3	162	0.08
11613	Phantasy Star Online Episode III: C.A.R.D. Revolution	19	2003	4	9	0.08
11614	Nanashi no Game	4	2008	11	17	0.08
11615	Bleach: Heat the Soul 7	17	2010	10	4	0.08
11616	Cosmic Family	1	2007	6	6	0.08
11617	Whac-A-Mole	4	2005	5	87	0.08
11618	Auto Destruct	13	1998	9	8	0.08
11619	Backyard NFL Football '09	4	2008	1	11	0.08
11620	Terraria	10	2016	9	12	0.08
11621	GOTHA: Ismailia Seneki	24	1995	12	9	0.08
11622	Dangerous Ji-San to 1000-nin no Otomodachi Yokoshima	10	2012	9	26	0.08
11623	MLB Front Office Manager	6	2009	1	3	0.08
11624	Ultimate Fighting Championship: Throwdown	19	2002	10	6	0.08
11625	Deep Fear	24	1998	11	9	0.08
11626	Skeleton Warriors	13	1996	2	19	0.08
11627	Ford vs. Chevy	14	2005	3	64	0.08
11628	Endgame	7	2002	7	90	0.08
11629	Dragon's Dogma Online	11	2015	4	13	0.08
11630	The Dukes of Hazzard: Return of the General Lee	14	2004	3	6	0.08
11631	Criminal Girls: Invite Only	17	2010	4	132	0.08
11632	Ultimate Duck Hunting	1	2009	1	87	0.08
11633	Virus	24	1997	7	69	0.08
11634	Jikkyou Powerful Pro Yakyuu Next	1	2009	1	15	0.08
11635	WWE Crush Hour	19	2003	3	29	0.08
11636	Emily the Strange: Strangerous	4	2011	9	233	0.08
11637	Aliens in the Attic	1	2009	9	286	0.08
11638	Dragon Shadow Spell	7	2007	4	386	0.08
11639	Daniel X: The Ultimate Power	4	2010	9	29	0.08
11640	Sound Novel Tsukuru	8	1996	6	51	0.08
11641	World Championship Poker: Deluxe Series	4	2005	6	12	0.08
11642	Dragon Slayer: The Legend of Heroes	21	1994	4	9	0.08
11643	NHL Hitz 20-03	19	2002	1	40	0.08
11644	Momotarou Dentetsu 11	19	2002	6	69	0.08
11645	The Idolm@ster	5	2007	8	26	0.08
11646	Infernal: Hell's Vengeance	5	2009	7	286	0.08
11647	Guilty Gear XX Slash	7	2006	10	101	0.08
11648	Salon Superstar	4	2009	8	12	0.08
11649	Urban Reign	7	2005	9	26	0.08
11650	Super Robot Taisen Z Special Disc	7	2009	6	26	0.08
11651	Slayers Royal 2	24	1998	4	153	0.08
11652	Family Game Night 4: The Game Show	5	2011	6	8	0.08
11653	Resident Evil 3: Nemesis	19	2003	9	13	0.08
11654	All-Star Baseball 2004	19	2003	1	31	0.08
11655	Madden NFL 08	19	2007	1	8	0.08
11656	Ro-Kyu-Bu!	17	2011	11	153	0.08
11657	Frogger Beyond	14	2002	2	15	0.08
11658	Man vs. Wild	1	2011	9	68	0.08
11659	Katekyoo Hitman Reborn! DS: Flame Rumble Kaien Ring Soudatsuen!	4	2007	10	197	0.08
11660	Stuart Little 3: Big Photo Adventure	7	2005	2	4	0.08
11661	Ni Hao, Kai-lan: Super Game Day	7	2009	6	3	0.08
11662	Katekyoo Hitman Reborn! DS: Flame Rumble Hyper - Moeyo Mirai	4	2008	10	197	0.08
11663	Pro Yakyuu Famista DS 2010	4	2010	1	26	0.08
11664	Captain Tsubasa	7	2006	1	26	0.08
11665	Pitfall: The Lost Expedition	19	2004	2	5	0.08
11666	Need for Speed Underground 2	15	2004	3	8	0.08
11667	No One Can Stop Mr. Domino!	13	1998	6	41	0.08
11668	Legend of the Guardians: The Owls of Ga'Hoole	5	2010	9	20	0.08
11669	GT Advance 3: Pro Concept Racing	9	2002	3	29	0.08
11670	PQ: Practical Intelligence Quotient	17	2005	5	59	0.08
11671	Duke Nukem: Land of the Babes	13	2000	7	11	0.08
11672	Majin Tensei	8	1994	4	72	0.08
11673	Dragon Force II: Kamisarishi Daichi ni	24	1998	12	9	0.08
11674	Pac-Man World 3	17	2005	2	26	0.08
11675	Monkey Hero	13	1998	9	3	0.08
11676	Tokyo Beat Down	4	2008	9	91	0.08
11677	Krazy Ivan	13	1995	8	88	0.08
11678	Need for Speed: Most Wanted	15	2012	3	8	0.08
11679	Quo Vadis	24	1995	12	387	0.08
11680	The Lord of the Rings: The Battle for Middle-Earth	15	2004	12	8	0.08
11681	The Legend of Kage 2	4	2008	9	17	0.08
11682	Fate/Tiger Colosseum	17	2007	10	13	0.08
11683	World Party Games	1	2009	6	12	0.08
11684	Samurai Warriors Chronicles 3	10	2014	9	49	0.08
11685	Open Season	17	2006	2	6	0.08
11686	Animal Kingdom: Wildlife Expedition	1	2009	11	80	0.08
11687	Brothers in Arms: Furious 4	6	2012	7	6	0.08
11688	Rogue Trooper: Quartz Zone Massacre	1	2009	7	338	0.08
11689	Dragon Ball Z: The Legacy of Goku I & II	9	2005	4	11	0.08
11690	R: Racing Evolution	19	2003	3	26	0.08
11691	Crayola: Colorful Journey	1	2009	6	68	0.08
11692	Storybook Workshop	1	2009	6	15	0.08
11693	World Tour Soccer 06	17	2006	1	4	0.08
11694	Stella Deus: The Gate of Eternity	7	2004	12	12	0.08
11695	Vietcong: Purple Haze	14	2004	7	214	0.08
11696	Conflict: Desert Storm	19	2003	7	112	0.08
11697	One Piece: Gear Spirit	4	2007	10	26	0.08
11698	Tales of Fandom Vol.2	7	2007	4	26	0.08
11699	Titanic Mystery	4	2010	5	283	0.08
11700	Minna no Joushiki Ryoku TV	1	2008	6	1	0.08
11701	P.T.O. IV: Pacific Theater of Operations	7	2002	12	49	0.08
11702	WipEout HD Fury	6	2009	3	4	0.08
11703	Genkai Totsuki Moero Chronicle	23	2014	4	266	0.08
11704	Metal Gear Solid V: The Phantom Pain	15	2015	9	15	0.08
11705	Tears to Tiara: Garland of the Earth	6	2008	12	316	0.08
11706	Madden NFL 17	6	2016	1	8	0.08
11707	Mind Quiz: Your Brain Coach	4	2006	6	6	0.08
11708	WRC 2: FIA World Rally Championship	5	2011	3	6	0.08
11709	The Hustle: Detroit Streets	17	2005	1	42	0.08
11710	Codename: Kids Next Door: Operation S.O.D.A.	9	2004	2	64	0.08
11711	Far Cry Instincts Evolution	14	2006	7	6	0.08
11712	Pinball Hall of Fame: The Gottlieb Collection	14	2004	6	68	0.08
11713	Conception: Please Give Birth to My Child!	17	2012	4	130	0.08
11714	WRC 5: FIA World Rally Championship	23	2015	1	324	0.08
11715	Winter Sports 2011	1	2011	1	233	0.08
11716	Medal of Honor: Underground	9	2002	7	87	0.08
11717	Baroque	1	2008	4	71	0.08
11718	Super Football	16	1987	1	11	0.08
11719	The Idolmaster: Gravure For You! Vol. 3	6	2011	6	26	0.08
11720	Learn Geography	4	2009	6	319	0.08
11721	Divinity II: Ego Draconis	15	2009	4	233	0.08
11722	Disaster: Day of Crisis	1	2008	9	1	0.08
11723	Scooby-Doo! Unmasked	14	2005	2	29	0.08
11724	Shovel Knight	11	2015	2	322	0.08
11725	SCORE International Baja 1000: The Official Game	6	2008	3	5	0.08
11726	Driven	19	2002	3	176	0.08
11727	Dynasty Warriors 3	14	2002	9	29	0.08
11728	My Fun Facts Coach	4	2008	6	6	0.08
11729	Superman Returns	4	2006	9	8	0.08
11730	Tennis no Oji-Sama Gyutto! DokiDoki Survival - Umi to Yama no Love Passion	4	2011	1	15	0.08
11731	Nicola Kanshuu: Model Oshare * Audition Platina	10	2012	9	82	0.08
11732	Kung Fu Panda: Legendary Warriors	1	2008	9	5	0.08
11733	MTV Music Generator 3: This Is the Remix	14	2004	6	36	0.08
11734	Fairy Tail: Portable Guild 2	17	2011	10	15	0.08
11735	Yoru no Nai Kuni	11	2015	4	49	0.08
11736	Backyard NBA Basketball	4	2007	1	11	0.07
11737	Wizardry: Llylgamyn Saga	13	1998	4	388	0.07
11738	Party Pigs: Farmyard Games	1	2009	6	332	0.07
11739	Kinnikuman Muscle Grand Prix Max 2: Tokumori	7	2008	10	26	0.07
11740	Gale Racer	24	1994	3	9	0.07
11741	In The Groove	7	2005	6	23	0.07
11742	Myst	13	1995	11	88	0.07
11743	Beat City	4	2010	6	29	0.07
11744	Mega Man Legacy Collection	11	2016	2	13	0.07
11745	AKB1/149: Love Election	23	2012	11	26	0.07
11746	Naruto Shippuden: Gekito Ninja Taisen! EX 3	1	2008	10	197	0.07
11747	Boku no Natsuyasumi Portable 2: Nazo Nazo Shimai to Chinbotsusen no Himitsu	17	2010	11	4	0.07
11748	Torchlight	15	2009	4	259	0.07
11749	Winter Sports 2: The Next Challenge	5	2008	1	79	0.07
11750	Magic Pengel: The Quest for Color	7	2002	4	94	0.07
11751	Super Baseball	16	1987	1	11	0.07
11752	Jikkyou Powerful Pro Yakyuu 2011 Ketteiban	6	2011	1	15	0.07
11753	Formula One World Championship: Beyond the Limit	25	1994	3	9	0.07
11754	Hakuouki DS	4	2010	11	279	0.07
11755	Buster Bros. Collection	13	1997	5	13	0.07
11756	Sony Computer Science Kenkyuujo Mogi Kenichirou Hakase Kanshuu: Nou ni Kaikan Aha Taiken!	17	2006	6	9	0.07
11757	Mega Man Battle Network: Operation Shooting Star	4		4	13	0.07
11758	Futurama	7	2003	2	112	0.07
11759	Medabots 8	10	2014	4	138	0.07
11760	The History Channel: Battle for the Pacific	6	2008	7	5	0.07
11761	Famicom Mini: Hikari Shinwa: Palutena no Kagami	9	2004	2	1	0.07
11762	Rayman 3: Hoodlum Havoc	14	2003	2	6	0.07
11763	Again	4	2009	11	210	0.07
11764	Momotarou Dentetsu Tag Match: Yuujou - Doryoku - Shouri no Maki!	17	2010	6	69	0.07
11765	Zumba Fitness Core	1	2012	6	12	0.07
11766	Yoru no Nai Kuni	23	2015	4	49	0.07
11767	Generator Rex: Agent of Providence	6	2011	9	5	0.07
11768	Jimmie Johnson's Anything With an Engine	6	2011	3	15	0.07
11769	Super Ghouls 'n Ghosts	9	2002	2	13	0.07
11770	Boxing	13	2000	10	162	0.07
11771	NHL Open Ice	13	1996	1	40	0.07
11772	Jewel Link Chronicles: Legend of Athena	4	2011	5	96	0.07
11773	Gundam Battle Tactics	17	2005	9	26	0.07
11774	Touch Detective: Nameko Shigeru	10	2013	11	91	0.07
11775	Aikatsu! My No.1 Stage!	10	2015	6	26	0.07
11776	Sky Gunner	7	2001	9	4	0.07
11777	Santa Claus Is Comin' to Town!	4	2011	5	68	0.07
11778	And1 Streetball	14	2006	9	6	0.07
11779	Gladius	19	2003	12	5	0.07
11780	Adventure Time: Finn & Jake Investigations	10	2015	9	231	0.07
11781	Kenka Banchou 6: Soul & Blood	10	2015	10	185	0.07
11782	Jewel Time Deluxe	4	2011	5	342	0.07
11783	Picture Perfect Hair Salon	4	2009	8	12	0.07
11784	Warriors Orochi 3	23	2013	9	49	0.07
11785	PhotoKano	23	2013	11	153	0.07
11786	Real Sound: Kaze no Riguretto	24	1997	11	389	0.07
11787	Soccer Tsuku: Pro Soccer Club o Tsukurou!	23	2013	1	9	0.07
11788	Summon Night 4	17	2012	4	26	0.07
11789	Record of Agarest War	6	2007	4	145	0.07
11790	Overlord: Minions	4	2009	5	36	0.07
11791	The Rub Rabbits!	4	2005	5	9	0.07
11792	Margot's Word Brain	4	2008	5	75	0.07
11793	Saint Seiya: Brave Soldiers	6	2013	10	26	0.07
11794	The Sims 3: Barnacle Bay	15	2011	8	8	0.07
11795	Winx Club	9	2005	7	15	0.07
11796	Classic Road	13	1995	1	249	0.07
11797	Hero Bank	10	2014	4	9	0.07
11798	The Idolm@ster: Live for You!	5	2008	6	26	0.07
11799	Tokimeki Memorial Girl's Side Premium: 3rd Story	17	2012	11	15	0.07
11800	Smashing Drive	19		3	54	0.07
11801	Mega Man Xtreme	3	2000	2	13	0.07
11802	ZhuZhu Pets: Quest for Zhu	4	2011	6	5	0.07
11803	SimCity 4: Deluxe Edition	15	2003	8	8	0.07
11804	Bomberman Max 2: Red Advance	9	2002	5	24	0.07
11805	Resident Evil Zero	18	2016	9	13	0.07
11806	Tropico 5	5	2014	8	200	0.07
11807	CSI: Dark Motives	4	2007	11	6	0.07
11808	Speed Zone	1	2009	3	7	0.07
11809	Tomb Raider: Legend	4	2006	9	22	0.07
11810	Godai: Elemental Force	7	2002	9	78	0.07
11811	OK! Puzzle Stars	4	2010	5	6	0.07
11812	Still Life	14	2005	11	360	0.07
11813	Big Mutha Truckers 2	14	2005	3	90	0.07
11814	Hang On GP	24	1995	3	9	0.07
11815	Goodbye Deponia	15	2013	11	390	0.07
11816	Uprising X	13	1998	9	78	0.07
11817	SpongeBob's Truth or Square	5	2009	9	29	0.07
11818	Mega Man Xtreme 2	3	2001	2	13	0.07
11819	I-Ninja	14	2003	2	26	0.07
11820	Kengo: Legend of The 9	5	2006	10	35	0.07
11821	Sigma Harmonics	4	2008	4	17	0.07
11822	Kessen III	7	2004	12	49	0.07
11823	Harlem Globetrotters: World Tour	4	2006	1	87	0.07
11824	Summon Night	4	2008	4	58	0.07
11825	The King of Fighters Collection: The Orochi Saga	17	2008	10	151	0.07
11826	Aero Elite: Combat Academy	7	2002	8	9	0.07
11827	You Don't Know Jack	4	2011	6	29	0.07
11828	Damage Inc.: Pacific Squadron WWII	5	2012	8	268	0.07
11829	Cartoon Network: Punch Time Explosion XL	5	2011	10	68	0.07
11830	Wrath Unleashed	7	2004	12	18	0.07
11831	Beyond Good & Evil	19	2003	11	6	0.07
11832	Pong / Asteroids / Yars' Revenge	9	2005	6	87	0.07
11833	Commandos 2: Men of Courage	14	2002	12	22	0.07
11834	NOëL: La Neige	13	1998	11	186	0.07
11835	Busou Shinki: Battle Masters	17	2010	9	15	0.07
11836	Roll Away	13	1998	5	4	0.07
11837	Derby Jockey: Kishou e no Michi	8	1994	1	368	0.07
11838	Harukanaru Toki no Naka de 4	7	2008	11	49	0.07
11839	Maximum Chase	14	2002	3	2	0.07
11840	Mugen Souls Z	6	2013	4	132	0.07
11841	Winning Post 7 2012	6	2012	1	210	0.07
11842	Spot Goes to Hollywood	13	1996	2	19	0.07
11843	Teenage Mutant Ninja Turtles: Mutants in Manhattan	11	2016	9	5	0.07
11844	G Darius	13	1997	7	29	0.07
11845	Utawarerumono: Itsuwari no Kamen	23	2015	11	316	0.07
11846	The Wolf Among Us	18	2014	11	174	0.07
11847	Mucha Lucha! Mascaritas of the Lost Code	9	2003	10	6	0.07
11848	Invizimals: The Alliance	23	2013	9	4	0.07
11849	Roogoo Attack!	4	2009	5	84	0.07
11850	Disney's Planes	10	2013	8	33	0.07
11851	Rugby League 3	1	2010	1	391	0.07
11852	SD Gundam: Gashapon Wars	19	2005	12	26	0.07
11853	Alvin and the Chipmunks	7	2007	6	206	0.07
11854	Backyard Hockey	4	2007	1	11	0.07
11855	River King: Mystic Valley (US sales)	4	2007	1	71	0.07
11856	Romance of the Three Kingdoms XI	7	2007	12	49	0.07
11857	Digimon World Championship	4	2008	4	26	0.07
11858	Lupin Sansei: Shijou Saidai no Zunousen	4	2010	11	26	0.07
11859	Blood Drive	6	2010	3	5	0.07
11860	Model * Oshare Audition: Dream Girl	10	2013	6	82	0.07
11861	Let's Paint	1	2010	8	75	0.07
11862	Squishy Tank	4	2010	5	80	0.07
11863	Discovery Kids: Parrot Pals	4	2009	8	12	0.07
11864	Let's Ride! Friends Forever	4	2008	11	29	0.07
11865	Archer Maclean's 3D Pool	9	2003	6	68	0.07
11866	Tak: The Great Juju Challenge	14	2005	2	29	0.07
11867	Just Dance: Disney Party 2	5	2015	9	6	0.07
11868	TMNT: Mutant Melee	19	2005	10	15	0.07
11869	Pro Farm 1	15	2011	8	312	0.07
11870	Combat: Task Force 121	14	2005	7	87	0.07
11871	Winning Eleven Playmaker 2010: Aoki Samurai no Chousen	1	2010	1	15	0.07
11872	Goosebumps HorrorLand	7	2008	11	117	0.07
11873	Rugby World Cup 2015	6	2015	1	6	0.07
11874	Exhibition Volume 4	14	2003	6	2	0.07
11875	Petz Fantasy 3D	10	2011	8	6	0.07
11876	Viewpoint	13	1995	7	8	0.07
11877	Code Geass: Hangyaku no Lelouch - Lost Colors	17	2008	11	26	0.07
11878	Disney's Donald Duck Advance	9	2001	2	6	0.07
11879	Dark Souls	15	2012	4	26	0.07
11880	Stacked with Daniel Negreanu	7	2006	6	392	0.07
11881	Hakuouki: Yuugi Roku	17	2010	11	279	0.07
11882	Circus Maximus: Chariot Wars	14	2002	3	29	0.07
11883	Mega Man Battle Network 5: Double Team DS (US sales)	4	2005	4	1	0.07
11884	Kenyuu Densetsu Yaiba	8	1994	9	58	0.07
11885	SNK Arcade Classics Vol. 1	1	2008	6	151	0.07
11886	Kidou Senshi Gundam: Giren no Yabou - Axis no Kyoui V	7	2009	12	26	0.07
11887	Fantasia: Music Evolved	5	2014	6	33	0.07
11888	Kidou Senshi Gundam: Giren no Yabou - Axis no Kyoui V	17	2009	12	26	0.07
11889	Elements of Destruction	4	2007	12	29	0.07
11890	Serious Sam: Next Encounter	7	2004	7	64	0.07
11891	Speed	1	2010	3	54	0.07
11892	Eiken DS	4	2007	6	138	0.07
11893	Game Center CX: Arino no Chousenjou 2	4	2009	9	26	0.07
11894	Tom Clancy's Ghost Recon 2	19	2005	7	6	0.07
11895	E.X. Troopers	10	2012	7	13	0.07
11896	Robocalypse	4	2008	12	49	0.07
11897	Guilty Gear Xrd -Revelator-	11	2016	10	148	0.07
11898	Grand Kingdom	23	2015	4	132	0.07
11899	J Legend Retsuden	10	2013	6	26	0.07
11900	The Testament of Sherlock Holmes	15	2012	11	81	0.07
11901	Monster Racers	4	2009	3	49	0.07
11902	The King of Fighters: Evolution	22	2000	10	244	0.07
11903	DS Uranai Seikatsu	4	2009	6	1	0.07
11904	SpongeBob's Truth or Square	17	2009	9	29	0.07
11905	Pitfall: The Lost Expedition	9	2003	2	5	0.07
11906	All-Star Baseball 2004	9	2003	1	31	0.07
11907	Pac-Man and the Ghostly Adventures 2	20	2014	11	26	0.07
11908	Tom Clancy's Splinter Cell: Chaos Theory	4	2005	9	6	0.07
11909	Cho~ricchi! Tamagotchi no Puchi Puchi Omisecchi	10	2012	9	26	0.07
11910	Flower, Sun, and Rain	4	2008	11	71	0.07
11911	James Cameron's Dark Angel	14	2002	9	24	0.07
11912	The Legend of Heroes: Trails in the Sky Third Chapter	17	2008	4	254	0.07
11913	Moxie Girlz	4	2011	6	171	0.07
11914	Dave Mirra BMX Challenge	17	2006	1	60	0.07
11915	Hannspree Ten Kate Honda: SBK Superbike World Championship	7	2007	3	194	0.07
11916	Aqua Teen Hunger Force: Zombie Ninja Pro-Am	7	2007	3	40	0.07
11917	Alexi Lalas International Soccer	13	1998	1	3	0.07
11918	Operation Flashpoint: Red River	15	2011	7	36	0.07
11919	F.E.A.R. 2: Project Origin	15	2009	7	20	0.07
11920	NCAA College Football 2K3	19	2002	1	9	0.07
11921	Monster Rancher Battle Card: Episode II	13	2000	9	49	0.07
11922	Karaoke Revolution Party	19	2005	6	15	0.07
11923	Dream Trigger 3D	10		7	59	0.07
11924	Make 10: A Journey of Numbers	4	2007	5	1	0.07
11925	Itoi Shigesato no Bass Tsuri No. 1 Ketteihan!	12	2000	1	1	0.07
11926	Jumper: Griffin's Story	7	2008	9	22	0.07
11927	Vampire Legends: Power of Three	4	2010	11	29	0.07
11928	Famicom Mini: Nazo no Murasame-Jou	9	2004	9	1	0.07
11929	Galerians: Ash	7	2002	11	101	0.07
11930	Mahjong Fight Club DS: Wi-Fi Taiou	4	2006	6	15	0.07
11931	Haunting Ground	7	2005	9	13	0.07
11932	Horrid Henry: The Good, The Bad and The Bugly	10	2011	2	281	0.07
11933	Kane & Lynch 2: Dog Days	15	2010	7	17	0.07
11934	Vampire Knight DS	4	2009	11	59	0.07
11935	Disney Sports Skateboarding	9	2002	1	15	0.07
11936	Homie Rollerz	4	2008	3	154	0.07
11937	Operation Darkness	5	2007	4	91	0.07
11938	Magi: The Labyrinth of Beginning	10	2013	4	26	0.07
11939	The Wolf Among Us	23	2014	11	174	0.07
11940	Tornado	4		9	151	0.07
11941	Fantasy Aquarium by DS	4	2008	8	393	0.07
11942	Hi! Hamtaro - Little Hamsters,big Adventures: Ham-Ham Challenge	4	2005	6	12	0.07
11943	Damnation	5	2009	7	36	0.07
11944	I Don't Have Many Friends Portable	17	2012	11	26	0.07
11945	Rock Band Country Track Pack 2	6	2011	6	32	0.07
11946	Fable: The Lost Chapters	15	2005	4	2	0.07
11947	Loons: The Fight For Fame	14	2002	9	11	0.07
11948	Romance of the Three Kingdoms IX	7	2003	12	49	0.07
11949	Second Sight	14	2004	11	36	0.07
11950	Metal Gear Solid	3	2000	9	15	0.07
11951	Totaled!	14	2002	3	115	0.07
11952	Bleach: Heat the Soul 3	17	2006	10	4	0.07
11953	Ecco: The Tides of Time	21	1993	11	9	0.07
11954	Showtime Championship Boxing	1	2007	10	87	0.07
11955	Rock Band Track Pack: Classic Rock	5	2009	6	32	0.07
11956	Open Season	1	2006	2	6	0.07
11957	Football Manager 2010	15	2009	1	9	0.07
11958	Dave Mirra BMX Challenge	1	2007	1	12	0.07
11959	Machine Head	13	1996	7	22	0.07
11960	Vanguard Bandits	13	1998	12	190	0.07
11961	Lost Heroes	17	2012	4	26	0.07
11962	The Legend of Heroes VII: The Trail of Zero	23	2012	4	254	0.07
11963	Bionicle Heroes	5	2006	7	22	0.07
11964	Shin Chan Contra ¡Los Plastas!	4	2009	2	12	0.07
11965	Inversion	6	2012	7	26	0.07
11966	Silent Hill: Origins	7	2008	9	15	0.07
11967	Blast Radius	13	1998	9	88	0.07
11968	Zumba Fitness Core	5	2012	6	12	0.07
11969	ESPN National Hockey Night	7	2001	1	15	0.07
11970	Rec Room Games	4	2011	1	154	0.07
11971	Theme Park	4	2007	8	8	0.07
11972	Yamaha Supercross	1	2009	3	87	0.07
11973	Pro Yaky? Spirits 2011	10	2011	1	15	0.07
11974	Microsoft Flight Simulator 2004: A Century of Flight	15	2003	8	2	0.07
11975	Taz Wanted	14	2002	2	11	0.07
11976	Harry Potter and the Sorcerer's Stone	14	2003	9	8	0.07
11977	Shounen Sunday x Shounen Magazine: Nettou! Dream Nine	4	2009	1	15	0.07
11978	McFarlane's Evil Prophecy	7		9	15	0.07
11979	Emergency 2012	15	2010	8	42	0.07
11980	Haikyuu!! Tsunage! Itadaki no Keshiki!!	10	2014	11	26	0.07
11981	Wallace & Gromit in Project Zoo	19	2003	2	176	0.07
11982	John Madden Football	8	1991	1	157	0.07
11983	Aero Gauge	12	1997	3	51	0.07
11984	Battlezone: Rise of the Black Dogs	12	2000	12	68	0.07
11985	Caesars Palace Advance: Millennium Gold Edition	9	2001	6	35	0.07
11986	Shadowgate 64: Trials of the Four Towers	12	1999	11	189	0.07
11987	Teenage Mutant Ninja Turtles: Tournament Fighters	2	1992	10	15	0.07
11988	Super Robot Spirits	12	1998	10	58	0.07
11989	Mia Hamm Soccer 64	12	2000	1	29	0.07
11990	MLB Front Office Manager	5	2009	1	3	0.07
11991	Samurai Warriors	14	2004	9	49	0.07
11992	GunParade Orchestra: Shiro no Shou	7	2006	11	4	0.07
11993	Hearts of Iron III	15	2009	12	317	0.07
11994	Zettai Zetsumei Toshi 3: Kowareyuku Machi to Kanojyo no Uta	17	2009	9	394	0.07
11995	BlazBlue: Chrono Phantasma Extend	23	2015	9	148	0.07
11996	Crime Lab: Body of Evidence	4	2010	11	89	0.07
11997	Ant Nation	4	2009	8	15	0.07
11998	FIFA Soccer 2004	19	2003	1	8	0.07
11999	MotoGP 15	6	2015	3	257	0.07
12000	Super Robot Taisen OG Saga: Masou Kishin III - Pride of Justice	6	2013	12	26	0.07
12001	The Sims 2: Seasons	15	2007	8	8	0.07
12002	Rayman 3: Hoodlum Havoc	19	2003	2	6	0.07
12003	NHL 2K9	1	2008	1	3	0.07
12004	Tales of Rebirth	17	2008	4	26	0.07
12005	The Guy Game	14	2004	6	214	0.07
12006	Ultimate Marvel vs. Capcom 3	5	2011	10	13	0.07
12007	Battleborn	15	2016	7	3	0.07
12008	Let's Ride! Dreamer	9	2005	11	233	0.07
12009	Tecmo's Deception	13	1996	4	242	0.07
12010	Reader Rabbit 1st Grade	1	2010	6	327	0.07
12011	Anubis II	1	2007	2	139	0.07
12012	Point Blank DS (JP sales)	4	2006	7	11	0.07
12013	Ghost in the Shell: Stand Alone Complex	17	2005	11	11	0.07
12014	Guilty Gear Xrd -Revelator-	6	2016	10	148	0.07
12015	G-Saviour	7	2000	9	395	0.07
12016	Gintama DS: Yorozuya Daisoudou	4	2006	9	26	0.07
12017	Drake of the 99 Dragons	14		7	54	0.07
12018	Heavenly Guardian	1	2007	7	12	0.07
12019	Cut the Rope	10	2014	5	5	0.07
12020	Crayon Shin-Chan: Obaka Daininden - Susume! Kasukabe Ninja Tai!	4	2010	9	26	0.07
12021	Crimson Sea 2	7	2004	9	49	0.07
12022	The Legend of Heroes: Trails in the Sky First Chapter	23	2015	4	153	0.07
12023	Pizza Delivery Boy	1	2010	8	35	0.07
12024	Doraemon: Nobita to Himitsu Dougu Hakubutsukan	10	2013	9	246	0.07
12025	Higurashi no Nakukoru ni Kizuna: Dai-Ichi-Kan - Tatari	4	2008	11	82	0.07
12026	IA/VT Colorful	23	2015	6	105	0.07
12027	AMF Bowling Pinbusters!	4	2008	1	297	0.07
12028	Operation: Vietnam	4	2007	7	35	0.07
12029	Alpha and Omega	4	2010	9	54	0.07
12030	Port Royale 3	6		8	200	0.07
12031	RayStorm	13	1997	7	4	0.07
12032	Disney's Winnie the Pooh's Rumbly Tumbly Adventure	19	2005	2	6	0.07
12033	Jake Power: Handyman	4	2008	11	6	0.07
12034	My Dress-Up	4	2008	6	60	0.07
12035	Circuit Breakers	13	1998	3	52	0.07
12036	Trick DS-han: Kakushi Kami no Sumukan	4	2010	6	15	0.07
12037	Catwoman	19	2004	9	8	0.07
12038	Colosseum: Road to Freedom	7	2005	4	49	0.07
12039	Ultimate Board Game Collection	17	2007	6	169	0.07
12040	Target: Terror	1	2008	7	15	0.07
12041	BeatMania	7	2006	8	15	0.07
12042	Crayon Shin-Chan: Densetsu o Yobu Omake no To Shukkugaan!	9	2006	9	58	0.07
12043	Sprint Cars: Road to Knoxville	7	2005	3	29	0.07
12044	Shrek's Carnival Craze Party Games	7	2008	6	5	0.07
12045	Real Time Conflict: Shogun Empires	4	2005	12	26	0.07
12046	Dream Dance & Cheer	1	2009	6	75	0.07
12047	Silpheed: The Lost Planet	7	2000	7	314	0.07
12048	Enemy Front	6	2014	7	89	0.07
12049	Assassin's Creed: Rogue	15	2015	9	6	0.07
12050	Billy's Boot Camp: Wii de Enjoy Diet!	1	2011	1	138	0.07
12051	Spartan: Total Warrior	19	2005	9	9	0.07
12052	Pitfall: The Lost Expedition	14	2004	2	5	0.07
12053	Fantastic Four	13	1997	9	31	0.07
12054	Higurashi no Naku Koro ni Matsuri: Kakera Asobi	7	2007	11	82	0.07
12055	Tournament of Legends	1	2010	10	9	0.07
12056	Xbox Live Arcade Unplugged Volume 1	5	2006	6	2	0.07
12057	River City Ransom EX	9	2004	9	72	0.07
12058	San Goku Shi Taisen Ten	4	2008	12	9	0.07
12059	Generator Rex: Agent of Providence	4	2011	9	5	0.07
12060	Dynasty Warriors 8: Empires	18	2014	9	49	0.07
12061	Fairy Tail: Zelef Kakusei	17	2012	9	54	0.07
12062	Strike Point	13	1996	8	396	0.07
12063	Crazy Taxi 2	22	2001	3	9	0.07
12064	Dragon Slayer: The Legend of Heroes	8	1992	4	175	0.07
12065	Tank! Tank! Tank!	20	2012	9	26	0.07
12066	My Horse & Me: Riding for Gold	4	2008	1	11	0.07
12067	Street Fighter II': Special Champion Edition (JP weekly sales)	21	1993	9	13	0.07
12068	Command & Conquer 3: Tiberium Wars	15	2007	12	8	0.07
12069	Tom and Jerry in War of the Whiskers	19	2003	10	215	0.07
12070	Keroro RPG: Kishi to Musha to Densetsu no Kaizoku	4	2010	4	26	0.07
12071	Famicom Mini: Wrecking Crew	9	2004	5	1	0.07
12072	Hoppechan: Minna de Odekake! Waku Waku Hoppe Land!!	10	2014	9	229	0.07
12073	Divinity: Original Sin	18	2015	4	81	0.07
12074	Suzumiya Haruhi no Gekidou	1	2009	11	153	0.07
12075	Classic Action: Devilish	4	2005	6	12	0.07
12076	Jackass the Game DS	4	2008	9	90	0.07
12077	Space Hulk: Vengeance of the Blood Angels	13	1995	7	8	0.07
12078	Toy Soldiers: War Chest	11	2015	9	6	0.07
12079	Robot Alchemic Drive	7	2002	9	25	0.07
12080	Motor Toon Grand Prix (Japan)	13	1994	3	4	0.07
12081	Dino Master: Dig Discover Duel	4	2005	12	35	0.07
12082	Ken to Mahou to Gakuen Mono. 3	6	2010	4	310	0.07
12083	Hikaru no Go: Heian Gensou Ibunroku	13	2002	11	15	0.07
12084	Godzilla (2014)	6	2014	9	26	0.07
12085	Dynasty Warriors DS: Fighter's Battle	4	2007	9	49	0.07
12086	Samurai Shodown	27	1993	10	244	0.07
12087	OverBlood 2	13	1998	9	397	0.07
12088	Fighter Maker 2	7	2002	10	155	0.07
12089	Lifeline	7	2003	11	4	0.07
12090	Dragon Valor	13	1999	4	4	0.07
12091	Judie no Atelier: Guramnat no Renkinjutsushi	7	2002	4	243	0.07
12092	NHL 2005	19	2004	1	8	0.07
12093	Midway Arcade Treasures 3	19	2005	6	40	0.07
12094	Moshi Monsters: Katsuma Unleashed	10	2013	9	5	0.07
12095	Firefighter F.D.18	7	2004	9	15	0.07
12096	Resident Evil 5	15	2009	9	13	0.07
12097	Secret Files: Tunguska	1	2008	11	102	0.07
12098	DS Nishimura Kyotaro Suspense 2 Shin Tantei Series: Kanazawa Hakodate - Gokkan no Kyoukoku - Fukushuu no Kage	4	2008	11	49	0.07
12099	Pro Yaky? Spirits 2014	23	2014	1	15	0.07
12100	Mega Man X4	24	1997	9	13	0.07
12101	Family Trainer: Treasure Adventure	1	2010	1	26	0.07
12102	GRID 2	15	2013	3	36	0.07
12103	Power Pro GB	3	1998	1	15	0.07
12104	Sudoku Fever	9	2006	5	3	0.07
12105	Grand Ages: Medieval	11	2015	12	200	0.07
12106	The Putter Golf	13	2001	1	59	0.07
12107	Monster High: New Ghoul in School	6	2015	9	231	0.07
12108	The Powerpuff Girls: Relish Rampage	19	2002	9	176	0.07
12109	Super Real Mahjong Graffiti	24	1995	6	260	0.07
12110	Alan Wake	15	2012	9	125	0.07
12111	Ninja Warriors	8	1993	9	104	0.07
12112	Army Men: RTS	19	2004	12	64	0.07
12113	Zettai Onkan Otoda Master	4	2007	4	69	0.07
12114	Basketball Hall of Fame Ultimate Hoops Challenge	1	2010	1	75	0.07
12115	Dragoneer's Aria	17	2007	4	49	0.07
12116	TigerShark	13	1997	8	14	0.07
12117	Lost Heroes 2	10	2015	9	26	0.07
12118	Norse by Norsewest: The Return of the Lost Vikings	13	1997	9	118	0.07
12119	Just Dance: Disney Party 2	18	2015	9	6	0.07
12120	N+	4	2007	2	11	0.07
12121	Sega Soccer Slam	19	2002	1	9	0.07
12122	Obscure	7	2004	11	360	0.07
12123	Katekyoo Hitman Reborn! DS: Fate of Heat - Hono no Unmei	4	2008	4	197	0.07
12124	Shin Lucky * Star: Moe Drill ~Tabidachi~	4	2007	9	153	0.07
12125	Mario Tennis	1	2010	1	1	0.07
12126	Cartoon Network: Punch Time Explosion XL	6	2011	10	68	0.07
12127	DefCon 5	13	1995	7	88	0.07
12128	Lost in Blue 2	4	2007	11	15	0.07
12129	Build-A-Bear Workshop: Friendship Valley	1		6	54	0.07
12130	Secret Service: Ultimate Sacrifice	7	2008	9	5	0.07
12131	Alex Rider: Stormbreaker	4		9	29	0.07
12132	Deep Labyrinth	4	2006	9	12	0.07
12133	Tropix	4	2008	5	13	0.07
12134	Nichibeikan Pro Yakyuu: Final League	7	2002	1	10	0.07
12135	Resident Evil 6	11	2016	7	13	0.07
12136	Hammerin' Hero	17	2008	9	394	0.07
12137	Yoostar on MTV	5		6	54	0.07
12138	Spawn: Armageddon	19	2003	9	8	0.07
12139	God Hand	7	2006	9	13	0.07
12140	Shin Chan: Las Nuevas Aventuras Para Wii!	1	2006	9	12	0.07
12141	Challenge Me: Brain Puzzles 2	1	2010	5	342	0.07
12142	The Tale of Despereaux	4	2008	2	206	0.07
12143	Legends of Wrestling II	9	2002	10	31	0.07
12144	Tony Hawk's Pro Skater 5	5	2015	1	5	0.07
12145	Fatal Fury: Battle Archives Volume 2	7	2007	10	226	0.07
12146	Jurassic Park: Operation Genesis	14	2003	8	15	0.07
12147	Transformer: Rise of the Dark Spark (3DS)	10	2014	4	5	0.07
12148	Freddi Fish: Kelp Seed Mystery	1	2008	11	35	0.07
12149	Ragnarok: Hikari to Yami no Koujo	17	2011	4	67	0.07
12150	FIFA Soccer 06	9	2005	1	8	0.07
12151	RedCard 20-03	7	2002	1	40	0.07
12152	James Bond 007: Blood Stone	4	2010	7	5	0.07
12153	Imagine: Gymnast	4	2008	8	6	0.07
12154	Kanji Sonomama DS Rakubiki Jiten	4	2006	6	1	0.07
12155	Future Tactics: The Uprising	7	2004	12	68	0.07
12156	Driver: Parallel Lines	14	2006	3	11	0.07
12157	Cities XL 2012	15	2011	12	81	0.07
12158	Pipe Mania	17	2008	5	90	0.07
12159	everGirl	9	2005	11	29	0.07
12160	Heroes Phantasia	17	2012	4	26	0.07
12161	Prince of Persia: The Fallen King	4	2008	9	6	0.07
12162	Jewels of the Ages	4	2011	5	89	0.07
12163	The Book of Unwritten Tales 2	11	2015	11	125	0.07
12164	Batman: Rise of Sin Tzu	9	2003	9	6	0.07
12165	Chuugaku Eitango Target 1800 DS	4	2006	6	141	0.07
12166	Future Card Buddy Fight: Yuujou no Bakunetsu Fight	10	2015	9	246	0.07
12167	World Racing	14	2003	3	73	0.07
12168	Major League Baseball 2K10	17	2010	1	3	0.07
12169	Penguins of Madagascar	10	2014	9	26	0.07
12170	Disney's Party	9	2003	6	124	0.07
12171	Rapala Pro Bass Fishing 2010	17	2010	1	5	0.07
12172	X-Men: The Official Game	9	2006	9	5	0.07
12173	Dreamer Series: Pop Star	4	2009	6	398	0.07
12174	Card Games	13	2000	6	59	0.07
12175	My Amusement Park	4	2010	6	117	0.07
12176	Mega Man: Battle & Chase	13	1997	3	13	0.07
12177	Winning Post 7 2010	6	2010	1	49	0.07
12178	R-Type Command	17	2007	12	71	0.07
12179	Age of Empires III: The Asian Dynasties	15	2007	12	2	0.07
12180	Destrega	13	1998	10	4	0.07
12181	Dungeon Maker II: The Hidden War	17	2007	4	399	0.07
12182	The Final Round	13	1996	1	15	0.07
12183	Nobunaga no Yabou: Tendou with Power-Up Kit	6	2011	12	49	0.07
12184	Transformer: Rise of the Dark Spark	20	2014	9	5	0.07
12185	MAPLUS: Portable Navi	17	2006	6	400	0.07
12186	Rayman Arena	14		3	54	0.07
12187	Brain Quest: Grades 3 & 4	4	2008	6	8	0.07
12188	Petz: Hamsterz Bunch	17	2009	8	6	0.07
12189	The King of Fighters 02/03	7	2005	10	244	0.07
12190	Kamen Rider: Dragon Knight	1	2009	10	59	0.07
12191	Army Men: Green Rogue	13	2001	9	78	0.07
12192	Centipede / Breakout / Warlords	9	2005	6	87	0.07
12193	Lucian Bee's: Justice Yellow / Evil Violet	7	2010	11	357	0.07
12194	Sly 2: Band of Thieves	6	2010	2	4	0.07
12195	Hyperdimension Neptunia Victory	23	2014	4	266	0.07
12196	Armored Core: Nine Breaker	7	2004	8	12	0.07
12197	Doraemon: Nobita no Shin Makai Daibouken DS	4	2007	4	9	0.07
12198	SBK 2011: FIM Superbike World Championship	5	2011	3	194	0.07
12199	Fairy Fencer F: Advent Dark Force	11	2015	4	285	0.07
12200	Cabela's Big Game Hunter 2005 Adventures	19	2004	1	5	0.07
12201	Worms 3D	19	2003	12	9	0.07
12202	Fantasy Aquarium World	1	2009	8	154	0.07
12203	Monster Tale	4	2011	2	35	0.07
12204	Tokobot	17	2005	2	3	0.07
12205	TRON: Evolution	15	2010	9	33	0.07
12206	Gambler Densetsu Tetsuya	7	2001	11	401	0.07
12207	The Guided Fate Paradox	6	2013	4	132	0.07
12208	Bleach: Hanatareshi Yabou	7	2006	4	4	0.07
12209	Karaoke Revolution Party	14	2005	6	15	0.07
12210	Cold Stone Creamery: Scoop It Up	1	2009	6	75	0.07
12211	Yoake Yori Ruriiro na: Brighter than Dawning Blue	7	2006	11	402	0.07
12212	Pandemonium 2	13	1997	2	147	0.07
12213	MotorStorm RC	23	2012	3	4	0.07
12214	National Geographic Challenge!	5		6	54	0.07
12215	Fallout: Brotherhood of Steel	7	2004	4	294	0.07
12216	Touch 'N' Play Collection	4	2010	6	342	0.07
12217	Mayhem 3D	5	2011	3	374	0.07
12218	One Piece: Unlimited World Red	20	2014	9	26	0.07
12219	Parlor! Mini 2	8	1996	6	272	0.07
12220	Gundam Try Age SP	10	2014	12	26	0.07
12221	Top Gun	6	2011	8	12	0.07
12222	Gunstar Super Heroes	9	2005	7	9	0.07
12223	Insecticide	4	2008	9	403	0.07
12224	C: The Contra Adventure	13	1998	7	15	0.07
12225	Interactive Storybook DS Series 1	4	2007	6	404	0.07
12226	Frogger Advance: The Great Quest	9	2002	9	15	0.07
12227	Worms Forts: Under Siege	14	2004	12	9	0.07
12228	Dream C Club	5	2009	8	59	0.07
12229	Pro Evolution Soccer 2015	15	2014	1	15	0.07
12230	Disney Infinity	23	2013	9	33	0.07
12231	Pocky & Rocky with Becky	9	2001	7	405	0.07
12232	Full Spectrum Warrior: Ten Hammers	7	2006	12	29	0.07
12233	Streets of Rage 3	21	1993	9	9	0.07
12234	Chocolatier	4	2010	6	75	0.07
12235	Cosmos Chaos!	4	2010	6	188	0.07
12236	Lego Star Wars: The Force Awakens	10	2016	9	20	0.07
12237	12-Sai. Honto no Kimochi	10	2014	11	406	0.07
12238	Warhammer 40,000: Squad Command	4	2007	12	29	0.07
12239	Hasbro Family Game Night Fun Pack	5	2011	6	8	0.07
12240	Port Royale 3	5		8	200	0.07
12241	Pro Yaky? Spirits 4	6	2007	1	15	0.07
12242	Speed Racer	13	1996	3	100	0.07
12243	NHL Hitz Pro	14	2003	1	40	0.07
12244	Walt Disney Pictures Presents Enchanted	4	2007	2	33	0.07
12245	Cardfight!! Vanguard: Lock On Victory!!	10	2014	6	246	0.07
12246	Jewel Quest IV: Heritage	4	2011	5	407	0.06
12247	Atelier Meruru: Alchemist of Arland 3	23	2013	4	243	0.06
12248	Hot Wheels: Burnin' Rubber	9	2001	3	29	0.06
12249	Ojyousama Express	13	1998	12	408	0.06
12250	Jewel Link Chronicles: Mountains of Madness	4		5	191	0.06
12251	Chrysler Classic Racing	1	2008	3	75	0.06
12252	Wings of War	14	2004	8	3	0.06
12253	Jam Sessions 2	4	2009	6	6	0.06
12254	Orcs & Elves	4	2007	4	8	0.06
12255	187: Ride or Die	14	2005	3	6	0.06
12256	RPG Maker 3	7	2004	4	155	0.06
12257	Zatch Bell! Mamodo Battles	19	2005	10	26	0.06
12258	Motion Explosion!	5	2011	6	12	0.06
12259	Genkai Tokki Monster Monpiece	23	2013	12	279	0.06
12260	Desert Strike Advance	9	2002	8	8	0.06
12261	Kabuki Warriors	14	2001	9	106	0.06
12262	Gradius Collection	17	2006	7	15	0.06
12263	Disney's Chicken Little: Ace In Action	4	2006	7	33	0.06
12264	IL-2 Sturmovik: Birds of Prey	4	2009	8	12	0.06
12265	Discworld	13	1994	11	88	0.06
12266	The LEGO Movie Videogame	15	2014	9	20	0.06
12267	Escape from Bug Island	1	2006	9	22	0.06
12268	World Poker Tour	14	2005	6	3	0.06
12269	Pirates: The Legend of Black Kat	14	2002	11	8	0.06
12270	Elite Forces: Unit 77	4	2009	12	42	0.06
12271	July	22	1998	11	409	0.06
12272	ESPN Winter X-Games: Snowboarding 2002	9	2000	1	15	0.06
12273	Bleach: Versus Crusade	1	2008	10	9	0.06
12274	Kanon	22	2000	11	245	0.06
12275	NanoBreaker	7	2005	9	15	0.06
12276	Bionicle	14	2003	9	8	0.06
12277	My Pet Shop	4	2008	8	17	0.06
12278	Guitar Freaks 3rdMIX & DrumMania 2ndMIX	7	2000	8	15	0.06
12279	Miami Vice: The Game	17	2006	7	5	0.06
12280	Santa Claus Is Comin' to Town!	1	2011	5	68	0.06
12281	BMX XXX	19	2002	1	31	0.06
12282	Broken Sword 5: The Serpent's Curse	11	2015	11	410	0.06
12283	Disney's Magical Quest 2 Starring Mickey and Minnie	9	2003	9	13	0.06
12284	Aggressive Inline	14	2002	1	31	0.06
12285	Western Riding Academy	4	2010	8	154	0.06
12286	My Pet Chimp	4	2010	8	12	0.06
12287	Frogger: Helmet Chaos	4	2005	2	15	0.06
12288	Ikki Tousen: Xross Impact	17	2010	9	220	0.06
12289	Bullet Girls	23	2014	9	59	0.06
12290	Paws & Claws: Marine Rescue	4	2011	8	29	0.06
12291	Super Mahjong 2: Honkaku 4Jin Uchi	8	1993	6	411	0.06
12292	XGRA: Extreme G Racing Association	7	2003	3	31	0.06
12293	Cabela's Trophy Bucks	1	2008	1	57	0.06
12294	Mitsukete! Keroro Gunsou: Machigai Sagashi Daisakusen de Arimasu!	4	2007	9	26	0.06
12295	Pop'n Music Portable 2	17	2011	6	15	0.06
12296	Fist of the North Star: Ken's Rage 2	5	2012	10	49	0.06
12297	Smart Boy's Toys Club	4	2008	6	12	0.06
12298	Ys vs. Sora no Kiseki: Alternative Saga	17	2010	10	254	0.06
12299	Naruto: Ultimate Ninja Heroes (JP sales)	17	2006	10	26	0.06
12300	Max & the Magic Marker	4	2011	2	54	0.06
12301	Legend of the Dragon	1	2007	10	103	0.06
12302	Akagawa Jirou Mystery: Yasoukyoku - Hon ni Manekareta Satsujin	4	2008	11	220	0.06
12303	Ray Tracers	13	1997	3	4	0.06
12304	Monster Madness: Grave Danger	6	2008	7	84	0.06
12305	Sprung - A Game Where Everyone Scores	4	2004	11	6	0.06
12306	Hisshou Pachinko*Pachi-Slot Kouryaku Series Vol. 14: CR Shinseiki Evangelion: Saigo no Mono	7	2009	6	59	0.06
12307	Nicola Kanshuu: Model * Oshare Audition	4	2010	6	82	0.06
12308	Rugby 15	23	2015	1	324	0.06
12309	Kururin Paradise	9	2002	5	54	0.06
12310	Kiniro no Corda 2	7	2007	4	49	0.06
12311	Fast Food Panic	1	2009	8	127	0.06
12312	Samurai Warriors Chronicles 3	23	2014	9	49	0.06
12313	Dynasty Warriors Vs	10	2012	9	210	0.06
12314	Another Code R: A Journey into Lost Memories	1	2009	11	1	0.06
12315	Gallop Racer 2004	7	2004	1	87	0.06
12316	Rayman: Hoodlum's Revenge	9	2005	2	6	0.06
12317	Sunrise Eiyuutan R	7	2000	4	395	0.06
12318	Mobile Suit Gundam Seed: Never Ending Tomorrow	7	2004	7	26	0.06
12319	The Book of Unwritten Tales: The Critter Chronicles	15	2011	9	412	0.06
12320	Octomania	1	2007	5	162	0.06
12321	F1 2001	14	2001	3	8	0.06
12322	Fishing Master (jp sales)	1	2007	1	15	0.06
12323	Zill O'll Infinite Plus	17	2009	4	49	0.06
12324	Pawly Pets: My Vet Practice	4	2007	12	6	0.06
12325	Tonka Rescue Patrol	19	2003	9	73	0.06
12326	GunGriffon II	24	1998	8	181	0.06
12327	Crimson Gem Saga	17	2008	4	9	0.06
12328	Legend of Kay	11	2015	9	125	0.06
12329	Order Up!!	6	2011	9	137	0.06
12330	Steambot Chronicles: Battle Tournament	17	2008	10	394	0.06
12331	Bomberman Land	17	2007	6	124	0.06
12332	Spy Fox in Dry Cereal	1	2008	11	35	0.06
12333	Cel Damage	19	2002	3	8	0.06
12334	Lego Batman 3: Beyond Gotham	15	2014	9	20	0.06
12335	Killer Instinct (2013)	18	2013	10	2	0.06
12336	Famicom Mini: Balloon Fight	9	2004	9	1	0.06
12337	Steins;Gate: Senkei Kousoku no Phonogram	6	2013	11	357	0.06
12338	Seaman 2: Peking Genjin Ikusei Kit	7	2007	8	9	0.06
12339	Chou Gekijouban Keroro Gunsou 3: Tenkuu Daibouken de Arimasu!	4	2008	9	26	0.06
12340	Bionicle Heroes	4	2006	7	22	0.06
12341	Ratchet & Clank Collection	23	2014	9	4	0.06
12342	The Pinball of the Dead	9	2002	6	9	0.06
12343	Growlanser IV: Over Reloaded	17	2011	4	72	0.06
12344	Arc the Lad: End of Darkness	7	2004	4	4	0.06
12345	Tom Clancy's Splinter Cell: Pandora Tomorrow	9	2004	9	6	0.06
12346	The King of Route 66	7	2003	3	9	0.06
12347	Sherlock Holmes: Crimes & Punishments	5	2014	11	81	0.06
12348	Bubble Bobble also featuring Rainbow Islands	13	1995	5	31	0.06
12349	Intellivision Lives!	19	2004	6	68	0.06
12350	Star Wars Knights of the Old Republic II: The Sith Lords	15	2005	4	18	0.06
12351	Panzer Tactics	4	2007	12	413	0.06
12352	Pro Yaky? Spirits 2013	23	2013	1	15	0.06
12353	Robotica	24	1994	7	9	0.06
12354	Deathrow: Underground Team Combat	14	2002	1	6	0.06
12355	Land of the Dead: Road to Fiddler's Green	14	2005	7	414	0.06
12356	R-Types	13	1998	7	19	0.06
12357	Star Fighter	13	1995	7	329	0.06
12358	Kuukan * Zukei: Hirameki Training - KuuTore	4	2008	6	365	0.06
12359	Osu! Tatakae! Ouendan	4	2005	6	1	0.06
12360	Dissidia: Final Fantasy Universal Tuning	17	2009	10	17	0.06
12361	Game Center CX: 3-Choume no Arino	10	2014	9	26	0.06
12362	Age of Empires Online	15	2011	12	2	0.06
12363	Alien Syndrome	1	2007	4	9	0.06
12364	Meitantei Conan: Aoki Houseki no Rinbukyoku	4	2011	11	26	0.06
12365	The Legend of Heroes: Trails in the Sky Second Chapter	17	2007	4	254	0.06
12366	Challenge Me: Brain Puzzles	4	2009	5	60	0.06
12367	Legend of Kay	4	2010	9	259	0.06
12368	Mystic Heroes	7	2002	9	49	0.06
12369	From The Abyss	4	2008	4	127	0.06
12370	The Amazing Spider-Man 2 (2014)	10	2014	9	5	0.06
12371	Tron 2.0: Killer App	9	2004	9	33	0.06
12372	Samurai Shodown Anthology	1	2008	10	151	0.06
12373	Mega Minis Volume 3	17	2011	6	4	0.06
12374	Jurassic Park III: Park Builder	9	2001	8	15	0.06
12375	Mario vs. Donkey Kong: Tipping Stars	10	2015	5	1	0.06
12376	Unchained Blades	17	2011	4	246	0.06
12377	Rurouni Kenshin: Meiji Kenkaku Romantan Saisen	17	2011	10	26	0.06
12378	Di-Gata Defenders	4	2008	4	103	0.06
12379	Star Trek: Tactical Assault	4	2006	12	6	0.06
12380	Code Geass: Hangyaku no Lelouch - Lost Colors	7	2008	11	26	0.06
12381	Warhammer: Battle For Atluma	17	2006	9	26	0.06
12382	Sudoku Ball Detective	4	2009	5	286	0.06
12383	LEGO Bionicle	9	2001	2	133	0.06
12384	Power Shovel	13	2000	9	41	0.06
12385	Blur	15	2010	3	5	0.06
12386	Generator Rex: Agent of Providence	5	2011	9	5	0.06
12387	A llI S.V.: A Ressha de Gyoukou 3 Super Version	8	1995	8	415	0.06
12388	Spy Games: Elevator Mission	1	2007	7	404	0.06
12389	Strike Force Bowling	19	2005	1	68	0.06
12390	Song of the Deep	11	2016	9	416	0.06
12391	Earth Defense Force 2017 Portable	23	2012	9	59	0.06
12392	Atelier Iris 2: The Azoth Of Destiny	7	2005	4	49	0.06
12393	There	13	2002	8	53	0.06
12394	Atari's Greatest Hits: Volume 2	4	2011	6	11	0.06
12395	Chuck E. Cheese's Playhouse	4	2010	6	284	0.06
12396	Tokimeki no Houkago	13	1998	6	15	0.06
12397	Championship Surfer	13	2000	1	140	0.06
12398	Unreal Tournament III	15	2007	7	40	0.06
12399	Monster Garage	14	2004	12	57	0.06
12400	Taiko no Tatsujin: Atsumete Tomodachi Daisakusen!	20	2015	6	26	0.06
12401	The Next BIG Thing	15	2011	11	81	0.06
12402	Tecmo Classic Arcade	14	2005	6	2	0.06
12403	2 Games in 1: Sonic Pinball Party & Columns Crown	9	2005	6	9	0.06
12404	Valentino Rossi: The Game	11	2016	3	26	0.06
12405	Monkey Island: Special Edition Collection	5	2011	11	5	0.06
12406	Mad Maestro!	7	2001	6	22	0.06
12407	A-Train: City Simulator	10	2014	8	241	0.06
12408	Densha De Go! 3 Tsuukinhen	7	2001	8	94	0.06
12409	Biker Mice From Mars	7	2006	3	103	0.06
12410	Call of Duty 2	15	2005	7	5	0.06
12411	Paws & Claws: Pampered Pets 2	4	2011	8	29	0.06
12412	Daito Giken Koushiki Pachi-Slot Simulator: Ossu! Banchou Portable	17	2006	6	348	0.06
12413	SpongeBob SquarePants: Plankton's Robotic Revenge	10	2013	7	5	0.06
12414	Pro Evolution Soccer 2017	6	2016	1	15	0.06
12415	Giants: Citizen Kabuto	7	2001	7	118	0.06
12416	Steins;Gate	5	2009	11	357	0.06
12417	A New Beginning	15	2010	11	42	0.06
12418	MotoGP 10/11	5	2011	3	13	0.06
12419	Alone in the Dark	7	2008	11	11	0.06
12420	Guilty Gear XX Accent Core Plus	7	2008	10	148	0.06
12421	Muppets Party Cruise	7	2003	6	73	0.06
12422	Higurashi Daybreak Portable	17	2008	11	82	0.06
12423	Crayon Shin-chan: Arashi o Yobu Kasukabe Eiga Stars!	10	2014	11	26	0.06
12424	Shonen Jump's One Piece: Grand Battle	19	2005	10	26	0.06
12425	Barbie Horse Adventures: Wild Horse Rescue	14	2003	1	24	0.06
12426	Winx Club: Quest for the Codex	4	2006	9	15	0.06
12427	Blast Lacrosse	13	2001	1	31	0.06
12428	Devil's Third	20	2015	9	1	0.06
12429	DreamWorks Super Star Kartz	5	2011	3	5	0.06
12430	Arkanoid DS	4	2007	5	17	0.06
12431	Kikou Heidan J-Phoenix	7	2001	9	152	0.06
12432	Backyard NFL Football '10	7	2009	1	11	0.06
12433	Barbie and Her Sisters Puppy Rescue	1	2015	9	26	0.06
12434	Zero Escape: Zero Time Dilemma	10	2016	11	343	0.06
12435	Shonen Jump's Shaman King: Legacy of the Spirits - Soaring Hawk/Sprinting Wolf	9	2005	9	15	0.06
12436	Bubble Bobble: Old & New	9	2002	5	90	0.06
12437	Puzzler Collection	1	2008	5	6	0.06
12438	Naruto Shippuden: Gekito Ninja Taisen! Special	1	2010	10	197	0.06
12439	Jissen Pachislot Secrets! Fist of the North Star F - Seikimatsu Kyuuseishu Densetsu	6	2012	9	9	0.06
12440	Akai Katana Shin	5	2011	7	358	0.06
12441	Kekkon: Marriage	24	1995	11	269	0.06
12442	Terraria	11	2014	9	12	0.06
12443	Nicola Kanshuu: Model * Oshare Audition 2	10	2011	9	82	0.06
12444	KimiKiss	7	2006	11	155	0.06
12445	Cold Fear	14	2005	9	6	0.06
12446	World Cup of Pool	4	2009	1	162	0.06
12447	Chevrolet Camaro: Wild Ride	1	2010	3	216	0.06
12448	Imagine: Cheerleader	4	2009	8	6	0.06
12449	Risen 3: Titan Lords	11	2015	4	42	0.06
12450	Hisshou Pachinko*Pachi-Slot Kouryaku Series Portable Vol. 1: Shinseiki Evangelion - Tamashii no Kiseki	17	2010	6	59	0.06
12451	Busy Scissors	4	2010	8	231	0.06
12452	Zero Escape: Zero Time Dilemma	23	2016	11	343	0.06
12453	Shining Force Feather	4	2009	12	9	0.06
12454	S.T.A.L.K.E.R.: Call of Pripyat	15	2009	7	26	0.06
12455	Champion Jockey: G1 Jockey & Gallop Racer	5	2011	1	49	0.06
12456	Disney's Kim Possible: Global Gemini	4	2007	2	33	0.06
12457	Big Bang Mini	4	2009	7	84	0.06
12458	Cocoto Kart Racer	1	2008	3	232	0.06
12459	Mobile Suit Gundam 00: Gundam Meisters	7	2008	9	26	0.06
12460	Call of Cthulhu: Dark Corners of the Earth	14	2005	11	3	0.06
12461	The Great Escape	14	2003	9	112	0.06
12462	Coded Arms: Contagion	17	2007	7	15	0.06
12463	X-Men: Destiny	4	2011	9	5	0.06
12464	Metal Gear Solid: Social Ops	7	2002	9	15	0.06
12465	Minna no DS Seminar: Kanpeki Eitango Ryoku	4	2006	6	273	0.06
12466	Kurupoto Cool Cool Stars	4	2007	9	201	0.06
12467	The Witcher	15	2007	4	11	0.06
12468	PenPen TriIceLon	22	1998	3	53	0.06
12469	Kirarin * Revolution: Minna de Odorou Furi Furi Debut!	4	2008	8	15	0.06
12470	Grey's Anatomy: The Video Game	1	2009	11	6	0.06
12471	Salt Lake 2002	9	2002	1	6	0.06
12472	Dreamer Series: Zoo Keeper	4	2010	8	319	0.06
12473	Warriors of the Lost Empire	17	2007	4	393	0.06
12474	Vexx	19	2003	2	31	0.06
12475	Crazy Chicken Tales	1	2009	9	232	0.06
12476	Super Robot Wars OG Saga Masou Kishin F: Coffin of the End	6	2014	12	26	0.06
12477	Hagane no Renkinjutsushi - Fullmetal Alchemist: Yakusoku no Hi e	17	2010	9	26	0.06
12478	Batman: Rise of Sin Tzu	19	2003	9	6	0.06
12479	Sacred 2: Fallen Angel	15	2008	4	417	0.06
12480	Winter Sports 2: The Next Challenge	4	2008	1	79	0.06
12481	Dead Rising 2: Off the Record	15	2011	9	13	0.06
12482	World Series of Poker 2008: Battle for the Bracelets	4	2007	6	5	0.06
12483	Playmobil Knights	4	2009	9	52	0.06
12484	Disney Sports Skateboarding	19	2002	1	15	0.06
12485	DropCast	4	2008	5	29	0.06
12486	Nazotoki Battle Tore! Densetsu no Makyuu o Fukkatsu Saseyo!	10	2014	9	26	0.06
12487	Inversion	5	2012	7	26	0.06
12488	Summon Night 2	4	2008	4	26	0.06
12489	Chou Soujuu Mecha MG	4		8	34	0.06
12490	Odin Sphere: Leifthrasir	6	2016	4	132	0.06
12491	Pro Evolution Soccer 2012	7	2011	9	15	0.06
12492	Terminator 3: The Redemption	14	2004	7	11	0.06
12493	Alvin and the Chipmunks	1	2007	6	22	0.06
12494	EverQuest II: Destiny of Velious	15	2011	4	77	0.06
12495	Rurouni Kenshin: Meiji Kenyaku Romantan - Kansen	17	2012	9	26	0.06
12496	Neon Genesis Evangelion	12	1999	11	26	0.06
12497	Serious Sam II	14	2005	7	3	0.06
12498	Remember Me	15	2013	9	13	0.06
12499	ICO	6	2011	9	4	0.06
12500	Flipnic: Ultimate Pinball	7	2003	6	6	0.06
12501	Eigo de Tabisuru: Little Charo	4	2011	6	1	0.06
12502	NBA Hangtime	13	1996	1	40	0.06
12503	Cabela's Big Game Hunter (2008)	5	2007	1	57	0.06
12504	My Fitness Coach: Club	1	2011	1	6	0.06
12505	D.C. II P.S.: Da Capo II Plus Situation	7	2008	11	153	0.06
12506	Top Gear Hyper-Bike	12	1999	3	189	0.06
12507	Brunswick Circuit Pro Bowling	12	1999	1	29	0.06
12508	Olympic Hockey 98	12	1998	1	14	0.06
12509	CyberTiger	12	2000	1	8	0.06
12510	Penny Racers	12	1998	3	29	0.06
12511	S.C.A.R.S	12	1998	3	6	0.06
12512	Virtual Chess 64	12	1998	6	104	0.06
12513	Marvel Super Heroes	24	1997	10	13	0.06
12514	Mike Piazza's Strike Zone	12	1998	1	14	0.06
12515	Bust-A-Move '99	12	1998	5	31	0.06
12516	Star Soldier: Vanishing Earth	12	1998	7	124	0.06
12517	Polaris SnoCross	12	2000	3	302	0.06
12518	Worms Blast	19	2002	5	6	0.06
12519	Prinny: Can I Really Be The Hero? (US sales)	17		9	34	0.06
12520	The Legend of Heroes VII: The Trail of Blue	23	2014	4	221	0.06
12521	BlazBlue: Chrono Phantasma Extend	18	2015	9	148	0.06
12522	Smile PreCure! Let's Go! Marchen World	10	2012	9	26	0.06
12523	IHRA Professional Drag Racing 2005	14	2004	3	7	0.06
12524	Tokyo Xtreme Racer Advance	9	2005	3	68	0.06
12525	Destiny: The Collection	11	2016	7	5	0.06
12526	Gun Showdown	17	2006	9	5	0.06
12527	Showtime Championship Boxing	4	2007	10	87	0.06
12528	Syndicate	15	1992	12	8	0.06
12529	Digimon All-Star Rumble	5	2014	10	26	0.06
12530	Foster's Home for Imaginary Friends: Imagination Invaders	4	2007	11	40	0.06
12531	I Love Beauty: Hollywood Makeover	4	2009	6	89	0.06
12532	Power Pro Success Legends	17	2010	1	15	0.06
12533	Combat Elite: WWII Paratroopers	7		7	54	0.06
12534	Rock Blast	4	2008	5	284	0.06
12535	Pheasants Forever Wingshooter	1	2010	7	54	0.06
12536	Ivy the Kiwi?	1	2010	5	71	0.06
12537	Killer Loop	13	1999	3	68	0.06
12538	Cabela's Dangerous Hunts: Ultimate Challenge	17	2006	1	57	0.06
12539	Xiaolin Showdown	17	2006	9	15	0.06
12540	Worldwide Soccer	24	1994	1	9	0.06
12541	Toriko: Gourmet Battle!	10	2013	4	26	0.06
12542	Need for Speed: Shift	15	2009	3	8	0.06
12543	Zoo Tycoon: Complete Collection	15	2003	12	2	0.06
12544	Little League World Series Baseball 2008	4	2008	1	5	0.06
12545	Commandos: Strike Force	7	2006	7	22	0.06
12546	Mobile Suit Gundam: Gundam vs. Zeta Gundam	7	2004	7	26	0.06
12547	Darksiders II	18	2015	9	125	0.06
12548	Rapala Pro Fishing	9	2004	1	87	0.06
12549	Create	15	2010	9	8	0.06
12550	Guilty Gear X: Advance Edition	9	2002	10	101	0.06
12551	Impossible Mission	17	2007	2	158	0.06
12552	Zoo Tycoon 2	15	2004	12	2	0.06
12553	Fate/Tiger Colosseum Upper	17	2008	10	13	0.06
12554	Zaidan Houjin Nippon Kanji Nouryoku Kentei Kyoukai Kounin: KanKen DS3 Deluxe	4	2009	6	138	0.06
12555	Rooms: The Main Building	1	2010	11	69	0.06
12556	Theresia...	4	2008	11	224	0.06
12557	Pop Cutie! Street Fashion Simulation	4	2008	8	49	0.06
12558	Top Gun: Hard Lock	5	2012	9	12	0.06
12559	JoJo's Bizarre Adventure: All Star Battle	10	2012	10	3	0.06
12560	Carol Vorderman's Sudoku	17	2006	5	169	0.06
12561	Ford Racing 3	9	2005	3	87	0.06
12562	Genkai Tokki: Moero Crystal	23	2015	4	266	0.06
12563	PachiPara 13: Super Umi no Pachi-Pro Fuuunroku	7	2006	6	394	0.06
12564	Disney Planes Fire & Rescue	1	2014	9	33	0.06
12565	Attack on Titan (KOEI)	6	2016	9	49	0.06
12566	Satisfashion	4	2010	6	154	0.06
12567	World Soccer Winning Eleven 9 (US sales)	17	2005	1	15	0.06
12568	Winning Post 4 Maximum	7	2000	1	49	0.06
12569	Oddworld: Munch's Oddysee	9	2003	2	29	0.06
12570	Match 3 Madness	4	2010	5	275	0.06
12571	Exhibition Volume 5	14	2004	6	2	0.06
12572	Record of Lodoss War: Eiyuu Sensou	25	1994	4	9	0.06
12573	DuckTales: Remastered	20	2013	9	13	0.06
12574	LEGO Batman: The Videogame	15	2008	9	20	0.06
12575	Atelier Sophie: The Alchemist of the Mysterious Book	23	2015	4	49	0.06
12576	Starry ? Sky: In Summer	17	2010	6	418	0.06
12577	Imagine: Resort Owner	4	2010	12	6	0.06
12578	Pro Yakyuu Netsu Star 2007	7	2007	1	26	0.06
12579	Klonoa Beach Volleyball	13	2002	1	26	0.06
12580	Melty Blood: Actress Again	7	2009	10	419	0.06
12581	TrackMania Turbo	18	2016	9	6	0.06
12582	Izuna 2: The Unemployed Ninja Returns	4	2007	4	91	0.06
12583	Teenage Mutant Ninja Turtles 3: Mutant Nightmare	4	2005	9	15	0.06
12584	Centipede: Infestation	1	2011	7	11	0.06
12585	Mercury Meltdown	17	2006	9	11	0.06
12586	SingStar Mallorca Party	6	2009	6	4	0.06
12587	3D Lemmings	13	1995	5	88	0.06
12588	Hi Hi Puffy AmiYumi: Kaznapped	9	2005	9	59	0.06
12589	FIFA Soccer 07	4	2006	1	8	0.06
12590	Resident Evil - Code: Veronica X	19	2003	9	13	0.06
12591	Broken Sword: The Shadow of the Templars	9	2002	11	176	0.06
12592	Back to the Future: The Game	1	2011	11	174	0.06
12593	Summon Night 6: Lost Borders	23	2016	9	26	0.06
12594	Tenchi Muyou! Ryoukouki Gokuraku	24	1995	11	420	0.06
12595	Kelly Slater's Pro Surfer	19	2002	1	5	0.06
12596	Jacqueline Wilson's Tracy Beaker: The Game	4	2009	6	212	0.06
12597	Sacred 3	5	2014	4	42	0.06
12598	I Am In The Movie	17	2012	8	26	0.06
12599	Doraemon: Nobita no Uchuu Eiyuuki	10	2015	9	246	0.06
12600	Trapt	7	2005	9	49	0.06
12601	Jewel Legends: Tree of Life	4	2011	5	71	0.06
12602	Splat Renegade Paintball	14	2005	1	3	0.06
12603	Zendoku	4	2007	5	22	0.06
12604	Metal Max 4: Gekkou no Diva	10	2013	4	153	0.06
12605	Jumper: Griffin's Story	5	2008	9	22	0.06
12606	Worms 3D	14	2003	12	9	0.06
12607	pro evolution soccer 2011	15	2010	1	15	0.06
12608	Crazy Chicken: Pharaoh's Treasure	4	2007	5	421	0.06
12609	Arcana Heart 3	23	2014	10	224	0.06
12610	Magi: Aratanaru Sekai	10	2014	4	26	0.06
12611	PoPoLoCrois	17	2005	4	151	0.06
12612	Mahouka Koukou no Rettousei: Out of Order	23	2014	11	26	0.06
12613	Dragon Rage	7	2001	7	78	0.06
12614	Lord of Magna: Maiden Heaven	10	2014	4	105	0.06
12615	Dig Dug: Digging Strike	4	2005	5	11	0.06
12616	Dance Sensation!	1	2010	6	35	0.06
12617	Brave: A Warrior's Tale	1	2009	9	84	0.06
12618	Ansatsu Kyoushitsu: Assassin Ikusei Keikaku!!	10	2016	9	26	0.06
12619	Raw Danger! (JP sales)	7	2006	9	12	0.06
12620	Archer Maclean Presents: Pool Paradise	7	2004	1	151	0.06
12621	Tabi no Yubisashi Kaiwachou DS: DS Series 3 Kankoku	4	2006	6	1	0.06
12622	Winx Club: Mission Enchantix	4	2008	11	15	0.06
12623	Petz Bunnyz Bunch	4	2011	8	6	0.06
12624	S.T.A.L.K.E.R.: Shadow of Chernobyl	15	2007	7	29	0.06
12625	Backyard Skateboarding 2006	9	2004	1	11	0.06
12626	Tron 2.0: Killer App	14	2004	9	33	0.06
12627	Steins;Gate: Hiyoku Renri no Darling	17	2012	9	357	0.06
12628	Captain America: Super Soldier	1		9	9	0.06
12629	Gegege no Kitarou: Youkai Daigekisen	4	2008	9	26	0.06
12630	Emblem of Gundam	4	2008	12	26	0.06
12631	The Fast and the Furious	7	2006	3	26	0.06
12632	Gem Smashers	1	2011	2	68	0.06
12633	Super Robot Wars OG: The Moon Dwellers	6	2016	6	26	0.06
12634	G-Police: Weapons of Justice	13	1999	9	88	0.06
12635	Killing Zone	13	1996	10	31	0.06
12636	All Kamen Rider: Rider Generation 2	17	2012	9	26	0.06
12637	Policenauts	29	1995	11	15	0.06
12638	Adventures of Lolo	2	1989	5	422	0.06
12639	Quiz! Hexagon II	4	2010	6	26	0.06
12640	Game of Thrones (Telltale)	6	2015	11	174	0.06
12641	Call of Duty: The War Collection	5	2010	7	5	0.06
12642	Warriors Orochi 2	5	2008	9	49	0.06
12643	The History Channel: Battle for the Pacific	5	2007	7	5	0.06
12644	Racing Gears Advance	9	2004	3	87	0.06
12645	Jewel Master: Cradle of Persia	4	2012	5	71	0.06
12646	Project Setsuna	11	2016	4	17	0.06
12647	Syphon Filter: Logan's Shadow	7	2010	7	4	0.06
12648	NTRA Breeders' Cup World Thoroughbred Championships	14	2005	8	7	0.06
12649	Tiger Woods PGA Tour 08	4	2007	1	8	0.06
12650	Daito Giken Koushiki Pachi-Slot Simulator: Shin Yoshimune	7	2008	6	362	0.06
12651	Tanjou S Debut	24	1996	8	245	0.06
12652	Nendoroid Generation	17	2012	4	26	0.06
12653	Brave: A Warrior's Tale	5	2009	9	84	0.06
12654	Pop'n TwinBee: Rainbow Bell Adventure	8	1993	2	15	0.06
12655	Honeycomb Beat	4	2006	5	15	0.06
12656	Broken Helix	13	1997	9	15	0.06
12657	The Saboteur	15	2009	9	8	0.06
12658	Katekyoo Hitman Reborn! DS Fate of Heat III - Yuki no Shugosha Raishuu!	4	2010	4	220	0.06
12659	Myst III: Exile	14	2002	11	6	0.06
12660	Warriors: Legends of Troy	5	2011	9	49	0.06
12661	Hajime no Ippo Portable: Victorious Spirits	17	2007	10	423	0.06
12662	Nanostray	4	2005	7	35	0.06
12663	CMT Presents: Karaoke Revolution Country	7	2006	6	15	0.06
12664	Katekyoo Hitman Reborn! DS: Flame Rumble Mukuro Kyoushuu	4	2007	10	197	0.06
12665	Cid to Chocobo no Fushigi na Dungeon: Toki Wasure no Meikyuu DS+	4	2008	4	17	0.06
12666	Vitamin X to Z	17	2011	11	59	0.06
12667	Fatal Frame	14	2002	9	49	0.06
12668	Flip's Twisted World	1		2	54	0.06
12669	Tom Clancy's Ghost Recon: Advanced Warfighter	7	2006	7	6	0.06
12670	Urban Chaos: Riot Response	7	2006	7	22	0.06
12671	Generation of Chaos	17	2005	4	162	0.06
12672	Teenage Mutant Ninja Turtles II: Back from the Sewers	3	1991	9	15	0.06
12673	Gormiti: The Lords of Nature!	4	2010	11	15	0.06
12674	The Sims 2: University	15	2005	8	8	0.06
12675	Pucca Power Up	4	2011	2	71	0.06
12676	Resident Evil 2	19	2003	9	13	0.06
12677	MLB Power Pros 2008	4	2008	1	3	0.06
12678	Real Soccer 2009	4	2008	1	6	0.06
12679	World Championship Athletics	1	2009	1	233	0.06
12680	The Amazing Spider-Man 2 (2014)	20	2014	9	5	0.06
12681	Yomawari	23	2015	11	132	0.06
12682	Real Bout Garou Densetsu Special: Dominated Mind	13	1998	10	244	0.06
12683	Jumble Madness	4	2009	5	154	0.06
12684	Vampire Rain: Altered Species	6	2008	9	151	0.06
12685	Sumikko Gurashi: Mura o Tsukurundesu	10	2016	6	229	0.06
12686	Harry Potter and the Sorcerer's Stone	15	2001	9	8	0.06
12687	Minna no Sukkiri	17	2009	1	4	0.06
12688	Scurge: Hive	4	2006	9	84	0.06
12689	Catwoman	14	2004	9	8	0.06
12690	Murdered: Soul Suspect	15	2014	9	17	0.06
12691	Romance of the Three Kingdoms 13	11	2015	9	49	0.06
12692	Noddy in Toyland	4	2011	6	96	0.06
12693	Aquarium by DS	4	2008	8	393	0.06
12694	Utawarerumono: Itsuwari no Kamen	11	2015	11	316	0.06
12695	Ride to Hell	5	2013	3	42	0.06
12696	Burning Rangers	24	1998	2	9	0.06
12697	Mana Khemia: Alchemists of Al-Revis	7	2007	4	132	0.06
12698	Katekyoo Hitman Reborn! DS Flame Rumble XX - Kessen! Shin 6 Chouka	4	2010	9	197	0.06
12699	Interplay Sports Baseball 2000	13	1999	1	118	0.06
12700	Zone of the Enders: The Fist of Mars	9	2001	4	15	0.06
12701	Animorphs: Shattered Reality	13	2000	9	53	0.06
12702	Teenage Mutant Ninja Turtles: Tournament Fighters	8	1992	10	15	0.06
12703	Eikan wa Kimini 2002: Koshien no Kodou	7	2002	1	424	0.06
12704	PopStar Guitar	1	2008	6	40	0.06
12705	Mirror's Edge	15	2009	2	8	0.06
12706	Blade Dancer: Lineage of Light	17	2006	4	11	0.06
12707	Terminator 3: Rise of the Machines	9	2003	9	11	0.06
12708	Jissen Pachislot Hisshouhou! Hokuto no Ken Portable SE	17	2006	6	9	0.06
12709	Mayhem 3D	6	2011	3	374	0.06
12710	G1 Jockey 2	7	2000	1	49	0.06
12711	Mobile Ops: The One Year War	5		8	26	0.06
12712	Constantine	14	2005	9	112	0.06
12713	Chaos Rings III	23	2014	4	17	0.06
12714	Tom Clancy's Splinter Cell: Double Agent	19	2006	9	6	0.06
12715	Senritsu no Stratus	17	2011	4	15	0.06
12716	Katekyoo Hitman Reborn! DS Flame Rumble X - Mirai Chou-Bakuhatsu!!	4	2009	10	197	0.06
12717	Rhapsody: A Musical Adventure	4	2008	4	132	0.06
12718	Titan Quest	15	2006	4	29	0.06
12719	Wantame Fortune Channel	4	2007	6	13	0.06
12720	Evangelion: Jo	17	2009	9	26	0.06
12721	Bleach: Blade Battlers 2nd	7	2007	10	4	0.06
12722	Samurai Jack: The Shadow of Aku	7	2004	9	9	0.06
12723	Kamen Rider Kabuto	7	2006	9	26	0.06
12724	Men in Black The Series: Crashdown	13	2001	7	53	0.06
12725	Zero Divide	13	1995	10	86	0.06
12726	FIFA Street	19	2005	1	8	0.06
12727	Tsugunai: Atonement	7	2001	4	4	0.06
12728	Rugby World Cup 2015	11	2015	1	6	0.06
12729	Lost Kingdoms II	19	2003	4	5	0.06
12730	Aggressive Inline	19	2002	1	31	0.06
12731	Nights of Azure	11	2015	9	49	0.06
12732	Dungeon Keeper 2	15	1999	9	8	0.06
12733	Viewtiful Joe: Red Hot Rumble	19	2005	9	13	0.06
12734	The Lord of the Rings: The Battle for Middle-Earth II	5	2006	12	8	0.06
12735	Kaite Shabette Hajimeyou! Monster Farm DS	4	2007	4	49	0.06
12736	Dungeon Explorer: Warriors of Ancient Arts	4	2007	4	71	0.06
12737	Pro Yaky? Spirits 2012	23	2012	1	15	0.06
12738	Samurai Warriors 4: Empires	6	2015	9	49	0.06
12739	Point Blank DS (US sales)	4	2006	7	11	0.06
12740	FIFA Soccer 06	4	2005	1	8	0.06
12741	SD Gundam G Generation Wars	1	2009	12	26	0.06
12742	Broken Sword II: The Smoking Mirror	13	1997	11	4	0.06
12743	Pump It Up: Exceed	7	2005	6	178	0.06
12744	Hakuouki: Yuugi Roku Ni - Matsuri Hayashi to Taishitachi	17	2012	9	279	0.06
12745	Wreckless: ThE YaKuza MisSiOns	19	2002	3	5	0.06
12746	Doki-Doki Universe	23	2013	11	4	0.06
12747	Hisshou Pachinko*Pachi-Slot Kouryaku Series Vol. 11: Shinseiki Evangelion - Magokoro o, Kimi ni	7	2007	6	59	0.06
12748	TOCA Race Driver 2: Ultimate Racing Simulator	7	2004	3	36	0.06
12749	Girls RPG: Cinderellife	10	2012	4	38	0.06
12750	Dr. Muto	14	2002	2	40	0.06
12751	Tom Clancy's Rainbow Six: Critical Hour	14		7	54	0.06
12752	Gothic 3	15	2006	4	259	0.06
12753	Tokyo Twilight Ghost Hunters	6	2014	4	343	0.06
12754	Scrabble Blast!	9	2005	6	87	0.06
12755	Dino Pets	4	2009	8	191	0.06
12756	Fate/Stay Night [Réalta Nua]	23	2012	11	153	0.06
12757	The Mysterious Case of Dr. Jekyll and Mr. Hyde	4	2010	11	342	0.06
12758	Gintama no Sugoroku	17	2013	9	26	0.06
12759	Kid Fit Island Resort	1	2010	1	191	0.06
12760	The Lord of the Rings: Aragorn's Quest	7	2010	9	20	0.06
12761	Roogoo Twisted Towers	1	2009	5	84	0.06
12762	Doraemon 4: Nobita to Toki no Okoku	8	1995	2	175	0.06
12763	Myst	24	1994	11	242	0.06
12764	F1 2010	15	2010	3	36	0.06
12765	Toaru Kagaku no Chou Denjihou	17	2011	11	153	0.06
12766	Starwinder: The Ultimate Space Race	13	1996	3	52	0.06
12767	The Lost Chronicles of Zerzura	15	2012	11	233	0.06
12768	Ski Region Simulator	15	2011	8	312	0.06
12769	Angelique Trois	7	2000	11	49	0.06
12770	Dreamer Series: Babysitter	4	2009	8	42	0.06
12771	Diva Girls: Divas on Ice	4	2009	1	12	0.06
12772	Dance Dance Revolution: Mario Mix (JP sales)	19	2005	8	1	0.06
12773	A-Train 6	7	2000	12	162	0.06
12774	Meitantei Conan: Tantei Ryoku Trainer	4	2007	6	26	0.06
12775	MotoGP	9	2002	3	29	0.06
12776	ESPN International Winter Sports 2002	7	2002	1	15	0.06
12777	Tennis no Oji-Sama: Doubles no Oji-Sama - Girls, Be Gracious!	4	2009	1	15	0.06
12778	KimiKiss (ebKore+)	7	2008	11	155	0.06
12779	Gold and Glory: The Road to El Dorado	13	2000	11	6	0.06
12780	NBA Live 07	14	2006	1	8	0.06
12781	Choro Q Marine: Q Boat	13	1998	3	152	0.06
12782	GunPey	17	2006	5	11	0.06
12783	BattleBots: Beyond the BattleBox	9	2002	9	24	0.06
12784	MX vs. ATV Supercross Encore	11	2015	1	125	0.06
12785	Yuugen Gaisha Brave Company	10	2011	12	26	0.06
12786	Mighty Beanz: Pocket Puzzles	9	2004	5	35	0.06
12787	Ken to Mahou to Gakuen Mono. 3D	10	2011	4	310	0.06
12788	History Great Empires: Rome	4	2009	12	194	0.06
12789	The King of Fighters '96	27	1996	10	244	0.06
12790	Friends: The One with All the Trivia	7	2005	6	20	0.06
12791	Mame Goma 2: Uchi no Ko ga Ichiban!	4	2008	8	425	0.06
12792	Backyard NFL Football '08	7	2007	1	11	0.06
12793	Coraline	1	2009	9	59	0.06
12794	Gunbird	24	1995	7	72	0.06
12795	Imagine: Party Planner	4	2009	8	6	0.06
12796	Dream C Club Portable	17	2010	8	59	0.06
12797	Tom Clancy's Rainbow Six 3	19	2004	7	6	0.06
12798	Elemental Gearbolt	13	1997	7	4	0.06
12799	Space Chimps	4	2008	2	206	0.06
12800	Tony Hawk's Pro Skater 5	6	2015	1	5	0.06
12801	WWF Wrestlemania: The Arcade Game	13	1995	10	31	0.06
12802	Handball 16	11	2015	1	324	0.06
12803	Cabela's Big Game Hunter 2005 Adventures	9	2004	1	5	0.06
12804	Grand Kingdom	11	2015	4	132	0.06
12805	Mega Man 8 Anniversary Collector's Edition	24	1997	2	13	0.06
12806	V-Rally 3	7	2002	3	11	0.06
12807	Nobunaga no Yabou: Souzou	11	2014	12	49	0.06
12808	Whiplash	14	2003	3	22	0.06
12809	GRID	4		3	36	0.06
12810	Pro Yakyuu Famista 2011	10	2011	1	26	0.06
12811	Impact Racing	13	1996	3	41	0.06
12812	My Horse & Me: Riding for Gold	1	2008	1	11	0.06
12813	Sled Shred featuring the Jamaican Bobsled Team	1	2010	1	84	0.06
12814	Amazing Island	19	2004	12	9	0.06
12815	SeaBlade	14	2002	7	73	0.06
12816	Jikkyou Powerful Pro Yakyuu DreamCast Edition	22	2000	1	15	0.06
12817	Carmen Sandiego: The Secret of the Stolen Drums	7	2004	9	176	0.06
12818	Tokyo Mono Harashi: Karasu no Mori Gakuen Kitan	17	2010	4	72	0.06
12819	Activision Hits: Remixed	17	2006	6	5	0.06
12820	Death Jr. II: Root of Evil	17	2006	2	15	0.06
12821	Hail to the Chimp	5	2008	6	403	0.06
12822	MotoGP 4 - Official Game of MotoGP	7	2005	3	4	0.06
12823	Legend of Kay	20	2015	9	125	0.05
12824	Kyoukai Senjou no Horizon Portable	17	2013	11	153	0.05
12825	4 Elements	15	2009	5	85	0.05
12826	Shining Force III: Scenario 2	24	1998	12	9	0.05
12827	Captain America: Super Soldier	4		9	9	0.05
12828	Airline Tycoon 2	15	2011	8	200	0.05
12829	Worms World Party	9	2002	12	6	0.05
12830	Medabots: Metabee	9	2002	4	80	0.05
12831	Medal of Honor: Airborne	15	2007	7	8	0.05
12832	NHL Legacy	5	2015	9	8	0.05
12833	Final Fight: Streetwise	7	2006	9	13	0.05
12834	Speed Kings	14	2003	3	31	0.05
12835	Drivers Ed Portable	4	2008	6	259	0.05
12836	Rebelstar: Tactical Command	9	2005	12	11	0.05
12837	Kamen Rider: Battride War Genesis	11	2016	9	26	0.05
12838	IL-2 Sturmovik: Cliffs of Dover	15	2011	8	6	0.05
12839	Gladiator: Sword of Vengeance	14	2003	9	31	0.05
12840	Unsolved Crimes	4	2008	11	90	0.05
12841	Minna to Kimi no Piramekino!	4	2010	6	26	0.05
12842	Virtua Tennis 3	17	2007	1	9	0.05
12843	Bombastic	7	2002	5	13	0.05
12844	Xiaolin Showdown	4	2006	9	15	0.05
12845	NHL Powerplay 98	13	1997	1	19	0.05
12846	Olympic Soccer: Atlanta 1996	13	1996	1	330	0.05
12847	Lernerfolg Vorschule: Capt'n Sharky	4	2009	6	398	0.05
12848	Samurai Dou Portable	17	2008	9	130	0.05
12849	Princess on Ice	4	2008	1	12	0.05
12850	Countdown: The Game	1	2009	5	52	0.05
12851	Phantasy Star Online Episode I & II Plus	19	2003	4	9	0.05
12852	Samurai Warriors 4: Empires	23	2015	9	49	0.05
12853	DuckTales: Remastered	6	2013	9	13	0.05
12854	Front Mission 2089: Border of Madness	4	2008	12	17	0.05
12855	Miracle Girls Festival	23	2015	6	9	0.05
12856	Dual Hearts	7	2002	4	4	0.05
12857	7 Wonders: Treasures of Seven	4	2011	5	191	0.05
12858	NFL Quarterback Club 2002	19	2001	1	31	0.05
12859	Saki: Zenkoku-hen	23	2015	6	426	0.05
12860	Mister Slime	4	2008	9	84	0.05
12861	Shiren the Wanderer 5 Plus: Fortune Tower and the Dice of Fate	23	2015	9	343	0.05
12862	Murder, She Wrote	15	2009	11	81	0.05
12863	Virtual Villagers: A New Home	4	2010	8	148	0.05
12864	Wing Commander: Prophecy	9	2003	8	204	0.05
12865	Marc Ecko's Getting Up: Contents Under Pressure	7	2006	9	11	0.05
12866	Learn Science	4	2010	6	319	0.05
12867	Sega Soccer Slam	14	2002	1	9	0.05
12868	Hakuouki: Reimeiroku	7	2010	11	279	0.05
12869	Vertigo	1	2009	12	286	0.05
12870	Blood Omen 2	19	2002	9	22	0.05
12871	NBA 2K17	5	2016	1	3	0.05
12872	Shin Sangoku Musou 5 Empires	17	2010	9	49	0.05
12873	Front Mission Evolved	15	2010	7	17	0.05
12874	Carve	14	2004	3	64	0.05
12875	BlowOut	14	2003	7	87	0.05
12876	McDROID	17	2011	12	26	0.05
12877	GachiTora! Abarenbou Kyoushi in High School	17	2011	9	130	0.05
12878	WTA Tour Tennis	7	2001	1	15	0.05
12879	Bottom of the 9th '99	13	1998	1	15	0.05
12880	Dynasty Warriors 5	14	2005	9	49	0.05
12881	Reader Rabbit 2nd Grade	1		6	54	0.05
12882	Famicom Mini: Dig Dug	9	2004	5	26	0.05
12883	FIFA Soccer 2003	9	2002	1	8	0.05
12884	Naval Ops: Commander	7	2004	8	49	0.05
12885	Adventure Time: Finn & Jake Investigations	20	2015	9	231	0.05
12886	Defendin' De Penguin	1	2008	12	202	0.05
12887	Bleach: Blade Battlers	7	2006	10	4	0.05
12888	Rez	7	2001	7	4	0.05
12889	Goosebumps: The Game	10	2015	11	427	0.05
12890	MLB SlugFest 2006	14	2006	1	40	0.05
12891	Rockin' Pretty	4	2009	6	224	0.05
12892	Jake Power: Policeman	4	2008	11	6	0.05
12893	Samurai Warriors 4-II	23	2015	9	49	0.05
12894	Jissen Pachislot Hisshouhou! Hokuto no Ken DS SE	4	2006	6	9	0.05
12895	UEFA Euro 2004: Portugal	14	2004	1	8	0.05
12896	Lufia: The Ruins of Lore	9	2002	4	94	0.05
12897	Major Minor's Majestic March	1	2009	6	35	0.05
12898	Shaman King: Soul Fight	19	2003	2	26	0.05
12899	Samurai Deeper Kyo	13	2002	10	26	0.05
12900	Samantha Swift and the Hidden Roses of Athena	4	2010	11	54	0.05
12901	Dark Souls III	15	2016	4	26	0.05
12902	Medabots: Infinity	19	2003	4	6	0.05
12903	Tom Clancy's HAWX 2	15	2010	9	6	0.05
12904	Zapper: One Wicked Cricket!	14	2002	2	53	0.05
12905	Jirou Akagawa: Majotachi no Nemuri	8	1995	11	415	0.05
12906	Arcana Heart 3	5	2011	10	148	0.05
12907	Bust-A-Bloc	7	2002	5	162	0.05
12908	Sitting Ducks	7	2003	2	428	0.05
12909	Puyo Puyo 7	1	2009	5	9	0.05
12910	Animal Planet: Vet Collection	4	2010	8	5	0.05
12911	Imagine Animal Doctor Care Center	4	2010	8	6	0.05
12912	Rugby 15	5	2015	1	324	0.05
12913	NFL Blitz Pro	14	2003	1	40	0.05
12914	Major League Baseball 2K11	17	2011	1	3	0.05
12915	Uta no Prince-Sama: Music 3	23	2016	9	309	0.05
12916	Pretty Cure All Stars Everyone Gather ? Let's Dance!	1	2013	6	26	0.05
12917	Mountain Bike Adrenaline	7		1	54	0.05
12918	New Prince of Tennis: Go to the Top	10	2015	9	246	0.05
12919	Zyuden Sentai Kyoryuger: Game de Gaburincho!!	10	2013	9	26	0.05
12920	Nobunaga's Ambition: Sphere of Influence	23	2014	12	49	0.05
12921	Hi-Octane: The Track Fights Back!	13	1995	3	8	0.05
12922	Venetica	15	2009	4	233	0.05
12923	Black Sigil: Blade of the Exiled	4	2009	4	327	0.05
12924	Tour de France 2011	5		3	81	0.05
12925	Wakeboarding Unleashed Featuring Shaun Murray	14	2003	1	5	0.05
12926	TrackMania Turbo: Build to Race	4	2010	3	6	0.05
12927	ZombiU	11	2016	9	6	0.05
12928	Domino Rally	1	2007	9	252	0.05
12929	Doraemon 2: Nobita no Toizurando Daibouken	8	1993	4	175	0.05
12930	Samurai Champloo: Sidetracked	7	2006	9	26	0.05
12931	Drill Dozer	9		2	54	0.05
12932	Teenage Mutant Ninja Turtles: Mutants in Manhattan	6	2016	9	5	0.05
12933	Katekyoo Hitman Reborn! DS: Shinuki Max! Vongola Carnival!!	4	2007	9	197	0.05
12934	Utawarerumono: Futari no Hakuoro	23	2016	6	316	0.05
12935	Chaos;Child	23	2015	11	357	0.05
12936	Fatal Fury: Wild Ambition	13	1999	10	226	0.05
12937	Metal Fight Beyblade: Bakugami Susanoh Shuurai!	4	2010	9	69	0.05
12938	Dengeki Gakuen RPG: Cross of Venus	4	2009	4	429	0.05
12939	Judge Dredd	13	1997	2	264	0.05
12940	FIFA 17	15	2016	1	8	0.05
12941	Minna no Ennichi	10	2012	9	26	0.05
12942	Winning Post 8	6	2014	3	49	0.05
12943	King Arthur	14	2004	9	15	0.05
12944	DoDonPachi Resurrection	5	2010	7	71	0.05
12945	Bass Rise	13	1999	1	26	0.05
12946	UEFA Champions League 2006-2007	5	2007	1	8	0.05
12947	Dynamite Headdy	21	1993	2	9	0.05
12948	Hunted: The Demon's Forge	15	2011	9	7	0.05
12949	Choujikuu Yousai Macross: Do You Remember Love	6	2012	7	26	0.05
12950	Arcania: Gothic 4	11	2015	4	125	0.05
12951	Persona 2: Eternal Punishment	17	2012	4	72	0.05
12952	Dragon's Lair 3D: Return to the Lair	14	2002	2	6	0.05
12953	Growlanser: Heritage of War (jp sales)	7	2006	4	71	0.05
12954	The Bureau: XCOM Declassified	15	2013	7	3	0.05
12955	Myst IV: Revelation	14	2005	11	6	0.05
12956	Culdcept Revolt	10	2016	12	1	0.05
12957	Sushi Go-Round	1	2010	8	281	0.05
12958	Pachinko Wars II	8	1993	6	430	0.05
12959	Myth Makers: Orbs of Doom	1	2007	5	295	0.05
12960	Toy Soldiers: War Chest	18	2015	9	6	0.05
12961	The Nightmare of Druaga: Fushigino Dungeon	7	2004	4	431	0.05
12962	Omega Labyrinth	23	2015	4	59	0.05
12963	Air Conflicts: Aces of World War II	17	2009	8	327	0.05
12964	Cities in Motion	15	2011	8	317	0.05
12965	Aliens in the Attic	4	2009	9	286	0.05
12966	Virtua Striker 2002	19	2002	1	9	0.05
12967	Kamen Rider: Dragon Knight	4	2009	10	59	0.05
12968	Code Lyoko	4	2007	9	103	0.05
12969	Taito Legends Power Up	17	2007	9	154	0.05
12970	Fate/Unlimited Codes Portable	17	2009	10	13	0.05
12971	Metal Slug Anthology	17	2007	7	151	0.05
12972	Tenchu: Dark Secret	4	2006	9	228	0.05
12973	Game no Kanzume Vol 2	25	1994	6	9	0.05
12974	Disney's PK: Out of the Shadows	19	2002	2	6	0.05
12975	Zoo Quest: Puzzle Fun!	4	2008	5	259	0.05
12976	JoJo no Kimy? na B?ken Fantomu Buraddo	7	2006	9	26	0.05
12977	The Idolmaster 2	5	2011	8	26	0.05
12978	PQ2: Practical Intelligence Quotient	17	2006	5	59	0.05
12979	Mr Bean's Wacky World of Wii	1	2009	11	291	0.05
12980	Powerdrome	7	2004	3	374	0.05
12981	Dreamer Series: Puppy Trainer	4	2008	8	319	0.05
12982	Pro Yakyuu Spirits 5 Kanzenban	7	2008	1	15	0.05
12983	Tsumiki: Block Drop Mania	4	2007	9	127	0.05
12984	Shin Sangoku Musou 5 Special	17	2009	9	49	0.05
12985	Pony Friends: Mini Breeds Edition	4	2008	8	22	0.05
12986	Otogi 2: Immortal Warriors	14	2003	9	9	0.05
12987	Legend of Kay	7	2005	9	259	0.05
12988	Piglet's Big Game	19	2003	2	65	0.05
12989	Dead or Alive Xtreme 3: Fortune	11	2016	1	49	0.05
12990	Ivy the Kiwi?	4	2010	5	71	0.05
12991	Fallout: Brotherhood of Steel	14	2004	4	294	0.05
12992	Strawberry Shortcake: Strawberryland Games	4	2006	9	103	0.05
12993	Koi to Senkyo to Chocolate Portable	17	2012	11	153	0.05
12994	IndyCar Series	14	2003	3	36	0.05
12995	Hysteria Hospital: Emergency Ward	1	2009	9	60	0.05
12996	Dokapon Journey	4	2008	4	321	0.05
12997	Ultra Bust-A-Move	14	2004	5	12	0.05
12998	Rally Fusion: Race of Champions	14	2002	3	5	0.05
12999	Piglet's Big Game	9	2003	2	29	0.05
13000	Lucha Libre AAA: Heroes del Ring	5	2010	10	15	0.05
13001	Pony Friends	4	2007	8	22	0.05
13002	Natural Doctrine	6	2014	4	132	0.05
13003	Pinball Hall of Fame: The Gottlieb Collection	19	2005	6	68	0.05
13004	Ferrari F355 Challenge	7	2002	3	4	0.05
13005	MorphX	5	2010	7	12	0.05
13006	Stranger of Sword City	23	2015	4	132	0.05
13007	Air Traffic Chaos	4	2007	8	432	0.05
13008	Battleship / Connect Four / Sorry! / Trouble	4	2006	5	204	0.05
13009	Prism: Light the Way	4	2007	5	22	0.05
13010	Tiny Toon Adventures: Toonenstein - Dare to Scare	13	1998	9	314	0.05
13011	TV Anime: Fairy Tale Gekitou! Madoushi Kessen	4	2010	10	69	0.05
13012	Shifters	7	2002	11	78	0.05
13013	RPG Tsukuru DS	4	2010	4	155	0.05
13014	WRC 5: FIA World Rally Championship	11	2015	1	324	0.05
13015	Earth Defense Force 4.1: The Shadow of New Despair	11	2015	7	156	0.05
13016	The BIGS 2	4	2009	1	3	0.05
13017	Dramatic Dungeon: Sakura Wars - Kimi Arugatame	4	2008	4	9	0.05
13018	TNA iMPACT: Cross the Line	17	2010	10	84	0.05
13019	SpongeBob: HeroPants	23	2015	2	5	0.05
13020	Lagoon	8	1991	4	189	0.05
13021	Nanostray 2	4	2008	7	36	0.05
13022	Project Setsuna	23	2016	4	17	0.05
13023	Microsoft Flight Simulator X Acceleration Expansion Pack	15	2007	8	2	0.05
13024	Trick x Logic: Season 1	17	2010	11	4	0.05
13025	Mortal Kombat X	15	2015	10	20	0.05
13026	Mawashite Tsunageru Touch Panic	4	2006	5	1	0.05
13027	Luminous Arc Infinity	23	2015	9	433	0.05
13028	Monster! Bass Fishing	9	2003	1	151	0.05
13029	Sigma Star Saga	9	2005	4	11	0.05
13030	Winning Post 7 2010	17	2010	1	49	0.05
13031	Assetto Corsa	11	2016	3	12	0.05
13032	Batman: Gotham City Racer	13	2001	3	6	0.05
13033	Sengoku Basara X	7	2008	10	13	0.05
13034	Plants vs. Zombies	15	2009	12	208	0.05
13035	Top Spin 2	4	2006	1	3	0.05
13036	Doraemon: Nobita no Kyouryuu 2006 DS	4	2006	4	9	0.05
13037	Ontamarama	4	2007	9	72	0.05
13038	Hakuoki: Stories of the Shinsengumi	6	2010	11	279	0.05
13039	DokiDoki Majo Shinpan!	4	2007	11	226	0.05
13040	Star Wars: Republic Commando	15	2005	7	18	0.05
13041	Starry ? Sky: In Spring	17	2010	6	418	0.05
13042	FIFA Soccer 2004	9	2003	1	8	0.05
13043	Armored Core: Formula Front Extreme Battle	17	2004	8	12	0.05
13044	Downforce	7	2002	3	294	0.05
13045	Bejeweled Twist	15	2008	5	208	0.05
13046	Street Fighter V	15	2016	10	13	0.05
13047	Little Busters! Converted Edition	7	2009	11	434	0.05
13048	Enemy Front	5	2014	7	26	0.05
13049	Dream Salon	1	2009	6	75	0.05
13050	Disney's Party	19	2002	6	8	0.05
13051	Tennis no Oji-Sama: 2005 Crystal Drive	4	2004	1	15	0.05
13052	Sherlock Holmes: Crimes & Punishments	15	2014	11	81	0.05
13053	Jenga World Tour	1	2007	6	11	0.05
13054	Summon Night X: Tears Crown	4	2009	4	26	0.05
13055	Secret Files: Tunguska	4	2008	11	42	0.05
13056	Taiho Shichauzo!	13	2001	11	186	0.05
13057	Battle vs. Chess	6		6	435	0.05
13058	Phantom Crash	14	2002	8	436	0.05
13059	Men of War: Assault Squad	15	2011	12	437	0.05
13060	Fishdom	4	2011	5	11	0.05
13061	Yanya Caballista: City Skater	7	2001	1	49	0.05
13062	Expendable	13	1999	9	53	0.05
13063	Imagine: Artist	4	2009	6	6	0.05
13064	Pet Pals: New Leash on Life	4	2010	8	154	0.05
13065	SeaWorld Adventure Parks: Shamu's Deep Sea Adventure	4	2005	11	5	0.05
13066	The Idolmaster: Gravure For You! Vol. 2	6	2011	6	26	0.05
13067	Arthur! Ready to Race	13	2000	3	438	0.05
13068	Thunder Force V: Perfect System	13	1998	7	439	0.05
13069	The Typing of the Dead	22	2000	7	9	0.05
13070	The Idolm@ster: Dearly Stars	4	2009	11	26	0.05
13071	Kids Learn Music A+ Edition	4	2011	6	54	0.05
13072	Child of Light	11	2014	4	6	0.05
13073	Over the Hedge: Hammy Goes Nuts!	17	2006	2	5	0.05
13074	Kart Racer	1	2009	3	125	0.05
13075	Bakemonogatari Portable	17	2012	9	26	0.05
13076	Sam & Max: Beyond Time and Space	1	2010	11	11	0.05
13077	To Heart 2: Dungeon Travelers	23	2015	11	316	0.05
13078	Tabi no Yubisashi Kaiwachou DS: DS Series 2 Chuugoku	4	2006	6	1	0.05
13079	Shrek Super Party	19	2003	6	73	0.05
13080	Monster 4x4: Masters of Metal	19	2003	3	6	0.05
13081	Bakusou Kyoudai Let's & Go!! Eternal Wings	13	1998	3	163	0.05
13082	Caligula	23	2016	4	246	0.05
13083	Steins;Gate 0	23	2015	11	148	0.05
13084	Keroro Gunsou: Enshuu da Yo! Zenin Shuugou Part 2	4	2007	9	26	0.05
13085	NHL Blades of Steel '99	12	1999	1	15	0.05
13086	Lips: Deutsche Partyknaller	5	2009	6	2	0.05
13087	Apassionata: Die Galanacht der Pferde	4	2009	8	79	0.05
13088	Dungeon Raiders	4	2009	4	81	0.05
13089	Second Sight	19	2004	11	36	0.05
13090	Philosoma	13	1995	7	4	0.05
13091	Virtua Fighter CG Portrait Series Vol.5: Wolf Hawkfield	24	1995	6	9	0.05
13092	Puyo Pop	9	2001	5	9	0.05
13093	Marriage Royale: Prism Story	17	2010	11	429	0.05
13094	Super Heroine Chronicle	23	2014	4	26	0.05
13095	Kamiwaza	7	2006	9	310	0.05
13096	Rave Master	19	2002	10	15	0.05
13097	The Technomancer	11	2016	4	81	0.05
13098	Ben 10 Galactic Racing	23	2012	3	59	0.05
13099	Kinnikuman Muscle Grand Prix Max	7	2006	10	15	0.05
13100	Hotel for Dogs	1	2009	8	12	0.05
13101	Suzuki Super-Bikes II: Riding Challenge	4	2008	3	353	0.05
13102	Mirror's Edge Catalyst	15	2016	2	8	0.05
13103	Jim Henson's Muppets in Spy Muppets: License to Croak	9	2003	9	73	0.05
13104	Medal of Honor: European Assault (weekly JP sales)	7	2005	7	8	0.05
13105	LEGO The Hobbit	15	2014	9	20	0.05
13106	Alias	14	2004	9	31	0.05
13107	Super Robot Taisen Neo	1	2009	12	26	0.05
13108	PAC-MAN and the Ghostly Adventures	20	2013	2	26	0.05
13109	ESPN International Winter Sports 2002	19	2002	1	15	0.05
13110	Winter Sports 2011	6	2011	1	233	0.05
13111	OutRun 2006: Coast 2 Coast	7	2006	3	9	0.05
13112	Blues Brothers 2000	12	2000	2	19	0.05
13113	Metal Max 2 Reloaded	4	2011	4	54	0.05
13114	All Star Tennis 99	12	1999	1	6	0.05
13115	Hercules: The Legendary Journeys	12	2000	4	104	0.05
13116	Dual Heroes	12	1997	10	69	0.05
13117	Fighter Destiny 2	12	1999	10	157	0.05
13118	Chameleon Twist 2	12	1998	2	53	0.05
13119	Nounai Aeshe: IQ Suppli DS 2 - Sukkiri King Ketteisen	4	2007	6	130	0.05
13120	PachiPara 14: Fuu to Kumo to Super Umi in Okinawa	7	2007	6	394	0.05
13121	Winning Post World	6	2009	1	49	0.05
13122	Arx Fatalis	14	2003	4	52	0.05
13123	Slam Dunk SD Heat Up!!	8	1995	1	26	0.05
13124	My Body Coach	1	2009	1	128	0.05
13125	Steins;Gate 0	11	2015	11	148	0.05
13126	Adventure Time: Finn & Jake Investigations	18	2015	9	231	0.05
13127	Dead in the Water	13	1999	9	74	0.05
13128	Winning Post 7 2013	6	2013	1	49	0.05
13129	DiRT 2	15	2009	3	36	0.05
13130	Detective Conan: Prelude from the Past	4	2012	9	26	0.05
13131	Dr. Seuss: Green Eggs and Ham	9	2003	9	215	0.05
13132	Sea Monsters: A Prehistoric Adventure	1	2007	11	202	0.05
13133	Atelier Rorona: Alchemist of Arland	23	2013	4	132	0.05
13134	Guilty Gear Dust Strikers	4	2006	10	35	0.05
13135	Dark Summit	19	2002	1	29	0.05
13136	Singularity	15	2010	7	85	0.05
13137	Odoru Daisousasen The Game: Sensuikan ni Sennyuu Seyo!	4	2010	11	26	0.05
13138	George of the Jungle and the Search for the Secret	4	2008	2	151	0.05
13139	Turbo Turtle Adventure	9	2002	5	35	0.05
13140	Sengoku Basara 4: Sumeragi	11	2015	9	13	0.05
13141	Warhammer 40,000: Dawn of War	15	2004	12	29	0.05
13142	Shinseiki Evangelion 2: Tsukurareshi Sekai - Another Cases	17	2006	11	26	0.05
13143	Hisshou 777 Fighter: Pachi Slot Eiyu Densetsu	8	1994	6	440	0.05
13144	Corpse Party: Blood Covered - Repeated Fear	17	2010	11	357	0.05
13145	The Lost Treasures of Alexandria	4	2011	5	54	0.05
13146	Chronicles of the Sword	13	1996	11	88	0.05
13147	Hail to the Chimp	6	2008	6	403	0.05
13148	The Lost Vikings	9	2003	5	5	0.05
13149	Keiba Eight Special	8	1993	1	441	0.05
13150	Yaiba: Ninja Gaiden Z	5	2014	9	49	0.05
13151	Harukanaru Toki no Naka de 3	7	2004	11	49	0.05
13152	Codename: Kids Next Door: Operation V.I.D.E.O.G.A.M.E.	19	2005	2	64	0.05
13153	Need for Speed Carbon	15	2006	3	8	0.05
13154	Reel Fishing: The Great Outdoors	17	2006	1	80	0.05
13155	Assassin's Creed: Altair's Chronicles	4	2008	2	6	0.05
13156	Pirates vs Ninja Dodgeball	1	2009	1	84	0.05
13157	Guild 01	10	2012	9	38	0.05
13158	The History Channel: Great Battles - Medieval	6		12	326	0.05
13159	Nike+ Kinect Training	5	2012	1	2	0.05
13160	Durarara!! 3-way Standoff	17	2010	11	429	0.05
13161	Ty the Tasmanian Tiger 3: Night of the Quinkan	9	2005	9	87	0.05
13162	Cartoon Network Racing	4	2006	9	103	0.05
13163	Tokimeki Memorial Girl's Side 2nd Kiss	7	2006	11	15	0.05
13164	Fushigi no Dungeon: Fuurai no Shiren 3 Portable	17	2010	4	130	0.05
13165	Active Life: Magical Carnival	1	2011	6	26	0.05
13166	Hokuto no Ken	7	2007	10	9	0.05
13167	Yu-Gi-Oh! GX: Spirit Caller (Japan Sales)	4	2006	6	15	0.05
13168	Stretch Panic	7	2001	2	162	0.05
13169	Empire Earth	15	2001	12	24	0.05
13170	Chousoku Henkei Gyrozetter: Albatross no Tsubasa	10	2013	4	17	0.05
13171	Baku Baku	24	1995	5	9	0.05
13172	Pro Cycling Manager 2016	11	2016	1	81	0.05
13173	SD Gundam: Over Galaxian	13	1996	7	26	0.05
13174	Rogue Ops	19	2003	9	189	0.05
13175	Smart Kid's Party Fun Pak	4	2008	6	284	0.05
13176	MXGP 2	18	2016	3	257	0.05
13177	Virtua Tennis 3	5	2007	1	9	0.05
13178	BeatMania IIDX 3rd Style	7	2000	8	15	0.05
13179	Yu-Gi-Oh! World Championship 2007	4	2007	12	15	0.05
13180	Hummer Badlands	7	2006	3	64	0.05
13181	Freelancer	15	2003	8	2	0.05
13182	Woody Woodpecker: Escape from Buzz Buzzard Park	7	2001	2	319	0.05
13183	Operation Flashpoint: Dragon Rising	15	2009	7	36	0.05
13184	Lupin III: Lupin ni wa Shi o, Zenigata ni wa Koi o	7	2007	11	12	0.05
13185	Furu Furu Park	1	2007	6	94	0.05
13186	Monster Band	4	2008	6	398	0.05
13187	Alter Echo	14	2003	7	29	0.05
13188	BeatMania IIDX 4th Style: New Songs Collection	7	2001	8	15	0.05
13189	Fushigi? Kagaku: Nazotoki Quiz Training - NazoTore	4	2008	6	365	0.05
13190	G1 Grand Prix	10	2012	9	106	0.05
13191	LEGO Indiana Jones 2: The Adventure Continues	15	2009	9	5	0.05
13192	QUIZ PARTY	1	2012	6	1	0.05
13193	MTX Mototrax	17	2006	3	5	0.05
13194	Around the World in 80 Days	9	2004	9	318	0.05
13195	Houkago Shounen	4	2008	6	15	0.05
13196	The Grim Adventures of Billy & Mandy	1	2006	9	40	0.05
13197	Classic Dungeon X2	17	2011	4	132	0.05
13198	Whirl Tour	19	2002	1	24	0.05
13199	Sesame Street: Cookie's Counting Carnival	15	2010	6	20	0.05
13200	Pinball Tycoon	9	2002	6	151	0.05
13201	Major League Baseball 2K11	7	2011	1	3	0.05
13202	Cartoon Network Block Party	9	2004	6	35	0.05
13203	Power Spike Pro Beach Volleyball	13	2000	1	53	0.05
13204	White Album: Tsuzurareru Fuyu no Omoide	6	2010	11	316	0.05
13205	Harukanaru Toki no Naka de: Yumenoukihashi	4	2008	11	49	0.05
13206	Shinseiki Evangelion- Eva: Yukai na Nakama Tachi	13	1998	6	347	0.05
13207	SD Gundam: Scad Hammers	1	2006	12	26	0.05
13208	Spitfire Heroes: Tales of the Royal Air Force	4	2008	8	154	0.05
13209	Super Bust-A-Move	9	2001	5	6	0.05
13210	TNA iMPACT: Cross the Line	4	2010	10	84	0.05
13211	Adventure Time: Explore the Dungeon Because I Don't Know!	6	2013	9	59	0.05
13212	ZooCube	9	2002	5	31	0.05
13213	Stunt GP	7	2001	3	104	0.05
13214	Wicked Monster Blast!	1	2011	7	148	0.05
13215	NBA 2K	22	1999	1	9	0.05
13216	D.Gray-man: Kami no Shitotachi	4	2007	11	15	0.05
13217	Bladestorm: Nightmare	18	2015	9	49	0.05
13218	Strikers 1945	24	1996	7	72	0.05
13219	World Series of Poker	19	2005	6	57	0.05
13220	Jikkyou Oshaberi Parodius	8	1995	7	15	0.05
13221	Super Jinsei Game 2	8	1995	6	152	0.05
13222	Winter Sports 3: The Great Tournament	1	2010	1	442	0.05
13223	J-League Winning Eleven 2010: Club Championship	7	2010	1	15	0.05
13224	Johnny Bazookatone	13	1995	2	330	0.05
13225	Beastly Frantic Foto	4	2011	5	216	0.05
13226	Neverland Card Battles	17	2008	4	279	0.05
13227	Need for Speed Underground	15	2003	3	8	0.05
13228	Downtown no Gaki no Tsukai Yaarahen de!! Zettai ni Tsukamatte Haikenai Gasu Kurobikari Land	10	2015	9	82	0.05
13229	Reign of Fire	9	2002	7	176	0.05
13230	Worms Reloaded	15	2010	12	443	0.05
13231	StarCraft	15	1998	12	5	0.05
13232	Koihime Musou	7	2008	11	444	0.05
13233	Nicktoons: Attack of the Toybots	4	2007	2	29	0.05
13234	NBA 2K17	6	2016	1	3	0.05
13235	Blazing Souls: Accelate	17	2009	4	279	0.05
13236	Ms Saga: A New Dawn	7	2005	4	26	0.05
13237	Kekkon Zenya	24	1995	11	269	0.05
13238	Finny the Fish & the Seven Waters	7	2004	1	4	0.05
13239	Barnyard	9	2006	9	29	0.05
13240	Next Generation of Chaos	7	2002	4	279	0.05
13241	Katekyoo Hitman Reborn! DS: Bongole Shiki Taisen Battle Sugoroku	4	2008	6	197	0.05
13242	GrimGrimoire	7	2007	12	49	0.05
13243	J-League '96 Dream Stadium	8	1996	1	69	0.05
13244	Capcom vs. SNK: Millennium Fight 2000 Pro	22	2001	10	13	0.05
13245	Golden Axe: The Duel	24	1994	10	9	0.05
13246	Crime Life: Gang Wars	14	2005	9	15	0.05
13247	Tokimeki Memorial: Girls Side 1st Love	4	2007	11	15	0.05
13248	Putty Squad	23	2013	2	301	0.05
13249	Rugby 2005	14	2005	1	8	0.05
13250	Rock 'N Roll Racing	9	2003	3	5	0.05
13251	Taito Legends	14	2005	6	90	0.05
13252	Far Cry	15	2004	7	6	0.05
13253	Silhouette Mirage	13	1998	2	181	0.05
13254	Dynasty Warriors Vol. 2	17	2006	9	49	0.05
13255	Treasure Report: Kikai Jikake no Isan	4	2011	11	26	0.05
13256	Growlanser VI: Precarious World	7	2007	4	72	0.05
13257	Block Kuzushi	8	1995	5	445	0.05
13258	Boing! Docomodake DS	4	2007	5	151	0.05
13259	American Bass Challenge	9	2001	1	201	0.05
13260	American Chopper 2: Full Throttle	19	2005	3	5	0.05
13261	Secret Service	5	2008	9	57	0.05
13262	Sword Art Online: Game Director's Edition	11	2015	4	26	0.05
13263	Ultimate Ghosts 'n Goblins (JP sales)	17	2006	2	13	0.05
13264	Rugby 06	7	2006	1	8	0.05
13265	Fatal Frame II: Crimson Butterfly Director's Cut	14	2004	9	2	0.05
13266	Deadliest Catch: Alaskan Storm	5	2008	1	446	0.05
13267	2002 FIFA World Cup	19	2002	1	8	0.05
13268	Colin McRae Rally 2005	14	2004	3	36	0.05
13269	Kamen Rider: Battride War Genesis	23	2016	9	26	0.05
13270	Venus & Braves: Majo to Megami to Horobi no Yogen	17	2011	4	26	0.05
13271	Ship Simulator Extremes	15	2010	8	317	0.05
13272	Zoop	13	1995	5	447	0.05
13273	Powerful Golf	4	2011	1	15	0.05
13274	Saiyuki: Journey West	13	1999	12	49	0.05
13275	Detective Conan: Marionette Symphony	10	2013	11	26	0.05
13276	FIFA Soccer 10	15	2009	1	8	0.05
13277	Amnesia Crowd	17	2013	6	279	0.05
13278	American Chopper 2: Full Throttle	14	2005	3	87	0.05
13279	Pachitte Chonmage Tatsujin 15: Pachinko Fuyu no Sonata 2	7	2008	6	378	0.05
13280	Monster Hunter Frontier Online	6		4	34	0.05
13281	Ribbit King	19	2003	1	11	0.05
13282	VR Soccer '96	13	1996	1	264	0.05
13283	Smash Court Tennis 3	17	2007	1	26	0.05
13284	Diabolik Lovers	17	2012	11	279	0.05
13285	Shugo Chara! 3-tsu no Tamagoto Koisuru Joker	4	2008	9	15	0.05
13286	Summoner: A Goddess Reborn	19	2003	4	29	0.05
13287	Saints Row: Gat out of Hell	11	2015	9	42	0.05
13288	Rock of the Dead	6	2010	7	232	0.05
13289	The Sims	15	2000	8	8	0.05
13290	Wasteland 2	18	2015	4	42	0.05
13291	Cesar Millan's Dog Whisperer	4	2008	8	6	0.05
13292	E.X. Troopers	6	2012	7	13	0.05
13293	Kiniro no Corda 2 Encore	7	2007	4	49	0.05
13294	Jewel Quest Mysteries	4	2009	5	276	0.05
13295	Moon	4	2009	11	178	0.05
13296	M&M's Adventure	4	2008	11	87	0.05
13297	ESPN Great Outdoor Games Bass 2002	9	2001	1	15	0.05
13298	Soul Eater: Plot of Medusa	4	2008	9	26	0.05
13299	Payday 2	15	2013	7	12	0.05
13300	Grand Ages: Medieval	15	2015	12	200	0.05
13301	Handball 16	6	2015	1	324	0.05
13302	Gummy Bears Mini Golf	4	2010	1	216	0.05
13303	Company of Heroes	15	2006	12	29	0.05
13304	Rock Band Country Track Pack 2	5	2011	6	32	0.05
13305	Color Cross	4	2008	6	71	0.05
13306	Gaist Crusher	10	2013	9	13	0.05
13307	Punch King	9	2002	10	31	0.05
13308	Silent Hunter: Wolves of the Pacific	15	2007	8	6	0.05
13309	World Championship Pool 2004	7	2004	1	163	0.05
13310	V-Rally 3	9	2002	3	11	0.05
13311	The Dark Spire	4	2008	4	91	0.05
13312	Kakuto Chojin	14	2002	10	2	0.05
13313	Beyond Oasis	21	1993	4	9	0.05
13314	Forza Motorsport 3: Ultimate Edition	5	2010	3	2	0.05
13315	Robotech: Invasion	14	2004	7	64	0.05
13316	Wii de Asobu Chibi-Robo!	1	2009	11	1	0.05
13317	Romance of the Three Kingdoms VI: Awakening of the Dragon	13	1998	12	49	0.05
13318	To Heart 2 DX Plus	6	2011	11	316	0.05
13319	Star Driver: Kagayaki no Takuto - Ginga Bishounen Densetsu	17	2011	11	26	0.05
13320	Naruto: Uzumaki Chronicles 2 (JP sales)	7	2006	9	26	0.05
13321	Frogger: Ancient Shadow	19	2005	2	15	0.05
13322	Snoopy vs the Red Baron	17	2006	11	26	0.05
13323	Jonah Lomu Rugby Challenge	15	2011	1	209	0.05
13324	Pet Vet: Down Under	4	2009	8	42	0.05
13325	World Series of Poker: Tournament of Champions 2007 Edition	1	2006	6	5	0.05
13326	National Geographic Challenge!	6	2011	6	194	0.05
13327	Raze's Hell	14	2005	7	35	0.05
13328	Rain (2013)	6	2013	11	4	0.05
13329	Billy the Wizard: Rocket Broomstick Racing	1	2007	3	139	0.05
13330	Pool Party	1	2007	1	84	0.05
13331	Microsoft Train Simulator	15	2001	8	2	0.05
13332	Shin Megami Tensei NINE	14	2002	4	72	0.05
13333	Magic Carpet	13	1995	7	8	0.05
13334	Hoshigami: Ruining Blue Earth	13	2001	4	448	0.05
13335	GunPey DS	4	2006	5	11	0.05
13336	Cabela's African Safari	17	2006	1	57	0.05
13337	Wing Island	1	2006	8	15	0.05
13338	Utawarerumono: Itsuwari no Kamen	6	2015	11	316	0.05
13339	Clever Kids: Creepy Crawlies	4	2009	9	162	0.05
13340	Supreme Commander	15	2007	12	29	0.05
13341	NightCaster II: Equinox	14	2002	9	163	0.05
13342	F1 2015	15	2015	3	36	0.05
13343	SD Gundam G Generation World	1	2011	12	26	0.05
13344	Chocobo to Mahou no Ehon: Majo to Shoujo to 5-Jin no Yuusha	4	2008	4	17	0.05
13345	Galaxy Racers	4	2010	3	6	0.05
13346	Wonder World Amusement Park	1	2008	6	35	0.05
13347	Bubble Bobble Revolution	4	2005	5	11	0.05
13348	Game of Thrones (Telltale)	11	2015	11	174	0.05
13349	Time Crisis: Project Titan	13	2001	7	26	0.05
13350	Ys: The Ark of Napishtim	17	2006	4	15	0.05
13351	Ore-Sama Kingdom: Koi no Manga mo Debut o Mokushise! Doki Doki Love Lesson	4	2011	9	26	0.05
13352	Crusader: No Remorse	13	1996	11	8	0.05
13353	Black & Bruised	19	2003	10	24	0.05
13354	MiniCopter: Adventure Flight	1	2007	8	12	0.05
13355	Shaun the Sheep	4	2008	11	59	0.05
13356	Fast & Furious: Showdown	5	2013	9	5	0.05
13357	World Championship Poker: Featuring Howard Lederer - All In	5	2006	6	60	0.05
13358	Test Drive: Ferrari Legends	5	2012	3	11	0.05
13359	Tom Clancy's Rainbow Six: Lockdown	19	2005	7	6	0.05
13360	FIFA Manager 12	15	2011	1	8	0.05
13361	Full Spectrum Warrior: Ten Hammers	14	2006	12	29	0.05
13362	River City Soccer Hooligans	4	2010	1	224	0.05
13363	Shin Hayarigami	23	2014	11	132	0.05
13364	TMNT	4	2007	9	6	0.05
13365	Turok: Dinosaur Hunter	12	1997	7	31	0.05
13366	Puyo Puyo Tetris	23	2014	5	9	0.05
13367	Taiko no Tatsujin Portable 2	17	2006	6	26	0.05
13368	Gitaroo Man	7	2001	6	29	0.05
13369	Super Bubble Pop	19	2003	5	163	0.05
13370	Mafia	15	2002	9	3	0.05
13371	Rapala Fishing Frenzy 2009	5	2008	1	5	0.05
13372	Ride to Hell	6	2013	3	42	0.05
13373	Arctic Tale	1	2007	11	87	0.05
13374	Balloon Pop	1	2007	5	12	0.05
13375	XBLAZE Code: Embryo	23	2013	11	224	0.05
13376	Black Mirror 2	15	2009	11	233	0.05
13377	Time Travelers	23	2012	11	38	0.05
13378	Amnesia Later	17	2012	6	279	0.05
13379	B-Boy	17	2006	6	4	0.05
13380	Cocoto Kart Racer	4	2004	3	128	0.05
13381	Shin Kamaitachi no Yoru: 11 Hitome no Suspect	23	2011	11	120	0.05
13382	Intellivision Lives!	14	2004	6	68	0.05
13383	Crazy Chicken: Atlantis Quest	4	2007	2	421	0.05
13384	Test Drive Le Mans	13	1999	3	53	0.05
13385	Counter Force	1	2007	7	12	0.05
13386	Monster Jam: Maximum Destruction	19	2002	3	6	0.05
13387	Professor Heinz Wolff's Gravity	4	2008	5	42	0.05
13388	Fantastic Four: Rise of the Silver Surfer	1	2007	9	3	0.05
13389	Big Air Freestyle	19	2002	3	11	0.05
13390	Rimo-Cocoron	7	2001	9	4	0.05
13391	Rugby World Cup 2015	5	2015	1	6	0.05
13392	Mike Tyson Heavyweight Boxing	14	2002	1	36	0.05
13393	To Love-Ru Trouble Darkness: Battle Ecstasy	23	2014	9	246	0.05
13394	The Berenstain Bears and the Spooky Old Tree	9	2005	2	26	0.05
13395	Lux-Pain	4	2008	11	71	0.05
13396	Ford Bold Moves Street Racing	17	2006	3	169	0.05
13397	Cabela's Trophy Bucks	5	2007	1	57	0.05
13398	Hakuouki: Bakumatsu Musou Roku	17	2012	9	279	0.05
13399	Mahjong 3D: Warriors of the Emperor	10	2011	6	233	0.05
13400	Hiiro no Kakera DS	4	2008	11	279	0.05
13401	March of the Penguins	4	2006	11	87	0.05
13402	Rock of the Dead	5	2010	7	232	0.05
13403	Arcana Famiglia: La storia della Aracana Famiglia	17	2011	11	449	0.05
13404	Tokyo Ghoul: Jail	23	2015	3	26	0.05
13405	City Life: World Edition	15	2007	8	450	0.05
13406	The Misadventures of Tron Bonne	13	1999	11	22	0.05
13407	Centipede: Infestation	10	2011	7	11	0.05
13408	Wolfenstein	15	2009	7	5	0.05
13409	Hero Bank 2	10	2014	4	9	0.05
13410	Atelier Ayesha: The Alchemist of Dusk	23	2014	4	49	0.05
13411	Brave Story: New Traveller (jp sales)	17	2006	4	4	0.05
13412	Black Jack vs. Matsudajun	13	2000	6	451	0.05
13413	Arslan: The Warriors of Legend	6	2015	9	49	0.05
13414	SpongeBob SquarePants: Plankton's Robotic Revenge	5	2013	7	5	0.05
13415	Wrath Unleashed	14	2004	12	18	0.05
13416	Yoru no Nai Kuni	6	2015	4	49	0.05
13417	Garou Densetsu 3: Road to the Final Victory	24	1996	10	244	0.05
13418	Bleach: Soul Carnival	17	2008	10	4	0.05
13419	Double Dragon Advance	9	2003	9	72	0.05
13420	Sesame Street: Elmo's A-to-Zoo Adventure	15	2010	6	20	0.05
13421	Family Fortunes	4	2009	6	52	0.05
13422	The Bible Game	14	2005	6	68	0.05
13423	Inspector Gadget: Gadget's Crazy Maze	13	2001	5	6	0.05
13424	World Fantasista	7	2002	1	10	0.05
13425	Yager	14	2003	7	29	0.05
13426	Fantastic Four: Rise of the Silver Surfer	4	2007	9	3	0.05
13427	Tabi no Yubisashi Kaiwachou DS: DS Series 1 Thai	4	2006	6	1	0.05
13428	Toukiden Kiwami	17	2014	9	49	0.05
13429	Grey's Anatomy: The Video Game	4	2009	11	6	0.05
13430	Tropico 3	15	2009	12	200	0.05
13431	Looney Tunes: Cartoon Conductor	4	2008	6	22	0.05
13432	Avatar: The Game	15	2009	9	6	0.05
13433	Futurama	14	2003	2	112	0.05
13434	Pool Hall Pro	1	2009	1	286	0.05
13435	Nazo Waku Yakata: Oto no Ma ni Ma ni	10	2011	6	13	0.05
13436	Choro Q 64 2: Hacha Mecha Grand Prix Race	12	1999	3	152	0.05
13437	Mighty No. 9	11	2016	2	42	0.05
13438	Plants vs. Zombies: Garden Warfare 2	15	2016	7	8	0.05
13439	Ape Escape	6	2010	2	4	0.05
13440	Activision Anthology	9	2003	6	5	0.05
13441	Gray Matter	5	2011	11	233	0.05
13442	Thrillville: Off the Rails	4	2007	12	18	0.05
13443	LEGO Friends	10	2013	9	20	0.05
13444	Secret Files: Tunguska	15	2006	11	319	0.05
13445	Wayne Gretzky's 3D Hockey '98	13	1997	1	14	0.05
13446	Nanda's Island	4	2009	5	421	0.05
13447	Hakuouki SSL: Sweet School Life	23	2014	11	279	0.05
13448	Trigger Man	14	2004	7	68	0.05
13449	Kimi ni Todoke: Tsutaeru Kimochi	4	2011	11	58	0.05
13450	Nora to Koku no Koubou: Kiri no Mori no Majo	4	2011	4	72	0.05
13451	Bad Boys: Miami Takedown	19	2004	7	90	0.05
13452	SpongeBob SquarePants: Plankton's Robotic Revenge	20	2013	7	5	0.05
13453	Short Track Racing: Trading Paint	7	2009	3	29	0.05
13454	Game no Kanzume Vol 1	25	1994	6	9	0.05
13455	Rat Attack!	13	1999	5	52	0.04
13456	Jewel Master: Cradle Of Rome 2	15	2011	5	71	0.04
13457	National Geographic Panda (US sales)	4	2008	8	6	0.04
13458	Sushi Go-Round	4	2010	8	281	0.04
13459	Danny Phantom: Urban Jungle	4	2006	9	29	0.04
13460	Sotsugyou II: Neo Generation	13	1995	8	452	0.04
13461	Summon Night Craft Sword Monogatari: Hajimari no Ishi	9	2005	4	58	0.04
13462	The King of Fighters 2002: Unlimited Match	7	2009	10	226	0.04
13463	Art of Fighting Anthology	7	2006	10	68	0.04
13464	Rapala Trophies	17	2006	1	5	0.04
13465	Phoenix Wright: Revived Turnabout	4	2008	6	13	0.04
13466	Mana Khemia: Alchemists of Al-Revis (JP sales)	7	2007	4	132	0.04
13467	Runaway: A Twist of Fate	15	2009	11	81	0.04
13468	Cheer We Go!	4	2010	6	80	0.04
13469	The Tale of Despereaux	1	2008	2	206	0.04
13470	The Hustle: Detroit Streets	7	2006	1	5	0.04
13471	Virtua Fighter CG Portrait Series Vol.6: Lau Chan	24	1995	6	9	0.04
13472	Tomoyo After: It's a Wonderful Life CS Edition	17	2009	11	434	0.04
13473	Guilty Gear XX Accent Core	7	2007	10	54	0.04
13474	Nihon Pro Mahjong Kishikai Kanshuu: Pro Ni Naru Mahjong DS	4	2005	6	91	0.04
13475	Atelier Escha & Logy: Alchemists of the Dusk Sky	23	2015	4	49	0.04
13476	Millipede / Super Breakout / Lunar Lander	9	2005	6	87	0.04
13477	World Trigger: Borderless Mission	23	2015	9	26	0.04
13478	Disney's Donald Duck: Goin' Quackers	19	2002	2	6	0.04
13479	RollerCoaster Tycoon	15		12	97	0.04
13480	Assault Rigs	13	1996	9	193	0.04
13481	Backyard Baseball '09	1	2008	1	11	0.04
13482	World Championship Spelling	4	2010	6	12	0.04
13483	Yes! PreCure 5	4	2007	9	26	0.04
13484	Bionicle Heroes	1	2007	7	22	0.04
13485	Tom Clancy's HAWX	15	2009	9	6	0.04
13486	Exist Archive: The Other Side of the Sky	23	2015	4	343	0.04
13487	Honda ATV Fever	1	2010	3	216	0.04
13488	Operation Flashpoint: Elite	14	2005	7	36	0.04
13489	Nobunaga's Ambition: Sphere of Influence - Sengoku Risshiden	11	2016	6	49	0.04
13490	Roswell Conspiracies: Aliens, Myths & Legends	13	2001	9	61	0.04
13491	Front Mission	4	2007	12	17	0.04
13492	Dead Island Definitive Collection	18	2016	9	42	0.04
13493	Sekai no Gohan Shaberu! DS Oryouri Navi	4	2008	6	1	0.04
13494	Rugby Challenge 3	6	2016	1	391	0.04
13495	Boktai 2: Solar Boy Django	9	2004	4	15	0.04
13496	Praetorians	15	2003	12	22	0.04
13497	Candace Kane's Candy Factory	4	2008	9	154	0.04
13498	Nobunaga's Ambition (3DS)	10	2013	8	49	0.04
13499	Angelique Duet	13	1998	12	49	0.04
13500	Shin Fortune Quest: Sokutaku no Kishi	13	1996	6	408	0.04
13501	Resident Evil 6	15	2012	7	13	0.04
13502	Crushed Baseball	9	2004	1	453	0.04
13503	Dark Arena	9	2002	7	29	0.04
13504	Just Sing! Vol. 2	4	2011	6	148	0.04
13505	Heatseeker	17	2007	9	36	0.04
13506	IL-2 Sturmovik: 1946	15	2006	8	6	0.04
13507	Jerry Rice and Nitus' Dog Football	1	2011	1	404	0.04
13508	TOCA Race Driver 2	14	2004	3	36	0.04
13509	I.Q. Remix+: Intelligent Qube	7	2000	5	4	0.04
13510	Sébastien Loeb Rally Evo	11	2016	3	454	0.04
13511	Growlanser	17	2009	4	72	0.04
13512	Trollz: Hair Affair!	9	2005	6	6	0.04
13513	Daito Giken Koushiki Pachi-Slot Simulator: Shake II	7	2007	6	362	0.04
13514	Grand Slam	13	1997	6	19	0.04
13515	Chou Gekijoban Keroro Gunsou: Gekishin Dragon Warriors de Arimasu!	4	2009	9	26	0.04
13516	The King of Fighters 2000	7	2002	10	455	0.04
13517	Coraline	4	2009	9	59	0.04
13518	FIFA Street 2	4	2006	1	8	0.04
13519	M&M's Beach Party	1	2009	6	87	0.04
13520	Dead Head Fred	17	2007	9	59	0.04
13521	D.C.F.S.: Da Capo Four Seasons	7	2005	11	153	0.04
13522	Hyperdimension Neptunia mk2	23	2014	9	266	0.04
13523	Disney's Meet the Robinsons	19	2007	9	33	0.04
13524	Hanayori Danshi: Koi Seyo Onago	4	2008	11	15	0.04
13525	Minna ga Shuyaku no NHK Kouhaku Quiz Kassen	1	2009	6	1	0.04
13526	Puyo Puyo Tetris	6	2014	5	9	0.04
13527	Sonic the Hedgehog 2 (8-bit)	30	1992	2	9	0.04
13528	FlatOut 2	14	2006	3	90	0.04
13529	Rogue Trooper	7	2006	7	22	0.04
13530	Spy Fiction	7	2003	9	9	0.04
13531	R.B.I. Baseball 2016	18	2016	1	456	0.04
13532	Justice League: Chronicles	9	2003	2	40	0.04
13533	Resident Evil Director's Cut	6	2006	9	13	0.04
13534	Doko Demo Issho: Let's Gakkou!	17	2006	6	4	0.04
13535	Monster Trux Arenas: Special Edition	1	2007	3	295	0.04
13536	Conflict: Desert Storm II - Back to Bagdhad	19	2004	7	112	0.04
13537	Top Gun	4	2006	8	12	0.04
13538	Gem Smashers	10	2011	2	68	0.04
13539	Split/Second	15	2010	3	33	0.04
13540	B's-LOG Party♪	17	2010	11	279	0.04
13541	King Arthur	19	2004	9	15	0.04
13542	Chicken Shoot	9	2005	9	87	0.04
13543	Dai Senryaku VII: Modern Military Tactics	14	2003	12	457	0.04
13544	Gormiti: The Lords of Nature!	1	2010	11	15	0.04
13545	White Album 2: Shiawase no Mukougawa	6	2012	11	316	0.04
13546	Painkiller: Hell & Damnation	6	2013	7	125	0.04
13547	Go Go Ackman 3	8	1995	2	58	0.04
13548	WSC Real 11: World Snooker Championship	5	2011	1	102	0.04
13549	Advance Guardian Heroes	9	2004	4	6	0.04
13550	Casual Mania!	4	2010	5	275	0.04
13551	Castle of Shikigami III	1	2007	7	148	0.04
13552	Star X	9	2002	7	176	0.04
13553	Jewel Quest 5: The Sleepless Star	15	2011	9	276	0.04
13554	Get Up and Dance	6	2011	6	342	0.04
13555	The King of Fighters Kyo	13	1998	10	226	0.04
13556	Yowamushi Pedal	10	2015	9	26	0.04
13557	WarTech: Senko no Ronde	5	2006	10	6	0.04
13558	Record of Agarest War: Marriage	17	2012	4	266	0.04
13559	San-X Land: Theme Park de Asobou!	4	2006	9	333	0.04
13560	Corpse Party: Book of Shadows	17	2011	11	357	0.04
13561	428: Fuusa Sareta Shibuya de	17	2009	11	130	0.04
13562	Tennis no Oji-Sama: DokiDoki Survival - Sanroku no Mystic	7	2006	11	15	0.04
13563	Starry ? Sky: After Spring	17	2009	6	316	0.04
13564	Life is Strange	15	2016	11	17	0.04
13565	Need for Speed: ProStreet	15	2007	3	8	0.04
13566	Naruto Shippuden: Dairansen! Kage Bunshin Emaki	4	2008	9	197	0.04
13567	Mechanic Escape	6	2012	2	59	0.04
13568	Pro Evolution Soccer 2016	15	2015	1	15	0.04
13569	Twilight Syndrome: Kinjiratera Toshi Densetsu	4	2008	11	130	0.04
13570	True Love Story 3	7	2001	8	155	0.04
13571	Little Battlers eXperience W	23	2012	4	38	0.04
13572	The Smurfs	13	1998	9	53	0.04
13573	Strike Force Bowling	14	2004	1	68	0.04
13574	Chessmaster	9	2002	6	6	0.04
13575	Blood Will Tell: Tezuka Osamu's Dororo	7	2004	11	9	0.04
13576	The Kore Gang	1	2010	2	458	0.04
13577	Red Ninja: End of Honor	7	2005	9	24	0.04
13578	Kanuchi: Shiroki Tsubasa no Shou	7	2008	11	279	0.04
13579	Summer Athletics 2009	5	2009	1	459	0.04
13580	SX Superstar	14	2003	3	31	0.04
13581	Katekyoo Hitman Reborn! Battle Arena	17	2008	10	220	0.04
13582	Saint Seiya: The Hades	7	2006	10	26	0.04
13583	Saki Portable	17	2010	11	82	0.04
13584	Riding Stables: The Whitakers present Milton and Friends	10	2011	1	233	0.04
13585	Naruto Shippuuden: Shinobi Retsuden III	4	2009	9	197	0.04
13586	Metal Gear Solid: Digital Graphic Novel	17	2006	6	15	0.04
13587	Max & the Magic Marker	1	2011	2	54	0.04
13588	Outlaw Tennis	14	2005	1	64	0.04
13589	Free Running	1	2009	1	338	0.04
13590	Ore no Imouto ga Konna ni Kawaii Wake ga Nai Happy EnD	6	2013	8	26	0.04
13591	Barnyard	1	2006	9	29	0.04
13592	SPRay	1	2008	9	49	0.04
13593	No Rules: Get Phat	9	2001	9	73	0.04
13594	Battle Rage	1	2008	7	295	0.04
13595	Zombi Daisuki	4	2011	9	120	0.04
13596	Igor: The Game	4	2008	11	460	0.04
13597	LEGO Indiana Jones: The Original Adventures	15	2008	9	18	0.04
13598	Card Fight!! Vanguard G: Stride to Victory!!	10	2016	6	246	0.04
13599	Negima!? Chou Mahora Taisen Kattoiin, Keiyaku Shikkou Dechai masuu	4	2006	11	220	0.04
13600	Doraemon: Shin Nobita no Daimakyou Peko to 5-nin no Tankenta	10	2014	9	246	0.04
13601	Challenge Me: Maths Workout	4	2009	5	60	0.04
13602	The Invincible Iron Man	9	2002	9	5	0.04
13603	NASCAR 07	14	2006	3	8	0.04
13604	Refrain no Chika Meikyuu to Majo no Ryodan	23	2016	9	132	0.04
13605	Dance Dance Revolution Disney Mix	13	2000	8	15	0.04
13606	Maken Shao: Demon Sword	7	2001	9	162	0.04
13607	Playmobil Top Agents	4	2010	9	259	0.04
13608	The Monkey King: The Legend Begins	1	2007	7	201	0.04
13609	Super Robot Taisen OG Infinite Battle	6	2013	10	26	0.04
13610	Scaler	14	2004	2	64	0.04
13611	Attack of the Movies 3D	5	2010	7	35	0.04
13612	BeatMania IIDX 16: Empress + Premium Best	7	2009	8	15	0.04
13613	FIFA Soccer 2003 (weekly jp sales)	7	2002	1	8	0.04
13614	Emergency Room: Real Life Rescues	4	2009	8	12	0.04
13615	High Heat Baseball 2002	13	2001	1	78	0.04
13616	Utawarerumono: Futari no Hakuoro	11	2016	6	316	0.04
13617	Puyo Pop Fever	17	2004	5	151	0.04
13618	The Sims 2: Pets	15	2006	8	8	0.04
13619	Hana to Ikimo no Rittai Zukan	10	2011	6	1	0.04
13620	Bloody Roar Extreme	14	2003	10	69	0.04
13621	Platinum Sudoku	4	2007	5	6	0.04
13622	Kamen Rider: Battride War Genesis	6	2016	9	26	0.04
13623	Tennis Masters Series 2003	14	2002	1	360	0.04
13624	The Sims Deluxe	15	2002	8	8	0.04
13625	Port Royale 2	15	2004	12	417	0.04
13626	Amagami	23	2014	11	278	0.04
13627	Duke Nukem Trilogy: Critical Mass	4	2011	7	42	0.04
13628	MLB SlugFest 20-04	19	2003	1	40	0.04
13629	Pocket Pool	17	2007	9	232	0.04
13630	Jissen Pachislot Hisshouhou! Hokuto no Ken DS	4	2005	6	9	0.04
13631	Lise no Atelier: Ordre no Renkinjutsushi	4	2007	4	243	0.04
13632	Black & White	15	2001	12	8	0.04
13633	NCIS	15	2011	11	6	0.04
13634	The Cube	1	2012	9	137	0.04
13635	Company of Heroes: Tales of Valor	15	2009	12	29	0.04
13636	Myth Makers: Trixie in Toyland	1	2008	2	295	0.04
13637	NatGeo Challenge! Wild Life	1	2010	6	194	0.04
13638	Breath of Fire III	17	2005	4	13	0.04
13639	Torino 2006	14	2006	1	3	0.04
13640	Devil May Cry 4	15	2008	9	13	0.04
13641	Amnesia	17	2011	11	279	0.04
13642	Tabi no Yubisashi Kaiwachou DS: DS Series 5 Deutsch	4	2006	6	1	0.04
13643	Fashion Week Jr. Designer	4	2009	8	12	0.04
13644	Jewel Quest Mysteries 2: Trail of the Midnight Heart	4	2011	5	54	0.04
13645	Sherlock Holmes: Secret of The Silver Earring	1	2010	11	81	0.04
13646	Metal Slug 4 & 5	14	2005	7	226	0.04
13647	Great Battle Full Blast	17	2012	9	26	0.04
13648	Guilty Gear XX Accent Core	1	2007	10	12	0.04
13649	Hitman (2016)	11	2016	9	17	0.04
13650	World Poker Tour	17	2006	6	3	0.04
13651	Saint Seiya: Soldiers' Soul	6	2015	10	26	0.04
13652	7 Days to Die	18	2016	9	174	0.04
13653	Digimon Rumble Arena 2	19	2004	10	11	0.04
13654	Doki Doki! PreCure Narikiri Life!	10	2013	9	26	0.04
13655	Gravity Falls: Legend of the Gnome Gemulets	10	2015	9	6	0.04
13656	Watashi no Relaxuma	4	2007	8	138	0.04
13657	Phantom Kingdom Portable	17	2011	4	132	0.04
13658	Pac-Man World Rally	17	2006	3	26	0.04
13659	Way of the Samurai 2 Portable	17	2009	9	130	0.04
13660	Heroes of Might and Magic V	15	2006	12	6	0.04
13661	Mazes of Fate DS	4	2008	4	327	0.04
13662	Code Geass: Hangyaku no Lelouch R2 - Banjou no Geass Gekijou	4	2008	6	26	0.04
13663	Hellboy: The Science of Evil	17	2008	9	15	0.04
13664	Virtua Tennis 4	15	2011	1	9	0.04
13665	Mortimer Beckett and the Secrets of Spooky Manor	1	2008	5	191	0.04
13666	Farm Frenzy 3	15	2009	12	461	0.04
13667	GRID	15		3	36	0.04
13668	Little Busters! Converted Edition	17	2010	11	434	0.04
13669	Unison: Rebels of Rhythm & Dance	7	2000	6	49	0.04
13670	Ferrari Challenge Trofeo Pirelli	6	2008	3	158	0.04
13671	WTF: Work Time Fun	17	2005	5	4	0.04
13672	Tennis no Oji-Sama: DokiDoki Survival - Umibe no Secret	7	2007	1	15	0.04
13673	Major League Baseball 2K12	15	2012	1	3	0.04
13674	B.L.U.E.: Legend of Water	13		11	34	0.04
13675	Dark Half	8	1996	4	25	0.04
13676	System 3 presents Ferrari Challenge Trofeo Pirelli	4	2008	3	158	0.04
13677	Luxor: Pharaoh's Challenge	1		5	328	0.04
13678	Nitroplus Blasterz: Heroines Infinite Duel	11	2015	10	220	0.04
13679	Imperial Glory	15	2005	12	22	0.04
13680	Lionel Trains: On Track	4	2006	9	293	0.04
13681	Hayate no Gotoku! Ojousama Produce Daisakusen Boku Iro ni Somare! Gakkou-Hen	4	2008	8	15	0.04
13682	Shukufuku no Campanella Portable	17	2010	11	153	0.04
13683	The Wolf Among Us	5	2011	11	174	0.04
13684	Sonic PC Collection	15	2009	6	9	0.04
13685	Horses 3D	10	2012	6	6	0.04
13686	Yourself Fitness	7	2005	1	375	0.04
13687	Chaos;Head - Love Chu*Chu!	17	2011	11	357	0.04
13688	Lost Planet 3	15	2013	7	13	0.04
13689	Paws & Claws: Regal Resort	4	2010	8	29	0.04
13690	Hannspree Ten Kate Honda: SBK Superbike World Championship	17	2007	3	194	0.04
13691	Star Trek: Shattered Universe	14	2004	8	64	0.04
13692	12Riven: The Psi-Climinal of Integral	7	2008	11	462	0.04
13693	Battle Spirits: Digital Starter	4	2010	4	26	0.04
13694	Rise of Nations	15	2003	12	2	0.04
13695	Deadliest Warrior: Ancient Combat	5	2012	10	463	0.04
13696	WarJetz	7	2001	7	78	0.04
13697	Breeding Stud 2	13	1998	1	15	0.04
13698	Banushi Life Game: Winner's Circle	4	2007	1	106	0.04
13699	Catwoman	9	2004	9	8	0.04
13700	Gakuen Hetalia Portable	17	2011	11	279	0.04
13701	Gitaroo Man Lives!	17	2006	6	49	0.04
13702	Chibi Maruko-Chan DS: Maru-Chan no Machi	4	2009	5	26	0.04
13703	Capcom Fighting Evolution	14	2005	10	13	0.04
13704	XCOM 2	11	2016	12	3	0.04
13705	Company of Heroes: Opposing Fronts	15	2007	12	29	0.04
13706	Novastorm	13	1995	7	88	0.04
13707	Shiren the Wanderer 4 - God's Eye and the Demon's Navel	17	2012	4	130	0.04
13708	PopCap Arcade Vol 1	5	2007	5	208	0.04
13709	Dead Ball Zone	13	1998	1	14	0.04
13710	NBA in the Zone 2000	12	2000	1	15	0.04
13711	Men of War: Vietnam	15	2011	12	54	0.04
13712	NBA In The Zone '99	12	1998	1	15	0.04
13713	Winning Post World 2010	6	2010	1	49	0.04
13714	Do-Konjou Shougakussei: Bon Bita - Hadaka no Choujou Ketsusen!! Bita vs. Dokuro Dei!	4	2010	9	26	0.04
13715	SWAT: Target Liberty	17	2007	7	24	0.04
13716	OutRun 2006: Coast 2 Coast	17	2006	3	9	0.04
13717	Haunted Casino	24	1996	11	464	0.04
13718	World Series Baseball	24	1994	1	9	0.04
13719	Ou to Maou to 7-nin no Himegimitachi: Shin Ousama Monogatari	23	2012	9	15	0.04
13720	Aeon Flux	7	2005	9	29	0.04
13721	Chicken Blaster	4	2009	7	202	0.04
13722	Summer Challenge: Athletics Tournament	6	2011	1	148	0.04
13723	S.Y.K Renshouden Portable	17	2011	11	279	0.04
13724	Metal Max Returns	8	1995	4	345	0.04
13725	Shattered Union	14	2005	12	3	0.04
13726	Off-Road Drive	15	2011	3	437	0.04
13727	Hanaoni: Yume no Tsudzuki	17	2012	9	279	0.04
13728	Mat Hoffman's Pro BMX 2	19	2002	1	5	0.04
13729	Unchained Blades	10	2011	4	246	0.04
13730	Harley-Davidson: Road Trip	1	2010	3	154	0.04
13731	Gal*Gun	5	2011	7	82	0.04
13732	GoGo's Crazy Bones	4	2012	9	171	0.04
13733	MLB 2K12 / NBA 2K12 Combo Pack	5	2012	1	3	0.04
13734	Grand Theft Auto: Vice City	15	2003	9	3	0.04
13735	NHL Hitz Pro	19		1	54	0.04
13736	Ookami Kakushi	17	2009	9	15	0.04
13737	Zen-Nippon GT Senshuken	8	1995	3	58	0.04
13738	North American Hunting Extravaganza 2	1	2010	1	54	0.04
13739	City Builder	1	2010	6	465	0.04
13740	PD Ultraman Battle Collection 64	12	1999	12	26	0.04
13741	Monaco Grand Prix	12	1999	3	6	0.04
13742	Worms Armageddon	12	1999	12	53	0.04
13743	Rally Challenge 2000	12	1999	3	157	0.04
13744	Looney Tunes Duck Dodgers Starring: Daffy Duck	12	2000	2	53	0.04
13745	Superman: Countdown to Apokolips	9	2003	2	11	0.04
13746	Deadly Arts	12	1998	10	15	0.04
13747	Kikou Heidan J-Phoenix 2	7	2003	9	152	0.04
13748	Sengoku Musou 3 Z Special	17	2012	9	210	0.04
13749	Dragon's Lair 3D: Return to the Lair	19	2002	2	29	0.04
13750	Harukanaru Toki no Naka de 5	17	2011	4	49	0.04
13751	Meteos: Disney Magic	4	2007	5	33	0.04
13752	Worms 4: Mayhem	14	2005	12	36	0.04
13753	Resident Evil: Operation Raccoon City	15	2012	9	13	0.04
13754	Winning Post 7 2012	17	2012	1	210	0.04
13755	Samurai Warriors 2: Empires	5	2007	9	49	0.04
13756	Super Black Bass Fishing	4	2005	1	35	0.04
13757	Point Blank 2	13	1998	7	26	0.04
13758	Who Wants to Be a Millionaire: 3rd Edition	4	2010	6	6	0.04
13759	Test Drive: Ferrari Legends	6	2012	3	54	0.04
13760	Saru! Get You! Pipo Saru Senki	17	2009	4	4	0.04
13761	Infamous: First Light	11	2014	9	4	0.04
13762	J.League Pro Soccer Club o Tsukurou! 8 Euro Plus	17	2013	1	9	0.04
13763	Imabikisou	6	2007	11	9	0.04
13764	Logic Machines	4	2009	5	89	0.04
13765	One Piece: Burning Blood	18	2016	10	26	0.04
13766	Hakuouki: Reimeiroku Portable	17	2011	11	279	0.04
13767	Sega Ages 2500 Series Vol. 33: Fantasy Zone Complete Collection	7	2008	7	9	0.04
13768	Antz Extreme Racing	7	2002	3	90	0.04
13769	Motto TOEIC Test DS Training	4	2008	6	141	0.04
13770	Super Robot Gakuen	4	2009	11	26	0.04
13771	Atelier Iris 3: Grand Phantasm (JP Sales)	7	2006	4	49	0.04
13772	Terraria	18	2014	9	12	0.04
13773	Dolly Kanon Dokidoki Tokimeki Himitsu no Ongaku Katsudou Start Desu!!	10	2014	11	406	0.04
13774	Empire Earth III	15	2007	12	24	0.04
13775	Mike Tyson Boxing	9	2002	1	6	0.04
13776	Jojo's Fashion Show: Design in a Dash!	4	2009	8	6	0.04
13777	The Legend of Heroes: Trails in the Sky First Chapter	6	2012	4	254	0.04
13778	Go Diego Go!: Safari Rescue	7	2008	9	3	0.04
13779	Deal or No Deal: Special Edition	4	2010	6	75	0.04
13780	Clannad	7	2006	11	466	0.04
13781	Nobunaga's Ambition: Sphere of Influence	11	2014	12	49	0.04
13782	Fisherman's Challenge	7	2003	1	15	0.04
13783	Katekyoo Hitman Reborn! Battle Arena 2 - Spirits Burst	17	2009	10	220	0.04
13784	Akko ni Omakase! Brain Shock	4	2006	6	94	0.04
13785	Mission: Impossible - Operation Surma	9	2003	2	11	0.04
13786	Guild Wars Trilogy	15	2005	4	44	0.04
13787	Patrician IV	15	2010	12	200	0.04
13788	Deadliest Warrior: Ancient Combat	6	2012	10	463	0.04
13789	King of Fighters: Maximum Impact Regulation A	7	2007	10	226	0.04
13790	Who Wants to be a Millionaire: 1st Edition	4	2007	6	6	0.04
13791	Star Ocean 5: Integrity and Faithlessness	6	2016	4	17	0.04
13792	Date A Live: Rine Utopia	6	2013	11	266	0.04
13793	CSI: Fatal Conspiracy	15	2010	11	6	0.04
13794	Durarara!! 3way Standoff: Alley	17	2011	11	153	0.04
13795	Surf's Up	6	2007	1	6	0.04
13796	Fritz Chess	6	2009	12	42	0.04
13797	The Da Vinci Code	14	2006	9	3	0.04
13798	Famicom Mini: Clu Clu Land	9	2004	5	1	0.04
13799	Astro Boy: The Video Game	17	2009	9	59	0.04
13800	Metal Slug XX	17	2009	7	334	0.04
13801	Sacred Blaze	7	2009	12	386	0.04
13802	Rollin' Rascals	4	2009	5	71	0.04
13803	Haneru no Tobira DS: Tanshuku Tetsudou no Yoru	4	2007	6	26	0.04
13804	Thoroughbred Breeder II Plus	13	1995	8	234	0.04
13805	Pure Pinball	14	2004	6	165	0.04
13806	Hanaoni: Koisomeru Koku - Eikyuu no Shirushi	17	2011	11	279	0.04
13807	Zac to Ombra: Maboroshi no Yuuenchi	4	2010	11	15	0.04
13808	Resident Evil: Revelations	15	2013	9	13	0.04
13809	Daikaijuu Battle: Ultra Coliseum DX - Ultra Senshi Daishuuketsu	1	2010	10	26	0.04
13810	Shadow of the Colossus	6	2011	9	4	0.04
13811	Phantom Breaker	5	2011	10	357	0.04
13812	Gummy Bears Mini Golf	1	2010	1	54	0.04
13813	Brothers In Arms DS	4	2007	7	6	0.04
13814	Valhalla Knights 2: Battle Stance	17	2009	4	220	0.04
13815	99 no Namida	4	2008	11	26	0.04
13816	Clannad	17	2008	11	434	0.04
13817	Cyber Troopers Virtual-On Marz	7	2003	10	9	0.04
13818	Headhunter: Redemption	7	2004	9	9	0.04
13819	Ookami to Koushinryou: Boku to Horo no Ichinen	4	2008	11	429	0.04
13820	Bomberman: Act Zero	5	2006	5	15	0.04
13821	Stuntman	9	2003	3	11	0.04
13822	Time Travelers	10	2012	11	54	0.04
13823	Burnout Paradise: The Ultimate Box	5	2009	3	8	0.04
13824	The Chase: Felix Meets Felicity	4	2009	9	11	0.04
13825	Stoked: Big Air Edition	5	2009	1	26	0.04
13826	Syndicate Wars	13	1997	12	8	0.04
13827	Castlevania: Lords of Shadow 2	15	2014	9	15	0.04
13828	Draglade (JP sales)	4	2007	10	12	0.04
13829	Herc's Adventures	13	1997	9	19	0.04
13830	Tiger Woods PGA Tour Golf	9	2002	1	6	0.04
13831	Twin Strike: Operation Thunder	1	2008	7	75	0.04
13832	BlazBlue: Chrono Phantasma Extend	6	2015	9	148	0.04
13833	All Points Bulletin	15	2010	4	8	0.04
13834	Romance of the Three Kingdoms 13	6	2015	9	49	0.04
13835	The Movies	15	2005	8	5	0.04
13836	SuperCar Challenge	6	2009	3	158	0.04
13837	Dreamfall: The Longest Journey	14	2006	11	90	0.04
13838	The Sims 4: Spa Day	15	2015	8	8	0.04
13839	Tokimeki Mahjong Paradise: Koi no Tenpai Beat	24	1995	6	467	0.04
13840	Yuki Yuna is a Hero: Memory of the Forest	23	2015	9	246	0.04
13841	JASF: Jane's Advanced Strike Fighters	15	2011	8	42	0.04
13842	Kidou Gekidan Haro Ichiza Gundam Mahjong DS: Oyaji nimo Agarareta koto nai noni!	4	2005	6	26	0.04
13843	Blue Roses: Yousei to Aoi Hitomi no Senshitachi	17	2010	11	132	0.04
13844	Zatch Bell! Mamodo Fury	19	2005	10	26	0.04
13845	Dora's Big Birthday Adventure	7	2010	6	3	0.04
13846	PopStar Guitar	7	2008	6	165	0.04
13847	Haikyu!! Cross Team Match!	10	2016	11	26	0.04
13848	NHL Blades of Steel 2000	13	1999	1	15	0.04
13849	Outlaw Volleyball Remixed	7	2004	1	64	0.04
13850	The Adventures of Darwin	7	2006	12	287	0.04
13851	Scarface: The World is Yours	15	2006	9	24	0.04
13852	Blood Bowl	15	2009	1	81	0.04
13853	FIFA World Cup Germany 2006	4	2006	1	8	0.04
13854	Supreme Commander: Forged Alliance	15	2007	12	29	0.04
13855	Klonoa Heroes: Densetsu no Star Medal	9	2002	4	26	0.04
13856	Hyperdimension Neptunia Victory II	11	2015	4	285	0.04
13857	Pajama Sam: You are What You Eat From Your Head to Your Feet	13	2001	11	53	0.04
13858	Sid Meier's Railroads!	15	2006	8	3	0.04
13859	Jig-A-Pix: Pets	4	2009	5	202	0.04
13860	Brothers: A Tale of Two Sons	18	2015	11	12	0.04
13861	Warhammer: Dark Omen	13	1998	12	8	0.04
13862	Mobile Suit Gundam: Mokuba no Kiseki	17	2012	9	26	0.04
13863	Denki Blocks!	9	2001	5	115	0.04
13864	A Ressha de Ikou DS	4	2009	8	241	0.04
13865	Harukanaru Toki no Naka de 4: Aizouban	17	2010	4	49	0.04
13866	Tsurugi no Machi no Ihoujin: Kuro no Kyuuden	23	2015	4	468	0.04
13867	Colin McRae Rally 3	14	2002	3	36	0.04
13868	Ballistic	13	1999	5	11	0.04
13869	Paddington: Adventures in London	10	2015	5	102	0.04
13870	Nobunaga's Ambition: Sphere of Influence - Sengoku Risshiden	23	2016	6	49	0.04
13871	Caesar IV	15	2006	12	24	0.04
13872	Sega Rally 2006	7		3	54	0.04
13873	Song of the Deep	18	2016	9	416	0.04
13874	I'm A Celebrity: Get Me Out of Here!	4	2009	6	52	0.04
13875	Gundam Battle Online	22	2001	9	26	0.04
13876	Harry Potter and the Order of the Phoenix	15	2007	9	8	0.04
13877	Shonen Jump's One Piece: Grand Adventure	19	2006	10	26	0.04
13878	Holly Hobbie & Friends	4	2007	6	35	0.04
13879	Kevin Van Dam: Big Bass Challenge	1	2010	1	75	0.04
13880	Stolen	7	2005	9	318	0.04
13881	Monster High: New Ghoul in School	5	2015	9	231	0.04
13882	Glacier2	1	2009	3	75	0.04
13883	Rugby Challenge 3	11	2016	1	391	0.04
13884	Memories Off 6: T-Wave	7	2008	11	357	0.04
13885	Superstars V8 Racing	6	2009	3	194	0.04
13886	Halo: Combat Evolved	15	2003	7	2	0.04
13887	Hatsune Miku: Project Diva X	11	2016	6	9	0.04
13888	Bullet Girls 2	23	2016	9	59	0.04
13889	Famicom Remix Best Choice	10	2015	9	1	0.04
13890	Pro Race Driver	14	2003	3	36	0.04
13891	Sleepover Party	1	2009	6	6	0.04
13892	100 Classic Games	4	2011	6	142	0.04
13893	Ide Yosuke no Mahjong Kazoku	13	1995	6	260	0.04
13894	Richard Burns Rally	15	2004	3	112	0.04
13895	WRC: FIA World Rally Championship	17	2005	3	4	0.04
13896	Quiz Mobile Gundam: Toi Senshi DX	17	2006	5	26	0.04
13897	R-Type Command (correct US sales)	17	2007	12	71	0.04
13898	E.T. The Extra-Terrestrial: Interplanetary Mission	13	2001	2	6	0.04
13899	Story Hour: Fairy Tales	1	2008	11	87	0.04
13900	Dynasty Warriors Vol. 2 (JP sales)	17	2006	9	49	0.04
13901	Countdown Vampires	13	1999	11	26	0.04
13902	Crypt Killer	13	1997	7	15	0.04
13903	Tokumei Sentai Go-Busters	4	2012	9	26	0.04
13904	Dramatic Soccer Game: Nippon Daihyou Senshu Ninarou!	7	2002	1	25	0.04
13905	The Treasures of Montezuma	4	2010	5	275	0.04
13906	Saints Row 2	15	2009	9	29	0.04
13907	Harry Potter and the Prisoner of Azkaban	15	2004	9	8	0.04
13908	Battle Hunter	13	1999	12	162	0.04
13909	PO'ed	13	1996	7	346	0.04
13910	Heathcliff! Frantic Foto	4	2010	6	216	0.04
13911	Adidas Power Soccer	13	1996	1	88	0.04
13912	LEGO Jurassic World	15	2015	9	20	0.04
13913	Secret Files 2: Puritas Cordis	15	2009	11	42	0.04
13914	Darklight Conflict	13	1997	8	8	0.04
13915	Dragon Ball: Advanced Adventure	9	2004	9	26	0.04
13916	Art of Fighting 3: The Path of the Warrior	27	1996	10	244	0.04
13917	Rabbids Land	20	2012	6	6	0.04
13918	Civilization Beyond Earth: Rising Tide	15	2015	12	3	0.04
13919	The Ripping Friends	9	2002	9	29	0.04
13920	Rodea the Sky Soldier	10	2015	9	132	0.04
13921	Konami Arcade Classics	13	1999	6	15	0.04
13922	Hunter x Hunter: Wonder Adventure	17	2012	9	26	0.04
13923	Super Army War	9	2005	9	458	0.04
13924	Ao no Exorcist: Genkoku no Labyrinth	17	2012	9	26	0.04
13925	Don Bradman Cricket 14	18	2015	1	339	0.04
13926	Echo Night Beyond	7	2004	11	237	0.04
13927	Minna no Chizu	17	2006	6	469	0.04
13928	Doom II: Hell on Earth	9	2002	7	5	0.04
13929	Taikou Risshiden V	17	2009	12	49	0.04
13930	Shin Hayarigami	6	2014	11	132	0.04
13931	Jikkyou Powerful Major League	19	2006	1	15	0.04
13932	Train Simulator 2016	15	2015	8	54	0.04
13933	Corpse Party: Blood Covered - Repeated Fear	10	2015	11	357	0.04
13934	Suzumiya Haruhi no Tsuisou	17	2011	11	26	0.04
13935	Zoo Hospital	4	2007	8	22	0.04
13936	Evolution Skateboarding	19	2002	1	15	0.04
13937	Greg Hastings' Tournament Paintball Max'd	4	2006	7	5	0.04
13938	The Idolm@ster: Must Songs - Red Board / Blue Board	23	2015	6	26	0.04
13939	Jikkyou World Soccer 2002	7	2002	1	15	0.04
13940	Tenshou Gakuen Gekkouroku	7	2006	11	370	0.04
13941	Ski-Doo Snowmobile Challenge	5	2009	3	353	0.04
13942	Aquanaut's Holiday: Kakusareta Kiroku	6	2008	11	4	0.04
13943	Real Soccer 2008	4	2007	1	6	0.04
13944	Little Red Riding Hood's Zombie BBQ	4	2008	7	154	0.04
13945	Texas Hold 'Em Poker DS	4	2005	6	35	0.04
13946	DuckTales: Remastered	5	2013	9	13	0.04
13947	APB Reloaded	15	2011	4	470	0.04
13948	Railroad Tycoon 3	15	2003	12	214	0.04
13949	Magical Starsign (JP sales)	4	2006	4	1	0.04
13950	Big Mutha Truckers	9	2005	3	87	0.04
13951	DT Carnage	17	2009	3	95	0.04
13952	Resident Evil 6	18	2016	7	13	0.04
13953	Teenage Zombies: Invasion of the Alien Brain Thingys	4	2008	11	151	0.04
13954	Ar Nosurge: Ode to an Unborn Star	23	2014	4	49	0.04
13955	Warriors Orochi 3	18	2014	9	49	0.04
13956	Monster High: New Ghoul in School	10	2015	9	231	0.04
13957	Ragnarok Odyssey	6	2014	4	67	0.04
13958	Rugby 08	7	2007	1	8	0.04
13959	GoPets: Vacation Island	4	2008	8	15	0.04
13960	Pia Carrot e Youkoso!! 2.5	22	2008	11	245	0.04
13961	Cy Girls	7	2004	9	15	0.04
13962	The Sum of All Fears	9	2002	7	6	0.04
13963	Da Capo I & II Plus Situation Portable	17	2010	11	153	0.04
13964	World of Tanks	5		7	34	0.04
13965	Hisshou Pachinko*Pachi-Slot Kouryaku Series DS Vol. 5: Shinseiki Evangelion - Tamashii no Kiseki	4	2010	6	59	0.04
13966	Bubble Bobble Double Shot	4	2007	5	71	0.04
13967	Minority Report: Everybody Runs	9	2002	9	5	0.04
13968	Monster Hunter Frontier Online: Season 9.0	5	2010	4	13	0.04
13969	Winning Post 8	23	2014	3	49	0.04
13970	C.O.R.E.	4	2009	7	327	0.04
13971	Garfield: The Search for Pooky	9	2003	2	103	0.04
13972	Rugby World Cup 2015	23	2015	1	6	0.04
13973	Galaxy Fight	24	1994	10	242	0.04
13974	Chaos Wars	7	2006	12	279	0.04
13975	Steambot Chronicles	7	2005	4	12	0.04
13976	Toki no Kizuna: Sekigahara Kitan	17	2012	9	279	0.04
13977	Mr. Driller	13	1999	5	26	0.04
13978	Norn9: Norn + Nonette	17	2013	11	279	0.04
13979	Super Hero Generation	23	2014	4	26	0.04
14072	My World, My Way (US sales)	4	2008	4	399	0.04
13980	Simple DS Series Vol. 15: The Kanshikikan 2 - Aratanaru 8-tsu no Jiken wo Touch seyo	4	2007	11	59	0.04
13981	Gumby vs. the Astrobots	9	2005	9	26	0.04
13982	Trine 2	15	2011	2	81	0.04
13983	Doraemon: Shin Nobita no Nihon Tanjou	10	2016	6	246	0.04
13984	Hisshou Pachinko*Pachi-Slot Kouryaku Series Vol. 13: Shinseiki Evangelion - Yakusoku no Toki	7	2008	6	59	0.04
13985	Worms: Ultimate Mayhem	15	2011	12	54	0.04
13986	Scaler	19	2004	2	3	0.04
13987	NHL Legacy	6	2015	9	8	0.04
13988	Chaos;Head Noah	5	2009	11	357	0.04
13989	Tears to Tiara Anecdotes: The Secret of Avalon	6	2009	12	316	0.04
13990	Legasista	6	2012	4	132	0.04
13991	Fatal Fury: Battle Archives Volume 1	7	2006	10	151	0.04
13992	The Night of the Rabbit	15	2013	11	390	0.04
13993	Harukanaru Toki no Naka de 3: Unmei no Meikyuu Aizouban	17	2009	11	49	0.04
13994	Rhapsody: A Musical Adventure	13	1998	4	132	0.04
13995	NHL 16	6	2015	1	8	0.04
13996	Destiny: The Collection	18	2016	7	5	0.04
13997	Music Maker: Rockstar	7	2009	6	219	0.04
13998	Fading Shadows	17	2008	5	471	0.04
13999	Formula 1 06	7	2006	3	4	0.04
14000	Without Warning	7	2005	7	13	0.04
14001	Minna de Jibun no Setsumeisho: B-Kata, A-Kata, AB-Kata, O-Kata	4	2008	6	67	0.04
14002	Smashing Drive	14	2002	3	26	0.04
14003	Age of Mythology: The Titans	15	2003	12	2	0.04
14004	Fighting Vipers 2	22	2000	10	9	0.04
14005	Teenage Mutant Ninja Turtles 3: Mutant Nightmare	14	2005	9	15	0.04
14006	Sudoku Ball Detective	1	2009	5	286	0.04
14007	12-Sai. Koisuru Diary	10	2016	11	406	0.04
14008	Castlevania: Lords of Shadow - Reverie	6	2011	9	15	0.04
14009	Napoleon Dynamite: The Game	17	2007	5	68	0.04
14010	Beatdown: Fists of Vengeance	14	2005	9	13	0.04
14011	Enchanted Arms (JP sales)	6	2007	4	6	0.04
14012	Monster Force	9	2002	7	21	0.04
14013	World of Goo	15	2008	5	472	0.04
14014	Onsei Kanjou Sokuteiki: Kokoro Scan	4	2007	6	9	0.04
14015	Clock Zero: Shuuen no Ichibyou Portable	17	2011	11	279	0.04
14016	San Goku Shi DS 3	4	2010	12	49	0.04
14017	Trick x Logic: Season 2	17	2010	11	4	0.04
14018	Challenge Me: Word Puzzles	4	2011	5	342	0.04
14019	Hakuouki: Zuisouroku	7	2009	11	279	0.04
14020	World in Conflict	15	2007	12	24	0.04
14021	World Championship Pool 2004	14	2003	1	163	0.04
14022	Derby Tsuku 5: Derby Uma o Tsukurou!	7	2006	1	9	0.04
14023	S.T.A.L.K.E.R.: Clear Sky	15	2008	7	42	0.04
14024	Jikkyou Powerful Major League 2009	1	2009	1	15	0.04
14025	SD Gundam Force: Showdown!	7	2004	7	26	0.04
14026	Ray Gigant	23	2015	4	26	0.04
14027	Negima!? 3-Jikanme ~Koi to Mahou to Sekaiju Densetsu~	7	2006	11	15	0.04
14028	Flow: Urban Dance Uprising	7	2005	6	6	0.04
14029	Ailu de Puzzle	17	2012	9	13	0.04
14030	World in Conflict: Complete Edition	15	2009	12	6	0.04
14031	True Pinball	13	1996	6	86	0.04
14032	Jane's Hotel	4	2010	8	54	0.04
14033	Stadium Games	9	2003	1	151	0.04
14034	RLH: Run Like Hell	14	2003	7	294	0.04
14035	Power Play Pool	4	2006	1	158	0.04
14036	J-League Pro Striker 2	21	1994	1	9	0.04
14037	Obscure	14	2004	11	473	0.04
14038	Caesar III	15	1998	12	24	0.04
14039	Super Robot Taisen: Scramble Commander the 2nd	7	2007	12	58	0.04
14040	Mahjong Taikai	4	2004	6	49	0.04
14041	Tomb Raider: Anniversary	15	2007	9	22	0.04
14042	Espgaluda II Black Label	5	2010	7	358	0.04
14043	The Croods: Prehistoric Party!	10	2013	6	59	0.04
14044	Bratz Kidz	4	2008	6	103	0.04
14045	Hot Potato!	9	2001	9	176	0.04
14046	Barbie and Her Sisters Puppy Rescue	10	2015	9	26	0.04
14047	Kiniro no Corda 2 f	17	2009	4	49	0.04
14048	Swords	1		10	54	0.04
14049	Winter Sports 3: The Great Tournament	6	2010	1	442	0.04
14050	Deception III: Dark Delusion	13	1999	4	49	0.04
14051	Gothic Universe	15	2007	4	259	0.04
14052	Ultimate Game Room	4	2009	6	35	0.04
14053	Alpha Protocol	15	2010	4	9	0.04
14054	Penguins of Madagascar	20	2014	9	26	0.04
14055	Nobunaga's Ambition II	10	2015	12	49	0.04
14056	DarkStar One	15	2006	8	6	0.04
14057	Half-Minute Hero 2	17		4	71	0.04
14058	Clockwork Empires	15		12	54	0.04
14059	Monster Kingdom: Jewel Summoner	17	2006	4	4	0.04
14060	Cook Wars	1	2009	6	6	0.04
14061	Kuroshitsuji: Phantom & Ghost	4	2009	9	17	0.04
14062	Petz: Catz Playground	4	2010	8	6	0.04
14063	Pirates: Duels on the High Seas	4	2008	9	60	0.04
14064	Fushigi no Dungeon: Fuurai no Shiren 5 - Fortune Tower to Unmei no Dice	4	2010	4	120	0.04
14065	Sins of a Solar Empire: Trinity	15	2010	12	200	0.04
14066	Shin Koihime Musou: Otome Ryouran * Sangokushi Engi - Shu-Hen	17	2010	11	444	0.04
14067	Mahjong 300	4	2011	5	191	0.04
14068	The Ant Bully	9	2006	2	40	0.04
14069	Sega Arcade Gallery	9	2003	6	29	0.04
14070	Crazy Machines	4	2008	5	233	0.04
14071	Astrology DS	4	2009	6	42	0.04
14073	Planescape: Torment	15	1998	4	118	0.04
14074	Tao Adventure: Curse Demon	4	2005	4	15	0.04
14075	Aegis of Earth: Protonovus Assault	23	2016	9	148	0.04
14076	Hello Kitty: Roller Rescue	15	2005	9	90	0.04
14077	Double Value!: ATV Thunder Ridge Riders / Monster Trucks Mayhem	4	2007	3	87	0.04
14078	A Game of Thrones: Genesis	15	2011	12	81	0.04
14079	Hotel Giant 2	15	2008	12	259	0.04
14080	NHRA Drag Racing: Countdown to the Championship	7	2007	3	29	0.04
14081	Black Stone: Magic & Steel	14	2003	4	29	0.04
14082	MLB 15: The Show	23	2015	1	4	0.04
14083	Puyo Pop Fever(us sales)	4	2004	5	151	0.04
14084	Hitman: Blood Money	15	2006	9	22	0.04
14085	Assassin's Creed Chronicles: China	11	2015	9	6	0.04
14086	The Cursed Crusade	15	2011	9	233	0.04
14087	Harukanaru Toki no Naka de: Maihitoyo	7	2006	11	49	0.04
14088	Painkiller: Hell Wars	14	2006	7	319	0.04
14089	Housekeeping	4		9	34	0.04
14090	FunkMaster Flex's Digital Hitz Factory	7	2003	6	131	0.04
14091	Star Wars Jedi Knight: Jedi Academy	15	2003	7	5	0.04
14092	Greg Hastings Paintball 2	6	2010	7	35	0.04
14093	Sangoku Koi Senki: Otome no Heihou!	17	2012	11	434	0.04
14094	Batman: A Telltale Game Series	11	2016	11	174	0.04
14095	Castlevania Bloodlines	21	1994	2	15	0.04
14096	Hakuouki: Zuisouroku DS	4	2011	11	279	0.04
14097	Might & Magic X: Legacy	15	2014	4	6	0.04
14098	Detective Conan: Prelude from the Past	17	2012	9	26	0.04
14099	Luminous Arc 3	4	2009	4	220	0.04
14100	Major League Baseball 2K8	17		1	54	0.03
14101	FabStyle	10	2011	12	49	0.03
14102	Rebel Raiders: Operation Nighthawk	7	2006	8	474	0.03
14103	Turbo: Super Stunt Squad	4	2013	1	59	0.03
14104	Zenkoku Dekotora Matsuri	1	2008	3	163	0.03
14105	Adventure Time: Explore the Dungeon Because I Don't Know!	20	2013	9	59	0.03
14106	Fast & Furious: Showdown	6	2013	9	5	0.03
14107	Alienators: Evolution Continues	9	2001	9	5	0.03
14108	Onechanbara Z Kagura	6	2013	9	59	0.03
14109	Marines: Modern Urban Combat	1	2010	7	342	0.03
14110	DoraMoji: Nobita no Kanji Daisakusen	10	2015	6	269	0.03
14111	Gekiatsu!! Pachi Game Tamashi: CR Evangelion - Hajimari no Fukuin	6	2010	6	54	0.03
14112	Supreme Ruler: Cold War	15	2011	12	317	0.03
14113	Travel Coach: Europe 1	4	2008	6	356	0.03
14114	Top Gun: Hard Lock	6	2012	9	12	0.03
14115	MX World Tour Featuring Jamie Little	14	2005	3	68	0.03
14116	XBLAZE Code: Embryo	6	2013	11	224	0.03
14117	The Idolmaster: Gravure For You! Vol. 4	6	2012	6	26	0.03
14118	RedCard 20-03	14	2002	1	40	0.03
14119	Katekyoo Hitman Reborn! DS: Fate of Heat II - Unmei no Futari	4	2009	4	220	0.03
14120	Puyo Puyo 7	17	2009	5	9	0.03
14121	Asterix & Obelix: Kick Buttix	7	2004	9	11	0.03
14122	Radiant Silvergun	24	1998	7	181	0.03
14123	Bounty Hounds	17	2006	9	26	0.03
14124	Care Bears - Care Quest	9	2005	9	103	0.03
14125	Apache: Air Assault	15	2010	8	475	0.03
14126	Cooking Mama: My Sweets Shop	10	2014	8	476	0.03
14127	Championship Manager Season 01/02	15	2001	1	22	0.03
14128	Even in a Game Listen to Me Girls. I Am Your Father!	17	2012	9	26	0.03
14129	Tokyo Majin Gakuen: Kenfuuchou	4	2008	11	220	0.03
14130	Boboboubo Boubobo: Ougi 87.5 Bakuretsu Hanage Shinken	9	2002	9	69	0.03
14131	Zatch Bell! Electric Arena	9	2003	10	58	0.03
14132	Boulder Dash: Rocks!	4	2007	5	413	0.03
14133	NHRA Drag Racing: Countdown to the Championship	17	2007	3	29	0.03
14134	The Void	15	2008	11	477	0.03
14135	TOCA Race Driver 3	14	2006	3	36	0.03
14136	Daito Giken Premium Pachi-Slot Collection: Yoshimune	7	2006	6	348	0.03
14137	Maximum Racing: Drag & Stock Racer	1	2010	3	125	0.03
14138	Sky Dancers	9	2005	9	68	0.03
14139	Silent Scope	9	2002	7	15	0.03
14140	Resident Evil 4 HD	11	2016	7	13	0.03
14141	World Series of Poker: Tournament of Champions 2007 Edition	7	2006	6	5	0.03
14142	Clever Kids: Pirates	4	2008	6	162	0.03
14143	Yggdra Union: We'll Never Fight Alone	9	2006	4	321	0.03
14144	Tour de France 2014	11	2014	1	81	0.03
14145	Gekiatsu!! Pachi Game Tamashi Max: Evangelion 7 x Seimei no Kodou	6	2012	6	478	0.03
14146	Rapala Tournament Fishing!	5	2006	1	5	0.03
14147	The Legend of Heroes: Trails in the Sky SC Evolution	23	2015	4	278	0.03
14148	Prey	15	2006	7	3	0.03
14149	Wangan Midnight	6	2007	3	106	0.03
14150	ESPN NBA 2Night 2002	7	2002	1	15	0.03
14151	Cabela's Dangerous Hunts 2	19	2005	1	5	0.03
14152	SpongeBob: HeroPants	10	2015	2	5	0.03
14153	Kekkaishi: Kokubourou no Kage	1	2007	9	26	0.03
14154	Trap Gunner: Countdown to Oblivion	13	1998	12	15	0.03
14155	Suzumiya Haruhi no Tsuisou	6	2011	11	26	0.03
14156	Mame Goma: Shiro to Kuro no Meikyuu	10	2012	9	132	0.03
14157	Crouching Tiger, Hidden Dragon	9	2003	9	6	0.03
14158	Clash of Elementalists	10	2013	9	54	0.03
14159	Simple DS Series Vol. 8: The Kanshikikan - Kinkyuu Shutsudou!! Jiken Genba wo Touch Seyo	4	2006	11	59	0.03
14160	Harukanaru Toki no Naka de Yumenoukihashi Special	7	2009	11	49	0.03
14161	Rise of Nations: Rise of Legends	15	2006	12	2	0.03
14162	Sabre Wulf	9		2	29	0.03
14163	Tsuyo Kiss: Mighty Heart	7	2006	11	479	0.03
14164	Zoo Tycoon	15	2001	12	2	0.03
14165	Gacharoku	7	2002	6	4	0.03
14166	SX Superstar	19	2003	3	31	0.03
14167	Cake Mania: Baker's Challenge	17	2008	5	154	0.03
14168	MotoGP	17	2006	3	4	0.03
14169	Zoo Vet: Endangered Animals	4	2008	8	12	0.03
14170	Deer Drive: Legends	10	2012	9	480	0.03
14171	Driven	9	2001	3	176	0.03
14172	Red Faction II	19	2003	7	29	0.03
14173	Criminal Girls 2	23	2015	4	132	0.03
14174	SD Gundam G Generation: Gather Beat 2	26	2001	12	26	0.03
14175	Original Story from Fairy Tail: Gekitotsu! Kardia Daiseidou	4	2011	4	69	0.03
14176	Who Wants to be a Millionaire: 1st Edition	1	2007	6	6	0.03
14177	Diabolik Lovers: Dark Fate	23	2015	9	279	0.03
14178	Battle Engine Aquila	7	2003	7	11	0.03
14179	Astonishia Story	17	2006	4	6	0.03
14180	Nobunaga's Ambition: Sphere of Influence - Sengoku Risshiden	6	2016	6	49	0.03
14181	Special Forces: Nemesis Strike	14	2005	7	318	0.03
14182	Women's Volleyball Championship	7	2007	1	130	0.03
14183	Junior Island Adventure	4	2011	5	54	0.03
14184	Jikkyou Powerful Pro Yakyuu Wii Ketteiban	1	2007	1	15	0.03
14185	MX vs. ATV Supercross	6	2014	3	125	0.03
14186	Rakushou! Pachi-Slot Sengen 5: Rio Paradise	7	2007	6	49	0.03
14187	Sacra Terra: Angelic Night	15	2011	5	191	0.03
14188	Teenage Mutant Ninja Turtles: Mutants in Manhattan	18	2016	9	5	0.03
14189	Battle Assault 3 featuring Gundam Seed	7	2004	9	26	0.03
14190	Crimson Tears	7	2004	4	13	0.03
14191	Hayate no Gotoku! Ojousama Produce Daisakusen Boku Iro ni Somare! Oyashiki-Hen	4	2008	8	15	0.03
14192	Batman Forever: The Arcade Game	13	1996	9	31	0.03
14193	Romance of the Three Kingdoms (3DS)	10	2013	12	49	0.03
14194	Electroplankton	4	2005	6	1	0.03
14195	Cabela's Outdoor Adventures	19	2005	1	5	0.03
14196	Makai Senki Disgaea 4: Fuuka & Desco-hen Hajime Mashita	6	2011	12	132	0.03
14197	Backyard NFL Football 2006	9	2005	1	11	0.03
14198	Game of Thrones (Telltale)	5	2015	11	174	0.03
14199	Mashiro Iro Symphony: *mutsu-no-hana	17	2011	11	449	0.03
14201	Monster Guardians	9	2001	4	15	0.03
14202	Sunday vs Magazine Shuuketsu! Choujou Daikessen	17	2009	10	15	0.03
14203	An American Tail: Fievel's Gold Rush	9	2002	2	232	0.03
14204	Dead or Alive Xtreme 3: Venus	23	2016	1	49	0.03
14205	Diabolik Lovers: More Blood	17	2013	11	279	0.03
14206	Magna Carta Portable	17	2006	4	58	0.03
14207	Red Faction: Guerrilla	15	2009	7	29	0.03
14208	The Italian Job	19	2003	3	22	0.03
14209	Crazy Chicken: Star Karts	4	2008	3	421	0.03
14210	Detective Conan: Phantom Rhapsody	10	2014	9	26	0.03
14211	Super Dodgeball Brawlers (jp sales)	4	2008	1	224	0.03
14212	Makai Senki Disgaea Portable: Tsuushin Taisen Hajime Mashita	17	2007	4	132	0.03
14213	M&Ms Shell Shocked	13	2001	9	481	0.03
14214	RACE On	15	2009	3	274	0.03
14215	K-On! After School Live!! HD Ver.	6	2012	9	9	0.03
14216	Metal Gear Solid: The Essential Collection (JP sales)	7	2007	11	15	0.03
14217	Overlord II	15	2009	9	36	0.03
14218	Young Justice: Legacy	1	2013	9	26	0.03
14219	3D Baseball	13	1996	1	147	0.03
14220	Pachitte Chonmage Tatsujin 12: Pachinko Ultraman	7	2007	6	378	0.03
14221	First Queen: Ornic Senki	8	1994	4	267	0.03
14222	Call of Juarez: Bound in Blood	15	2009	7	6	0.03
14223	Dream C Club Zero	5	2011	8	59	0.03
14224	Shining Stars	4	2008	9	204	0.03
14225	Tail Concerto	13	1998	11	26	0.03
14226	The Sum of All Fears	19	2003	7	6	0.03
14227	James Pond: Codename Robocod	9	2005	2	98	0.03
14228	Yumi's Odd Odyssey	10	2013	2	265	0.03
14229	Night Head: The Labyrinth	13	1995	11	482	0.03
14230	JoJo's Bizarre Adventure: Eyes of Heaven	11	2015	10	26	0.03
14231	Angler's Club: Ultimate Bass Fishing 3D	10	2011	1	59	0.03
14232	Utawarerumono Portable	17	2009	4	316	0.03
14233	Gaia Saver Hero Saidai no Sakusen	8	1994	4	58	0.03
14234	EverBlue 2	7	2002	11	13	0.03
14235	Emma at the Farm	4	2008	11	263	0.03
14236	NASCAR Heat Evolution	11	2016	3	483	0.03
14237	Higurashi no Naku Koro ni Kizuna: Dai-San-Kan - Rasen	4	2009	11	82	0.03
14238	The Sims 2: Glamour Life Stuff	15	2006	8	8	0.03
14239	Safari Adventures: Africa	1	2007	11	296	0.03
14240	Summer Athletics: The Ultimate Challenge	5	2008	1	233	0.03
14241	Prince of Persia: The Forgotten Sands	15	2010	9	6	0.03
14242	Yumeiro Patissiere: My Sweets Cooking	4	2010	8	15	0.03
14243	Daito Giken Koushiki Pachi-Slot Simulator: Yoshimune Portable	17	2006	6	348	0.03
14244	Clannad	6	2011	11	434	0.03
14245	Maximum Racing: GP Classic Racing	1	2010	3	125	0.03
14246	Trials Fusion	15	2014	3	6	0.03
14247	Rugby League Live 3	6	2015	9	339	0.03
14248	PowerSlave	13	1996	7	147	0.03
14249	Legend of the Dragon	17	2007	10	103	0.03
14250	Project Gotham Racing 2 (JP weekly sales)	14	2003	9	2	0.03
14251	Ukiyo no Shishi	6	2015	9	26	0.03
14252	The Binding of Isaac	15	2012	9	54	0.03
14253	CT Special Forces	9	2002	9	428	0.03
14254	FIFA World Cup: Germany 2006	9	2006	1	8	0.03
14255	Jewel Master: Cradle of Rome	1	2008	5	142	0.03
14256	Midnight Mysteries: The Edgar Allan Poe Conspiracy	15	2009	11	96	0.03
14257	Beastly	1	2011	6	54	0.03
14258	Crash Time: Autobahn Pusuit	5	2008	3	79	0.03
14259	Earthworm Jim 2	9	2002	2	24	0.03
14260	Garfield: A Tale of Two Kitties	4	2006	2	103	0.03
14261	Tamagotchi no Doki Doki Dream Omisecchi	10	2013	8	26	0.03
14262	Toushin Toshi	10	2014	4	484	0.03
14263	Suujin Taisen	4	2007	12	1	0.03
14264	SBK 2011: FIM Superbike World Championship	15	2011	3	194	0.03
14265	Driv3r	9	2005	3	11	0.03
14266	Street Supremacy	17	2005	3	15	0.03
14267	Combat Mission: Shock Force	15	2007	12	317	0.03
14268	Rome: Total War - Gold Edition	15	2006	12	9	0.03
14269	House M.D.	4	2010	11	52	0.03
14270	Mystery Case Files: Ravenhearst	15	2007	5	81	0.03
14271	YoKai Watch Dance: Just Dance Special Version	20	2015	6	38	0.03
14272	River King: Mystic Valley (jp sales)	4	2007	1	71	0.03
14273	Winning Post World	7	2009	1	49	0.03
14274	Jig-A-Pix: Wild World	4	2009	5	202	0.03
14275	Best Friends Tonight	4	2010	6	6	0.03
14276	Beyond the Labyrinth	10		4	54	0.03
14277	Living Legends: Frozen Beauty	15	2014	9	485	0.03
14278	Super Hero Generation	6	2014	4	26	0.03
14279	.hack: Sekai no Mukou ni + Versus	6	2012	9	26	0.03
14280	Sea Park Tycoon	4	2010	8	275	0.03
14281	Disney Sports Soccer	19	2002	1	15	0.03
14282	Cooking Mama 5: Bon Appetit!	10	2013	8	476	0.03
14283	Mame Goma: Honobo no Nikki	4	2007	8	273	0.03
14284	Guitar Hero: World Tour	15	2009	6	263	0.03
14285	Nancy Drew: Alibi In Ashes	15	2011	11	486	0.03
14286	The Walking Dead: Season One	15	2012	11	123	0.03
14287	Ultimate Block Party	17	2004	5	12	0.03
14288	Disney's Hide & Sneak	19	2003	9	13	0.03
14289	Super Robot Taisen OG Saga: Masou Kishin III - Pride of Justice	23	2013	12	26	0.03
14290	Nobunaga no Yabou: Kakushin with Power-Up Kit	7	2008	12	49	0.03
14291	Raw Danger!	7	2006	9	12	0.03
14292	Arthur and the Invisibles	4	2007	11	11	0.03
14293	Flipper Critters	4	2007	8	232	0.03
14294	Medarot 9: Kabuto Ver. / Kuwagata Ver.	10	2015	4	138	0.03
14295	Monster Rancher Hop-A-Bout	13	2000	9	49	0.03
14296	Foto Showdown	4	2010	4	54	0.03
14297	Custom Beat Battle: Draglade 2	4	2008	10	26	0.03
14298	Gotouchi Kenkei DS	4	2006	6	130	0.03
14299	Bikkuriman Daijiten	4		6	34	0.03
14300	Accel World: Ginyoku no Kakusei	6	2012	11	26	0.03
14301	Elf Bowling 1 & 2	9	2005	1	151	0.03
14302	Men of War	15	2009	12	12	0.03
14303	Toy Shop	4	2008	8	35	0.03
14304	Metroid Prime: Federation Force	10	2016	9	1	0.03
14305	GunGriffon: Allied Strike	14	2004	8	2	0.03
14306	Stacked with Daniel Negreanu	17	2006	6	392	0.03
14307	Vitamin X Evolution	4	2008	11	59	0.03
14308	Saru! Get You! SaruSaru Daisakusen	17	2007	2	4	0.03
14309	Sonic Boom: Fire & Ice	10	2016	2	9	0.03
14310	The Flintstones: Big Trouble in Bedrock	9	2001	2	314	0.03
14311	Hallowed Legends: Samhain	15	2011	11	81	0.03
14312	Captain Morgane and the Golden Turtle	4	2012	11	338	0.03
14313	Sekai no Hate Made Itte Q! Chinjuu Hunter Mono no Daibouken	4	2010	6	487	0.03
14314	Silverlicious	4	2012	9	34	0.03
14315	Majesty 2: The Fantasy Kingdom Sim	5		8	54	0.03
14316	Gakusen Toshi Asterisk Festa: Houka Kenran	23	2016	10	26	0.03
14317	BeatMania IIDX 14 Gold	7	2008	8	15	0.03
14318	PopCap Arcade Vol 2	5	2009	6	208	0.03
14319	Toriko: Ultimate Survival	10	2013	9	26	0.03
14320	Big Ichigeki! Pachi-Slot Taikouryku Universal Museum	24	1996	6	488	0.03
14321	Vegas Casino	4	2007	6	296	0.03
14322	Monster High: New Ghoul in School	1	2015	9	231	0.03
14323	Madou Monogatari	24	1998	4	92	0.03
14324	Biker Mice From Mars	4	2007	3	103	0.03
14325	Smart Girl's Winter Wonderland	4	2008	6	284	0.03
14326	Tork: Prehistoric Punk	14	2005	2	2	0.03
14327	Togainu no Chi: True Blood	7	2008	11	153	0.03
14328	Onna no Ko to Misshitsu ni Itara **shichau Kamoshirenai	10	2012	11	59	0.03
14329	Chicken Shoot 2	9	2005	11	87	0.03
14330	Neverwinter Nights	15	2002	4	11	0.03
14331	East India Company Collection	15	2010	6	317	0.03
14332	Battle vs. Chess	5	2011	6	435	0.03
14333	The Inner World	15	2013	11	489	0.03
14334	Pachinko Kamen Rider: Shocker Zenmetsu Daisakusen	7	2008	6	378	0.03
14335	Underground Pool	4	2007	1	284	0.03
14336	Accel World: Ginyoku no Kakusei	17	2012	11	26	0.03
14337	Classic Dungeon: Fuyoku no Masoujin	17	2010	4	132	0.03
14338	Alter Ego	15	1985	8	5	0.03
14339	Dragon's Dogma Online	6	2015	4	13	0.03
14341	River City Super Sports Challenge	4	2010	1	224	0.03
14342	My Pet Shop (JP sales)	4	2008	8	17	0.03
14343	Exstetra	23	2013	4	246	0.03
14344	Konami Classics Series: Arcade Hits	4	2007	6	15	0.03
14345	Dodge Racing: Charger vs Challenger	4	2009	3	202	0.03
14346	Gokujou!! Mecha Mote Iinchou: MM My Best Friend!	4	2010	8	15	0.03
14347	Atelier Sophie: The Alchemist of the Mysterious Book	6	2015	4	49	0.03
14348	SingStar Chartbreaker	6	2009	6	4	0.03
14349	Hiiro no Kakera 2: Hisui no Shizuku	7	2007	11	279	0.03
14350	Pro Yakyuu Spirits 5 Kanzenban	6	2008	1	15	0.03
14351	Sorcery Saga: The Curse of the Great Curry God	23	2013	4	71	0.03
14352	SingStar Fussballhits	6	2010	6	4	0.03
14353	A Good Librarian Like a Good Shepherd: Library Party	23	2015	9	426	0.03
14354	Dance Factory	7	2006	9	36	0.03
14355	LEGO Legends of Chima: Laval's Journey	4	2013	11	54	0.03
14356	Montessori Music	4	2008	6	60	0.03
14357	Totally Spies!	9	2005	2	11	0.03
14358	DragonHeart: Fire & Steel	13	1996	9	31	0.03
14359	Nishijin Pachinko Monogatari 2	8	1996	6	490	0.03
14360	Chaos;Head - Love Chu*Chu!	5	2010	11	357	0.03
14361	Gal Gun: Double Peace	23	2015	9	148	0.03
14362	PriPara & Pretty Rhythm: PriPara de Tsukaeru Oshare Item 1450!	10	2015	9	26	0.03
14363	RoadKill	19	2003	9	40	0.03
14364	The Legend of Heroes III: Song of the Ocean	17	2006	4	26	0.03
14365	Dungeon Maker: Hunting Ground	17	2006	4	399	0.03
14366	Mushihimesama Futari Ver 1.5	5	2009	7	358	0.03
14367	F1 2002	19	2002	3	8	0.03
14368	Pocket Fighter	24	1998	10	13	0.03
14369	Lock On: Modern Air Combat	15	2003	8	6	0.03
14370	Toaru Majutsu no Kagaku no Ensemble	17	2013	11	26	0.03
14371	Ojyousama Express	24	1998	12	408	0.03
14372	Guilty Gear XX Accent Core Plus	1	2009	10	148	0.03
14373	Starsky & Hutch	9	2003	3	90	0.03
14374	Super Meat Boy: Ultra Edition!	15	2011	2	54	0.03
14375	Sitting Ducks	9	2003	2	428	0.03
14376	Brothers Conflict: Brilliant Blue	17	2013	11	279	0.03
14377	JoJo's Bizarre Adventure: Eyes of Heaven	6	2015	10	26	0.03
14378	Hajime no Ippo: The Fighting! (2014)	6	2014	1	26	0.03
14379	Eyeshield 21: Field Saikyou no Senshi Tachi	1	2007	4	1	0.03
14380	Fullmetal Alchemist: Brotherhood	17		9	54	0.03
14381	To LoveRu Trouble: Waku Waku! Rinkangakkou-Hen	4	2008	11	220	0.03
14382	Medabots 9: Metabee / Rokusho	10	2015	4	138	0.03
14383	Doodle Hex	4	2008	5	108	0.03
14384	Homeworld 2	15	2003	12	24	0.03
14385	Hakuoki Zuisouroku Omokage Hana	23	2015	9	279	0.03
14386	Hearts of Iron IV	15	2016	12	317	0.03
14387	thinkSMART FAMILY!	1	2010	6	232	0.03
14388	Last Escort: Club Katze	17	2010	11	59	0.03
14389	Stacked with Daniel Negreanu	14	2006	6	392	0.03
14390	Shin Koihime Musou: Otome Ryouran * Sangokushi Engi - Wei-Hen	17	2010	11	444	0.03
14391	Rayman 3: Hoodlum Havoc	15	2003	2	6	0.03
14392	Otometeki Koi Kakumei * Love Revo	7	2006	11	466	0.03
14393	Phantasy Star Online 2 Episode 4: Deluxe Package	11	2017	4	9	0.03
14394	Timmy Time	4	2011	9	191	0.03
14395	Infinite Stratos 2: Ignition Hearts	23	2014	11	357	0.03
14396	Dr. Muto	19	2002	2	40	0.03
14397	Airship Q	23	2015	2	491	0.03
14398	Ratatouille	15	2007	9	29	0.03
14399	Otomedius Gorgeous	5	2008	7	15	0.03
14400	Jikandia: The Timeless Land	17	2010	4	279	0.03
14401	Egg Mania: Eggstreme Madness	7	2002	5	189	0.03
14402	Super Heroine Chronicle	6	2014	4	26	0.03
14403	Boot Camp Academy	1	2010	9	75	0.03
14404	Kiniro no Corda 3	7	2010	11	49	0.03
14405	Zero Escape: Virtue's Last Reward	10	2012	11	71	0.03
14406	Darkstalkers Resurrection	6	2013	10	13	0.03
14407	Take On Helicopters	15	2011	8	54	0.03
14408	Highschool Terra Story	24	1998	11	492	0.03
14409	Emergency! Disaster Rescue Squad	4	2009	8	154	0.03
14410	Shaun White Skateboarding	15	2010	1	6	0.03
14411	Empire Earth II	15	2005	12	24	0.03
14412	Suggoi! Arcana Heart 2	7	2009	10	255	0.03
14413	MotoGP 15	18	2015	3	257	0.03
14414	NBA 2K13	15	2012	1	3	0.03
14415	Mother Goose no Himitsu no Yakata	17	2011	11	493	0.03
14416	Harry Potter and the Half-Blood Prince	15	2009	9	8	0.03
14417	Winning Post 7 2009	17	2009	1	49	0.03
14418	Knights of Honor	15	2004	12	494	0.03
14419	Puzzle & Action: Tant-R	21	1994	6	9	0.03
14420	Code Lyoko: Quest for Infinity	17	2008	9	103	0.03
14421	Away: Shuffle Dungeon	4	2008	4	35	0.03
14422	Digimon World 4	14	2005	4	11	0.03
14423	Bubble Bobble Evolution	17	2006	5	71	0.03
14424	Codename: Panzers Cold War	15	2009	12	11	0.03
14425	Kekkaishi: Kokubourou Shuurai	4	2008	9	26	0.03
14426	Shugo Chara! Amunonijiro Chara Change	4	2008	9	15	0.03
14427	Galleon: Islands of Mystery	14	2004	9	112	0.03
14428	Renai 0 Kilometer	17	2013	11	82	0.03
14429	World Sports Competition	6	2009	1	69	0.03
14430	Summon Night 6: Lost Borders	11	2016	9	26	0.03
14431	Tantei Jinguuji Saburo DS: Kienai Kokoro	4	2008	11	224	0.03
14432	Far East of Eden Shinden	27	1995	10	69	0.03
14433	Sunny Garcia Surfing	7	2001	1	6	0.03
14434	MotorHead	13	1998	3	264	0.03
14435	Alia's Carnival! Sacrament	23	2015	11	495	0.03
14436	Nacho Libre	4	2006	9	35	0.03
14437	StormLover	17	2010	11	59	0.03
14438	Gensou Suikoden I & II	17	2006	4	15	0.03
14439	Gloria Union	17	2011	4	72	0.03
14440	Ebikore Photo Kano Kiss	23	2015	9	278	0.03
14441	Bad Apple Wars	23	2015	9	279	0.03
14442	Transformers: Devastation	15	2015	9	5	0.03
14443	Eyeshield 21: DevilBats DevilDays	9	2006	4	1	0.03
14444	Jyuzaengi: Engetsu Sangokuden	17	2012	9	279	0.03
14445	Shin Sangoku Musou Online: Kamishou Ranbu	6	2010	9	49	0.03
14446	Dancing Blade II: Tears of Eden	13	1999	11	15	0.03
14447	Kokoro no Kokoron	4	2011	6	26	0.03
14448	Hiiro no Kakera 3: Aoikuro no Kusabi	7	2008	11	279	0.03
14449	BeatMania IIDX 13: DistorteD	7	2007	8	15	0.03
14450	Section 8	15	2009	7	84	0.03
14451	Go! Go! Hypergrind	19	2003	1	72	0.03
14452	Keshisasu-Kun: Battle Kas-tival	4	2010	9	15	0.03
14453	Kaidan Restaurant: Zoku! Shin Menu 100-Sen	4	2011	6	26	0.03
14454	Hot Pixel	17	2007	5	11	0.03
14455	Peak Performance	13	1997	3	41	0.03
14456	Dance Dance Revolution: Hottest Party 5	1	2011	6	15	0.03
14457	Who Wants to be a Millionaire: 2nd Edition	1	2008	6	6	0.03
14458	Kyokugen Dasshutsu ADV: Zennin Shiboudesu	10	2012	11	120	0.03
14459	DokiDoki Majo Shinpan! 2	4	2008	11	226	0.03
14460	S.L.A.I.: Steel Lancer Arena International	7	2005	8	15	0.03
14461	Pet Alien: An Intergalactic Puzzlepalooza	4	2007	9	103	0.03
14462	Freaky Flyers	14	2003	3	40	0.03
14463	Blokus Portable: Steambot Championship	17	2006	5	35	0.03
14464	Renai Revenge	23	2015	11	496	0.03
14465	Zoboomafoo: Leapin' Lemurs!	13	2001	9	497	0.03
14466	Atelier Shallie Plus: Alchemists of the Dusk Sea	23	2016	4	49	0.03
14467	Dennou Senki Virtual-On Force	5	2010	10	9	0.03
14468	Sins of a Solar Empire	15	2008	12	108	0.03
14469	Graffiti Kingdom	7	2004	4	12	0.03
14470	Langrisser: Re:Incarnation Tensei	10	2015	4	498	0.03
14471	Nettou! Powerful Koushien	4	2010	1	15	0.03
14472	Lords of the Fallen	15	2014	4	17	0.03
14473	Great Edo Blacksmith	23	2014	11	132	0.03
14474	Armored Core SL: Silent Line Portable	17	2009	8	228	0.03
14475	Gotouchi Tetsudou: Gotouchi Chara to Nihon Zenkoku no Tabi	20	2014	6	26	0.03
14476	Combat Elite: WWII Paratroopers	14		7	54	0.03
14477	To LoveRu Trouble: Doki Doki! Rinkaigakkou-Hen	17	2008	11	220	0.03
14478	Lethal Enforcers I & II	13	1996	7	15	0.03
14479	Klonoa 2: Dream Champ Tournament	9	2002	2	26	0.03
14480	Shantae and the Pirate's Curse	10	2015	2	499	0.03
14481	Minna no Golf Jou Vol.1	17	2007	1	4	0.03
14482	The Peanuts Movie: Snoopy's Grand Adventure	10	2015	9	5	0.03
14483	Resident Evil 4	15	2007	9	6	0.03
14484	Power Rangers Super Megaforce	10	2014	9	26	0.03
14485	Teenage Mutant Ninja Turtles: Mutants in Manhattan	5	2016	9	5	0.03
14486	Cabela's Big Game Hunter: Pro Hunts	6	2014	7	5	0.03
14487	Super Collapse! II	9	2004	5	35	0.03
14488	Ducati World Racing Challenge	13	2001	3	31	0.03
14489	Pop'n Music 14 Fever!	7	2007	6	15	0.03
14490	Golden Nugget Casino / Texas Hold 'Em Double Pack	9	2005	6	35	0.03
14491	Judie no Atelier: Guramnat no Renkinjutsu - Toraware no Morito	17	2010	4	243	0.03
14492	Lux-Pain (JP sales)	4	2008	11	71	0.03
14493	Smashing Drive	9	2004	3	87	0.03
14494	Senko no Ronde DUO	5	2010	10	500	0.03
14495	Starshot: Space Circus Fever	12	1998	2	53	0.03
14496	Charlie Blasts Territory	12	1999	9	189	0.03
14497	Big Mountain 2000	12	1998	1	157	0.03
14498	Tokimeki Memorial Girl's Side 1st Love Plus	4	2009	11	15	0.03
14499	CIMA: The Enemy	9	2003	4	220	0.03
14500	N+	17	2007	2	11	0.03
14501	Katekyoo Hitman Reborn! Kizuna no Tag Battle	17	2010	10	220	0.03
14502	Code Geass: Hangyaku no Lelouch	4	2007	9	26	0.03
14503	GTR Evolution	15	2008	3	11	0.03
14504	Hudson x GReeeeN Live!? DeeeeS!?	4	2010	6	69	0.03
14505	Daibakushou: Jinsei Gekijou	8	1995	6	94	0.03
14506	Marble Madness / Klax	9	2005	5	87	0.03
14507	Downstream Panic!	17	2008	9	11	0.03
14508	DJ Max Portable 3	17	2010	6	462	0.03
14509	Suzumiya Haruhi no Chokuretsu	4	2009	11	9	0.03
14510	SimCity	15	1988	8	47	0.03
14511	The Idolmaster: Gravure For You! Vol. 5	6	2012	6	26	0.03
14512	S.Y.K Renshouden	7	2010	11	279	0.03
14513	Casino Chaos With Las Vegas Players Collection	15	2011	6	29	0.03
14514	Hiiro no Kakera: Shin Tamayori Hime Denshou - Piece of Future	17	2011	11	279	0.03
14515	Konpeki no Kantai	8	1995	12	223	0.03
14516	D.C.I.F.: Da Capo Innocent Finale	7	2009	11	501	0.03
14517	Galaxy Angel II: Mugen Kairou no Kagi	7	2007	12	309	0.03
14518	Nectaris: Military Madness	13	1998	12	69	0.03
14519	Doom 3 BFG Edition	15	2012	7	7	0.03
14520	Tenka-bito	7	2006	12	9	0.03
14521	BRAHMA Force: The Assault on Beltlogger 9	13	1996	7	41	0.03
14522	Petz: Dolphinz Encounter	4	2009	8	6	0.03
14523	Star Trek: Tactical Assault	17	2006	12	6	0.03
14524	Katekyoo Hitman Reborn! DS: Ore ga Boss! Saikyou Family Taisen	4	2009	9	197	0.03
14525	Samurai Spirits: Tenkaichi Kenkakuden	7		10	54	0.03
14526	Robo Pit	13	1995	10	502	0.03
14527	Emily Archer and the Curse of Tutankhamun	4	2011	11	85	0.03
14528	Story Hour: Adventures	1	2008	11	87	0.03
14529	Braid	15	2009	2	503	0.03
14530	Muv-Luv Alternative: Total Eclipse	6	2013	8	357	0.03
14531	R-Type III: The Third Lightning	9	2004	7	87	0.03
14532	Star Wars: The Force Unleashed II	15	2010	9	18	0.03
14533	Need for Speed (2015)	15	2016	3	8	0.03
14534	Hakuouki	7	2008	11	279	0.03
14535	Princess Natasha: Student, Secret Agent, Princess	4	2006	9	87	0.03
14536	Atomic Betty	9	2005	5	11	0.03
14537	Monster Hunter Frontier Online: Season 10	5	2011	4	13	0.03
14538	Robin Hood: Defender of the Crown	14	2003	12	13	0.03
14539	Street Jam Basketball	9	2004	1	87	0.03
14540	Master of Monsters: Disciples of Gaia	13	1997	12	95	0.03
14541	Armored Core: Last Raven Portable	17	2010	8	228	0.03
14542	SD Gundam: Gashapon Wars	1	2010	12	26	0.03
14543	Commander: Conquest of the Americas	15	2010	12	317	0.03
14544	Curious George	14	2006	9	26	0.03
14545	Disney's Aladdin	9	2003	2	13	0.03
14546	Royal Palace of White Sword and The City of Gentiles	15	2009	4	3	0.03
14547	Virtual Pool: Tournament Edition	14	2005	1	64	0.03
14548	Kung Fu Panda: Showdown of Legendary Legends	5	2015	9	231	0.03
14549	Nippon no Asoko de	17	2008	6	4	0.03
14550	007: Quantum of Solace	15	2008	9	5	0.03
14551	MapleStory DS	4	2010	4	504	0.03
14552	Phantasy Star Online 2: Episode 3 Deluxe Package	23	2015	9	9	0.03
14553	Pimp My Ride: Street Racing	4	2009	3	5	0.03
14554	Let's Dance with Mel B	6	2011	1	194	0.03
14555	Popeye: Rush for Spinach	9	2005	2	11	0.03
14556	Culdcept	7	2002	12	9	0.03
14557	Beyblade Evolution	10	2013	9	71	0.03
14558	Pro Cycling Manager 2016	15	2016	1	81	0.03
14559	Blue Breaker: Ken Yorimo Hohoemi o	31	1996	4	239	0.03
14560	BeatMania IIDX 15: DJ Troopers	7	2008	8	15	0.03
14561	Heathcliff! The Fast and the Furriest	1	2010	3	216	0.03
14562	Hyperdimension Neptunia Vs. Sega Hard Girls: Yume no Gattai Special	23	2015	4	266	0.03
14563	Planet of the Apes	9	2001	9	6	0.03
14564	Gekiatsu!! Pachi Game Tamashi Vol. 1: CR Evangelion - Shinjitsu no Tsubasa	17	2011	6	54	0.03
14565	Worms	6	2009	12	4	0.03
14566	Drake & Josh: Talent Showdown	4	2007	11	29	0.03
14567	Real World Golf	14	2006	1	268	0.03
14568	Winx Club: Rockstars	4	2010	11	26	0.03
14569	Hissatsu Pachinko Collection 3	8	1995	6	242	0.03
14570	Oumagatoki: Kaidan Romance	17	2012	9	493	0.03
14571	Jack Keane	15	2008	11	200	0.03
14572	World of Zoo	15	2009	8	29	0.03
14573	Kung Fu Panda: Legendary Warriors	4	2008	9	5	0.03
14574	Mahjong Kakutou Club: Zenkoku Taisenban	6	2006	6	15	0.03
14575	Hayate no Gotoku! Nightmare Paradise	17	2009	11	15	0.03
14576	NBA 08	17	2007	1	4	0.03
14577	Secret Files 2: Puritas Cordis	1	2009	11	42	0.03
14578	Nanashi no Game Me	4	2009	9	17	0.03
14579	Heroes of Hellas 2: Olympia	4	2012	5	54	0.03
14580	Young Justice: Legacy	10	2013	9	26	0.03
14581	Syberia	15	2002	9	360	0.03
14582	Bladestorm: Nightmare	6	2015	9	49	0.03
14583	NatGeo Challenge! Wild Life	5	2010	6	194	0.03
14584	Higurashi no Naku Koro ni Iki	23	2015	9	426	0.03
14585	HappinessCharge PreCure! Kawarun Collection	10	2014	6	26	0.03
14586	Battle vs. Chess	15		6	435	0.03
14587	Dream Pinball 3D	4	2008	6	84	0.03
14588	DICE: DNA Integrated Cybernetic Enterprises	7	2005	7	26	0.03
14589	Battlefield 1942: The WW II Anthology	15	2004	7	8	0.03
14590	Treasure Gaust: Gaust Diver Crimson Red / Deep Purple	4	2007	9	26	0.03
14591	Megpoid the Music#	17	2013	6	418	0.03
14592	Game of Thrones (Telltale)	18	2015	11	174	0.03
14593	Wallace & Gromit in Project Zoo	14	2003	2	176	0.03
14594	Rugby League Live	6	2010	1	209	0.03
14595	Grid Runner	13	1996	9	19	0.03
14596	Saihai no Yukue	4	2008	12	49	0.03
14597	Metal Dungeon	14	2002	4	351	0.03
14598	Drome Racers	19	2003	3	8	0.03
14599	Guitar Freaks V & DrumMania V	7	2006	8	15	0.03
14600	Tago Akira no Atama no Taisou Dai-1-Shuu: Nazotoki Sekai Isshuu Ryokou	4	2009	11	38	0.03
14601	Driver: Parallel Lines	1	2007	3	6	0.03
14602	Doom	15	1992	7	505	0.03
14603	Gekido Advance: Kintaro's Revenge	9	2002	9	87	0.03
14604	OZMAFIA!! -vivace-	23	2015	11	495	0.03
14605	Girls Only	4	2010	8	275	0.03
14606	Future Tactics: The Uprising	14	2004	12	259	0.03
14607	Power Poke Dash	9	2006	1	15	0.03
14608	Hisshou Pachinko*Pachi-Slot Kouryaku Series DS Vol. 4: Shinseiki Evangelion - Saigo no Mono	4	2009	6	59	0.03
14609	Detective Opera: Milky Holmes 2	17	2012	11	506	0.03
14610	Turn It Around	4	2006	9	12	0.03
14611	Blaze Union: Story to Reach the Future	17	2010	4	321	0.03
14612	Attack on Titan (KOEI)	18	2016	9	49	0.03
14613	Medabots Girls Mission: Metabee Ver. / Rokusho Ver.	10	2016	4	138	0.03
14614	Race Driver 2006	17	2006	3	36	0.03
14615	Higurashi no Naku Koro ni Kizuna: Dai-Yon-Kan - Kizuna	4	2010	11	82	0.03
14616	Buffy the Vampire Slayer: Wrath of the Darkhul King	9	2003	9	29	0.03
14617	My Hero Academia: Battle for All	10	2016	9	26	0.03
14618	Nisekoi: Yomeiri!?	23	2014	11	15	0.03
14619	New Tokyo Legacy: Operation Babel	23	2015	4	357	0.03
14620	Gekiatsu!! Pachi Game Tamashi Vol. 2: CR Evangelion - Shinjitsu no Tsubasa	6	2011	6	54	0.03
14621	Rugby League Live 3	5	2015	9	339	0.03
14622	Triple Pack: Xbox Live Arcade Compilation	5	2011	6	2	0.03
14623	101-in-1 Sports Party Megamix	1	2010	1	252	0.03
14624	Roadsters	13	2000	3	104	0.03
14625	The Croods: Prehistoric Party!	20	2013	6	59	0.03
14626	Exist Archive: The Other Side of the Sky	11	2015	4	343	0.03
14627	DeathSmiles II	5	2010	7	358	0.03
14628	Romance of the Three Kingdoms II	10	2015	12	49	0.03
14629	Calcio Bit	9	2006	1	1	0.03
14630	Monsters vs. Aliens	15	2009	9	5	0.03
14631	Whiteout	14	2002	3	15	0.03
14632	Hyakumanton no Bara Bara	17	2010	12	4	0.03
14633	Galaxy Angel II: Zettairyouiki no Tobira	7	2006	12	309	0.03
14634	The Great Mystery Hidden Object Package 5	15	2015	11	142	0.03
14635	1000 Cooking Recipes from ELLE à table	4	2010	6	1	0.03
14636	Hajime no Ippo: The Fighting	9	2002	10	181	0.03
14637	Merv Griffin's Crosswords	4	2008	5	248	0.03
14638	Stellaris	15	2016	12	317	0.03
14639	Spectral Souls: Resurrection of the Ethereal Empires	17	2005	4	279	0.03
14640	Sokukoku no Kusabi: Hiiro no Kakera 3 Portable	17	2010	11	279	0.03
14641	Syberia II	14	2004	11	6	0.03
14642	PopCap Hits! Vol 2	5	2011	6	85	0.03
14643	Ao no Kanata no Four Rhythm	23	2016	11	54	0.03
14644	Motor Trend presents Lotus Challenge	14	2003	3	351	0.03
14645	Mystery Trackers: The Void	15	2011	5	81	0.03
14646	Trine 2	20	2012	2	72	0.03
14647	Bleach DS 4th: Flame Bringer	4	2009	9	9	0.03
14648	Pacific Liberator	1	2009	9	75	0.03
14649	Botanicula	15	2012	11	390	0.03
14650	Parfait	23	2015	11	496	0.03
14651	Tago Akira no Atama no Taisou Dai-2-Shuu: Ginga Oudan Nazotoki Adventure	4	2009	11	38	0.03
14652	The King of Fighters Portable '94~'98: Chapter of Orochi	17	2010	10	226	0.03
14653	Puzzle Challenge: Crosswords and More!	1	2009	5	68	0.03
14654	Nisenochigiri: Omoide no Saki e	17	2011	11	279	0.03
14655	Rugby League Live	5	2010	1	209	0.03
14656	Age of Conan: Rise of the Godslayer	15	2010	4	289	0.03
14657	Totally Spies! Totally Party	15	2008	6	6	0.03
14658	Battlefield Vietnam	15	2004	7	8	0.03
14659	In Cold Blood	13	2000	11	4	0.03
14660	Mega Minis Volume 2	17	2011	6	4	0.03
14661	Kamigami no Asobi	17	2013	11	309	0.03
14662	Fireblade	19	2002	9	40	0.03
14663	Kong: King of Atlantis	9	2005	9	29	0.03
14664	Kidou Senshi V Gundam	8	1994	9	26	0.03
14665	Ganbare Goemon: Toukai Douchuu Ooedo Tengurigaeshi no Maki	4	2005	9	15	0.03
14666	The Settlers II 10th Anniversary	15	2006	9	6	0.03
14667	Wrestle Angels: Survivor 2	7	2008	10	507	0.03
14668	Onechanbara Z Kagura	5	2012	9	59	0.03
14669	Ride	15	2015	3	257	0.03
14670	The King of Fighters 02/03	14	2005	10	226	0.03
14671	ESPN Winter X Games: Snowboarding 2002	14	2002	1	15	0.03
14672	Betty Boop's Double Shift	4	2007	5	87	0.03
14673	Warhammer: Mark of Chaos	15	2006	12	42	0.03
14674	Tsuku Monogatari	17	2011	11	246	0.03
14675	Vitamin Z	7	2009	11	59	0.03
14676	Kaitou Tenshi Twin Angel: Toki to Sekai no Meikyuu	17	2011	11	82	0.03
14677	Shin Koihime Musou: Otome Ryouran * Sangokushi Engi - Wu-Hen	17	2010	11	444	0.03
14678	Harukanaru Toki no Naka de 5: Kazahanaki	17	2012	4	210	0.03
14679	Tom and Jerry in War of the Whiskers	14		10	54	0.03
14680	Nobunaga no Yabou DS 2	4	2008	12	49	0.03
14681	The IdolM@ster: Gravure For You! Vol. 6	6	2012	9	26	0.03
14682	Schlag den Raab	15	2010	6	26	0.03
14683	Ghostbusters (2016)	11	2016	9	5	0.03
14684	Secrets of the Titanic	4	2012	9	123	0.03
14685	Metal Saga: Hagane no Kisetsu	4	2006	4	91	0.03
14686	Animaniacs: The Great Edgar Hunt	19	2005	2	151	0.03
14687	Safari Adventures: Africa	4	2008	11	296	0.03
14688	Harukanaru Toki no Naka de 6	23	2015	9	49	0.03
14689	Dream Club Zero Portable	23	2011	8	59	0.03
14690	Samurai Warriors 2	6	2013	9	49	0.03
14691	Cossacks: European Wars	15	2001	12	508	0.03
14692	The Island of Dr. Frankenstein	1	2009	11	216	0.03
14693	TV Total Events	1	2011	6	509	0.03
14694	Battle Arena Toshinden URA	24	1995	10	9	0.03
14695	Darius Burst: Chronicle Saviours	23	2016	9	278	0.03
14696	Biohazard: Revival Selection	5	2011	9	13	0.03
14697	Labyrinth Cross Blood: Infinity	23	2013	4	462	0.03
14698	Prince of Persia (2008)	15	2008	9	6	0.03
14699	Super Duper Sumos	9		9	54	0.03
14700	HotBrain	17	2007	5	40	0.03
14701	UK Truck Simulator	15	2010	8	34	0.03
14702	Gudetama: Hanjuku de Tanomuwa	10	2015	9	138	0.03
14703	MechAssault: Phantom War	4	2006	8	35	0.03
14704	Magicka	15	2011	4	317	0.03
14705	Star Trek: The Game	15	2013	9	26	0.03
14706	Moto Racer DS	4	2008	3	127	0.03
14707	The Last Guy	6	2009	9	4	0.03
14708	Disney Sports Soccer	9	2002	1	15	0.03
14709	Akane Iro ni Somaru Saka Parallel	7	2008	11	510	0.03
14710	Otome wa Oanesama ni Koi Shiteru Portable: 2-Jin no Elder	17	2011	11	82	0.03
14711	Monster Hunter Frontier Online: Forward 1	5	2011	4	13	0.03
14712	X3: Terran Conflict	15	2008	8	42	0.03
14713	Timeshock! Pro Pinball	13	1998	6	90	0.03
14714	Max Payne	9	2003	7	3	0.03
14715	D1 Professional Drift Grand Prix Series	7	2005	3	511	0.03
14716	Starry ? Sky: In Winter	17	2011	6	418	0.03
14717	Little Bears	4	2009	8	79	0.03
14718	Rush Hour	13	1997	6	88	0.03
14719	Pro Cast Sports Fishing	14	2003	1	13	0.03
14720	Gintama: Banji Oku Chuubu!	1	2007	9	26	0.03
14721	Aegis of Earth: Protonovus Assault	6	2016	9	148	0.03
14722	Saka Agari Hurricane Portable	17	2011	11	82	0.03
14723	Negima!? Dream Tactic Yumemiru Otome Princess	7	2007	12	15	0.03
14724	King Arthur II	15	2011	12	317	0.03
14725	Max Payne 2: The Fall of Max Payne	15	2003	7	3	0.03
14726	Dakar 2: The World's Ultimate Rally	19	2003	3	31	0.03
14727	NBA 2K7	14	2006	1	3	0.03
14728	Auto Modellista	19	2003	3	13	0.03
14729	Jewel Match 2	4	2012	5	512	0.03
14730	Hanayaka Kana, Ware ga Ichizoku Twin Pack	17	2011	6	279	0.03
14731	MySims	15	2008	8	8	0.03
14732	Guild Wars: Nightfall	15	2006	4	44	0.03
14733	Greg Hastings' Tournament Paintball Max'd	9	2006	7	5	0.03
14734	Dave Mirra Freestyle BMX 3	9	2002	1	31	0.03
14735	My Animal Centre	1	2009	8	42	0.03
14736	Eco Creatures: Save The Forest	4	2007	11	71	0.03
14737	Kintaihi Shounen no Jiken: Kyakusen Eris-Gou no Sangeki	4	2009	11	425	0.03
14738	Kaizoku Sentai Gokaiger: Atsumete Henshin! 35 Sentai!	4	2011	9	26	0.03
14739	Dragon Tamer: Sound Spirit	4	2007	4	26	0.03
14740	Frogger: Ancient Shadow	14	2005	2	15	0.03
14741	Pro Evolution Soccer 2017	18	2016	1	15	0.03
14742	La Pucelle: Ragnarok	17	2009	4	132	0.03
14743	Kiniro no Corda 2 f Encore	17	2009	4	49	0.03
14744	Darius II	24	1995	7	94	0.03
14745	Jewel Quest 5: The Sleepless Star	4	2012	9	513	0.03
14746	RollerCoaster Tycoon 2: Triple Thrill Pack	15	2003	12	11	0.03
14747	Bleach: Soul Carnival 2	17	2009	10	4	0.03
14748	ParaParaParadise	7	2001	6	15	0.03
14749	Tiger & Bunny: On-Air Jack!	17	2012	9	26	0.03
14750	Pro Evolution Soccer 2012	10	2011	9	15	0.03
14751	Eureka Seven AO: Jungfrau no Hanabanatachi	6	2012	9	26	0.03
14752	Warship Gunner 2	7	2006	8	49	0.03
14753	Gotcha Force	19	2003	7	13	0.03
14754	The Battle of Yuu Yuu Hakusho: Shitou! Ankoku Bujutsukai! 120%	7	2007	10	58	0.03
14755	Star Wars The Clone Wars: Republic Heroes	15	2009	9	18	0.03
14756	CID The Dummy	17	2009	2	60	0.03
14757	Xblaze: Lost Memories	23	2015	11	224	0.03
14758	DiRT Rally	15	2016	3	36	0.03
14759	The Perfect Golf	13	1995	1	260	0.03
14760	Let's Sing 2016	11	2015	9	514	0.03
14761	Wrestle Kingdom	7	2006	10	511	0.03
14762	Demon Driver: Time to Burn Rubber!	9	2003	3	151	0.03
14763	The Golf Club	18	2014	1	54	0.03
14764	Bigfoot King of Crush	1	2011	3	75	0.03
14765	Mojo!	14	2003	5	319	0.03
14766	Infinite Stratos 2: Ignition Hearts	6	2014	11	357	0.03
14767	Cabela's Big Game Hunter: Pro Hunts	5	2014	7	5	0.03
14768	Mahou Sensei Negima! Kagai Jugyou ~Otome no Dokidoki Beachside~	7	2006	11	15	0.03
14769	Nekketsu Kouha Kunio-Kun SP: Rantou Kyousoukyoku	10	2013	10	224	0.03
14770	The Sims 2: Bon Voyage	15	2007	8	8	0.03
14771	Buffy the Vampire Slayer: Chaos Bleeds	19	2003	9	24	0.03
14772	Clannad	5	2008	11	434	0.03
14773	Brothers Conflict: Passion Pink	17	2012	9	279	0.03
14774	Kuryuu Youma Gakuenki Recharge	7	2006	11	72	0.03
14775	My Frogger: Toy Trials	4	2006	9	15	0.03
14776	Jet Grind Radio	9	2003	9	9	0.03
14777	Farm Frenzy 3	4	2011	12	54	0.03
14778	Strike Witches: Aoi no Dengekisen - Shin Taichou Funtousuru!	4	2009	9	93	0.03
14779	3DS Classic Collection	10	2016	6	9	0.03
14780	Baldur's Gate: Dark Alliance	9	2004	4	204	0.03
14781	GRID Autosport	15	2014	3	36	0.03
14782	The Adventures of Lomax	13	1996	2	88	0.03
14783	Neverwinter Nights Diamond	15	2004	4	11	0.03
14784	Divinity II: Flames of Vengeance	15	2010	4	233	0.03
14785	Under the Skin	7	2004	9	13	0.03
14786	Battlefield 2142	15	2006	7	8	0.03
14787	Kabu Trader Shun	4	2007	9	13	0.03
14788	Air Conflicts: Secret Wars	15	2011	8	274	0.03
14789	Poy Poy	13	1997	9	15	0.03
14790	Hermie Hopperhead: Scrap Panic	13	1995	2	4	0.03
14791	Lost Planet 2	15	2010	7	13	0.03
14792	NHL 07	14	2006	1	8	0.03
14793	DrumMania 7th Mix	7	2001	8	15	0.03
14794	Runabout 3: Neo Age	7	2002	3	176	0.03
14795	AMNESIA World	23	2014	11	279	0.03
14796	Captain Morgane and the Golden Turtle	6	2012	11	338	0.03
14797	Bully: Scholarship Edition	15	2008	9	3	0.03
14798	My Ballet Studio	1	2009	8	12	0.03
14799	Guild Wars	15	2005	4	44	0.03
14800	Clannad: Mitsumi Mamoru Sakamichi de - Gekan	17	2010	11	434	0.03
14801	Archer Maclean Presents: Pool Paradise	19	2004	1	151	0.03
14802	Sengoku Efuda Yuugi: Hototogisu Tairan	17	2010	12	394	0.03
14803	Battlezone	17	2006	7	11	0.03
14804	Ookiku Furikabutte: Honto no Ace ni Nareru kamo	4	2007	1	220	0.03
14805	Medal of Honor: Vanguard	7	2007	7	8	0.03
14806	Touch Shot! Love Application	6	2012	11	266	0.03
14807	Nanotek Warrior	13	1997	7	19	0.03
14808	Galileo	4	2008	11	59	0.03
14809	Cake Mania: Baker's Challenge	7	2008	5	154	0.03
14810	Captain Tsubasa J: The Way to World Youth	8	1995	1	26	0.03
14811	Super Monkey Ball Adventure	7	2006	2	9	0.03
14812	Alien Breed Trilogy	5	2011	7	85	0.03
14813	Himoutou! Umaru-Chan: Himoutou Ikusei Keikaku	23	2015	8	246	0.03
14814	Sengoku Basara: Sanada Yukimura-Den	11	2016	9	13	0.03
14815	CID The Dummy	1	2009	2	60	0.03
14816	Kisuato	23	2015	11	496	0.03
14817	Madden NFL 07	9	2006	1	8	0.03
14818	Renegade Racers	13	1999	3	118	0.03
14819	The Legend of Korra (3DS)	10	2014	12	5	0.03
14820	AniMates!	4	2007	8	515	0.03
14821	Monster High 13 Wishes	20	2013	9	231	0.03
14822	Franklin the Turtle	9	2005	6	103	0.03
14823	Steins;Gate 0	6	2015	11	357	0.03
14824	Catan	4	2009	12	359	0.03
14825	Backyard NFL Football	1	2007	1	11	0.03
14826	Captain Morgane and the Golden Turtle	15	2012	11	338	0.03
14827	Gauntlet / Rampart	9	2005	6	87	0.03
14828	Age of Empires III: Gold Edition	15	2007	12	2	0.03
14829	Let's Play Ballerina	1	2010	1	42	0.03
14830	Disney Planes Fire & Rescue	20	2014	9	33	0.03
14831	Dream Girl Premier	10	2015	6	82	0.03
14832	River King: Wonderful Journey	7	2005	1	12	0.03
14833	Senran Kagura: Bon Appétit!	23	2014	6	105	0.03
14834	Ducati Moto	4	2008	3	297	0.03
14835	Justice League Heroes: The Flash	9	2006	9	22	0.03
14836	Pop Cutie! Street Fashion Simulation (JP sales)	4	2008	8	49	0.03
14837	The Peanuts Movie: Snoopy's Grand Adventure	11	2015	9	5	0.03
14838	Kawasaki Snowmobiles	1	2008	3	139	0.03
14839	Dungeon Siege II	15	2005	4	2	0.03
14840	Bae Yong-joon to Manabu Kankokugo DS	4	2009	6	59	0.03
14841	World War II Combat: Road To Berlin	14	2006	7	414	0.03
14842	Metal Saga	7	2005	4	91	0.03
14843	Imagine: Sweet 16	4	2010	8	6	0.03
14844	SWAT 4	15	2005	7	24	0.03
14845	Last Escort 2: Shinya no Amai Toge	7	2008	11	59	0.03
14846	Pop'n Music 13 Carnival	7	2006	8	15	0.03
14847	Magicka Collection	15	2011	11	54	0.03
14848	Bookworm	9	2004	5	54	0.03
14849	Tokushu Houdoubu	23	2012	11	132	0.03
14850	Terraria	20	2016	9	12	0.03
14851	My DoItAll	4	2009	6	100	0.03
14852	Legacy of Ys: Books I & II	4		4	54	0.03
14853	Shakugan no Shana	7	2006	11	408	0.03
14854	Monster Mayhem: Build and Battle	1	2009	8	202	0.03
14855	I Heart Geeks	4	2011	5	359	0.03
14856	Hokuto no Ken: Hokuto Shinken Denshousha no Michi	4	2008	9	130	0.03
14857	The Lord of the Rings: Conquest	15	2009	9	8	0.03
14858	The King of Fighters: Maximum Impact - Maniax	14		10	54	0.03
14859	Wand of Fortune 2: Jikuu ni Shizumu Mokushiroku	17	2011	11	279	0.03
14860	Little Busters! Converted Edition	23	2012	9	434	0.03
14861	Hankou Shashin	24	1996	11	157	0.03
14862	MeiQ no Chika Ni Shisu: A Maze to Eradicate Them All	23	2015	4	279	0.03
14863	Marker Man Adventures	4	2009	2	35	0.03
14864	Capcom Digital Collection	5	2012	9	13	0.03
14865	Pro Yakyuu Family Stadium	1	2008	1	26	0.03
14866	Open Season	7	2006	2	6	0.03
14867	Monster Hunter Frontier Online: Forward 2	5	2011	4	13	0.03
14868	Moyashimon DS	4	2009	9	197	0.03
14869	A Ressha de Gyoukou 2001	7	2001	8	241	0.03
14870	Diabolik Lovers: Lunatic Parade	23	2016	11	279	0.03
14871	Let's Dance with Mel B	1	2011	1	194	0.03
14872	Battlestations: Pacific	15	2009	12	22	0.03
14873	Neverwinter Nights 2	15	2006	4	11	0.03
14874	Starry ? Sky: In Autumn	17	2010	6	418	0.03
14875	Battlefield 1942	15	2002	7	8	0.03
14876	Back to the Future: The Game	5	2015	11	174	0.03
14877	Pitball	13	1996	1	346	0.03
14878	X-Men Origins: Wolverine - Uncaged Edition	15	2009	9	5	0.03
14879	Combat Wings: The Great Battles of WWII	1		8	89	0.03
14880	D.C. III: Da Capo III	17	2013	11	278	0.03
14881	Judge Dredd: Dredd Vs Death	7	2003	7	176	0.03
14882	Ocean Commander	1	2009	8	353	0.03
14883	Drome Racers	9	2003	3	29	0.03
14884	Wand of Fortune 2 FD: Kimi ni Sasageru Epilogue	17	2012	11	279	0.03
14885	God Eater Off Shot: Lindow-hen Twin Pack & Animation Vol. 2	11	2015	6	26	0.03
14886	Tank Beat	4	2006	12	162	0.03
14887	LEGO Pirates of the Caribbean: The Video Game	15	2011	9	33	0.03
14888	Turbo: Super Stunt Squad	20	2013	1	59	0.03
14889	Jurassic Park: Operation Genesis	15	2003	8	24	0.03
14890	The Peanuts Movie: Snoopy's Grand Adventure	5	2015	9	5	0.03
14891	Tenkaichi * Sengoku Lovers	4	2010	11	138	0.03
14892	Daito Giken Koushiki Pachi-Slot Simulator Hihouden: Taiyou o Motomeru Monotachi	6	2013	6	516	0.03
14893	Jissen Pachi-Slot Hisshouhou! Hokuto no Ken 2	7	2007	6	9	0.03
14894	Bode Miller Alpine Skiing	7	2006	1	353	0.03
14895	Mahou Sensei Negima! Private Lesson 2: Ojama Shimasu Parasite de Chu	9	2006	4	220	0.03
14896	R-Type Delta	13	1998	7	394	0.03
14897	Angelique: Maren no Rokukishi	17	2011	11	279	0.03
14898	Soul Eater: Battle Resonance	17	2009	9	26	0.03
14899	Psycho-Pass: Mandatory Happiness	11	2016	11	132	0.03
14900	Hisshou Pachinko*Pachi-slot Kouryaku Series DS Vol. 3: Shinseiki Evangelion - Yakusoku no Toki	4	2008	6	59	0.03
14901	The Great Battle Gaiden 2: Matsuri da Wasshoi	8	1994	9	58	0.03
14902	Napoleon Dynamite: The Game	4	2007	5	68	0.03
14903	Shinseiki Evangelion Ayanami Ikusei Keikaku DS with Asuka Hokan Keikaku	4	2008	8	309	0.03
14904	Rock 'N' Roll Adventures	1	2007	2	295	0.03
14905	War Gods	13	1996	10	14	0.03
14906	Evangelion: Jo	7	2009	9	26	0.03
14907	Doki Oki	13	1995	11	58	0.03
14908	Gakuen Alice: WakuWaku * Happy Friends	4	2007	11	517	0.03
14909	Kyokugen Dasshutsu ADV: Zennin Shiboudesu	23	2012	11	120	0.03
14910	Konohana 2: Todoke Kanai Requiem	7	2002	11	91	0.03
14911	Derby Time 2006	17	2006	1	4	0.03
14912	Yuusha Shisu.	23	2016	4	132	0.02
14913	Monster Mayhem: Build and Battle	4	2009	8	202	0.02
14914	Senjou no Waltz	23	2014	11	279	0.02
14915	Chuck E. Cheese's Sports Games	1	2011	1	284	0.02
14916	Ghostbusters (2016)	18	2016	9	5	0.02
14917	Stronghold 2 Deluxe	15	2005	12	3	0.02
14918	MAPLUS: Portable Navi 3	17	2009	6	400	0.02
14919	DEATH NOTE: L o Tsugu Mono	4	2007	11	15	0.02
14920	ZooCube	19	2002	5	31	0.02
14921	Puppet Show 3: Lost Town	15	2011	5	81	0.02
14922	Star Wars: Empire at War - Forces of Corruption	15	2006	12	18	0.02
14923	Spy Hunter / Super Sprint	9	2005	3	87	0.02
14924	Otometeki Koi Kakumei * Love Revo! Portable	17	2010	11	279	0.02
14925	Clover no Kuni no Alice: Wonderful Wonder World	7	2010	11	434	0.02
14926	Room Zoom: Race for Impact	14	2004	3	163	0.02
14927	Yahari Game Demo Ore no Seishun Love-Kome Hamachi Gatteiru	23	2013	11	357	0.02
14928	Tube Slider	19		3	54	0.02
14929	Ghost Pirates of Vooju Island	15	2009	11	233	0.02
14930	America Oudan Ultra-Quiz	24	1995	6	249	0.02
14931	DoDonPachi Dai-Oujou: Black Label Extra	5	2009	7	357	0.02
14932	Mind Your Language: Learn English! / French! / German! / Spanish! /Japanese!	4	2009	6	283	0.02
14933	ParaWorld	15	2006	12	42	0.02
14934	Tropico Reloaded	15	2009	12	200	0.02
14935	Shinseiki Evangelion: Battle Orchestra	7	2007	10	309	0.02
14936	Pharaoh	15	1998	12	24	0.02
14937	Vampire Mansion: Linda Hyde	4	2011	11	54	0.02
14938	Yes! Precure 5 Go Go Zenin Shu Go! Dream Festival	4	2008	9	26	0.02
14939	Battlefield 2: Modern Combat(JP sales)	7	2005	7	8	0.02
14940	The Idolmaster: Gravure For You! Vol.7	6	2012	9	26	0.02
14941	Stake: Fortune Fighters	14	2003	10	139	0.02
14942	Serious Sam Advance	9	2004	7	64	0.02
14943	The Settlers: Rise of an Empire	15	2007	12	6	0.02
14944	Let's Play Garden	1	2010	8	42	0.02
14945	Umineko no Naku Koro ni San: Shinjitsu to Gensou no Yasoukyoku	6		11	34	0.02
14946	Pop'n Music 12 Iroha	7	2006	8	15	0.02
14947	BeatMania IIDX 11: IIDX Red	7	2006	8	15	0.02
14948	Warhammer Online: Age of Reckoning	15	2008	4	518	0.02
14949	Jikkyou Powerful Pro Yakyuu 12 Ketteiban	19	2005	1	15	0.02
14950	Road Trip: The Arcade Edition	19	2002	3	87	0.02
14951	Juusanshi Engi Engetsu Sangokuden 2	17	2014	9	279	0.02
14952	No More Heroes: Heroes' Paradise	5	2010	9	220	0.02
14953	Virtua Tennis: World Tour (jp sales)	17	2005	1	9	0.02
14954	World Series of Poker 2008: Battle for the Bracelets	17	2007	6	5	0.02
14955	Ano Hi Mita Hana no Namae o Bokutachi wa Mada Shiranai	17	2012	9	357	0.02
14956	Cold War	14	2005	7	319	0.02
14957	Steel Battalion: Line of Contact	14	2004	8	13	0.02
14958	Naruto Shippuden: Ultimate Ninja Storm Collection	6	2016	9	26	0.02
14959	Ken to Mahou to Gakuen Mono. 2G	6	2010	4	310	0.02
14960	NBA Starting Five	14	2002	1	15	0.02
14961	Kami Naru Kimi to	17	2011	11	279	0.02
14962	Spy Hunter: Nowhere To Run	7	2006	3	40	0.02
14963	LEGO Harry Potter: Years 1-4	15	2010	9	20	0.02
14964	Ikki Tousen: Eloquent Fist	17	2008	10	220	0.02
14965	Viva Pinata	15	2007	8	2	0.02
14966	Carmen Sandiego: The Secret of the Stolen Drums	14	2004	9	176	0.02
14967	Disney's Magical Quest 3 Starring Mickey and Donald	9	2003	9	13	0.02
14968	Chili Con Carnage	17	2007	7	22	0.02
14969	Bus Simulator 16	15	2016	8	276	0.02
14970	Rengoku II:  The Stairway To H.E.A.V.E.N.	17	2006	9	15	0.02
14971	Teddy Together	10	2016	8	1	0.02
14972	Pony Luv	4	2008	8	96	0.02
14973	Strike Witches 2: Iyasu Naosu Punipunisuru	4	2010	9	153	0.02
14974	Omega Quintet	11	2014	4	266	0.02
14975	TV Anime Idolm@ster: Cinderella Girls G4U! Pack Vol.1	6	2015	9	26	0.02
14976	Demigod	15	2009	12	11	0.02
14977	The Voice	6	2014	9	5	0.02
14978	Ed, Edd n Eddy: The Mis-Edventures	14	2005	2	40	0.02
14979	Bunmei Haruka: Aoiza Ibunroku	17	2011	9	246	0.02
14980	TV Anime Idolm@ster: Cinderella Girls G4U! Pack Vol.6	6	2015	11	26	0.02
14981	Blade Arcus from Shining EX	11	2015	10	9	0.02
14982	Vantage Master Portable	17	2008	4	254	0.02
14983	Lilpri DS: Hime-Chen! Apple Pink	4	2010	11	9	0.02
14984	Star Trek Online	15	2010	4	11	0.02
14985	Rapala for Kinect	5	2011	1	5	0.02
14986	Rugby Challenge 3	5	2016	1	391	0.02
14987	Hisshou Pachinko*Pachi-Slot Kouryaku Series DS Vol. 1: Shinseiki Evangelion - Magokoro o, Kimi ni	4	2008	6	59	0.02
14988	Diabolik Lovers: Vandead Carnival	23	2014	9	279	0.02
14989	O.M.G. 26 - Our Mini Games	4	2007	5	12	0.02
14990	Ty the Tasmanian Tiger 3: Night of the Quinkan	14	2005	9	87	0.02
14991	AMF Xtreme Bowling	7	2006	1	85	0.02
14992	Total Overdose: A Gunslinger's Tale in Mexico	14	2005	7	22	0.02
14993	Bomberman Fantasy Race	13	1998	3	19	0.02
14994	Colin McRae Rally 2.0	9	2002	3	36	0.02
14995	Carnage Heart EXA	17	2010	12	241	0.02
14996	Tropico 4: Modern Times	15	2012	12	200	0.02
14997	Europa Universalis III Complete	15	2008	12	317	0.02
14998	Bugriders: The Race of Kings	13	1997	3	14	0.02
14999	Bust-A-Move	29	1994	5	363	0.02
15000	Wii de Asobu: Metroid Prime	1		7	1	0.02
15001	Payout Poker & Casino	17		6	54	0.02
15002	Wii de Asobu: Metroid Prime	1		7	1	0.02
15003	Wangan Midnight Portable	17	2007	3	106	0.02
15004	Cross Ange: Tenshi to Ryuu no Rondo tr.	23	2015	9	26	0.02
15005	Canvas 2	7	2006	11	153	0.02
15006	Memories Off: Sorekara Again	7	2006	11	492	0.02
15007	Tom Clancy's Rainbow Six: Vegas 2	15	2008	7	6	0.02
15008	11eyes: CrossOver	5	2009	11	357	0.02
15009	Kenka Bancho Otome	23	2016	9	185	0.02
15010	Supermodel Makeover by Lauren Luke	4	2009	8	191	0.02
15011	George of the Jungle and the Search for the Secret	1	2008	2	151	0.02
15012	AirForce Delta Storm	9	2002	7	15	0.02
15013	Serious Sam HD: Gold Edition	5	2011	7	85	0.02
15014	Peter Pan in Disney's Return to Never Land	13	2002	2	4	0.02
15015	Ferrari Challenge Trofeo Pirelli Deluxe	1	2009	3	158	0.02
15016	Xenosaga I·II	4	2006	4	26	0.02
15017	SimCity Societies	15	2007	8	8	0.02
15018	Mesaze!! Tsuri Master: Sekai ni Challenge! Hen	1	2008	1	69	0.02
15019	TV Anime Idolm@ster: Cinderella Girls G4U! Pack Vol.9	6	2016	6	26	0.02
15020	Fishdom 2 Deluxe	15	2010	5	142	0.02
15021	Kuusen II	7	2004	8	153	0.02
15022	Cross Channel: In Memory of All People	5	2011	11	462	0.02
15023	Bomberman Story DS	4	2007	4	71	0.02
15024	Penguins of Madagascar	1	2014	9	26	0.02
15025	Clannad: Mitsumi Mamoru Sakamichi de - Joukan	17	2010	11	434	0.02
15026	Brothers in Arms: Hell's Highway	15	2008	7	6	0.02
15027	Are You Alice?	17	2011	11	279	0.02
15028	Future Tactics: The Uprising	19	2004	12	259	0.02
15029	Stronghold Crusader Extreme	15	2008	12	403	0.02
15030	Kensei: Sacred Fist	13	1997	10	15	0.02
15031	Backyard NFL Football	4	2007	1	11	0.02
15032	Okashi na Shima no Peter Pan: Sweet Never Land	17	2011	11	493	0.02
15033	Urakata Hakuoki	17	2013	11	279	0.02
15034	Cities XL 2011	15	2010	8	81	0.02
15035	Kung Fu Panda	15	2008	9	5	0.02
15036	Gift: Prism	7	2006	11	501	0.02
15037	PDC World Championship Darts: Pro Tour	5	2010	1	342	0.02
15038	Shanghai: True Valor	13	1998	5	5	0.02
15039	Tokyo Xanadu eX+	11	2016	4	221	0.02
15040	Major Dream: Major DS Dream Baseball	4	2008	1	197	0.02
15041	Steins;Gate: Senkei Kousoku no Phonogram	5	2013	11	357	0.02
15042	Thunderbirds	9	2004	7	24	0.02
15043	Winning Post 8 2015	23	2015	9	49	0.02
15044	Vitamin Z Revolution	17	2010	11	59	0.02
15045	Aria: The Origination ~Aoi Wakusei no El Cielo~	7	2008	11	82	0.02
15046	Inkheart	4	2009	11	319	0.02
15047	Street Fighter X Tekken	15	2012	10	13	0.02
15048	Lunatic Dawn Tempest	7	2001	4	241	0.02
15049	Ceville	15	2009	9	200	0.02
15050	Strike Witches: Shirogane no Tsubasa	17	2012	12	153	0.02
15051	Total Immersion Racing	14	2002	3	90	0.02
15052	Totally Spies! 2: Undercover	4	2006	9	11	0.02
15053	Luxor: The Wrath of Set	17	2006	5	235	0.02
15054	Natalie Brooks: Mystery at Hillcrest High	4	2012	9	513	0.02
15055	NASCAR Heat Evolution	18	2016	3	483	0.02
15056	Board Game: Top Shop	13	1999	6	91	0.02
15057	NANA: Live Staff Daiboshuu! Shoshinsha Kangei	4	2007	9	15	0.02
15058	Castlevania: Lords of Shadow - Reverie	5	2011	9	15	0.02
15059	Xia-Xia	4	2012	2	34	0.02
15060	Cocoto Magic Circus	1	2008	7	296	0.02
15061	Zero no Tsukaima: Shou-akuma to Harukaze no Concerto	7	2007	11	220	0.02
15062	Dunamis 15	6	2011	11	357	0.02
15063	DemiKids: Dark Version	9	2002	4	72	0.02
15064	Mage Knight: Destiny's Soldier	4	2006	12	26	0.02
15065	GT Legends	15	2005	3	11	0.02
15066	Blender Bros.	9	2002	2	54	0.02
15067	Suzumiya Haruhi no Heiretsu	1	2009	11	9	0.02
15068	F1 Race Stars	15	2012	3	36	0.02
15069	DemiKids: Light Version	9	2002	4	72	0.02
15070	Nanatsuiro * Drops Pure!!	7	2007	11	408	0.02
15071	Pe-Jongju to Manabu Kankokugo DS: Test-Hen	4	2010	6	59	0.02
15072	Escape the Emerald Star	15	2011	5	208	0.02
15073	La Corda d'Oro 4	23	2016	9	49	0.02
15074	Thomas and Friends: Steaming around Sodor	10	2015	9	123	0.02
15075	Titanic Mystery	1	2010	5	342	0.02
15076	Falcon 4.0: Allied Force	15	2005	8	519	0.02
15077	Bottom of the 9th '97	13	1997	1	15	0.02
15078	Shaman King: Chou Senjiryokketsu 3	9	2002	4	520	0.02
15079	Ride	5	2015	3	257	0.02
15080	Line Rider 2: Unbound	1	2008	5	42	0.02
15081	HatsuKare * Renai Debut Sengen!	17	2013	11	246	0.02
15082	Treasure Chase	4	2011	5	216	0.02
15083	Unreal Anthology	15	2006	7	40	0.02
15084	X3: Terran War Pack	15	2012	6	42	0.02
15085	Prison Architect	11	2016	9	521	0.02
15086	G1 Jockey Wii	1	2007	1	49	0.02
15087	Kingdom: Ikkitousen no Ken	17	2010	9	15	0.02
15088	Wrestle Kingdom 2: Pro Wrestling Sekai Taisen	7	2007	10	511	0.02
15089	Rugby League Live 3	11	2015	9	339	0.02
15090	Tom Clancy's EndWar	15	2009	12	6	0.02
15091	RayCrisis: Series Termination	13	1999	7	41	0.02
15092	Left 4 Dead	15	2008	7	8	0.02
15093	Bejeweled 2 Deluxe	15	2006	5	81	0.02
15094	Ikki Tousen: Shining Dragon	7	2007	4	220	0.02
15095	Kimi ga Aruji de Shitsuji ga Ore de: Oshie Nikki	7	2008	11	522	0.02
15096	Toxic Grind	14	2002	1	29	0.02
15097	DiRT	15	2007	3	36	0.02
15098	Kawasaki Jet Ski	1	2008	3	139	0.02
15099	Genkai Tokki: Seven Pirates	23	2016	4	266	0.02
15100	Enchanted Arms (JP sales)	5	2006	4	6	0.02
15101	ScrapLand	14	2005	9	42	0.02
15102	Daito Giken Koushiki Pachi-Slot Simulator: Hihouden - Fuujirareta Megami Portable	17	2011	6	362	0.02
15103	Geten no Hana	17	2013	6	49	0.02
15104	Crazy Machines	1	2010	5	233	0.02
15105	Harukanaru Toki no Naka de 3 with Izayoiki Aizouban	17	2009	11	49	0.02
15106	Blade Arcus from Shining EX	6	2015	10	9	0.02
15107	Brave: The Video Game	1	2012	9	33	0.02
15108	Frontlines: Fuel of War	15	2008	7	29	0.02
15109	D.Gray-man: Sousha no Shikaku	7	2008	11	15	0.02
15110	Indianapolis 500 Evolution	5	2009	3	202	0.02
15111	Ookami to Koushinryou: Omiowataru Kaze	4	2009	11	429	0.02
15112	Grey's Anatomy: The Video Game	15	2009	11	6	0.02
15113	School Days LxH	7	2008	11	466	0.02
15114	Neo Angelique	7	2006	11	49	0.02
15115	Big Idea's VeggieTales: LarryBoy and the Bad Apple	7	2006	9	68	0.02
15116	Namco Museum Battle Collection (JP sales)	17	2005	6	4	0.02
15117	Chaos;Head Noah	17	2010	11	357	0.02
15118	Brandish: The Dark Revenant	17	2009	4	254	0.02
15119	Summon Night: Swordcraft Story	9	2003	4	58	0.02
15120	Samurai Shodown V	14	2006	10	151	0.02
15121	Pro Fishing Challenge	14	2004	1	72	0.02
15122	Minna no Chizu 2	17	2007	6	469	0.02
15123	Franklin's Great Adventures	4	2006	9	103	0.02
15124	Test Drive Unlimited	15	2007	3	11	0.02
15125	SAW	15	2009	9	15	0.02
15126	Princess Saver! Eternal Love for My Lady	7	2010	11	449	0.02
15127	To Love-Ru Trouble: Darkness - True Princess	23	2015	9	246	0.02
15128	Tokyo Mew Mew	13	2002	4	152	0.02
15129	Jitsumei Jikkyou Keiba Dream Classic 2002	7	2002	1	26	0.02
15130	Ice Age: Dawn of the Dinosaurs	15	2009	9	5	0.02
15131	Interactive Storybook DS Series 3	4	2007	6	404	0.02
15132	Moujuutsukai to Oujisama: Snow Bride Portable	17	2012	11	279	0.02
15133	Twinkle * Crusaders GoGo!	17	2010	11	429	0.02
15134	Serious Sam HD: Gold Edition	15	2010	7	523	0.02
15135	Rule of Rose	7	2006	9	12	0.02
15136	RedCard 20-03	19	2002	1	40	0.02
15137	Homeworld	15	1998	12	24	0.02
15138	Freestyle Metal X	14	2003	3	40	0.02
15139	Shonen Jump's One Piece: Grand Adventure	7	2005	10	26	0.02
15140	Pac-Man World Rally	7	2006	3	26	0.02
15141	Plants vs. Zombies: Garden Warfare	15	2014	7	8	0.02
15142	Max Payne	15	2001	7	3	0.02
15143	Uta Kumi 575	23	2014	6	9	0.02
15144	Invizimals: The Lost Kingdom	6	2013	9	4	0.02
15145	428: Fuusa Sareta Shibuya de	6	2009	11	130	0.02
15146	IL-2 Sturmovik: Forgotten Battles	15	2003	8	6	0.02
15147	Overlord	15	2007	12	36	0.02
15148	Sacred 3	15	2014	4	42	0.02
15149	The Professor's Brain Trainer: Logic	4	2005	5	12	0.02
15150	Fritz Chess	1	2009	12	42	0.02
15151	Hisshou Pachinko * Pachi-Slot Kouryaku Series Portable Vol. 2: CR Evangelion - Hajimari no Fukuin	17	2010	6	59	0.02
15152	NFL Blitz Pro	19	2003	1	40	0.02
15153	Rocket League	15	2016	1	12	0.02
15154	Balls of Fury	1	2007	1	87	0.02
15155	18 Wheels of Steel: Extreme Trucker	15	2009	3	142	0.02
15156	Rugby World Cup 2015	18	2015	1	6	0.02
15157	Winning Post 8 2015	6	2015	9	49	0.02
15158	Veggy World	4	2011	7	195	0.02
15159	Commandos: Strike Force	14	2006	7	22	0.02
15160	Ukiyo no Roushi	23	2015	9	54	0.02
15161	SBK: Snowboard Kids	4	2005	1	71	0.02
15162	Warriors of the Lost Empire (JP sales)	17	2007	4	393	0.02
15163	Jojo's Bizarre Adventure	13	1999	10	19	0.02
15164	Lode Runner	4	2006	5	124	0.02
15165	Zathura	14	2005	11	3	0.02
15166	Cities in Motion Collection	15	2011	8	54	0.02
15167	Evolution Snowboarding	7	2002	1	15	0.02
15168	Jissen Pachinko Hisshouhou! CR Sakura Taisen	7	2007	6	9	0.02
15169	Aegis of Earth: Protonovus Assault	11	2016	9	148	0.02
15170	Freedom Wings	4	2006	8	80	0.02
15171	Super Nazo Puyo Tsuu: Ruruu no Tetsuwan Hanjyouki	8	1996	5	92	0.02
15172	Zillions of Enemy X: Zetsukai no Crusade	6	2013	4	132	0.02
15173	Dream Chronicles	4	2010	11	75	0.02
15174	Kung Fu Panda: Showdown of Legendary Legends	6	2015	9	231	0.02
15175	The Settlers IV	15	2001	12	524	0.02
15176	Happiness! De-Lucks	7	2007	11	220	0.02
15177	Mount & Blade	15	2008	4	317	0.02
15178	Doki Majo Plus	4	2009	11	226	0.02
15179	Eureka Seven Vol. 2: The New Vision	7	2006	7	26	0.02
15180	Love Once: Mermaid's Tears	6	2011	11	54	0.02
15181	Puzzle Challenge: Crosswords and More!	7	2006	5	68	0.02
15182	Mata Hari: Betrayal is only a Kiss Away	15	2008	11	233	0.02
15183	Simple 2500 Series Portable!! Vol. 12: The Hohei 2: Senyuu yo, Sakini Ike	17	2009	9	59	0.02
15184	Muppets Party Cruise	19	2003	6	73	0.02
15185	Quake 4	15	2005	7	5	0.02
15186	Maximum Capacity: Hotel Giant	15	2002	12	259	0.02
15187	Sengoku Otome: Legend Battle	23	2016	9	54	0.02
15188	Shippuu Mahou Daisakusen: Kingdom-Grandprix	24	1996	7	525	0.02
15189	Yamasa Digi Portable: Matsuri no Tatsujin - Win-Chan no Natsumatsuri	17	2006	6	526	0.02
15190	Quiz Present Variety Q-Sama!! DS: Pressure Study x Atama Gai Kunaru Drill SP	4	2011	6	527	0.02
15191	Fritz Chess	4	2009	12	42	0.02
15192	Heart no Kuni no Alice Anniversary Ver.: Wonderful Wonder World	17	2011	11	493	0.02
15193	Fuel	15	2009	3	36	0.02
15194	Serious Sam: Next Encounter	19	2004	7	64	0.02
15195	PachiPara 15: Super Umi Monogatari in Okinawa 2	6	2010	6	394	0.02
15196	Motto! SoniComi	6	2014	8	278	0.02
15197	Let's Play Flight Attendant	4	2010	8	42	0.02
15198	Akai Ito DS	4	2008	11	82	0.02
15199	Knight's Apprentice: Memorick's Adventures	14	2004	9	360	0.02
15200	Saint	1		7	54	0.02
15201	Darksiders	6	2010	9	29	0.02
15202	Natsuiro no Sunadokei	7	2002	11	479	0.02
15203	Indigo Prophecy	15	2005	11	11	0.02
15204	Jissen Pachi-Slot Hisshouhou! Mister Magic Neo	7	2007	6	9	0.02
15205	Tale of a Hero	15	2010	11	303	0.02
15206	Valentino Rossi: The Game	18	2016	3	26	0.02
15207	Turbo: Super Stunt Squad	6	2013	1	59	0.02
15208	FIFA Soccer 09	15	2008	1	8	0.02
15209	The Lord of the Rings: The Battle for Middle-Earth II	15	2006	12	8	0.02
15210	Ballblazer Champions	13	1997	1	109	0.02
15211	Steal Princess	4		2	54	0.02
15212	So Blonde	15	2008	11	22	0.02
15213	Winter Sports 2011	5	2011	1	233	0.02
15214	Koisuru Otome to Shugo no Tate: The Shield of AIGIS	7	2008	11	82	0.02
15215	Disney's Meet the Robinsons	4	2007	9	33	0.02
15216	Casper's Scare School: Classroom Capers	4	2008	11	291	0.02
15217	Moujuutsukai to Oujisama Portable	17	2011	11	279	0.02
15218	Galaxy Angel II: Eigou Kaiki no Koku	7	2009	12	309	0.02
15219	Genroh	17	2012	9	279	0.02
15220	Otome wa Oanesama Boku ni Koi Shiteru Portable	17	2010	11	82	0.02
15221	Iron Phoenix	14	2005	10	9	0.02
15222	Legend: Hand of God	15	2007	4	233	0.02
15223	Geon Cube	1	2009	5	212	0.02
15224	Tennis no Oji-Sama: Driving Smash! Side King	4	2008	1	15	0.02
15225	Kuon	7	2004	11	237	0.02
15226	Kannou Mukashi Banashi Portable	17	2012	11	279	0.02
15227	Umineko no Naku Koro ni: Majo to Suiri no Rinbukyoku	6	2010	11	82	0.02
15228	Diabolik Lovers: More Blood	23	2015	11	279	0.02
15229	Triple Crown Championship Snowboarding	1	2010	1	154	0.02
15230	UnchainBlades EXXiV	10	2012	4	246	0.02
15231	The Fast and the Furious	17	2007	3	42	0.02
15232	Fallout Trilogy	15	2004	4	6	0.02
15233	Carmen Sandiego: The Secret of the Stolen Drums	19	2004	9	176	0.02
15234	The Sims: Complete Collection	15	2005	8	8	0.02
15235	Command & Conquer 3: Deluxe Edition	15	2008	12	8	0.02
15236	Dance! It's Your Stage	6	2011	6	233	0.02
15237	Sacred Gold	15	2005	4	497	0.02
15238	Dies Irae: Amantes Amentes	17	2012	9	528	0.02
15239	Puyo Puyo! 15th Anniversary	17	2007	5	9	0.02
15240	Mind over Matter	4	2010	5	12	0.02
15241	The Idolmaster: Gravure For You! Vol.9	6	2012	9	26	0.02
15242	Discovery Kids: Snake Safari	4	2009	8	12	0.02
15243	Ryu-koku	7	2006	11	492	0.02
15244	Maji de Manabu: LEC de Ukaru - DS Hishou Boki 3-Kyuu	4	2008	6	17	0.02
15245	Group S Challenge	14	2003	3	13	0.02
15246	GunParade Orchestra: Midori no Shou	7	2006	11	4	0.02
15247	Shooter: Starfighter Sanvein	13	2000	7	162	0.02
15248	Jewel Master: Cradle Of Rome 2	4	2011	5	71	0.02
15249	Sakura Wars 1 & 2	17	2006	12	9	0.02
15250	Kao Challengers	17	2005	2	11	0.02
15251	Brave: The Video Game	4	2012	9	33	0.02
15252	Order of War	15	2009	12	17	0.02
15253	Terminator 3: The Redemption	19	2004	7	11	0.02
15254	Painkiller	15	2004	7	319	0.02
15255	Date A Live: Arusu Install	6	2014	11	266	0.02
15256	Canimal Triple	23	2014	6	20	0.02
15257	Tengen Toppa Gurren-Lagann	4	2007	9	15	0.02
15258	Sugoi Hebereke	8	1994	10	242	0.02
15259	Pebble Beach Golf Links	24	1994	1	9	0.02
15260	Spider-Man: Web of Shadows	15	2008	9	5	0.02
15261	Dakar 2: The World's Ultimate Rally	14	2003	3	31	0.02
15262	Jelly Belly: Ballistic Beans	1	2009	5	87	0.02
15263	PopCap Hits!	5	2011	6	208	0.02
15264	Mario Tennis	10		1	34	0.02
15265	Higurashi Daybreak Portable Mega Edition	17	2009	11	82	0.02
15266	Dragon's Lair	4	2010	2	154	0.02
15267	Shinken de Watashi ni Koi Shinasai! R	6	2012	9	522	0.02
15268	Whiteout	7	2002	3	15	0.02
15269	Shiratsuyu no Kai	17	2013	11	279	0.02
15270	Dungeon Defenders	15	2011	4	54	0.02
15271	Final Fantasy XIV: Heavensward	6	2015	9	17	0.02
15272	Sniper Elite V2	20	2013	7	12	0.02
15273	World Neverland 2in1 Portable: Olerud Kingdom & Republic of Pluto	17	2008	8	529	0.02
15274	XGRA: Extreme G Racing Association	19	2003	3	31	0.02
15275	Command & Conquer: The First Decade	15	2006	12	8	0.02
15276	Thomas & Friends: Hero of the Rails	1	2010	6	54	0.02
15277	Taito Legends 2	7	2006	6	90	0.02
15278	World Championship Poker featuring Howard Lederer: All In	1	2006	6	12	0.02
15279	Kill.Switch	9	2004	7	87	0.02
15280	Renai Banchou: Inochi Meishi, Koiseyo Otome! Love is Power!!!	17	2010	11	279	0.02
15281	Jinsei Game Wii	1	2007	6	197	0.02
15282	Heavy Fire: The Chosen Few 3D	10	2011	7	178	0.02
15283	Motto Hayaku! Seikaku Ni! Suu Sense Keisan Ryuoku Up Training - SuuTore	4	2008	6	365	0.02
15284	Hyakka Hyakurou: Sengoku Ninpoujou	23	2016	11	59	0.02
15285	Jake Hunter: Detective Chronicles	4	2008	11	343	0.02
15286	Gekka Ryouran Romance	17	2011	11	279	0.02
15287	Don Bradman Cricket 14	6	2014	1	339	0.02
15288	Guess the Logos	14	2004	5	9	0.02
15289	Ore no Yome: Anata Dake no Hanayome	5	2010	11	279	0.02
15290	Crime Scene	4	2009	11	127	0.02
15291	Military History: Commander - Europe at War	17	2009	12	326	0.02
15292	NightTruth: Explanation of the Paranormal - The Making of Nighttruth: Voice Selection	24	1996	6	467	0.02
15293	Final Approach 2: 1st Priority	7	2008	11	479	0.02
15294	Stormrise	15	2009	12	9	0.02
15295	Gochuumon wa Usagi Desu ka?? Wonderful Party!	23	2016	11	357	0.02
15296	Moujuutsukai to Oujisama: Snow Bride	7	2011	11	279	0.02
15297	Detective Jinguuji Saburo: Ronde Revenge	10	2012	9	224	0.02
15298	Casper: Spirit Dimensions	19	2002	2	73	0.02
15299	Meitantei Evangelion	7	2007	11	309	0.02
15300	Tsuyo Kiss 2 Portable	17	2010	11	530	0.02
15301	Butt-Ugly Martians: Zoom or Doom!	7	2002	3	24	0.02
15302	Mar Heaven: Karudea no Akuma	4	2006	4	15	0.02
15303	F1 2016 (Codemasters)	15	2016	3	36	0.02
15304	Brain Dead 13	13	1996	11	430	0.02
15305	Spider-Man 3	15	2007	2	5	0.02
15306	Robotics;Notes	5	2012	11	357	0.02
15307	Hoppie	4	2011	2	195	0.02
15308	Rugby League Team Manager 2015	15	2015	9	391	0.02
15309	Shaberu! DS Oryouri Navi: Marugoto Teikoku Hotel: Saikouhou no Ryouri-chou ga Oshieru Katei Ryouri	4	2007	6	49	0.02
15310	The Lord of the Rings Online: Mines of Moria	15	2008	4	531	0.02
15311	T.A.C. Heroes : Big Red One	4	2010	12	216	0.02
15312	War Leaders: Clash of Nations	15	2009	12	359	0.02
15313	Dungeons & Dragons: Shadow over Mystara	6	2013	4	13	0.02
15314	The King of Fighters NeoWave	14	2006	10	226	0.02
15315	Super PickUps	7	2007	3	165	0.02
15316	Puzzle Quest: Challenge of the Warlords	17	2007	5	59	0.02
15317	Aquanaut's Holiday	13	1995	11	4	0.02
15318	Negima!? Chou Mahora Taisen Chuu: Checkiin Zenin Shuugou! Yappari Onsen Kichaimashitaa	4	2007	11	220	0.02
15319	Runaway: A Twist of Fate	4		11	81	0.02
15320	Hot 'n' Cold	4	2009	9	35	0.02
15321	Nisenochigiri	17	2010	11	279	0.02
15322	Wakeboarding Unleashed Featuring Shaun Murray	9	2003	1	263	0.02
15323	The Testament of Sherlock Holmes	5	2012	11	81	0.02
15324	Kikou Heidan J-Phoenix: Cobalt Shoutaihen	7	2002	9	152	0.02
15325	Last Escort	7	2006	11	59	0.02
15326	Meikyuu Cross Blood: Reloaded	5	2011	9	54	0.02
15327	Livly Garden	4	2010	8	220	0.02
15328	Nicktoons Collection: Game Boy Advance Video Volume 3	9	2005	6	34	0.02
15329	Elminage III: Ankoku no Shito to Yaiyou no Kyuuden	17	2011	4	201	0.02
15330	Commando: Steel Disaster	4	2008	7	515	0.02
15331	Aria: The Natural ~Tooi Yume no Mirage~	7	2006	11	82	0.02
15332	Hellgate: London	15	2007	4	8	0.02
15333	Katekyoo Hitman Reborn! Dream Hyper Battle! Wii	1	2008	10	220	0.02
15334	The Awakened Fate Ultimatum	6	2014	4	132	0.02
15335	Gal Gun	6	2012	7	82	0.02
15336	Chuck E. Cheese's Super Collection	1	2011	9	284	0.02
15337	Hakuouki: Yuugi Roku DS	4	2011	11	279	0.02
15338	Mystery Tales 2: The Spirit Mask	4	2011	5	54	0.02
15339	Kung Fu Panda: Showdown of Legendary Legends	10	2015	9	231	0.02
15340	Shonen Jump's Shaman King: Master of Spirits 2	9	2005	4	15	0.02
15341	Dead Rising	11	2016	9	13	0.02
15342	Homefront: The Revolution	15	2016	7	42	0.02
15343	Toki no Kizuna: Hanayui Tsuzuri	17	2013	11	279	0.02
15344	The Technomancer	18	2016	4	81	0.02
15345	Rinne no Lagrange: Kamogawa Days	6	2012	11	26	0.02
15346	TOCA Race Driver 3	15	2006	3	36	0.02
15347	Airport Simulator	15	2011	8	54	0.02
15348	Casper's Scare School: Spooky Sports Day	1	2009	1	291	0.02
15349	Code R	24	1998	11	532	0.02
15350	The Idolmaster: Gravure For You! Vol.8	6	2012	9	26	0.02
15351	Disney Sports Football	9	2002	1	54	0.02
15352	Oil Rush	15	2012	12	470	0.02
15353	Cabela's Big Game Hunter: Pro Hunts	20	2014	7	5	0.02
15354	Chicken Hunter	4	2007	7	533	0.02
15355	Hakuoki: Shinkai - Furi no Shou	23	2015	9	279	0.02
15356	Demolition Company: Gold Edition	15	2011	8	34	0.02
15357	Headhunter: Redemption	14	2004	9	9	0.02
15358	Onechanbara Special	17	2011	9	59	0.02
15359	Daikaijuu Battle: Ultra Coliseum	1	2008	10	26	0.02
15360	Saki: Achiga-Hen Portable	17	2013	11	82	0.02
15361	Bella Sara 2 - The Magic of Drasilmare	10	2013	11	128	0.02
15362	Minna de Dokusho: Keatai Shousetsu Desu	17	2008	6	534	0.02
15363	Polar Bowler	4	2008	1	235	0.02
15364	Prehistorik Man	9	2001	2	29	0.02
15365	F1 2002	9	2002	3	204	0.02
15366	Chicago Enforcer	14	2005	7	189	0.02
15367	Jinguuji Saburou DS: Akai Chou	4	2010	11	224	0.02
15368	Dance Dance Revolution Extra Mix	13	2001	8	15	0.02
15369	UnchainBlades EXXiV	17	2012	4	246	0.02
15370	Princess Isabella: A Witch's Curse	1	2010	11	154	0.02
15371	Meitantei Conan: Kieta Hakase to Machigai Sagashi no Tou	4	2008	11	26	0.02
15372	The Legend of Heroes: Trails in the Sky Third Chapter	23	2016	4	221	0.02
15373	Pippa Funnell: Ranch Rescue	1	2007	11	6	0.02
15374	Jewel Link: Galactic Quest	4	2012	9	123	0.02
15375	Super Bowling	12	1999	1	401	0.02
15376	Rat Attack!	12	2000	5	52	0.02
15377	Kawaii Koinu DS 3	4	2010	8	333	0.02
15378	Chuugen no Hasha: Sangoku Shouseiden	17	2006	12	26	0.02
15379	Chevrolet Camaro: Wild Ride	4	2010	3	216	0.02
15380	The Sims 2: Happy Holiday Stuff	15	2006	8	8	0.02
15381	Largo Winch .// Commando Sar	13	2002	11	6	0.02
15382	Joker no Kuni no Alice: Wonderful Wonder World	17	2011	11	493	0.02
15383	Cross Treasures	4	2009	4	17	0.02
15384	Ruff Trigger: The Vanocore Conspiracy	7	2006	2	80	0.02
15385	Silent Bomber	13	1999	9	19	0.02
15386	Samurai & Dragons	23	2012	9	9	0.02
15387	TV Anime Idolm@ster: Cinderella Girls G4U! Pack Vol.7	6	2015	6	26	0.02
15388	Elminage Original: Majo to Megami to Kamigami no Yubiwa	17	2011	4	201	0.02
15389	TalkMan	17	2006	6	4	0.02
15390	XGRA: Extreme G Racing Association	14	2003	3	31	0.02
15391	Uta no * Prince-Sama	17	2010	11	309	0.02
15392	Ridge Racer Unbounded	15	2012	3	26	0.02
15393	Elminage Gothic: Ulm Zakir to Yami no Gishiki	17	2012	4	201	0.02
15394	Planetarium Creator Ohira Takayuki Kanshuu: HomeStar Portable - 21st Century Star Navigator	17	2006	6	9	0.02
15395	Crayon Shin-Chan: Uchuu de Achoo!? Yuujou no Oba-Karate!!	10	2011	9	26	0.02
15396	Invizimals: The Resistance	23	2014	4	4	0.02
15397	Anima - Gate of Memories	11	2016	9	191	0.02
15398	B-17: Fortress in the Sky	4	2007	8	293	0.02
15399	Mushishi: Amefuru Sato	4	2008	8	220	0.02
15400	Arcana Famiglia: Vascello Phantasma no Majutsushi	17	2012	9	449	0.02
15401	The Legend of Heroes: Trails in the Sky Second Chapter	6	2013	4	254	0.02
15402	Motocross Mania 3	14	2005	3	3	0.02
15403	Psycho-Pass: Mandatory Happiness	23	2016	11	132	0.02
15404	ESPN MLS ExtraTime 2002	19	2002	1	15	0.02
15405	Winning Post 7: Maximum 2007	7	2007	1	49	0.02
15406	Resident Evil: Umbrella Corps	11	2016	9	13	0.02
15407	Strike Witches: Anata to Dekiru Koto - A Little Peaceful Days	7	2010	9	93	0.02
15408	Vitamin R	17	2013	11	59	0.02
15409	Fist of the North Star: Ken's Rage 2	20	2013	10	49	0.02
15410	Maximum Racing: Crash Car Racer	1	2010	3	125	0.02
15411	Dragon Ball Z: Buu's Fury / Dragon Ball GT: Transformation	9	2006	9	11	0.02
15412	Deus Ex: Mankind Divided	15	2016	4	17	0.02
15413	Guitar Freaks V2 & DrumMania V2	7	2006	8	15	0.02
15414	Backyard Baseball '09	7	2008	1	11	0.02
15415	Puzzle City	4	2009	5	154	0.02
15416	Gakuen K: Wonderful School Days	17	2014	11	279	0.02
15417	Worms	5	2007	12	2	0.02
15418	RollerCoaster Tycoon World	15	2016	8	11	0.02
15419	Pastel Chime Continue	17	2010	11	357	0.02
15420	Trapped Dead	15	2011	12	470	0.02
15421	Super Fruit Fall	1	2006	5	158	0.02
15422	Zwei!!	17	2008	4	254	0.02
15423	Pump It Up: Exceed	14	2005	6	178	0.02
15424	Ro-Kyu-Bu! Lost Secret	17	2013	11	153	0.02
15425	CV Casting Voice	6	2014	11	26	0.02
15426	Littlest Pet Shop	15	2008	8	8	0.02
15427	Net High	23	2015	11	535	0.02
15428	Malice	7	2004	2	374	0.02
15429	Defendin' De Penguin	4	2008	12	202	0.02
15430	The Sims 2: Family Fun Stuff	15	2006	8	8	0.02
15431	Sega Ages 2500 Series Vol. 32: Phantasy Star Complete Collection	7	2008	4	9	0.02
15432	Worldwide Soccer Manager 2007	15	2006	1	9	0.02
15433	Heroes of the Pacific	15	2005	8	36	0.02
15434	Kokoro Connect: Yochi Random	17	2012	9	26	0.02
15435	Tenkai Knights: Brave Battle	10	2014	9	26	0.02
15436	Mount & Blade: Warband	15	2010	4	317	0.02
15437	Horrid Henry: Missions of Mischief	1	2010	11	84	0.02
15438	Dark Tales: Edgar Allan Poe's The Premature Burial	15	2012	5	536	0.02
15439	Painkiller: Hell & Damnation	5	2013	7	125	0.02
15440	Resident Evil Zero	15	2016	9	13	0.02
15441	Warship Gunner 2 Portable	17	2009	8	49	0.02
15442	Nervous Brickdown	4	2007	5	22	0.02
15443	Downtown Nekketsu Jidaigek	10	2015	9	224	0.02
15444	Mini Ninjas	15	2009	9	22	0.02
15445	Legend of Kay Anniversary	11	2015	9	125	0.02
15446	NHL 09	15	2008	1	8	0.02
15447	Spanish for Everyone!	4	2007	5	5	0.02
15448	Battle Princess of Arcadias	6	2013	4	132	0.02
15449	Nobunaga's Ambition: Tenshouki with Power-Up Kit HD Version	23	2015	12	49	0.02
15450	Germany's Next Topmodel 2011	1	2011	8	509	0.02
15451	Uchuu Keiji Tamashii: The Space Sheriff Spirits	7	2006	9	26	0.02
15452	Angelique Retour	23	2015	9	49	0.02
15453	Winx Club: Saving Alfea	4	2014	9	26	0.02
15454	UFO: Trilogy	15	2007	12	54	0.02
15455	Mount & Blade Collection	15	2012	4	317	0.02
15456	Car Battler Joe	9	2001	4	249	0.02
15457	Vietcong	15	2003	7	214	0.02
15458	StormLover Karen!!	17	2011	11	59	0.02
15459	Digimon Rumble Arena 2	14	2004	10	11	0.02
15460	Steins;Gate: Hiyoku Renri no Darling	6	2012	11	357	0.02
15461	Ten Pin Alley 2	1	2008	1	165	0.02
15462	Coded Soul: Uke Keigareshi Idea	17	2008	4	4	0.02
15463	Starship Troopers	15	2005	7	90	0.02
15464	AIR	17	2007	11	434	0.02
15465	Crysis: Warhead	15	2008	7	8	0.02
15466	Hana to Otome ni Shukufuku o: Harekaze no Okurimono	7	2010	11	82	0.02
15467	Dino Dini's Kick Off Revival	11	2016	1	191	0.02
15468	Garfield Gets Real	4	2009	9	202	0.02
15469	Mighty No. 9	20	2016	2	42	0.02
15470	Atlantic Quest	15	2011	5	191	0.02
15471	Tycoon City: New York	15	2006	12	11	0.02
15472	TV Anime Idolm@ster: Cinderella Girls G4U! Pack Vol.5	6	2015	9	26	0.02
15473	Agatha Christie: The ABC Murders	15	2016	11	360	0.02
15474	Virtua Pro Football	7	2006	1	9	0.02
15475	Date-A-Live Twin Edition: Rio Reincarnation	23	2015	9	266	0.02
15476	Adidas Power Soccer 98	13	1998	1	88	0.02
15477	Natsuiro High School: Seishun Hakusho	11	2015	9	59	0.02
15478	Black Rose Valkyrie	11	2016	4	279	0.02
15479	Yu-Gi-Oh! 5D's Wheelie Breakers (JP sales)	1		3	54	0.02
15480	Heroes VS	17	2013	10	26	0.02
15481	Kazoku Keikaku	17	2010	11	462	0.02
15482	Sotsugyou II: Neo Generation Special	29	1995	8	537	0.02
15483	Transformers: Revenge of the Fallen (XBox 360, PS3, & PC Versions)	15	2009	7	5	0.02
15484	Agatha Christie's The ABC Murders	11	2016	11	360	0.02
15485	Tom Clancy's Splinter Cell Classic Trilogy HD	6	2011	9	6	0.02
15486	Aoishiro	7	2008	11	91	0.02
15487	Rainbow Islands Revolution	4	2005	2	71	0.02
15488	Warhammer 40,000: Dawn of War: Soulstorm	15	2008	12	29	0.02
15489	Virtual Kasparov	9	2002	12	104	0.02
15490	Codename: Kids Next Door: Operation V.I.D.E.O.G.A.M.E.	14	2005	2	64	0.02
15491	Dynasty Warriors 8: Empires	23	2015	9	49	0.02
15492	Mary King's Riding School	4	2008	8	145	0.02
15493	Devil Survivor: Over Clock	10	2015	12	72	0.02
15494	PC Engine Best Collection: Tengai Makyou Collection	17	2008	4	69	0.02
15495	Commandos 3: Destination Berlin	15	2003	12	22	0.02
15496	Otoko Yukaku	23	2015	9	59	0.02
15497	Speed Kings	19	2003	3	31	0.02
15498	Spirits and Demons: 5 Game Pack	15	2015	6	536	0.02
15499	Rose to Tasogare no Kojou	23	2016	9	132	0.02
15500	Army Rescue	1	2009	7	284	0.02
15501	Azada	10	2012	5	513	0.02
15502	ESPN MLS ExtraTime 2002	14	2002	1	15	0.02
15503	Zettai Meikyuu Grimm: Nanatsu no Kagi to Rakuen no Otome	17	2010	6	538	0.02
15504	Dreamer Series: Horse Trainer	4	2008	8	319	0.02
15505	Hogs of War	13	2000	12	53	0.02
15506	Katekyoo Hitman Reborn! Dream Hyper Battle!	7	2007	10	220	0.02
15507	Muchi Muchi Pork & Pink Sweets	5	2011	7	358	0.02
15508	Point Blank 3	13	2000	7	26	0.02
15509	Meiji Toukyou Renka	17	2013	11	309	0.02
15510	Sengoku Basara: Sanada Yukimura-Den	6	2016	9	13	0.02
15511	Hakuoki: Shinkai - Hana no Shou	23	2016	11	279	0.02
15512	Mushihimesama	5	2012	9	358	0.02
15513	Uru: Ages Beyond Myst	15	2003	11	6	0.02
15514	Higurashi no Naku Koro ni: Jan	17	2009	6	255	0.02
15515	Soukoku no Kusabi: Hiiro no Kakera 3 - Ashita e no Tobira	17	2012	9	279	0.02
15516	Elvandia Story	7	2007	4	130	0.02
15517	Triggerheart Excelica Enhanced	7	2009	7	82	0.02
15518	Puzzle Star Sweep	13	1997	5	162	0.02
15519	Battle Spirits: Kiseki no Hasha	17	2009	4	26	0.02
15520	X-Plane 10 Global	15	2013	8	539	0.02
15521	Chrysler Classic Racing	4	2008	3	75	0.02
15522	The Conveni 4	7	2006	8	227	0.02
15523	The Cheetah Girls	9	2006	6	33	0.02
15524	Charlie's Angels	19	2003	9	6	0.02
15525	WRC 2: FIA World Rally Championship	15	2011	3	6	0.02
15526	uDraw Studio: Instant Artist	5	2011	6	29	0.02
15527	Seitokai no Ichizon: DS-suru Seitokai	4	2010	11	153	0.02
15528	Teenage Mutant Ninja Turtles Double Pack	9	2006	9	15	0.02
15529	Prism Ark: Awake	7	2008	11	357	0.02
15530	Rozen Maiden: Duellwalzer	7	2006	11	94	0.02
15531	Rugby 06	14	2006	1	8	0.02
15532	Marvel Avengers: Battle for Earth	5	2012	9	6	0.02
15533	Winter Blast: 9 Snow & Ice Games	1	2010	1	154	0.02
15534	Natsuiro High School: Seishun Hakusho	6	2015	9	59	0.02
15535	Kamen Rider: Battride War II	20	2014	9	26	0.02
15536	Shrek / Shark Tale Game Boy Advance Video	9	2006	6	28	0.02
15537	Urban Chaos: Riot Response	14	2006	7	22	0.02
15538	Ginga Fukei Densetsu: Sapphire	28	1995	7	69	0.02
15539	Katekyoo Hitman Reborn!! Let's Ansatsu!? Nerawareta 10 Daime!	7	2007	9	220	0.02
15540	The Mummy	9	2002	9	6	0.02
15541	Guitar Freaks V3 & DrumMania V3	7	2007	8	15	0.02
15542	The Talos Principle	11	2015	5	523	0.02
15543	The Crow: City of Angels	13	1997	9	31	0.02
15544	Legendary	15	2008	7	11	0.02
15545	Snow Portable	17	2007	11	434	0.02
15546	Poyo Poyo Kansatsu Nikki	10	2012	9	141	0.02
15547	Jinsei Game DS	4	2006	6	72	0.02
15548	Guitar Freaks & DrumMania: Masterpiece Gold	7	2007	8	15	0.02
15549	Broken Sword: The Sleeping Dragon	14	2003	11	29	0.02
15550	Reversal Challenge	4	2009	6	404	0.02
15551	Wild West Shootout	1	2010	7	54	0.02
15552	Miyako	17	2010	11	279	0.02
15553	Motto NUGA-CEL!	17	2010	11	279	0.02
15554	Yu-Gi-Oh! GX: The Beginning of Destiny (JP sales)	7	2007	12	15	0.02
15555	11eyes: CrossOver	17	2010	11	357	0.02
15556	Super Dodge Ball	27	1995	1	540	0.02
15557	Tsuki ni Yori Sou Otome no Sahou: Hidamari no Hibi	23	2015	11	495	0.02
15558	Gon: BakuBakuBakuBaku Adventure	10	2012	9	26	0.02
15559	Style Book: Junior City	4	2006	6	26	0.02
15560	Amatsumi Sora ni! Kumo no Hatate ni	23	2015	11	434	0.02
15561	Garfield's Nightmare	4	2007	2	103	0.02
15562	Earth Seeker	1	2011	4	153	0.02
15563	Downtown Nekketsu Koushinkyoku: Soreyuke Daiundoukai All-Star Special	6	2015	9	224	0.02
15564	Lovely x Cation 1 & 2	23	2015	9	357	0.02
15565	Barbie as the Princess and the Pauper	9	2004	11	24	0.02
15566	Blood Bowl: Legendary Edition	15	2010	1	81	0.02
15567	Tantei Opera: Milky Holmes	17	2010	11	54	0.02
15568	Pirates of the Burning Sea	15	2008	4	102	0.02
15569	TV Anime Idolm@ster: Cinderella Girls G4U! Pack Vol.8	6	2016	6	26	0.02
15570	Mary King's Riding School 2	1	2009	8	162	0.02
15571	Micro Machines V4	17	2006	3	36	0.02
15572	Entaku no Seito: The Eternal Legend	17	2012	4	278	0.02
15573	New Atelier Rorona: Hajimari no Monogatari	10	2015	9	49	0.02
15574	WorldShift	15	2009	12	286	0.02
15575	The Crew: Wild Run	15	2015	9	6	0.02
15576	Casper's Scare School: Spooky Sports Day	4	2009	1	291	0.02
15577	7 Roses: A Darkness Rises	15	2015	6	123	0.02
15578	My Hero: Doctor	4	2009	9	35	0.02
15579	Sega Ages 2500 Series Vol. 29: Monster World Complete Collection	7	2007	4	9	0.02
15580	Bakumatsu Rock: Ultra Soul	23	2014	6	220	0.02
15581	Metal Fight Beyblade Portable: Chouzetsu Tensei Vulcan Horses	17	2010	9	197	0.02
15582	Cabela's Alaskan Adventure	7		1	54	0.02
15583	Elf Bowling 1 & 2	4	2005	1	151	0.02
15584	Niko Puchi Girls Runway	10	2015	6	406	0.02
15585	MotoGP 14	23	2014	3	257	0.02
15586	Bomberman 2	4	2008	5	69	0.02
15587	Arabians Lost: The Engagement on Desert	7	2007	11	434	0.02
15588	Densha de Go! Tokubetsu-hen: Fukkatsu Shouwa no Yamatesen	4	2010	8	17	0.02
15589	Summon Night Granthese: Horobi no Ken to Yakusoku no Kishi	7	2010	4	26	0.02
15590	Gakken DS: Shin TOEIC Test Kanzen Kouryaku	4	2007	6	541	0.02
15591	SD Gundam Sangokuden Brave Battle Warriors: Shin Mirisha Taisen	4	2010	9	26	0.02
15592	Peggle Nights	15	2008	5	208	0.02
15593	Starry ? Sky: After Summer	17	2013	6	418	0.02
15594	Puzzle Guzzle	17	2007	5	334	0.02
15595	ESPN NFL Primetime 2002	14	2002	1	15	0.02
15596	Gallop Racer Inbreed	7	2006	1	49	0.02
15597	Myth Makers: Super Kart GP	1	2007	3	295	0.02
15598	Red Ninja: End of Honor	14	2005	9	24	0.02
15599	Ketsui: Kizuna Jigoku Tachi Extra	5	2010	7	357	0.02
15600	Frisbee Disc Freestyle / Frisbee Disc Golf	4	2007	1	293	0.02
15601	Call of Duty: Modern Warfare Trilogy	6	2016	7	5	0.02
15602	The King of Fighters Collection: The Orochi Saga (JP sales)	7	2006	10	151	0.02
15603	Emergency 2012	4	2010	8	142	0.02
15604	Command & Conquer 3: Kane's Wrath	15	2008	12	8	0.02
15605	Suzumiya Haruhi-Chan no Mahjong	17	2011	6	153	0.02
15606	Tsuki no Hikari: Shizumeru Kane no Satsujin	7	2002	11	249	0.02
15607	Aqua Panic!	4	2009	5	296	0.02
15608	James Bond 007: Blood Stone	15	2010	7	5	0.02
15609	Writing and Speaking Beautiful Japanese DS	4		6	54	0.02
15610	Sega Ages 2500 Series Vol. 26: Dynamite Deka	7	2006	9	9	0.02
15611	Kong: The Animated Series	9	2002	9	176	0.02
15612	Heavy Fire: Afghanistan	15	2011	7	178	0.02
15613	Let's Dance with Mel B	5	2011	1	194	0.02
15614	Agatha Christie: Death on the Nile	15	2008	11	485	0.02
15615	The Crew: Wild Run	18	2015	9	6	0.02
15616	Toukiden 2	6	2016	9	49	0.02
15617	Koisuru Otome to Shugo no Tate Portable	17	2010	11	82	0.02
15618	PachiPara 3D: Ooumi Monogatari 2 - Pachi Pro Fuuunroku Hana	10	2012	9	394	0.02
15619	Nodame Cantabile: Tanoshii Ongaku no Jikan Desu	4	2010	6	26	0.02
15620	Iridium Runners	7	2008	3	84	0.02
15621	Ben 10 Omniverse 2	10	2013	9	26	0.02
15622	Shounen Onmyouji: Tsubasa Yoima, Ten e Kaere	7	2007	11	153	0.02
15623	Bakumatsu Renka: Karyuu Kenshi-den	7	2007	11	59	0.02
15624	Dancing on Ice	4	2010	1	145	0.02
15625	Tiny Toon Adventures: Wacky Stackers	9	2001	5	232	0.02
15626	Princess Frontier Portable	17	2011	11	82	0.02
15627	Rock Blast	1	2010	5	284	0.02
15628	Touch Detective (JP sales)	4	2006	11	12	0.02
15629	Tomb Raider: Legend	15	2006	9	22	0.02
15630	Emergency Mayhem	1	2008	3	36	0.02
15631	Rising Zan: The Samurai Gunman	13	1998	9	95	0.02
15632	Mai-Otome Hime: Otome Butou Shi	7	2006	10	395	0.02
15633	Robopon 2: Cross Version	9	2001	4	124	0.02
15634	TMNT: Mutant Melee	14	2005	10	15	0.02
15635	Ultimate Puzzle Games	9	2005	5	183	0.02
15636	Combat Flight Simulator 3: Battle for Europe	15	2002	8	2	0.02
15637	Kimikare: New Semester	17	2012	9	279	0.02
15638	Katekyoo Hitman Reborn! Kindan no Yami no Delta	7	2008	9	220	0.02
15639	Haneru no Tobira Wii: Girigirissu	1	2007	6	26	0.02
15640	RoboCop	14	2003	7	104	0.02
15641	Elminage II: Sousei no Megami to Unmei no Daichi	17	2009	4	201	0.02
15642	Lara Croft and the Temple of Osiris	15	2014	9	17	0.02
15643	Final Fantasy XIV: Heavensward	15	2015	9	17	0.02
15644	Grisaia no Rakuen: Le Eden de la Grisaia	23	2014	11	434	0.02
15645	Blazing Souls	7	2006	4	279	0.02
15646	Seinaru Kana: Orichalcum no Na no Motoni	17	2012	9	462	0.02
15647	NHL 2K3	19	2002	1	9	0.02
15648	PDC World Championship Darts 2009	1	2009	1	60	0.02
15649	Tour de France 2014	6	2014	1	81	0.02
15650	The Hustle: Detroit Streets	14	2006	1	5	0.02
15651	Tail of the Sun	13	1996	4	241	0.02
15652	Canada Hunt	1	2010	1	465	0.02
15653	Space Channel 5: Ulala's Cosmic Attack	9	2002	6	11	0.02
15654	Airline Tycoon	15	2000	8	118	0.02
15655	Virtua Quest	7		4	54	0.02
15656	Disney Sports Basketball	9	2002	1	15	0.02
15657	Bejeweled Blitz	15	2010	5	85	0.02
15658	Ozzy & Drix	9	2003	2	40	0.02
15659	Barnyard Blast: Swine of the Night	4	2008	2	128	0.02
15660	SBK09 Superbike World Championship	6	2009	3	194	0.02
15661	Song of the Deep	15	2016	9	416	0.02
15662	Yamasa Digi World SP: Moeyo! Kung Fu Shukujo	7	2006	6	526	0.02
15663	Nobunaga no Yabou: Soutensoku with Power-Up Kit	17	2011	12	49	0.02
15664	Disney Sports Football	19	2002	1	15	0.02
15665	Castle Shikigami 2	7	2004	7	98	0.02
15666	Wizardry Twin Pack	6	2011	4	310	0.02
15667	Rabbids Invasion: The Interactive TV Show	11	2014	6	6	0.02
15668	Moe Star: Moeru Toudai Eigojuku	4	2008	6	542	0.02
15669	Gadget Racers (PAL)	7	2002	3	87	0.02
15670	Pulse Racer	14	2003	3	163	0.02
15671	Freestyle Metal X	19	2003	3	40	0.02
15672	Tegami Bachi: Kokoro Tsumugu Mono e	17	2010	4	15	0.02
15674	Unreal Tournament 2004	15	2004	7	11	0.02
15675	NBA 07	7	2006	1	4	0.02
15676	Antiphona no Seikahime: Tenshi no Gakufu Op.A	17	2009	4	132	0.02
15677	Rogue Trooper	14	2006	7	22	0.02
15678	Spirits & Spells	19	2003	2	172	0.02
15679	TV Anime Idolm@ster: Cinderella Girls G4U! Pack Vol.2	6	2015	9	26	0.02
15680	Balls of Fury	4	2007	1	87	0.02
15681	50 Classic Games	10	2012	6	123	0.02
15682	The Longest Journey	15	1999	11	90	0.02
15683	Eyeshield 21: Portable Edition	17	2006	4	15	0.02
15684	Stronghold Legends	15	2006	12	3	0.02
15685	Kabushiki Baibai Trainer: Kabutore! Next	4	2007	8	15	0.02
15686	Machi: Unmei no Kousaten	17	2006	11	120	0.02
15687	Winning Post 8 2016	11	2016	8	49	0.02
15688	Golden Nugget Casino DS	4	2005	6	35	0.02
15689	Machi-ing Maker 4	6	2011	12	59	0.02
15690	World Class Rugby 2: Kokunai Gekitou Hen '93	8	1994	1	441	0.02
15691	Pirates PlundArrr	1	2010	9	35	0.02
15692	Robotics;Notes	23	2014	11	357	0.02
15693	Ketsui Death Label	4	2008	7	431	0.02
15694	Prince of Stride	23	2015	11	278	0.02
15695	Syberia II	15	2004	11	473	0.02
15696	SD Gundam Force	9	2004	7	26	0.02
15697	Mechanic Master 2	4	2010	5	68	0.02
15698	Dungeons - The Dark Lord	15	2011	12	200	0.02
15699	Clover no Kuni no Alice: Wonderful Wonder World	17	2011	11	493	0.02
15700	Shonen Jump's Yu-Gi-Oh! GX Card Almanac	4		6	15	0.02
15701	Hisshou Pachinko*Pachi-Slot Kouryaku Series Vol. 9: CR Fever Captain Harlock	7	2007	6	59	0.02
15702	Lost: Via Domus	15	2008	9	6	0.02
15703	Monster High 13 Wishes	10	2013	9	231	0.02
15704	GA - Geijutsuka Art Design Class: Slapstick Wonder Land	17	2010	11	93	0.02
15705	Planetarian: Chiisana Hoshi no Yume	17	2009	11	434	0.02
15706	Roommate Asami: Okusama wa Joshikousei	7	2002	11	543	0.02
15707	Cabbage Patch Kids: The Patch Puppy Rescue	9	2007	6	59	0.02
15708	Sarah: Keeper of the Unicorn	4	2009	11	319	0.02
15709	Pirates: Legend of the Black Buccaneer	7	2006	11	413	0.02
15710	Back to the Future: The Game	18	2015	11	174	0.02
15711	Post Mortem	15	2003	11	360	0.02
15712	Ultraman Star Chronicles	17	2013	12	26	0.02
15713	Ginga Tetsudou 999 DS	4	2010	11	267	0.02
15714	TV Anime Idolm@ster: Cinderella Girls G4U! Pack Vol.3	6	2015	9	26	0.02
15715	Amagoushi no Yakata	7	2007	11	132	0.02
15716	Aedis Eclipse: Generation of Chaos	17	2006	4	279	0.02
15717	This War of Mine	11	2016	9	42	0.02
15718	Franklin: A Birthday Surprise	7	2006	6	103	0.02
15719	Nil Admirari no Tenbin: Teito Genwaku Toukidan	23	2016	11	279	0.02
15720	Without Warning	14		7	13	0.02
15721	Marvel Superheroes 3D: Grandmaster's Challenge	1	2010	9	296	0.02
15722	Suzunone Seven: Rebirth Knot	7	2010	11	82	0.02
15723	Arslan: The Warriors of Legend	18	2016	9	49	0.02
15724	Hanayaka Kana, Ware ga Ichizoku: Tasogare Polarstar	17	2013	11	279	0.02
15725	Zoids Dash	4	2006	4	100	0.02
15726	Digimon Rumble Arena	13	2001	10	26	0.02
15727	Vitamin X Evolution Plus	17	2010	11	59	0.02
15728	Disciples III: Renaissance	15	2010	12	200	0.02
15729	Revolution: 25th Anniversary Collection	15	2016	11	102	0.02
15730	MX vs. ATV Supercross Encore	18	2015	1	125	0.02
15731	Final Fight: Streetwise	14	2006	9	13	0.02
15732	Goblin Commander: Unleash the Horde	19	2003	12	163	0.02
15733	Super Speed Machines	4	2009	3	162	0.02
15734	Nano Diver	17	2011	9	197	0.02
15735	Elkrone no Atelier: Dear for Otomate	17	2012	9	279	0.02
15736	DJ Star	4	2009	6	42	0.02
15737	Top Gear RPM Tuning	14	2005	3	172	0.02
15738	Cookie & Cream	4	2007	2	12	0.02
15739	Memories Off: Yubikiri no Kioku	5	2010	11	357	0.02
15740	Otometeki Koi Kakumei * Love Revo!! DS	4	2008	11	67	0.02
15741	Clue / Mouse Trap / Perfection / Aggravation	4	2006	6	54	0.02
15742	Football Manager 2007	5		1	9	0.02
15743	TV Anime Idolm@ster: Cinderella Girls G4U! Pack Vol.4	6	2015	9	26	0.02
15744	Elven Legacy Collection	15	2010	12	317	0.02
15745	My Ballet Studio	4	2009	8	12	0.02
15746	Postman Pat: Special Delivery Service	4	2009	6	96	0.02
15747	Cross + Channel	17	2010	11	462	0.02
15748	LEGO Star Wars II: The Original Trilogy	15	2006	9	5	0.02
15749	Summer Challenge: Athletics Tournament	1	2011	1	148	0.02
15750	Kochira Katsushikaku Kameari Kouenmae Hashutsujo: Machiteba Tengoku! Makereba Jigoku! Ryoutsuryuu Ikkakusenkin Daisakusen!	4	2010	6	26	0.02
15751	Just Cause	15	2006	9	22	0.02
15752	Abunai: Koi no Sousa Shitsu	23	2015	9	418	0.02
15753	Blazing Angels: Squadrons of WWII	15	2006	8	6	0.02
15754	Let's Yoga!	4	2007	6	15	0.02
15755	Zero no Tsukaima: Muma ga Tsumugu Yokaze no Nocturne	7	2007	11	220	0.02
15756	Memories Off: Yubikiri no Kikou	17	2011	11	357	0.02
15757	L.G.S: Shinsetsu Houshinengi	17	2012	9	279	0.02
15758	Battle Engine Aquila	14	2003	7	11	0.02
15759	Turbo: Super Stunt Squad	1	2013	1	59	0.02
15760	Hurry Up Hedgehog!	4	2009	3	342	0.02
15761	Hands On! Tangrams	4	2009	5	216	0.02
15762	Puzzle Chronicles	4	2010	5	15	0.02
15763	Discworld II: Mortality Bytes!	13	1996	11	88	0.02
15764	One Piece Mansion	13	2001	9	13	0.02
15765	Uchi no 3 Shimai DS	4	2008	6	267	0.02
15766	Divinity: Original Sin	15	2014	4	81	0.02
15767	Soul Eater: Monotone Princess	1	2008	9	17	0.02
15768	Strike Witches: Shirogane no Tsubasa	5	2010	12	462	0.02
15769	Big Idea's VeggieTales: LarryBoy and the Bad Apple	9	2006	9	68	0.02
15770	Still Life 2	15	2009	11	142	0.02
15771	Metal Fight Beyblade: Choujou Kessen! Big Bang Bladers	4	2010	9	69	0.02
15772	Clock Zero: Shuuen no Ichibyou - ExTime	23	2015	9	279	0.02
15773	Moujuutsukai to Oujisama	7	2010	11	279	0.02
15774	Root Infinity Rexx	23	2015	11	279	0.02
15775	Cube	17	2007	5	59	0.02
15776	Shinseiki GPX Cyber Formula: Road To The INFINITY 4	7	2007	3	395	0.02
15777	Army Men: Major Malfunction	14	2006	7	64	0.02
15778	Dunamis 15	5	2011	11	357	0.02
15779	Sansuu Puzzle de Migaku: Gakken Otona no Shikou Sense	4	2007	6	541	0.02
15780	Worms World Party	15	2001	12	19	0.02
15781	Yoake Yori Ruriiro na Portable	17	2010	11	153	0.02
15782	Big Bass Fishing	13	2002	9	3	0.02
15783	Reine des Fleurs	23	2015	9	279	0.02
15784	Gears of War	15	2007	7	2	0.02
15785	Densha de Go! Shinkansen EX: Sanyou Shinkansen-hen	1	2007	8	94	0.02
15786	Namco Museum 50th Anniversary (JP sales)	7	2005	6	26	0.02
15787	Gummy Bears Magical Medallion	1	2011	2	216	0.02
15788	Colin McRae Rally 2005	15	2004	3	36	0.02
15789	Mana Khemia 2: Ochita Gakuen to Renkinjutsushi Tachi Portable+	17	2009	4	243	0.02
15790	LEGO Star Wars: The Video Game	15	2005	9	22	0.02
15791	Moshi, Kono Sekai ni Kami-sama ga Iru to suru Naraba.	23	2016	11	34	0.02
15792	Dark Void	15	2010	9	13	0.02
15793	Chou!! Super Nep League DS	4	2008	1	163	0.02
15794	Irritating Stick	13	1998	9	544	0.02
15795	WTA Tour Tennis	9	2002	1	15	0.02
15796	Kaleidoeve	23	2015	11	545	0.02
15797	Judge Dredd: Dredd Vs Death	14	2003	7	24	0.02
15798	Star Trek: Legacy	15	2006	8	6	0.02
15799	NHL 16	5	2015	1	8	0.02
15800	Wall-E	15	2008	2	29	0.02
15801	Simple 2000 Series Vol. 105: The Maid Fuku to Kikanjuu	7	2006	9	59	0.02
15802	Davis Cup Tennis	9	2002	1	6	0.02
15803	Pro Rally	19	2002	3	6	0.02
15804	XCOM 2	18	2016	12	3	0.02
15805	Football Academy	4	2009	1	8	0.02
15806	Kimi ni Todoke: Sodateru Omoi	4	2009	11	58	0.02
15807	Call of Duty: Modern Warfare Trilogy	5	2016	7	5	0.02
15808	Let's Pilates!	4	2007	6	15	0.02
15809	Memories Off #5: Encore	7	2007	11	462	0.02
15810	Brave Story: Boku no Kioku to Negai	4	2006	4	26	0.02
15811	Zombie Hunters 2	7	2006	9	287	0.02
15812	WRC 5: FIA World Rally Championship	5	2015	1	324	0.02
15813	Custom Drive	17	2012	9	59	0.02
15814	Ferrari: The Race Experience	1		3	158	0.02
15815	Tsuyo Kiss 2 Gakki: Swift Love	7	2009	11	546	0.02
15816	Achtung Panzer: Kharkov 1943	15	2010	12	477	0.02
15817	Konductra	4	2006	5	349	0.02
15818	Samurai Jack: The Shadow of Aku	19	2004	9	9	0.02
15819	Winning Post 7 2013	23	2013	1	49	0.02
15820	Platypus	17	2006	7	328	0.02
15821	Command & Conquer 4: Tiberian Twilight	15	2010	12	8	0.02
15822	The Incredibles: Rise of the Underminer	15	2005	9	29	0.02
15823	Winter Sports 3: The Great Tournament	5	2010	1	442	0.02
15824	Farm Frenzy	15	2008	12	235	0.02
15825	Ore wa Shoujo Mangaka	17	2012	9	547	0.02
15826	Busou Renkin: Youkoso Papillon Park e	7	2007	9	220	0.02
15827	A Vampyre Story	15	2008	11	412	0.02
15828	Puyo Puyo Tetris	20	2014	5	9	0.02
15829	Exhibition Volume 6	14	2004	6	2	0.02
15830	Oshiri Kajiri Mushi no Rhythm Lesson DS: Kawai Ongaku Kyoushitsu Kanshuu	4	2008	6	9	0.02
15831	The Haunted: Hell's Reach	15	2011	7	548	0.02
15832	Phoenix Wright: Ace Attorney Trilogy	10	2014	11	13	0.02
15833	Kuma no Pooh-San: 100 Acre no Mori no Cooking Book	4	2011	6	33	0.02
15834	LifeSigns: Surgical Unit	4	2005	8	259	0.02
15835	I Love Horses: Rider's Paradise	1	2010	8	154	0.02
15836	Kao the Kangaroo Round 2	19	2005	2	259	0.02
15837	Majesty 2 Collection	15	2011	12	317	0.02
15838	Sniper Elite	15	2005	7	473	0.02
15839	The Dark Hills of Cherai	15	2009	5	54	0.02
15840	FIFA Soccer 08	15	2007	1	8	0.02
15841	Zoey 101: Field Trip Fiasco	4	2007	9	29	0.02
15842	Dream C Club: GoGo	6	2014	11	59	0.02
15843	Battle Spirits: Hero's Soul	17	2010	4	26	0.02
15844	Usavichi: Game no Jikan	4	2011	9	26	0.02
15845	Pachi-Slot Higrashi no Naku Koro ni Matsuri	7	2010	6	82	0.02
15846	Otona no Renai Shousetsu: Harlequin Selection	4	2010	6	1	0.02
15847	White Album 2: Shiawase no Mukougawa	23	2013	11	316	0.02
15848	W.L.O. Sekai Renai Kikousen	5	2010	11	357	0.02
15849	Psychedelica of the Black Butterfly	23	2015	9	279	0.02
15850	Final Fantasy XI: All-In-One Pack 2006	5	2006	4	17	0.02
15851	Joint Operations: Combined Arms	15	2009	7	173	0.02
15852	Poupee Girl DS 2: Elegant Mint / Sweet Pink Style	4	2010	6	549	0.02
15853	Winning Post 7: Maximum 2007	6	2007	1	49	0.02
15854	Monster Trux Offroad	1	2007	3	295	0.02
15855	Assault Suit Leynos	11	2016	7	71	0.02
15856	Dragon Booster	4	2005	7	15	0.02
15857	Germany's Next Topmodel 2011	4	2011	8	509	0.02
15858	Drakensang: The Dark Eye	15	2009	4	22	0.02
15859	Storm Lover 2nd	17	2013	6	59	0.02
15860	Kadenz fermata//Akkord:fortissimo	23	2014	11	357	0.02
15861	DuckTales: Remastered	15	2013	9	13	0.02
15862	Transformers: Prime	1	2012	9	5	0.02
15863	Contrast	15	2013	2	81	0.02
15864	Arcana Famiglia 2	17	2013	11	449	0.02
15865	Taishou Moebius Line Vitable	23	2016	11	495	0.02
15866	Gaist Crusher God	10	2014	9	13	0.02
15867	Shinkyoku Soukai Polyphonica	7	2007	11	434	0.02
15868	PDC World Championship Darts 2008	4		1	54	0.02
15869	San Goku Shi DS 2	4	2007	12	49	0.02
15870	Strongest Tokyo University Shogi DS	4	1985	9	550	0.02
15871	Shin Sangoku Musou Online: Souten Ranbu	6	2010	9	49	0.02
15872	Elven Legacy	15	2009	12	317	0.02
15873	V-Rally 3	14	2003	3	11	0.02
15874	Full House Kiss 2	7	2006	11	13	0.02
15875	Dead to Rights	9	2004	7	87	0.02
15876	Thunder Force VI	7	2008	7	9	0.02
15877	Majesty 2: The Fantasy Kingdom Sim	15	2009	8	317	0.02
15878	Turbo: Super Stunt Squad	10	2013	1	59	0.02
15879	Dinotopia: The Sunstone Odyssey	19		9	54	0.02
15880	Daito Giken Koushiki Pachi-Slot Simulator: Ossu! Misao + Maguro Densetsu Portable	17	2010	6	362	0.02
15881	Dance! It's Your Stage	1		6	233	0.02
15882	PachiPara 3D	10	2011	6	394	0.02
15883	Command & Conquer Collection	15	2003	12	8	0.02
15884	Kiss Bell	23	2014	11	551	0.02
15885	Earth Defense Force 2017 (old JP sales)	5	2006	7	59	0.02
15886	Sengoku Hime: Senran ni Mau Otometachi	7	2009	11	444	0.02
15887	GTI Club: Supermini Festa!	1	2010	3	15	0.02
15888	MuvLuv Double Pack	23	2016	11	357	0.02
15889	Koihime Enbu	11	2016	10	444	0.02
15890	Romance of the Three Kingdoms XII	20	2012	12	49	0.02
15891	Worldwide Soccer Manager 2006	15	2004	1	9	0.02
15892	Sora no Otoshimono Forte: Dreamy Season	4	2011	11	153	0.02
15893	Mission: Impossible - Operation Surma	19	2004	2	11	0.02
15894	Trigger Man	19	2004	7	68	0.02
15895	Yuu Yuu Hakusho DS: Ankoku Bujutsukai Hen	4	2006	9	197	0.02
15896	Hiiro no Kakera Portable	17	2008	11	279	0.02
15897	Antz Extreme Racing	14	2002	3	90	0.02
15898	Enemy Territory: Quake Wars	15	2007	7	5	0.02
15899	Truck Racer	1	2009	3	125	0.02
15900	The Sims 4: Luxury Party Stuff	15	2015	8	8	0.02
15901	Nogizaka Haruka no Himitsu Cosplay, Hajime Mashita	7	2008	11	429	0.02
15902	Triggerheart Exelica	22	2007	7	552	0.02
15903	Jet Impulse	4		8	1	0.02
15904	Games Explosion!	9	2006	9	29	0.02
15905	Tennis no Oji-Sama: Card Hunter	7	2007	12	15	0.02
15906	Portable Island: Tenohira Resort	17	2006	8	26	0.02
15907	Night Wizard the Video Game: Denial of the World	7	2008	11	357	0.02
15908	Sengoku Efuda Yuugi: Hototogisu Ran	17	2008	6	394	0.02
15909	Tokyo Friend Park II DS	4	2006	6	138	0.02
15910	Saenai Kanojo no Sodatekata: Blessing Flowers	23	2015	9	357	0.02
15911	Adventure Time: The Secret of the Nameless	10	2014	11	231	0.02
15912	Kao the Kangaroo Round 2	7	2005	2	259	0.02
15913	Shin Hisui no Shizuku: Hiiro no Kakera 2 Portable	17	2010	11	279	0.02
15914	Robopon 2: Ring Version	9	2001	4	124	0.02
15915	Evil Genius	15	2004	12	24	0.02
15916	Dragon Tales: Dragon Adventures	9	2003	2	215	0.02
15917	Moe Moe 2-ji Taisen (Ryoku) * Deluxe	17	2008	11	553	0.02
15918	Dream Dancer	4		6	34	0.02
15919	Powerbike	4	2009	3	35	0.02
15920	Violet no Atelier: Gramnad no Renkinjutsushi 2 - Gunjou no Omoide	17	2011	4	243	0.02
15921	Magic Encyclopedia: Moonlight	4	2010	6	275	0.02
15922	Rayman 10th Anniversary	9	2005	2	6	0.02
15923	Elminage II DS Remix: Sousei no Megami to Unmai no Daichi	4	2010	4	201	0.02
15924	Online Chess Kingdoms	17	2006	6	15	0.02
15925	Gaku ? Ou: The Royal Seven Stars	17	2012	4	82	0.02
15926	Pillars of Eternity	15	2014	4	317	0.02
15927	RollerCoaster Tycoon: Gold Edition	15	2002	12	53	0.02
15928	Professional Farmer 2016	11	2015	9	26	0.02
15929	Storm Lover Kai!!	17	2012	9	59	0.02
15930	Race Driver: Create & Race	4	2007	3	36	0.02
15931	Nurarihyon no Mago: Hyakki Ryouran Taisen	6	2011	10	15	0.02
15932	Minna to Issho	23	2011	6	4	0.02
15933	Harukanaru Toki no Naka de 6	17	2015	9	49	0.02
15934	Hummer Badlands	14	2006	3	64	0.02
15935	I Doll U	23	2015	11	279	0.02
15936	Enkaku Sousa: Sana e no 23 Hiai	17	2009	11	4	0.02
15937	Katekyoo Hitman Reborn! DS: Mafia Daishuugou Bongole Festival	4	2008	9	197	0.02
15938	Pippa Funnell 2: Farm Adventures	4	2007	8	6	0.02
15939	Iron Soldier 3	13	1999	8	183	0.02
15940	Oyaku de Asoberu DS Ehon: Ukkari Penelope	4	2008	8	49	0.02
15941	Space Invaders Revolution	4	2005	7	71	0.02
15942	Barbie and Her Sisters Puppy Rescue	6	2015	9	26	0.02
15943	Worms: WMD	11	2016	9	554	0.02
15944	Myst	17	2006	11	40	0.02
15945	UNO 52	4	2006	6	87	0.02
15946	Tiger & Bunny: Hero's Day	17	2013	9	59	0.02
15947	Storm Lover 2nd V	23	2016	11	59	0.02
15948	Grisaia no Meikyuu: Le Labyrinthe de la Grisaia	23	2014	11	434	0.02
15949	Touhou Genso Rondo: Bullet Ballet	11	2016	7	132	0.02
15950	Accel World: Kasoku no Chouten	6	2013	11	26	0.02
15951	Poupee Girl DS	4	2009	6	549	0.02
15952	Pachinko Kaou: Misora Hibari	7	2007	6	378	0.02
15953	Just Cause	7	2006	9	22	0.02
15954	Choro Q	7	2003	3	87	0.02
15955	Narcissus: Moshimo Ashita ga Runara	17	2010	11	153	0.02
15956	Girl Friend Beta: Kimi to Sugosu Natsuyasumi	23	2015	9	26	0.02
15957	IHRA Drag Racing: Sportsman Edition	14	2006	3	7	0.02
15958	Sharin no Kuni, Himawari no Shoujo	5	2010	11	357	0.02
15959	Guild Wars: Factions	15	2006	4	44	0.02
15960	Simple DS Series Vol. 42: The Haioku Byoutou	4	2008	11	59	0.02
15961	Drone Tactics	4	2007	12	91	0.02
15962	Technic Beat	7	2002	6	431	0.02
15963	So-Ra-No-Wo-To: Otome no Gojuusou	17	2010	11	266	0.02
15964	Farming Simulator 2014	23	2014	8	81	0.02
15965	Imperium Romanum	15	2008	12	200	0.02
15966	Ship Simulator 2008	15	2007	8	555	0.02
15967	Curse of the Amsterdam Diamond	4	2012	5	512	0.02
15968	Sengoku	15	2011	12	317	0.02
15969	Yume Neko DS	4	2008	8	9	0.02
15970	Dream C Club	6	2012	8	59	0.02
15971	IGT Slots: Lucky Larry's Lobstermania	15	2011	8	556	0.02
15972	Sid Meier's Civilization Revolution 2+	23	2015	12	3	0.02
15973	SBK Superbike World Championship	7	2008	3	194	0.02
15974	Memories Off 6: Next Relation	7	2009	11	357	0.02
15975	Scared Rider Xechs	7	2010	11	557	0.02
15976	Vitamin X: Detective B6	17	2012	11	59	0.02
15977	Misshitsu no Sacrifice	17	2010	11	59	0.02
15978	You Don't Know Jack	15	1995	6	24	0.02
15979	Ouran Koukou Host Bu	7	2007	11	279	0.02
15980	Lotus Challenge	19	2004	3	151	0.02
15981	Meiji Toukyou Renka: Twilight Kiss	17	2015	9	309	0.02
15982	Xblaze: Lost Memories	6	2015	11	224	0.02
15983	Turok	15	2008	9	129	0.01
15984	Coven and Labyrinth of Refrain	23	2016	9	132	0.01
15985	Super Battle For Money Sentouchuu: Kyuukyoku no Shinobu to Battle Player Choujou Kessen!	10	2016	9	26	0.01
15986	Dragon Zakura DS	4	2007	6	8	0.01
15987	Chameleon: To Dye For!	4	2006	5	12	0.01
15988	Hotel Giant DS	4	2008	8	127	0.01
15989	Sora no Otoshimono: DokiDoki Summer Vacation	17	2010	11	153	0.01
15990	Blackthorne	9	2003	9	5	0.01
15991	Don Bradman Cricket 14	5	2014	1	339	0.01
15992	DokuSui: DokiDoki Suikoden	17	2011	4	394	0.01
15993	Shinseiki Evangelion: Battle Orchestra Portable	17	2009	10	309	0.01
15994	Donkey Kong Jungle Beat	1	2008	2	1	0.01
15995	Bomberman (jp sales)	17	2006	5	15	0.01
15996	Blazblue: Continuum Shift Extend	17	2012	10	224	0.01
15997	S.Y.K: Shinsetsu Saiyuuki	7	2009	11	279	0.01
15998	Football Manager Live	15	2009	1	9	0.01
15999	Captain Morgane and the Golden Turtle	1	2012	11	338	0.01
16000	Black Cat	7	2006	9	13	0.01
16001	One Piece: Daikaizoku Coliseum	10	2016	10	26	0.01
16002	Mortal Kombat	15	1994	10	31	0.01
16003	Smart Kid's Mega Game Mix	4	2009	6	284	0.01
16004	Diary Girl	4	2008	6	15	0.01
16005	Red Stone DS: Akaki Ishi ni Michibikareshi Monotachi	4	2011	4	54	0.01
16006	Serious Sam II	15	2005	7	3	0.01
16007	Wand of Fortune: Mirai e no Prologue Portable	17	2010	11	279	0.01
16008	Sengoku Hime: Senran ni Mau Otometachi	17	2009	11	444	0.01
16009	Secret Game Portable	17	2010	11	444	0.01
16010	Demon Gaze 2	23	2014	4	468	0.01
16011	Neverwinter Nights 2: Mask of the Betrayer	15	2007	4	11	0.01
16012	Kimi no Yuusha	4	2008	4	226	0.01
16013	Call of Juarez	15	2006	7	6	0.01
16014	Tom Clancy's  Ghost Recon Advanced Warfighter (weekly JP sales)	5	2006	7	6	0.01
16015	UEFA Champions League 2006-2007	17	2007	1	8	0.01
16016	Codename: Panzers Phase Two	15	2005	12	359	0.01
16017	Nobunaga no Yabou Online: Houou no Shou	6	2012	12	210	0.01
16018	Rise of Flight: Iron Cross Edition	15	2010	8	539	0.01
16019	Cosmetic Paradise: Make no Kiseki	4	2008	6	399	0.01
16020	Unreal Tournament 2003	15	2002	7	11	0.01
16021	Nobunaga no Yabou DS	4	2006	12	49	0.01
16022	God Eater Off Shot: Soma Shikkuzaru-hen Twin Pack & Animation Vol.4	11	2016	9	26	0.01
16023	Uppers	23	2016	9	105	0.01
16024	Wand of Fortune Portable	17	2010	11	279	0.01
16025	Wiffle Ball Advance	4	2007	1	87	0.01
16026	Rengoku II: The Stairway to H.E.A.V.E.N. (jp sales)	17	2006	9	15	0.01
16027	Simple DS Series Vol. 14: The Jidousha Kyoushuujo DS	4	2007	6	59	0.01
16028	The Last Remnant	15	2009	4	17	0.01
16029	Ten Pin Alley 2	9	2004	1	165	0.01
16030	Himawari: Pebble in the Sky Portable	17	2010	11	153	0.01
16031	Wand of Fortune R	23	2016	11	279	0.01
16032	Katekyoo Hitman Reborn Nerae!? Ring x Bongole Returns	7	2008	11	220	0.01
16033	My Little Baby	4	2008	8	359	0.01
16034	Kono Aozora ni Yakusoku o: Tenohira no Rakuen	17	2009	11	496	0.01
16035	Shinobi Koutsutsu	17	2014	11	279	0.01
16036	NiGHTS into dreams...	7	2008	2	9	0.01
16037	WinBack 2: Project Poseidon	7	2006	7	49	0.01
16038	Kaitou Rousseau	4	2006	9	26	0.01
16039	Utawarerumono: Futari no Hakuoro	6	2016	6	316	0.01
16040	WRC 5: FIA World Rally Championship	18	2015	1	324	0.01
16041	Totally Spies! Totally Party	7	2008	6	6	0.01
16042	GunParade Orchestra: Ao no Shou	7	2006	11	4	0.01
16043	Impossible Creatures	15	2002	12	2	0.01
16044	Puyo Pop Fever	19	2004	5	9	0.01
16045	Wizardry XTH: Unlimited Students	7	2006	4	558	0.01
16046	Raven's Cry	11	2015	4	435	0.01
16047	Instant Brain	5	2011	11	358	0.01
16048	Guitar Hero III: Legends of Rock	15	2007	6	263	0.01
16049	Blitzkrieg 2 Anthology	15	2008	12	417	0.01
16050	Rayman Raving Rabbids	15	2006	6	6	0.01
16051	God Eater Off Shot:Shiou-hen Twin Pack & Animation Vol.5	11	2016	6	26	0.01
16052	Abunai: Koi no Sousa Shitsu	17	2012	9	493	0.01
16053	Coronation Street: The Mystery of the Missing Hotpot Recipe	15	2011	11	191	0.01
16054	Battle Worlds: Kronos	15	2016	12	125	0.01
16055	SoulLink Extension	7	2006	11	466	0.01
16056	Banjo-Kazooie	5	2008	2	2	0.01
16057	Samurai Shodown Anthology (JP sales)	7	2008	10	151	0.01
16058	Winning Post 7 Maximum 2008	7	2008	1	49	0.01
16059	Sangoku Koi Senki: Otome no Heihou!	7	2011	11	434	0.01
16060	PDC World Championship Darts 2008	17		1	60	0.01
16061	WRC: FIA World Rally Championship	15		3	194	0.01
16062	Alfa Romeo Racing Italiano	7	2005	3	194	0.01
16063	Pachi-Slot Teiou: Golgo 13 Las Vegas (JP sales, but wrong system)	7	2002	6	559	0.01
16064	Digger Simulator	15	2011	8	312	0.01
16065	Turbo: Super Stunt Squad	5	2013	1	59	0.01
16066	Super Robot Taisen XO	5	2006	12	58	0.01
16067	Kaitou Joker: Toki o Koeru Kaitou to Ushinawareta Houseki	10	2015	9	26	0.01
16068	Aquaman: Battle for Atlantis	14		9	54	0.01
16069	Pachitte Chonmage Tatsujin 16: Pachinko Hissatsu Shigotojin III	7	2010	6	378	0.01
16070	IL-2 Sturmovik	15	2001	8	524	0.01
16071	Mortal Kombat: Tournament Edition	9	2003	10	40	0.01
16072	SeaWorld Adventure Parks: Shamu's Deep Sea Adventure	14	2005	11	5	0.01
16073	East India Company	15	2009	12	317	0.01
16074	World Poker Tour	9	2005	6	3	0.01
16075	Sousaku Alice to Oujisama!	10	2015	8	406	0.01
16076	Empire Deluxe	15	1992	12	560	0.01
16077	Umihara Kawase Jun: Second Edition Kanzenban	4	2009	5	561	0.01
16078	Infinite Stratos 2: Love and Purge	23	2015	9	357	0.01
16079	Fab 5 Soccer	4	2008	1	154	0.01
16080	Destiny Links	4	2009	4	26	0.01
16081	Best Of Tests	4	2008	5	232	0.01
16082	Egg Mania: Eggstreme Madness	14	2002	5	189	0.01
16083	Virtua Tennis 3	15	2007	1	9	0.01
16084	Pro Angler Moves	6	2012	1	562	0.01
16085	Sakura Sakura: Haru Urara	17	2010	11	510	0.01
16086	Uta no * Prince-Sama: Sweet Serenade	17	2011	11	309	0.01
16087	The Legend of Heroes: Trails in the Sky Third Chapter	6	2013	4	254	0.01
16088	Road Trip: Shifting Gears	9	2002	3	87	0.01
16089	Iza, Shutsujin! Koisen	17	2011	11	493	0.01
16090	Major Dream: Major Wii Nagero! Gyroball!!	1	2008	1	197	0.01
16091	Hiiro no Kakera: Shin Tamayori Hime Denshou	7	2009	11	279	0.01
16092	Datenshi no Amai Yuuwaku x Kaikan Phrase	4	2010	11	246	0.01
16093	Honda ATV Fever	4	2010	3	216	0.01
16094	Grooverider: Slot Car Thunder	14	2003	3	497	0.01
16095	Superstars V8 Racing	5	2009	3	194	0.01
16096	Grand Theft Auto III	15	2002	9	3	0.01
16097	Bakumatsu Koihana: Shinsengumi DS	4	2008	11	59	0.01
16098	Resident Evil 5 HD	11	2016	9	13	0.01
16099	Miyako: Awayuki no Utage	17	2012	9	279	0.01
16100	Super PickUps	1	2009	3	165	0.01
16101	Ben 10 Omniverse 2	5	2013	9	26	0.01
16102	Rewrite	23	2014	11	434	0.01
16103	Konami Classics Vol. 2	5	2009	6	15	0.01
16104	Aeon Flux	14	2005	9	29	0.01
16105	Tobidase! Kagaku-kun Chikyuu Daitanken! Nazo no Chinkai Seibutsu ni Idome!	4	2011	6	26	0.01
16106	Kana: Imouto	17	2010	11	462	0.01
16107	Barbie and Her Sisters Puppy Rescue	20	2015	9	26	0.01
16108	Rock N' Roll Racing	8	1993	3	118	0.01
16109	Higurashi no Naku Koro ni Iki	6	2015	9	426	0.01
16110	Marginal #4: Idol of Supernova	23	2014	11	279	0.01
16111	Nodame Cantabile	7	2007	6	58	0.01
16112	Paranormal Pursuit: The Gifted One	15	2015	9	461	0.01
16113	DoDonPachi Saidaioujou	5	2013	7	358	0.01
16114	Last Escort: Club Katze	7	2010	11	59	0.01
16115	1/2 Summer +	17	2013	11	426	0.01
16116	Winning Post 7 Maximum 2008	6	2008	1	49	0.01
16117	Psycho-Pass	18	2014	11	357	0.01
16118	Brain Exercise With Dr. Kawashima	15	2009	5	26	0.01
16119	Tears to Tiara: Kakan no Daichi Portable	17	2010	11	316	0.01
16120	Games Around the World	4	2010	6	75	0.01
16121	Football Manager 2005	15	2004	1	9	0.01
16122	Hitotsu Tobashi Renai V	23	2015	11	426	0.01
16123	Ninja Gaiden Sigma 2	23	2013	9	49	0.01
16124	Turbo Trainz	1	2012	3	85	0.01
16125	Theatre Of War	15	2007	12	200	0.01
16126	Nintendogs and Cats Golden Retriever and New Friends	10	2011	9	1	0.01
16127	Young Justice: Legacy	5	2013	9	26	0.01
16128	Tantei Jinguuji Saburo DS: Fuserareta Shinjitsu	4	2009	11	224	0.01
16129	Monster Rancher Advance 2	9	2002	8	49	0.01
16130	Madden NFL 13	6	2012	1	8	0.01
16131	Voodoo Chronicles: First Sign	15	2011	11	248	0.01
16132	Umineko no Naku Koro ni Portable 1	17	2011	11	82	0.01
16133	Dr. Slump & Arale-Chan	4	2008	11	26	0.01
16134	Geten no Hana: Yume Akari	17	2014	6	49	0.01
16135	Festa!! Hyper Girls Party	7	2006	11	492	0.01
16136	Collar x Malice	23	2016	9	279	0.01
16137	Kikiite Hajimaru: Eigo Kaiwa Training - KikiTore	4	2008	6	365	0.01
16138	Vanark	13	1999	7	163	0.01
16139	Dragon's Dogma Online: Season 2	11	2016	9	13	0.01
16140	Game Book DS: Sword World 2.0	4	2009	4	309	0.01
16141	WTA Tour Tennis	14	2002	1	15	0.01
16142	Norn + Nonette: Last Era	23	2015	9	279	0.01
16143	BlazBlue: Calamity Trigger	15	2010	10	148	0.01
16144	Furious Karting	14	2003	3	11	0.01
16145	WSC REAL 09: World Snooker Championship	6	2009	1	42	0.01
16146	Harry Potter and the Chamber of Secrets	15	2002	9	8	0.01
16147	Pet Shop Monogatari DS 2	4	2010	8	94	0.01
16148	Mystery Legends: Beauty and the Beast	15	2012	5	536	0.01
16149	Fuuraiki 3	23	2015	9	54	0.01
16150	Chokkan! Asonde Relaxuma	4	2008	9	138	0.01
16151	Hot Wheels: Stunt Track Challenge / World Race	9	2006	3	204	0.01
16152	Minna no Conveni	4	2010	8	94	0.01
16153	Accel World: Kasoku no Chouten	17	2013	11	26	0.01
16154	SoulCalibur Legends (JP sales)	1	2007	9	26	0.01
16155	Izumo 2	7	2006	11	510	0.01
16156	Entaku no Seito: Students of Round	5	2011	4	120	0.01
16157	Bratz: Forever Diamondz	7	2006	11	29	0.01
16158	Isshoni Gohan. Portable	17	2013	11	563	0.01
16159	PC Engine Best Collention: Ginga Ojousama Densetsu Collection	17	2008	11	69	0.01
16160	King of Fighters 2002: Unlimited Match Tougeki Ver.	7	2010	10	226	0.01
16161	Monkey Madness: Island Escape	4	2010	9	216	0.01
16162	Malice	14	2004	2	374	0.01
16163	Raven Squad: Operation Hidden Dagger	15	2009	7	374	0.01
16164	htoL#NiQ: The Firefly Diary	23	2014	2	132	0.01
16165	Tiger Woods PGA Tour 2005	15	2004	1	8	0.01
16166	Deus Ex	15	2000	4	22	0.01
16167	Rosario to Vampire: Tanabata no Miss Youkai Gakuen	4	2008	11	13	0.01
16168	Ouka Sengoku Portable	17	2012	11	82	0.01
16169	Smiley World: Island Challenge	4	2009	5	87	0.01
16170	Order Up!!	10	2011	9	137	0.01
16171	Wallace & Gromit: Curse of the Were-Rabbit	14	2005	11	15	0.01
16172	Hanayamata: Yosakoi Live	23	2014	11	26	0.01
16173	Shepherd's Crossing	17	2009	8	91	0.01
16174	Dark Parables: The Exiled Prince	15	2011	5	54	0.01
16175	Military History: Commander - Europe at War	4	2009	12	326	0.01
16176	Tactics Layer: Ritina Guard Senki	4	2009	12	59	0.01
16177	We Sing 80s	1	2012	6	125	0.01
16178	Republique	11	2016	9	132	0.01
16179	San-X Character Channel: All-Star Daishuugou!	4	2008	9	333	0.01
16180	Rail Simulator	15	2007	8	8	0.01
16181	Putty Squad	6	2013	2	301	0.01
16182	Sega Golf Club: Miyazato San Kyoudai Naizou	6	2006	1	9	0.01
16183	Rozen Maiden: Gebetgarten	7	2007	10	94	0.01
16184	Resistance Dual Pack	6	2011	7	4	0.01
16185	Princess Arthur	17	2013	6	279	0.01
16186	Sakura-Sou no Pet na Kanojo	17	2013	11	278	0.01
16187	Fatal Fury: Battle Archives Volume 2 (JP sales)	7	2007	10	226	0.01
16188	Tantei Jinguuji Saburo: Hai to Diamond	17	2009	11	224	0.01
16189	BattleForge	15	2009	12	8	0.01
16190	Jewel Quest II	15	2007	5	191	0.01
16191	Toro to Morimori	6	2009	6	4	0.01
16192	Sonic & All-Stars Racing Transformed	15	2013	3	9	0.01
16193	Satisfashion	1	2010	6	154	0.01
16194	Homeworld Remastered Collection	15		12	34	0.01
16195	Metal Slug Anthology	7	2007	7	151	0.01
16196	K-1 Grand Prix	13	1999	10	163	0.01
16197	Shorts	4		2	54	0.01
16198	Legoland	15	1999	9	133	0.01
16199	Rave Master: Special Attack Force!	9	2002	10	15	0.01
16200	Simple 2000 Series Vol. 120: The Saigo no Nippon Tsuwamono	7	2007	12	59	0.01
16201	AKB1/48: Idol to Guam de Koishitara...	5		6	34	0.01
16202	Casper	9	2002	11	360	0.01
16203	Hyakka Yakou	23	2015	9	54	0.01
16204	Adventure Time: The Secret of the Nameless	5	2014	11	231	0.01
16205	Hakuoki: Reimeiroku DS	4	2012	9	279	0.01
16206	Shin Hayarigami 2	23	2016	11	132	0.01
16207	Ro-Kyu-Bu! Secret Photo Op	23	2014	11	278	0.01
16208	Caladrius	5	2013	7	340	0.01
16209	Who Wants to be a Millionaire: 2nd Edition	4	2008	6	6	0.01
16210	Duel Love: Koisuru Otome wa Shouri no Megami	4	2008	11	26	0.01
16211	Super Robot Monkey Team: Game Boy Advance Video Volume 1	9	2005	6	34	0.01
16212	Freekstyle	9	2003	3	87	0.01
16213	Groovin' Blocks	1	2009	5	75	0.01
16214	Tomoyo After: It's a Wonderful Life CS Edition	7	2007	11	434	0.01
16215	Gardening Guide: How to get Green Fingers	4	2009	6	52	0.01
16216	Aa Megami-samaa	7	2007	11	220	0.01
16217	Bunmei Kaika: Aoiza Ibunroku Saien	17	2012	9	246	0.01
16218	Tsukigime Ranko's Longest Day	6	2014	9	26	0.01
16219	Bakumatsu Rock	17	2014	9	105	0.01
16220	Far East of Eden II: Manji Maru	4	2006	4	69	0.01
16221	Family Jockey	1	2008	1	26	0.01
16222	Thunder Alley	9	2004	3	165	0.01
16223	Dynasty Warriors: Eiketsuden	11	2016	9	49	0.01
16224	Spider-Man: Friend or Foe	15	2007	9	5	0.01
16225	Carmageddon: Max Damage	18	2016	9	564	0.01
16226	Nyaruko-San: Nafushigatai Game no You na Mono	23	2013	11	357	0.01
16227	New Interpretation Stranger of Sword City	23	2016	4	468	0.01
16228	Soshite Kono Uchuu ni Kirameku Kimi no Shi XXX	7	2007	11	543	0.01
16229	Victory Spike	13	1996	1	157	0.01
16230	Sengoku Basara 2 Heroes	1	2007	9	13	0.01
16231	Double Sequence: The Q-Virus Invasion	4	2008	5	87	0.01
16232	Brothers in Arms: Furious 4	5		7	34	0.01
16233	Hi Hi Puffy AmiYumi: The Genie & the Amp	4	2006	9	59	0.01
16234	Densetsu no Yuusha no Densetsu: Legendary Saga	17	2010	4	153	0.01
16235	Zero no Tsukaima: Maigo no Period to Ikusen no Symphony	7	2008	11	220	0.01
16236	Marvel: Ultimate Alliance	15	2006	4	5	0.01
16237	Broken Sword 5: The Serpent's Curse	18	2015	11	410	0.01
16238	Shitsuji ga Aruji o Erabu Toki	23	2016	11	54	0.01
16239	Batman: A Telltale Game Series	6	2016	11	174	0.01
16240	Hiiro no Kakera: Shin Tamayori Hime Denshou Portable	17	2010	11	279	0.01
16241	Kao the Kangaroo	9	2001	2	104	0.01
16242	Builder's Block	13	1999	12	565	0.01
16243	Seisou no Amazones	10	2013	4	224	0.01
16244	Phantasy Star Online 2 Episode 4: Deluxe Package	23	2017	4	9	0.01
16245	F.E.A.R. Perseus Mandate	15	2007	7	24	0.01
16246	Mahjong Taikai IV	6	2006	6	49	0.01
16247	Valentino Rossi: The Game	15	2016	3	26	0.01
16248	FlatOut: Ultimate Carnage	15	2008	3	90	0.01
16249	Agarest Senki: Re-appearance	6		4	279	0.01
16250	Ultraman Fighting Evolution 0	17	2006	10	58	0.01
16251	Gokuhou!! Mecha Mote Iinchou: Girls Motekawa Box	4	2009	8	15	0.01
16252	Aquaman: Battle for Atlantis	19	2003	9	73	0.01
16253	Strider (2014)	6	2014	2	13	0.01
16254	Jinsei Game Q DS: Shouwa no Dekigoto	4	2007	6	197	0.01
16255	The Book of Unwritten Tales 2	20	2016	11	125	0.01
16256	Doraemon Wii: Himitsu Douguou Ketteisen!	1	2007	6	9	0.01
16257	Goku Makaimura Kai	17	2007	2	13	0.01
16258	No Fate! Only the Power of Will	5	2010	11	82	0.01
16259	Conflict: Denied Ops	15	2008	7	22	0.01
16260	Makai Senki Disgaea 3 Append Disc: Raspberyl-hen Hajime Mashita	6	2009	4	132	0.01
16261	Championship Manager 2010	15	2009	1	22	0.01
16262	Simple DS Series Vol. 41: The Bakudan Shori-Han	4	2008	9	59	0.01
16263	Paragon	11	2016	9	566	0.01
16264	Naxat Soft Reachmania Vol. 1: CR Galaxy Angel	7	2008	6	567	0.01
16265	Hanayaka Kana, Ware ga Ichizoku	17	2010	11	279	0.01
16266	Mamoru-kun wa Norowarete Shimatta!	5	2009	7	500	0.01
16267	Sengoku Hime 2 Arashi: Hyakubana Senran Tatsukaze no Gotoku	17	2010	12	553	0.01
16268	Myself; Yourself	7	2007	11	444	0.01
16269	Kurogane Kaikitan	23	2015	11	522	0.01
16270	Starry ? Sky: After Autumn	17	2011	6	316	0.01
16271	Dokuro	23	2012	9	67	0.01
16272	Slide Adventure: Mag Kid	4	2007	9	1	0.01
16273	Smuggler's Run	9	2002	3	168	0.01
16274	The Humans: Meet the Ancestors!	4	2009	5	42	0.01
16275	Chaos;Head Noah	23	2014	11	357	0.01
16276	Battlestations: Midway	15	2007	12	22	0.01
16277	Farming Simulator 15 Expansion Pack	15	2015	9	81	0.01
16278	Jan Sangoku Musou	7	2006	6	49	0.01
16279	Assetto Corsa	18	2016	3	12	0.01
16280	Kono Aozora ni Yakusoku o: Melody of the Sun and Sea	7	2007	11	82	0.01
16281	Monster Bomber	4	2006	5	12	0.01
16282	Rakushou! Pachi-Slot Sengen 6: Rio 2 Cruising Vanadis	7	2009	6	49	0.01
16283	Fatal Fury: Battle Archives Volume 1 (JP sales)	7	2006	10	151	0.01
16284	CT Special Forces 2: Back in the Trenches	9	2003	7	428	0.01
16285	Kamaitachi no Yoru 2: Tokubetsu Hen	17	2006	11	120	0.01
16286	The Chronicles of Riddick: Assault on Dark Athena	15	2009	7	24	0.01
16287	The Ultimate Battle of the Sexes	1	2010	6	233	0.01
16288	Root Double: Before Crime After Days	5	2012	9	444	0.01
16289	War for the Overworld	15	2015	12	54	0.01
16290	TimeShift	15	2007	7	24	0.01
16291	ef - a fairy tale of the two.	7	2010	11	449	0.01
16292	The Train Giant	15	2012	12	568	0.01
16293	Sangoku Koi Senki: Omoide Gaeshi - CS Edition	23	2016	11	434	0.01
16294	FairlyLife: MiracleDays	17	2010	11	569	0.01
16295	Surf's Up	19	2007	1	6	0.01
16296	Jambo! Safari Animal Rescue	4	2009	8	9	0.01
16297	Death Connection Portable	17	2011	11	279	0.01
16298	Rainbow Islands: Revolution	17	2005	9	71	0.01
16299	Legend of Kay Anniversary	20	2015	9	125	0.01
16300	Rakushou! Pachi-Slot Sengen 4	7	2006	6	49	0.01
16301	Nitroplus Blasterz: Heroines Infinite Duel	6	2015	10	570	0.01
16302	Moe Moe 2-Ji Daisenryaku 2	17	2010	12	553	0.01
16303	Tsuyo Kiss 3 Portable	17	2012	9	530	0.01
16304	Fireman Sam: Action Stations	4	2013	9	123	0.01
16305	Tetris Ultimate	23	2014	5	6	0.01
16306	Durarara!! Relay	23	2015	9	278	0.01
16307	Moto Racer Advance	9	2002	3	6	0.01
16308	Duel Masters: Shadow of the Code	9	2004	6	11	0.01
16309	Full Auto 2: Battlelines	17	2007	3	9	0.01
16310	Freaky Flyers	19		3	54	0.01
16311	Army Men: Air Combat - The Elite Missions	19	2003	7	78	0.01
16312	Rally Championship	19	2003	3	112	0.01
16313	Happy Dance Collection	1	2008	6	26	0.01
16314	Space Hulk	23	2015	12	137	0.01
16315	Fuun Shinsengumi Bakumatsuden Portable	17	2009	9	228	0.01
16316	Musou Tourou	17	2009	12	132	0.01
16317	Really? Really! DS	4	2009	11	153	0.01
16318	Gakuen Hetalia	4	2012	11	279	0.01
16319	Daiya no Kuni no Alice: Wonderful Mirror World	17	2013	11	493	0.01
16320	Touch Detective 3: Does Funghi Dream of Bananas?	10	2014	11	91	0.01
16321	Dungeon Explorer: Warriors of Ancient Arts	17	2007	4	71	0.01
16322	Period Cube: Torikago no Amadeus	23	2016	9	279	0.01
16323	Tringo	9	2006	5	238	0.01
16324	Jam Sessions: Sing and Play Guitar (jp sales)	4	2007	6	6	0.01
16325	Binary Star	23	2014	11	279	0.01
16326	MXGP 2	15	2016	3	257	0.01
16327	Professional Farmer 2016	23	2015	9	26	0.01
16328	RalliSport Challenge(JP sales)	14	2002	3	2	0.01
16329	Dragon Quest X: All in One Package	20	2015	4	17	0.01
16330	Inversion	15		7	26	0.01
16331	Wedding Planner: Dream Weddings Guaranteed	4	2010	8	233	0.01
16332	Element Hunter	4	2009	4	26	0.01
16333	Ultraman Fighting Evolution 3	7	2004	10	58	0.01
16334	Rondo of Swords (jp sales)	4	2007	4	91	0.01
16335	The Eye of Judgment: Legends	17	2010	12	4	0.01
16336	Chaos;Child	11	2015	11	357	0.01
16337	Greg Hastings' Tournament Paintball Max'd	7	2006	7	5	0.01
16338	Whac-A-Mole	9	2005	5	87	0.01
16339	Nakayoshi All-Stars: Mezase Gakuen Idol	4	2008	6	425	0.01
16340	Shinseiki Evangelion: Koutetsu no Girlfriend Tokubetsu-Hen Portable	17	2009	11	462	0.01
16341	Fullmetal Alchemist: Prince of the Dawn	1	2009	11	17	0.01
16342	Command & Conquer Renegade	15	2002	7	8	0.01
16343	Grooverider: Slot Car Thunder	19	2003	3	497	0.01
16344	H2O+: Footprints in the Sand	7	2008	11	153	0.01
16345	Fashionable Puppy: Oshare na Koinu DS	4	2007	8	333	0.01
16346	Sekirei: Mirai Kara no Okurimono	7	2009	11	82	0.01
16347	Cities: Skylines Snowfall	15	2016	8	571	0.01
16348	Ultimate Board Game Collection	7	2006	6	169	0.01
16349	Dinotopia: The Sunstone Odyssey	14	2003	9	73	0.01
16350	Idol Janshi Suchie-Pai IV	7	2007	6	163	0.01
16351	Dungeons & Dragons: Neverwinter Nights - Complete	15	2011	6	11	0.01
16352	Natsuzora no Monologue	17	2013	11	572	0.01
16353	Kenka Banchou Portable	17	2009	9	130	0.01
16354	World Snooker Challenge 2005	17	2005	1	9	0.01
16355	Juiced 2: Hot Import Nights	15	2007	3	29	0.01
16356	G1 Jockey 4 2008	6	2008	1	49	0.01
16357	Monster Jam	15	2007	3	5	0.01
16358	Icewind Dale II	15	2002	4	118	0.01
16359	The Amazing Spider-Man (DS & Mobile Versions)	17	2009	9	22	0.01
16360	Mario vs. Donkey Kong: Tipping Stars	20	2015	5	1	0.01
16361	Ishin Renka: Ryouma Gaiden	17	2010	11	59	0.01
16362	NHL 2K7	14	2006	1	3	0.01
16363	Shirahana no Ori: Hiiro no Kakera 4 - Shiki no Uta	17	2013	11	279	0.01
16364	Act of Aggression	15	2015	12	81	0.01
16365	Powerdrome	14	2004	3	374	0.01
16366	Fallout Anthology	15	2015	9	7	0.01
16367	Tropico 3: Gold Edition	15	2010	12	200	0.01
16368	Survivor	1	2010	11	353	0.01
16369	Hakuouki: Shinsengumi Kitan	6		11	54	0.01
16370	Dance with Devils	23	2016	9	34	0.01
16371	Wand of Fortune	7	2009	11	279	0.01
16372	Arabians Lost: The Engagement on Desert	17	2012	11	493	0.01
16373	Gobliiins 4	15	2009	11	200	0.01
16374	S.Y.K: Shinsetsu Saiyuuki Portable	17	2010	11	279	0.01
16375	Crouching Tiger, Hidden Dragon	14	2003	9	6	0.01
16376	Meru Purana	13	1996	12	243	0.01
16377	Cross Edge Dash	5	2009	4	266	0.01
16378	Colin McRae Rally 04	15	2004	3	36	0.01
16379	Super Bubble Pop	14	2002	5	163	0.01
16380	Fullmetal Alchemist: Trading Card Game	4	2007	6	154	0.01
16381	Luxor: Pharaoh's Challenge	4	2007	5	328	0.01
16382	Grand Prix Legends	15	1997	3	24	0.01
16383	Fate/kaleid liner Prisma Illya	10	2014	9	278	0.01
16384	Hoshigami: Ruining Blue Earth Remix	4	2007	4	12	0.01
16385	Akatsuki no Amaneka to Aoi Kyojin	17	2010	12	462	0.01
16386	Pilot Academy	17	2006	8	71	0.01
16387	Poker for Dummies	15	2008	6	8	0.01
16388	John Daly's ProStroke Golf	5	2010	1	342	0.01
16389	TrackMania Turbo	15	2016	9	6	0.01
16390	Darkened Skye	19	2002	11	73	0.01
16391	Sakura-Sou no Pet na Kanojo	23	2013	11	278	0.01
16392	WSC REAL 09: World Snooker Championship	5	2009	1	42	0.01
16393	World Snooker Championship 2007	5	2007	1	9	0.01
16394	Handball 16	5	2015	1	324	0.01
16395	Wand of Fortune: Mirai e no Prologue	7	2010	11	279	0.01
16396	Alone in the Dark	15	2008	11	11	0.01
16397	Nova Usagi no Game de Ryuugaku!? DS	4	2007	6	15	0.01
16398	LMA Manager 2007	5	2006	1	36	0.01
16399	San-X: Chara Sagashi Land	4	2007	9	333	0.01
16400	Heart no Kuni no Alice	17	2009	11	434	0.01
16401	Petz: Hamsterz Life 2	9	2007	6	6	0.01
16402	The Technomancer	15	2016	4	81	0.01
16403	Pro Evolution Soccer 2010	15	2009	1	15	0.01
16404	Memories Off	17	2008	11	357	0.01
16405	Tenchu San Portable	17	2009	9	228	0.01
16406	Ratchet & Clank: Full Frontal Assault	23	2012	11	4	0.01
16407	Vitamin X	7	2007	11	59	0.01
16408	The Wild West	4	2007	9	35	0.01
16409	The Amazing Spider-Man 2 (2014)	15	2014	9	5	0.01
16410	Saint Seiya Omega: Ultimate Cosmo	17	2012	10	26	0.01
16411	Sega Rally Revo	15	2007	3	9	0.01
16412	Element Girl: Love, Fashion and Friends	4	2008	11	233	0.01
16413	Sakigake!! Otokojuku - Nihon yo, Kore ga Otoko Dearu!	6	2014	10	26	0.01
16414	Teenage Mutant Ninja Turtles (3DS)	10	2013	9	5	0.01
16415	Time Leap	5	2009	11	434	0.01
16416	The Godfather (JP sales)	5	2006	9	8	0.01
16417	thinkSMART: Chess for Kids	4	2011	6	188	0.01
16418	World Heroes Anthology	7	2007	10	151	0.01
16419	Chaos;Child	6	2015	11	357	0.01
16420	th!nk Logic Trainer	1	2009	5	232	0.01
16421	Tennis no Oji-Sama: Doubles no Oji-Sama - Boys, Be Glorious!	4	2009	1	15	0.01
16422	Routes PE	7	2007	11	316	0.01
16423	Winning Eleven: Pro Evolution Soccer 2007	15	2006	1	15	0.01
16424	Uchida Yasuou Mystery: Meitantei Senken Mitsuhiko Series: Fukutoshin Renzoku Satsujin Jiken	4	2009	11	59	0.01
16425	Railfan	6	2006	8	573	0.01
16426	SoniPro	10	2014	11	484	0.01
16427	Real Crimes: The Unicorn Killer	4	2011	5	54	0.01
16428	Akatsuki no Goei Trinity	17	2012	11	357	0.01
16429	ESPN NBA 2Night 2002	14	2002	1	15	0.01
16430	Virtua Quest	19		4	54	0.01
16431	Aladdin Magic Racer	1	2011	3	128	0.01
16432	Goat Simulator	18	2016	8	102	0.01
16433	Golden Time: Vivid Memories	23	2014	11	429	0.01
16434	Kamigami no Asobi InFinite	23	2016	11	309	0.01
16435	Shinseiki Evangelion: Koutetsu no Girlfriend 2nd Portable	17	2009	11	462	0.01
16436	Clive Barker's Jericho	15	2007	7	36	0.01
16437	Tenjin Ranman: Happy GO Lucky!!	17	2010	11	93	0.01
16438	Getsuei Gakuen: kou	23	2013	11	224	0.01
16439	Worms 2	15	1997	12	97	0.01
16440	The Cages: Pro Style Batting Practice	1	2010	1	15	0.01
16441	Brothers Conflict: Precious Baby	23	2017	9	279	0.01
16442	Shin Sangoku Musou 4 Special	5	2005	9	49	0.01
16443	Bullet Soul: Tama Tamashii	5	2011	7	357	0.01
16444	G1 Jockey 4 2007	7	2007	1	49	0.01
16445	Colin McRae Rally 2005 plus	17	2005	3	36	0.01
16446	Heart no Kuni no Alice: Wonderful Twin World	17	2014	11	493	0.01
16447	Madagascar: Escape 2 Africa	15	2008	9	5	0.01
16448	Wade Hixton's Counter Punch	9	2004	1	204	0.01
16449	Junjou Romanchika: Koi no Doki Doki Daisakusen	7	2008	11	220	0.01
16450	Legacy of Kain: Defiance	15	2003	9	22	0.01
16451	Assassin's Creed Chronicles	18	2016	9	6	0.01
16452	King's Bounty: Armored Princess	15	2009	4	437	0.01
16453	Hyperdimension Neptunia mk2	6	2011	9	132	0.01
16454	Shin Koihime Musou: Otome Taisen * Sangokushi Engi	6	2014	11	528	0.01
16455	Rugby League Live 3	18	2015	9	339	0.01
16456	Winx Club: Saving Alfea	10	2014	9	26	0.01
16457	Heart no Kuni no Alice	7	2008	11	434	0.01
16458	Shijyou Saikyou no Deshi Kenichi: Gekitou! Ragnarok Hachikengou	7	2007	10	13	0.01
16459	Art Academy: Home Studio	20	2015	6	1	0.01
16460	Juggler DS	4	2008	6	574	0.01
16461	Katekyoo Hitman Reborn! Kindan no Yami no Delta	1	2008	9	220	0.01
16462	Rugby World Cup 2015	15	2015	1	6	0.01
16463	Horse Life 4: My Horse, My Friend, My Champion	10	2015	9	54	0.01
16464	Razor Freestyle Scooter	9	2001	1	6	0.01
16465	Outdoors Unleashed: Alaska 3D	10	2011	1	178	0.01
16466	Vitamin Y	4	2008	11	59	0.01
16467	Egg Mania: Eggstreme Madness	19	2002	5	189	0.01
16468	Help Wanted: 50 Wacky Jobs (jp sales)	1	2008	8	69	0.01
16469	Magicians Academy	7	2007	4	155	0.01
16470	Memories Off #5: Togireta Film	17	2009	11	357	0.01
16471	Exstetra	10	2013	4	246	0.01
16472	Lucian Bee's: Resurrection Supernova	7	2009	11	357	0.01
16473	Amnesia Later	23	2014	6	279	0.01
16474	MotoGP 15	5	2015	3	257	0.01
16475	Azure Striker Gunvolt: Striker Pack	10	2016	9	575	0.01
16476	Captain Rainbow	1	2008	11	1	0.01
16477	Total War Attila: Tyrants & Kings	15	2016	12	102	0.01
16478	Space Raiders	19	2003	7	94	0.01
16479	DoDonPachi Daifukkatsu: Black Label	5	2011	7	358	0.01
16480	Shinobi, Koi Utsutsu: Setsugetsuka Koi Emaki	23	2015	9	279	0.01
16481	Ishin no Arashi: Shippuu Ryuumeden	4	2010	12	49	0.01
16482	Agatha Christie: Peril at End House	15	2009	11	259	0.01
16483	Muv-Luv Alternative	6	2012	8	357	0.01
16484	Dengeki Gakuen RPG: Cross of Venus Special	4	2011	4	429	0.01
16485	Dragon Ball Z for Kinect	5	2012	10	26	0.01
16486	Hospital Tycoon	15	2007	12	36	0.01
16487	Smart Boy's Winter Wonderland	4	2008	6	284	0.01
16488	Koi Sentai Love & Peace the P.S.P: Power Zenkai! Special Youso Tenkomori de Portable Ka Daisakusen de Aru!	17	2012	9	309	0.01
16489	Case Closed: One Truth Prevails	1	2007	11	127	0.01
16490	Slotter Mania P: Tetsuya Shinjuku vs Ueno	17	2010	6	534	0.01
16491	Bomberman	1	2008	5	124	0.01
16492	Micro Machines V4	7	2006	3	36	0.01
16493	SBK Superbike World Championship	17	2008	3	194	0.01
16494	Summer Athletics	15	2008	1	233	0.01
16495	Daito Giken Koushiki Pachi-Slot Simulator: 24 - Twenty-Four	7	2008	6	362	0.01
16496	The Smurfs	10		9	54	0.01
16497	Legends of Oz: Dorothy's Return	10	2014	5	34	0.01
16498	Unending Bloody Call	17	2012	9	418	0.01
16499	Shutsugeki! Otometachi no Senjou 2: Ikusabana no Kizuna	17	2011	12	553	0.01
16500	Snood 2: On Vacation	9	2005	5	87	0.01
16501	The Land Before Time: Into the Mysterious Beyond	9	2006	2	103	0.01
16502	Irotoridori no Sekai: World's End Re-Birth	23	2015	9	545	0.01
16503	Satomi Hakkenden: Hachi Tamanoki	17	2014	11	493	0.01
16504	Transformers: War for Cybertron (XBox 360, PS3, & PC Versions)	15	2010	7	5	0.01
16505	Naraku no Shiro	7	2008	11	132	0.01
16506	Shinigami to Shoujo	17	2011	11	576	0.01
16507	Mystereet	7	2006	11	444	0.01
16508	Rabbids Invasion: The Interactive TV Show	18	2014	6	6	0.01
16509	Samurai Shodown: Warrios Rage	13	1999	10	244	0.01
16510	Romeo Vs. Juliet	17	2013	11	493	0.01
16511	The Rise of the Argonauts	15	2008	4	36	0.01
16512	Trine	15	2009	9	127	0.01
16513	Palais de Reine	7	2007	12	577	0.01
16514	Pony Friends 2	15	2009	8	22	0.01
16515	Balloon Pop 2	10	2012	5	284	0.01
16516	Deal or No Deal	15	2006	6	81	0.01
16517	National Geographic Panda (JP sales)	4	2008	8	6	0.01
16518	Knights in the Nightmare: DHE Series Special Pack	4	2008	4	321	0.01
16519	DJ Max Technika Tune	23	2012	6	462	0.01
16520	Teenage Mutant Ninja Turtles	1	2007	9	15	0.01
16521	Crossroad Crisis	13	2000	5	91	0.01
16522	Bakumatsu Rock: Ultra Soul	17	2014	6	220	0.01
16523	Tengai Makyo: Dai Yon no Mokushiroku	17	2006	4	69	0.01
16524	Akatsuki no Goei Trinity	6	2012	11	357	0.01
16525	Karnaaj Rally	9	2003	3	163	0.01
16526	Style Book: Cinnamoroll	4	2006	6	26	0.01
16527	Shirogane no Soleil: Contract to the Future - Mirai e no Keiyaku	7	2008	11	93	0.01
16528	Blazer Drive	4	2008	4	9	0.01
16529	Onigokko! Portable	17	2013	11	82	0.01
16530	Hoshizora no Comic Garden	4	2008	11	59	0.01
16531	Kiniro no Corda 3	10	2015	11	49	0.01
16532	Hirameki Action: Chibikko Wagyan no Daiki na Bouken	4	2009	9	26	0.01
16533	Sébastien Loeb Rally Evo	18	2016	3	454	0.01
16534	Hitman (2016)	18	2016	9	17	0.01
16535	STORM: Frontline Nation	15	2011	12	54	0.01
16536	Metal Gear Solid HD Edition	5	2011	9	15	0.01
16537	Time Travelers	17	2012	11	38	0.01
16538	Mushi Bugyou	10	2013	9	26	0.01
16539	Patrician IV: Gold Edition	15	2011	6	200	0.01
16540	Transformers: Fall of Cybertron	15	2012	9	5	0.01
16541	Sea Monsters: A Prehistoric Adventure	4	2007	11	293	0.01
16542	Spore Galactic Adventures	15	2009	12	8	0.01
16543	15 Days	15	2009	11	233	0.01
16544	Battle Fantasia	6	2008	10	12	0.01
16545	Mario & Luigi: Paper Jam & Mario Kart 7 Double Pack	10	2015	6	1	0.01
16546	Driving Simulator 2011	15	2011	3	34	0.01
16547	Imagine Figure Skater (JP sales)	4	2007	1	6	0.01
16548	The Treasures of Mystery Island 3 Pack - Save Mystery Island!	15	2011	5	54	0.01
16549	Hyakki Yagyou Kaidan Romance	17	2012	9	493	0.01
16550	Bookworm Deluxe	15	2006	5	208	0.01
16551	Hakuoki: Reimeiroku - Omouhase Kara	23	2015	9	279	0.01
16552	E.T. The Extra-Terrestrial	9	2001	9	215	0.01
16553	God Eater Off Shot: Tachibana Sakuya-hen Twin Pack & Animation Vol.7	11	2016	9	26	0.01
16554	Sweet Honey Coming	7	2009	11	153	0.01
16555	Mahou Sensei Negima!? Neo-Pactio Fight!!	1	2007	10	220	0.01
16556	Bound By Flame	5	2014	4	34	0.01
16557	Psychic Detective	13	1995	11	8	0.01
16558	Codename: Panzers Complete Collection	15	2016	12	125	0.01
16559	Super Robot Taisen: Original Generation	9	2002	4	58	0.01
16560	Dramatical Murder Re:code	23	2014	11	570	0.01
16561	Pro Evolution Soccer 2008	15	2007	1	15	0.01
16562	Sugar + Spice! Anoko no Suteki na Nanimokamo	7	2008	11	82	0.01
16563	Hanasaku Manimani	23	2014	11	357	0.01
16564	Kanokon: Esuii	7	2008	11	357	0.01
16565	Mighty No. 9	18	2016	2	42	0.01
16566	Mortal Kombat: Deadly Alliance	9	2002	10	40	0.01
16567	Original Frisbee Disc Sports: Ultimate & Golf	4	2007	9	204	0.01
16568	Teslagrad	23	2015	2	578	0.01
16569	End of Nations	15	2012	12	149	0.01
16570	Fujiko F. Fujio Characters: Great Assembly! Slightly Fantastic Slapstick Party	10	2014	9	26	0.01
16571	XI Coliseum	17	2006	5	4	0.01
16572	Resident Evil 4 HD	18	2016	7	13	0.01
16573	Farming 2017 - The Simulation	11	2016	8	579	0.01
16574	Grisaia no Kajitsu: La Fruit de la Grisaia	17	2013	11	434	0.01
16575	Scarlett: Nichijou no Kyoukaisen	7	2008	11	153	0.01
16576	Mini Desktop Racing	1	2007	3	295	0.01
16577	Yattaman Wii: BikkuriDokkiri Machine de Mou Race da Koron	1	2008	3	197	0.01
16578	Neo Angelique Special	17	2008	11	49	0.01
16579	Rugby Challenge 3	18	2016	1	391	0.01
16580	Damnation	15	2009	7	36	0.01
16581	Outdoors Unleashed: Africa 3D	10	2011	1	178	0.01
16582	PGA European Tour	12	2000	1	53	0.01
16583	Real Rode	7	2008	11	153	0.01
16584	Fit & Fun	1	2011	1	54	0.01
16585	Planet Monsters	9	2001	9	104	0.01
16586	Carmageddon 64	12	1999	9	19	0.01
16587	Bust-A-Move 3000	19	2003	5	6	0.01
16588	Breach	15	2011	7	154	0.01
16589	Secret Files 2: Puritas Cordis	4	2009	11	42	0.01
16590	Mezase!! Tsuri Master DS	4	2009	1	69	0.01
16591	Mega Brain Boost	4	2008	5	35	0.01
16592	Chou Ezaru wa Akai Hana: Koi wa Tsuki ni Shirube Kareru	23	2016	9	495	0.01
16593	Eiyuu Densetsu: Sora no Kiseki Material Collection Portable	17	2007	4	254	0.01
16594	Myst IV: Revelation	15	2004	11	6	0.01
16595	Plushees	4	2008	8	154	0.01
16596	Woody Woodpecker in Crazy Castle 5	9	2002	2	189	0.01
16597	Men in Black II: Alien Escape	19	2003	7	53	0.01
16598	SCORE International Baja 1000: The Official Game	7	2008	3	5	0.01
16599	Know How 2	4	2010	5	509	0.01
16600	Spirits & Spells	9	2003	2	172	0.01
\.


--
-- PostgreSQL database dump complete
--

