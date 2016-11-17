-- q.2240 'The Hidden Chamber' -- Uldaman

-- Ironaya is summoned, so remove the static spawn.
DELETE FROM creature WHERE guid = 54080;

-- Ironaya
UPDATE creature_template SET EquipmentTemplateId = 5331 WHERE entry = 7228;
DELETE FROM creature_movement_template WHERE entry = 7228;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, orientation, waittime, script_id) VALUES
(7228, 1, -234.8384, 304.7419, -47.59481, 0, 0, 0), 
(7228, 2, -234.5273, 289.1205, -48.02008, 0, 0, 0), 
(7228, 3, -233.9544, 270.4161, -50.40104, 0, 0, 0), 
(7228, 4, -233.4224, 252.0556, -49.44788, 0, 0, 0), 
(7228, 5, -231.1759, 245.8255, -49.14987, -1.2249, 1000, 722801);

DELETE FROM dbscripts_on_creature_movement WHERE id = 722801;
INSERT INTO dbscripts_on_creature_movement (id, command, datalong, comments) VALUES
(722801, 32, 1, 'pause Ironaya');

-- Ironaya event
DELETE FROM dbscripts_on_go_template_use WHERE id = 124371;
INSERT INTO dbscripts_on_go_template_use (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, x, y, z, o, dataint, comments) VALUES
(124371, 1, 10, 7228, 9000000, 0, 0, 0, -235.673, 309.639, -47.5976, 4.74317, 0, 'Summon Ironaya'),
(124371, 27, 11, 14394, 9000000, 0, 0, 0, 0, 0, 0, 0, 0, 'Open the Seal of Khaz\'Mul'),
(124371, 28, 0, 1, 0, 7228, 100, 0, 0, 0, 0, 0, 2000000430, 'Ironaya yell'),
(124371, 28, 20, 2, 0, 7228, 100, 0, 0, 0, 0, 0, 0, 'Ironaya starts moving');

DELETE FROM db_script_string WHERE entry = 2000000430;
INSERT INTO db_script_string (entry, content_default,sound,type,language,emote,comment) VALUES
(2000000430, 'None may steal the secrets of the Makers!',5851,1,0,0,'Ironaya yell');

-- The 'Gni'kiv Medallion' and 'The Shaft of Tsol' -- 100% drop guarantee
-- Playes should be able to get to BOSS Ironaya - with or without quest!
-- DELETE FROM conditions WHERE condition_entry IN (15,31);
DELETE FROM gameobject_loot_template WHERE entry = 5066 AND item = 44012;
DELETE FROM reference_loot_template WHERE entry = 44012 AND item = 7740;
UPDATE creature_loot_template SET condition_id = 0 WHERE entry = 6910;
UPDATE gameobject_loot_template SET condition_id = 0 WHERE entry = 5066 AND item = 7740;


