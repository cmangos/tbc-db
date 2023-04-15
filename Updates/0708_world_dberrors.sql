-- Fix some DB errors

-- s2464_01_mangos_string_id
-- https://github.com/cmangos/mangos-tbc/commit/68726e856f17534ecd669e2e7d78fdb773ee8fe9
ALTER TABLE db_version CHANGE COLUMN required_s2463_01_mangos_spawn_data_equip required_s2464_01_mangos_string_id bit;

ALTER TABLE creature_spawn_data_template ADD COLUMN `StringId` INT(11) UNSIGNED NOT NULL DEFAULT '0';
ALTER TABLE gameobject_addon ADD COLUMN `StringId` INT(11) UNSIGNED NOT NULL DEFAULT '0';
ALTER TABLE spawn_group ADD COLUMN `StringId` INT(11) UNSIGNED NOT NULL DEFAULT '0';
ALTER TABLE creature_template ADD COLUMN `StringId1` INT(11) UNSIGNED NOT NULL DEFAULT '0' AFTER `SpellList`;
ALTER TABLE creature_template ADD COLUMN `StringId2` INT(11) UNSIGNED NOT NULL DEFAULT '0' AFTER `StringId1`;
ALTER TABLE gameobject_template ADD COLUMN `StringId` INT(11) UNSIGNED NOT NULL DEFAULT '0' AFTER `maxgold`;
ALTER TABLE `creature_spawn_data_template` ADD COLUMN `Name` VARCHAR(200) NOT NULL;
UPDATE creature_spawn_data_template SET Name='GENERIC - NONE - DO NOT EDIT' WHERE entry IN(0);
UPDATE creature_spawn_data_template SET Name='GENERIC - SPAWN FLAG RUN' WHERE entry IN(1);
UPDATE creature_spawn_data_template SET Name='GENERIC - SPAWN FLAG HOVER' WHERE entry IN(2);
UPDATE creature_spawn_data_template SET Name='GENERIC - SPAWN FLAG RUN + HOVER' WHERE entry IN(3);

-- dbscripts_on_relay
-- Vanilla: 0 – 9999
-- TBC: 10000 – 19999
-- WoTLK 20000 +

-- no data in creature_spawn_data -> with removing equipment_id i researched the npcs that had data left in this column and added all potential equipsets i could find, but are yet unused for the spawns we have.

UPDATE creature_spawn_data_template SET Name = 'GENERIC - NpcFlags (1) - UNIT_NPC_FLAG_GOSSIP' WHERE Entry = '4';
UPDATE creature_spawn_data_template SET Name = 'GENERIC - EquipmentId (0) - No Equipment' WHERE Entry = '5';
-- https://github.com/cmangos/tbc-db/blob/ec39ea2bb1ed9d1ef95016b162f32aa81e888f43/Updates/0140_quest_the_binding.sql
-- UPDATE creature_spawn_data_template SET Name = 'Quest:The Binding: Summoned Voidwalker - RelayScript' WHERE Entry = '5676'; -- done in EAI
DELETE FROM `dbscripts_on_relay` WHERE id = '5676';
DELETE FROM `creature_spawn_data_template` WHERE entry = '5676';

-- UPDATE creature_spawn_data_template SET Name = 'Quest:The Binding: Summoned Felhunter - RelayScript' WHERE Entry = '6268'; -- also moved to EAI to free range
DELETE FROM `dbscripts_on_relay` WHERE id = '6268';
DELETE FROM `creature_spawn_data_template` WHERE entry = '6268';

UPDATE creature_spawn_data_template SET Name = 'Quest: The Madness Within: Shen\'dralar Ancient - RelayScript (7461)' WHERE Entry = '7461';
UPDATE creature_spawn_data_template SET Name = 'Quest: The Madness Within: Shen\'dralar Ancient - RelayScript (7462)' WHERE Entry = '7462';
UPDATE creature_spawn_data_template SET Name = 'Quest: The Madness Within: Shen\'dralar Ancient - RelayScript (7463)' WHERE Entry = '7463';
UPDATE creature_spawn_data_template SET Name = 'Quest: The Madness Within: Shen\'dralar Ancient - RelayScript (7464)' WHERE Entry = '7464';
UPDATE creature_spawn_data_template SET Name = 'Quest: The Madness Within: Shen\'dralar Ancient - RelayScript (7465)' WHERE Entry = '7465';
UPDATE creature_spawn_data_template SET Name = 'Quest: The Madness Within: Shen\'dralar Ancient - RelayScript (7466)' WHERE Entry = '7466';
UPDATE creature_spawn_data_template SET Name = 'Quest: The Madness Within: Shen\'dralar Ancient - RelayScript (7467)' WHERE Entry = '7467';
UPDATE creature_spawn_data_template SET Name = 'Defias Rioter - RelayScript (30510)' WHERE Entry = '9999';
UPDATE creature_spawn_data_template SET Name = 'Dark Iron Antagonist - UnitFlags and Faction' WHERE Entry = '10000';
UPDATE creature_spawn_data_template SET Name = 'Mutant War Hound - UnitFlags' WHERE Entry = '10001';
-- Bonechewer Blood Prophet, Bonechewer Shield Disciple, Bonechewer Blade Fury - UnitFlags
UPDATE creature_spawn_data_template SET Name = 'BT: Bonechewer NPCs - UnitFlags' WHERE Entry = '10002';
UPDATE creature_spawn_data_template SET Name = 'World Invisible Trigger - ModelId (dscripts_on_event 14143)' WHERE Entry = '10003'; -- used on dscripts_on_event id 14143
UPDATE creature_spawn_data_template SET Name = 'Cork Gizelton - RelayScript (1162501)' WHERE Entry = '11625';
UPDATE creature_spawn_data_template SET Name = 'Stillpine Captive - RelayScript (19970)' WHERE Entry = '19985';
UPDATE creature_spawn_data_template SET Name = 'Stillpine Captive - RelayScript (19971)' WHERE Entry = '19986';
UPDATE creature_spawn_data_template SET Name = 'Stillpine Captive - RelayScript (19972)' WHERE Entry = '19987';
UPDATE creature_spawn_data_template SET Name = 'Stillpine Captive - RelayScript (19973)' WHERE Entry = '19988';
UPDATE creature_spawn_data_template SET Name = 'Stillpine Captive - RelayScript (19974)' WHERE Entry = '19989';
UPDATE creature_spawn_data_template SET Name = 'Stillpine Captive - RelayScript (19975)' WHERE Entry = '19990';
UPDATE creature_spawn_data_template SET Name = 'Stillpine Captive - RelayScript (19976)' WHERE Entry = '19991';
UPDATE creature_spawn_data_template SET Name = 'Stillpine Captive - RelayScript (19977)' WHERE Entry = '19992';
UPDATE creature_spawn_data_template SET Name = 'Stillpine Captive - RelayScript (19978)' WHERE Entry = '19993';
UPDATE creature_spawn_data_template SET Name = 'Stillpine Captive - RelayScript (19979)' WHERE Entry = '19994';
UPDATE creature_spawn_data_template SET Name = 'Stillpine Captive - RelayScript (19980)' WHERE Entry = '19995';
UPDATE creature_spawn_data_template SET Name = 'Stillpine Captive - RelayScript (19981)' WHERE Entry = '19996';
UPDATE creature_spawn_data_template SET Name = 'Stillpine Captive - RelayScript (19982)' WHERE Entry = '19997';
UPDATE creature_spawn_data_template SET Name = 'Stillpine Captive - RelayScript (19983)' WHERE Entry = '19998';
UPDATE creature_spawn_data_template SET Name = 'Stillpine Captive - RelayScript (19984)' WHERE Entry = '19999';
-- Orgrimmar Peon, Peon Overseer
UPDATE creature_spawn_data_template SET Name = 'Orgrimmar Peon | Peon Overseer - RelayScript (30500)' WHERE Entry = '20033';
UPDATE creature_spawn_data_template SET Name = 'Orgrimmar Peon | Peon Overseer - RelayScript (30501)' WHERE Entry = '20034';
UPDATE creature_spawn_data_template SET Name = 'Flawless Draenethyst Fragment - RelayScript (25210)' WHERE Entry = '25210';
-- UPDATE creature_spawn_data_template SET Name = 'Draenei Refugee - RelayScript' WHERE Entry = '25210'; -- 2x
UPDATE creature_spawn_data_template SET Name = 'Draenei Refugee - RelayScript (25211)' WHERE Entry = '25211';
UPDATE creature_spawn_data_template SET Name = 'Draenei Refugee - RelayScript (25212)' WHERE Entry = '25212';
UPDATE creature_spawn_data_template SET Name = 'Draenei Refugee - RelayScript (25213)' WHERE Entry = '25213';
UPDATE creature_spawn_data_template SET Name = 'Draenei Refugee - RelayScript (25214)' WHERE Entry = '25214';
UPDATE creature_spawn_data_template SET Name = 'Draenei Refugee - RelayScript (25215)' WHERE Entry = '25215';
UPDATE creature_spawn_data_template SET Name = 'Draenei Refugee - RelayScript (25216)' WHERE Entry = '25216';
UPDATE creature_spawn_data_template SET Name = 'Draenei Refugee - RelayScript (25217)' WHERE Entry = '25217';
UPDATE creature_spawn_data_template SET Name = 'Draenei Refugee - RelayScript (25218)' WHERE Entry = '25218';
UPDATE creature_spawn_data_template SET Name = 'Draenei Refugee - RelayScript (25219)' WHERE Entry = '25219';
UPDATE creature_spawn_data_template SET Name = 'Plaque Spreader (604) - Faction' WHERE Entry = '60401';
UPDATE creature_spawn_data_template SET Name = 'Hammerfall Guardian (2621) - Equipment' WHERE Entry = '262101';
UPDATE creature_spawn_data_template SET Name = 'Crimson Guardsman (10418) - Faction' WHERE Entry = '1041801';
UPDATE creature_spawn_data_template SET Name = 'Darkmoon Faire Carnie (14849) - Equipment' WHERE Entry = '1484901'; -- no data in creature_spawn_data
UPDATE creature_spawn_data_template SET Name = 'Darkmoon Faire Carnie (14849) - Equipment' WHERE Entry = '1484902'; -- no data in creature_spawn_data
UPDATE creature_spawn_data_template SET Name = 'Darkmoon Faire Carnie (14849) - Equipment' WHERE Entry = '1484903';
UPDATE creature_spawn_data_template SET Name = 'Peon (14901) - Equipment' WHERE Entry = '1490101'; -- no data in creature_spawn_data
UPDATE creature_spawn_data_template SET Name = 'Peon (14901) - Equipment' WHERE Entry = '1490102';
UPDATE creature_spawn_data_template SET Name = 'Peon (14901) - Equipment' WHERE Entry = '1490103';
UPDATE creature_spawn_data_template SET Name = 'Peon (14901) - Equipment' WHERE Entry = '1490104'; -- no data in creature_spawn_data
UPDATE creature_spawn_data_template SET Name = 'Peon (14901) - Equipment' WHERE Entry = '1490105'; -- no data in creature_spawn_data
UPDATE creature_spawn_data_template SET Name = 'Thrallmar Grunt (16580) - Equipment' WHERE Entry = '1658001'; -- no data in creature_spawn_data
UPDATE creature_spawn_data_template SET Name = 'Thrallmar Grunt (16580) - Equipment' WHERE Entry = '1658002';
UPDATE creature_spawn_data_template SET Name = 'Thrallmar Grunt (16580) - Equipment' WHERE Entry = '1658003';
UPDATE creature_spawn_data_template SET Name = 'Thrallmar Grunt (16580) - Equipment' WHERE Entry = '1658004'; -- no data in creature_spawn_data
UPDATE creature_spawn_data_template SET Name = 'Thrallmar Grunt (16580) - Equipment' WHERE Entry = '1658005'; -- no data in creature_spawn_data
UPDATE creature_spawn_data_template SET Name = 'Thrallmar Grunt (16580) - Equipment' WHERE Entry = '1658006'; -- no data in creature_spawn_data
UPDATE creature_spawn_data_template SET Name = 'Thrallmar Grunt (16580) - Equipment' WHERE Entry = '1658007'; -- no data in creature_spawn_data
UPDATE creature_spawn_data_template SET Name = 'Thrallmar Marksman (16582) - Equipment' WHERE Entry = '1658201'; 
UPDATE creature_spawn_data_template SET Name = 'Thrallmar Marksman (16582) - Equipment' WHERE Entry = '1658202'; -- no data in creature_spawn_data
UPDATE creature_spawn_data_template SET Name = 'Thrallmar Marksman (16582) - Equipment' WHERE Entry = '1658203'; -- no data in creature_spawn_data
UPDATE creature_spawn_data_template SET Name = 'Thrallmar Marksman (16582) - Equipment' WHERE Entry = '1658204'; 
UPDATE creature_spawn_data_template SET Name = 'Nethergarde Infantry (16831) - Equipment' WHERE Entry = '1683101'; 
UPDATE creature_spawn_data_template SET Name = 'Nethergarde Infantry (16831) - Equipment' WHERE Entry = '1683102'; -- no data in creature_spawn_data
UPDATE creature_spawn_data_template SET Name = 'Nethergarde Infantry (16831) - Equipment' WHERE Entry = '1683103'; -- no data in creature_spawn_data
UPDATE creature_spawn_data_template SET Name = 'Nethergarde Infantry (16831) - Equipment' WHERE Entry = '1683104'; -- no data in creature_spawn_data
UPDATE creature_spawn_data_template SET Name = 'Nethergarde Infantry (16831) - Equipment' WHERE Entry = '1683105'; -- no data in creature_spawn_data
UPDATE creature_spawn_data_template SET Name = 'Nethergarde Infantry (16831) - Equipment' WHERE Entry = '1683106'; -- no data in creature_spawn_data
UPDATE creature_spawn_data_template SET Name = 'Nethergarde Infantry (16831) - Equipment' WHERE Entry = '1683107'; -- no data in creature_spawn_data
UPDATE creature_spawn_data_template SET Name = 'Nethergarde Infantry (16831) - Equipment' WHERE Entry = '1683108'; -- no data in creature_spawn_data
UPDATE creature_spawn_data_template SET Name = 'Nethergarde Infantry (16831) - Equipment' WHERE Entry = '1683109'; -- no data in creature_spawn_data
UPDATE creature_spawn_data_template SET Name = 'Nethergarde Infantry (16831) - Equipment' WHERE Entry = '1683110'; -- no data in creature_spawn_data
UPDATE creature_spawn_data_template SET Name = 'Honor Hold Defender (16842) - Equipment' WHERE Entry = '1684201'; -- no data in creature_spawn_data
UPDATE creature_spawn_data_template SET Name = 'Honor Hold Defender (16842) - Equipment' WHERE Entry = '1684202'; -- no data in creature_spawn_data
UPDATE creature_spawn_data_template SET Name = 'Honor Hold Defender (16842) - Equipment' WHERE Entry = '1684203'; -- no data in creature_spawn_data
UPDATE creature_spawn_data_template SET Name = 'Honor Hold Defender (16842) - Equipment' WHERE Entry = '1684204'; -- no data in creature_spawn_data
UPDATE creature_spawn_data_template SET Name = 'Honor Hold Defender (16842) - Equipment' WHERE Entry = '1684205'; -- no data in creature_spawn_data
UPDATE creature_spawn_data_template SET Name = 'Honor Hold Defender (16842) - Equipment' WHERE Entry = '1684206'; -- no data in creature_spawn_data
UPDATE creature_spawn_data_template SET Name = 'Stormwind Infantry (16864) - Equipment' WHERE Entry = '1686401'; -- no data in creature_spawn_data
UPDATE creature_spawn_data_template SET Name = 'Stormwind Infantry (16864) - Equipment' WHERE Entry = '1686402'; -- no data in creature_spawn_data
UPDATE creature_spawn_data_template SET Name = 'Stormwind Infantry (16864) - Equipment' WHERE Entry = '1686403'; 
UPDATE creature_spawn_data_template SET Name = 'Stormwind Infantry (16864) - Equipment' WHERE Entry = '1686404'; -- no data in creature_spawn_data
UPDATE creature_spawn_data_template SET Name = 'Stormwind Infantry (16864) - Equipment' WHERE Entry = '1686405'; -- no data in creature_spawn_data
UPDATE creature_spawn_data_template SET Name = 'Stormwind Infantry (16864) - Equipment' WHERE Entry = '1686406'; -- no data in creature_spawn_data
UPDATE creature_spawn_data_template SET Name = 'Stormwind Infantry (16864) - Equipment' WHERE Entry = '1686407'; -- no data in creature_spawn_data
UPDATE creature_spawn_data_template SET Name = 'Stormwind Infantry (16864) - Equipment' WHERE Entry = '1686408'; -- no data in creature_spawn_data
UPDATE creature_spawn_data_template SET Name = 'Stormwind Infantry (16864) - Equipment' WHERE Entry = '1686409'; -- no data in creature_spawn_data
UPDATE creature_spawn_data_template SET Name = 'Boulderfist Crusher (17134) - RelayScript (1713401)' WHERE Entry = '1713401';
UPDATE creature_spawn_data_template SET Name = 'Siltfin Oracle (17191) - RelayScript (1719101)' WHERE Entry = '1719101';
UPDATE creature_spawn_data_template SET Name = 'Bonechewer Hungerer (17259) - RelayScript (1725901)' WHERE Entry = '1725901';
UPDATE creature_spawn_data_template SET Name = 'Bonechewer Ravener (17264) - RelayScript (1726401)' WHERE Entry = '1726401';
UPDATE creature_spawn_data_template SET Name = 'Blacksilt Shorestriker (17328) - RelayScript (1732801)' WHERE Entry = '1732801';
UPDATE creature_spawn_data_template SET Name = 'Coilfang Engineer (17721) - RelayScript (1772101)' WHERE Entry = '1772101';
UPDATE creature_spawn_data_template SET Name = 'Expedition Warden (17855) - EquipmentId' WHERE Entry = '1785501';
UPDATE creature_spawn_data_template SET Name = 'Mug\'gok (18475) - RelayScript (1847501)' WHERE Entry = '1847501';
UPDATE creature_spawn_data_template SET Name = 'Telaari Watcher (18488) - RelayScript (1848801)' WHERE Entry = '1848801';
UPDATE creature_spawn_data_template SET Name = 'Scryer Arcanist (18547) - RelayScript (1854701)' WHERE Entry = '1854701';
UPDATE creature_spawn_data_template SET Name = 'Worker (18800) - EquipmentId' WHERE Entry = '1880001';
UPDATE creature_spawn_data_template SET Name = 'Telaari Elekk Rider (19071) - RelayScript (1907101)' WHERE Entry = '1907101';
UPDATE creature_spawn_data_template SET Name = 'Kor\'kron Defender (19362) - RelayScript (1936201)' WHERE Entry = '1936201';
UPDATE creature_spawn_data_template SET Name = 'Coilskar Myrmidon (19765) - EquipmentId' WHERE Entry = '1976501';
UPDATE creature_spawn_data_template SET Name = 'Nether Technician (20203) - EquipmentId' WHERE Entry = '2020301';
UPDATE creature_spawn_data_template SET Name = 'Nether Technician (20203) - EquipmentId' WHERE Entry = '2020302'; -- no data in creature_spawn_data
UPDATE creature_spawn_data_template SET Name = 'Nether Technician (20203) - EquipmentId' WHERE Entry = '2020303'; -- no data in creature_spawn_data
UPDATE creature_spawn_data_template SET Name = 'Greyheart Tidecaller (21229) | Greyheart Nether-Mage (21230) - RelayScript (2122901)' WHERE Entry = '2122901';
UPDATE creature_spawn_data_template SET Name = 'Greyheart Skulker (21232) - RelayScript (2123201)' WHERE Entry = '2123201';
UPDATE creature_spawn_data_template SET Name = 'Ethereal Plunderer (21368) - EquipmentId' WHERE Entry = '2136801';
UPDATE creature_spawn_data_template SET Name = 'Ethereal Nethermancer (21370) - EquipmentId' WHERE Entry = '2137001';
UPDATE creature_spawn_data_template SET Name = 'Ethereal Arcanist (21405) - EquipmentId' WHERE Entry = '2140501';
UPDATE creature_spawn_data_template SET Name = 'Sunfury Eradicator (21742) - RelayScript (2174201)' WHERE Entry = '2174201';
UPDATE creature_spawn_data_template SET Name = 'Skettis Soulcaller (21911) - EquipmentId' WHERE Entry = '2191101';
UPDATE creature_spawn_data_template SET Name = 'Eclipsion Soldier (22016) - RelayScript (2201601)' WHERE Entry = '2201601';
UPDATE creature_spawn_data_template SET Name = 'Eclipsion Cavalier (22018) - RelayScript (2201801)' WHERE Entry = '2201801';
UPDATE creature_spawn_data_template SET Name = 'Dragonmaw Peon (22252) - EquipmentId' WHERE Entry = '2225201';
UPDATE creature_spawn_data_template SET Name = 'Dragonmaw Ascendant (22253) - RelayScript (2225301)' WHERE Entry = '2225301';
UPDATE creature_spawn_data_template SET Name = 'Skyguard Navigator (22982) - EquipmentId' WHERE Entry = '2298201';
UPDATE creature_spawn_data_template SET Name = 'Dragonmaw Enforcer (23146) - RelayScript (2314601)' WHERE Entry = '2314601';
UPDATE creature_spawn_data_template SET Name = 'Skyguard Windcharger (23257) - EquipmentId' WHERE Entry = '2325701';
UPDATE creature_spawn_data_template SET Name = 'Murkblood Miner (23287) - UnitFlags' WHERE Entry = '2328701';
UPDATE creature_spawn_data_template SET Name = 'Amani\'shi Guardian (23597) - RelayScript (2359701)' WHERE Entry = '2359701';

