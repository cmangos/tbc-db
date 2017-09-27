-- Script quest The Final Code (H)q.10447 (A)q.10446

UPDATE `gameobject_template` SET `ScriptName`='' WHERE `entry`=184725; -- Remove old core script
UPDATE creature_template SET ScriptName='' WHERE entry=20767; -- Remove old core script
UPDATE creature SET spawntimesecsmin=45, spawntimesecsmax=45 WHERE id IN(21898,20809); -- Proper respawn for Mana Bomb Lightning Trigger and Mana Bomb Channel Trigger

DELETE FROM spell_script_target WHERE entry=35958;
INSERT INTO spell_script_target (entry,type,targetEntry,inverseEffectMask) VALUES
(35958,1,16769,0), -- Firewing Warlock 
(35958,1,1410,0), -- Firewing Bloodwarder
(35958,1,5355,0); -- Firewing Defender

DELETE FROM `dbscripts_on_event` WHERE `id` IN(13470);
INSERT INTO `dbscripts_on_event` (`id`,`delay`,`command`,`datalong`,`datalong2`,`datalong3`,`dataint`,`dataint2`,`dataint3`,`dataint4`,`buddy_entry`,`search_radius`,`data_flags`,`comments`,`x`,`y`,`z`,`o`) VALUES
(13470,0,35,5,55,0,0,0,0,0,20809,5,7,'Mana Bomb Channel Trigger - Send AI Event 5 (A)',0,0,0,0),
(13470,0,8,21039,1,0,0,0,0,0,0,0,0,'q.10446/10447 - Give Kill Credit',0,0,0,0),
(13470,0,18,500,0,0,0,0,0,0,20809,5,7,'q.10446/10447 - Mana Bomb Channel Trigger - Despawn Self',0,0,0,0),
(13470,6,0,0,0,0,2000001343,0,0,0,20767,5,0,'Mana Bomb Explosion Trigger - 5...',0,0,0,0),
(13470,7,0,0,0,0,2000001344,0,0,0,20767,5,0,'Mana Bomb Explosion Trigger - 4...',0,0,0,0),
(13470,8,0,0,0,0,2000001345,0,0,0,20767,5,0,'Mana Bomb Explosion Trigger - 3...',0,0,0,0),
(13470,9,0,0,0,0,2000001346,0,0,0,20767,5,0,'Mana Bomb Explosion Trigger - 2...',0,0,0,0),
(13470,10,0,0,0,0,2000001347,0,0,0,20767,5,0,'Mana Bomb Explosion Trigger - 1...',0,0,0,0),
(13470,12,15,35513,0,0,0,0,0,0,20767,5,7,'Mana Bomb Explosion Trigger - Cast Mana Bomb Explosion',0,0,0,0);


DELETE FROM `dbscripts_on_relay` WHERE `id` BETWEEN 10021 AND 10023;
INSERT INTO `dbscripts_on_relay` (`id`,`delay`,`command`,`datalong`,`datalong2`,`datalong3`,`dataint`,`dataint2`,`dataint3`,`dataint4`,`buddy_entry`,`search_radius`,`data_flags`,`comments`,`x`,`y`,`z`,`o`) VALUES
(10021,0,14,32783,0,0,0,0,0,0,0,0,0,'q.10446/10447 - Firewing Warlock - Remove Aura 32783',0,0,0,0),
(10021,0,36,0,0,0,0,0,0,0,0,0,2,'q.10446/10447 - Firewing Warlock - Set Facing to Mana Bomb Channel Trigger',0,0,0,0),

(10022,0,36,1,0,0,0,0,0,0,0,0,0,'q.10446/10447 - Firewing Warlock - Reset Facing',0,0,0,0),

(10023,2,28,1,0,0,0,0,0,0,0,0,0,'q.10446/10447 - Firewing Warlock - Set Stand State Sit',0,0,0,0);


DELETE FROM dbscript_random_templates WHERE id BETWEEN 10005 AND 10006;
INSERT INTO dbscript_random_templates (id,type,target_id,chance) VALUES
(10005,0,-482,0),
(10005,0,-483,0),
(10005,0,-484,0),
(10005,0,-485,0),

(10006,0,-277,0),
(10006,0,-278,0),
(10006,0,-279,0),
(10006,0,-280,0),
(10006,0,-281,0),
(10006,0,-282,0);


DELETE FROM `dbscript_string` WHERE `entry` BETWEEN 2000001343 AND 2000001347;
INSERT INTO `dbscript_string` (`entry`, `content_default`, `content_loc1`, `content_loc2`, `content_loc3`, `content_loc4`, `content_loc5`, `content_loc6`, `content_loc7`, `content_loc8`, `sound`, `type`, `language`, `emote`, `comment`) VALUES 
(2000001343, '5...', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 3, 0, 0, 'Mana Bomb Explosion Trigger (Entry: 20767)'),
(2000001344, '4...', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 3, 0, 0, 'Mana Bomb Explosion Trigger (Entry: 20767)'),
(2000001345, '3...', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 3, 0, 0, 'Mana Bomb Explosion Trigger (Entry: 20767)'),
(2000001346, '2...', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 3, 0, 0, 'Mana Bomb Explosion Trigger (Entry: 20767)'),
(2000001347, '1...', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 3, 0, 0, 'Mana Bomb Explosion Trigger (Entry: 20767)');


