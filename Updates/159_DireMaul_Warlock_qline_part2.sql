########################################
# Quest: Dreadsteed of Xoroth (7631)
########################################
/*
http://wowwiki.wikia.com/wiki/Dreadsteed_quest_(removed)#The_Ritual

http://www.youtube.com/watch?v=Hay83sVK0iA
http://www.youtube.com/watch?v=QtGi8Ir4YpU

---- Items ----
18629 Black Lodestone
18670 Xorothian Glyphs
18663 J'eevee's Jar
---- Creatures ----
14506 Lord Hel'nurath (comes out at Dreadsteed 50% health)
14502 Xorothian Dreadsteed
14504 Dreadsteed Spirit (you talk to this to complete quest after fight)
14482 Xorothian Imp
14483 Dread Guard
14500 J'eevee
---- Spells ----
23120 Black March Blessing
23226 Ritual Candle Aura
23117 Ritual Bell Aura
23061 Fix Ritual Node (trigger by Black Lodestone 18629)
23136 Release J'eevee (Send Script Event 8420, trigger by J'eevee's Jar)
23152 Summon Xorothian Dreadsteed (Send Script Event 8428)
23140 J'eevee summons object
---- Objects ----
179672 Wheel of the Black March (99786)
179673 Doomsday Candle (99785)
179674 Bell of Dethmoora (99787)
179669 Warlock Mount Quest Symbol 1
179670 Warlock Mount Quest Symbol 2
179671 Warlock Mount Quest Symbol 3
179668 Warlock Mount Ritual Circle (99784)
179681 Dreadsteed Portal (99783)
300051 TEMP Circle of Dark Summoning (99896) - invisible/no model, required to start Dreadsteed boss event after ritual
300050 TEMP Pedestal of Immol'thar (99895) - required to use J'eeevee's Jar in order to start ritual
*/

-- Allow attacking Dread Guards and Xorothian Imps to run down stairs
UPDATE `creature_template` SET `ExtraFlags` = 16384, `MovementType` = 2 WHERE `entry` IN (14483, 14482);

-- Make J'eevee friendly
UPDATE `creature_template` SET `FactionAlliance` = 35, `FactionHorde` = 35 WHERE `entry` = 14500; 

-- Make Ritual Mob invisible, unattackable and friendly to player
UPDATE `creature_template` SET `UnitFlags` = 6, `ExtraFlags` = 128, `FactionAlliance` = 35, `FactionHorde` = 35 WHERE `entry` = 14501; 

-- Increase range of Pedestal of Immol'thar and Circle of Dark Summoning
UPDATE `gameobject_template` SET `data1` = 25 WHERE `entry` IN (300050, 300051); 

-- Ritual objects last 45 seconds once activated
UPDATE `gameobject_template` SET `data2` = 65536 * 45 WHERE `entry` IN (179674, 179673, 179672);

-- Warlock Mount Quest Symbols should be larger
UPDATE `gameobject_template` SET `size` = 1.8 WHERE `entry` IN (179669, 179670, 179671); 

-- Warlock Mount Ritual Circle resize, make uninteractable and untargetable
UPDATE `gameobject_template` SET `type` = 0, `flags` = 20, `size` = 3.6 WHERE `entry` = 179668;

SET @GUID := 574241; -- portal start guid
DELETE FROM `gameobject` WHERE `id` IN (179669, 179670, 179671, 300051, 179668, 179681) AND `map` = 429;
INSERT INTO `gameobject` (`guid`,`id`,`map`,`position_x`,`position_y`,`position_z`,`orientation`,`rotation0`,`rotation1`,`rotation2`,`rotation3`,`spawntimesecs`,`animprogress`,`state`) VALUES
-- Warlock Mount Ritual Circle
(99784, 179668, 429, -38.5911, 812.632, -29.5358, 0.401425, 0, 0, 0, 0, -900, 0, 1),
-- Warlock Ritual Symbols
(99774, 179669, 429, -57.1792, 812.96, -29.5358, -2.00713, 0, 0, 0, 0, -900, 0, 1),
(99775, 179669, 429, -28.8647, 828.021, -29.5358, -2.00713, 0, 0, 0, 0, -900, 0, 1),
(99776, 179669, 429, -25.8848, 798.921, -29.5358, -2.00713, 0, 0, 0, 0, -900, 0, 1),
(99777, 179670, 429, -50.8857, 826.376, -29.5358, -2.00713, 0, 0, 0, 0, -900, 0, 1),
(99778, 179670, 429, -21.8534, 820.043, -29.5358, -2.00713, 0, 0, 0, 0, -900, 0, 1),
(99779, 179670, 429, -37.3899, 793.225, -29.5358, -2.00713, 0, 0, 0, 0, -900, 0, 1),
(99780, 179671, 429, -38.9241, 831.486, -29.5358, -2.00713, 0, 0, 0, 0, -900, 0, 1),
(99781, 179671, 429, -20.693, 807.962, -29.5358, -2.00713, 0, 0, 0, 0, -900, 0, 1),
(99782, 179671, 429, -53.5593, 801.216, -29.5358, -2.00713, 0, 0, 0, 0, -900, 0, 1),
-- Dreadsteed Portals
(@GUID, 179681, 429,-39.3283, 812.609, -29.5358, -2.87979, 0, 0, 0, 0, -900, 0, 0),  -- Dreadsteed boss comes from this one
(@GUID+1, 179681, 429,-82.9582, 866.112, -28.6244, -0.872664, 0, 0, 0, 0, -900, 0, 0),
(@GUID+2, 179681, 429,-15.0206, 878.409, -28.5044, -1.91986 , 0, 0, 0, 0, -900, 0, 0),
(@GUID+3, 179681, 429,-97.5622, 848.091, -28.6988, -0.523598, 0, 0, 0, 0, -900, 0, 0),
(@GUID+4, 179681, 429,-98.1468, 778.083, -28.3443, 0.541051, 0, 0, 0, 0, -900, 0, 0),
(@GUID+5, 179681, 429,-105.782, 826.821, -28.5458, -0.191985, 0, 0, 0, 0, -900, 0, 0),
(@GUID+6, 179681, 429,20.9339 , 848.326, -28.517, -2.61799, 0, 0, 0, 0, -900, 0, 0),
(@GUID+7, 179681, 429,-14.4863, 747.953, -28.8277, 1.91986, 0, 0, 0, 0, -900, 0, 0),
(@GUID+8, 179681, 429,5.8428  , 865.497, -28.7417, -2.28638, 0, 0, 0, 0, -900, 0, 0),
(@GUID+9, 179681, 429,-62.4677, 878.058, -28.8368, -1.20428, 0, 0, 0, 0, -900, 0, 0),
(@GUID+10, 179681, 429,29.2777 , 824.413, -28.4003, -2.9845, 0, 0, 0, 0, -900, 0, 0),
(@GUID+11, 179681, 429,-37.7177, 743.281, -28.7158, 1.5708, 0, 0, 0, 0, -900, 0, 0),
(@GUID+12, 179681, 429,-61.2501, 747.296, -28.4663, 1.23918, 0, 0, 0, 0, -900, 0, 0),
(@GUID+13, 179681, 429,21.162  , 778.232, -28.4788, 2.60054, 0, 0, 0, 0, -900, 0, 0),
(@GUID+14, 179681, 429,29.5943 , 801.049, -28.4482, 2.96704, 0, 0, 0, 0, -900, 0, 0),
(@GUID+15, 179681, 429,5.62079 , 759.756, -28.3198, 2.25147, 0, 0, 0, 0, -900, 0, 0),
(@GUID+16, 179681, 429,-106.235, 800.934, -28.6321, 0.174532, 0, 0, 0, 0, -900, 0, 0),
(@GUID+17, 179681, 429,-39.7076, 882.205, -28.8242, -1.53589, 0, 0, 0, 0, -900, 0, 0),
(@GUID+18, 179681, 429,-82.6964, 759.662, -28.6398, 0.890117, 0, 0, 0, 0, -900, 0, 0),
-- TEMP Circle of Dark Summoning
(99896, 300051, 429, -38.94, 812.85, -29.53, 0, 0, 0, 0, 0, -180, 0, 1);

DELETE FROM `dbscripts_on_event` WHERE `id` IN (8420, 8428);
INSERT INTO `dbscripts_on_event` (`id`,`delay`,`command`,`datalong`,`datalong2`,`buddy_entry`,`search_radius`,`data_flags`,`dataint`,`dataint2`,`dataint3`,`dataint4`,`x`,`y`,`z`,`o`,`comments`) VALUES
-- Warlock ritual event start
(8420, 0, 31, 14501, 100, 0, 0, 8, 0, 0, 0, 0, 0, 0, 0,	0, 'Terminate event if Ritual Mob is already spawned'),
(8420, 0, 34, 3147, 0, 0, 0, 8, 0, 0, 0, 0, 0, 0, 0, 0, 'Terminate if encounter is not in FAIL or NOT_STARTED status (SD2 condition)'),
(8420, 1, 10, 14500, 48.5 * 1000, 0, 0, 0, 1, 0, 0, 0, -37.9392, 812.805, -29.4525, 0, 'Spawn J''eevee'),
(8420, 1, 10, 14501, 900 * 1000, 0, 0, 0, 1, 0, 0, 0, -37.9392, 812.805, -29.4525, 0, 'Spawn Ritual Mob'),
(8420, 2, 0, 0, 0, 14500, 40, 0, 2000007708, 0, 0, 0, 0, 0, 0, 0, 'J''eevee yell on spawn'),
(8420, 7, 0, 0, 0, 14500, 40, 0, 2000007709, 0, 0, 0, 0, 0, 0, 0, 'J''eevee say 1'),
(8420, 8, 3, 0, 0, 14500, 40, 0, 0, 0, 0, 0, -27.001, 813.741, -29.5358, 0, 'J''eevee move to Bell of Dethmoora'),
(8420, 14, 15, 23140, 0, 14500, 40, 3, 0, 0, 0, 0, 0, 0, 0, 0, 'J''eevee cast summon object'),
(8420, 16, 9, 99787, 410, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Respawn Bell of Dethmoora'),
(8420, 17, 13, 0, 0, 179674, 40, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Activate Bell of Dethmoora'), 
(8420, 18, 0, 0, 0, 14500, 40, 0, 2000007710, 0, 0, 0, 0, 0, 0, 0, 'J''eevee say 2'),
(8420, 19, 3, 0, 0, 14500, 40, 0, 0, 0, 0, 0, -45.8222, 821.969, -29.5358, 0, 'J''eevee move to Wheel of the Black March'),
(8420, 25, 15, 23140, 0, 14500, 40, 3, 0, 0, 0, 0, 0, 0, 0, 0, 'J''eevee cast summon object'),
(8420, 27, 9, 99786, 900, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Respawn Wheel of the Black March'),
(8420, 28, 13, 0, 0, 179672, 40, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Activate Wheel of the Black March'),
(8420, 29, 0, 0, 0, 14500, 40, 0, 2000007711, 0, 0, 0, 0, 0, 0, 0, 'J''eevee say 3'),
(8420, 30, 3, 0, 0, 14500, 40, 0, 0, 0, 0, 0, -43.6275, 802.103, -29.5358, 0, 'J''eevee move to Doomsday Candle'),
(8420, 36, 15, 23140, 0, 14500, 40, 3, 0, 0, 0, 0, 0, 0, 0, 0, 'J''eevee cast summon object'),
(8420, 38, 9, 99785, 900, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Respawn Doomsday Candle'),
(8420, 39, 13, 0, 0, 179673, 40, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Activate Doomsday Candle'),
(8420, 40, 3, 0, 0, 14500, 40, 0, 0, 0, 0, 0, -38.7195, 812.015, -29.5358, 0, 'J''eevee move to center'),
(8420, 44, 36, 0, 0, 14500, 40, 3, 0, 0, 0, 0, 0, 0, 0, 0, 'J''eevee face player'),
(8420, 44, 0, 0, 0, 14500, 40, 3, 2000007712, 0, 0, 0, 0, 0, 0, 0, 'J''eevee say 4'),
(8420, 48, 15, 21649, 0, 14500, 40, 7, 0, 0, 0, 0, 0, 0, 0, 0, 'J''eevee cast teleport'),
-- Dreadsteed boss event
(8428, 0, 34, 3148, 0, 0, 0, 8, 0, 0, 0, 0, 0, 0, 0, 0, 'Terminate if encounter is not in SPECIAL status (SD2 condition)'),
(8428, 0, 31, 14504, 150, 0, 0, 8, 0, 0, 0, 0, 0, 0, 0,	0, 'Terminate event if Dreadsteed Spirit is already spawned'),
(8428, 0, 31, 14502, 150, 0, 0, 8, 0, 0, 0, 0, 0, 0, 0,	0, 'Terminate event if Xorothian Dreadsteed is already spawned'),
(8428, 1, 9, @GUID, 15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Spawn boss Dreadsteed Portal'),
(8428, 2, 43, 0, 0, 179668, 40, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Despawn Warlock Mount Ritual Circle'),
(8428, 7, 10, 14502, 9000000, 0, 0, 0, 0, 0, 0, 0, -39.0447, 812.591, -29.4525, 1.39626, 'Spawn Xorothian Dreadsteed');

DELETE FROM `conditions` WHERE `condition_entry` IN (3147,3148);
INSERT INTO `conditions` (`condition_entry`,`type`,`value1`,`value2`) VALUES 
(3147,18,5,0),
(3148,18,6,0);

DELETE FROM `db_script_string` WHERE `entry` IN (2000007708, 2000007709, 2000007710, 2000007711, 2000007712);
INSERT INTO `db_script_string` (`entry`,`content_default`,`content_loc1`,`content_loc2`,`content_loc3`,`content_loc4`,`content_loc5`,`content_loc6`,`content_loc7`,`content_loc8`,`sound`,`type`,`language`,`emote`,`comment`) VALUES
(2000007708, 'Ah, freedom! Although brief, so sweet it is...', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 0, 'J''eevee yell on spawn'),
(2000007709, 'Well duties call, yes? First, the bell... to give you vigor!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'J''eevee say 1'),
(2000007710, 'Next, I''ll place the wheel... to protect you from harm.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'J''eevee say 2'),
(2000007711, 'And finally the candle... to burn those who would thwart you!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'J''eevee say 3'),
(2000007712, '$N, my duties are complete and I shall now take my leave. Luck to you my fellow, and remember to keep the Bell, Wheel and Candle working!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'J''eevee say 4');

DELETE FROM `dbscripts_on_go_template_use` WHERE `id` IN (179674, 179673, 179672);
INSERT INTO `dbscripts_on_go_template_use` (`id`,`delay`,`command`,`datalong`,`datalong2`,`buddy_entry`,`search_radius`,`data_flags`,`dataint`,`dataint2`,`dataint3`,`dataint4`,`x`,`y`,`z`,`o`,`comments`) VALUES
(179674, 0, 15, 23117, 0, 14501, 40, 4, 0, 0, 0, 0, 0, 0, 0, 0, 'Cast Ritual Bell Aura on Ritual Mob'),
(179674, 5, 15, 23117, 0, 14501, 40, 4, 0, 0, 0, 0, 0, 0, 0, 0, 'Cast Ritual Bell Aura on Ritual Mob'),
(179674, 10, 15, 23117, 0, 14501, 40, 4, 0, 0, 0, 0, 0, 0, 0, 0, 'Cast Ritual Bell Aura on Ritual Mob'),
(179674, 15, 15, 23117, 0, 14501, 40, 4, 0, 0, 0, 0, 0, 0, 0, 0, 'Cast Ritual Bell Aura on Ritual Mob'),
(179674, 20, 15, 23117, 0, 14501, 40, 4, 0, 0, 0, 0, 0, 0, 0, 0, 'Cast Ritual Bell Aura on Ritual Mob'),
(179674, 25, 15, 23117, 0, 14501, 40, 4, 0, 0, 0, 0, 0, 0, 0, 0, 'Cast Ritual Bell Aura on Ritual Mob'),
(179674, 30, 15, 23117, 0, 14501, 40, 4, 0, 0, 0, 0, 0, 0, 0, 0, 'Cast Ritual Bell Aura on Ritual Mob'),
(179674, 35, 15, 23117, 0, 14501, 40, 4, 0, 0, 0, 0, 0, 0, 0, 0, 'Cast Ritual Bell Aura on Ritual Mob'),
(179674, 40, 15, 23117, 0, 14501, 40, 4, 0, 0, 0, 0, 0, 0, 0, 0, 'Cast Ritual Bell Aura on Ritual Mob'),
(179674, 45, 15, 23117, 0, 14501, 40, 4, 0, 0, 0, 0, 0, 0, 0, 0, 'Cast Ritual Bell Aura on Ritual Mob'),

(179672, 0, 15, 23120, 0, 14501, 40, 4, 0, 0, 0, 0, 0, 0, 0, 0, 'Cast Black March Blessing on Ritual Mob'),
(179672, 5, 15, 23120, 0, 14501, 40, 4, 0, 0, 0, 0, 0, 0, 0, 0, 'Cast Black March Blessing on Ritual Mob'),
(179672, 10, 15, 23120, 0, 14501, 40, 4, 0, 0, 0, 0, 0, 0, 0, 0, 'Cast Black March Blessing on Ritual Mob'),
(179672, 15, 15, 23120, 0, 14501, 40, 4, 0, 0, 0, 0, 0, 0, 0, 0, 'Cast Black March Blessing on Ritual Mob'),
(179672, 20, 15, 23120, 0, 14501, 40, 4, 0, 0, 0, 0, 0, 0, 0, 0, 'Cast Black March Blessing on Ritual Mob'),
(179672, 25, 15, 23120, 0, 14501, 40, 4, 0, 0, 0, 0, 0, 0, 0, 0, 'Cast Black March Blessing on Ritual Mob'),
(179672, 30, 15, 23120, 0, 14501, 40, 4, 0, 0, 0, 0, 0, 0, 0, 0, 'Cast Black March Blessing on Ritual Mob'),
(179672, 35, 15, 23120, 0, 14501, 40, 4, 0, 0, 0, 0, 0, 0, 0, 0, 'Cast Black March Blessing on Ritual Mob'),
(179672, 40, 15, 23120, 0, 14501, 40, 4, 0, 0, 0, 0, 0, 0, 0, 0, 'Cast Black March Blessing on Ritual Mob'),
(179672, 45, 15, 23120, 0, 14501, 40, 4, 0, 0, 0, 0, 0, 0, 0, 0, 'Cast Black March Blessing on Ritual Mob'),

(179673, 0, 15, 23226, 0, 14501, 40, 4, 0, 0, 0, 0, 0, 0, 0, 0, 'Cast Ritual Candle Aura on Ritual Mob'),
(179673, 5, 15, 23226, 0, 14501, 40, 4, 0, 0, 0, 0, 0, 0, 0, 0, 'Cast Ritual Candle Aura on Ritual Mob'),
(179673, 10, 15, 23226, 0, 14501, 40, 4, 0, 0, 0, 0, 0, 0, 0, 0, 'Cast Ritual Candle Aura on Ritual Mob'),
(179673, 15, 15, 23226, 0, 14501, 40, 4, 0, 0, 0, 0, 0, 0, 0, 0, 'Cast Ritual Candle Aura on Ritual Mob'),
(179673, 20, 15, 23226, 0, 14501, 40, 4, 0, 0, 0, 0, 0, 0, 0, 0, 'Cast Ritual Candle Aura on Ritual Mob'),
(179673, 25, 15, 23226, 0, 14501, 40, 4, 0, 0, 0, 0, 0, 0, 0, 0, 'Cast Ritual Candle Aura on Ritual Mob'),
(179673, 30, 15, 23226, 0, 14501, 40, 4, 0, 0, 0, 0, 0, 0, 0, 0, 'Cast Ritual Candle Aura on Ritual Mob'),
(179673, 35, 15, 23226, 0, 14501, 40, 4, 0, 0, 0, 0, 0, 0, 0, 0, 'Cast Ritual Candle Aura on Ritual Mob'),
(179673, 40, 15, 23226, 0, 14501, 40, 4, 0, 0, 0, 0, 0, 0, 0, 0, 'Cast Ritual Candle Aura on Ritual Mob'),
(179673, 45, 15, 23226, 0, 14501, 40, 4, 0, 0, 0, 0, 0, 0, 0, 0, 'Cast Ritual Candle Aura on Ritual Mob');

DELETE FROM `creature_movement_template` WHERE `entry` IN (14483, 14482);
INSERT INTO `creature_movement_template` (`entry`,`point`,`position_x`,`position_y`,`position_z`,`waittime`,`script_id`,`textid1`,`textid2`,`textid3`,`textid4`,`textid5`,`emote`,`spell`,`orientation`,`model1`,`model2`) VALUES
(14483, 0, -38.48, 812.93, -29.535, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14482, 0, -38.48, 812.93, -29.535, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

########################################
# Quest: Ulathek the Traitor (7624)
########################################
-- https://github.com/TrinityCore/TrinityCore/commit/688c6cd753886b197f7074f04774e2c89519aa5d

UPDATE `creature_template` SET `GossipMenuId`= 56000 WHERE `entry` = 14523;

DELETE FROM `conditions` WHERE `condition_entry` = 946;
INSERT INTO `conditions` (`condition_entry`,`type`,`value1`,`value2`) VALUES
(946,9,7624,0);

DELETE FROM `gossip_menu_option` WHERE `menu_id` IN (56000,56001,56002);
INSERT INTO `gossip_menu_option` (`menu_id`,`id`,`option_icon`,`option_text`,`option_id`,`npc_option_npcflag`,`action_menu_id`,`action_poi_id`,`action_script_id`,`box_coded`,`box_money`,`box_text`,`condition_id`) VALUES 
(56000,0,0,'Dreadlords? Perhaps you mean Lord Banehollow. He sends his regards, and has a message for you...',1,1,56001,0,0,0,0,NULL,946),
(56001,0,0,'No, Ulathek. He knows your secret. He knows you plot with Lord Hel''nurath of Xoroth.',1,1,56002,0,0,0,0,NULL,0),
(56002,0,0,'It''s no lie, traitor. Banehollow wants your heart, and I''m going to get it for him.',1,1,0,0,56002,0,0,NULL,0);

DELETE FROM `gossip_menu` WHERE `entry` IN (56000,56001,56002) AND `text_id` IN (7038,7039,7040);
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES
(56000,7038),
(56001,7039),
(56002,7040);

DELETE FROM `dbscripts_on_gossip` WHERE `id` = 56002;
INSERT INTO `dbscripts_on_gossip` (`id`,`delay`,`command`,`datalong`,`datalong2`,`buddy_entry`,`search_radius`,`data_flags`,`dataint`,`dataint2`,`dataint3`,`dataint4`,`x`,`y`,`z`,`o`,`comments`) VALUES
(56002,0,14,23179,0,0,0,2,0,0,0,0,0,0,0,0,'Remove Taint of Shadow from player'),
(56002,0,26,0,0,0,0,0,0,0,0,0,0,0,0,0,'Ulathek attack player');

########################################
# Quest: Imp Delivery (7629)
########################################
-- https://github.com/TrinityCore/TrinityCore/commit/02981c8347c9a6709dacbef6f92f697e28ef8e9d
-- https://youtu.be/n3J8zlEPm7s?t=510 (J'eevee Scholomance Alchemy Lab event)
-- this has a problem where it is next in chain for something, but shouldn't be (hence the "you do not meet the requirements for this quest")
-- .go object 43204

DELETE FROM `dbscripts_on_event` WHERE `id` = 8438;
INSERT INTO `dbscripts_on_event` (`id`,`delay`,`command`,`datalong`,`datalong2`,`buddy_entry`,`search_radius`,`data_flags`,`dataint`,`dataint2`,`dataint3`,`dataint4`,`x`,`y`,`z`,`o`,`comments`) VALUES
(8438, 0, 10, 14500, 180000, 0, 0, 0, 0, 0, 0, 0, 38.4345, 156.9295, 83.545, 1.407458, 'Spawn J''eevee (Scholomance)'),
(8438, 1, 0, 0, 0, 14500, 40, 0, 2000007713, 0, 0, 0, 0, 0, 0, 0, 'J''eevee say 1 (Scholomance)'),
(8438, 3, 20, 2, 0, 14500, 40, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'J''eevee set waypoint movement (Scholomance)'),
(8438, 40, 8, 14500, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'J''eevee give quest credit (Scholomance)');

DELETE FROM `dbscripts_on_creature_movement` WHERE `id` IN (14500002,14500007,14500012);
INSERT INTO `dbscripts_on_creature_movement` (`id`,`delay`,`command`,`datalong`,`datalong2`,`buddy_entry`,`search_radius`,`data_flags`,`dataint`,`dataint2`,`dataint3`,`dataint4`,`x`,`y`,`z`,`o`,`comments`) VALUES
(14500002, 0, 0, 0, 0, 0, 0, 0, 2000007714, 0, 0, 0, 0, 0, 0, 0, 'J''eevee say 2 on reach wp 2 (Scholomance)'),
(14500007, 0, 0, 0, 0, 0, 0, 0, 2000007715, 0, 0, 0, 0, 0, 0, 0, 'J''eevee say 3 on reach wp 7 (Scholomance)'),
(14500012, 4, 0, 0, 0, 0, 0, 0, 2000007716, 0, 0, 0, 0, 0, 0, 0, 'J''eevee say 4 on reach wp 12 (Scholomance)'),
(14500012, 7, 15, 41232, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'J''eevee cast teleport on reach wp 12 (Scholomance)'),
(14500012, 8, 18, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'J''eevee despawn self on reach wp 12 (Scholomance)');

DELETE FROM `creature_movement_template` WHERE `entry` = 14500;
INSERT INTO `creature_movement_template` (`entry`,`point`,`position_x`,`position_y`,`position_z`,`waittime`,`script_id`,`textid1`,`textid2`,`textid3`,`textid4`,`textid5`,`emote`,`spell`,`orientation`,`model1`,`model2`) VALUES
(14500, 1, 38.784, 160.639, 83.545, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0), 
(14500, 2, 36.804, 160.705, 83.545, 3000, 14500002, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14500, 3, 39.287, 160.044, 83.545, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0), 
(14500, 4, 41.666, 154.591, 83.545, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0), 
(14500, 5, 45.255, 155.014, 83.545, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0), 
(14500, 6, 44.930, 161.186, 83.545, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0), 
(14500, 7, 44.347, 161.120, 83.545, 4000, 14500007, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14500, 8, 46.758, 157.877, 83.545, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14500, 9, 44.640, 154.405, 83.545, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0), 
(14500, 10, 33.498, 156.046, 83.545, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0), 
(14500, 11, 28.269, 160.792, 83.545, 4000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14500, 12, 33.294, 160.895, 83.545, 10000, 14500012, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

DELETE FROM `db_script_string` WHERE `entry` IN (2000007713,2000007714,2000007715,2000007716);
INSERT INTO `db_script_string` (`entry`,`content_default`,`content_loc1`,`content_loc2`,`content_loc3`,`content_loc4`,`content_loc5`,`content_loc6`,`content_loc7`,`content_loc8`,`sound`,`type`,`language`,`emote`,`comment`) VALUES
(2000007713, 'Ah, here we are! Well let''s get to work, shall we...?', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'J''eevee say 1 (Scholomance)'),
(2000007714, 'Oh, right! Over here now...', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'J''eevee say 2 (Scholomance)'),
(2000007715, 'And now... the final step!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'J''eevee say 3 (Scholomance)'),
(2000007716, 'I''m finished. The parchment is made. Now, return to Gorzeeki...', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'J''eevee say 4 (Scholomance)');

########################################
# Class specific mount animation fix
########################################
-- example: https://youtu.be/JbW1mTqcsaQ?t=61
DELETE FROM `dbscripts_on_spell` WHERE `id` IN (23161,5784,23214,13819,34767,34769);
INSERT INTO `dbscripts_on_spell` (`id`,`delay`,`command`,`datalong`,`datalong2`,`buddy_entry`,`search_radius`,`data_flags`,`dataint`,`dataint2`,`dataint3`,`dataint4`,`x`,`y`,`z`,`o`,`comments`)VALUES
(23161,0,15,31725,0,0,0,8,0,0,0,0,0,0,0,0,'Dreadsteed Spell Effect'),
(5784,0,15,31725,0,0,0,8,0,0,0,0,0,0,0,0,'Felsteed Spell Effect'),
(23214,0,15,31726,0,0,0,8,0,0,0,0,0,0,0,0,'Charger Spell Effect'),
(13819,0,15,31726,0,0,0,8,0,0,0,0,0,0,0,0,'Warhorse Spell Effect'),
(34767,0,15,31726,0,0,0,8,0,0,0,0,0,0,0,0,'Charger Spell Effect - Blood Elf'),
(34769,0,15,31726,0,0,0,8,0,0,0,0,0,0,0,0,'Warhorse Spell Effect - Blood Elf');

