-- ==================================================
-- TBC-DB 1.4.1 Core Patch Rollup
-- ==================================================

-- s1997
-- =====
ALTER TABLE db_version CHANGE COLUMN required_s1960_12440_01_mangos_spell_area required_s1997_xxxxx_01_mangos_command bit;

DELETE FROM command WHERE name IN ('go trigger','trigger active');

INSERT INTO command (name, security, help) VALUES
('go trigger',1,'Syntax: .go trigger (#trigger_id|$trigger_shift-link|$trigger_target_shift-link) [target]\r\n\r\nTeleport your character to areatrigger with id #trigger_id or trigger id associated with shift-link. If additional arg "target" provided then character will teleported to areatrigger target point.'),
('trigger active',2,'Syntax: .trigger active\r\n\r\nShow list of areatriggers with activation zone including current character position.');

ALTER TABLE db_version CHANGE COLUMN required_s1997_xxxxx_01_mangos_command required_s1997_xxxxx_02_mangos_mangos_string bit;

DELETE FROM mangos_string WHERE entry = 371;

-- s2010
-- =====
ALTER TABLE db_version CHANGE COLUMN required_s1997_xxxxx_02_mangos_mangos_string required_s2010_xxxxx_01_mangos_spell_proc_event bit;

UPDATE spell_proc_event SET procFlags=0x10510 WHERE entry=31233;

-- s2034
-- =====
ALTER TABLE db_version CHANGE COLUMN required_s2010_xxxxx_01_mangos_spell_proc_event required_s2034_12522_01_mangos_db_script_string bit;

ALTER TABLE db_script_string ADD COLUMN sound mediumint(8) unsigned NOT NULL DEFAULT '0' AFTER content_loc8;
ALTER TABLE db_script_string ADD COLUMN type tinyint(3) unsigned NOT NULL DEFAULT '0' AFTER sound;
ALTER TABLE db_script_string ADD COLUMN language tinyint(3) unsigned NOT NULL DEFAULT '0' AFTER type;
ALTER TABLE db_script_string ADD COLUMN emote smallint(5) unsigned NOT NULL DEFAULT '0' AFTER language;
ALTER TABLE db_script_string ADD COLUMN comment text AFTER emote;

-- Update Dbscript_string with the type and language from Dbscripts_on_*
CREATE TEMPORARY TABLE IF NOT EXISTS db_script_temp AS
-- dbscripts_on_creature_death
SELECT A.entry
    ,A.content_default
    ,A.content_loc1
    ,A.content_loc2
    ,A.content_loc3
    ,A.content_loc4
    ,A.content_loc5
    ,A.content_loc6
    ,A.content_loc7
    ,A.content_loc8
    ,0 AS sound
    ,B.datalong AS type
    ,B.datalong2 AS language
    ,0 AS emote
    ,NULL AS comment
FROM db_script_string A
INNER JOIN dbscripts_on_creature_death B ON (A.entry = B.dataint OR A.entry = B.dataint2 OR A.entry = B.dataint3 OR A.entry = B.dataint4)
-- dbscripts_on_creature_movement
UNION ALL
SELECT A.entry
    ,A.content_default
    ,A.content_loc1
    ,A.content_loc2
    ,A.content_loc3
    ,A.content_loc4
    ,A.content_loc5
    ,A.content_loc6
    ,A.content_loc7
    ,A.content_loc8
    ,0 AS sound
    ,B.datalong AS type
    ,B.datalong2 AS language
    ,0 AS emote
    ,NULL AS comment
FROM db_script_string A
INNER JOIN dbscripts_on_creature_movement B ON (A.entry = B.dataint OR A.entry = B.dataint2 OR A.entry = B.dataint3 OR A.entry = B.dataint4)
-- dbscripts_on_event
UNION ALL
SELECT A.entry
    ,A.content_default
    ,A.content_loc1
    ,A.content_loc2
    ,A.content_loc3
    ,A.content_loc4
    ,A.content_loc5
    ,A.content_loc6
    ,A.content_loc7
    ,A.content_loc8
    ,0 AS sound
    ,B.datalong AS type
    ,B.datalong2 AS language
    ,0 AS emote
    ,NULL AS comment
FROM db_script_string A
INNER JOIN dbscripts_on_event B ON (A.entry = B.dataint OR A.entry = B.dataint2 OR A.entry = B.dataint3 OR A.entry = B.dataint4)
-- dbscripts_on_gossip
UNION ALL
SELECT A.entry
    ,A.content_default
    ,A.content_loc1
    ,A.content_loc2
    ,A.content_loc3
    ,A.content_loc4
    ,A.content_loc5
    ,A.content_loc6
    ,A.content_loc7
    ,A.content_loc8
    ,0 AS sound
    ,B.datalong AS type
    ,B.datalong2 AS language
    ,0 AS emote
    ,NULL AS comment
FROM db_script_string A
INNER JOIN dbscripts_on_gossip B ON (A.entry = B.dataint OR A.entry = B.dataint2 OR A.entry = B.dataint3 OR A.entry = B.dataint4)
-- dbscripts_on_go_template_use
UNION ALL
SELECT A.entry
    ,A.content_default
    ,A.content_loc1
    ,A.content_loc2
    ,A.content_loc3
    ,A.content_loc4
    ,A.content_loc5
    ,A.content_loc6
    ,A.content_loc7
    ,A.content_loc8
    ,0 AS sound
    ,B.datalong AS type
    ,B.datalong2 AS language
    ,0 AS emote
    ,NULL AS comment
FROM db_script_string A
INNER JOIN dbscripts_on_go_template_use B ON (A.entry = B.dataint OR A.entry = B.dataint2 OR A.entry = B.dataint3 OR A.entry = B.dataint4)
-- dbscripts_on_go_use
UNION ALL
SELECT A.entry
    ,A.content_default
    ,A.content_loc1
    ,A.content_loc2
    ,A.content_loc3
    ,A.content_loc4
    ,A.content_loc5
    ,A.content_loc6
    ,A.content_loc7
    ,A.content_loc8
    ,0 AS sound
    ,B.datalong AS type
    ,B.datalong2 AS language
    ,0 AS emote
    ,NULL AS comment
FROM db_script_string A
INNER JOIN dbscripts_on_go_use B ON (A.entry = B.dataint OR A.entry = B.dataint2 OR A.entry = B.dataint3 OR A.entry = B.dataint4)
-- dbscripts_on_quest_end
UNION ALL
SELECT A.entry
    ,A.content_default
    ,A.content_loc1
    ,A.content_loc2
    ,A.content_loc3
    ,A.content_loc4
    ,A.content_loc5
    ,A.content_loc6
    ,A.content_loc7
    ,A.content_loc8
    ,0 AS sound
    ,B.datalong AS type
    ,B.datalong2 AS language
    ,0 AS emote
    ,NULL AS comment
FROM db_script_string A
INNER JOIN dbscripts_on_quest_end B ON (A.entry = B.dataint OR A.entry = B.dataint2 OR A.entry = B.dataint3 OR A.entry = B.dataint4)
-- dbscripts_on_quest_start
UNION ALL
SELECT A.entry
    ,A.content_default
    ,A.content_loc1
    ,A.content_loc2
    ,A.content_loc3
    ,A.content_loc4
    ,A.content_loc5
    ,A.content_loc6
    ,A.content_loc7
    ,A.content_loc8
    ,0 AS sound
    ,B.datalong AS type
    ,B.datalong2 AS language
    ,0 AS emote
    ,NULL AS comment
FROM db_script_string A
INNER JOIN dbscripts_on_quest_start B ON (A.entry = B.dataint OR A.entry = B.dataint2 OR A.entry = B.dataint3 OR A.entry = B.dataint4)
-- dbscripts_on_spell
UNION ALL
SELECT A.entry
    ,A.content_default
    ,A.content_loc1
    ,A.content_loc2
    ,A.content_loc3
    ,A.content_loc4
    ,A.content_loc5
    ,A.content_loc6
    ,A.content_loc7
    ,A.content_loc8
    ,0 AS sound
    ,B.datalong AS type
    ,B.datalong2 AS language
    ,0 AS emote
    ,NULL AS comment
FROM db_script_string A
INNER JOIN dbscripts_on_spell B ON (A.entry = B.dataint OR A.entry = B.dataint2 OR A.entry = B.dataint3 OR A.entry = B.dataint4);

-- Clean dbscript_string and insert the new updated values
DELETE FROM db_script_string WHERE entry IN (SELECT DISTINCT entry FROM db_script_temp);
INSERT INTO db_script_string SELECT * FROM db_script_temp GROUP BY entry;
DROP TABLE IF EXISTS db_script_temp;
