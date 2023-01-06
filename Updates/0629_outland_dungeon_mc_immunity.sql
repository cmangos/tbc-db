-- Part of creature mc spell immunity research done by Saltgurka

-- ------------------
-- * Slave Pens * --
-- ------------------
-- Charmable in both Normal and Heroic
UPDATE creature_template SET MechanicImmuneMask=MechanicImmuneMask&~1 WHERE entry IN (
17940,19891, -- Coilfang Technician
17960,19890, -- Coilfang Soothsayer
17963,19902, -- Wastewalker Slave
17964,19904, -- Wastewalker Worker
21126,21842 -- Coilfang Scale-Healer
);

-- Charmable in Normal Only
UPDATE creature_template SET MechanicImmuneMask=MechanicImmuneMask&~1 WHERE entry IN (
17816, -- Bogstrok
17817, -- Greater Bogstrok
17938, -- Coilfang Observer
17957, -- Coilfang Champion
17958, -- Coilfang Defender
17959, -- Coilfang Slavehandler
17961, -- Coilfang Enchantress
17962, -- Coilfang Collaborator
21127 -- Coilfang Tempest
);
UPDATE creature_template SET MechanicImmuneMask=MechanicImmuneMask|1 WHERE entry IN (
19884, -- Bogstrok (1)
19892, -- Greater Bogstrok (1)
19888, -- Coilfang Observer (1)
19885, -- Coilfang Champion (1)
19886, -- Coilfang Defender (1)
19889, -- Coilfang Slavehandler (1)
19887, -- Coilfang Enchantress (1)
19903, -- Coilfang Collaborator (1)
21843 -- Coilfang Tempest (1)
);

-- ------------------
-- * Steamvaults * --
-- ------------------
-- Charmable in both Normal and Heroic
UPDATE creature_template SET MechanicImmuneMask=MechanicImmuneMask&~1 WHERE entry IN (
17721,20620, -- Coilfang Engineer
17722,20625, -- Coilfang Sorceress
17801,20623, -- Coilfang Siren
17803,20622, -- Coilfang Oracle
17951,20632, -- Steamrigger Mechanic
21338,21915 -- Coilfang Leper
);

-- Charmable in Normal Only
UPDATE creature_template SET MechanicImmuneMask=MechanicImmuneMask&~1 WHERE entry IN (
17800, -- Coilfang Myrmidon
17802, -- Coilfang Warrior
17805 -- Coilfang Slavemaster
);
UPDATE creature_template SET MechanicImmuneMask=MechanicImmuneMask|1 WHERE entry IN (
20621, -- Coilfang Myrmidon (1)
20626, -- Coilfang Warrior (1)
20624 -- Coilfang Slavemaster (1)
);

-- -------------------
-- * The Underbog * --
-- -------------------
-- Charmable in both Normal and Heroic
UPDATE creature_template SET MechanicImmuneMask=MechanicImmuneMask&~1 WHERE entry IN (
17728,20181, -- Murkblood Tribesman
17729,20180, -- Murkblood Spearman
17730,20177, -- Murkblood Healer
17735,20193, -- Wrathfin Warrior
17771,20179 -- Murkblood Oracle
);

-- Charmable in Normal Only
UPDATE creature_template SET MechanicImmuneMask=MechanicImmuneMask&~1 WHERE entry IN (
17726, -- Wrathfin Myrmidon
17727 -- Wrathfin Sentry
);
UPDATE creature_template SET MechanicImmuneMask=MechanicImmuneMask|1 WHERE entry IN (
20191, -- Wrathfin Myrmidon (1)
20192 -- Wrathfin Sentry (1)
);

-- -------------------------
-- * Hellfire Ramparts * --
-- -------------------------
-- Charmable in both Normal and Heroic
UPDATE creature_template SET MechanicImmuneMask=MechanicImmuneMask&~1 WHERE entry IN (
17264,18054, -- Bonechewer Ravener
17269,18049, -- Bleeding Hollow Darkcaster
17478,18050 -- Bleeding Hollow Scryer
);

-- Charmable in Normal Only
UPDATE creature_template SET MechanicImmuneMask=MechanicImmuneMask&~1 WHERE entry IN (
17259, -- Bonechewer Hungerer
17270, -- Bleeding Hollow Archer
17271, -- Bonechewer Destroyer
17309, -- Hellfire Watcher
17517 -- Hellfire Sentry
);
UPDATE creature_template SET MechanicImmuneMask=MechanicImmuneMask|1 WHERE entry IN (
18053, -- Bonechewer Hungerer (1)
18048, -- Bleeding Hollow Archer (1)
18052, -- Bonechewer Destroyer (1)
18058, -- Hellfire Watcher (1)
18057 -- Hellfire Sentry (1)
);

-- --------------------
-- * Blood Furnace * --
-- --------------------
-- Charmable in both Normal and Heroic
UPDATE creature_template SET MechanicImmuneMask=MechanicImmuneMask&~1 WHERE entry IN (
17371,18619, -- Shadowmoon Warlock
17395,18617, -- Shadowmoon Summoner
17414,18618, -- Shadowmoon Technician
17491,18610, -- Laughing Skull Rogue
17653,18620 -- Shadowmoon Channeler
);

-- Charmable in Normal Only
UPDATE creature_template SET MechanicImmuneMask=MechanicImmuneMask&~1 WHERE entry IN (
17370, -- Laughing Skull Enforcer
17397, -- Shadowmoon Adept
17624, -- Laughing Skull Warden
17626 -- Laughing Skull Legionnaire
);
UPDATE creature_template SET MechanicImmuneMask=MechanicImmuneMask|1 WHERE entry IN (
18608, -- Laughing Skull Enforcer (1)
18615, -- Shadowmoon Adept (1)
18611, -- Laughing Skull Warden (1)
18609 -- Laughing Skull Legionnaire (1)
);

-- Charmable in Heroic Only
UPDATE creature_template SET MechanicImmuneMask=MechanicImmuneMask&~1 WHERE entry IN (
18612 -- Nascent Fel Orc (1)
);
UPDATE creature_template SET MechanicImmuneMask=MechanicImmuneMask|1 WHERE entry IN (
17398 -- Nascent Fel Orc
);

-- ----------------------
-- * Shattered Halls * --
-- ----------------------

-- Charmable in both Normal and Heroic
UPDATE creature_template SET MechanicImmuneMask=MechanicImmuneMask&~1 WHERE entry IN (
16594,20576, -- Shadowmoon Acolyte
17083,20567, -- Fel Orc Convert
17427,20579, -- Shattered Hand Archer
17621,20569, -- Heathen Guard
17622,20578, -- Sharpshooter Guard
17623,20575, -- Reaver Guard
17694,20577 -- Shadowmoon Darkcaster
);

-- Charmable in Normal Only
UPDATE creature_template SET MechanicImmuneMask=MechanicImmuneMask&~1 WHERE entry IN (
16507, -- Shattered Hand Sentry
16523, -- Shattered Hand Savage
20582, -- Shattered Hand Brawler
16699, -- Shattered Hand Reaver
16704, -- Shattered Hand Sharpshooter
17420, -- Shattered Hand Heathen
17462, -- Shattered Hand Zealot
17464, -- Shattered Hand Gladiator
17670, -- Shattered Hand Houndmaster
17695 -- Shattered Hand Assassin 
);
UPDATE creature_template SET MechanicImmuneMask=MechanicImmuneMask|1 WHERE entry IN (
20593, -- Shattered Hand Sentry (1)
20591, -- Shattered Hand Savage (1)
20582, -- Shattered Hand Brawler (1)
20590, -- Shattered Hand Reaver (1)
20594, -- Shattered Hand Sharpshooter (1)
20587, -- Shattered Hand Heathen (1)
20595, -- Shattered Hand Zealot (1)
20586, -- Shattered Hand Gladiator (1)
20588, -- Shattered Hand Houndmaster (1)
20580 -- Shattered Hand Assassin (1)
);

