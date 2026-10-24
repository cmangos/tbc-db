-- Add SPELL_AURA_HASTE_SPELLS Immunity
REPLACE INTO `creature_immunities` SELECT `entry`, 0, 1, 216 FROM `creature_template` WHERE `entry` IN (
-- Auchindoun
18431,18344,18341,18343,20254,20266,20267,20268,22930, -- Mana-Tombs (Ethereal Beacon, Nexus-Prince Shaffar, Pandemonius, Tavarok, Yor)
18472,18473,23035,20690,20706, -- Sethekk Halls (Darkweaver Syth, Talon King Ikiss, Anzu)
18478,18373,18506,18371,18441,20303,20306,20316,20318,20305, -- Auchenai Crypts (Avatar of the Martyred, Exarch Maladaar, Raging Soul, Shirrak the Dead Watcher, Stolen Soul)
18667,18796,18732,18848,18708,20637,20652,20653,20656,20657, -- Shadow Labyrinth (Blackheart the Inciter, Fel Overseer, Grandmaster Vorpil, Malicious Instructor, Murmur)
-- Coilfang
17941,17942,17991,19893,19894,19895, -- Slave Pens (Mennu the Betrayer, Quagmirran, Rokmar the Crackler)
17723,17827,18105,17770,17826,17882,17734,17990,20164,20165,20168,20169,20183,20184,20187,20189, -- Underbog (Bog Giant, Claw, Ghaz'an, Hungarfen, Swamplord Musel'ek, The Black Stalker, Underbog Lord, Underbog Mushroom)
21694,17797,17796,17798,21914,20629,20630,20633, -- Steamvault (Bog Overlord, Hydromancer Thespia, Mekgineer Steamrigger, Warlord Kalithresh)
-- Hellfire Citadel
17536,17308,17537,17306,18432,18433,18434,18436, -- Ramparts (Nazan, Omor the Unscarred, Vazruden, Watchkeeper Gargolmar)
17380,17377,17381,18601,18607,18621, -- Blood Furnace (Broggok, Keli'dan the Breaker, The Maker)
16807,16809,16808,20923,20992,20993,20568,20596,20597, -- Shattered Halls (Blood Guard Porung, Grand Warlock Nethekurse, Warbringer O'mrogg, Warchief Kargath Bladefist)
-- Caverns of Time
17862,28132,18096,17848,20521,28171,20531,20535, -- Old Hillsbrad Foothills (Captain Skarloc, Don Carlos, Epoch Hunter, Lieutenant Drake)
17881,17879,21104,17839,17880,20737,20738,22170,20744,20745,21148,22171,21140,22172, -- Black Morass (Aeonus, Chrono Lord Deja, Rift Keeper, Rift Lord, Temporus)
-- Tempest Keep
19218,19710,19219,19221,19220,21537,20481,19735,19166,21543,21525,21526,21533,21536,21538,21542, -- Mechanar (Gatewatcher Gyro-Kill, Gatewatcher Iron-Hand, Mechano-Lord Capacitus, Nethermancer Sepethrea, Pathaleon the Calculator, Raging Flames, Tempest-Forge Destroyer)
17976,17975,19513,19598,19865,18405,21578,17978,17977,21551,21558,21560,21561,21562,21581,21582, -- Botanica (Commander Sarannis, High Botanist Freywinn, Mutate Fear-Shrieker, Mutate Fleshlasher, Mutate Horror, Tempest-Forge Peacekeeper, Thorngrin the Tender, Warp Splinter)
20908,20911,20905,20867,20868,20880,20879,20912,21466,21467,20906,20864,20901,20902,20882,20866,20883,20909,20910,20881,20900,20886,20870, -- Arcatraz Normal (Akkiris Lightning-Waker, Blackwing Drakonaar, Blazing Trickster, Death Watcher, Entropic Eye, Eredar Deathbringer, Eredar Soul-Eater, Harbinger Skyriss, Phase-Hunter, Protean Nightmare, Zereketh the Unbound)
21617,21588,21589,21591,21593,21594,21595,21599,21600,21601,21606,21608,21610,21611,21613,21614,21615,21616,21618,21619,21621,21624,21626, -- Arcatraz Heroic (Sargeron Archer, Sargeron Hellcaller, Skulking Witch, Soul Devourer, Spiteful Temptress, Sulfuron Magma-Thrower, Twilight Drakonaar, Unbound Devastator, Unchained Doombringer, Wrath-Scryer Soccothrates)
-- Karazhan
16488,16504,16485,17096,17283,16152,16489,17248,17535,16545,16544,16595,16470,16414,16596,16179,17534,16457,16529,16491,16151,15687,15689,
17225,16472,16408,15690,17546,16181,17533,16524,16540,16180,16471,16526,16473,16410,17543,15688,17521,18168,15691,17547,17548,16482,  -- + Mana Feeder
-- Gruul
21350,19044,18831,18835,18832,19389,18834, -- + 0
-- Magtheridon
17257, -- + 0
-- SSC
21221,22055,21299,21339,21298,21301,22347,21958,22119,22120,21214,21966,21965,21230,21231,21232,21806,21229,21216,21212,21215,21213,22250,21863,21875,22009,21217,21224,21227,21226,21225,21251,21218, -- + Tidewalker Warrior, Greyheart Tidecaller, Greyheart Shield-Bearer, Greyheart Skulker, Serpentshrine Lurker, Enchanted Elemental, Tainted Elemental
-- TK
19514,20043,20033,20046,20031,20035,20036,20032,20047,20049,20048,20050,20040,20052,20041,19551,20062,18805,19622,20060,20063,20045,20044,21362,20039,20038,20034,20037,20064,19516, -- + Ember of Al'ar, Bloodwarder Legionnaire, Phoenix-Hawk Hatchling, Apprentice Star Scryer, Novice Astromancer, Crimson Hand Battle Mage, Crimson Hand Centurion, Crimson Hand Inquisitor
-- MH
17808,17968,17842,17907,17888,17864,17767,17818, -- + 0
-- BT
23398,22878,22844,23421,23216,23523,22849,22845,22847,23318,23215,23524,23374,22846,23196,23235,23237,23222,23239,23236,23223,23028,22963,22955,22873,22874,22875,22876,22877,22885,23030,23330,22960,
22965,23420,23418,22997,22949,22948,23172,22950,22887,22917,23400,23403,23402,22869,23337,22853,22954,23339,22855,23436,22884,22947,22962,22957,23394,23375,22841,22945,22880,22882,23147,23018,22879,
23083,23047,23049,22956,22964,22898,22959,23399,22939,22871,22952,22953, -- +
-- Ashtongue Battlelord,Ashtongue Mystic,Ashtongue Stormcaller,Ashtongue Primalist,Ashtongue Feral Spirit,Illidari Defiler,Illidari Boneslicer,Coilskar Harpooner,Coilskar Soothsayer,Shadowmoon Reaver
-- Shadowmoon Deathshaper,Dragon Turtle,Shadowmoon Blood Mage,Sister of Pain,Priestess of Dementia,Spellbound Attendant,Bonechewer Worker,Enslaved Servant,Shadowmoon Houndmaster,Shadowmoon Soldier
-- Shadowmoon Weapon Master,Shadowmoon Riding Hound,Shadowmoon Grunt,Ashtongue Sorcerer,Bonechewer Spectator,Bonechewer Blade Fury,Bonechewer Shield Disciple,Bonechewer Blood Prophet,Ashtongue Rogue
-- Illidari Heartseeker,Ashtongue Stalker,Shadow Demon,Suffering Soul Fragment,Illidari Archon,Illidari Battle-mage,Illidari Assassin,Ashtongue Channeler,Ashtongue Elementalist,Ashtongue Spiritbinder
-- ZA - missing pre cata research
-- SWP
24850,24892,24882,25038,25165,25166,25741,25840,25772,25315,25598,25708,25502,25363,25367,25368,25369,25370,25371,25372,25483,25484,25485,25486,25506,25507,25508,25509,25591,25597,25851); -- +
-- Sunblade Cabalist,Sunblade Arch Mage,Sunblade Slayer,Sunblade Vindicator,Sunblade Dusk Priest,Sunblade Dawn Priest
-- Shadowsword Manafiend,Shadowsword Assassin,Shadowsword Deathbringer,Shadowsword Vanquisher,Shadowsword Lifeshaper,Priestess of Torment,Painbringer,Oblivion Mage

