-- Add missing CREATURE_EXTRA_FLAG_DUAL_WIELD_FORCED for heroic templates that have it in their normal templates, which also dont have dual wield weapons
UPDATE `creature_template` SET `ExtraFlags` = `ExtraFlags`|8388608 WHERE `entry` IN (
20582, -- Shattered Hand Brawler (1)
20597 -- Warchief Kargath Bladefist (1)
);

-- Remove Dual Wield ExtraFlag from creatures that have two weapons (not needed)
UPDATE `creature_template` SET `ExtraFlags` = `ExtraFlags`&~8388608 WHERE `entry` IN (
61, -- Thuros Lightfingers - 1900 - 1900
315, -- Stalvan Mistmantle - 934 - 1897
502, -- Benny Blaanco - 1897 - 1897
580, -- Redridge Drudger - 2558 - 2809
639, -- Edwin VanCleef - 2179 - 2147
723, -- Mosh'Ogg Butcher - 2827 - 2827
813, -- Colonel Kurzen - 5285 - 2179
947, -- Rohh the Silent - 5281 - 1900
1398, -- Boss Galgosh - 2202 - 3350
1561, -- Bloodsail Raider - 2184 - 2184
1696, -- Targorr the Dread - 5305 - 5305
1711, -- Defias Convict - 2184 - 2184
1716, -- Bazil Thredd - 2179 - 1897
1785, -- Skeletal Terror - 5532 - 5532
1838, -- Scarlet Interrogator - 5532 - 5532
2320, -- Nagaz - 5286 - 5286
2554, -- Witherbark Axe Thrower - 1905 - 1905
2558, -- Witherbark Berserker - 1909 - 1909
2589, -- Syndicate Mercenary - 1899 - 1896
2597, -- Lord Falconcrest - 2178 - 2178
2600, -- Singer - 5280 - 5280
2605, -- Zalas Witherbark - 1905 - 1905
3669, -- Lord Cobrahn - 3494 - 1906
3670, -- Lord Pythas - 1909 - 5286
-- 3672, -- Boahn - 3326 - 0
3736, -- Darkslayer Mordenthal - 1906 - 1906
3840, -- Druid of the Fang - 3494 - 11314
3974, -- Houndmaster Loksey - 5286 - 5286
3983, -- Interrogator Vishas - 5532 - 5532
4329, -- Firemane Scout - 1905 - 1905
-- 4403, -- Muckshell Pincer -  - 
4420, -- Overlord Ramtusk - 5286 - 5286
4479, -- Fardel Dabyrie - 2180 - 5284
4480, -- Kenata Dabyrie - 1900 - 2711
4493, -- Scarlet Avenger - 12934 - 12934
-- 4540, -- Scarlet Monk -  - 
4666, -- Burning Blade Felsworn - 5285 - 5281
4714, -- Slitherblade Myrmidon - 1899 - 1896
5399, -- Veyzhak the Cannibal - 2827 - 2827
5683, -- Comar Villard - 5281 - 5280
5713, -- Gasher - 2183 - 5286
5835, -- Foreman Grills - 5278 - 5278
5846, -- Dark Iron Taskmaster - 5278 - 5278
5932, -- Taskmaster Whipfang - 5532 - 5532
6771, -- Ravenholdt Assassin - 2179 - 2711
7029, -- Blackrock Battlemaster - 5286 - 5286
-- 7033, -- Firegut Ogre - 3361 - 0
7057, -- Digmaster Shovelphlange - 3346 - 1910
7605, -- Raven - 5281 - 5281
8216, -- Retherokk the Berserker - 11762 - 11762
-- 8218, -- Witherheart the Stalker -  - 
8407, -- Makron the Corrupt - 3364 - 5284
8529, -- Scourge Champion - 12944 - 2179
9027, -- Gorosh the Dervish - 10611 - 10611
9040, -- Dope'rel - 10616 - 5285
9236, -- Shadow Hunter Vosh'gajin - 10878 - 12332
9237, -- War Master Voone - 12290 - 12290
9258, -- Scarshield Raider - 2179 - 2179
9264, -- Firebrand Pyromancer - 1906 - 1906
9319, -- Houndmaster Grebmar - 11763 - 11762
9583, -- Bloodaxe Veteran - 12290 - 10611
10318, -- Blackhand Assassin - 12297 - 12298
10391, -- Skeletal Berserker - 1905 - 1905
-- 10478, -- Splintered Skeleton -  - 
-- 10488, -- Risen Construct -  - 
10824, -- Ranger Lord Hawkspear - 2178 - 2178
10997, -- Cannon Master Willey - 11763 - 11763
-- 11022, -- Alexi Barov - 5284 - 0
11043, -- Crimson Monk - 3494 - 11506
11196, -- Shatterspear Drummer - 12786 - 12786
11261, -- Doctor Theolen Krastinov - 2827 - 2827
11348, -- Zealot Zath - 3494 - 11506
11387, -- Sandfury Speaker - 5278 - 5278
11452, -- Wildspawn Rogue - 10619 - 10619
11467, -- Tsu'zee - 12298 - 12298
11469, -- Eldreth Seether - 1899 - 1897
11880, -- Twilight Avenger - 13312 - 13312
-- 12100, -- Lava Reaver -  - 
12236, -- Lord Vyletongue - 10616 - 10616
-- 12262, -- Ziggurat Protector -  - 
-- 12263, -- Slaughterhouse Protector -  - 
14425, -- Gnawbone - 5278 - 5278
14515, -- High Priestess Arlokk - 10616 - 10616
-- 14688, -- Master Sandoval -  - 
-- 14882, -- Atal'ai Mistress -  - 
15084, -- Renataki - 19980 - 19980
15162, -- Scarlet Inquisitor - 5532 - 2827
15643, -- Amani Berserker - 11763 - 11763
15687, -- Moroes - 23481 - 23481
16050, -- Rotfang - 22215 - 5284
-- 16299, -- Skeletal Shocktrooper -  - 
16387, -- Atiesh - 22738 - 22738
-- 16422, -- Skeletal Soldier -  - 
16424, -- Spectral Sentry - 1896 - 5281
16523, -- Shattered Hand Savage - 12290 - 12290
-- 16593, -- Shattered Hand Brawler -  - 
16772, -- Bonechewer Devastator - 13707 - 13707
-- 16808, -- Warchief Kargath Bladefist -  - 
16878, -- Shattered Hand Berserker - 1903 - 1903
-- 16936, -- Dreghood Wanderer -  - 
17010, -- Draka - 10612 - 10612
17264, -- Bonechewer Ravener - 10616 - 22215
17398, -- Nascent Fel Orc - 22210 - 22211
17420, -- Shattered Hand Heathen - 13707 - 13707
17533, -- Romulo - 3364 - 2184
17591, -- Blood Elf Bandit - 23908 - 23908
17607, -- Sunhawk Defender - 23225 - 24322
17610, -- Sunhawk Agent - 24324 - 24324
17621, -- Heathen Guard - 13707 - 13707
17664, -- Matis the Cruel - 24034 - 24038
17695, -- Shattered Hand Assassin - 10619 - 2711
17728, -- Murkblood Tribesman - 1903 - 1903
17826, -- Swamplord Musel'ek - 5600 - 11505
18054, -- Bonechewer Ravener (1) -  - 
18098, -- Kialon Nightblade - 24418 - 23481
18170, -- Infinite Slayer - 5502 - 5502
-- 18211, -- Murkblood Brute -  - 
18298, -- Gava'xi - 2180 - 2178
18351, -- Lump - 23428 - 2051
18399, -- Murkblood Twin - 21122 - 21122
18417, -- Altruis the Sufferer - 12482 - 12502
18440, -- Warmaul Chef Bufferlo - 2827 - 25646
-- 18541, -- Urdak -  - 
18612, -- Nascent Fel Orc (1) -  - 
18631, -- Cabal Cultist - 3494 - 11506
18636, -- Cabal Assassin - 13707 - 12298
18679, -- Vorakem Doomspeaker - 22738 - 22738
18830, -- Cabal Fanatic - 13625 - 13625
-- 18860, -- Daughter of Destiny -  - 
19152, -- Interrogator Khan - 27407 - 24331
-- 19191, -- Arazzius the Cruel -  - 
19263, -- Warboss Nekrogg - 5283 - 5283
19298, -- Warbringer Arix'Amal - 25816 - 25816
19511, -- Nethervine Inciter - 23481 - 23481
19641, -- Warp-Raider Nesaad - 29433 - 29433
19673, -- Consortium Engineer - 28487 - 28487
19705, -- Master Daellis Dawnstrike - 24324 - 24324
19740, -- Wrathwalker - 14874 - 14874
19843, -- Nethervine Trickster - 19987 - 19987
19963, -- Doomcryer - 28133 - 28133
20031, -- Bloodwarder Legionnaire - 24034 - 30147
20035, -- Bloodwarder Marshal - 31611 - 31611
20116, -- Gurn Grubnosh - 13104 - 13104
20181, -- Murkblood Tribesman (1) -  - 
20183, -- Swamplord Musel'ek (1) -  - 
20409, -- Kirin'Var Apprentice - 1901 - 13611
20435, -- Overseer Athanel - 30147 - 30147
20442, -- Captain Bo'kar - 14874 - 14874
20453, -- Ethereum Shocktrooper - 29419 - 29419
20454, -- Nexus-King Salhadaar - 29420 - 29420
-- 20456, -- Ethereum Researcher -  - 
20474, -- Ethereum Nexus-Stalker - 29444 - 29444
20534, -- Infinite Slayer (1) -  - 
20569, -- Heathen Guard (1) -  - 
20580, -- Shattered Hand Assassin (1) -  - 
-- 20582, -- Shattered Hand Brawler (1) -  - 
20587, -- Shattered Hand Heathen (1) -  - 
20591, -- Shattered Hand Savage (1) -  - 
-- 20597, -- Warchief Kargath Bladefist (1) -  - 
20639, -- Cabal Assassin (1) -  - 
20640, -- Cabal Cultist (1) -  - 
20644, -- Cabal Fanatic (1) -  - 
-- 20683, -- Prophetess Cavrylin -  - 
20685, -- Overseer Azarad - 10613 - 10613
20726, -- Mugdorg - 1901 - 29637
-- 20783, -- Porfus the Gem Gorger -  - 
-- 20784, -- Armbreaker Huffaz -  - 
-- 20785, -- Fel Tinkerer Zortan -  - 
-- 20786, -- Gul'bor -  - 
-- 20790, -- Malevus the Mad -  - 
20803, -- Overmaster Grindgarr - 21465 - 21465
20885, -- Dalliah the Doomsayer - 23743 - 23743
-- 20929, -- Wrath Lord - 14878 - 0
-- 20984, -- Protectorate Defender - 29819 - 0
21164, -- Netharel - 30208 - 30209
21168, -- Theras - 30208 - 30209
21171, -- Alandien - 30208 - 30209
21178, -- Varedis - 30208 - 30209
21180, -- Demon Hunter Initiate - 5597 - 5597
21215, -- Leotheras the Blind - 30208 - 30209
21232, -- Greyheart Skulker - 31805 - 31805
21245, -- Bonechewer Marauder - 13707 - 13707
21315, -- Ruul the Darkener - 30647 - 30647
21503, -- Sunfury Warlock - 13722 - 12867
21563, -- Nethervine Inciter (1) -  - 
21565, -- Nethervine Trickster (1) -  - 
21590, -- Dalliah the Doomsayer (1) -  - 
-- 21639, -- Illidari Slayer - 30625 - 0
21652, -- Skettis Time-Shifter - 28678 - 4993
21662, -- Cabal Tomb-Raider - 12298 - 12298
-- 21717, -- Dragonmaw Wrangler -  - 
-- 21805, -- Protectorate Avenger - 29438 - 0
21808, -- Illidari Overseer - 22215 - 22215
21838, -- Terokk - 32384 - 32536
-- 21877, -- Karsius the Ancient Watcher - 30802 - 0
21907, -- Cabal Initiate - 10614 - 10614
21925, -- Avatar of Sathal - 28037 - 28037
21985, -- Skettis Eviscerator - 10617 - 10617
-- 22004, -- Leoroxx - 18419 - 0
-- 22076, -- Torloth the Magnificent - 29538 - 0
-- 22082, -- Shadowmoon Slayer - 14874 - 0
22143, -- Gordunni Back-Breaker - 3361 - 3361
-- 22199, -- Slaag -  - 
-- 22377, -- Akuno -  - 
22378, -- Cabal Interrogator - 10614 - 10614
22396, -- Draaca Longtail - 31743 - 31743
22821, -- Ethereum Avenger - 29418 - 29418
-- 22825, -- Matron Li-sahar -  - 
22841, -- Shade of Akama - 30699 - 30699
22869, -- Illidari Boneslicer - 32731 - 32731
22873, -- Coilskar General - 30403 - 30403
22917, -- Illidan Stormrage - 32632 - 32633
-- 23008, -- Ethereum Jailor - 0 - 12747
23028, -- Bonechewer Taskmaster - 32874 - 31468
23047, -- Shadowmoon Soldier - 32615 - 32615
23220, -- Shivan Assassin - 28133 - 28133
23222, -- Bonechewer Brawler - 32878 - 32877
23332, -- Bash'ir Reckoner - 29543 - 29543
23355, -- Zarcsin - 25816 - 25816
23390, -- Bash'ir's Harbinger - 23673 - 23673
23402, -- Illidari Battle-mage - 32889 - 32889
-- 23410, -- Spirit of Udalo -  - 
-- 23411, -- Spirit of Olum -  - 
23414, -- Bash'ir Inquisitor - 23673 - 23673
23450, -- Gordunni Proxy - 3361 - 3361
23474, -- Shivan Assassin (Red) - 28133 - 28133
23475, -- Shivan Assassin (Blue) - 28133 - 28133
23476 -- Shivan Assassin (Black) - 28133 - 28133
-- 24882, -- Brutallus -  - 
);

