-- ----------
-- IMMUNITIES
-- ----------

-- =======================================================================================
-- Add missing MechanicImmuneMask
-- =======================================================================================

-- MECHANIC_CHARM 1 [44 spells] (Mind Control, Enslave Demon, Dominate Mind, Seduction, etc.)
UPDATE creature_template SET MechanicImmuneMask=MechanicImmuneMask|1 WHERE entry IN (
17309,18058, -- Hellfire Watcher
22009, -- Tainted Elemental
22056, -- Coilfang Strider
20545, -- Tarren Mill Guardsman (1)
20547, -- Tarren Mill Protector (1)
21522, -- Bloodwarder Centurion (1)
21524, -- Bloodwarder Slayer (1)
21525, -- Gatewatcher Gyro-Kill (1)
21526, -- Gatewatcher Iron-Hand (1)
21527, -- Mechanar Crusher (1)
21528, -- Mechanar Driller (1)
21532, -- Mechanar Wrecker (1)
21536, -- Nethermancer Sepethrea (1)
21537, -- Pathaleon the Calculator (1)
21538, -- Raging Flames (1)
21545, -- Bloodwarder Falconer (1)
21548, -- Bloodwarder Protector (1)
21549, -- Bloodwarder Steward (1)
21551, -- Commander Sarannis (1)
21558, -- High Botanist Freywinn (1)
21563, -- Nethervine Inciter (1)
21564, -- Nethervine Reaper (1)
21565, -- Nethervine Trickster (1)
21571, -- Sunseeker Channeler (1)
21574, -- Sunseeker Geomancer (1)
21575, -- Sunseeker Harvester (1)
21576, -- Sunseeker Herbalist (1)
21581, -- Thorngrin the Tender (1)
21585, -- Arcatraz Defender (1)
21589, -- Blazing Trickster (1)
21590, -- Dalliah the Doomsayer (1)
21591, -- Death Watcher (1)
21592, -- Defender Corpse (1)
21593, -- Entropic Eye (1)
21594, -- Eredar Deathbringer (1)
21595, -- Eredar Soul-Eater (1)
22346, -- Ethereum Life-Binder (1)
21596, -- Ethereum Slayer (1)
21597, -- Ethereum Wave-Caster (1)
21598, -- Gargantuan Abyssal (1)
21599, -- Harbinger Skyriss (1)
21604, -- Negaton Screamer (1)
21605, -- Negaton Warp-Master (1)
21610, -- Sargeron Archer (1)
21611, -- Sargeron Hellcaller (1)
20882,21613, -- Skulking Witch
21614, -- Soul Devourer (1)
21615, -- Spiteful Temptress (1)
21616, -- Sulfuron Magma-Thrower (1)
21619, -- Unbound Devastator (1)
21621, -- Unchained Doombringer (1)
21623, -- Warder Corpse (1)
21624, -- Wrath-Scryer Soccothrates (1)
21626, -- Zereketh the Unbound (1)
18048, -- Bleeding Hollow Archer (1)
18051, -- Bonechewer Beastmaster (1)
18052, -- Bonechewer Destroyer (1)
18053, -- Bonechewer Hungerer (1)
18055, -- Bonechewer Ripper (1)
18057, -- Hellfire Sentry (1)
18432, -- Nazan (1)
18433, -- Omor the Unscarred (1)
18434, -- Vazruden (1)
18436, -- Watchkeeper Gargolmar (1)
18601, -- Broggok (1)
18603, -- Fel Orc Neophyte (1)
18604, -- Felguard Annihilator (1)
21645, -- Felguard Brute (1)
18607, -- Keli'dan the Breaker (1)
18608, -- Laughing Skull Enforcer (1)
18609, -- Laughing Skull Legionnaire (1)
18615, -- Shadowmoon Adept (1)
18621, -- The Maker (1)
20992, -- Blood Guard Porung (1)
20568, -- Grand Warlock Nethekurse (1)
20580, -- Shattered Hand Assassin (1)
20582, -- Shattered Hand Brawler (1)
20583, -- Shattered Hand Centurion (1)
20584, -- Shattered Hand Champion (1)
20585, -- Shattered Hand Executioner (1)
20586, -- Shattered Hand Gladiator (1)
20587, -- Shattered Hand Heathen (1)
20588, -- Shattered Hand Houndmaster (1)
20589, -- Shattered Hand Legionnaire (1)
20590, -- Shattered Hand Reaver (1)
20591, -- Shattered Hand Savage (1)
20593, -- Shattered Hand Sentry (1)
20594, -- Shattered Hand Sharpshooter (1)
20595, -- Shattered Hand Zealot (1)
20596, -- Warbringer O'mrogg (1)
20597, -- Warchief Kargath Bladefist (1)
19884, -- Bogstrok (1)
19885, -- Coilfang Champion (1)
19903, -- Coilfang Collaborator (1)
19886, -- Coilfang Defender (1)
19887, -- Coilfang Enchantress (1)
19888, -- Coilfang Observer (1)
21841, -- Coilfang Ray (1)
19889, -- Coilfang Slavehandler (1)
21843, -- Coilfang Tempest (1)
19892, -- Greater Bogstrok (1)
19893, -- Mennu the Betrayer (1)
19894, -- Quagmirran (1)
19895, -- Rokmar the Crackler (1)
20183, -- Swamplord Musel'ek (1)
20191, -- Wrathfin Myrmidon (1)
20192, -- Wrathfin Sentry (1)
20621, -- Coilfang Myrmidon (1)
20624, -- Coilfang Slavemaster (1)
20626, -- Coilfang Warrior (1)
20628, -- Dreghood Slave (1)
20629, -- Hydromancer Thespia (1)
20633, -- Warlord Kalithresh (1)
20521, -- Captain Skarloc (1)
28171, -- Don Carlos (1)
20527, -- Durnholde Sentry (1)
20529, -- Durnholde Veteran (1)
20535, -- Lieutenant Drake (1)
20538, -- Lordaeron Watchman (1)
23181, -- Tarren Mill Guardsman (1)
23185, -- Tarren Mill Protector (1)
20253, -- Ethereal Apprentice (1)
20255, -- Ethereal Crypt Raider (1)
20256, -- Ethereal Darkcaster (1)
20257, -- Ethereal Priest (1)
20258, -- Ethereal Scavenger (1)
20259, -- Ethereal Sorcerer (1)
20260, -- Ethereal Spellbinder (1)
20261, -- Ethereal Theurgist (1)
20266, -- Nexus-Prince Shaffar (1)
20264, -- Nexus Stalker (1)
20265, -- Nexus Terror (1)
20267, -- Pandemonius (1)
20690, -- Darkweaver Syth (1)
20692, -- Sethekk Guard (1)
20693, -- Sethekk Initiate (1)
20695, -- Sethekk Prophet (1)
20696, -- Sethekk Ravenguard (1)
20699, -- Sethekk Shaman (1)
20701, -- Sethekk Talon Lord (1)
20706, -- Talon King Ikiss (1)
20299, -- Auchenai Monk (1)
20306, -- Exarch Maladaar (1)
20636, -- Ambassador Hellmaw (1)
20637, -- Blackheart the Inciter (1)
20639, -- Cabal Assassin (1)
20640, -- Cabal Cultist (1)
20641, -- Cabal Deathsworn (1)
20642, -- Cabal Executioner (1)
20644, -- Cabal Fanatic (1)
20645, -- Cabal Ritualist (1)
20652, -- Fel Overseer (1)
20653, -- Grandmaster Vorpil (1)
20656, -- Malicious Instructor (1)
20664, -- Void Traveler (1)
21865, -- Coilfang Ambusher
21873, -- Coilfang Guardian
21232, -- Greyheart Skulker
21263, -- Greyheart Technician
21229, -- Greyheart Tidecaller
20031, -- Bloodwarder Legionnaire
20047, -- Crimson Hand Battle Mage
20048, -- Crimson Hand Centurion
28126 -- Don Carlos
);

-- MECHANIC_DISORIENTED 2 [3 spells] (Blind)
UPDATE creature_template SET MechanicImmuneMask=MechanicImmuneMask|2 WHERE entry IN (
23122, -- Anzu (1)
21525, -- Gatewatcher Gyro-Kill (1)
21526, -- Gatewatcher Iron-Hand (1)
21533, -- Mechano-Lord Capacitus (1)
21536, -- Nethermancer Sepethrea (1)
21537, -- Pathaleon the Calculator (1)
21538, -- Raging Flames (1)
21542, -- Tempest-Forge Destroyer (1)
21543, -- Tempest-Forge Patroller (1)
21551, -- Commander Sarannis (1)
21558, -- High Botanist Freywinn (1)
21559, -- Laj (1)
21560, -- Mutate Fear-Shrieker (1)
21561, -- Mutate Fleshlasher (1)
21562, -- Mutate Horror (1)
21574, -- Sunseeker Geomancer (1)
21578, -- Tempest-Forge Peacekeeper (1)
21581, -- Thorngrin the Tender (1)
21582, -- Warp Splinter  (1)
21617, -- Akkiris Lightning-Waker (1)
21586, -- Arcatraz Sentinel (1)
21588, -- Blackwing Drakonaar (1)
21589, -- Blazing Trickster (1)
21590, -- Dalliah the Doomsayer (1)
21591, -- Death Watcher (1)
21593, -- Entropic Eye (1)
21594, -- Eredar Deathbringer (1)
21595, -- Eredar Soul-Eater (1)
21598, -- Gargantuan Abyssal (1)
21599, -- Harbinger Skyriss (1)
21604, -- Negaton Screamer (1)
21605, -- Negaton Warp-Master (1)
21606, -- Phase-Hunter (1)
21608, -- Protean Nightmare (1)
21610, -- Sargeron Archer (1)
21611, -- Sargeron Hellcaller (1)
20882,21613, -- Skulking Witch
21614, -- Soul Devourer (1)
21615, -- Spiteful Temptress (1)
21616, -- Sulfuron Magma-Thrower (1)
21618, -- Twilight Drakonaar (1)
21619, -- Unbound Devastator (1)
21621, -- Unchained Doombringer (1)
21623, -- Warder Corpse (1)
21624, -- Wrath-Scryer Soccothrates (1)
21626, -- Zereketh the Unbound (1)
18051, -- Bonechewer Beastmaster (1)
18055, -- Bonechewer Ripper (1)
18432, -- Nazan (1)
18433, -- Omor the Unscarred (1)
18434, -- Vazruden (1)
18436, -- Watchkeeper Gargolmar (1)
18601, -- Broggok (1)
18607, -- Keli'dan the Breaker (1)
18621, -- The Maker (1)
20992, -- Blood Guard Porung (1)
20568, -- Grand Warlock Nethekurse (1)
20583, -- Shattered Hand Centurion (1)
20584, -- Shattered Hand Champion (1)
20588, -- Shattered Hand Houndmaster (1)
20589, -- Shattered Hand Legionnaire (1)
20596, -- Warbringer O'mrogg (1)
20597, -- Warchief Kargath Bladefist (1)
19886, -- Coilfang Defender (1)
19893, -- Mennu the Betrayer (1)
19894, -- Quagmirran (1)
19895, -- Rokmar the Crackler (1)
20164, -- Bog Giant (1)
20165, -- Claw (1)
20173, -- Fen Ray (1)
20168, -- Ghaz'an (1)
20169, -- Hungarfen (1)
22300, -- Spore Strider (1)
20183, -- Swamplord Musel'ek (1)
20184, -- The Black Stalker (1)
20187, -- Underbog Lord (1)
20189, -- Underbog Mushroom (1)
21914, -- Bog Overlord (1)
20629, -- Hydromancer Thespia (1)
20630, -- Mekgineer Steamrigger (1)
20631, -- Naga Distiller (1)
20633, -- Warlord Kalithresh (1)
20521, -- Captain Skarloc (1)
28171, -- Don Carlos (1)
20531, -- Epoch Hunter (1)
20535, -- Lieutenant Drake (1)
20737, -- Aeonus (1)
20738, -- Chrono Lord Deja (1)
22170, -- Rift Keeper (1)
20744, -- Rift Lord (1)
20745, -- Temporus (1)
20254, -- Ethereal Beacon (1)
20266, -- Nexus-Prince Shaffar (1)
20265, -- Nexus Terror (1)
20267, -- Pandemonius (1)
20268, -- Tavarok (1)
23035, -- Anzu (1)
20688, -- Cobalt Serpent (1)
20690, -- Darkweaver Syth (1)
20692, -- Sethekk Guard (1)
20696, -- Sethekk Ravenguard (1)
20706, -- Talon King Ikiss (1)
20299, -- Auchenai Monk (1)
20303, -- Avatar of the Martyred (1)
20306, -- Exarch Maladaar (1)
20309, -- Phantasmal Possessor (1)
20316, -- Raging Soul (1)
20318, -- Shirrak the Dead Watcher (1)
20305, -- Stolen Soul (1)
20636, -- Ambassador Hellmaw (1)
20637, -- Blackheart the Inciter (1)
20652, -- Fel Overseer (1)
20653, -- Grandmaster Vorpil (1)
20656, -- Malicious Instructor (1)
20657, -- Murmur (1)
23775, -- Head of the Horseman
23682, -- Headless Horseman
22056, -- Coilfang Strider
22347, -- Colossus Lurker
22352, -- Colossus Rager
22009, -- Tainted Elemental
21270, -- Cosmic Infuser
20052, -- Crystalcore Mechanic
21269, -- Devastation
21271, -- Infinity Blades
21268, -- Netherstrand Longbow
21273, -- Phaseshift Bulwark
18806, -- Solarium Priest
21274, -- Staff of Disintegration
21272, -- Warp Slicer
28126 -- Don Carlos
);

-- MECHANIC_DISARM 4 [28 spells]
UPDATE creature_template SET MechanicImmuneMask=MechanicImmuneMask|4 WHERE entry IN (
15690, -- Prince Malchezaar
17306,18436, -- Watchkeeper Gargolmar
17308,18433, -- Omor the Unscarred
21212, -- Lady Vashj
22056, -- Coilfang Strider
23682 -- Headless Horseman
);

-- MECHANIC_DISTRACT 8 [5 spells]
UPDATE creature_template SET MechanicImmuneMask=MechanicImmuneMask|8 WHERE entry IN (
17306,18436, -- Watchkeeper Gargolmar
18433, -- Omor the Unscarred (1)
21542, -- Tempest-Forge Destroyer (1)
21560, -- Mutate Fear-Shrieker (1)
21561, -- Mutate Fleshlasher (1)
21562, -- Mutate Horror (1)
21586 -- Arcatraz Sentinel (1)
);

-- MECHANIC_FEAR 16 [100 spells] (Scare Beast, Fear, Psychic Scream, Howl of Terror, etc.)
UPDATE creature_template SET MechanicImmuneMask=MechanicImmuneMask|16 WHERE entry IN (
23122, -- Anzu (1)
21525, -- Gatewatcher Gyro-Kill (1)
21526, -- Gatewatcher Iron-Hand (1)
21533, -- Mechano-Lord Capacitus (1)
21536, -- Nethermancer Sepethrea (1)
21537, -- Pathaleon the Calculator (1)
21538, -- Raging Flames (1)
21542, -- Tempest-Forge Destroyer (1)
21543, -- Tempest-Forge Patroller (1)
21551, -- Commander Sarannis (1)
21558, -- High Botanist Freywinn (1)
21559, -- Laj (1)
21560, -- Mutate Fear-Shrieker (1)
21561, -- Mutate Fleshlasher (1)
21562, -- Mutate Horror (1)
21574, -- Sunseeker Geomancer (1)
21578, -- Tempest-Forge Peacekeeper (1)
21581, -- Thorngrin the Tender (1)
21582, -- Warp Splinter (1)
21617, -- Akkiris Lightning-Waker (1)
21586, -- Arcatraz Sentinel (1)
21588, -- Blackwing Drakonaar (1)
21589, -- Blazing Trickster (1)
21590, -- Dalliah the Doomsayer (1)
21591, -- Death Watcher (1)
21593, -- Entropic Eye (1)
21594, -- Eredar Deathbringer (1)
21595, -- Eredar Soul-Eater (1)
21598, -- Gargantuan Abyssal (1)
21599, -- Harbinger Skyriss (1)
21604, -- Negaton Screamer (1)
21605, -- Negaton Warp-Master (1)
21606, -- Phase-Hunter (1)
21608, -- Protean Nightmare (1)
21610, -- Sargeron Archer (1)
21611, -- Sargeron Hellcaller (1)
20882,21613, -- Skulking Witch
21614, -- Soul Devourer (1)
21615, -- Spiteful Temptress (1)
21616, -- Sulfuron Magma-Thrower (1)
21618, -- Twilight Drakonaar (1)
21619, -- Unbound Devastator (1)
21621, -- Unchained Doombringer (1)
21623, -- Warder Corpse (1)
21624, -- Wrath-Scryer Soccothrates (1)
21626, -- Zereketh the Unbound (1)
18051, -- Bonechewer Beastmaster (1)
18055, -- Bonechewer Ripper (1)
18432, -- Nazan (1)
18433, -- Omor the Unscarred (1)
18434, -- Vazruden (1)
18436, -- Watchkeeper Gargolmar (1)
18601, -- Broggok (1)
18607, -- Keli'dan the Breaker (1)
18621, -- The Maker (1)
20992, -- Blood Guard Porung (1)
20568, -- Grand Warlock Nethekurse (1)
20583, -- Shattered Hand Centurion (1)
20584, -- Shattered Hand Champion (1)
20588, -- Shattered Hand Houndmaster (1)
20589, -- Shattered Hand Legionnaire (1)
20596, -- Warbringer O'mrogg (1)
20597, -- Warchief Kargath Bladefist (1)
19886, -- Coilfang Defender (1)
19893, -- Mennu the Betrayer (1)
19894, -- Quagmirran (1)
19895, -- Rokmar the Crackler (1)
20164, -- Bog Giant (1)
20165, -- Claw (1)
20173, -- Fen Ray (1)
20168, -- Ghaz'an (1)
20169, -- Hungarfen (1)
22300, -- Spore Strider (1)
20183, -- Swamplord Musel'ek (1)
20184, -- The Black Stalker (1)
20187, -- Underbog Lord (1)
20189, -- Underbog Mushroom (1)
21914, -- Bog Overlord (1)
20629, -- Hydromancer Thespia (1)
20630, -- Mekgineer Steamrigger (1)
20631, -- Naga Distiller (1)
20633, -- Warlord Kalithresh (1)
20521, -- Captain Skarloc (1)
28171, -- Don Carlos (1)
20531, -- Epoch Hunter (1)
20535, -- Lieutenant Drake (1)
20737, -- Aeonus (1)
20738, -- Chrono Lord Deja (1)
22170, -- Rift Keeper (1)
20744, -- Rift Lord (1)
20745, -- Temporus (1)
20254, -- Ethereal Beacon (1)
20262, -- Ethereal Wraith (1)
20266, -- Nexus-Prince Shaffar (1)
20265, -- Nexus Terror (1)
20267, -- Pandemonius (1)
20268, -- Tavarok (1)
23035, -- Anzu (1)
20688, -- Cobalt Serpent (1)
20690, -- Darkweaver Syth (1)
20692, -- Sethekk Guard (1)
20696, -- Sethekk Ravenguard (1)
20706, -- Talon King Ikiss (1)
20691, -- Time-Lost Controller (1)
20697, -- Time-Lost Scryer (1)
20298, -- Angered Skeleton (1)
20299, -- Auchenai Monk (1)
20303, -- Avatar of the Martyred (1)
20306, -- Exarch Maladaar (1)
20309, -- Phantasmal Possessor (1)
20310, -- Phasing Cleric (1)
20311, -- Phasing Soldier (1)
20312, -- Phasing Sorcerer (1)
20313, -- Phasing Stalker (1)
20315, -- Raging Skeleton (1)
20316, -- Raging Soul (1)
20317, -- Reanimated Bones (1)
20318, -- Shirrak the Dead Watcher (1)
20305, -- Stolen Soul (1)
20320, -- Unliving Cleric (1)
20321, -- Unliving Soldier (1)
20322, -- Unliving Sorcerer (1)
20323, -- Unliving Stalker (1)
20636, -- Ambassador Hellmaw (1)
20637, -- Blackheart the Inciter (1)
20652, -- Fel Overseer (1)
20653, -- Grandmaster Vorpil (1)
20656, -- Malicious Instructor (1)
20657, -- Murmur (1)
20662, -- Tortured Skeleton (1)
20664, -- Void Traveler (1)
23775, -- Head of the Horseman
23682, -- Headless Horseman
22056, -- Coilfang Strider
22347, -- Colossus Lurker
22352, -- Colossus Rager
22009, -- Tainted Elemental
21270, -- Cosmic Infuser
20052, -- Crystalcore Mechanic
21269, -- Devastation
21271, -- Infinity Blades
21268, -- Netherstrand Longbow
21273, -- Phaseshift Bulwark
18806, -- Solarium Priest
21274, -- Staff of Disintegration
21272, -- Warp Slicer
28126 -- Don Carlos
);

-- MECHANIC_FUMBLE 32 [1 spell] (decreases target's chance to hit?)
-- UPDATE creature_template SET MechanicImmuneMask=MechanicImmuneMask|32 WHERE entry IN ();

-- MECHANIC_ROOT 64 [126 spells] (Entangling Roots, Frost Nova, Improved Wing Clip, various Net abilities)
UPDATE creature_template SET MechanicImmuneMask=MechanicImmuneMask|64 WHERE entry IN (
17455,18051, -- Bonechewer Beastmaster
17281,18055, -- Bonechewer Ripper
21525, -- Gatewatcher Gyro-Kill (1)
21526, -- Gatewatcher Iron-Hand (1)
21533, -- Mechano-Lord Capacitus (1)
21536, -- Nethermancer Sepethrea (1)
21537, -- Pathaleon the Calculator (1)
21543, -- Tempest-Forge Patroller (1)
21551, -- Commander Sarannis (1)
21558, -- High Botanist Freywinn (1)
21559, -- Laj (1)
21578, -- Tempest-Forge Peacekeeper (1)
21581, -- Thorngrin the Tender (1)
21582, -- Warp Splinter (1)
21588, -- Blackwing Drakonaar (1)
21589, -- Blazing Trickster (1)
21590, -- Dalliah the Doomsayer (1)
21591, -- Death Watcher (1)
21593, -- Entropic Eye (1)
21594, -- Eredar Deathbringer (1)
21595, -- Eredar Soul-Eater (1)
21598, -- Gargantuan Abyssal (1)
21599, -- Harbinger Skyriss (1)
21604, -- Negaton Screamer (1)
21605, -- Negaton Warp-Master (1)
21606, -- Phase-Hunter (1)
21608, -- Protean Nightmare (1)
21610, -- Sargeron Archer (1)
21611, -- Sargeron Hellcaller (1)
20882,21613, -- Skulking Witch
21614, -- Soul Devourer (1)
21615, -- Spiteful Temptress (1)
21616, -- Sulfuron Magma-Thrower (1)
21618, -- Twilight Drakonaar (1)
21619, -- Unbound Devastator (1)
21621, -- Unchained Doombringer (1)
21623, -- Warder Corpse (1)
21624, -- Wrath-Scryer Soccothrates (1)
21626, -- Zereketh the Unbound (1)
18054, -- Bonechewer Ravener (1)
18432, -- Nazan (1)
18433, -- Omor the Unscarred (1)
18434, -- Vazruden (1)
18436, -- Watchkeeper Gargolmar (1)
18601, -- Broggok (1)
18607, -- Keli'dan the Breaker (1)
18621, -- The Maker (1)
20992, -- Blood Guard Porung (1)
20568, -- Grand Warlock Nethekurse (1)
20569, -- Heathen Guard (1)
20575, -- Reaver Guard (1)
20578, -- Sharpshooter Guard (1)
20588, -- Shattered Hand Houndmaster (1)
20589, -- Shattered Hand Legionnaire (1)
20596, -- Warbringer O'mrogg (1)
20597, -- Warchief Kargath Bladefist (1)
19886, -- Coilfang Defender (1)
19893, -- Mennu the Betrayer (1)
19894, -- Quagmirran (1)
19895, -- Rokmar the Crackler (1)
20164, -- Bog Giant (1)
20165, -- Claw (1)
20173, -- Fen Ray (1)
20168, -- Ghaz'an (1)
20169, -- Hungarfen (1)
22300, -- Spore Strider (1)
20183, -- Swamplord Musel'ek (1)
20184, -- The Black Stalker (1)
20187, -- Underbog Lord (1)
20189, -- Underbog Mushroom (1)
21914, -- Bog Overlord (1)
20629, -- Hydromancer Thespia (1)
20630, -- Mekgineer Steamrigger (1)
20631, -- Naga Distiller (1)
20633, -- Warlord Kalithresh (1)
20521, -- Captain Skarloc (1)
28171, -- Don Carlos (1)
20531, -- Epoch Hunter (1)
20535, -- Lieutenant Drake (1)
20737, -- Aeonus (1)
20738, -- Chrono Lord Deja (1)
22170, -- Rift Keeper (1)
20744, -- Rift Lord (1)
20745, -- Temporus (1)
20254, -- Ethereal Beacon (1)
20266, -- Nexus-Prince Shaffar (1)
20265, -- Nexus Terror (1)
20267, -- Pandemonius (1)
20268, -- Tavarok (1)
23035, -- Anzu (1)
20688, -- Cobalt Serpent (1)
20690, -- Darkweaver Syth (1)
20706, -- Talon King Ikiss (1)
20303, -- Avatar of the Martyred (1)
20306, -- Exarch Maladaar (1)
20309, -- Phantasmal Possessor (1)
20316, -- Raging Soul (1)
20318, -- Shirrak the Dead Watcher (1)
20305, -- Stolen Soul (1)
20636, -- Ambassador Hellmaw (1)
20637, -- Blackheart the Inciter (1)
20652, -- Fel Overseer (1)
20653, -- Grandmaster Vorpil (1)
20656, -- Malicious Instructor (1)
20657, -- Murmur (1)
23775, -- Head of the Horseman
23682, -- Headless Horseman
21220, -- Coilfang Priestess
22347, -- Colossus Lurker
22352, -- Colossus Rager
20052, -- Crystalcore Mechanic
18806, -- Solarium Priest
28126 -- Don Carlos
);

-- MECHANIC_PACIFY 128 [0 spells]
-- UPDATE creature_template SET MechanicImmuneMask=MechanicImmuneMask|128 WHERE entry IN ();

-- MECHANIC_SILENCE 256 [55 spells] (Kick - Silenced, Counterspell - Silenced, Shield Bash - Silenced, Arcane Torrent, Spell Lock)
UPDATE creature_template SET MechanicImmuneMask=MechanicImmuneMask|256 WHERE entry IN (
17455,18051, -- Bonechewer Beastmaster
22056, -- Coilfang Strider
23122, -- Anzu (1)
21525, -- Gatewatcher Gyro-Kill (1)
21526, -- Gatewatcher Iron-Hand (1)
21533, -- Mechano-Lord Capacitus (1)
21536, -- Nethermancer Sepethrea (1)
21537, -- Pathaleon the Calculator (1)
21538, -- Raging Flames (1)
21542, -- Tempest-Forge Destroyer (1)
21551, -- Commander Sarannis (1)
21558, -- High Botanist Freywinn (1)
21559, -- Laj (1)
21560, -- Mutate Fear-Shrieker (1)
21561, -- Mutate Fleshlasher (1)
21562, -- Mutate Horror (1)
21581, -- Thorngrin the Tender (1)
21582, -- Warp Splinter (1)
21617, -- Akkiris Lightning-Waker (1)
21588, -- Blackwing Drakonaar (1)
21589, -- Blazing Trickster (1)
21590, -- Dalliah the Doomsayer (1)
21591, -- Death Watcher (1)
21593, -- Entropic Eye (1)
21594, -- Eredar Deathbringer (1)
21595, -- Eredar Soul-Eater (1)
21598, -- Gargantuan Abyssal (1)
21599, -- Harbinger Skyriss (1)
21604, -- Negaton Screamer (1)
21605, -- Negaton Warp-Master (1)
21606, -- Phase-Hunter (1)
21608, -- Protean Nightmare (1)
21610, -- Sargeron Archer (1)
21611, -- Sargeron Hellcaller (1)
20882,21613, -- Skulking Witch
21614, -- Soul Devourer (1)
21615, -- Spiteful Temptress (1)
21616, -- Sulfuron Magma-Thrower (1)
21618, -- Twilight Drakonaar (1)
21619, -- Unbound Devastator (1)
21621, -- Unchained Doombringer (1)
21623, -- Warder Corpse (1)
21624, -- Wrath-Scryer Soccothrates (1)
21626, -- Zereketh the Unbound (1)
18432, -- Nazan (1)
18433, -- Omor the Unscarred (1)
18434, -- Vazruden (1)
18436, -- Watchkeeper Gargolmar (1)
18601, -- Broggok (1)
18607, -- Keli'dan the Breaker (1)
18621, -- The Maker (1)
20992, -- Blood Guard Porung (1)
20568, -- Grand Warlock Nethekurse (1)
20596, -- Warbringer O'mrogg (1)
20597, -- Warchief Kargath Bladefist (1)
19893, -- Mennu the Betrayer (1)
19894, -- Quagmirran (1)
20164, -- Bog Giant (1)
20165, -- Claw(1)
20168, -- Ghaz'an (1)
20169, -- Hungarfen (1)
20183, -- Swamplord Musel'ek (1)
20184, -- The Black Stalker (1)
20187, -- Underbog Lord (1)
20189, -- Underbog Mushroom (1)
21914, -- Bog Overlord (1)
20629, -- Hydromancer Thespia (1)
20630, -- Mekgineer Steamrigger (1)
20631, -- Naga Distiller (1)
20633, -- Warlord Kalithresh (1)
20521, -- Captain Skarloc (1)
28171, -- Don Carlos (1)
20531, -- Epoch Hunter (1)
20535, -- Lieutenant Drake (1)
20737, -- Aeonus (1)
20738, -- Chrono Lord Deja (1)
22170, -- Rift Keeper (1)
20744, -- Rift Lord (1)
20745, -- Temporus (1)
20254, -- Ethereal Beacon (1)
20266, -- Nexus-Prince Shaffar (1)
20267, -- Pandemonius (1)
20268, -- Tavarok (1)
23035, -- Anzu (1)
20690, -- Darkweaver Syth (1)
20706, -- Talon King Ikiss (1)
20303, -- Avatar of the Martyred (1)
20306, -- Exarch Maladaar (1)
20309, -- Phantasmal Possessor (1)
20316, -- Raging Soul (1)
20318, -- Shirrak the Dead Watcher (1)
20305, -- Stolen Soul (1)
20636, -- Ambassador Hellmaw (1)
20637, -- Blackheart the Inciter (1)
20652, -- Fel Overseer (1)
20653, -- Grandmaster Vorpil (1)
20657, -- Murmur (1)
19895, -- Rokmar the Crackler 
22347, -- Colossus Lurker
21230, -- Greyheart Nether-Mage
21232, -- Greyheart Skulker
21229, -- Greyheart Tidecaller
22009, -- Tainted Elemental
20033, -- Astromancer
20031, -- Bloodwarder Legionnaire
20047, -- Crimson Hand Battle Mage
20052, -- Crystalcore Mechanic
20034, -- Star Scryer
28126 -- Don Carlos
);

-- MECHANIC_SLEEP 512 [40 spells] (Hibernate, Wyvern Sting, Sleep)
UPDATE creature_template SET MechanicImmuneMask=MechanicImmuneMask|512 WHERE entry IN (
20254, -- Ethereal Beacon (1)
20262, -- Ethereal Wraith (1)
20265, -- Nexus Terror (1)
23122, -- Anzu (1)
20692, -- Sethekk Guard (1)
20696, -- Sethekk Ravenguard (1)
20691, -- Time-Lost Controller (1)
20697, -- Time-Lost Scryer (1)
20298, -- Angered Skeleton (1)
20303, -- Avatar of the Martyred (1)
20309, -- Phantasmal Possessor (1)
20310, -- Phasing Cleric (1)
20311, -- Phasing Soldier (1)
20312, -- Phasing Sorcerer (1)
20313, -- Phasing Stalker (1)
20315, -- Raging Skeleton (1)
20316, -- Raging Soul (1)
20317, -- Reanimated Bones (1)
20305, -- Stolen Soul (1)
20320, -- Unliving Cleric (1)
20321, -- Unliving Solider (1)
20322, -- Unliving Sorcerer (1)
20323, -- Unliving Stalker (1)
20656, -- Malicious Instructor (1)
20662, -- Tortured Skeleton (1)
19886, -- Coilfang Defender (1)
20165, -- Claw (1)
20627, -- Coilfang Water Elemental (1)
20631, -- Naga Distiller (1)
17455,18051, -- Bonechewer Beastmaster
20583, -- Shattered Hand Centurion (1)
20584, -- Shattered Hand Champion (1)
20588, -- Shattered Hand Houndmaster (1)
20589, -- Shattered Hand Legionnaire (1)
21521, -- Arcane Servant (1)
21538, -- Raging Flames (1)
21542, -- Tempest-Forge Destroyer (1)
21543, -- Tempest-Forge Patroller (1)
21574, -- Sunseeker Geomancer (1)
21578, -- Tempest-Forge Peacekeeper (1)
21586, -- Arcatraz Sentinel (1)
21598, -- Gargantuan Abyssal (1)
21604, -- Negaton Screamer (1)
20882,21613, -- Skulking Witch
21614, -- Soul Devourer (1)
21615, -- Spiteful Temptress (1)
21619, -- Unbound Devastator (1)
21621, -- Unchained Doombringer (1)
22056, -- Coilfang Strider
22347, -- Colossus Lurker
22352, -- Colossus Rager
22009, -- Tainted Elemental
21270, -- Cosmic Infuser
20052, -- Crystalcore Mechanic
21269, -- Devastation
21271, -- Infinity Blades
21268, -- Netherstrand Longbow
21273, -- Phaseshift Bulwark
18806, -- Solarium Priest
21274, -- Staff of Disintegration
21272, -- Warp Slicer
20689, -- Dark Vortex (1)
20702, -- Syth Arcane Elemental (1)
20703, -- Syth Fire Elemental (1)
20704, -- Syth Frost Elemental (1)
20705, -- Syth Shadow Elemental (1)
21916, -- Steam Surger (1)
21521, -- Arcane Servant (1)
21525, -- Gatewatcher Gyro-Kill (1)
21526, -- Gatewatcher Iron-Hand (1)
21533, -- Mechano-Lord Capacitus (1)
21536, -- Nethermancer Sepethrea (1)
21537, -- Pathaleon the Calculator (1)
21538, -- Raging Flames (1)
21542, -- Tempest-Forge Destroyer (1)
21543, -- Tempest-Forge Patroller (1)
21551, -- Commander Sarannis (1)
21558, -- High Botanist Freywinn (1)
21559, -- Laj (1)
21560, -- Mutate Fear-Shrieker (1)
21561, -- Mutate Fleshlasher (1)
21562, -- Mutate Horror (1)
21574, -- Sunseeker Geomancer (1)
21578, -- Tempest-Forge Peacekeeper (1)
21581, -- Thorngrin the Tender (1)
21582, -- Warp Splinter (1)
21617, -- Akkiris Lightning-Waker (1)
21586, -- Arcatraz Sentinel (1)
21588, -- Blackwing Drakonaar (1)
21589, -- Blazing Trickster (1)
21590, -- Dalliah the Doomsayer (1)
21591, -- Death Watcher (1)
21593, -- Entropic Eye (1)
21594, -- Eredar Deathbringer (1)
21595, -- Eredar Soul-Eater (1)
21598, -- Gargantuan Abyssal (1)
21599, -- Harbinger Skyriss (1)
21604, -- Negaton Screamer (1)
21605, -- Negaton Warp-Master (1)
21606, -- Phase-Hunter (1)
21608, -- Protean Nightmare (1)
21610, -- Sargeron Archer (1)
21611, -- Sargeron Hellcaller (1)
20882,21613, -- Skulking Witch
21614, -- Soul Devourer (1)
21615, -- Spiteful Temptress (1)
21616, -- Sulfuron Magma-Thrower (1)
21618, -- Twilight Drakonaar (1)
21619, -- Unbound Devastator (1)
21621, -- Unchained Doombringer (1)
21623, -- Warder Corpse (1)
21624, -- Wrath-Scryer Soccothrates (1)
21626, -- Zereketh the Unbound (1)
18051, -- Bonechewer Beastmaster (1)
18055, -- Bonechewer Ripper (1)
18432, -- Nazan (1)
18433, -- Omor the Unscarred (1)
18434, -- Vazruden (1)
18436, -- Watchkeeper Gargolmar (1)
18601, -- Broggok (1)
18607, -- Keli'dan the Breaker (1)
18621, -- The Maker (1)
20992, -- Blood Guard Porung (1)
20568, -- Grand Warlock Nethekurse (1)
20583, -- Shattered Hand Centurion (1)
20584, -- Shattered Hand Champion (1)
20588, -- Shattered Hand Houndmaster (1)
20589, -- Shattered Hand Legionnaire (1)
20596, -- Warbringer O'mrogg (1)
20597, -- Warchief Kargath Bladefist (1)
19886, -- Coilfang Defender (1)
19893, -- Mennu the Betrayer (1)
19894, -- Quagmirran (1)
19895, -- Rokmar the Crackler (1)
20164, -- Bog Giant (1)
20165, -- Claw (1)
20173, -- Fen Ray (1)
20168, -- Ghaz'an (1)
20169, -- Hungarfen (1)
22300, -- Spore Strider (1)
20183, -- Swamplord Musel'ek (1)
20184, -- The Black Stalker (1)
20187, -- Underbog Lord (1)
20189, -- Underbog Mushroom (1)
21914, -- Bog Overlord (1)
20627, -- Coilfang Water Elemental (1)
20629, -- Hydromancer Thespia (1)
20630, -- Mekgineer Steamrigger (1)
20631, -- Naga Distiller (1)
21916, -- Steam Surger (1)
21917, -- Tidal Surger (1)
20633, -- Warlord Kalithresh (1)
20521, -- Captain Skarloc (1)
28171, -- Don Carlos (1)
20531, -- Epoch Hunter (1)
20535, -- Lieutenant Drake (1)
20737, -- Aeonus (1)
20738, -- Chrono Lord Deja (1)
22170, -- Rift Keeper (1)
20744, -- Rift Lord (1)
20745, -- Temporus (1)
20254, -- Ethereal Beacon (1)
20262, -- Ethereal Wraith (1)
20266, -- Nexus-Prince Shaffar (1)
20265, -- Nexus Terror (1)
20267, -- Pandemonius (1)
20268, -- Tavarok (1)
23035, -- Anzu (1)
20688, -- Cobalt Serpent (1)
20689, -- Dark Vortex (1)
20690, -- Darkweaver Syth (1)
20692, -- Sethekk Guard (1)
20696, -- Sethekk Ravenguard (1)
20702, -- Syth Arcane Elemental (1)
20703, -- Syth Fire Elemental (1)
20704, -- Syth Frost Elemental (1)
20705, -- Syth Shadow Elemental (1)
20706, -- Talon King Ikiss (1)
20691, -- Time-Lost Controller (1)
20697, -- Time-Lost Scryer (1)
20298, -- Angered Skeleton (1)
20299, -- Auchenai Monk (1)
20303, -- Avatar of the Martyred (1)
20306, -- Exarch Maladaar (1)
20309, -- Phantasmal Possessor (1)
20310, -- Phasing Cleric (1)
20311, -- Phasing Soldier (1)
20312, -- Phasing Sorcerer (1)
20313, -- Phasing Stalker (1)
20315, -- Raging Skeleton (1)
20316, -- Raging Soul (1)
20317, -- Reanimated Bones (1)
20318, -- Shirrak the Dead Watcher (1)
20305, -- Stolen Soul (1)
20320, -- Unliving Cleric (1)
20321, -- Unliving Soldier (1)
20322, -- Unliving Sorcerer (1)
20323, -- Unliving Stalker (1)
20636, -- Ambassador Hellmaw (1)
20637, -- Blackheart the Inciter (1)
20652, -- Fel Overseer (1)
20653, -- Grandmaster Vorpil (1)
20656, -- Malicious Instructor (1)
20657, -- Murmur (1)
20662, -- Tortured Skeleton (1)
22056, -- Coilfang Strider
22347, -- Colossus Lurker
22352, -- Colossus Rager
22009, -- Tainted Elemental
21270, -- Cosmic Infuser
20052, -- Crystalcore Mechanic
21269, -- Devastation
21271, -- Infinity Blades
21268, -- Netherstrand Longbow
21273, -- Phaseshift Bulwark
18806, -- Solarium Priest
21274, -- Staff of Disintegration
21272 -- Warp Slicer
);

-- MECHANIC_SNARE 1024 [186 spells] (Slow, Thunderclap, Hamstring, Concussive Shot, Chilled, Earthbind, etc.)
UPDATE creature_template SET MechanicImmuneMask=MechanicImmuneMask|1024 WHERE entry IN (
17264,18054, -- Bonechewer Ravener
17455,18051, -- Bonechewer Beastmaster
21525, -- Gatewatcher Gyro-Kill (1)
21526, -- Gatewatcher Iron-Hand (1)
21533, -- Mechano-Lord Capacitus (1)
21536, -- Nethermancer Sepethrea (1)
21537, -- Pathaleon the Calculator (1)
21538, -- Raging Flames (1)
21543, -- Tempest-Forge Patroller (1)
21551, -- Commander Sarannis (1)
21558, -- High Botanist Freywinn (1)
21559, -- Laj (1)
21578, -- Tempest-Forge Peacekeeper (1)
21581, -- Thorngrin the Tender (1)
21582, -- Warp Splinter (1)
21617, -- Akkiris Lightning-Waker (1)
21588, -- Blackwing Drakonaar (1)
21589, -- Blazing Trickster (1)
21590, -- Dalliah the Doomsayer (1)
21591, -- Death Watcher (1)
21593, -- Entropic Eye (1)
21594, -- Eredar Deathbringer (1)
21595, -- Eredar Soul-Eater (1)
21598, -- Gargantuan Abyssal (1)
21599, -- Harbinger Skyriss (1)
21604, -- Negaton Screamer (1)
21605, -- Negaton Warp-Master (1)
21606, -- Phase-Hunter (1)
21608, -- Protean Nightmare (1)
21610, -- Sargeron Archer (1)
21611, -- Sargeron Hellcaller (1)
20882,21613, -- Skulking Witch
21614, -- Soul Devourer (1)
21615, -- Spiteful Temptress (1)
21616, -- Sulfuron Magma-Thrower (1)
21618, -- Twilight Drakonaar (1)
21619, -- Unbound Devastator (1)
21621, -- Unchained Doombringer (1)
21624, -- Wrath-Scryer Soccothrates (1)
21626, -- Zereketh the Unbound (1)
18055, -- Bonechewer Ripper (1)
18432, -- Nazan (1)
18433, -- Omor the Unscarred (1)
18434, -- Vazruden (1)
18436, -- Watchkeeper Gargolmar (1)
18601, -- Broggok (1)
18607, -- Keli'dan the Breaker (1)
18621, -- The Maker (1)
20992, -- Blood Guard Porung (1)
20568, -- Grand Warlock Nethekurse (1)
20588, -- Shattered Hand Houndmaster (1)
20589, -- Shattered Hand Legionnaire (1)
20596, -- Warbringer O'mrogg (1)
20597, -- Warchief Kargath Bladefist (1)
19893, -- Mennu the Betrayer (1)
19894, -- Quagmirran (1)
19895, -- Rokmar the Crackler (1)
20164, -- Bog Giant (1)
20165, -- Claw (1)
20173, -- Fen Ray (1)
20168, -- Ghaz'an (1)
20169, -- Hungarfen (1)
22300, -- Spore Strider (1)
20183, -- Swamplord Musel'ek (1)
20184, -- The Black Stalker (1)
21943, -- Underbog Frenzy (1)
20187, -- Underbog Lord (1)
20189, -- Underbog Mushroom (1)
21914, -- Bog Overlord (1)
20629, -- Hydromancer Thespia (1)
20630, -- Mekgineer Steamrigger (1)
20631, -- Naga Distiller (1)
20633, -- Warlord Kalithresh (1)
20521, -- Captain Skarloc (1)
28171, -- Don Carlos (1)
20531, -- Epoch Hunter (1)
20535, -- Lieutenant Drake (1)
20737, -- Aeonus (1)
20738, -- Chrono Lord Deja (1)
22170, -- Rift Keeper (1)
20744, -- Rift Lord (1)
20745, -- Temporus (1)
20254, -- Ethereal Beacon (1)
20266, -- Nexus-Prince Shaffar (1)
20265, -- Nexus Terror (1)
20267, -- Pandemonius (1)
20268, -- Tavarok (1)
23035, -- Anzu (1)
20688, -- Cobalt Serpent (1)
20690, -- Darkweaver Syth (1)
20706, -- Talon King Ikiss (1)
20303, -- Avatar of the Martyred (1)
20306, -- Exarch Maladaar (1)
20309, -- Phantasmal Possessor (1)
20316, -- Raging Soul (1)
20318, -- Shirrak the Dead Watcher (1)
20305, -- Stolen Soul (1)
20636, -- Ambassador Hellmaw (1)
20637, -- Blackheart the Inciter (1)
20652, -- Fel Overseer (1)
20653, -- Grandmaster Vorpil (1)
20656, -- Malicious Instructor (1)
20657, -- Murmur (1)
23775, -- Head of the Horseman
23682, -- Headless Horseman
22347, -- Colossus Lurker
22009, -- Tainted Elemental
20035, -- Bloodwarder Marshal
20032, -- Bloodwarder Vindicator
20048, -- Crimson Hand Centurion
20052, -- Crystalcore Mechanic
18806 -- Solarium Priest
);

-- MECHANIC_STUN 2048 [266 spells] (War Stomp, Hammer of Justice, Cheap Shot, etc.)
UPDATE creature_template SET MechanicImmuneMask=MechanicImmuneMask|2048 WHERE entry IN (
23122, -- Anzu (1)
21525, -- Gatewatcher Gyro-Kill (1)
21526, -- Gatewatcher Iron-Hand (1)
21533, -- Mechano-Lord Capacitus (1)
21536, -- Nethermancer Sepethrea (1)
21537, -- Pathaleon the Calculator (1)
21538, -- Raging Flames (1)
21551, -- Commander Sarannis (1)
21558, -- High Botanist Freywinn (1)
21559, -- Laj (1)
21581, -- Thorngrin the Tender (1)
21582, -- Warp Splinter (1)
21617, -- Akkiris Lightning-Waker (1)
21588, -- Blackwing Drakonaar (1)
21589, -- Blazing Trickster (1)
21590, -- Dalliah the Doomsayer (1)
21591, -- Death Watcher (1)
21593, -- Entropic Eye (1)
21594, -- Eredar Deathbringer (1)
21595, -- Eredar Soul-Eater (1)
21598, -- Gargantuan Abyssal (1)
21599, -- Harbinger Skyriss (1)
21604, -- Negaton Screamer (1)
21605, -- Negaton Warp-Master (1)
21606, -- Phase-Hunter (1)
21608, -- Protean Nightmare (1)
21610, -- Sargeron Archer (1)
21611, -- Sargeron Hellcaller (1)
20882,21613, -- Skulking Witch
21614, -- Soul Devourer (1)
21615, -- Spiteful Temptress (1)
21616, -- Sulfuron Magma-Thrower (1)
21618, -- Twilight Drakonaar (1)
21619, -- Unbound Devastator (1)
21621, -- Unchained Doombringer (1)
21623, -- Warder Corpse (1)
21624, -- Wrath-Scryer Soccothrates (1)
21626, -- Zereketh the Unbound (1)
18432, -- Nazan (1)
18433, -- Omor the Unscarred (1)
18434, -- Vazruden (1)
18436, -- Watchkeeper Gargolmar (1)
18601, -- Broggok (1)
18607, -- Keli'dan the Breaker (1)
18621, -- The Maker (1)
20992, -- Blood Guard Porung (1)
20568, -- Grand Warlock Nethekurse (1)
20596, -- Warbringer O'mrogg (1)
20597, -- Warchief Kargath Bladefist (1)
19893, -- Mennu the Betrayer (1)
19894, -- Quagmirran (1)
19895, -- Rokmar the Crackler (1)
20164, -- Bog Giant (1)
20165, -- Claw (1)
20168, -- Ghaz'an (1)
20169, -- Hungarfen (1)
20183, -- Swamplord Musel'ek (1)
20184, -- The Black Stalker (1)
20187, -- Underbog Lord (1)
20189, -- Underbog Mushroom (1)
21914, -- Bog Overlord (1)
20629, -- Hydromancer Thespia (1)
20630, -- Mekgineer Steamrigger (1)
20631, -- Naga Distiller (1)
20633, -- Warlord Kalithresh (1)
20521, -- Captain Skarloc (1)
28171, -- Don Carlos (1)
20531, -- Epoch Hunter (1)
20535, -- Lieutenant Drake (1)
20737, -- Aeonus (1)
20738, -- Chrono Lord Deja (1)
22170, -- Rift Keeper (1)
20744, -- Rift Lord (1)
20745, -- Temporus (1)
20254, -- Ethereal Beacon (1)
20266, -- Nexus-Prince Shaffar (1)
20267, -- Pandemonius (1)
20268, -- Tavarok (1)
23035, -- Anzu (1)
20690, -- Darkweaver Syth (1)
20706, -- Talon King Ikiss (1)
20303, -- Avatar of the Martyred (1)
20306, -- Exarch Maladaar (1)
20309, -- Phantasmal Possessor (1)
20316, -- Raging Soul (1)
20318, -- Shirrak the Dead Watcher (1)
20305, -- Stolen Soul (1)
20636, -- Ambassador Hellmaw (1)
20637, -- Blackheart the Inciter (1)
20652, -- Fel Overseer (1)
20653, -- Grandmaster Vorpil (1)
20657, -- Murmur (1)
23775, -- Head of the Horseman
23682, -- Headless Horseman
22347, -- Colossus Lurker
21232, -- Greyheart Skulker
21229, -- Greyheart Tidecaller
22009, -- Tainted Elemental
20043, -- Apprentice Star Scryer
20044, -- Novice Astromancer
28126 -- Don Carlos
);

-- MECHANIC_FREEZE 4096 [8 spells] (Freezing Trap)
UPDATE creature_template SET MechanicImmuneMask=MechanicImmuneMask|4096 WHERE entry IN (
23122, -- Anzu (1)
21525, -- Gatewatcher Gyro-Kill (1)
21526, -- Gatewatcher Iron-Hand (1)
21533, -- Mechano-Lord Capacitus (1)
21536, -- Nethermancer Sepethrea (1)
21537, -- Pathaleon the Calculator (1)
21538, -- Raging Flames (1)
21543, -- Tempest-Forge Patroller (1)
21551, -- Commander Sarannis (1)
21558, -- High Botanist Freywinn (1)
21559, -- Laj (1)
21574, -- Sunseeker Geomancer (1)
21578, -- Tempest-Forge Peacekeeper (1)
21581, -- Thorngrin the Tender (1)
21582, -- Warp Splinter (1)
21617, -- Akkiris Lightning-Waker (1)
21588, -- Blackwing Drakonaar (1)
21589, -- Blazing Trickster (1)
21590, -- Dalliah the Doomsayer (1)
21591, -- Death Watcher (1)
21593, -- Entropic Eye (1)
21594, -- Eredar Deathbringer (1)
21595, -- Eredar Soul-Eater (1)
21598, -- Gargantuan Abyssal (1)
21599, -- Harbinger Skyriss (1)
21604, -- Negaton Screamer (1)
21605, -- Negaton Warp-Master (1)
21606, -- Phase-Hunter (1)
21608, -- Protean Nightmare (1)
21610, -- Sargeron Archer (1)
21611, -- Sargeron Hellcaller (1)
20882,21613, -- Skulking Witch
21614, -- Soul Devourer (1)
21615, -- Spiteful Temptress (1)
21616, -- Sulfuron Magma-Thrower (1)
21618, -- Twilight Drakonaar (1)
21619, -- Unbound Devastator (1)
21621, -- Unchained Doombringer (1)
21623, -- Warder Corpse (1)
21624, -- Wrath-Scryer Soccothrates (1)
21626, -- Zereketh the Unbound (1)
18051, -- Bonechewer Beastmaster (1)
18055, -- Bonechewer Ripper (1)
18432, -- Nazan (1)
18433, -- Omor the Unscarred (1)
18434, -- Vazruden (1)
18436, -- Watchkeeper Gargolmar (1)
18601, -- Broggok (1)
18607, -- Keli'dan the Breaker (1)
18621, -- The Maker (1)
20992, -- Blood Guard Porung (1)
20568, -- Grand Warlock Nethekurse (1)
20583, -- Shattered Hand Centurion (1)
20584, -- Shattered Hand Champion (1)
20588, -- Shattered Hand Houndmaster (1)
20589, -- Shattered Hand Legionnaire (1)
20596, -- Warbringer O'mrogg (1)
20597, -- Warchief Kargath Bladefist (1)
19886, -- Coilfang Defender (1)
19893, -- Mennu the Betrayer (1)
19894, -- Quagmirran (1)
19895, -- Rokmar the Crackler (1)
20164, -- Bog Giant (1)
20165, -- Claw (1)
20173, -- Fen Ray (1)
20168, -- Ghaz'an (1)
20169, -- Hungarfen (1)
22300, -- Spore Strider (1)
20183, -- Swamplord Musel'ek (1)
20184, -- The Black Stalker (1)
20187, -- Underbog Lord (1)
20189, -- Underbog Mushroom (1)
21914, -- Bog Overlord (1)
20629, -- Hydromancer Thespia (1)
20630, -- Mekgineer Steamrigger (1)
20631, -- Naga Distiller (1)
20633, -- Warlord Kalithresh (1)
20521, -- Captain Skarloc (1)
28171, -- Don Carlos (1)
20531, -- Epoch Hunter (1)
20535, -- Lieutenant Drake (1)
20737, -- Aeonus (1)
20738, -- Chrono Lord Deja (1)
22170, -- Rift Keeper (1)
20744, -- Rift Lord (1)
20745, -- Temporus (1)
20254, -- Ethereal Beacon (1)
20266, -- Nexus-Prince Shaffar (1)
20265, -- Nexus Terror (1)
20267, -- Pandemonius (1)
20268, -- Tavarok (1)
23035, -- Anzu (1)
20688, -- Cobalt Serpent (1)
20690, -- Darkweaver Syth (1)
20692, -- Sethekk Guard (1)
20696, -- Sethekk Ravenguard (1)
20704, -- Syth Frost Elemental (1)
20706, -- Talon King Ikiss (1)
20299, -- Auchenai Monk (1)
20303, -- Avatar of the Martyred (1)
20306, -- Exarch Maladaar (1)
20309, -- Phantasmal Possessor (1)
20316, -- Raging Soul (1)
20318, -- Shirrak the Dead Watcher (1)
20305, -- Stolen Soul (1)
20636, -- Ambassador Hellmaw (1)
20637, -- Blackheart the Inciter (1)
20652, -- Fel Overseer (1)
20653, -- Grandmaster Vorpil (1)
20656, -- Malicious Instructor (1)
20657, -- Murmur (1)
23775, -- Head of the Horseman
23682, -- Headless Horseman
22056, -- Coilfang Strider
22347, -- Colossus Lurker
22352, -- Colossus Rager
21230, -- Greyheart Nether-Mage
21232, -- Greyheart Skulker
21229, -- Greyheart Tidecaller
22035, -- Pure Spawn of Hydross
22009, -- Tainted Elemental
20052, -- Crystalcore Mechanic
18806, -- Solarium Priest
28126 -- Don Carlos

);

-- MECHANIC_KNOCKOUT 8192 [20 spells] (Gouge, Blast Wave, Repentance)
UPDATE creature_template SET MechanicImmuneMask=MechanicImmuneMask|8192 WHERE entry IN (
17455,18051, -- Bonechewer Beastmaster
23122, -- Anzu (1)
17281,18055, -- Bonechewer Ripper
21525, -- Gatewatcher Gyro-Kill (1)
21526, -- Gatewatcher Iron-Hand (1)
21533, -- Mechano-Lord Capacitus (1)
21536, -- Nethermancer Sepethrea (1)
21537, -- Pathaleon the Calculator (1)
21538, -- Raging Flames (1)
21542, -- Tempest-Forge Destroyer (1)
21543, -- Tempest-Forge Patroller (1)
21551, -- Commander Sarannis (1)
21558, -- High Botanist Freywinn (1)
21559, -- Laj (1)
21560, -- Mutate Fear-Shrieker (1)
21561, -- Mutate Fleshlasher (1)
21562, -- Mutate Horror (1)
21574, -- Sunseeker Geomancer (1)
21578, -- Tempest-Forge Peacekeeper (1)
21581, -- Thorngrin the Tender (1)
21582, -- Warp Splinter (1)
21617, -- Akkiris Lightning-Waker (1)
21586, -- Arcatraz Sentinel (1)
21588, -- Blackwing Drakonaar (1)
21589, -- Blazing Trickster (1)
21590, -- Dalliah the Doomsayer (1)
21591, -- Death Watcher (1)
21593, -- Entropic Eye (1)
21594, -- Eredar Deathbringer (1)
21595, -- Eredar Soul-Eater (1)
21598, -- Gargantuan Abyssal (1)
21599, -- Harbinger Skyriss (1)
21604, -- Negaton Screamer (1)
21605, -- Negaton Warp-Master (1)
21606, -- Phase-Hunter (1)
21608, -- Protean Nightmare (1)
21610, -- Sargeron Archer (1)
21611, -- Sargeron Hellcaller (1)
20882,21613, -- Skulking Witch
21614, -- Soul Devourer (1)
21615, -- Spiteful Temptress (1)
21616, -- Sulfuron Magma-Thrower (1)
21618, -- Twilight Drakonaar (1)
21619, -- Unbound Devastator (1)
21621, -- Unchained Doombringer (1)
21623, -- Warder Corpse (1)
21624, -- Wrath-Scryer Soccothrates (1)
21626, -- Zereketh the Unbound (1)
18432, -- Nazan (1)
18433, -- Omor the Unscarred (1)
18434, -- Vazruden (1)
18436, -- Watchkeeper Gargolmar (1)
18601, -- Broggok (1)
18607, -- Keli'dan the Breaker (1)
18621, -- The Maker (1)
20992, -- Blood Guard Porung (1)
20568, -- Grand Warlock Nethekurse (1)
20583, -- Shattered Hand Centurion (1)
20584, -- Shattered Hand Champion (1)
20588, -- Shattered Hand Houndmaster (1)
20589, -- Shattered Hand Legionnaire (1)
20596, -- Warbringer O'mrogg (1)
20597, -- Warchief Kargath Bladefist (1)
19886, -- Coilfang Defender (1)
19893, -- Mennu the Betrayer (1)
19894, -- Quagmirran (1)
19895, -- Rokmar the Crackler (1)
20164, -- Bog Giant (1)
20165, -- Claw (1)
20173, -- Fen Ray (1)
20168, -- Ghaz'an (1)
20169, -- Hungarfen (1)
22300, -- Spore Strider (1)
20183, -- Swamplord Musel'ek (1)
20184, -- The Black Stalker (1)
20187, -- Underbog Lord (1)
20189, -- Underbog Mushroom (1)
21914, -- Bog Overlord (1)
20629, -- Hydromancer Thespia (1)
20630, -- Mekgineer Steamrigger (1)
20631, -- Naga Distiller (1)
20633, -- Warlord Kalithresh (1)
20521, -- Captain Skarloc (1)
28171, -- Don Carlos (1)
20531, -- Epoch Hunter (1)
20535, -- Lieutenant Drake (1)
20737, -- Aeonus (1)
20738, -- Chrono Lord Deja (1)
22170, -- Rift Keeper (1)
20744, -- Rift Lord (1)
20745, -- Temporus (1)
20254, -- Ethereal Beacon (1)
20266, -- Nexus-Prince Shaffar (1)
20265, -- Nexus Terror (1)
20267, -- Pandemonius (1)
20268, -- Tavarok (1)
23035, -- Anzu (1)
20688, -- Cobalt Serpent (1)
20690, -- Darkweaver Syth (1)
20692, -- Sethekk Guard (1)
20696, -- Sethekk Ravenguard (1)
20706, -- Talon King Ikiss (1)
20299, -- Auchenai Monk (1)
20303, -- Avatar of the Martyred (1)
20306, -- Exarch Maladaar (1)
20309, -- Phantasmal Possessor (1)
20316, -- Raging Soul (1)
20318, -- Shirrak the Dead Watcher (1)
20305, -- Stolen Soul (1)
20636, -- Ambassador Hellmaw (1)
20637, -- Blackheart the Inciter (1)
20652, -- Fel Overseer (1)
20653, -- Grandmaster Vorpil (1)
20656, -- Malicious Instructor (1)
20657, -- Murmur (1)
23775, -- Head of the Horseman
23682, -- Headless Horseman
22056, -- Coilfang Strider
22347, -- Colossus Lurker
22352, -- Colossus Rager
22009, -- Tainted Elemental
21270, -- Cosmic Infuser
20052, -- Crystalcore Mechanic
21269, -- Devastation
21271, -- Infinity Blades
21268, -- Netherstrand Longbow
18806, -- Solarium Priest
21274, -- Staff of Disintegration
21272, -- Warp Slicer
28126 -- Don Carlos
);

-- MECHANIC_BLEED 16384 [130 spells] (Garrote, Rupture, Rend, Deep Wounds, Rip, etc.)
-- UPDATE creature_template SET MechanicImmuneMask=MechanicImmuneMask|16384 WHERE entry IN ();

-- MECHANIC_BANDAGE 32768 [24 spells] (why would this need to be applied to creatures?)
-- UPDATE creature_template SET MechanicImmuneMask=MechanicImmuneMask|32768 WHERE entry IN ();

-- MECHANIC_POLYMORPH 65536 [69 spells] (Polymorph, Hex)
UPDATE creature_template SET MechanicImmuneMask=MechanicImmuneMask|65536 WHERE entry IN (
17455,18051, -- Bonechewer Beastmaster
23122, -- Anzu (1)
21536, -- Nethermancer Sepethrea (1)
21537, -- Pathaleon the Calculator (1)
21551, -- Commander Sarannis (1)
21558, -- High Botanist Freywinn (1)
21560, -- Mutate Fear-Shrieker (1)
21561, -- Mutate Fleshlasher (1)
21562, -- Mutate Horror (1)
21574, -- Sunseeker Geomancer (1)
21599, -- Harbinger Skyriss (1)
21606, -- Phase-Hunter (1)
21616, -- Sulfuron Magma-Thrower (1)
21623, -- Warder Corpse (1)
18055, -- Bonechewer Ripper (1)
18434, -- Vazruden (1)
18436, -- Watchkeeper Gargolmar (1)
18601, -- Broggok (1)
18607, -- Keli'dan the Breaker (1)
20992, -- Blood Guard Porung (1)
20568, -- Grand Warlock Nethekurse (1)
20583, -- Shattered Hand Centurion (1)
20584, -- Shattered Hand Champion (1)
20588, -- Shattered Hand Houndmaster (1)
20589, -- Shattered Hand Legionnaire (1)
20596, -- Warbringer O'mrogg (1)
20597, -- Warchief Kargath Bladefist (1)
19886, -- Coilfang Defender (1)
19893, -- Mennu the Betrayer (1)
19895, -- Rokmar the Crackler (1)
20165, -- Claw (1)
20173, -- Fen Ray (1)
20168, -- Ghaz'an (1)
22300, -- Spore Strider (1)
20183, -- Swamplord Musel'ek (1)
20184, -- The Black Stalker (1)
20629, -- Hydromancer Thespia (1)
20633, -- Warlord Kalithresh (1)
20521, -- Captain Skarloc (1)
28171, -- Don Carlos (1)
20531, -- Epoch Hunter (1)
20535, -- Lieutenant Drake (1)
20266, -- Nexus-Prince Shaffar (1)
23035, -- Anzu (1)
20688, -- Cobalt Serpent (1)
20690, -- Darkweaver Syth (1)
20692, -- Sethekk Guard (1)
20696, -- Sethekk Ravenguard (1)
20706, -- Talon King Ikiss (1)
20299, -- Auchenai Monk (1)
20306, -- Exarch Maladaar (1)
20316, -- Raging Soul (1)
20637, -- Blackheart the Inciter (1)
20653, -- Grandmaster Vorpil (1)
23775, -- Head of the Horseman
23682, -- Headless Horseman
22056, -- Coilfang Strider
22009, -- Tainted Elemental
18806, -- Solarium Priest
28126, -- Don Carlos
18411, -- Durn the Hungerer
20555, -- Goc
21514, -- Gorgrom the Dragon-Eater
20216, -- Grulloc
20600, -- Maggoc
22910, -- Skulloc Soulgrinder
22199 -- Slaag
);

-- MECHANIC_BANISH 131072 [20 spells] (Cyclone, Banish)
UPDATE creature_template SET MechanicImmuneMask=MechanicImmuneMask|131072 WHERE entry IN (
17455,18051, -- Bonechewer Beastmaster
17281,18055, -- Bonechewer Ripper
21525, -- Gatewatcher Gyro-Kill (1)
21526, -- Gatewatcher Iron-Hand (1)
21533, -- Mechano-Lord Capacitus (1)
21536, -- Nethermancer Sepethrea (1)
21537, -- Pathaleon the Calculator (1)
21538, -- Raging Flames (1)
21542, -- Tempest-Forge Destroyer (1)
21543, -- Tempest-Forge Patroller (1)
21551, -- Commander Sarannis (1)
21558, -- High Botanist Freywinn (1)
21559, -- Laj (1)
21560, -- Mutate Fear-Shrieker (1)
21561, -- Mutate Fleshlasher (1)
21562, -- Mutate Horror (1)
21574, -- Sunseeker Geomancer (1)
21578, -- Tempest-Forge Peacekeeper (1)
21581, -- Thorngrin the Tender (1)
21582, -- Warp Splinter (1)
21617, -- Akkiris Lightning-Waker (1)
21588, -- Blackwing Drakonaar (1)
21589, -- Blazing Trickster (1)
21590, -- Dalliah the Doomsayer (1)
21591, -- Death Watcher (1)
21593, -- Entropic Eye (1)
21594, -- Eredar Deathbringer (1)
21595, -- Eredar Soul-Eater (1)
21598, -- Gargantuan Abyssal (1)
21599, -- Harbinger Skyriss (1)
21604, -- Negaton Screamer (1)
21605, -- Negaton Warp-Master (1)
21606, -- Phase-Hunter (1)
21608, -- Protean Nightmare (1)
21610, -- Sargeron Archer (1)
21611, -- Sargeron Hellcaller (1)
20882,21613, -- Skulking Witch
21614, -- Soul Devourer (1)
21615, -- Spiteful Temptress (1)
21616, -- Sulfuron Magma-Thrower (1)
21618, -- Twilight Drakonaar (1)
21619, -- Unbound Devastator (1)
21621, -- Unchained Doombringer (1)
21623, -- Warder Corpse (1)
21624, -- Wrath-Scryer Soccothrates (1)
21626, -- Zereketh the Unbound (1)
18432, -- Nazan (1)
18433, -- Omor the Unscarred (1)
18434, -- Vazruden (1)
18436, -- Watchkeeper Gargolmar (1)
18601, -- Broggok (1)
18607, -- Keli'dan the Breaker (1)
18621, -- The Maker (1)
20992, -- Blood Guard Porung (1)
20568, -- Grand Warlock Nethekurse (1)
20583, -- Shattered Hand Centurion (1)
20584, -- Shattered Hand Champion (1)
20588, -- Shattered Hand Houndmaster (1)
20589, -- Shattered Hand Legionnaire (1)
20596, -- Warbringer O'mrogg (1)
20597, -- Warchief Kargath Bladefist (1)
19886, -- Coilfang Defender (1)
19893, -- Mennu the Betrayer (1)
19894, -- Quagmirran (1)
19895, -- Rokmar the Crackler (1)
20164, -- Bog Giant (1)
20165, -- Claw (1)
20173, -- Fen Ray (1)
20168, -- Ghaz'an (1)
20169, -- Hungarfen (1)
22300, -- Spore Strider (1)
20183, -- Swamplord Musel'ek (1)
20184, -- The Black Stalker (1)
20187, -- Underbog Lord (1)
20189, -- Underbog Mushroom (1)
21914, -- Bog Overlord (1)
20629, -- Hydromancer Thespia (1)
20630, -- Mekgineer Steamrigger (1)
20631, -- Naga Distiller (1)
20633, -- Warlord Kalithresh (1)
20521, -- Captain Skarloc (1)
28171, -- Don Carlos (1)
20531, -- Epoch Hunter (1)
20535, -- Lieutenant Drake (1)
20737, -- Aeonus (1)
20738, -- Chrono Lord Deja (1)
22170, -- Rift Keeper (1)
20744, -- Rift Lord (1)
20745, -- Temporus (1)
20254, -- Ethereal Beacon (1)
20266, -- Nexus-Prince Shaffar (1)
20265, -- Nexus Terror (1)
20267, -- Pandemonius (1)
20268, -- Tavarok (1)
23035, -- Anzu (1)
20690, -- Darkweaver Syth (1)
20692, -- Sethekk Guard (1)
20696, -- Sethekk Ravenguard (1)
20706, -- Talon King Ikiss (1)
20299, -- Auchenai Monk (1)
20303, -- Avatar of the Martyred (1)
20306, -- Exarch Maladaar (1)
20316, -- Raging Soul (1)
20318, -- Shirrak the Dead Watcher (1)
20305, -- Stolen Soul (1)
20636, -- Ambassador Hellmaw (1)
20637, -- Blackheart the Inciter (1)
20652, -- Fel Overseer (1)
20653, -- Grandmaster Vorpil (1)
20656, -- Malicious Instructor (1)
20657, -- Murmur (1)
22056, -- Coilfang Strider
22347, -- Colossus Lurker
22352, -- Colossus Rager
22009, -- Tainted Elemental
28126 -- Don Carlos
);

-- MECHANIC_SHIELD 262144 [22 spells] (Power Word: Shield)
-- UPDATE creature_template SET MechanicImmuneMask=MechanicImmuneMask|262144 WHERE entry IN ();

-- MECHANIC_SHACKLE 524288 [4 spells] (Shackle Undead)
UPDATE creature_template SET MechanicImmuneMask=MechanicImmuneMask|524288 WHERE entry IN (
23775, -- Head of the Horseman
23682, -- Headless Horseman
20303, -- Avatar of the Martyred (1)
20309, -- Phantasmal Possessor (1)
20305, -- Stolen Soul (1)
20316 -- Raging Soul (1)
);

-- MECHANIC_MOUNT 1048576 [238 spells] (Brown Horse, Red Mechanostrider, Violet Raptor, etc.)
-- UPDATE creature_template SET MechanicImmuneMask=MechanicImmuneMask|1048576 WHERE entry IN ();

-- MECHANIC_PERSUADE 2097152 [0 spells]
-- UPDATE creature_template SET MechanicImmuneMask=MechanicImmuneMask|2097152 WHERE entry IN ();

-- MECHANIC_TURN 4194304 [9 spells] (Turn Undead, Turn Evil)
UPDATE creature_template SET MechanicImmuneMask=MechanicImmuneMask|4194304 WHERE entry IN (
18327,20691, -- Time-Lost Controller
18401, -- Skra'gath
18478,20303, -- Avatar of the Martyred
18503,20309, -- Phantasmal Possessor
18535, -- Demos, Overseer of Hate
18536, -- Xirkos, Overseer of Fear
18694, -- Collidus the Warp-Watcher
18696, -- Kraator
18731,20636, -- Ambassador Hellmaw
18848,20656, -- Malicious Instructor
19226,20664, -- Void Traveler
19847, -- Levixus
20052, -- Crystalcore Mechanic
20483, -- Naberius
20866,21614, -- Soul Devourer
20875,21604, -- Negaton Screamer
20898,21598, -- Gargantuan Abyssal
20900,21621, -- Unchained Doombringer
21166, -- Illidari Dreadlord
21500, -- Morgroron
21501, -- Makazradon
22281, -- Galvanoth
22441, -- Teribus the Cursed
22853, -- Illidari Defiler
22869, -- Illidari Boneslicer
22930, -- Yor
22953, -- Wrathbone Flayer
22954, -- Illidari Fearbringer
22956, -- Sister of Pain
22957, -- Priestess of Dementia
22962, -- Priestess of Delight
22964, -- Sister of Pleasure
23111, -- Shadowy Construct
23161, -- Darkscreecher Akkarai
23337, -- Illidari Centurion
23339, -- Illidari Heartseeker
23353, -- Braxxus
23354, -- Mo'arg Incinerator
23355, -- Zarcsin
23375, -- Shadow Demon
23469, -- Enslaved Soul
23498, -- Parasitic Shadowfiend
23775, -- Head of the Horseman
25509, -- Priestess of Torment
25591, -- Painbringer
25592, -- Doomfire Destroyer
25593, -- Apocalypse Guard
25595, -- Chaos Gazer
25597, -- Oblivion Mage
25599, -- Cataclysm Hound
25772, -- Void Sentinel
25851, -- Volatile Fiend
25948 -- Doomfire Shard
);

-- MECHANIC_HORROR 8388608 [2 spells] (Death Coil, Psychic Horror)
UPDATE creature_template SET MechanicImmuneMask=MechanicImmuneMask|8388608 WHERE entry IN (
23122, -- Anzu (1)
17455,18051, -- Bonechewer Beastmaster
21525, -- Gatewatcher Gyro-Kill (1)
21526, -- Gatewatcher Iron-Hand (1)
21533, -- Mechano-Lord Capacitus (1)
21536, -- Nethermancer Sepethrea (1)
21537, -- Pathaleon the Calculator (1)
21538, -- Raging Flames (1)
21542, -- Tempest-Forge Destroyer (1)
21543, -- Tempest-Forge Patroller (1)
21551, -- Commander Sarannis (1)
21558, -- High Botanist Freywinn (1)
21559, -- Laj (1)
21560, -- Mutate Fear-Shrieker (1)
21561, -- Mutate Fleshlasher (1)
21562, -- Mutate Horror (1)
21574, -- Sunseeker Geomancer (1)
21578, -- Tempest-Forge Peacekeeper (1)
21581, -- Thorngrin the Tender (1)
21582, -- Warp Splinter (1)
21617, -- Akkiris Lightning-Waker (1)
21586, -- Arcatraz Sentinel (1)
21588, -- Blackwing Drakonaar (1)
21589, -- Blazing Trickster (1)
21590, -- Dalliah the Doomsayer (1)
21591, -- Death Watcher (1)
21593, -- Entropic Eye (1)
21594, -- Eredar Deathbringer (1)
21595, -- Eredar Soul-Eater (1)
21598, -- Gargantuan Abyssal (1)
21599, -- Harbinger Skyriss (1)
21604, -- Negaton Screamer (1)
21605, -- Negaton Warp-Master (1)
21606, -- Phase-Hunter (1)
21608, -- Protean Nightmare (1)
21610, -- Sargeron Archer (1)
21611, -- Sargeron Hellcaller (1)
20882,21613, -- Skulking Witch
21614, -- Soul Devourer (1)
21615, -- Spiteful Temptress (1)
21616, -- Sulfuron Magma-Thrower (1)
21618, -- Twilight Drakonaar (1)
21619, -- Unbound Devastator (1)
21621, -- Unchained Doombringer (1)
21623, -- Warder Corpse (1)
21624, -- Wrath-Scryer Soccothrates (1)
21626, -- Zereketh the Unbound (1)
18055, -- Bonechewer Ripper (1)
18432, -- Nazan (1)
18433, -- Omor the Unscarred (1)
18434, -- Vazruden (1)
18436, -- Watchkeeper Gargolmar (1)
18601, -- Broggok (1)
18607, -- Keli'dan the Breaker (1)
18621, -- The Maker (1)
20992, -- Blood Guard Porung (1)
20568, -- Grand Warlock Nethekurse (1)
20583, -- Shattered Hand Centurion (1)
20584, -- Shattered Hand Champion (1)
20588, -- Shattered Hand Houndmaster (1)
20589, -- Shattered Hand Legionnaire (1)
20596, -- Warbringer O'mrogg (1)
20597, -- Warchief Kargath Bladefist (1)
19886, -- Coilfang Defender (1)
19893, -- Mennu the Betrayer (1)
19894, -- Quagmirran (1)
19895, -- Rokmar the Crackler (1)
20164, -- Bog Giant (1)
20165, -- Claw (1)
20173, -- Fen Ray (1)
20168, -- Ghaz'an (1)
20169, -- Hungarfen (1)
22300, -- Spore Strider (1)
20183, -- Swamplord Musel'ek (1)
20184, -- The Black Stalker (1)
20187, -- Underbog Lord (1)
20189, -- Underbog Mushroom (1)
21914, -- Bog Overlord (1)
20629, -- Hydromancer Thespia (1)
20630, -- Mekgineer Steamrigger (1)
20631, -- Naga Distiller (1)
20633, -- Warlord Kalithresh (1)
20521, -- Captain Skarloc (1)
28171, -- Don Carlos (1)
20531, -- Epoch Hunter (1)
20535, -- Lieutenant Drake (1)
20737, -- Aeonus (1)
20738, -- Chrono Lord Deja (1)
22170, -- Rift Keeper (1)
20744, -- Rift Lord (1)
20745, -- Temporus (1)
20254, -- Ethereal Beacon (1)
20262, -- Ethereal Wraith (1)
20266, -- Nexus-Prince Shaffar (1)
20265, -- Nexus Terror (1)
20267, -- Pandemonius (1)
20268, -- Tavarok (1)
23035, -- Anzu (1)
20688, -- Cobalt Serpent (1)
20690, -- Darkweaver Syth (1)
20692, -- Sethekk Guard (1)
20696, -- Sethekk Ravenguard (1)
20706, -- Talon King Ikiss (1)
20691, -- Time-Lost Controller (1)
20697, -- Time-Lost Scryer (1)
20298, -- Angered Skeleton (1)
20299, -- Auchenai Monk (1)
20303, -- Avatar of the Martyred (1)
20306, -- Exarch Maladaar (1)
20309, -- Phantasmal Possessor (1)
20310, -- Phasing Cleric (1)
20311, -- Phasing Soldier (1)
20312, -- Phasing Sorcerer (1)
20313, -- Phasing Stalker (1)
20315, -- Raging Skeleton (1)
20316, -- Raging Soul (1)
20317, -- Reanimated Bones (1)
20318, -- Shirrak the Dead Watcher (1)
20305, -- Stolen Soul (1)
20320, -- Unliving Cleric (1)
20321, -- Unliving Soldier (1)
20322, -- Unliving Sorcerer (1)
20323, -- Unliving Stalker (1)
20636, -- Ambassador Hellmaw (1)
20637, -- Blackheart the Inciter (1)
20652, -- Fel Overseer (1)
20653, -- Grandmaster Vorpil (1)
20656, -- Malicious Instructor (1)
20657, -- Murmur (1)
20662, -- Tortured Skeleton (1)
20664, -- Void Traveler (1)
23775, -- Head of the Horseman
23682, -- Headless Horseman
22056, -- Coilfang Strider
22347, -- Colossus Lurker
22352, -- Colossus Rager
22009, -- Tainted Elemental
21270, -- Cosmic Infuser
20052, -- Crystalcore Mechanic
21269, -- Devastation
21271, -- Infinity Blades
21268, -- Netherstrand Longbow
21273, -- Phaseshift Bulwark
18806, -- Solarium Priest
21274, -- Staff of Disintegration
21272, -- Warp Slicer
28126 -- Don Carlos
);

-- MECHANIC_INVULNERABILITY 16777216 [4 spells] (not needed for creatures?)
-- UPDATE creature_template SET MechanicImmuneMask=MechanicImmuneMask|16777216 WHERE entry IN ();

-- MECHANIC_INTERRUPT 33554432 [20 spells] (Counterspell, Pummel)
UPDATE creature_template SET MechanicImmuneMask=MechanicImmuneMask|33554432 WHERE entry IN (
17306,18436, -- Watchkeeper Gargolmar
23122, -- Anzu (1)
21522, -- Bloodwarder Centurion (1)
21524, -- Bloodwarder Slayer (1)
21526, -- Gatewatcher Iron-Hand (1)
21527, -- Mechanar Crusher (1)
21528, -- Mechanar Driller (1)
21531, -- Mechanar Tinkerer (1)
21532, -- Mechanar Wrecker (1)
21533, -- Mechano-Lord Capacitus (1)
21536, -- Nethermancer Sepethrea (1)
21537, -- Pathaleon the Calculator (1)
21538, -- Raging Flames (1)
21540, -- Sunseeker Engineer (1)
21543, -- Tempest-Forge Patroller (1)
21549, -- Bloodwarder Steward (1)
21551, -- Commander Sarannis(1)
21558, -- High Botanist Freywinn (1)
21559, -- Laj (1)
21581, -- Thorngrin the Tender (1)
21582, -- Warp Splinter (1)
21617, -- Akkiris Lightning-Waker (1)
21588, -- Blackwing Drakonaar (1)
21589, -- Blazing Trickster (1)
21591, -- Death Watcher (1)
21593, -- Entropic Eye (1)
21594, -- Eredar Deathbringer (1)
21595, -- Eredar Soul-Eater (1)
21598, -- Gargantuan Abyssal (1)
21599, -- Harbinger Skyriss (1)
21604, -- Negaton Screamer (1)
21605, -- Negaton Warp-Master (1)
21606, -- Phase-Hunter (1)
21608, -- Protean Nightmare (1)
21610, -- Sargeron Archer (1)
21611, -- Sargeron Hellcaller (1)
20882,21613, -- Skulking Witch
21614, -- Soul Devourer (1)
21615, -- Spiteful Temptress (1)
21616, -- Sulfuron Magma-Thrower (1)
21618, -- Twilight Drakonaar (1)
21619, -- Unbound Devastator (1)
21621, -- Unchained Doombringer (1)
21624, -- Wrath-Scryer Soccothrates (1)
21626, -- Zereketh the Unbound (1)
18432, -- Nazan (1)
18433, -- Omor the Unscarred (1)
18434, -- Vazruden (1)
18601, -- Broggok (1)
18607, -- Keli'dan the Breaker (1)
18621, -- The Maker (1)
20568, -- Grand Warlock Nethekurse (1)
20596, -- Warbringer O'mrogg (1)
20597, -- Warchief Kargath Bladefist (1)
19893, -- Mennu the Betrayer (1)
19894, -- Quagmirran (1)
19895, -- Rokmar the Crackler (1)
20164, -- Bog Giant (1)
20165, -- Claw (1)
20168, -- Ghaz'an (1)
20169, -- Hungarfen (1)
20183, -- Swamplord Musel'ek (1)
20184, -- The Black Stalker (1)
20187, -- Underbog Lord (1)
20189, -- Underbog Mushroom (1)
21914, -- Bog Overlord (1)
20629, -- Hydromancer Thespia (1)
20630, -- Mekgineer Steamrigger (1)
20631, -- Naga Distiller (1)
20633, -- Warlord Kalithresh (1)
28171, -- Don Carlos (1)
20531, -- Epoch Hunter (1)
20535, -- Lieutenant Drake (1)
20737, -- Aeonus (1)
20738, -- Chrono Lord Deja (1)
22170, -- Rift Keeper (1)
20744, -- Rift Lord (1)
20745, -- Temporus (1)
20254, -- Ethereal Beacon (1)
20266, -- Nexus-Prince Shaffar (1)
20267, -- Pandemonius (1)
20268, -- Tavarok (1)
23035, -- Anzu (1)
20690, -- Darkweaver Syth (1)
20706, -- Talon King Ikiss (1)
20303, -- Avatar of the Martyred (1)
20306, -- Exarch Maladaar (1)
20309, -- Phantasmal Possessor (1)
20316, -- Raging Soul (1)
20318, -- Shirrak the Dead Watcher (1)
20305, -- Stolen Soul (1)
20636, -- Ambassador Hellmaw (1)
20637, -- Blackheart the Inciter (1)
20652, -- Fel Overseer (1)
20653, -- Grandmaster Vorpil (1)
20657, -- Murmur (1)
21221, -- Coilfang Beast-Tamer
22347, -- Colossus Lurker
21958, -- Enchanted Elemental
21230, -- Greyheart Nether-Mage
21232, -- Greyheart Skulker
21229, -- Greyheart Tidecaller
21212, -- Lady Vashj
21213, -- Morogrim Tidewalker
21875, -- Shadow of Leotheras
22009, -- Tainted Elemental
21226, -- Tidewalker Shaman
20043, -- Apprentice Star Scryer
20033, -- Astromancer
20046, -- Astromancer Lord
20031, -- Bloodwarder Legionnaire
20035, -- Bloodwarder Marshal
20047, -- Crimson Hand Battle Mage
20049, -- Crimson Hand Blood Knight
20062, -- Grand Astromancer Capernian
20060, -- Lord Sanguinar
20063, -- Master Engineer Telonicus
20045, -- Nether Scryer
20044, -- Novice Astromancer
21362, -- Phoenix
20039, -- Phoenix-Hawk
20034, -- Star Scryer
20037, -- Tempest Falconer
20064, -- Thaladred the Darkener
19516, -- Void Reaver
28126, -- Don Carlos
20535, -- Lieutenant Drake (1)
21540 -- Sunseeker Engineer (1)
);

-- MECHANIC_DAZE 67108864 [7 spells] (Avenger's Shield)
UPDATE creature_template SET MechanicImmuneMask=MechanicImmuneMask|67108864 WHERE entry IN (
23775, -- Head of the Horseman
23682 -- Headless Horseman
);

-- MECHANIC_DISCOVERY 134217728 [58 spells] (for finding new alchemy potions/transmutes - players only?)
-- UPDATE creature_template SET MechanicImmuneMask=MechanicImmuneMask|67108864 WHERE entry IN ();

-- MECHANIC_IMMUNE_SHIELD 268435456 [11 spells] (Divine Shield, Divine Protection, Blessing of Protection, Ice Block)
-- UPDATE creature_template SET MechanicImmuneMask=MechanicImmuneMask|268435456 WHERE entry IN ();

-- MECHANIC_SAPPED 536870912 [3 spells] (Rogue Sap only)
UPDATE creature_template SET MechanicImmuneMask=MechanicImmuneMask|536870912 WHERE entry IN (
16700, -- Shattered Hand Legionnaire
21525, -- Gatewatcher Gyro-Kill (1)
21526, -- Gatewatcher Iron-Hand (1)
21536, -- Nethermancer Sepethrea (1)
21537, -- Pathaleon the Calculator (1)
21551, -- Commander Sarannis (1)
21558, -- High Botanist Freywinn (1)
21574, -- Sunseeker Geomancer (1)
21623, -- Warder Corpse (1)
18051, -- Bonechewer Beastmaster (1)
18055, -- Bonechewer Ripper (1)
18436, -- Watchkeeper Gargolmar (1)
20992, -- Blood Guard Porung (1)
20568, -- Grand Warlock Nethekurse (1)
20583, -- Shattered Hand Centurion (1)
20584, -- Shattered Hand Champion (1)
20588, -- Shattered Hand Houndmaster (1)
20589, -- Shattered Hand Legionnaire (1)
20596, -- Warbringer O'mrogg (1)
20597, -- Warchief Kargath Bladefist (1)
19886, -- Coilfang Defender (1)
19893, -- Mennu the Betrayer (1)
20183, -- Swamplord Musel'ek (1)
20629, -- Hydromancer Thespia (1)
20633, -- Warlord Kalithresh (1)
20521, -- Captain Skarloc (1)
28171, -- Don Carlos (1)
20535, -- Lieutenant Drake (1)
20266, -- Nexus-Prince Shaffar (1)
20690, -- Darkweaver Syth (1)
20692, -- Sethekk Guard (1)
20696, -- Sethekk Ravenguard (1)
20706, -- Talon King Ikiss (1)
20299, -- Auchenai Monk (1)
20306, -- Exarch Maladaar (1)
20637, -- Blackheart the Inciter (1)
20653, -- Grandmaster Vorpil (1)
28126 -- Don Carlos
);

-- =======================================================================================
-- Add missing ExtraFlags
-- =======================================================================================

-- CREATURE_EXTRA_FLAG_INSTANCE_BIND 1
-- UPDATE creature_template SET ExtraFlags=ExtraFlags|1 WHERE entry IN ();

-- CREATURE_EXTRA_FLAG_NO_AGGRO_ON_SIGHT 2
-- UPDATE creature_template SET ExtraFlags=ExtraFlags|2 WHERE entry IN ();

-- CREATURE_EXTRA_FLAG_NO_PARRY 4
-- UPDATE creature_template SET ExtraFlags=ExtraFlags|4 WHERE entry IN ();

-- CREATURE_EXTRA_FLAG_NO_PARRY_HASTEN 8
-- UPDATE creature_template SET ExtraFlags=ExtraFlags|8 WHERE entry IN ();

-- CREATURE_EXTRA_FLAG_NO_BLOCK 16
-- UPDATE creature_template SET ExtraFlags=ExtraFlags|16 WHERE entry IN ();

-- CREATURE_EXTRA_FLAG_NO_CRUSH 32
-- UPDATE creature_template SET ExtraFlags=ExtraFlags|32 WHERE entry IN ();

-- CREATURE_EXTRA_FLAG_NO_XP_AT_KILL 64
-- UPDATE creature_template SET ExtraFlags=ExtraFlags|64 WHERE entry IN ();

-- CREATURE_EXTRA_FLAG_INVISIBLE 128
-- UPDATE creature_template SET ExtraFlags=ExtraFlags|128 WHERE entry IN ();

-- CREATURE_EXTRA_FLAG_NOT_TAUNTABLE 256
UPDATE creature_template SET ExtraFlags=ExtraFlags|256 WHERE entry IN (
23775, -- Head of the Horseman
21875, -- Shadow of Leotheras
19622, -- Kael'thas Sunstrider
20062, -- Grand Astromancer Capernian
20060, -- Lord Sanguinar
20063, -- Master Engineer Telonicus
20064, -- Thaladred the Darkener
21362, -- Phoenix
20737, -- Aeonus (1)
20745, -- Temporus (1)
20189, -- Underbog Mushroom (1)
21590, -- Dalliah the Doomsayer (1)
20596 -- Warbringer O'mrogg (1)
);

-- CREATURE_EXTRA_FLAG_AGGRO_ZONE 512
-- UPDATE creature_template SET ExtraFlags=ExtraFlags|512 WHERE entry IN ();

-- CREATURE_EXTRA_FLAG_GUARD 1024
-- UPDATE creature_template SET ExtraFlags=ExtraFlags|1024 WHERE entry IN ();

-- CREATURE_EXTRA_FLAG_NO_CALL_ASSIST 2048
-- UPDATE creature_template SET ExtraFlags=ExtraFlags|2048 WHERE entry IN ();

-- CREATURE_EXTRA_FLAG_ACTIVE 4096
-- UPDATE creature_template SET ExtraFlags=ExtraFlags|4096 WHERE entry IN ();

-- CREATURE_EXTRA_FLAG_MMAP_FORCE_ENABLE 8192
-- UPDATE creature_template SET ExtraFlags=ExtraFlags|8192 WHERE entry IN ();

-- CREATURE_EXTRA_FLAG_MMAP_FORCE_DISABLE 16384
-- UPDATE creature_template SET ExtraFlags=ExtraFlags|16384 WHERE entry IN ();

-- CREATURE_EXTRA_FLAG_WALK_IN_WATER 32768
-- UPDATE creature_template SET ExtraFlags=ExtraFlags|32768 WHERE entry IN ();

-- CREATURE_EXTRA_FLAG_CIVILIAN 65536
-- UPDATE creature_template SET ExtraFlags=ExtraFlags|65536 WHERE entry IN ();

-- CREATURE_EXTRA_FLAG_NO_MELEE 131072
-- UPDATE creature_template SET ExtraFlags=ExtraFlags|131072 WHERE entry IN ();

-- CREATURE_EXTRA_FLAG_RESERVED_KILLERWIFE 262144
-- UPDATE creature_template SET ExtraFlags=ExtraFlags|262144 WHERE entry IN ();

-- CREATURE_EXTRA_FLAG_COUNT_SPAWNS 2097152
-- UPDATE creature_template SET ExtraFlags=ExtraFlags|2097152 WHERE entry IN ();

-- =======================================================================================
-- REMOVE wrong MechanicImmuneMask
-- =======================================================================================

-- REMOVE MECHANIC_CHARM 1 [44 spells] (Mind Control, Enslave Demon, Dominate Mind, Seduction, etc.)
UPDATE creature_template SET MechanicImmuneMask=MechanicImmuneMask&~1 WHERE entry IN (
20252, -- Arcane Fiend (1)
20302, -- Auchenai Vindicator (1)
18049, -- Bleeding Hollow Darkcaster (1)
18054, -- Bonechewer Ravener (1)
18612, -- Nascent Fel Orc (1)
20579, -- Shattered Hand Archer (1)
20193, -- Wrathfin Warrior (1)
21570, -- Sunseeker Botanist (1)
21587 -- Arcatraz Warder (1)
);

-- REMOVE MECHANIC_DISORIENTED 2 [3 spells] (Blind)
UPDATE creature_template SET MechanicImmuneMask=MechanicImmuneMask&~2 WHERE entry IN (
20585, -- Shattered Hand Executioner (1)
20175, -- Lykul Wasp (1)
20191, -- Wrathfin Myrmidon (1)
20192, -- Wrathfin Sentry (1)
20193, -- Wrathfin Warrior (1)
22346, -- Ethereum Life-Binder (1)
21596, -- Ethereum Slayer (1)
21612 -- Sightless Eye (1)
);

-- REMOVE MECHANIC_DISARM 4 [28 spells]
-- UPDATE creature_template SET MechanicImmuneMask=MechanicImmuneMask&~4 WHERE entry IN ();

-- REMOVE MECHANIC_DISTRACT 8 [5 spells]
UPDATE creature_template SET MechanicImmuneMask=MechanicImmuneMask&~8 WHERE entry IN (
20266, -- Nexus-Prince Shaffar (1)
20267, -- Pandemonius (1)
20268, -- Tavarok (1)
20690, -- Darkweaver Syth (1)
20706, -- Talon King Ikiss (1)
20299, -- Auchenai Monk (1)
20306, -- Exarch Maladaar (1)
20318, -- Shirrak the Dead Watcher (1)
20636, -- Ambassador Hellmaw (1)
20637, -- Blackheart the Inciter (1)
20652, -- Fel Overseer (1)
20653, -- Grandmaster Vorpil (1)
20657, -- Murmur (1)
17308,18433, -- Omor the Unscarred
17306,18436, -- Watchkeeper Gargolmar
18621, -- The Maker (1)
20568, -- Grand Warlock Nethekurse (1)
20585, -- Shattered Hand Executioner (1)
20596, -- Warbringer O'mrogg (1)
20597, -- Warchief Kargath Bladefist (1)
20521, -- Captain Skarloc (1)
20535, -- Lieutenant Drake (1)
20737, -- Aeonus (1)
20738, -- Chrono Lord Deja (1)
22170, -- Rift Keeper (1)
20744, -- Rift Lord (1)
19891, -- Coilfang Technician (1)
21843, -- Coilfang Tempest (1)
19893, -- Mennu the Betrayer (1)
19894, -- Quagmirran (1)
19895, -- Rokmar the Crackler (1)
20164, -- Bog Giant (1)
20165, -- Claw (1)
20168, -- Ghaz'an (1)
20169, -- Hungarfen (1)
20183, -- Swamplord Musel'ek (1)
20184, -- The Black Stalker (1)
20187, -- Underbog Lord (1)
20191, -- Wrathfin Myrmidon (1)
20192, -- Wrathfin Sentry (1)
20193, -- Wrathfin Warrior (1)
21914, -- Bog Overlord (1)
20629, -- Hydromancer Thespia (1)
20630, -- Mekgineer Steamrigger (1)
20633, -- Warlord Kalithresh (1)
21525, -- Gatewatcher Gyro-Kill (1)
21526, -- Gatewatcher Iron-Hand (1)
21536, -- Nethermancer Sepethrea (1)
21537, -- Pathaleon the Calculator (1)
21551, -- Commander Sarannis (1)
21558, -- High Botanist Freywinn (1)
21559, -- Laj (1)
21582, -- Warp Splinter (1)
21590, -- Dalliah the Doomsayer (1)
21591, -- Death Watcher (1)
21593, -- Entropic Eye (1)
21594, -- Eredar Deathbringer (1)
21595, -- Eredar Soul-Eater (1)
22346, -- Ethereum Life-Binder (1)
21596, -- Ethereum Slayer (1)
21608, -- Protean Nightmare (1)
21610, -- Sargeron Archer (1)
21611, -- Sargeron Hellcaller (1)
21612, -- Sightless Eye (1)
21614, -- Soul Devourer (1)
21623, -- Warder Corpse (1)
21624, -- Wrath-Scryer Soccothrates (1)
21626 -- Zereketh the Unbound (1)
);

-- REMOVE MECHANIC_FEAR 16 [100 spells] (Scare Beast, Fear, Psychic Scream, Howl of Terror, etc.)
UPDATE creature_template SET MechanicImmuneMask=MechanicImmuneMask&~16 WHERE entry IN (
20585, -- Shattered Hand Executioner (1)
19884, -- Bogstrok (1)
19892, -- Greater Bogstrok (1)
20175, -- Lykul Wasp (1)
20185, -- Underbat (1)
21943, -- Underbog Frenzy (1)
20188, -- Underbog Lurker (1)
20190, -- Underbog Shambler (1)
20192, -- Wrathfin Sentry (1)
21549, -- Bloodwarder Steward (1)
22346, -- Ethereum Life-Binder (1)
21596, -- Ethereum Slayer (1)
21607, -- Protean Horror (1)
21612 -- Sightless Eye (1)
);

-- REMOVE MECHANIC_FUMBLE 32 [1 spell] (decreases target's chance to hit?)
-- UPDATE creature_template SET MechanicImmuneMask=MechanicImmuneMask&~32 WHERE entry IN ();

-- REMOVE MECHANIC_ROOT 64 [126 spells] (Entangling Roots, Frost Nova, Improved Wing Clip, various Net abilities)
UPDATE creature_template SET MechanicImmuneMask=MechanicImmuneMask&~64 WHERE entry IN (
20299, -- Auchenai Monk (1)
18054, -- Bonechewer Ravener (1)
20583, -- Shattered Hand Centurion (1)
20584, -- Shattered Hand Champion (1)
20585, -- Shattered Hand Executioner (1)
20586, -- Shattered Hand Gladiator (1)
20532, -- Infinite Defiler (1)
20533, -- Infinite Saboteur (1)
20534, -- Infinite Slayer (1)
19891, -- Coilfang Technician (1)
21843, -- Coilfang Tempest (1)
20168, -- Ghaz'an (1)
20175, -- Lykul Wasp (1)
20191, -- Wrathfin Myrmidon (1)
20193, -- Wrathfin Warrior (1)
21526, -- Gatewatcher Iron-Hand (1)
21617, -- Akkiris Lightning-Waker (1)
22346, -- Ethereum Life-Binder (1)
21596, -- Ethereum Slayer (1)
21612 -- Sightless Eye (1)
);

-- REMOVE MECHANIC_PACIFY 128 [0 spells]
-- UPDATE creature_template SET MechanicImmuneMask=MechanicImmuneMask&~128 WHERE entry IN ();

-- REMOVE MECHANIC_SILENCE 256 [55 spells] (Kick - Silenced, Counterspell - Silenced, Shield Bash - Silenced, Arcane Torrent, Spell Lock)
UPDATE creature_template SET MechanicImmuneMask=MechanicImmuneMask&~256 WHERE entry IN (
20299, -- Auchenai Monk (1)
20585, -- Shattered Hand Executioner (1)
19891, -- Coilfang Technician (1)
21843, -- Coilfang Tempest (1)
20173, -- Fen Ray (1)
20175, -- Lykul Wasp (1)
22346, -- Ethereum Life-Binder (1)
21596, -- Ethereum Slayer (1)
21597, -- Ethereum Wave-Caster (1)
21612 -- Sightless Eye (1)
);

-- REMOVE MECHANIC_SLEEP 512 [40 spells] (Hibernate, Wyvern Sting, Sleep)
UPDATE creature_template SET MechanicImmuneMask=MechanicImmuneMask&~512 WHERE entry IN (
20574, -- Rabid Warhound (1)
20585, -- Shattered Hand Executioner (1)
19891, -- Coilfang Technician (1)
21843, -- Coilfang Tempest (1)
20191, -- Wrathfin Myrmidon (1)
20192, -- Wrathfin Sentry (1)
20193, -- Wrathfin Warrior (1)
22346, -- Ethereum Life-Binder (1)
21596, -- Ethereum Slayer (1)
21612 -- Sightless Eye (1)
);

-- REMOVE MECHANIC_SNARE 1024 [186 spells] (Slow, Thunderclap, Hamstring, Concussive Shot, Chilled, Earthbind, etc.)
UPDATE creature_template SET MechanicImmuneMask=MechanicImmuneMask&~1024 WHERE entry IN (
17270,18048, -- Bleeding Hollow Archer
17271,18052, -- Bonechewer Destroyer
20299, -- Auchenai Monk (1)
17259,18053, -- Bonechewer Hungerer
20585, -- Shattered Hand Executioner (1)
19891, -- Coilfang Technician (1)
21843, -- Coilfang Tempest (1)
20175, -- Lykul Wasp (1)
20185, -- Underbat (1)
21943, -- Underbog Frenzy (1)
20188, -- Underbog Lurker (1)
20190, -- Underbog Shambler (1)
22346, -- Ethereum Life-Binder (1)
21596, -- Ethereum Slayer (1)
21607, -- Protean Horror (1)
21612 -- Sightless Eye (1)
);

-- REMOVE MECHANIC_STUN 2048 [266 spells] (War Stomp, Hammer of Justice, Cheap Shot, etc.)
UPDATE creature_template SET MechanicImmuneMask=MechanicImmuneMask&~2048 WHERE entry IN (
17270,18048, -- Bleeding Hollow Archer
17271,18052, -- Bonechewer Destroyer
17455,18051, -- Bonechewer Beastmaster
17259,18053, -- Bonechewer Hungerer
17281,18055, -- Bonechewer Ripper
20585, -- Shattered Hand Executioner (1)
20588, -- Shattered Hand Houndmaster (1)
19886, -- Coilfang Defender (1)
19891, -- Coilfang Technician (1)
21843, -- Coilfang Tempest (1)
20185, -- Underbat (1)
21943, -- Underbog Frenzy (1)
20188, -- Underbog Lurker (1)
20190, -- Underbog Shambler (1)
20191, -- Wrathfin Myrmidon (1)
20192, -- Wrathfin Sentry (1)
20193, -- Wrathfin Warrior (1)
22346, -- Ethereum Life-Binder (1)
21596, -- Ethereum Slayer (1)
21612 -- Sightless Eye (1)
);

-- REMOVE MECHANIC_FREEZE 4096 [8 spells] (Freezing Trap)
UPDATE creature_template SET MechanicImmuneMask=MechanicImmuneMask&~4096 WHERE entry IN (
17264,18054, -- Bonechewer Ravener
17270,18048, -- Bleeding Hollow Archer
17271,18052, -- Bonechewer Destroyer
17259,18053, -- Bonechewer Hungerer
20585, -- Shattered Hand Executioner (1)
20586, -- Shattered Hand Gladiator (1)
20532, -- Infinite Defiler (1)
20533, -- Infinite Saboteur (1)
20534, -- Infinite Slayer (1)
22346, -- Ethereum Life-Binder (1)
21596, -- Ethereum Slayer (1)
21612 -- Sightless Eye (1)
);

-- REMOVE MECHANIC_KNOCKOUT 8192 [20 spells] (Gouge, Blast Wave, Repentance)
UPDATE creature_template SET MechanicImmuneMask=MechanicImmuneMask&~8192 WHERE entry IN (
20585, -- Shattered Hand Executioner (1)
22346, -- Ethereum Life-Binder (1)
21596, -- Ethereum Slayer (1)
21612 -- Sightless Eye (1)
);

-- REMOVE MECHANIC_BLEED 16384 [130 spells] (Garrote, Rupture, Rend, Deep Wounds, Rip, etc.)
UPDATE creature_template SET MechanicImmuneMask=MechanicImmuneMask&~16384 WHERE entry IN (
17536,18432, -- Nazan
17537,18434 -- Vazruden
);

-- REMOVE MECHANIC_BANDAGE 32768 [24 spells] (why would this need to be applied to creatures?)
UPDATE creature_template SET MechanicImmuneMask=MechanicImmuneMask&~32768 WHERE entry IN (
17536,18432, -- Nazan
17537,18434 -- Vazruden
);

-- REMOVE MECHANIC_POLYMORPH 65536 [69 spells] (Polymorph, Hex)
UPDATE creature_template SET MechanicImmuneMask=MechanicImmuneMask&~65536 WHERE entry IN (
17270,18048, -- Bleeding Hollow Archer
17271,18052, -- Bonechewer Destroyer
17259,18053, -- Bonechewer Hungerer
20585, -- Shattered Hand Executioner (1)
20586, -- Shattered Hand Gladiator (1)
20532, -- Infinite Defiler (1)
20533, -- Infinite Saboteur (1)
20534, -- Infinite Slayer (1)
19884, -- Bogstrok (1)
19892, -- Greater Bogstrok (1)
20174, -- Lykul Stinger (1)
22346, -- Ethereum Life-Binder (1)
21596 -- Ethereum Slayer (1)
);

-- REMOVE MECHANIC_BANISH 131072 [20 spells] (Cyclone, Banish)
UPDATE creature_template SET MechanicImmuneMask=MechanicImmuneMask&~131072 WHERE entry IN (
20585, -- Shattered Hand Executioner (1)
19891, -- Coilfang Technician (1)
21843, -- Coilfang Tempest (1)
20191, -- Wrathfin Myrmidon (1)
20192, -- Wrathfin Sentry (1)
20193, -- Wrathfin Warrior (1)
22346, -- Ethereum Life-Binder (1)
21596, -- Ethereum Slayer (1)
21612 -- Sightless Eye (1)
);

-- REMOVE MECHANIC_SHIELD 262144 [22 spells] (Power Word: Shield)
-- UPDATE creature_template SET MechanicImmuneMask=MechanicImmuneMask&~262144 WHERE entry IN ();

-- REMOVE MECHANIC_SHACKLE 524288 [4 spells] (Shackle Undead)
-- UPDATE creature_template SET MechanicImmuneMask=MechanicImmuneMask&~524288 WHERE entry IN ();

-- REMOVE MECHANIC_MOUNT 1048576 [238 spells] (Brown Horse, Red Mechanostrider, Violet Raptor, etc.)
UPDATE creature_template SET MechanicImmuneMask=MechanicImmuneMask&~1048576 WHERE entry IN (
17536,18432, -- Nazan
17537,18434 -- Vazruden
);

-- REMOVE MECHANIC_PERSUADE 2097152 [0 spells]
-- UPDATE creature_template SET MechanicImmuneMask=MechanicImmuneMask&~2097152 WHERE entry IN ();

-- REMOVE MECHANIC_TURN 4194304 [9 spells] (Turn Undead, Turn Evil)
-- UPDATE creature_template SET MechanicImmuneMask=MechanicImmuneMask&~4194304 WHERE entry IN ();

-- REMOVE MECHANIC_HORROR 8388608 [2 spells] (Death Coil, Psychic Horror)
UPDATE creature_template SET MechanicImmuneMask=MechanicImmuneMask&~8388608 WHERE entry IN (
20585, -- Shattered Hand Executioner (1)
20175, -- Lykul Wasp (1)
20185, -- Underbat (1)
21943, -- Underbog Frenzy (1)
20188, -- Underbog Lurker (1)
20190, -- Underbog Shambler (1)
20191, -- Wrathfin Myrmidon (1)
20192, -- Wrathfin Sentry (1)
20193, -- Wrathfin Warrior (1)
22346, -- Ethereum Life-Binder (1)
21596, -- Ethereum Slayer (1)
21612 -- Sightless Eye (1)
);

-- REMOVE MECHANIC_INVULNERABILITY 16777216 [4 spells] (not needed for creatures?)
UPDATE creature_template SET MechanicImmuneMask=MechanicImmuneMask&~16777216 WHERE entry IN (
17536,18432, -- Nazan
17537,18434 -- Vazruden
);

-- REMOVE MECHANIC_INTERRUPT 33554432 [20 spells] (Counterspell, Pummel)
UPDATE creature_template SET MechanicImmuneMask=MechanicImmuneMask&~33554432 WHERE entry IN (
19891, -- Coilfang Technician (1)
21843, -- Coilfang Tempest (1)
20173, -- Fen Ray (1)
21525, -- Gatewatcher Gyro-Kill (1)
21537, -- Pathaleon the Calculator (1)
21623 -- Warder Corpse (1)
);

-- REMOVE MECHANIC_DAZE 67108864 [7 spells] (Avenger's Shield)
-- UPDATE creature_template SET MechanicImmuneMask=MechanicImmuneMask&~67108864 WHERE entry IN ();

-- REMOVE MECHANIC_DISCOVERY 134217728 [58 spells] (for finding new alchemy potions/transmutes - players only?)
-- UPDATE creature_template SET MechanicImmuneMask=MechanicImmuneMask&~67108864 WHERE entry IN ();

-- REMOVE MECHANIC_IMMUNE_SHIELD 268435456 [11 spells] (Divine Shield, Divine Protection, Blessing of Protection, Ice Block)
-- UPDATE creature_template SET MechanicImmuneMask=MechanicImmuneMask&~268435456 WHERE entry IN ();

-- REMOVE MECHANIC_SAPPED 536870912 [3 spells] (Rogue Sap only)
UPDATE creature_template SET MechanicImmuneMask=MechanicImmuneMask&~536870912 WHERE entry IN (
17270,18048, -- Bleeding Hollow Archer
17271,18052, -- Bonechewer Destroyer
17259,18053, -- Bonechewer Hungerer
20532, -- Infinite Defiler (1)
20533, -- Infinite Saboteur (1)
20534, -- Infinite Slayer (1)
22170, -- Rift Keeper (1)
20744, -- Rift Lord (1)
22346, -- Ethereum Life-Binder (1)
21596, -- Ethereum Slayer (1)
21612 -- Sightless Eye (1)
);

