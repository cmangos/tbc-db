-- Misc Faction Fixes
UPDATE `creature_template` SET `faction` = 67 WHERE `entry` = 1885; -- Scarlet Smith
UPDATE `creature_template` SET `faction` = 7 WHERE `entry` IN (2578,2579,2580); -- Young Mesa Buzzard, Mesa Buzzard, Elder Mesa Buzzard
UPDATE `creature_template` SET `faction` = 674 WHERE `entry` = 5843; -- Slave Worker
UPDATE `creature_template` SET `faction` = 35 WHERE `entry` = 12777; -- Captain Dirgehammer
UPDATE `creature_template` SET `faction` = 85 WHERE `entry` = 14581; -- Sergeant Thunderhorn
UPDATE `creature_template` SET `faction` = 114 WHERE `entry` = 15218; -- Faire Cannon Trigger

-- TBC
UPDATE `creature_template` SET `faction` = 16 WHERE `entry` IN (16507,20593); -- Shattered Hand Sentry
UPDATE `creature_template` SET `faction` = 16 WHERE `entry` IN (16523,20591); -- Shattered Hand Savage
UPDATE `creature_template` SET `faction` = 16 WHERE `entry` IN (16593,20582); -- Shattered Hand Brawler
UPDATE `creature_template` SET `faction` = 16 WHERE `entry` IN (16594,20576); -- Shadowmoon Acolyte
UPDATE `creature_template` SET `faction` = 16 WHERE `entry` IN (16699,20590); -- Shattered Hand Reaver
UPDATE `creature_template` SET `faction` = 16 WHERE `entry` IN (16700,20589); -- Shattered Hand Legionnaire
UPDATE `creature_template` SET `faction` = 16 WHERE `entry` IN (16704,20594); -- Shattered Hand Sharpshooter
UPDATE `creature_template` SET `faction` = 16 WHERE `entry` IN (16807,20568); -- Grand Warlock Nethekurse
UPDATE `creature_template` SET `faction` = 16 WHERE `entry` IN (16808,20597); -- Warchief Kargath Bladefist
UPDATE `creature_template` SET `faction` = 16 WHERE `entry` IN (16809,20596); -- Warbringer O'mrogg
UPDATE `creature_template` SET `faction` = 16 WHERE `entry` IN (17083,20567); -- Fel Orc Convert
UPDATE `creature_template` SET `faction` = 16 WHERE `entry` IN (17281,18055); -- Bonechewer Ripper
UPDATE `creature_template` SET `faction` = 16 WHERE `entry` IN (17420,20587); -- Shattered Hand Heathen
UPDATE `creature_template` SET `faction` = 16 WHERE `entry` IN (17427,20579); -- Shattered Hand Archer
UPDATE `creature_template` SET `faction` = 16 WHERE `entry` IN (17455,18051); -- Bonechewer Beastmaster
UPDATE `creature_template` SET `faction` = 16 WHERE `entry` IN (17462,20595); -- Shattered Hand Zealot
UPDATE `creature_template` SET `faction` = 16 WHERE `entry` IN (17478,18050); -- Bleeding Hollow Scryer
UPDATE `creature_template` SET `faction` = 16 WHERE `entry` IN (17464,20586); -- Shattered Hand Gladiator (1692 during rp combat)
UPDATE `creature_template` SET `faction` = 16 WHERE `entry` IN (17670,20588); -- Shattered Hand Houndmaster
UPDATE `creature_template` SET `faction` = 16 WHERE `entry` IN (17671,20584); -- Shattered Hand Champion
UPDATE `creature_template` SET `faction` = 16 WHERE `entry` IN (17693,20592); -- Shattered Hand Scout
UPDATE `creature_template` SET `faction` = 16 WHERE `entry` IN (17694,20577); -- Shadowmoon Darkcaster
UPDATE `creature_template` SET `faction` = 16 WHERE `entry` IN (17695,20580); -- Shattered Hand Assassin
UPDATE `creature_template` SET `faction` = 16 WHERE `entry` IN (17356,20565); -- Creeping Ooze
UPDATE `creature_template` SET `faction` = 16 WHERE `entry` IN (17357,20566); -- Creeping Oozeling (1669 maybe during some rp)
UPDATE `creature_template` SET `faction` = 1667 WHERE `entry` = 17289; -- Rifleman Brownbeard
UPDATE `creature_template` SET `faction` = 1667 WHERE `entry` = 17290; -- Captain Alina
UPDATE `creature_template` SET `faction` = 1667 WHERE `entry` = 17292; -- Private Jacint
UPDATE `creature_template` SET `faction` = 1669 WHERE `entry` = 17295; -- Korag Proudmane
UPDATE `creature_template` SET `faction` = 1669 WHERE `entry` = 17296; -- Captain Boneshatter
UPDATE `creature_template` SET `faction` = 1669 WHERE `entry` = 17297; -- Scout Orgarr
UPDATE `creature_template` SET `faction` = 16 WHERE `entry` IN (17721,20620); -- Coilfang Engineer
UPDATE `creature_template` SET `faction` = 16 WHERE `entry` IN (17722,20625); -- Coilfang Sorceress
UPDATE `creature_template` SET `faction` = 1712 WHERE `entry` IN (17724,20185); -- Underbat
UPDATE `creature_template` SET `faction` = 16 WHERE `entry` IN (17725,20188); -- Underbog Lurker
UPDATE `creature_template` SET `faction` = 74 WHERE `entry` IN (17726,20191); -- Wrathfin Myrmidon
UPDATE `creature_template` SET `faction` = 74 WHERE `entry` IN (17727,20192); -- Wrathfin Sentry
UPDATE `creature_template` SET `faction` = 51 WHERE `entry` IN (17728,20181); -- Murkblood Tribesman
UPDATE `creature_template` SET `faction` = 51 WHERE `entry` IN (17729,20180); -- Murkblood Spearman
UPDATE `creature_template` SET `faction` = 51 WHERE `entry` IN (17730,20177); -- Murkblood Healer
UPDATE `creature_template` SET `faction` = 1711 WHERE `entry` IN (17731,20173); -- Fen Ray
UPDATE `creature_template` SET `faction` = 1711 WHERE `entry` IN (17732,20175); -- Lykul Wasp
UPDATE `creature_template` SET `faction` = 74 WHERE `entry` IN (17735,20193); -- Wrathfin Warrior
UPDATE `creature_template` SET `faction` = 16 WHERE `entry` IN (17770,20169); -- Hungarfen
UPDATE `creature_template` SET `faction` = 51 WHERE `entry` IN (17771,20179); -- Murkblood Oracle
UPDATE `creature_template` SET `faction` = 16 WHERE `entry` IN (17796,20630); -- Mekgineer Steamrigger
UPDATE `creature_template` SET `faction` = 16 WHERE `entry` IN (17797,20629); -- Hydromancer Thespia
UPDATE `creature_template` SET `faction` = 16 WHERE `entry` IN (17798,20633); -- Warlord Kalithresh
UPDATE `creature_template` SET `faction` = 190 WHERE `entry` IN (17799,20628); -- Dreghood Slave
UPDATE `creature_template` SET `faction` = 16 WHERE `entry` IN (17800,20621); -- Coilfang Myrmidon
UPDATE `creature_template` SET `faction` = 16 WHERE `entry` IN (17801,20623); -- Coilfang Siren
UPDATE `creature_template` SET `faction` = 16 WHERE `entry` IN (17802,20626); -- Coilfang Warrior
UPDATE `creature_template` SET `faction` = 16 WHERE `entry` IN (17803,20622); -- Coilfang Oracle
UPDATE `creature_template` SET `faction` = 16 WHERE `entry` IN (17805,20624); -- Coilfang Slavemaster
UPDATE `creature_template` SET `faction` = 16 WHERE `entry` IN (17816,19884); -- Bogstrok
UPDATE `creature_template` SET `faction` = 16 WHERE `entry` IN (17817,19892); -- Greater Bogstrok
UPDATE `creature_template` SET `faction` = 74 WHERE `entry` IN (17826,20183); -- Swamplord Musel'ek
UPDATE `creature_template` SET `faction` = 74 WHERE `entry` IN (17827,20165); -- Claw
UPDATE `creature_template` SET `faction` = 1749 WHERE `entry` IN (17846,20543); -- Pit Spectator
UPDATE `creature_template` SET `faction` = 16 WHERE `entry` IN (17871,20190); -- Underbog Shambler
UPDATE `creature_template` SET `faction` = 1660 WHERE `entry` = 17890; -- Weeder Greenthumb
UPDATE `creature_template` SET `faction` = 1660 WHERE `entry` IN (17893,22938); -- Naturalist Bite
UPDATE `creature_template` SET `faction` = 16 WHERE `entry` IN (17917,20627); -- Coilfang Water Elemental
UPDATE `creature_template` SET `faction` = 74 WHERE `entry` IN (17938,19888); -- Coilfang Observer
UPDATE `creature_template` SET `faction` = 74 WHERE `entry` IN (17940,19891); -- Coilfang Technician
UPDATE `creature_template` SET `faction` = 74 WHERE `entry` IN (17941,19893); -- Mennu the Betrayer
UPDATE `creature_template` SET `faction` = 63 WHERE `entry` IN (17951,20632); -- Steamrigger Mechanic
UPDATE `creature_template` SET `faction` = 190 WHERE `entry` IN (17954,20631); -- Naga Distiller
UPDATE `creature_template` SET `faction` = 74 WHERE `entry` IN (17957,19885); -- Coilfang Champion
UPDATE `creature_template` SET `faction` = 74 WHERE `entry` IN (17958,19886); -- Coilfang Defender
UPDATE `creature_template` SET `faction` = 74 WHERE `entry` IN (17959,19889); -- Coilfang Slavehandler
UPDATE `creature_template` SET `faction` = 74 WHERE `entry` IN (17960,19890); -- Coilfang Soothsayer
UPDATE `creature_template` SET `faction` = 74 WHERE `entry` IN (17961,19887); -- Coilfang Enchantress
UPDATE `creature_template` SET `faction` = 51 WHERE `entry` IN (17962,19903); -- Coilfang Collaborator
UPDATE `creature_template` SET `faction` = 190 WHERE `entry` IN (17963,19902); -- Wastewalker Slave
UPDATE `creature_template` SET `faction` = 190 WHERE `entry` IN (17964,19904); -- Wastewalker Worker
UPDATE `creature_template` SET `faction` = 16 WHERE `entry` IN (17975,21558); -- High Botanist Freywinn
UPDATE `creature_template` SET `faction` = 16 WHERE `entry` IN (17976,21551); -- Commander Sarannis
UPDATE `creature_template` SET `faction` = 16 WHERE `entry` IN (17977,21582); -- Warp Splinter
UPDATE `creature_template` SET `faction` = 16 WHERE `entry` IN (17978,21581); -- Thorngrin the Tender
UPDATE `creature_template` SET `faction` = 16 WHERE `entry` IN (17980,21559); -- Laj
UPDATE `creature_template` SET `faction` = 16 WHERE `entry` IN (17991,19895); -- Rokmar the Crackler
UPDATE `creature_template` SET `faction` = 16 WHERE `entry` IN (17993,21548); -- Bloodwarder Protector
UPDATE `creature_template` SET `faction` = 16 WHERE `entry` IN (17994,21545); -- Bloodwarder Falconer
UPDATE `creature_template` SET `faction` = 1692 WHERE `entry` IN (18105,20168); -- Ghaz'an
UPDATE `creature_template` SET `faction` = 16 WHERE `entry` IN (18155,21544); -- Bloodfalcon
UPDATE `creature_template` SET `faction` = 16 WHERE `entry` IN (18319,20697); -- Time-Lost Scryer
UPDATE `creature_template` SET `faction` = 16 WHERE `entry` IN (18320,20698); -- Time-Lost Shadowmage
UPDATE `creature_template` SET `faction` = 16 WHERE `entry` IN (18321,20701); -- Sethekk Talon Lord
UPDATE `creature_template` SET `faction` = 16 WHERE `entry` IN (18322,20696); -- Sethekk Ravenguard
UPDATE `creature_template` SET `faction` = 16 WHERE `entry` IN (18323,20692); -- Sethekk Guard
UPDATE `creature_template` SET `faction` = 16 WHERE `entry` IN (18326,20699); -- Sethekk Shaman
UPDATE `creature_template` SET `faction` = 16 WHERE `entry` IN (18328,20694); -- Sethekk Oracle
UPDATE `creature_template` SET `faction` = 1769 WHERE `entry` = 18338; -- Highlord Kruul
UPDATE `creature_template` SET `faction` = 16 WHERE `entry` IN (18371,20318); -- Shirrak the Dead Watcher
UPDATE `creature_template` SET `faction` = 16 WHERE `entry` IN (18373,20306); -- Exarch Maladaar
UPDATE `creature_template` SET `faction` = 16 WHERE `entry` IN (18404,21549); -- Bloodwarder Steward
UPDATE `creature_template` SET `faction` = 16 WHERE `entry` IN (18405,21578); -- Tempest-Forge Peacekeeper
UPDATE `creature_template` SET `faction` = 16 WHERE `entry` IN (18419,21546); -- Bloodwarder Greenkeeper
UPDATE `creature_template` SET `faction` = 16 WHERE `entry` IN (18420,21574); -- Sunseeker Geomancer
UPDATE `creature_template` SET `faction` = 16 WHERE `entry` IN (18421,21577); -- Sunseeker Researcher
UPDATE `creature_template` SET `faction` = 16 WHERE `entry` IN (18422,21570); -- Sunseeker Botanist
UPDATE `creature_template` SET `faction` = 16 WHERE `entry` IN (18472,20690); -- Darkweaver Syth
UPDATE `creature_template` SET `faction` = 16 WHERE `entry` IN (18473,20706); -- Talon King Ikiss
UPDATE `creature_template` SET `faction` = 16 WHERE `entry` IN (18493,20301); -- Auchenai Soulpriest
UPDATE `creature_template` SET `faction` = 16 WHERE `entry` IN (18495,20302); -- Auchenai Vindicator
UPDATE `creature_template` SET `faction` = 16 WHERE `entry` IN (18497,20299); -- Auchenai Monk
UPDATE `creature_template` SET `faction` = 16 WHERE `entry` IN (18506,20316); -- Raging Soul
UPDATE `creature_template` SET `faction` = 16 WHERE `entry` IN (18521,20315); -- Raging Skeleton
UPDATE `creature_template` SET `faction` = 16 WHERE `entry` IN (18524,20298); -- Angered Skeleton
UPDATE `creature_template` SET `faction` = 16 WHERE `entry` IN (18587,21552); -- Frayer
UPDATE `creature_template` SET `faction` = 1744 WHERE `entry` = 18594; -- Dathris Sunstriker
UPDATE `creature_template` SET `faction` = 1816 WHERE `entry` IN (18598,20541); -- Orc Prisoner
UPDATE `creature_template` SET `faction` = 16 WHERE `entry` = 18607; -- Keli'dan the Breaker (1)
UPDATE `creature_template` SET `faction` = 16 WHERE `entry` = 18609; -- Laughing Skull Legionnaire (1)
UPDATE `creature_template` SET `faction` = 16 WHERE `entry` = 18610; -- Laughing Skull Rogue (1)
UPDATE `creature_template` SET `faction` = 16 WHERE `entry` = 18611; -- Laughing Skull Warden (1)
UPDATE `creature_template` SET `faction` = 16 WHERE `entry` = 18617; -- Shadowmoon Summoner (1)
UPDATE `creature_template` SET `faction` = 16 WHERE `entry` = 18618; -- Shadowmoon Technician (1)
UPDATE `creature_template` SET `faction` = 16 WHERE `entry` = 18619; -- Shadowmoon Warlock (1)
UPDATE `creature_template` SET `faction` = 16 WHERE `entry` = 18621; -- The Maker (1)
UPDATE `creature_template` SET `faction` = 12 WHERE `entry` = 18644; -- Tarren Mill Peasant
UPDATE `creature_template` SET `faction` = 1665 WHERE `entry` = 18657; -- Tarren Mill Fisherman
UPDATE `creature_template` SET `faction` = 1749 WHERE `entry` IN (18673,20542); -- Pit Announcer
UPDATE `creature_template` SET `faction` = 16 WHERE `entry` IN (18700,20317); -- Reanimated Bones
UPDATE `creature_template` SET `faction` = 16 WHERE `entry` IN (18702,20300); -- Auchenai Necromancer
UPDATE `creature_template` SET `faction` = 16 WHERE `entry` IN (19166,21543); -- Tempest-Forge Patroller
UPDATE `creature_template` SET `faction` = 16 WHERE `entry` IN (19167,21524); -- Bloodwarder Slayer
UPDATE `creature_template` SET `faction` = 16 WHERE `entry` IN (19168,21539); -- Sunseeker Astromage
UPDATE `creature_template` SET `faction` = 1768 WHERE `entry` = 19207; -- Infernal Hound
UPDATE `creature_template` SET `faction` = 16 WHERE `entry` IN (19220,21537); -- Pathaleon the Calculator
UPDATE `creature_template` SET `faction` = 16 WHERE `entry` IN (19221,21536); -- Nethermancer Sepethrea
UPDATE `creature_template` SET `faction` = 90 WHERE `entry` IN (19231,21527); -- Mechanar Crusher
UPDATE `creature_template` SET `faction` = 1754 WHERE `entry` = 19284; -- Invading Felguard
UPDATE `creature_template` SET `faction` = 1741 WHERE `entry` = 19412; -- D'ore
UPDATE `creature_template` SET `faction` = 16 WHERE `entry` IN (19428,20688); -- Cobalt Serpent
UPDATE `creature_template` SET `faction` = 16 WHERE `entry` IN (19486,21572); -- Sunseeker Chemist
UPDATE `creature_template` SET `faction` = 16 WHERE `entry` IN (19505,21571); -- Sunseeker Channeler
UPDATE `creature_template` SET `faction` = 16 WHERE `entry` IN (19507,21573); -- Sunseeker Gene-Splicer
UPDATE `creature_template` SET `faction` = 16 WHERE `entry` IN (19508,21576); -- Sunseeker Herbalist
UPDATE `creature_template` SET `faction` = 16 WHERE `entry` IN (19509,21575); -- Sunseeker Harvester
UPDATE `creature_template` SET `faction` = 16 WHERE `entry` IN (19510,21522); -- Bloodwarder Centurion
UPDATE `creature_template` SET `faction` = 16 WHERE `entry` IN (19511,21563); -- Nethervine Inciter
UPDATE `creature_template` SET `faction` = 16 WHERE `entry` IN (19512,21564); -- Nethervine Reaper
UPDATE `creature_template` SET `faction` = 1692 WHERE `entry` IN (19513,21560); -- Mutate Fear-Shrieker
UPDATE `creature_template` SET `faction` = 14 WHERE `entry` IN (19523,20572,19524,20573); -- O'mrogg's Left Head & O'mrogg's Right Head
UPDATE `creature_template` SET `faction` = 16 WHERE `entry` IN (19557,21555); -- Greater Frayer
UPDATE `creature_template` SET `faction` = 16 WHERE `entry` IN (19598,21561); -- Mutate Fleshlasher
UPDATE `creature_template` SET `faction` = 16 WHERE `entry` IN (19608,21554); -- Frayer Wildling
UPDATE `creature_template` SET `faction` = 1711 WHERE `entry` IN (19632,20174); -- Lykul Stinger
UPDATE `creature_template` SET `faction` = 16 WHERE `entry` IN (19633,21547); -- Bloodwarder Mender
UPDATE `creature_template` SET `faction` = 90 WHERE `entry` IN (19712,21528); -- Mechanar Driller
UPDATE `creature_template` SET `faction` = 90 WHERE `entry` IN (19713,21532); -- Mechanar Wrecker
UPDATE `creature_template` SET `faction` = 90 WHERE `entry` IN (19716,21531); -- Mechanar Tinkerer
UPDATE `creature_template` SET `faction` = 16 WHERE `entry` IN (19735,21542); -- Tempest-Forge Destroyer
UPDATE `creature_template` SET `faction` = 16 WHERE `entry` IN (19843,21565); -- Nethervine Trickster
UPDATE `creature_template` SET `faction` = 35 WHERE `entry` = 19857; -- Meminnie
UPDATE `creature_template` SET `faction` = 1692 WHERE `entry` IN (19865,21562); -- Mutate Horror
UPDATE `creature_template` SET `faction` = 16 WHERE `entry` IN (20059,21541); -- Sunseeker Netherbinder
UPDATE `creature_template` SET `faction` = 120 WHERE `entry` = 20419; -- Zixil
UPDATE `creature_template` SET `faction` = 120 WHERE `entry` = 20420; -- Overwatch Mark
UPDATE `creature_template` SET `faction` = 16 WHERE `entry` = 20655; -- Maiden of Discipline (1)
UPDATE `creature_template` SET `faction` = 16 WHERE `entry` = 20695; -- Sethekk Prophet (1)
UPDATE `creature_template` SET `faction` = 16 WHERE `entry` IN (20868,21593); -- Entropic Eye
UPDATE `creature_template` SET `faction` = 16 WHERE `entry` IN (20879,21595); -- Eredar Soul-Eater
UPDATE `creature_template` SET `faction` = 16 WHERE `entry` IN (20880,21594); -- Eredar Deathbringer
UPDATE `creature_template` SET `faction` = 16 WHERE `entry` IN (20909,21616); -- Sulfuron Magma-Thrower
UPDATE `creature_template` SET `faction` = 16 WHERE `entry` IN (20923,20993); -- Blood Guard Porung
UPDATE `creature_template` SET `faction` = 16 WHERE `entry` IN (20988,21540); -- Sunseeker Engineer
UPDATE `creature_template` SET `faction` = 16 WHERE `entry` IN (20990,21523); -- Bloodwarder Physician
UPDATE `creature_template` SET `faction` = 74 WHERE `entry` IN (21126,21842); -- Coilfang Scale-Healer
UPDATE `creature_template` SET `faction` = 74 WHERE `entry` IN (21127,21843); -- Coilfang Tempest
UPDATE `creature_template` SET `faction` = 1711 WHERE `entry` IN (21128,21841); -- Coilfang Ray
UPDATE `creature_template` SET `faction` = 1814 WHERE `entry` IN (21303,21592); -- Defender Corpse
UPDATE `creature_template` SET `faction` = 1814 WHERE `entry` IN (21304,21623); -- Warder Corpse
UPDATE `creature_template` SET `faction` = 63 WHERE `entry` IN (21338,21915); -- Coilfang Leper
UPDATE `creature_template` SET `faction` = 16 WHERE `entry` = 21525; -- Gatewatcher Gyro-Kill (1)
UPDATE `creature_template` SET `faction` = 16 WHERE `entry` = 21526; -- Gatewatcher Iron-Hand (1)
UPDATE `creature_template` SET `faction` = 90 WHERE `entry` = 21533; -- Mechano-Lord Capacitus (1)
UPDATE `creature_template` SET `faction` = 90 WHERE `entry` = 21645; -- Felguard Brute (1)
UPDATE `creature_template` SET `faction` = 16 WHERE `entry` = 21646; -- Hellfire Familiar (1)
UPDATE `creature_template` SET `faction` = 16 WHERE `entry` IN (21694,21914); -- Bog Overlord
UPDATE `creature_template` SET `faction` = 16 WHERE `entry` IN (21695,21917); -- Tidal Surger
UPDATE `creature_template` SET `faction` = 16 WHERE `entry` IN (21696,21916); -- Steam Surger
UPDATE `creature_template` SET `faction` = 16 WHERE `entry` IN (21891,21989); -- Avian Ripper
UPDATE `creature_template` SET `faction` = 16 WHERE `entry` IN (21904,21990); -- Avian Warhawk
UPDATE `creature_template` SET `faction` = 7 WHERE `entry` = 22181; -- Aether Ray
UPDATE `creature_template` SET `faction` = 1194 WHERE `entry` = 22421; -- Skar'this the Heretic
UPDATE `creature_template` SET `faction` = 14 WHERE `entry` = 23035; -- Anzu
UPDATE `creature_template` SET `faction` = 16 WHERE `entry` = 23132; -- Brood of Anzu
UPDATE `creature_template` SET `faction` = 14 WHERE `entry` = 23161; -- Darkscreecher Akkarai
UPDATE `creature_template` SET `faction` = 1890 WHERE `entry` = 24240; -- Alyson Antille
UPDATE `creature_template` SET `faction` = 1890 WHERE `entry` = 24241; -- Thurg
UPDATE `creature_template` SET `faction` = 1890 WHERE `entry` = 24242; -- Slither
UPDATE `creature_template` SET `faction` = 1890 WHERE `entry` = 24243; -- Lord Raadan
UPDATE `creature_template` SET `faction` = 1890 WHERE `entry` = 24244; -- Gazakroth
UPDATE `creature_template` SET `faction` = 1890 WHERE `entry` = 24245; -- Fenstalker
UPDATE `creature_template` SET `faction` = 1890 WHERE `entry` = 24246; -- Darkheart
UPDATE `creature_template` SET `faction` = 1890 WHERE `entry` = 24247; -- Koragg
UPDATE `creature_template` SET `faction` = 16 WHERE `entry` IN (24552,25564); -- Sliver
UPDATE `creature_template` SET `faction` = 16 WHERE `entry` IN (24553,25541); -- Apoko
UPDATE `creature_template` SET `faction` = 16 WHERE `entry` IN (24555,25555); -- Garaxxas
UPDATE `creature_template` SET `faction` = 16 WHERE `entry` IN (24557,25556); -- Kagani Nightstrike
UPDATE `creature_template` SET `faction` = 16 WHERE `entry` IN (24558,25549); -- Ellrys Duskhallow
UPDATE `creature_template` SET `faction` = 1998 WHERE `entry` IN (25740,26338); -- Ahune
UPDATE `creature_template` SET `faction` = 1998 WHERE `entry` = 26339; -- Frozen Core (1)
UPDATE `creature_template` SET `faction` = 1074 WHERE `entry` = 24667; -- Sergeant Thunderhorn
UPDATE `creature_template` SET `faction` = 1078 WHERE `entry` = 24672; -- Captain Dirgehammer
UPDATE `creature_template` SET `faction` = 1890 WHERE `entry` = 24858; -- Soaring Eagle
UPDATE `creature_template` SET `faction` = 1078 WHERE `entry` = 26393; -- Captain Dirgehammer
UPDATE `creature_template` SET `faction` = 1074 WHERE `entry` = 26396; -- Sergeant Thunderhorn
UPDATE `creature_template` SET `name` = 'Redeemed Spirit of Earth' WHERE `entry` = 21739; -- Redeemed Spriit of Earth

-- Correct Factions for All Phasing Npcs in Auchenai Crypts, neutral in 2.4.3
UPDATE `creature_template` SET `faction` = 7 WHERE `entry` IN (18556,20311); -- Phasing Soldier
UPDATE `creature_template` SET `faction` = 7 WHERE `entry` IN (18557,20310); -- Phasing Cleric
UPDATE `creature_template` SET `faction` = 7 WHERE `entry` IN (18558,20312); -- Phasing Cleric
UPDATE `creature_template` SET `faction` = 7 WHERE `entry` IN (18559,20313); -- Phasing Stalker

