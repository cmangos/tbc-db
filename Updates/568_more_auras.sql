-- Missing auras
-- Source: WotLK-DB

-- Webwood Lurker
DELETE FROM creature_template_addon WHERE entry=1998;
INSERT INTO creature_template_addon (entry, mount, bytes1, b2_0_sheath, b2_1_flags, emote, moveflags, auras) VALUES
(1998, 0, 0, 1, 0, 0, 0, '11959'); -- Poison Proc

-- Webwood Venomfang
DELETE FROM creature_template_addon WHERE entry=1999;
INSERT INTO creature_template_addon (entry, mount, bytes1, b2_0_sheath, b2_1_flags, emote, moveflags, auras) VALUES
(1999, 0, 0, 1, 0, 0, 0, '11959'); -- Poison Proc

-- Spirit Healer
DELETE FROM creature_template_addon WHERE entry=6491;
INSERT INTO creature_template_addon (entry, mount, bytes1, b2_0_sheath, b2_1_flags, emote, moveflags, auras) VALUES
(6491, 0, 0, 1, 0, 0, 0, '10848'); -- Shroud of Death

-- Expedition Druid
DELETE FROM creature_template_addon WHERE entry=22206;
INSERT INTO creature_template_addon (entry, mount, bytes1, b2_0_sheath, b2_1_flags, emote, moveflags, auras) VALUES	
(22206, 0, 0, 1, 16, 0, 0, '20540'); -- Ashenvale Outrunner Sneak

-- Lord Alexei Barov
DELETE FROM creature_template_addon WHERE entry=10504;
INSERT INTO creature_template_addon (entry, mount, bytes1, b2_0_sheath, b2_1_flags, emote, moveflags, auras) VALUES	
(10504, 0, 0, 0, 0, 0, 0, '17467'); -- Unholy Aura

-- Weeder Greenthumb
DELETE FROM creature_template_addon WHERE entry=17890;
INSERT INTO creature_template_addon (entry, mount, bytes1, b2_0_sheath, b2_1_flags, emote, moveflags, auras) VALUES	
(17890, 0, 0, 1, 1, 0, 0, '29266'); -- Permanent Feign Death

-- Gankly Rottenfist
DELETE FROM creature_template_addon WHERE entry=18297;
INSERT INTO creature_template_addon (entry, mount, bytes1, b2_0_sheath, b2_1_flags, emote, moveflags, auras) VALUES	
(18297, 0, 0, 1, 16, 0, 0, '32199'); -- Stealth

-- Anvilrage Overseer
DELETE FROM creature_template_addon WHERE entry=8889;
INSERT INTO creature_template_addon (entry, mount, bytes1, b2_0_sheath, b2_1_flags, emote, moveflags, auras) VALUES	
(8889, 0, 0, 1, 16, 0, 0, '13589'); -- Haste Aura

-- Illidan Stormrage
DELETE FROM creature_template_addon WHERE entry=23467;
INSERT INTO creature_template_addon (entry, mount, bytes1, b2_0_sheath, b2_1_flags, emote, moveflags, auras) VALUES	
(23467, 0, 0, 0, 0, 0, 0, '37816'); -- Shadowform

-- Vengeful Unyielding Captain
DELETE FROM creature_template_addon WHERE entry=19864;
INSERT INTO creature_template_addon (entry, mount, bytes1, b2_0_sheath, b2_1_flags, emote, moveflags, auras) VALUES	
(19864, 0, 0, 0, 0, 0, 0, '33900'); -- Shroud of Death

-- Vengeful Unyielding Footman
DELETE FROM creature_template_addon WHERE entry=20137;
INSERT INTO creature_template_addon (entry, mount, bytes1, b2_0_sheath, b2_1_flags, emote, moveflags, auras) VALUES	
(20137, 0, 0, 0, 0, 0, 0, '33900'); -- Shroud of Death

-- Vengeful Draenei
DELETE FROM creature_template_addon WHERE entry=21636;
INSERT INTO creature_template_addon (entry, mount, bytes1, b2_0_sheath, b2_1_flags, emote, moveflags, auras) VALUES	
(21636, 0, 0, 1, 1, 0, 0, '17327 31748'); -- Spirit Particles, Spirit Particles, big

DELETE FROM creature_addon WHERE guid IN (SELECT guid FROM creature WHERE id IN (8889));


