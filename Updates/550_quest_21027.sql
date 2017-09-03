-- q.21027 'Escape from Coilskar Cistern'
-- Keeper of the Cistern - Script redone, Also issue with radius corrected
-- links created
-- Earthmender Wilda - spawntime corrected + links
-- Coilskar Assassin - missing equipment added + aggro texts

-- Keeper of the Cistern
DELETE FROM dbscripts_on_creature_death WHERE id = 20795;
INSERT INTO dbscripts_on_creature_death (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(20795,0,21,1,0,0,21027,86832,4 | 0x10,0,0,0,0,0,0,0,0,'Wilda - active'),
(20795,0,3,0,0,0,21027,86832,4 | 0x08 | 0x10,0,0,0,0,-2616.36,1372.07,46.0286,4.75537,''),
(20795,0,15,35921,0,0,21027,86832,4 | 0x10,0,0,0,0,0,0,0,0,''),
(20795,0,39,1,0,0,21027,86832,4 | 0x08 | 0x10,0,0,0,0,0,0,0,0,'fly on'),
(20795,1,3,0,0,0,21027,86832,4 | 0x10,0,0,0,0,-2638.89,1358.96,35.9607,0,''),
(20795,1,29,2,2,0,21027,86832,4 | 0x10,0,0,0,0,0,0,0,0,''),
(20795,10,14,35921,0,0,21027,86832,4 | 0x10,0,0,0,0,0,0,0,0,''),
(20795,11,39,0,0,0,21027,86832,4 | 0x08 | 0x10,0,0,0,0,0,0,0,0,'fly off'),
(20795,14,0,0,0,0,21027,86832,4 | 0x10,2000005766,0,0,0,0,0,0,0,''),
(20795,16,29,2,1,0,21027,86832,4 | 0x10,0,0,0,0,0,0,0,0,''),
-- in case if Player wont start escort
(20795,300,31,21027,50,0,0,0,0,0,0,0,0,0,0,0,0,'search for 21027'), 
(20795,301,3,0,0,0,21027,86832,4 | 0x08 | 0x10,0,0,0,0,-2616.36,1372.07,46.0286,4.75537,''),
(20795,301,15,35921,0,0,21027,86832,4 | 0x10,0,0,0,0,0,0,0,0,''),
(20795,301,39,1,0,0,21027,86832,4 | 0x08 | 0x10,0,0,0,0,0,0,0,0,'fly on'),
(20795,302,21,0,0,0,21027,86832,4 | 0x10,0,0,0,0,0,0,0,0,'Wilda - unactive');
-- link
DELETE FROM creature_linking WHERE master_guid = 86872;
INSERT INTO creature_linking (guid, master_guid, flag) VALUES
(86086, 86872, 1), -- FLAG_AGGRO_ON_AGGRO
(86069, 86872, 1), -- FLAG_AGGRO_ON_AGGRO
(140636, 86872, 16+128+1024), -- FLAG_DESPAWN_ON_DEATH + FLAG_RESPAWN_ON_RESPAWN + FLAG_CANT_SPAWN_IF_BOSS_DEAD
(140637, 86872, 16+128+1024), -- FLAG_DESPAWN_ON_DEATH + FLAG_RESPAWN_ON_RESPAWN + FLAG_CANT_SPAWN_IF_BOSS_DEAD
(140638, 86872, 16+128+1024), -- FLAG_DESPAWN_ON_DEATH + FLAG_RESPAWN_ON_RESPAWN + FLAG_CANT_SPAWN_IF_BOSS_DEAD
(140639, 86872, 16+128+1024), -- FLAG_DESPAWN_ON_DEATH + FLAG_RESPAWN_ON_RESPAWN + FLAG_CANT_SPAWN_IF_BOSS_DEAD
(140640, 86872, 16+128+1024); -- FLAG_DESPAWN_ON_DEATH + FLAG_RESPAWN_ON_RESPAWN + FLAG_CANT_SPAWN_IF_BOSS_DEAD

-- Earthmender Wilda
UPDATE creature SET spawntimesecsmin = 60, spawntimesecsmax = 60 WHERE id = 21027;
UPDATE creature_template SET InhabitType = 4, SpeedWalk = 1, ExtraFlags = 16384 WHERE entry = 21027;
UPDATE creature_template_addon SET auras = NULL WHERE entry = 21027; 
DELETE FROM creature_linking WHERE master_guid = 86832;
INSERT INTO creature_linking (guid, master_guid, flag) VALUES
(86872, 86832, 128+1024), -- FLAG_RESPAWN_ON_RESPAWN + FLAG_CANT_SPAWN_IF_BOSS_DEAD
(86800, 86832, 16+128+8192), -- FLAG_DESPAWN_ON_DEATH + FLAG_RESPAWN_ON_RESPAWN + FLAG_DESPAWN_ON_DESPAWN
(86801, 86832, 16+128+8192), -- FLAG_DESPAWN_ON_DEATH + FLAG_RESPAWN_ON_RESPAWN + FLAG_DESPAWN_ON_DESPAWN
(86806, 86832, 16+128+8192), -- FLAG_DESPAWN_ON_DEATH + FLAG_RESPAWN_ON_RESPAWN + FLAG_DESPAWN_ON_DESPAWN
(86807, 86832, 16+128+8192), -- FLAG_DESPAWN_ON_DEATH + FLAG_RESPAWN_ON_RESPAWN + FLAG_DESPAWN_ON_DESPAWN
(86808, 86832, 16+128+8192); -- FLAG_DESPAWN_ON_DEATH + FLAG_RESPAWN_ON_RESPAWN + FLAG_DESPAWN_ON_DESPAWN

-- Coilskar Assassin
UPDATE creature_template SET EquipmentTemplateId = 272 WHERE Entry = 21044;
DELETE FROM dbscript_random_templates WHERE id = 5; -- templates are diff for TBCDB and WoTLKDB
INSERT INTO dbscript_random_templates (id, type, target_id, chance) VALUES
(5,0,-1557,0),
(5,0,-1558,0);

-- Captured Water Spirit
UPDATE creature_template SET InhabitType = 4 WHERE entry = 21029;

