-- =====================================================================================================
-- Add CREATURE_EXTRA_FLAG_DUAL_WIELD_FORCED
-- =====================================================================================================
UPDATE `creature_template` SET `ExtraFlags` = `ExtraFlags`|8388608 WHERE `entry` IN (
-- Bestiary
12263, -- Slaughterhouse Protector
22377, -- Akuno
21171, -- Alandien
11022, -- Alexi Barov
18417, -- Altruis the Sufferer
15643, -- Amani Berserker
19191, -- Arazzius the Cruel
20784, -- Armbreaker Huffaz
16387, -- Atiesh
21925, -- Avatar of Sathal
502, -- Benny Blaanco
10318, -- Blackhand Assassin
7029, -- Blackrock Battlemaster
17591, -- Blood Elf Bandit
21180, -- Demon Hunter Initiate
3672, -- Boahn
4403, -- Muckshell Pincer
23222, -- Bonechewer Brawler
16772, -- Bonechewer Devastator
21245, -- Bonechewer Marauder
17264, -- Bonechewer Ravener
23028, -- Bonechewer Taskmaster
1398, -- Boss Galgosh
16936, -- Dreghood Wanderer
21232, -- Greyheart Skulker
18211, -- Murkblood Brute
17728, -- Murkblood Tribesman
18399, -- Murkblood Twin
18636, -- Cabal Assassin
18631, -- Cabal Cultist
22378, -- Cabal Interrogator
21662, -- Cabal Tomb-Raider
18830, -- Cabal Fanatic
21907, -- Cabal Initiate
10997, -- Cannon Master Willey
20442, -- Captain Bo'kar
813, -- Colonel Kurzen
22873, -- Coilskar General
5683, -- Comar Villard
19673, -- Consortium Engineer
20885, -- Dalliah the Doomsayer
5846, -- Dark Iron Taskmaster
3736, -- Darkslayer Mordenthal
18860, -- Daughter of Destiny
7057, -- Digmaster Shovelphlange
11261, -- Doctor Theolen Krastinov
19963, -- Doomcryer
9040, -- Dope'rel
22396, -- Draaca Longtail
21717, -- Dragonmaw Wrangler
17010, -- Draka
3840, -- Druid of the Fang
11469, -- Eldreth Seether
22821, -- Ethereum Avenger
23008, -- Ethereum Jailor
20474, -- Ethereum Nexus-Stalker
20456, -- Ethereum Researcher
20453, -- Ethereum Shocktrooper
4479, -- Fardel Dabyrie
17398, -- Nascent Fel Orc
20785, -- Fel Tinkerer Zortan
12100, -- Lava Reaver
7033, -- Firegut Ogre
9264, -- Firebrand Pyromancer
4329, -- Firemane Scout
5835, -- Foreman Grills
5713, -- Gasher
18298, -- Gava'xi
14425, -- Gnawbone
22143, -- Gordunni Back-Breaker
23450, -- Gordunni Proxy
9027, -- Gorosh the Dervish
20786, -- Gul'bor
20116, -- Gurn Grubnosh 
17621, -- Heathen Guard
14515, -- High Priestess Arlokk
3974, -- Houndmaster Loksey
9319, -- Houndmaster Grebmar
22917, -- Illidan Stormrage
23402, -- Illidari Battle-Mage
21808, -- Illidari Overseer
21639, -- Illidari Slayer
18170, -- Infinite Slayer
19152, -- Interrogator Khan
3983, -- Interrogator Vishas
21877, -- Karsius the Ancient Watcher
4480, -- Kenata Dabyrie
18098, -- Kialon Nightblade
21215, -- Leotheras the Blind
22004, -- Leoroxx
3669, -- Lord Cobrahn
2597, -- Lord Falconcrest
3670, -- Lord Pythas
18351, -- Lump
8407, -- Makron the Corrupt
20790, -- Malevus the Mad
14688, -- Master Sandoval
19705, -- Master Daellis Dawnstrike
17664, -- Matis the Cruel
22825, -- Matron Li-sahar
15687, -- Moroes
723, -- Mosh'Ogg Butcher
20726, -- Mugdorg
2320, -- Nagaz
21164, -- Netharel
19511, -- Nethervine Inciter
19843, -- Nethervine Trickster
20454, -- Nexus-King Salhadaar
4420, -- Overlord Ramtusk
20803, -- Overmaster Grindgarr
20435, -- Overseer Athanel
20685, -- Overseer Azarad
20783, -- Porfus the Gem Gorger
-- 15690, -- Prince Malchezaar - only phase 2
20683, -- Prophetess Cavrylin
21805, -- Protectorate Avenger
20984, -- Protectorate Defender
10824, -- Ranger Lord Hawkspear
6771, -- Ravenholdt Assassin
15084, -- Renataki
8216, -- Retherokk the Berserker
10488, -- Risen Construct
947, -- Rohh the Silent
17533, -- Romulo
16050, -- Rotfang
21315, -- Ruul the Darkener
11387, -- Sandfury Speaker
4493, -- Scarlet Avenger
15162, -- Scarlet Inquisitor
1838, -- Scarlet Interrogator
4540, -- Scarlet Monk
9258, -- Scarshield Raider
8529, -- Scourge Champion
22841, -- Shade of Akama
9236, -- Shadow Hunter Vosh'gajin
22082, -- Shadowmoon Slayer
23047, -- Shadowmoon Soldier
-- 23049, -- Shadowmoon Weapon Master - equipment related
17695, -- Shattered Hand Assassin
16878, -- Shattered Hand Berserker
16593, -- Shattered Hand Brawler
17420, -- Shattered Hand Heathen
16523, -- Shattered Hand Savage
11196, -- Shatterspear Drummer
23220, -- Shivan Assassin
23474, -- Shivan Assassin (Red)
23475, -- Shivan Assassin (Blue)
23476, -- Shivan Assassin (Black)
2600, -- Singer
16299, -- Skeletal Shocktrooper
16422, -- Skeletal Soldier
1785, -- Skeletal Terror
10478, -- Splintered Skeleton
21985, -- Skettis Eviscerator
21652, -- Skettis Time-Shifter
22199, -- Slaag
4714, -- Slitherblade Myrmidon
16424, -- Spectral Sentry
23411, -- Spirit of Olum
23410, -- Spirit of Udalo
20409, -- Kirin'Var Apprentice
315, -- Stalvan Mistmantle
21503, -- Sunfury Warlock
17610, -- Sunhawk Agent
17607, -- Sunhawk Defender
17826, -- Swamplord Musel'ek
2589, -- Syndicate Mercenary
5932, -- Taskmaster Whipfang
21838, -- Terokk
21168, -- Theras
61, -- Thuros Lightfingers
22076, -- Torloth the Magnificent
11467, -- Tsu'zee
11880, -- Twilight Avenger
18541, -- Urdak
21178, -- Varedis
5399, -- Veyzhak the Cannibal
18679, -- Vorakem Doomspeaker
9237, -- War Master Voone
19263, -- Warboss Nekrogg
19298, -- Warbringer Arix'Amal
16808, -- Warchief Kargath Bladefist
18440, -- Warmaul Chef Bufferlo
19641, -- Warp-Raider Nesaad
11452, -- Wildspawn Rogue
2554, -- Witherbark Axe Thrower
2558, -- Witherbark Berserker
8218, -- Witherheart the Stalker
20929, -- Wrath Lord
19740, -- Wrathwalker
2605, -- Zalas Witherbark
23355, -- Zarcsin
11348, -- Zealot Zath
12262, -- Ziggurat Protector

-- =======================
-- ACID "Dual Wield" Aura
580, -- Redridge Drudger					// Bestiary confirmed
1561, -- Bloodsail Raider
4666, -- Burning Blade Felsworn
23332, -- Bash'ir Reckoner					// Bestiary confirmed
23390, -- Bash'ir's Harbinger
23414, -- Bash'ir Inquisitor					// Bestiary confirmed
9583, -- Bloodaxe Veteran					// Bestiary confirmed
12236, -- Lord Vyletongue					// Bestiary confirmed
10391, -- Skeletal Berserker					// Bestiary confirmed
11043, -- Crimson Monk
639, -- Edwin VanCleef
1696, -- Targorr the Dread					// Bestiary confirmed
1711, -- Defias Convict					// Bestiary confirmed
1716, -- Bazil Thredd					// Bestiary confirmed
7605, -- Raven					// Bestiary confirmed
22869, -- Illidari Boneslicer					// Bestiary confirmed
20031, -- Bloodwarder Legionnaire
20035, -- Bloodwarder Marshal
14882, -- Atal'ai Mistress

-- =======================
-- ScriptDev
24882 -- Brutallus
);


-- =====================================================================================================
-- Add CREATURE_EXTRA_FLAG_HASTE_SPELL_IMMUNITY
-- =====================================================================================================
UPDATE `creature_template` SET `ExtraFlags`=`ExtraFlags`|4194304 WHERE `entry` = 19191; -- Arazzius the Cruel

