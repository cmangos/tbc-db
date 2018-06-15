-- =====================
-- ADD MISSING MECHANICS
-- =====================

-- CHARM [44 spells] (Mind Control, Enslave Demon, Dominate Mind, Seduction, etc.)
UPDATE creature_template SET MechanicImmuneMask=MechanicImmuneMask|1 WHERE entry IN (
18836, -- Blindeye the Seer
21350, -- Gronn-Priest
19044, -- Gruul the Dragonkiller
18831, -- High King Maulgar
18835, -- Kiggler the Crazed
18832, -- Krosh Firehand
19389, -- Lair Brute
18834, -- Olm the Summoner

17454, -- Burning Abyssal
17256, -- Hellfire Channeler
18829, -- Hellfire Warder
17257, -- Magtheridon

21865, -- Coilfang Ambusher
21221, -- Coilfang Beast-Tamer
22055, -- Coilfang Elite
21299, -- Coilfang Fathom-Witch
21873, -- Coilfang Guardian
21339, -- Coilfang Hate-Screamer
21298, -- Coilfang Serpentguard
21301, -- Coilfang Shatterer
21214, -- Fathom-Lord Karathress
21964, -- Fathom-Guard Caribdis
21966, -- Fathom-Guard Sharkkis
21965, -- Fathom-Guard Tidalvess
21230, -- Greyheart Nether-Mage
21231, -- Greyheart Shield-Bearer
21232, -- Greyheart Skulker
21806, -- Greyheart Spellbinder
21263, -- Greyheart Technician
21229, -- Greyheart Tidecaller
21212, -- Lady Vashj
21215, -- Leotheras the Blind
21875, -- Shadow of Leotheras
21224, -- Tidewalker Depth-Seer
21227, -- Tidewalker Harpooner
21228, -- Tidewalker Hydromancer
21226, -- Tidewalker Shaman
21225, -- Tidewalker Warrior
21218, -- Vashj'ir Honor Guard

20043, -- Apprentice Star Scryer
20033, -- Astromancer
20046, -- Astromancer Lord
20031, -- Bloodwarder Legionnaire
20035, -- Bloodwarder Marshal
20036, -- Bloodwarder Squire
20032, -- Bloodwarder Vindicator
20047, -- Crimson Hand Battle Mage
20049, -- Crimson Hand Blood Knight
20048, -- Crimson Hand Centurion
20050, -- Crimson Hand Inquisitor
20052, -- Crystalcore Mechanic
20062, -- Grand Astromancer Capernian
18805, -- High Astromancer Solarian
19622, -- Kael'thas Sunstrider
20060, -- Lord Sanguinar
20063, -- Master Engineer Telonicus
20045, -- Nether Scryer
20044, -- Novice Astromancer
18806, -- Solarium Priest
20034, -- Star Scryer
20037, -- Tempest Falconer
20064, -- Thaladred the Darkener

22844, -- Ashtongue Battlelord
23421, -- Ashtongue Channeler
23216, -- Ashtongue Defender
23523, -- Ashtongue Elementalist
22845, -- Ashtongue Mystic
22847, -- Ashtongue Primalist
23318, -- Ashtongue Rogue
23215, -- Ashtongue Sorcerer
23524, -- Ashtongue Spiritbinder
23374, -- Ashtongue Stalker
22846, -- Ashtongue Stormcaller
23196, -- Bonechewer Behemoth
23235, -- Bonechewer Blade Fury
23237, -- Bonechewer Blood Prophet
23222, -- Bonechewer Brawler
23239, -- Bonechewer Combatant
23236, -- Bonechewer Shield Disciple
23223, -- Bonechewer Spectator
23028, -- Bonechewer Taskmaster
22963, -- Bonechewer Worker
22955, -- Charming Courtesan
22873, -- Coilskar General
22874, -- Coilskar Harpooner
22875, -- Coilskar Sea-Caller
22876, -- Coilskar Soothsayer
22877, -- Coilskar Wrangler
23030, -- Dragonmaw Sky Stalker
23330, -- Dragonmaw Wind Reaver
22960, -- Dragonmaw Wyrmcaller
22965, -- Enslaved Servant
22997, -- Flame of Azzinoth
22949, -- Gathios the Shatterer
22948, -- Gurtogg Bloodboil
23172, -- Hand of Gorefiend
22950, -- High Nethermancer Zerevor
22887, -- High Warlord Naj'entus
22917, -- Illidan Stormrage
23400, -- Illidari Archon
23403, -- Illidari Assassin
23402, -- Illidari Battle-mage
23397, -- Illidari Blood Lord
22869, -- Illidari Boneslicer
23337, -- Illidari Centurion
22853, -- Illidari Defiler
22954, -- Illidari Fearbringer
23339, -- Illidari Heartseeker
22855, -- Illidari Nightlord
22951, -- Lady Malande
22947, -- Mother Shahraz
22962, -- Priestess of Delight
22957, -- Priestess of Dementia
23375, -- Shadow Demon
22841, -- Shade of Akama
22945, -- Shadowmoon Blood Mage
22880, -- Shadowmoon Champion
22882, -- Shadowmoon Deathshaper
23147, -- Shadowmoon Grunt
23018, -- Shadowmoon Houndmaster
22879, -- Shadowmoon Reaver
23047, -- Shadowmoon Soldier
23049, -- Shadowmoon Weapon Master
22956, -- Sister of Pain
22964, -- Sister of Pleasure
22898, -- Supremus
22959, -- Spellbound Attendant
22939, -- Temple Concubine
22952, -- Veras Darkshadow 

25593, -- Apocalypse Guard
24882, -- Brutallus
25599, -- Cataclysm Hound
25595, -- Chaos Gazer
25592, -- Doomfire Destroyer
25948, -- Doomfire Shard
25840, -- Entropius
25166, -- Grand Warlock Alythess
25588, -- Hand of the Deceiver
25315, -- Kil'jaeden
25165, -- Lady Sacrolash
25597, -- Oblivion Mage
25591, -- Painbringer
25509, -- Priestess of Torment
24892, -- Sathrovarr the Corruptor
25484, -- Shadowsword Assassin
25798, -- Shadowsword Berserker
25837, -- Shadowsword Commander
25485, -- Shadowsword Deathbringer
25799, -- Shadowsword Fury Mage
25506, -- Shadowsword Lifeshaper
25483, -- Shadowsword Manafiend
25373, -- Shadowsword Soulbinder
25486, -- Shadowsword Vanquisher
25708, -- Sinister Reflection
25367, -- Sunblade Arch Mage
25363, -- Sunblade Cabalist
25371, -- Sunblade Dawn Priest
25370, -- Sunblade Dusk Priest
25372, -- Sunblade Scout
25368, -- Sunblade Slayer
25369, -- Sunblade Vindicator
25772, -- Void Sentinel
25598, -- Volatile Felfire Fiend
25851 -- Volatile Fiend
);

-- CONFUSED/DISORIENTED [3 spells] (Blind)
UPDATE creature_template SET MechanicImmuneMask=MechanicImmuneMask|2 WHERE entry IN (
18836, -- Blindeye the Seer
21350, -- Gronn-Priest
19044, -- Gruul the Dragonkiller
18831, -- High King Maulgar
18835, -- Kiggler the Crazed
18832, -- Krosh Firehand
19389, -- Lair Brute
18834, -- Olm the Summoner

17256, -- Hellfire Channeler
18829, -- Hellfire Warder
17257, -- Magtheridon

21221, -- Coilfang Beast-Tamer
22055, -- Coilfang Elite
21299, -- Coilfang Fathom-Witch
21339, -- Coilfang Hate-Screamer
21298, -- Coilfang Serpentguard
21301, -- Coilfang Shatterer
22056, -- Coilfang Strider
22347, -- Colossus Lurker
22352, -- Colossus Rager
21958, -- Enchanted Elemental
22119, -- Fathom Lurker
22120, -- Fathom Sporebat
21214, -- Fathom-Lord Karathress
21964, -- Fathom-Guard Caribdis
21966, -- Fathom-Guard Sharkkis
21965, -- Fathom-Guard Tidalvess
21806, -- Greyheart Spellbinder
21216, -- Hydross the Unstable
21212, -- Lady Vashj
21215, -- Leotheras the Blind
21213, -- Morogrim Tidewalker
22250, -- Rancid Mushroom
21875, -- Shadow of Leotheras
22009, -- Tainted Elemental
21217, -- The Lurker Below
21224, -- Tidewalker Depth-Seer
21227, -- Tidewalker Harpooner
21228, -- Tidewalker Hydromancer
21226, -- Tidewalker Shaman
21251, -- Underbog Colossus
21218, -- Vashj'ir Honor Guard

19514, -- Al'ar
20046, -- Astromancer Lord
20035, -- Bloodwarder Marshal
20036, -- Bloodwarder Squire
20032, -- Bloodwarder Vindicator
21270, -- Cosmic Infuser
20049, -- Crimson Hand Blood Knight
20040, -- Crystalcore Devastator
20052, -- Crystalcore Mechanic
20041, -- Crystalcore Sentinel
21269, -- Devastation
19551, -- Ember of Al'ar
20062, -- Grand Astromancer Capernian
18805, -- High Astromancer Solarian
21271, -- Infinity Blades
19622, -- Kael'thas Sunstrider
20060, -- Lord Sanguinar
20063, -- Master Engineer Telonicus
20045, -- Nether Scryer
21268, -- Netherstrand Longbow
21273, -- Phaseshift Bulwark
21362, -- Phoenix
20039, -- Phoenix-Hawk
18806, -- Solarium Priest
21274, -- Staff of Disintegration
20037, -- Tempest Falconer
20064, -- Thaladred the Darkener
19516, -- Void Reaver
21272, -- Warp Slicer

23398, -- Angered Soul Fragment
22878, -- Aqueous Lord
22844, -- Ashtongue Battlelord
23421, -- Ashtongue Channeler
23216, -- Ashtongue Defender
22847, -- Ashtongue Primalist
23215, -- Ashtongue Sorcerer
23196, -- Bonechewer Behemoth
23222, -- Bonechewer Brawler
23239, -- Bonechewer Combatant
23028, -- Bonechewer Taskmaster
22955, -- Charming Courtesan
22873, -- Coilskar General
22877, -- Coilskar Wrangler
23030, -- Dragonmaw Sky Stalker
23330, -- Dragonmaw Wind Reaver
22960, -- Dragonmaw Wyrmcaller
22965, -- Enslaved Servant
23420, -- Essence of Anger
23419, -- Essence of Desire
23418, -- Essence of Suffering
22997, -- Flame of Azzinoth
22949, -- Gathios the Shatterer
22948, -- Gurtogg Bloodboil
23172, -- Hand of Gorefiend
22950, -- High Nethermancer Zerevor
22887, -- High Warlord Naj'entus
22917, -- Illidan Stormrage
23397, -- Illidari Blood Lord
23337, -- Illidari Centurion
22954, -- Illidari Fearbringer
22855, -- Illidari Nightlord
23436, -- Image of Dementia
22951, -- Lady Malande
22884, -- Leviathan
22947, -- Mother Shahraz
22962, -- Priestess of Delight
22957, -- Priestess of Dementia
23394, -- Promenade Sentinel
23375, -- Shadow Demon
22841, -- Shade of Akama
22880, -- Shadowmoon Champion
23018, -- Shadowmoon Houndmaster
23049, -- Shadowmoon Weapon Master
22956, -- Sister of Pain
22964, -- Sister of Pleasure
22898, -- Supremus
22959, -- Spellbound Attendant
23399, -- Suffering Soul Fragment
22939, -- Temple Concubine
22871, -- Teron Gorefiend
22952, -- Veras Darkshadow
22953, -- Wrathbone Flayer

25593, -- Apocalypse Guard
24882, -- Brutallus
25599, -- Cataclysm Hound
25595, -- Chaos Gazer
25592, -- Doomfire Destroyer
25948, -- Doomfire Shard
25840, -- Entropius
25038, -- Felmyst
25166, -- Grand Warlock Alythess
25588, -- Hand of the Deceiver
24850, -- Kalecgos
25315, -- Kil'jaeden
25165, -- Lady Sacrolash
25741, -- M'uru
25591, -- Painbringer
25509, -- Priestess of Torment
24892, -- Sathrovarr the Corruptor
25837, -- Shadowsword Commander
25508, -- Shadowsword Guardian
25373, -- Shadowsword Soulbinder
25502, -- Shield Orb
25708, -- Sinister Reflection
25507, -- Sunblade Protector
25372, -- Sunblade Scout
25772, -- Void Sentinel
25598, -- Volatile Felfire Fiend
25851 -- Volatile Fiend
);

-- DISTRACT [5 spells]
UPDATE creature_template SET MechanicImmuneMask=MechanicImmuneMask|8 WHERE entry IN (
20040, -- Crystalcore Devastator
20041, -- Crystalcore Sentinel
19516, -- Void Reaver

23394, -- Promenade Sentinel

25507, -- Sunblade Protector
25372 -- Sunblade Scout
);


-- FEAR [100 spells] (Scare Beast, Fear, Psychic Scream, Howl of Terror, etc.)
UPDATE creature_template SET MechanicImmuneMask=MechanicImmuneMask|16 WHERE entry IN (
18836, -- Blindeye the Seer
21350, -- Gronn-Priest
19044, -- Gruul the Dragonkiller
18831, -- High King Maulgar
18835, -- Kiggler the Crazed
18832, -- Krosh Firehand
19389, -- Lair Brute
18834, -- Olm the Summoner
18847, -- Wild Fel Stalker

17256, -- Hellfire Channeler
18829, -- Hellfire Warder
17257, -- Magtheridon

21221, -- Coilfang Beast-Tamer
22055, -- Coilfang Elite
21299, -- Coilfang Fathom-Witch
21339, -- Coilfang Hate-Screamer
21298, -- Coilfang Serpentguard
21301, -- Coilfang Shatterer
22056, -- Coilfang Strider
22347, -- Colossus Lurker
22352, -- Colossus Rager
21958, -- Enchanted Elemental
22119, -- Fathom Lurker
22120, -- Fathom Sporebat
21214, -- Fathom-Lord Karathress
21964, -- Fathom-Guard Caribdis
21966, -- Fathom-Guard Sharkkis
21965, -- Fathom-Guard Tidalvess
21806, -- Greyheart Spellbinder
21216, -- Hydross the Unstable
21212, -- Lady Vashj
21215, -- Leotheras the Blind
21213, -- Morogrim Tidewalker
22250, -- Rancid Mushroom
21863, -- Serpentshrine Lurker
21875, -- Shadow of Leotheras
22009, -- Tainted Elemental
21217, -- The Lurker Below
21224, -- Tidewalker Depth-Seer
21227, -- Tidewalker Harpooner
21228, -- Tidewalker Hydromancer
21226, -- Tidewalker Shaman
21251, -- Underbog Colossus
21218, -- Vashj'ir Honor Guard

19514, -- Al'ar
20046, -- Astromancer Lord
20035, -- Bloodwarder Marshal
20036, -- Bloodwarder Squire
20032, -- Bloodwarder Vindicator
21270, -- Cosmic Infuser
20049, -- Crimson Hand Blood Knight
20040, -- Crystalcore Devastator
20052, -- Crystalcore Mechanic
20041, -- Crystalcore Sentinel
21269, -- Devastation
19551, -- Ember of Al'ar
20062, -- Grand Astromancer Capernian
18805, -- High Astromancer Solarian
21271, -- Infinity Blades
19622, -- Kael'thas Sunstrider
20060, -- Lord Sanguinar
20063, -- Master Engineer Telonicus
20045, -- Nether Scryer
21268, -- Netherstrand Longbow
21273, -- Phaseshift Bulwark
21362, -- Phoenix
20039, -- Phoenix-Hawk
18806, -- Solarium Priest
21274, -- Staff of Disintegration
20037, -- Tempest Falconer
20064, -- Thaladred the Darkener
19516, -- Void Reaver
21272, -- Warp Slicer

23398, -- Angered Soul Fragment
22878, -- Aqueous Lord
22844, -- Ashtongue Battlelord
23421, -- Ashtongue Channeler
23216, -- Ashtongue Defender
22847, -- Ashtongue Primalist
23215, -- Ashtongue Sorcerer
23196, -- Bonechewer Behemoth
23235, -- Bonechewer Blade Fury
23222, -- Bonechewer Brawler
23239, -- Bonechewer Combatant
23028, -- Bonechewer Taskmaster
22955, -- Charming Courtesan
22873, -- Coilskar General
22877, -- Coilskar Wrangler
23030, -- Dragonmaw Sky Stalker
23330, -- Dragonmaw Wind Reaver
22960, -- Dragonmaw Wyrmcaller
22965, -- Enslaved Servant
23420, -- Essence of Anger
23419, -- Essence of Desire
23418, -- Essence of Suffering
22997, -- Flame of Azzinoth
22949, -- Gathios the Shatterer
22948, -- Gurtogg Bloodboil
23172, -- Hand of Gorefiend
22950, -- High Nethermancer Zerevor
22887, -- High Warlord Naj'entus
23401, -- Hungering Soul Fragment
22917, -- Illidan Stormrage
23397, -- Illidari Blood Lord
23337, -- Illidari Centurion
22954, -- Illidari Fearbringer
22855, -- Illidari Nightlord
23436, -- Image of Dementia
22951, -- Lady Malande
22884, -- Leviathan
22947, -- Mother Shahraz
23498, -- Parasitic Shadowfiend
22962, -- Priestess of Delight
22957, -- Priestess of Dementia
23394, -- Promenade Sentinel
23375, -- Shadow Demon
22841, -- Shade of Akama
22880, -- Shadowmoon Champion
23371, -- Shadowmoon Fallen
23018, -- Shadowmoon Houndmaster
23049, -- Shadowmoon Weapon Master
22956, -- Sister of Pain
22964, -- Sister of Pleasure
22898, -- Supremus
22959, -- Spellbound Attendant
23399, -- Suffering Soul Fragment
22939, -- Temple Concubine
22871, -- Teron Gorefiend
22952, -- Veras Darkshadow
22953, -- Wrathbone Flayer

25593, -- Apocalypse Guard
24882, -- Brutallus
25599, -- Cataclysm Hound
25595, -- Chaos Gazer
25592, -- Doomfire Destroyer
25948, -- Doomfire Shard
25840, -- Entropius
25038, -- Felmyst
25166, -- Grand Warlock Alythess
25588, -- Hand of the Deceiver
24850, -- Kalecgos
25315, -- Kil'jaeden
25165, -- Lady Sacrolash
25741, -- M'uru
25597, -- Oblivion Mage
25591, -- Painbringer
25509, -- Priestess of Torment
24892, -- Sathrovarr the Corruptor
25837, -- Shadowsword Commander
25508, -- Shadowsword Guardian
25373, -- Shadowsword Soulbinder
25502, -- Shield Orb
25708, -- Sinister Reflection
25507, -- Sunblade Protector
25372, -- Sunblade Scout
25268, -- Unyielding Dead
25772, -- Void Sentinel
25598, -- Volatile Felfire Fiend
25851 -- Volatile Fiend
);

-- ROOT [126 spells] (Entangling Roots, Frost Nova, Improved Wing Clip, various Net abilities)
UPDATE creature_template SET MechanicImmuneMask=MechanicImmuneMask|64 WHERE entry IN (
18836, -- Blindeye the Seer
21350, -- Gronn-Priest
19044, -- Gruul the Dragonkiller
18831, -- High King Maulgar
18835, -- Kiggler the Crazed
18832, -- Krosh Firehand
19389, -- Lair Brute
18834, -- Olm the Summoner

17256, -- Hellfire Channeler
18829, -- Hellfire Warder
17257, -- Magtheridon

21221, -- Coilfang Beast-Tamer
22055, -- Coilfang Elite
21299, -- Coilfang Fathom-Witch
21339, -- Coilfang Hate-Screamer
21220, -- Coilfang Priestess
21298, -- Coilfang Serpentguard
21301, -- Coilfang Shatterer
22347, -- Colossus Lurker
22352, -- Colossus Rager
22119, -- Fathom Lurker
22120, -- Fathom Sporebat
21214, -- Fathom-Lord Karathress
21964, -- Fathom-Guard Caribdis
21966, -- Fathom-Guard Sharkkis
21965, -- Fathom-Guard Tidalvess
21806, -- Greyheart Spellbinder
21216, -- Hydross the Unstable
21212, -- Lady Vashj
21215, -- Leotheras the Blind
21213, -- Morogrim Tidewalker
22250, -- Rancid Mushroom
21863, -- Serpentshrine Lurker
21875, -- Shadow of Leotheras
21217, -- The Lurker Below
21224, -- Tidewalker Depth-Seer
21227, -- Tidewalker Harpooner
21228, -- Tidewalker Hydromancer
21226, -- Tidewalker Shaman
21251, -- Underbog Colossus
21218, -- Vashj'ir Honor Guard

19514, -- Al'ar
20046, -- Astromancer Lord
20035, -- Bloodwarder Marshal
20036, -- Bloodwarder Squire
20032, -- Bloodwarder Vindicator
20049, -- Crimson Hand Blood Knight
20040, -- Crystalcore Devastator
20052, -- Crystalcore Mechanic
20041, -- Crystalcore Sentinel
19551, -- Ember of Al'ar
20062, -- Grand Astromancer Capernian
18805, -- High Astromancer Solarian
19622, -- Kael'thas Sunstrider
20060, -- Lord Sanguinar
20063, -- Master Engineer Telonicus
20045, -- Nether Scryer
21362, -- Phoenix
20039, -- Phoenix-Hawk
18806, -- Solarium Priest
20037, -- Tempest Falconer
20064, -- Thaladred the Darkener
19516, -- Void Reaver

23398, -- Angered Soul Fragment
22878, -- Aqueous Lord
22844, -- Ashtongue Battlelord
23421, -- Ashtongue Channeler
23216, -- Ashtongue Defender
22847, -- Ashtongue Primalist
23215, -- Ashtongue Sorcerer
23196, -- Bonechewer Behemoth
23222, -- Bonechewer Brawler
23239, -- Bonechewer Combatant
23028, -- Bonechewer Taskmaster
22955, -- Charming Courtesan
22873, -- Coilskar General
22877, -- Coilskar Wrangler
23030, -- Dragonmaw Sky Stalker
23330, -- Dragonmaw Wind Reaver
22960, -- Dragonmaw Wyrmcaller
22965, -- Enslaved Servant
23420, -- Essence of Anger
23419, -- Essence of Desire
23418, -- Essence of Suffering
22997, -- Flame of Azzinoth
22949, -- Gathios the Shatterer
22948, -- Gurtogg Bloodboil
23172, -- Hand of Gorefiend
22950, -- High Nethermancer Zerevor
22887, -- High Warlord Naj'entus
22917, -- Illidan Stormrage
23397, -- Illidari Blood Lord
23337, -- Illidari Centurion
22954, -- Illidari Fearbringer
22855, -- Illidari Nightlord
23436, -- Image of Dementia
22951, -- Lady Malande
22884, -- Leviathan
22947, -- Mother Shahraz
22962, -- Priestess of Delight
22957, -- Priestess of Dementia
23394, -- Promenade Sentinel
23375, -- Shadow Demon
22841, -- Shade of Akama
22880, -- Shadowmoon Champion
23018, -- Shadowmoon Houndmaster
23049, -- Shadowmoon Weapon Master
22956, -- Sister of Pain
22964, -- Sister of Pleasure
22898, -- Supremus
22959, -- Spellbound Attendant
23399, -- Suffering Soul Fragment
22939, -- Temple Concubine
22871, -- Teron Gorefiend
22952, -- Veras Darkshadow
22953, -- Wrathbone Flayer

25593, -- Apocalypse Guard
24882, -- Brutallus
25599, -- Cataclysm Hound
25595, -- Chaos Gazer
25592, -- Doomfire Destroyer
25840, -- Entropius
25038, -- Felmyst
25166, -- Grand Warlock Alythess
25588, -- Hand of the Deceiver
24850, -- Kalecgos
25315, -- Kil'jaeden
25165, -- Lady Sacrolash
25741, -- M'uru
24892, -- Sathrovarr the Corruptor
25837, -- Shadowsword Commander
25508, -- Shadowsword Guardian
25373, -- Shadowsword Soulbinder
25502, -- Shield Orb
25708, -- Sinister Reflection
25507, -- Sunblade Protector
25372 -- Sunblade Scout
);

-- SILENCE [55 spells] (Kick - Silenced, Counterspell - Silenced, Shield Bash - Silenced, Arcane Torrent, Spell Lock)
UPDATE creature_template SET MechanicImmuneMask=MechanicImmuneMask|256 WHERE entry IN (
21350, -- Gronn-Priest
19044, -- Gruul the Dragonkiller
18831, -- High King Maulgar
18835, -- Kiggler the Crazed
18832, -- Krosh Firehand
19389, -- Lair Brute
18834, -- Olm the Summoner

17256, -- Hellfire Channeler
18829, -- Hellfire Warder
17257, -- Magtheridon

21221, -- Coilfang Beast-Tamer
22055, -- Coilfang Elite
21299, -- Coilfang Fathom-Witch
21339, -- Coilfang Hate-Screamer
21298, -- Coilfang Serpentguard
21301, -- Coilfang Shatterer
22347, -- Colossus Lurker
21958, -- Enchanted Elemental
22119, -- Fathom Lurker
22120, -- Fathom Sporebat
21214, -- Fathom-Lord Karathress
21964, -- Fathom-Guard Caribdis
21966, -- Fathom-Guard Sharkkis
21965, -- Fathom-Guard Tidalvess
21230, -- Greyheart Nether-Mage
21231, -- Greyheart Shield-Bearer
21232, -- Greyheart Skulker
21806, -- Greyheart Spellbinder
21229, -- Greyheart Tidecaller
21216, -- Hydross the Unstable
21212, -- Lady Vashj
21215, -- Leotheras the Blind
21213, -- Morogrim Tidewalker
22250, -- Rancid Mushroom
21863, -- Serpentshrine Lurker
21875, -- Shadow of Leotheras
22009, -- Tainted Elemental
21217, -- The Lurker Below
21224, -- Tidewalker Depth-Seer
21227, -- Tidewalker Harpooner
21226, -- Tidewalker Shaman
21225, -- Tidewalker Warrior
21251, -- Underbog Colossus
21218, -- Vashj'ir Honor Guard

19514, -- Al'ar
20043, -- Apprentice Star Scryer
20033, -- Astromancer
20046, -- Astromancer Lord
20031, -- Bloodwarder Legionnaire
20035, -- Bloodwarder Marshal
20036, -- Bloodwarder Squire
20032, -- Bloodwarder Vindicator
20047, -- Crimson Hand Battle Mage
20049, -- Crimson Hand Blood Knight
20048, -- Crimson Hand Centurion
20050, -- Crimson Hand Inquisitor
20040, -- Crystalcore Devastator
20052, -- Crystalcore Mechanic
20041, -- Crystalcore Sentinel
19551, -- Ember of Al'ar
20062, -- Grand Astromancer Capernian
18805, -- High Astromancer Solarian
19622, -- Kael'thas Sunstrider
20060, -- Lord Sanguinar
20063, -- Master Engineer Telonicus
20045, -- Nether Scryer
20044, -- Novice Astromancer
21362, -- Phoenix
20039, -- Phoenix-Hawk
20038, -- Phoenix-Hawk Hatchling
20034, -- Star Scryer
20037, -- Tempest Falconer
20064, -- Thaladred the Darkener
19516, -- Void Reaver

23398, -- Angered Soul Fragment
22878, -- Aqueous Lord
22844, -- Ashtongue Battlelord
23421, -- Ashtongue Channeler
23216, -- Ashtongue Defender
23523, -- Ashtongue Elementalist
22849, -- Ashtongue Feral Spirit
22845, -- Ashtongue Mystic
22847, -- Ashtongue Primalist
23318, -- Ashtongue Rogue
23215, -- Ashtongue Sorcerer
23524, -- Ashtongue Spiritbinder
23374, -- Ashtongue Stalker
22846, -- Ashtongue Stormcaller
23196, -- Bonechewer Behemoth
23235, -- Bonechewer Blade Fury
23237, -- Bonechewer Blood Prophet
23222, -- Bonechewer Brawler
23239, -- Bonechewer Combatant
23236, -- Bonechewer Shield Disciple
23223, -- Bonechewer Spectator
23028, -- Bonechewer Taskmaster
22963, -- Bonechewer Worker
22955, -- Charming Courtesan
22873, -- Coilskar General
22874, -- Coilskar Harpooner
22875, -- Coilskar Sea-Caller
22876, -- Coilskar Soothsayer
22877, -- Coilskar Wrangler
22885, -- Dragon Turtle
23030, -- Dragonmaw Sky Stalker
23330, -- Dragonmaw Wind Reaver
22960, -- Dragonmaw Wyrmcaller
22965, -- Enslaved Servant
23420, -- Essence of Anger
23419, -- Essence of Desire
23418, -- Essence of Suffering
22997, -- Flame of Azzinoth
22949, -- Gathios the Shatterer
22948, -- Gurtogg Bloodboil
23172, -- Hand of Gorefiend
22950, -- High Nethermancer Zerevor
22887, -- High Warlord Naj'entus
22917, -- Illidan Stormrage
23400, -- Illidari Archon
23403, -- Illidari Assassin
23402, -- Illidari Battle-mage
23397, -- Illidari Blood Lord
22869, -- Illidari Boneslicer
23337, -- Illidari Centurion
22853, -- Illidari Defiler
22954, -- Illidari Fearbringer
23339, -- Illidari Heartseeker
22855, -- Illidari Nightlord
23436, -- Image of Dementia
22951, -- Lady Malande
22884, -- Leviathan
22947, -- Mother Shahraz
22962, -- Priestess of Delight
22957, -- Priestess of Dementia
23394, -- Promenade Sentinel
23375, -- Shadow Demon
22841, -- Shade of Akama
22945, -- Shadowmoon Blood Mage
22880, -- Shadowmoon Champion
22882, -- Shadowmoon Deathshaper
23147, -- Shadowmoon Grunt
23018, -- Shadowmoon Houndmaster
22879, -- Shadowmoon Reaver
23083, -- Shadowmoon Riding Hound
23047, -- Shadowmoon Soldier
23049, -- Shadowmoon Weapon Master
22956, -- Sister of Pain
22964, -- Sister of Pleasure
22898, -- Supremus
22959, -- Spellbound Attendant
23399, -- Suffering Soul Fragment
22939, -- Temple Concubine
22871, -- Teron Gorefiend
22952, -- Veras Darkshadow
22953, -- Wrathbone Flayer

25593, -- Apocalypse Guard
24882, -- Brutallus
25599, -- Cataclysm Hound
25595, -- Chaos Gazer
25592, -- Doomfire Destroyer
25840, -- Entropius
25038, -- Felmyst
25166, -- Grand Warlock Alythess
24850, -- Kalecgos
25315, -- Kil'jaeden
25165, -- Lady Sacrolash
25741, -- M'uru
25591, -- Painbringer
25509, -- Priestess of Torment
24892, -- Sathrovarr the Corruptor
25484, -- Shadowsword Assassin
25837, -- Shadowsword Commander
25485, -- Shadowsword Deathbringer
25508, -- Shadowsword Guardian
25506, -- Shadowsword Lifeshaper
25483, -- Shadowsword Manafiend
25373, -- Shadowsword Soulbinder
25486, -- Shadowsword Vanquisher
25502, -- Shield Orb
25708, -- Sinister Reflection
25367, -- Sunblade Arch Mage
25363, -- Sunblade Cabalist
25371, -- Sunblade Dawn Priest
25370, -- Sunblade Dusk Priest
25507, -- Sunblade Protector
25372, -- Sunblade Scout
25368, -- Sunblade Slayer
25369, -- Sunblade Vindicator
25772, -- Void Sentinel
25598, -- Volatile Felfire Fiend
25851 -- Volatile Fiend
);

-- SLEEP [40 spells] (Hibernate, Wyvern Sting, Sleep)
UPDATE creature_template SET MechanicImmuneMask=MechanicImmuneMask|512 WHERE entry IN (
18836, -- Blindeye the Seer
21350, -- Gronn-Priest
19044, -- Gruul the Dragonkiller
18831, -- High King Maulgar
18835, -- Kiggler the Crazed
18832, -- Krosh Firehand
19389, -- Lair Brute
18834, -- Olm the Summoner

17256, -- Hellfire Channeler
18829, -- Hellfire Warder
17257, -- Magtheridon

21221, -- Coilfang Beast-Tamer
22055, -- Coilfang Elite
21299, -- Coilfang Fathom-Witch
21339, -- Coilfang Hate-Screamer
21298, -- Coilfang Serpentguard
21301, -- Coilfang Shatterer
22056, -- Coilfang Strider
22347, -- Colossus Lurker
22352, -- Colossus Rager
21958, -- Enchanted Elemental
22119, -- Fathom Lurker
22120, -- Fathom Sporebat
21214, -- Fathom-Lord Karathress
21964, -- Fathom-Guard Caribdis
21966, -- Fathom-Guard Sharkkis
21965, -- Fathom-Guard Tidalvess
21806, -- Greyheart Spellbinder
21216, -- Hydross the Unstable
21212, -- Lady Vashj
21215, -- Leotheras the Blind
21213, -- Morogrim Tidewalker
22035, -- Pure Spawn of Hydross
22250, -- Rancid Mushroom
22238, -- Serpentshrine Tidecaller
21875, -- Shadow of Leotheras
22009, -- Tainted Elemental
21217, -- The Lurker Below
21224, -- Tidewalker Depth-Seer
21227, -- Tidewalker Harpooner
21228, -- Tidewalker Hydromancer
21226, -- Tidewalker Shaman
21251, -- Underbog Colossus
21218, -- Vashj'ir Honor Guard

19514, -- Al'ar
20046, -- Astromancer Lord
20035, -- Bloodwarder Marshal
20036, -- Bloodwarder Squire
20032, -- Bloodwarder Vindicator
21270, -- Cosmic Infuser
20049, -- Crimson Hand Blood Knight
20040, -- Crystalcore Devastator
20052, -- Crystalcore Mechanic
20041, -- Crystalcore Sentinel
21269, -- Devastation
19551, -- Ember of Al'ar
20062, -- Grand Astromancer Capernian
18805, -- High Astromancer Solarian
21271, -- Infinity Blades
19622, -- Kael'thas Sunstrider
20060, -- Lord Sanguinar
20063, -- Master Engineer Telonicus
20045, -- Nether Scryer
21268, -- Netherstrand Longbow
21273, -- Phaseshift Bulwark
21362, -- Phoenix
20039, -- Phoenix-Hawk
18806, -- Solarium Priest
21274, -- Staff of Disintegration
20037, -- Tempest Falconer
20064, -- Thaladred the Darkener
19516, -- Void Reaver
21272, -- Warp Slicer

23398, -- Angered Soul Fragment
22878, -- Aqueous Lord
22883, -- Aqueous Spawn
22881, -- Aqueous Surger 
22844, -- Ashtongue Battlelord
23421, -- Ashtongue Channeler
23216, -- Ashtongue Defender
22847, -- Ashtongue Primalist
23215, -- Ashtongue Sorcerer
23196, -- Bonechewer Behemoth
23222, -- Bonechewer Brawler
23239, -- Bonechewer Combatant
23028, -- Bonechewer Taskmaster
22955, -- Charming Courtesan
22873, -- Coilskar General
22877, -- Coilskar Wrangler
23030, -- Dragonmaw Sky Stalker
23330, -- Dragonmaw Wind Reaver
22960, -- Dragonmaw Wyrmcaller
22965, -- Enslaved Servant
23420, -- Essence of Anger
23419, -- Essence of Desire
23418, -- Essence of Suffering
22997, -- Flame of Azzinoth
22949, -- Gathios the Shatterer
22948, -- Gurtogg Bloodboil
23172, -- Hand of Gorefiend
22950, -- High Nethermancer Zerevor
22887, -- High Warlord Naj'entus
23401, -- Hungering Soul Fragment
22917, -- Illidan Stormrage
23397, -- Illidari Blood Lord
23337, -- Illidari Centurion
22954, -- Illidari Fearbringer
22855, -- Illidari Nightlord
23436, -- Image of Dementia
22951, -- Lady Malande
22884, -- Leviathan
22947, -- Mother Shahraz
23498, -- Parasitic Shadowfiend
22962, -- Priestess of Delight
22957, -- Priestess of Dementia
23394, -- Promenade Sentinel
23375, -- Shadow Demon
22841, -- Shade of Akama
22880, -- Shadowmoon Champion
23371, -- Shadowmoon Fallen
23018, -- Shadowmoon Houndmaster
23049, -- Shadowmoon Weapon Master
22956, -- Sister of Pain
22964, -- Sister of Pleasure
22898, -- Supremus
22959, -- Spellbound Attendant
22848, -- Storm Fury
23399, -- Suffering Soul Fragment
22939, -- Temple Concubine
22871, -- Teron Gorefiend
22952, -- Veras Darkshadow
22953, -- Wrathbone Flayer

25593, -- Apocalypse Guard
24882, -- Brutallus
25599, -- Cataclysm Hound
25595, -- Chaos Gazer
25592, -- Doomfire Destroyer
25948, -- Doomfire Shard
25840, -- Entropius
25038, -- Felmyst
25166, -- Grand Warlock Alythess
25588, -- Hand of the Deceiver
24850, -- Kalecgos
25315, -- Kil'jaeden
25165, -- Lady Sacrolash
25741, -- M'uru
25591, -- Painbringer
25509, -- Priestess of Torment
24892, -- Sathrovarr the Corruptor
25837, -- Shadowsword Commander
25508, -- Shadowsword Guardian
25373, -- Shadowsword Soulbinder
25502, -- Shield Orb
25708, -- Sinister Reflection
25507, -- Sunblade Protector
25372, -- Sunblade Scout
25268, -- Unyielding Dead
25772, -- Void Sentinel
25598, -- Volatile Felfire Fiend
25851 -- Volatile Fiend
);

-- SNARE [186 spells] (Slow, Thunderclap, Hamstring, Concussive Shot, Chilled, Earthbind, etc.)
UPDATE creature_template SET MechanicImmuneMask=MechanicImmuneMask|1024 WHERE entry IN (
18836, -- Blindeye the Seer
21350, -- Gronn-Priest
19044, -- Gruul the Dragonkiller
18831, -- High King Maulgar
18835, -- Kiggler the Crazed
18832, -- Krosh Firehand
19389, -- Lair Brute
18834, -- Olm the Summoner

17256, -- Hellfire Channeler
18829, -- Hellfire Warder
17257, -- Magtheridon

21221, -- Coilfang Beast-Tamer
22055, -- Coilfang Elite
21299, -- Coilfang Fathom-Witch
21339, -- Coilfang Hate-Screamer
21220, -- Coilfang Priestess
21298, -- Coilfang Serpentguard
21301, -- Coilfang Shatterer
22347, -- Colossus Lurker
21958, -- Enchanted Elemental
22119, -- Fathom Lurker
22120, -- Fathom Sporebat
21214, -- Fathom-Lord Karathress
21964, -- Fathom-Guard Caribdis
21966, -- Fathom-Guard Sharkkis
21806, -- Greyheart Spellbinder
21216, -- Hydross the Unstable
21212, -- Lady Vashj
21215, -- Leotheras the Blind
21213, -- Morogrim Tidewalker
22250, -- Rancid Mushroom
21863, -- Serpentshrine Lurker
21875, -- Shadow of Leotheras
22009, -- Tainted Elemental
21217, -- The Lurker Below
21224, -- Tidewalker Depth-Seer
21227, -- Tidewalker Harpooner
21228, -- Tidewalker Hydromancer
21226, -- Tidewalker Shaman
21251, -- Underbog Colossus
21218, -- Vashj'ir Honor Guard

19514, -- Al'ar
20046, -- Astromancer Lord
20035, -- Bloodwarder Marshal
20036, -- Bloodwarder Squire
20032, -- Bloodwarder Vindicator
20049, -- Crimson Hand Blood Knight
20048, -- Crimson Hand Centurion
20040, -- Crystalcore Devastator
20052, -- Crystalcore Mechanic
20041, -- Crystalcore Sentinel
19551, -- Ember of Al'ar
20062, -- Grand Astromancer Capernian
18805, -- High Astromancer Solarian
19622, -- Kael'thas Sunstrider
20060, -- Lord Sanguinar
20063, -- Master Engineer Telonicus
20045, -- Nether Scryer
21362, -- Phoenix
20039, -- Phoenix-Hawk
18806, -- Solarium Priest
20037, -- Tempest Falconer
20064, -- Thaladred the Darkener
19516, -- Void Reaver

23398, -- Angered Soul Fragment
22878, -- Aqueous Lord
22844, -- Ashtongue Battlelord
23421, -- Ashtongue Channeler
23216, -- Ashtongue Defender
22847, -- Ashtongue Primalist
23215, -- Ashtongue Sorcerer
23196, -- Bonechewer Behemoth
23222, -- Bonechewer Brawler
23239, -- Bonechewer Combatant
23028, -- Bonechewer Taskmaster
22955, -- Charming Courtesan
22873, -- Coilskar General
22877, -- Coilskar Wrangler
23030, -- Dragonmaw Sky Stalker
23330, -- Dragonmaw Wind Reaver
22960, -- Dragonmaw Wyrmcaller
22965, -- Enslaved Servant
23420, -- Essence of Anger
23419, -- Essence of Desire
23418, -- Essence of Suffering
22997, -- Flame of Azzinoth
22949, -- Gathios the Shatterer
22948, -- Gurtogg Bloodboil
23172, -- Hand of Gorefiend
22950, -- High Nethermancer Zerevor
22887, -- High Warlord Naj'entus
22917, -- Illidan Stormrage
23397, -- Illidari Blood Lord
23337, -- Illidari Centurion
22954, -- Illidari Fearbringer
22855, -- Illidari Nightlord
23436, -- Image of Dementia
22951, -- Lady Malande
22884, -- Leviathan
22947, -- Mother Shahraz
22962, -- Priestess of Delight
22957, -- Priestess of Dementia
23394, -- Promenade Sentinel
22841, -- Shade of Akama
22880, -- Shadowmoon Champion
23018, -- Shadowmoon Houndmaster
23049, -- Shadowmoon Weapon Master
22956, -- Sister of Pain
22964, -- Sister of Pleasure
22898, -- Supremus
22959, -- Spellbound Attendant
23399, -- Suffering Soul Fragment
22939, -- Temple Concubine
22871, -- Teron Gorefiend
22952, -- Veras Darkshadow
22953, -- Wrathbone Flayer

25593, -- Apocalypse Guard
24882, -- Brutallus
25599, -- Cataclysm Hound
25595, -- Chaos Gazer
25592, -- Doomfire Destroyer
25840, -- Entropius
25038, -- Felmyst
25166, -- Grand Warlock Alythess
25588, -- Hand of the Deceiver
24850, -- Kalecgos
25315, -- Kil'jaeden
25165, -- Lady Sacrolash
25741, -- M'uru
24892, -- Sathrovarr the Corruptor
25837, -- Shadowsword Commander
25508, -- Shadowsword Guardian
25373, -- Shadowsword Soulbinder
25502, -- Shield Orb
25708, -- Sinister Reflection
25507, -- Sunblade Protector
25372 -- Sunblade Scout
);

-- STUN [266 spells] (War Stomp, Hammer of Justice, Cheap Shot, etc.)
UPDATE creature_template SET MechanicImmuneMask=MechanicImmuneMask|2048 WHERE entry IN (
21350, -- Gronn-Priest
19044, -- Gruul the Dragonkiller
18831, -- High King Maulgar
18835, -- Kiggler the Crazed
18832, -- Krosh Firehand
19389, -- Lair Brute
18834, -- Olm the Summoner

17256, -- Hellfire Channeler
18829, -- Hellfire Warder
17257, -- Magtheridon

21221, -- Coilfang Beast-Tamer
22055, -- Coilfang Elite
21299, -- Coilfang Fathom-Witch
21339, -- Coilfang Hate-Screamer
21298, -- Coilfang Serpentguard
21301, -- Coilfang Shatterer
22347, -- Colossus Lurker
21958, -- Enchanted Elemental
22119, -- Fathom Lurker
22120, -- Fathom Sporebat
21214, -- Fathom-Lord Karathress
21964, -- Fathom-Guard Caribdis
21966, -- Fathom-Guard Sharkkis
21965, -- Fathom-Guard Tidalvess
21230, -- Greyheart Nether-Mage
21231, -- Greyheart Shield-Bearer
21232, -- Greyheart Skulker
21806, -- Greyheart Spellbinder
21229, -- Greyheart Tidecaller
21216, -- Hydross the Unstable
21212, -- Lady Vashj
21215, -- Leotheras the Blind
21213, -- Morogrim Tidewalker
22250, -- Rancid Mushroom
21863, -- Serpentshrine Lurker
21875, -- Shadow of Leotheras
22009, -- Tainted Elemental
21217, -- The Lurker Below
21224, -- Tidewalker Depth-Seer
21227, -- Tidewalker Harpooner
21226, -- Tidewalker Shaman
21225, -- Tidewalker Warrior
21251, -- Underbog Colossus
21218, -- Vashj'ir Honor Guard

19514, -- Al'ar
20043, -- Apprentice Star Scryer
20033, -- Astromancer
20046, -- Astromancer Lord
20031, -- Bloodwarder Legionnaire
20035, -- Bloodwarder Marshal
20036, -- Bloodwarder Squire
20032, -- Bloodwarder Vindicator
20047, -- Crimson Hand Battle Mage
20049, -- Crimson Hand Blood Knight
20050, -- Crimson Hand Inquisitor
20040, -- Crystalcore Devastator
20052, -- Crystalcore Mechanic
20041, -- Crystalcore Sentinel
20062, -- Grand Astromancer Capernian
18805, -- High Astromancer Solarian
19622, -- Kael'thas Sunstrider
20060, -- Lord Sanguinar
20063, -- Master Engineer Telonicus
20045, -- Nether Scryer
20044, -- Novice Astromancer
21362, -- Phoenix
20039, -- Phoenix-Hawk
20038, -- Phoenix-Hawk Hatchling
20034, -- Star Scryer
20037, -- Tempest Falconer
20064, -- Thaladred the Darkener
19516, -- Void Reaver

23398, -- Angered Soul Fragment
22878, -- Aqueous Lord
22844, -- Ashtongue Battlelord
23421, -- Ashtongue Channeler
23216, -- Ashtongue Defender
23523, -- Ashtongue Elementalist
22849, -- Ashtongue Feral Spirit
22845, -- Ashtongue Mystic
22847, -- Ashtongue Primalist
23318, -- Ashtongue Rogue
23215, -- Ashtongue Sorcerer
23524, -- Ashtongue Spiritbinder
23374, -- Ashtongue Stalker
22846, -- Ashtongue Stormcaller
23196, -- Bonechewer Behemoth
23237, -- Bonechewer Blood Prophet
23222, -- Bonechewer Brawler
23239, -- Bonechewer Combatant
23236, -- Bonechewer Shield Disciple
23223, -- Bonechewer Spectator
23028, -- Bonechewer Taskmaster
22963, -- Bonechewer Worker
22955, -- Charming Courtesan
22873, -- Coilskar General
22874, -- Coilskar Harpooner
22875, -- Coilskar Sea-Caller
22876, -- Coilskar Soothsayer
22877, -- Coilskar Wrangler
22885, -- Dragon Turtle
23030, -- Dragonmaw Sky Stalker
23330, -- Dragonmaw Wind Reaver
22960, -- Dragonmaw Wyrmcaller
22965, -- Enslaved Servant
23420, -- Essence of Anger
23419, -- Essence of Desire
23418, -- Essence of Suffering
22997, -- Flame of Azzinoth
22949, -- Gathios the Shatterer
22948, -- Gurtogg Bloodboil
23172, -- Hand of Gorefiend
22950, -- High Nethermancer Zerevor
22887, -- High Warlord Naj'entus
22917, -- Illidan Stormrage
23400, -- Illidari Archon
23403, -- Illidari Assassin
23402, -- Illidari Battle-mage
23397, -- Illidari Blood Lord
22869, -- Illidari Boneslicer
23337, -- Illidari Centurion
22853, -- Illidari Defiler
22954, -- Illidari Fearbringer
23339, -- Illidari Heartseeker
22855, -- Illidari Nightlord
23436, -- Image of Dementia
22951, -- Lady Malande
22884, -- Leviathan
22947, -- Mother Shahraz
22962, -- Priestess of Delight
22957, -- Priestess of Dementia
23394, -- Promenade Sentinel
23375, -- Shadow Demon
22841, -- Shade of Akama
22945, -- Shadowmoon Blood Mage
22880, -- Shadowmoon Champion
22882, -- Shadowmoon Deathshaper
23147, -- Shadowmoon Grunt
23018, -- Shadowmoon Houndmaster
22879, -- Shadowmoon Reaver
23083, -- Shadowmoon Riding Hound
23047, -- Shadowmoon Soldier
23049, -- Shadowmoon Weapon Master
22956, -- Sister of Pain
22964, -- Sister of Pleasure
22898, -- Supremus
22959, -- Spellbound Attendant
23399, -- Suffering Soul Fragment
22939, -- Temple Concubine
22871, -- Teron Gorefiend
22953, -- Wrathbone Flayer

25593, -- Apocalypse Guard
24882, -- Brutallus
25599, -- Cataclysm Hound
25595, -- Chaos Gazer
25592, -- Doomfire Destroyer
25840, -- Entropius
25038, -- Felmyst
25166, -- Grand Warlock Alythess
24850, -- Kalecgos
25315, -- Kil'jaeden
25165, -- Lady Sacrolash
25741, -- M'uru
25597, -- Oblivion Mage
25591, -- Painbringer
25509, -- Priestess of Torment
24892, -- Sathrovarr the Corruptor
25484, -- Shadowsword Assassin
25837, -- Shadowsword Commander
25485, -- Shadowsword Deathbringer
25508, -- Shadowsword Guardian
25506, -- Shadowsword Lifeshaper
25483, -- Shadowsword Manafiend
25373, -- Shadowsword Soulbinder
25486, -- Shadowsword Vanquisher
25502, -- Shield Orb
25708, -- Sinister Reflection
25367, -- Sunblade Arch Mage
25363, -- Sunblade Cabalist
25371, -- Sunblade Dawn Priest
25370, -- Sunblade Dusk Priest
25507, -- Sunblade Protector
25372, -- Sunblade Scout
25368, -- Sunblade Slayer
25369, -- Sunblade Vindicator
25772, -- Void Sentinel
25598, -- Volatile Felfire Fiend
25851 -- Volatile Fiend
);

-- FREEZE [8 spells] (Freezing Trap)
UPDATE creature_template SET MechanicImmuneMask=MechanicImmuneMask|4096 WHERE entry IN (
18836, -- Blindeye the Seer
21350, -- Gronn-Priest
19044, -- Gruul the Dragonkiller
18831, -- High King Maulgar
18835, -- Kiggler the Crazed
18832, -- Krosh Firehand
19389, -- Lair Brute
18834, -- Olm the Summoner

17256, -- Hellfire Channeler
18829, -- Hellfire Warder
17257, -- Magtheridon

21221, -- Coilfang Beast-Tamer
22055, -- Coilfang Elite
21299, -- Coilfang Fathom-Witch
21339, -- Coilfang Hate-Screamer
21298, -- Coilfang Serpentguard
21301, -- Coilfang Shatterer
22056, -- Coilfang Strider
22347, -- Colossus Lurker
22352, -- Colossus Rager
21958, -- Enchanted Elemental
22119, -- Fathom Lurker
22120, -- Fathom Sporebat
21214, -- Fathom-Lord Karathress
21964, -- Fathom-Guard Caribdis
21966, -- Fathom-Guard Sharkkis
21965, -- Fathom-Guard Tidalvess
21230, -- Greyheart Nether-Mage
21231, -- Greyheart Shield-Bearer
21232, -- Greyheart Skulker
21806, -- Greyheart Spellbinder
21229, -- Greyheart Tidecaller
21216, -- Hydross the Unstable
21212, -- Lady Vashj
21215, -- Leotheras the Blind
21213, -- Morogrim Tidewalker
22035, -- Pure Spawn of Hydross
22250, -- Rancid Mushroom
21875, -- Shadow of Leotheras
21217, -- The Lurker Below
21224, -- Tidewalker Depth-Seer
21227, -- Tidewalker Harpooner
21226, -- Tidewalker Shaman
21225, -- Tidewalker Warrior
21251, -- Underbog Colossus
21218, -- Vashj'ir Honor Guard

19514, -- Al'ar
20046, -- Astromancer Lord
20035, -- Bloodwarder Marshal
20036, -- Bloodwarder Squire
20032, -- Bloodwarder Vindicator
20049, -- Crimson Hand Blood Knight
20040, -- Crystalcore Devastator
20052, -- Crystalcore Mechanic
20041, -- Crystalcore Sentinel
19551, -- Ember of Al'ar
20062, -- Grand Astromancer Capernian
18805, -- High Astromancer Solarian
19622, -- Kael'thas Sunstrider
20060, -- Lord Sanguinar
20063, -- Master Engineer Telonicus
20045, -- Nether Scryer
21362, -- Phoenix
20039, -- Phoenix-Hawk
18806, -- Solarium Priest
20037, -- Tempest Falconer
20064, -- Thaladred the Darkener
19516, -- Void Reaver

23398, -- Angered Soul Fragment
22878, -- Aqueous Lord
22844, -- Ashtongue Battlelord
23421, -- Ashtongue Channeler
23216, -- Ashtongue Defender
22847, -- Ashtongue Primalist
23215, -- Ashtongue Sorcerer
23196, -- Bonechewer Behemoth
23222, -- Bonechewer Brawler
23239, -- Bonechewer Combatant
23028, -- Bonechewer Taskmaster
22955, -- Charming Courtesan
22873, -- Coilskar General
22877, -- Coilskar Wrangler
23030, -- Dragonmaw Sky Stalker
23330, -- Dragonmaw Wind Reaver
22960, -- Dragonmaw Wyrmcaller
22965, -- Enslaved Servant
23420, -- Essence of Anger
23419, -- Essence of Desire
23418, -- Essence of Suffering
22997, -- Flame of Azzinoth
22949, -- Gathios the Shatterer
22948, -- Gurtogg Bloodboil
23172, -- Hand of Gorefiend
22950, -- High Nethermancer Zerevor
22887, -- High Warlord Naj'entus
22917, -- Illidan Stormrage
23397, -- Illidari Blood Lord
23337, -- Illidari Centurion
22954, -- Illidari Fearbringer
22855, -- Illidari Nightlord
23436, -- Image of Dementia
22951, -- Lady Malande
22884, -- Leviathan
22947, -- Mother Shahraz
23498, -- Parasitic Shadowfiend
22962, -- Priestess of Delight
22957, -- Priestess of Dementia
23394, -- Promenade Sentinel
23375, -- Shadow Demon
22841, -- Shade of Akama
22880, -- Shadowmoon Champion
23018, -- Shadowmoon Houndmaster
23049, -- Shadowmoon Weapon Master
22956, -- Sister of Pain
22964, -- Sister of Pleasure
22898, -- Supremus
22959, -- Spellbound Attendant
23399, -- Suffering Soul Fragment
22939, -- Temple Concubine
22871, -- Teron Gorefiend
22952, -- Veras Darkshadow
22953, -- Wrathbone Flayer

25593, -- Apocalypse Guard
24882, -- Brutallus
25599, -- Cataclysm Hound
25595, -- Chaos Gazer
25592, -- Doomfire Destroyer
25948, -- Doomfire Shard
25840, -- Entropius
25038, -- Felmyst
25166, -- Grand Warlock Alythess
25588, -- Hand of the Deceiver
24850, -- Kalecgos
25315, -- Kil'jaeden
25165, -- Lady Sacrolash
25741, -- M'uru
25591, -- Painbringer
25509, -- Priestess of Torment
24892, -- Sathrovarr the Corruptor
25837, -- Shadowsword Commander
25508, -- Shadowsword Guardian
25373, -- Shadowsword Soulbinder
25708, -- Sinister Reflection
25507, -- Sunblade Protector
25372, -- Sunblade Scout
25772, -- Void Sentinel
25598, -- Volatile Felfire Fiend
25851 -- Volatile Fiend
);

-- KNOCKOUT [20 spells] (Gouge, Blast Wave, Repentance)
UPDATE creature_template SET MechanicImmuneMask=MechanicImmuneMask|8192 WHERE entry IN (
18836, -- Blindeye the Seer
21350, -- Gronn-Priest
19044, -- Gruul the Dragonkiller
18831, -- High King Maulgar
18835, -- Kiggler the Crazed
18832, -- Krosh Firehand
19389, -- Lair Brute
18834, -- Olm the Summoner

17256, -- Hellfire Channeler
18829, -- Hellfire Warder
17257, -- Magtheridon

21221, -- Coilfang Beast-Tamer
22055, -- Coilfang Elite
21299, -- Coilfang Fathom-Witch
21339, -- Coilfang Hate-Screamer
21298, -- Coilfang Serpentguard
21301, -- Coilfang Shatterer
22056, -- Coilfang Strider
22347, -- Colossus Lurker
22352, -- Colossus Rager
21958, -- Enchanted Elemental
22119, -- Fathom Lurker
22120, -- Fathom Sporebat
21214, -- Fathom-Lord Karathress
21964, -- Fathom-Guard Caribdis
21966, -- Fathom-Guard Sharkkis
21965, -- Fathom-Guard Tidalvess
21806, -- Greyheart Spellbinder
21216, -- Hydross the Unstable
21212, -- Lady Vashj
21215, -- Leotheras the Blind
21213, -- Morogrim Tidewalker
22250, -- Rancid Mushroom
21875, -- Shadow of Leotheras
22009, -- Tainted Elemental
21217, -- The Lurker Below
21224, -- Tidewalker Depth-Seer
21227, -- Tidewalker Harpooner
21228, -- Tidewalker Hydromancer
21226, -- Tidewalker Shaman
21251, -- Underbog Colossus
21218, -- Vashj'ir Honor Guard

19514, -- Al'ar
20046, -- Astromancer Lord
20035, -- Bloodwarder Marshal
20036, -- Bloodwarder Squire
20032, -- Bloodwarder Vindicator
21270, -- Cosmic Infuser
20049, -- Crimson Hand Blood Knight
20040, -- Crystalcore Devastator
20052, -- Crystalcore Mechanic
20041, -- Crystalcore Sentinel
21269, -- Devastation
19551, -- Ember of Al'ar
20062, -- Grand Astromancer Capernian
18805, -- High Astromancer Solarian
21271, -- Infinity Blades
19622, -- Kael'thas Sunstrider
20060, -- Lord Sanguinar
20063, -- Master Engineer Telonicus
20045, -- Nether Scryer
21268, -- Netherstrand Longbow
21273, -- Phaseshift Bulwark
21362, -- Phoenix
20039, -- Phoenix-Hawk
18806, -- Solarium Priest
21274, -- Staff of Disintegration
20037, -- Tempest Falconer
20064, -- Thaladred the Darkener
19516, -- Void Reaver
21272, -- Warp Slicer

23398, -- Angered Soul Fragment
22878, -- Aqueous Lord
22844, -- Ashtongue Battlelord
23421, -- Ashtongue Channeler
23216, -- Ashtongue Defender
22847, -- Ashtongue Primalist
23215, -- Ashtongue Sorcerer
23196, -- Bonechewer Behemoth
23222, -- Bonechewer Brawler
23239, -- Bonechewer Combatant
23028, -- Bonechewer Taskmaster
22955, -- Charming Courtesan
22873, -- Coilskar General
22877, -- Coilskar Wrangler
23030, -- Dragonmaw Sky Stalker
23330, -- Dragonmaw Wind Reaver
22960, -- Dragonmaw Wyrmcaller
22965, -- Enslaved Servant
23420, -- Essence of Anger
23419, -- Essence of Desire
23418, -- Essence of Suffering
22997, -- Flame of Azzinoth
22949, -- Gathios the Shatterer
22948, -- Gurtogg Bloodboil
23172, -- Hand of Gorefiend
22950, -- High Nethermancer Zerevor
22887, -- High Warlord Naj'entus
22917, -- Illidan Stormrage
23397, -- Illidari Blood Lord
23337, -- Illidari Centurion
22954, -- Illidari Fearbringer
22855, -- Illidari Nightlord
23436, -- Image of Dementia
22951, -- Lady Malande
22884, -- Leviathan
22947, -- Mother Shahraz
22962, -- Priestess of Delight
22957, -- Priestess of Dementia
23394, -- Promenade Sentinel
23375, -- Shadow Demon
22841, -- Shade of Akama
22880, -- Shadowmoon Champion
23018, -- Shadowmoon Houndmaster
23049, -- Shadowmoon Weapon Master
22956, -- Sister of Pain
22964, -- Sister of Pleasure
22898, -- Supremus
22959, -- Spellbound Attendant
23399, -- Suffering Soul Fragment
22939, -- Temple Concubine
22871, -- Teron Gorefiend
22952, -- Veras Darkshadow
22953, -- Wrathbone Flayer

25593, -- Apocalypse Guard
24882, -- Brutallus
25599, -- Cataclysm Hound
25595, -- Chaos Gazer
25592, -- Doomfire Destroyer
25948, -- Doomfire Shard
25840, -- Entropius
25038, -- Felmyst
25166, -- Grand Warlock Alythess
25588, -- Hand of the Deceiver
24850, -- Kalecgos
25315, -- Kil'jaeden
25165, -- Lady Sacrolash
25741, -- M'uru
25591, -- Painbringer
25509, -- Priestess of Torment
24892, -- Sathrovarr the Corruptor
25484, -- Shadowsword Assassin
25837, -- Shadowsword Commander
25485, -- Shadowsword Deathbringer
25508, -- Shadowsword Guardian
25506, -- Shadowsword Lifeshaper
25483, -- Shadowsword Manafiend
25373, -- Shadowsword Soulbinder
25486, -- Shadowsword Vanquisher
25502, -- Shield Orb
25708, -- Sinister Reflection
25367, -- Sunblade Arch Mage
25363, -- Sunblade Cabalist
25371, -- Sunblade Dawn Priest
25370, -- Sunblade Dusk Priest
25507, -- Sunblade Protector
25372, -- Sunblade Scout
25368, -- Sunblade Slayer
25369, -- Sunblade Vindicator
25772, -- Void Sentinel
25598, -- Volatile Felfire Fiend
25851 -- Volatile Fiend
);

-- POLYMORPH [69 spells] (Polymorph, Hex)
UPDATE creature_template SET MechanicImmuneMask=MechanicImmuneMask|65536 WHERE entry IN (
18836, -- Blindeye the Seer
18831, -- High King Maulgar
18835, -- Kiggler the Crazed
18832, -- Krosh Firehand
19389, -- Lair Brute
18834, -- Olm the Summoner

17256, -- Hellfire Channeler
18829, -- Hellfire Warder

21221, -- Coilfang Beast-Tamer
22055, -- Coilfang Elite
21299, -- Coilfang Fathom-Witch
21339, -- Coilfang Hate-Screamer
21220, -- Coilfang Priestess
21298, -- Coilfang Serpentguard
21301, -- Coilfang Shatterer
22056, -- Coilfang Strider
22120, -- Fathom Sporebat
21214, -- Fathom-Lord Karathress
21964, -- Fathom-Guard Caribdis
21966, -- Fathom-Guard Sharkkis
21965, -- Fathom-Guard Tidalvess
21806, -- Greyheart Spellbinder
21212, -- Lady Vashj
21215, -- Leotheras the Blind
21224, -- Tidewalker Depth-Seer
21227, -- Tidewalker Harpooner
21228, -- Tidewalker Hydromancer
21226, -- Tidewalker Shaman
21218, -- Vashj'ir Honor Guard

20046, -- Astromancer Lord
20035, -- Bloodwarder Marshal
20036, -- Bloodwarder Squire
20032, -- Bloodwarder Vindicator
21270, -- Cosmic Infuser
20049, -- Crimson Hand Blood Knight
20062, -- Grand Astromancer Capernian
18805, -- High Astromancer Solarian
19622, -- Kael'thas Sunstrider
20060, -- Lord Sanguinar
20063, -- Master Engineer Telonicus
20045, -- Nether Scryer
20039, -- Phoenix-Hawk
18806, -- Solarium Priest
20037, -- Tempest Falconer
20064, -- Thaladred the Darkener

22844, -- Ashtongue Battlelord
23421, -- Ashtongue Channeler
23216, -- Ashtongue Defender
22847, -- Ashtongue Primalist
23215, -- Ashtongue Sorcerer
23196, -- Bonechewer Behemoth
23222, -- Bonechewer Brawler
23239, -- Bonechewer Combatant
23028, -- Bonechewer Taskmaster
22955, -- Charming Courtesan
22873, -- Coilskar General
22877, -- Coilskar Wrangler
23030, -- Dragonmaw Sky Stalker
23330, -- Dragonmaw Wind Reaver
22960, -- Dragonmaw Wyrmcaller
22965, -- Enslaved Servant
22949, -- Gathios the Shatterer
22948, -- Gurtogg Bloodboil
23172, -- Hand of Gorefiend
22950, -- High Nethermancer Zerevor
22887, -- High Warlord Naj'entus
23397, -- Illidari Blood Lord
22951, -- Lady Malande
22884, -- Leviathan
22841, -- Shade of Akama
22880, -- Shadowmoon Champion
23018, -- Shadowmoon Houndmaster
23049, -- Shadowmoon Weapon Master
22959, -- Spellbound Attendant
22939, -- Temple Concubine
22952, -- Veras Darkshadow

25588, -- Hand of the Deceiver
25837, -- Shadowsword Commander
25373, -- Shadowsword Soulbinder
25708, -- Sinister Reflection
25372 -- Sunblade Scout
);

-- BANISH [20 spells] (Cyclone, Banish)
UPDATE creature_template SET MechanicImmuneMask=MechanicImmuneMask|131072 WHERE entry IN (
18836, -- Blindeye the Seer
21350, -- Gronn-Priest
19044, -- Gruul the Dragonkiller
18831, -- High King Maulgar
18835, -- Kiggler the Crazed
18832, -- Krosh Firehand
19389, -- Lair Brute
18834, -- Olm the Summoner

17256, -- Hellfire Channeler
18829, -- Hellfire Warder
17257, -- Magtheridon

21221, -- Coilfang Beast-Tamer
22055, -- Coilfang Elite
21299, -- Coilfang Fathom-Witch
21339, -- Coilfang Hate-Screamer
21298, -- Coilfang Serpentguard
21301, -- Coilfang Shatterer
22056, -- Coilfang Strider
22347, -- Colossus Lurker
22352, -- Colossus Rager
21958, -- Enchanted Elemental
22119, -- Fathom Lurker
22120, -- Fathom Sporebat
21214, -- Fathom-Lord Karathress
21964, -- Fathom-Guard Caribdis
21966, -- Fathom-Guard Sharkkis
21965, -- Fathom-Guard Tidalvess
21806, -- Greyheart Spellbinder
21216, -- Hydross the Unstable
21212, -- Lady Vashj
21215, -- Leotheras the Blind
21213, -- Morogrim Tidewalker
22250, -- Rancid Mushroom
21863, -- Serpentshrine Lurker
21875, -- Shadow of Leotheras
22009, -- Tainted Elemental
21217, -- The Lurker Below
21224, -- Tidewalker Depth-Seer
21227, -- Tidewalker Harpooner
21228, -- Tidewalker Hydromancer
21226, -- Tidewalker Shaman
21225, -- Tidewalker Warrior
21251, -- Underbog Colossus
21218, -- Vashj'ir Honor Guard

19514, -- Al'ar
20046, -- Astromancer Lord
20035, -- Bloodwarder Marshal
20036, -- Bloodwarder Squire
20032, -- Bloodwarder Vindicator
20049, -- Crimson Hand Blood Knight
20040, -- Crystalcore Devastator
20041, -- Crystalcore Sentinel
19551, -- Ember of Al'ar
20062, -- Grand Astromancer Capernian
18805, -- High Astromancer Solarian
19622, -- Kael'thas Sunstrider
20060, -- Lord Sanguinar
20063, -- Master Engineer Telonicus
20045, -- Nether Scryer
21362, -- Phoenix
20039, -- Phoenix-Hawk
20037, -- Tempest Falconer
20064, -- Thaladred the Darkener
19516, -- Void Reaver

23398, -- Angered Soul Fragment
22878, -- Aqueous Lord
22844, -- Ashtongue Battlelord
23421, -- Ashtongue Channeler
23216, -- Ashtongue Defender
22847, -- Ashtongue Primalist
23215, -- Ashtongue Sorcerer
23196, -- Bonechewer Behemoth
23222, -- Bonechewer Brawler
23239, -- Bonechewer Combatant
23028, -- Bonechewer Taskmaster
22955, -- Charming Courtesan
22873, -- Coilskar General
22877, -- Coilskar Wrangler
23030, -- Dragonmaw Sky Stalker
23330, -- Dragonmaw Wind Reaver
22960, -- Dragonmaw Wyrmcaller
22965, -- Enslaved Servant
23420, -- Essence of Anger
23419, -- Essence of Desire
23418, -- Essence of Suffering
22997, -- Flame of Azzinoth
22949, -- Gathios the Shatterer
22948, -- Gurtogg Bloodboil
23172, -- Hand of Gorefiend
22950, -- High Nethermancer Zerevor
22887, -- High Warlord Naj'entus
22917, -- Illidan Stormrage
23397, -- Illidari Blood Lord
23337, -- Illidari Centurion
22954, -- Illidari Fearbringer
22855, -- Illidari Nightlord
23436, -- Image of Dementia
22951, -- Lady Malande
22884, -- Leviathan
22947, -- Mother Shahraz
22962, -- Priestess of Delight
22957, -- Priestess of Dementia
23394, -- Promenade Sentinel
23375, -- Shadow Demon
22841, -- Shade of Akama
22880, -- Shadowmoon Champion
23018, -- Shadowmoon Houndmaster
23049, -- Shadowmoon Weapon Master
22956, -- Sister of Pain
22964, -- Sister of Pleasure
22898, -- Supremus
22959, -- Spellbound Attendant
23399, -- Suffering Soul Fragment
22939, -- Temple Concubine
22871, -- Teron Gorefiend
22952, -- Veras Darkshadow
22953, -- Wrathbone Flayer

25593, -- Apocalypse Guard
24882, -- Brutallus
25599, -- Cataclysm Hound
25595, -- Chaos Gazer
25592, -- Doomfire Destroyer
25840, -- Entropius
25038, -- Felmyst
25166, -- Grand Warlock Alythess
25588, -- Hand of the Deceiver
24850, -- Kalecgos
25315, -- Kil'jaeden
25165, -- Lady Sacrolash
25741, -- M'uru
25597, -- Oblivion Mage
25591, -- Painbringer
25509, -- Priestess of Torment
24892, -- Sathrovarr the Corruptor
25837, -- Shadowsword Commander
25508, -- Shadowsword Guardian
25373, -- Shadowsword Soulbinder
25502, -- Shield Orb
25708, -- Sinister Reflection
25507, -- Sunblade Protector
25372, -- Sunblade Scout
25772, -- Void Sentinel
25598, -- Volatile Felfire Fiend
25851 -- Volatile Fiend
);

-- SHACKLE [4 spells] (Shackle Undead)
UPDATE creature_template SET MechanicImmuneMask=MechanicImmuneMask|524288 WHERE entry IN (
23399, -- Suffering Soul Fragment
22871, -- Teron Gorefiend
22953 -- Wrathbone Flayer
);

-- TURN [2 spells] (Turn Undead, Turn Evil)
UPDATE creature_template SET MechanicImmuneMask=MechanicImmuneMask|4194304 WHERE entry IN (
18847, -- Wild Fel Stalker

17257, -- Magtheridon

21875, -- Shadow of Leotheras

20052, -- Crystalcore Mechanic

22997, -- Flame of Azzinoth
22917, -- Illidan Stormrage
23337, -- Illidari Centurion
22954, -- Illidari Fearbringer
22855, -- Illidari Nightlord
22947, -- Mother Shahraz
22962, -- Priestess of Delight
22957, -- Priestess of Dementia
23375, -- Shadow Demon
22956, -- Sister of Pain
22964, -- Sister of Pleasure
22898, -- Supremus
23399, -- Suffering Soul Fragment
22871, -- Teron Gorefiend
22953, -- Wrathbone Flayer

25593, -- Apocalypse Guard
24882, -- Brutallus
25599, -- Cataclysm Hound
25595, -- Chaos Gazer
25592, -- Doomfire Destroyer
25948, -- Doomfire Shard
25840, -- Entropius
25038, -- Felmyst
25166, -- Grand Warlock Alythess
25315, -- Kil'jaeden
25165, -- Lady Sacrolash
25597, -- Oblivion Mage
25591, -- Painbringer
25509, -- Priestess of Torment
24892, -- Sathrovarr the Corruptor
25772, -- Void Sentinel
25598, -- Volatile Felfire Fiend
25851 -- Volatile Fiend
);

-- HORROR [2 spells] (Death Coil)
UPDATE creature_template SET MechanicImmuneMask=MechanicImmuneMask|8388608 WHERE entry IN (
18836, -- Blindeye the Seer
21350, -- Gronn-Priest
19044, -- Gruul the Dragonkiller
18831, -- High King Maulgar
18835, -- Kiggler the Crazed
18832, -- Krosh Firehand
19389, -- Lair Brute
18834, -- Olm the Summoner
18847, -- Wild Fel Stalker

17256, -- Hellfire Channeler
18829, -- Hellfire Warder
17257, -- Magtheridon

21221, -- Coilfang Beast-Tamer
22055, -- Coilfang Elite
21299, -- Coilfang Fathom-Witch
21339, -- Coilfang Hate-Screamer
21298, -- Coilfang Serpentguard
21301, -- Coilfang Shatterer
22056, -- Coilfang Strider
22347, -- Colossus Lurker
22352, -- Colossus Rager
21958, -- Enchanted Elemental
22119, -- Fathom Lurker
22120, -- Fathom Sporebat
21214, -- Fathom-Lord Karathress
21964, -- Fathom-Guard Caribdis
21966, -- Fathom-Guard Sharkkis
21965, -- Fathom-Guard Tidalvess
21806, -- Greyheart Spellbinder
21216, -- Hydross the Unstable
21212, -- Lady Vashj
21215, -- Leotheras the Blind
21213, -- Morogrim Tidewalker
22250, -- Rancid Mushroom
21863, -- Serpentshrine Lurker
21875, -- Shadow of Leotheras
22009, -- Tainted Elemental
21217, -- The Lurker Below
21224, -- Tidewalker Depth-Seer
21227, -- Tidewalker Harpooner
21228, -- Tidewalker Hydromancer
21226, -- Tidewalker Shaman
21251, -- Underbog Colossus
21218, -- Vashj'ir Honor Guard

19514, -- Al'ar
20046, -- Astromancer Lord
20035, -- Bloodwarder Marshal
20036, -- Bloodwarder Squire
20032, -- Bloodwarder Vindicator
21270, -- Cosmic Infuser
20049, -- Crimson Hand Blood Knight
20040, -- Crystalcore Devastator
20052, -- Crystalcore Mechanic
20041, -- Crystalcore Sentinel
21269, -- Devastation
19551, -- Ember of Al'ar
20062, -- Grand Astromancer Capernian
18805, -- High Astromancer Solarian
21271, -- Infinity Blades
19622, -- Kael'thas Sunstrider
20060, -- Lord Sanguinar
20063, -- Master Engineer Telonicus
20045, -- Nether Scryer
21268, -- Netherstrand Longbow
21273, -- Phaseshift Bulwark
21362, -- Phoenix
20039, -- Phoenix-Hawk
18806, -- Solarium Priest
21274, -- Staff of Disintegration
20037, -- Tempest Falconer
20064, -- Thaladred the Darkener
19516, -- Void Reaver
21272, -- Warp Slicer

23398, -- Angered Soul Fragment
22878, -- Aqueous Lord
22844, -- Ashtongue Battlelord
23421, -- Ashtongue Channeler
23216, -- Ashtongue Defender
22847, -- Ashtongue Primalist
23215, -- Ashtongue Sorcerer
23196, -- Bonechewer Behemoth
23235, -- Bonechewer Blade Fury
23222, -- Bonechewer Brawler
23239, -- Bonechewer Combatant
23028, -- Bonechewer Taskmaster
22955, -- Charming Courtesan
22873, -- Coilskar General
22877, -- Coilskar Wrangler
23030, -- Dragonmaw Sky Stalker
23330, -- Dragonmaw Wind Reaver
22960, -- Dragonmaw Wyrmcaller
22965, -- Enslaved Servant
23420, -- Essence of Anger
23419, -- Essence of Desire
23418, -- Essence of Suffering
22997, -- Flame of Azzinoth
22949, -- Gathios the Shatterer
22948, -- Gurtogg Bloodboil
23172, -- Hand of Gorefiend
22950, -- High Nethermancer Zerevor
22887, -- High Warlord Naj'entus
23401, -- Hungering Soul Fragment
22917, -- Illidan Stormrage
23397, -- Illidari Blood Lord
23337, -- Illidari Centurion
22954, -- Illidari Fearbringer
22855, -- Illidari Nightlord
23436, -- Image of Dementia
22951, -- Lady Malande
22884, -- Leviathan
22947, -- Mother Shahraz
23498, -- Parasitic Shadowfiend
22962, -- Priestess of Delight
22957, -- Priestess of Dementia
23394, -- Promenade Sentinel
23375, -- Shadow Demon
22841, -- Shade of Akama
22880, -- Shadowmoon Champion
23371, -- Shadowmoon Fallen
23018, -- Shadowmoon Houndmaster
23049, -- Shadowmoon Weapon Master
22956, -- Sister of Pain
22964, -- Sister of Pleasure
22898, -- Supremus
22959, -- Spellbound Attendant
23399, -- Suffering Soul Fragment
22939, -- Temple Concubine
22871, -- Teron Gorefiend
22952, -- Veras Darkshadow
22953, -- Wrathbone Flayer

25593, -- Apocalypse Guard
24882, -- Brutallus
25599, -- Cataclysm Hound
25595, -- Chaos Gazer
25592, -- Doomfire Destroyer
25948, -- Doomfire Shard
25840, -- Entropius
25038, -- Felmyst
25166, -- Grand Warlock Alythess
25588, -- Hand of the Deceiver
24850, -- Kalecgos
25315, -- Kil'jaeden
25165, -- Lady Sacrolash
25741, -- M'uru
25597, -- Oblivion Mage
25591, -- Painbringer
25509, -- Priestess of Torment
24892, -- Sathrovarr the Corruptor
25837, -- Shadowsword Commander
25508, -- Shadowsword Guardian
25373, -- Shadowsword Soulbinder
25502, -- Shield Orb
25708, -- Sinister Reflection
25507, -- Sunblade Protector
25372, -- Sunblade Scout
25268, -- Unyielding Dead
25772, -- Void Sentinel
25598, -- Volatile Felfire Fiend
25851 -- Volatile Fiend
);

-- INTERRUPT [20 spells] (Counterspell, Pummel)
UPDATE creature_template SET MechanicImmuneMask=MechanicImmuneMask|33554432 WHERE entry IN (
19044, -- Gruul the Dragonkiller
18831, -- High King Maulgar
18835, -- Kiggler the Crazed
18832, -- Krosh Firehand
19389, -- Lair Brute
18834, -- Olm the Summoner

17256, -- Hellfire Channeler
18829, -- Hellfire Warder
17257, -- Magtheridon

21221, -- Coilfang Beast-Tamer
22055, -- Coilfang Elite
21299, -- Coilfang Fathom-Witch
21339, -- Coilfang Hate-Screamer
21298, -- Coilfang Serpentguard
21301, -- Coilfang Shatterer
22347, -- Colossus Lurker
21958, -- Enchanted Elemental
22119, -- Fathom Lurker
22120, -- Fathom Sporebat
21214, -- Fathom-Lord Karathress
21966, -- Fathom-Guard Sharkkis
21965, -- Fathom-Guard Tidalvess
21230, -- Greyheart Nether-Mage
21231, -- Greyheart Shield-Bearer
21232, -- Greyheart Skulker
21806, -- Greyheart Spellbinder
21229, -- Greyheart Tidecaller
21216, -- Hydross the Unstable
21212, -- Lady Vashj
21215, -- Leotheras the Blind
21213, -- Morogrim Tidewalker
21875, -- Shadow of Leotheras
22009, -- Tainted Elemental
21217, -- The Lurker Below
21224, -- Tidewalker Depth-Seer
21227, -- Tidewalker Harpooner
21226, -- Tidewalker Shaman
21225, -- Tidewalker Warrior
21251, -- Underbog Colossus
21218, -- Vashj'ir Honor Guard

19514, -- Al'ar
20043, -- Apprentice Star Scryer
20033, -- Astromancer
20046, -- Astromancer Lord
20031, -- Bloodwarder Legionnaire
20035, -- Bloodwarder Marshal
20036, -- Bloodwarder Squire
20032, -- Bloodwarder Vindicator
20047, -- Crimson Hand Battle Mage
20049, -- Crimson Hand Blood Knight
20048, -- Crimson Hand Centurion
20050, -- Crimson Hand Inquisitor
20040, -- Crystalcore Devastator
20052, -- Crystalcore Mechanic
20041, -- Crystalcore Sentinel
19551, -- Ember of Al'ar
20062, -- Grand Astromancer Capernian
18805, -- High Astromancer Solarian
20060, -- Lord Sanguinar
20063, -- Master Engineer Telonicus
20045, -- Nether Scryer
20044, -- Novice Astromancer
21362, -- Phoenix
20039, -- Phoenix-Hawk
20038, -- Phoenix-Hawk Hatchling
20034, -- Star Scryer
20037, -- Tempest Falconer
20064, -- Thaladred the Darkener
19516, -- Void Reaver

23398, -- Angered Soul Fragment
22878, -- Aqueous Lord
23216, -- Ashtongue Defender
23523, -- Ashtongue Elementalist
22849, -- Ashtongue Feral Spirit
22845, -- Ashtongue Mystic
23318, -- Ashtongue Rogue
23524, -- Ashtongue Spiritbinder
23374, -- Ashtongue Stalker
22846, -- Ashtongue Stormcaller
23196, -- Bonechewer Behemoth
23235, -- Bonechewer Blade Fury
23237, -- Bonechewer Blood Prophet
23222, -- Bonechewer Brawler
23239, -- Bonechewer Combatant
23236, -- Bonechewer Shield Disciple
23223, -- Bonechewer Spectator
23028, -- Bonechewer Taskmaster
22963, -- Bonechewer Worker
22955, -- Charming Courtesan
22873, -- Coilskar General
22874, -- Coilskar Harpooner
22875, -- Coilskar Sea-Caller
22876, -- Coilskar Soothsayer
22877, -- Coilskar Wrangler
22885, -- Dragon Turtle
23030, -- Dragonmaw Sky Stalker
23330, -- Dragonmaw Wind Reaver
22960, -- Dragonmaw Wyrmcaller
23420, -- Essence of Anger
23418, -- Essence of Suffering
22997, -- Flame of Azzinoth
22949, -- Gathios the Shatterer
22948, -- Gurtogg Bloodboil
23172, -- Hand of Gorefiend
22950, -- High Nethermancer Zerevor
22887, -- High Warlord Naj'entus
22917, -- Illidan Stormrage
23400, -- Illidari Archon
23403, -- Illidari Assassin
23402, -- Illidari Battle-mage
23397, -- Illidari Blood Lord
22869, -- Illidari Boneslicer
23337, -- Illidari Centurion
22853, -- Illidari Defiler
22954, -- Illidari Fearbringer
23339, -- Illidari Heartseeker
22855, -- Illidari Nightlord
23436, -- Image of Dementia
22884, -- Leviathan
22947, -- Mother Shahraz
22962, -- Priestess of Delight
23394, -- Promenade Sentinel
23375, -- Shadow Demon
22841, -- Shade of Akama
22945, -- Shadowmoon Blood Mage
22882, -- Shadowmoon Deathshaper
23147, -- Shadowmoon Grunt
22879, -- Shadowmoon Reaver
23083, -- Shadowmoon Riding Hound
23047, -- Shadowmoon Soldier
22898, -- Supremus
22939, -- Temple Concubine
22871, -- Teron Gorefiend
22953, -- Wrathbone Flayer

25593, -- Apocalypse Guard
24882, -- Brutallus
25599, -- Cataclysm Hound
25595, -- Chaos Gazer
25592, -- Doomfire Destroyer
25840, -- Entropius
25038, -- Felmyst
25166, -- Grand Warlock Alythess
24850, -- Kalecgos
25315, -- Kil'jaeden
25165, -- Lady Sacrolash
25741, -- M'uru
25591, -- Painbringer
25509, -- Priestess of Torment
24892, -- Sathrovarr the Corruptor
25837, -- Shadowsword Commander
25485, -- Shadowsword Deathbringer
25508, -- Shadowsword Guardian
25506, -- Shadowsword Lifeshaper
25483, -- Shadowsword Manafiend
25373, -- Shadowsword Soulbinder
25486, -- Shadowsword Vanquisher
25502, -- Shield Orb
25367, -- Sunblade Arch Mage
25363, -- Sunblade Cabalist
25370, -- Sunblade Dusk Priest
25507, -- Sunblade Protector
25372, -- Sunblade Scout
25368, -- Sunblade Slayer
25369, -- Sunblade Vindicator
25772, -- Void Sentinel
25598, -- Volatile Felfire Fiend
25851 -- Volatile Fiend
);

-- SAPPED [3 spells] (Rogue Sap only)
UPDATE creature_template SET MechanicImmuneMask=MechanicImmuneMask|536870912 WHERE entry IN (
18836, -- Blindeye the Seer
18831, -- High King Maulgar
18835, -- Kiggler the Crazed
18832, -- Krosh Firehand
19389, -- Lair Brute
18834, -- Olm the Summoner

17256, -- Hellfire Channeler
18829, -- Hellfire Warder

21221, -- Coilfang Beast-Tamer
21299, -- Coilfang Fathom-Witch
21339, -- Coilfang Hate-Screamer
21298, -- Coilfang Serpentguard
21301, -- Coilfang Shatterer
21214, -- Fathom-Lord Karathress
21964, -- Fathom-Guard Caribdis
21966, -- Fathom-Guard Sharkkis
21965, -- Fathom-Guard Tidalvess
21806, -- Greyheart Spellbinder
21216, -- Hydross the Unstable
21212, -- Lady Vashj
21215, -- Leotheras the Blind
21875, -- Shadow of Leotheras
21224, -- Tidewalker Depth-Seer
21227, -- Tidewalker Harpooner
21228, -- Tidewalker Hydromancer
21226, -- Tidewalker Shaman
21218, -- Vashj'ir Honor Guard

20046, -- Astromancer Lord
20035, -- Bloodwarder Marshal
20036, -- Bloodwarder Squire
20032, -- Bloodwarder Vindicator
20049, -- Crimson Hand Blood Knight
20062, -- Grand Astromancer Capernian
18805, -- High Astromancer Solarian
19622, -- Kael'thas Sunstrider
20060, -- Lord Sanguinar
20063, -- Master Engineer Telonicus
20045, -- Nether Scryer
20037, -- Tempest Falconer
20064, -- Thaladred the Darkener

22844, -- Ashtongue Battlelord
22847, -- Ashtongue Primalist
23196, -- Bonechewer Behemoth
23222, -- Bonechewer Brawler
23239, -- Bonechewer Combatant
23028, -- Bonechewer Taskmaster
22955, -- Charming Courtesan
22873, -- Coilskar General
22877, -- Coilskar Wrangler
23030, -- Dragonmaw Sky Stalker
23330, -- Dragonmaw Wind Reaver
22960, -- Dragonmaw Wyrmcaller
22965, -- Enslaved Servant
22949, -- Gathios the Shatterer
22948, -- Gurtogg Bloodboil
23172, -- Hand of Gorefiend
22950, -- High Nethermancer Zerevor
22887, -- High Warlord Naj'entus
23397, -- Illidari Blood Lord
22951, -- Lady Malande
22880, -- Shadowmoon Champion
23018, -- Shadowmoon Houndmaster
23049, -- Shadowmoon Weapon Master
22959, -- Spellbound Attendant
22939, -- Temple Concubine
22952, -- Veras Darkshadow

25588, -- Hand of the Deceiver
25837, -- Shadowsword Commander
25373, -- Shadowsword Soulbinder
25372 -- Sunblade Scout
);

-- ===========
-- EXTRA FLAGS
-- ===========

-- NOT_TAUNTABLE
UPDATE creature_template SET ExtraFlags=ExtraFlags|256 WHERE entry IN (
19044, -- Gruul the Dragonkiller

17257, -- Magtheridon

21214, -- Fathom-Lord Karathress
21964, -- Fathom-Guard Caribdis
21966, -- Fathom-Guard Sharkkis
21965, -- Fathom-Guard Tidalvess
21216, -- Hydross the Unstable
21215, -- Leotheras the Blind
21213, -- Morogrim Tidewalker
22250, -- Rancid Mushroom
21875, -- Shadow of Leotheras
21251, -- Underbog Colossus

20062, -- Grand Astromancer Capernian
19622, -- Kael'thas Sunstrider
20060, -- Lord Sanguinar
20063, -- Master Engineer Telonicus
21362, -- Phoenix
20064, -- Thaladred the Darkener
19516, -- Void Reaver

23398, -- Angered Soul Fragment
22878, -- Aqueous Lord
23028, -- Bonechewer Taskmaster
22873, -- Coilskar General
22877, -- Coilskar Wrangler 
23030, -- Dragonmaw Sky Stalker
23330, -- Dragonmaw Wind Reaver
22960, -- Dragonmaw Wyrmcaller
23419, -- Essence of Desire
23418, -- Essence of Suffering
22949, -- Gathios the Shatterer
22948, -- Gurtogg Bloodboil
23172, -- Hand of Gorefiend
22950, -- High Nethermancer Zerevor
22887, -- High Warlord Naj'entus
22917, -- Illidan Stormrage
22954, -- Illidari Fearbringer
22855, -- Illidari Nightlord
22951, -- Lady Malande
22884, -- Leviathan
22947, -- Mother Shahraz
22841, -- Shade of Akama
22898, -- Supremus
22871, -- Teron Gorefiend
22953, -- Wrathbone Flayer

25840, -- Entropius
25038, -- Felmyst
25166, -- Grand Warlock Alythess
25315, -- Kil'jaeden
25165, -- Lady Sacrolash
25741, -- M'uru
25508, -- Shadowsword Guardian
25502, -- Shield Orb
25772 -- Void Sentinel
);

-- HASTE IMMUNE [2 spells] (Curse of Tongues, Mind-numbing Poison)
UPDATE creature_template SET ExtraFlags=ExtraFlags|4194304 WHERE entry IN(
21350, -- Gronn-Priest
19044, -- Gruul the Dragonkiller
18831, -- High King Maulgar
18835, -- Kiggler the Crazed
18832, -- Krosh Firehand
19389, -- Lair Brute
18834, -- Olm the Summoner

17257, -- Magtheridon

21221, -- Coilfang Beast-Tamer
22055, -- Coilfang Elite
21299, -- Coilfang Fathom-Witch
21339, -- Coilfang Hate-Screamer
21298, -- Coilfang Serpentguard
21301, -- Coilfang Shatterer
22347, -- Colossus Lurker
22119, -- Fathom Lurker
22120, -- Fathom Sporebat
21214, -- Fathom-Lord Karathress
21966, -- Fathom-Guard Sharkkis
21965, -- Fathom-Guard Tidalvess
21806, -- Greyheart Spellbinder
21216, -- Hydross the Unstable
21212, -- Lady Vashj
21215, -- Leotheras the Blind
21213, -- Morogrim Tidewalker
22250, -- Rancid Mushroom
21875, -- Shadow of Leotheras
21217, -- The Lurker Below
21224, -- Tidewalker Depth-Seer
21227, -- Tidewalker Harpooner
21226, -- Tidewalker Shaman
21251, -- Underbog Colossus
21218, -- Vashj'ir Honor Guard

19514, -- Al'ar
20046, -- Astromancer Lord
20035, -- Bloodwarder Marshal
20036, -- Bloodwarder Squire
20032, -- Bloodwarder Vindicator
20049, -- Crimson Hand Blood Knight
20040, -- Crystalcore Devastator
20052, -- Crystalcore Mechanic
20041, -- Crystalcore Sentinel
20062, -- Grand Astromancer Capernian
18805, -- High Astromancer Solarian
19622, -- Kael'thas Sunstrider
20060, -- Lord Sanguinar
20063, -- Master Engineer Telonicus
20045, -- Nether Scryer
21362, -- Phoenix
20039, -- Phoenix-Hawk
20037, -- Tempest Falconer
20064, -- Thaladred the Darkener
19516, -- Void Reaver

23398, -- Angered Soul Fragment
22878, -- Aqueous Lord
23216, -- Ashtongue Defender
23196, -- Bonechewer Behemoth
23222, -- Bonechewer Brawler
23239, -- Bonechewer Combatant
23028, -- Bonechewer Taskmaster
22955, -- Charming Courtesan
22873, -- Coilskar General
22877, -- Coilskar Wrangler
23030, -- Dragonmaw Sky Stalker
23330, -- Dragonmaw Wind Reaver
22960, -- Dragonmaw Wyrmcaller
23420, -- Essence of Anger
23418, -- Essence of Suffering
22997, -- Flame of Azzinoth
22949, -- Gathios the Shatterer
22948, -- Gurtogg Bloodboil
23172, -- Hand of Gorefiend
22950, -- High Nethermancer Zerevor
22887, -- High Warlord Naj'entus
22917, -- Illidan Stormrage
23397, -- Illidari Blood Lord
23337, -- Illidari Centurion
22954, -- Illidari Fearbringer
22855, -- Illidari Nightlord
23436, -- Image of Dementia
22884, -- Leviathan
22947, -- Mother Shahraz
22962, -- Priestess of Delight
23394, -- Promenade Sentinel
22841, -- Shade of Akama
22880, -- Shadowmoon Champion
22898, -- Supremus
22939, -- Temple Concubine
22871, -- Teron Gorefiend
22952, -- Veras Darkshadow
22953, -- Wrathbone Flayer

25593, -- Apocalypse Guard
24882, -- Brutallus
25599, -- Cataclysm Hound
25595, -- Chaos Gazer
25592, -- Doomfire Destroyer
25840, -- Entropius
25038, -- Felmyst
25166, -- Grand Warlock Alythess
25588, -- Hand of the Deceiver
24850, -- Kalecgos
25315, -- Kil'jaeden
25165, -- Lady Sacrolash
25741, -- M'uru
24892, -- Sathrovarr the Corruptor
25837, -- Shadowsword Commander
25508, -- Shadowsword Guardian
25373, -- Shadowsword Soulbinder
25502, -- Shield Orb
25708, -- Sinister Reflection
25507, -- Sunblade Protector
25372, -- Sunblade Scout
25772, -- Void Sentinel
25598, -- Volatile Felfire Fiend
25851 -- Volatile Fiend
);
