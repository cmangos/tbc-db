-- random missing auras in Outland

-- Honor Hold Defender - Invisibility and Stealth Detection
UPDATE creature_template_addon SET auras='18950' WHERE entry=16842;

-- Deathwhisperer - Thrash, Flurry
UPDATE creature_template_addon SET auras='12787 15088' WHERE entry=19299;

-- Suspended Terrorguard - Green Banish State
DELETE FROM creature_template_addon WHERE entry=24933;
INSERT INTO creature_template_addon (entry, mount, bytes1, b2_0_sheath, b2_1_flags, emote, moveflags, auras) VALUES
('24933', '0', '0', '1', '16', '0', '0', '32567');

-- Hulking Helboar - Burning Spikes
UPDATE creature_template_addon SET auras='33908' WHERE entry=16880;

-- Sal'salabim - Double Attack
UPDATE creature_template_addon SET auras='19194' WHERE entry=18584;

-- Fenclaw Thrasher - Thrash
UPDATE creature_template_addon SET auras='8876' WHERE entry=18214;

-- Lagoon Walker - Moss Covered Feet Proc
UPDATE creature_template_addon SET auras='6871' WHERE entry=20291;

-- Aaron Hollman - Invisibility and Stealth Detection
UPDATE creature_template_addon SET auras='18950' WHERE entry=19662;

-- Shattrath City Peacekeeper - Defensive State (DND)
UPDATE creature_template_addon SET auras='5301' WHERE entry=19687;

-- Corrupted Treant -- Stone Skin Passive
UPDATE creature_template_addon SET auras='5811' WHERE entry=17352;

-- Mo'arg Master Planner - Double Attack
DELETE FROM creature_addon WHERE guid IN(SELECT guid FROM creature WHERE id=18567);
UPDATE creature_template_addon SET auras='19194' WHERE entry IN(18567);

-- Sporelok - Sporeskin
UPDATE `creature_template_addon` SET `auras` = '35230' WHERE `entry` = 18912;

-- Wyrmcult Blessed - Resistances
UPDATE `creature_template_addon` SET `auras` = '37637' WHERE `entry` = 21492;

