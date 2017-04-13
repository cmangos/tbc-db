ALTER TABLE creature CHANGE spawntimesecs spawntimesecsmin INT(10) UNSIGNED DEFAULT 120 NOT NULL COMMENT 'Creature respawn time minimum';
ALTER TABLE gameobject CHANGE spawntimesecs spawntimesecsmin INT(11) DEFAULT 0 NOT NULL COMMENT 'Gameobject respawn time minimum';

ALTER TABLE creature ADD spawntimesecsmax INT(10) UNSIGNED DEFAULT 120 NOT NULL COMMENT 'Creature respawn time maximum' AFTER spawntimesecsmin;
ALTER TABLE gameobject ADD spawntimesecsmax INT(11) DEFAULT 0 NOT NULL COMMENT 'Gameobject respawn time maximum' AFTER spawntimesecsmin;

UPDATE creature SET spawntimesecsmax=spawntimesecsmin;
UPDATE gameobject SET spawntimesecsmax=spawntimesecsmin;


-- All world bosses have 2-4 day respawn timer

-- TBC WORLD BOSSES

-- Doom Lord Kazzak
UPDATE creature SET spawntimesecsmin=172800, spawntimesecsmax=345600 WHERE id=18728;
-- Doomwalker
UPDATE creature SET spawntimesecsmin=172800, spawntimesecsmax=345600 WHERE id=17711;
	
-- VANILLA WORLD BOSSES

-- Emeriss
UPDATE creature SET spawntimesecsmin=172800, spawntimesecsmax=345600 WHERE id=14889;
-- Lethon
UPDATE creature SET spawntimesecsmin=172800, spawntimesecsmax=345600 WHERE id=14888;
-- Ysondre
UPDATE creature SET spawntimesecsmin=172800, spawntimesecsmax=345600 WHERE id=14887;
-- Taerar
UPDATE creature SET spawntimesecsmin=172800, spawntimesecsmax=345600 WHERE id=14890;
-- Azuregos
UPDATE creature SET spawntimesecsmin=172800, spawntimesecsmax=345600 WHERE id=6109;
	
-- RARE SPAWNS (soon to come)


ALTER TABLE db_version CHANGE COLUMN required_s2343_01_mangos_quest_template required_s2348_02_mangos_gameobjects bit;

