-- Add Stasis Field aura to Bash'ir Surveyor c.23153
DELETE FROM creature_template_addon WHERE entry = 23153;
INSERT INTO creature_template_addon (entry, mount, bytes1, b2_0_sheath, b2_1_flags, emote, moveflags, auras) VALUES
(23153,0,0,1,16,0,0,'40306');
-- And add correct targets for it
DELETE FROM spell_script_target WHERE entry=40307;
INSERT INTO spell_script_target (entry,type,targetEntry,inverseEffectMask) VALUES
(40307,1,22175,0), -- Apexis Flayer
(40307,1,22255,0), -- Daggertail Lizard
(40307,1,22181,0), -- Aether Ray
(40307,1,22180,0); -- Shard-Hide Boar

DELETE FROM `dbscript_string` WHERE `entry` BETWEEN 2000001543 AND 2000001548;
INSERT INTO `dbscript_string` (`entry`, `content_default`, `sound`, `type`, `language`, `emote`, `comment`) VALUES 
(2000001543, 'Check those crystals over there!', 0, 0, 0, 1, 'Bash''ir Surveyor (Entry: 23153)'),
(2000001544, 'Find what I am looking for and you may have a treat.', 0, 0, 0, 1, 'Bash''ir Surveyor (Entry: 23153)'),
(2000001545, 'That grouping looks promising.', 0, 0, 0, 1, 'Bash''ir Surveyor (Entry: 23153)'),

(2000001546, 'I am beginning to suspect you are worthless.  Do not disappoint me further.', 0, 0, 0, 1, 'Bash''ir Surveyor (Entry: 23153)'),
(2000001547, 'Yes, that''s it.  These will do nicely.', 0, 0, 0, 1, 'Bash''ir Surveyor (Entry: 23153)'),
(2000001548, 'You''ve found nothing?  Very well.  Over there next.', 0, 0, 0, 1, 'Bash''ir Surveyor (Entry: 23153)');

SET @GUID := 161142;
DELETE FROM creature WHERE id IN(23153,23154);
INSERT INTO creature (guid, id, map, spawnMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES
(@GUID+0,23153,530,1,0,0,4117.667,5379.044,266.6122,2.495821,1800,1800,0,0,0,0,0,2),
(@GUID+1,23154,530,1,0,0,4110.278,5381.844,266.1487,5.727434,1800,1800,0,0,0,0,0,0),
(@GUID+2,23154,530,1,0,0,4114.102,5368.567,267.6211,1.418258,1800,1800,0,0,0,0,0,0),

(@GUID+3,23153,530,1,0,0,3971.334,5668.72,267.5174,3.356977,1800,1800,0,0,0,0,0,2),
(@GUID+4,23154,530,1,0,0,3967.494,5675.388,267.7566,4.963231,1800,1800,0,0,0,0,0,0),
(@GUID+5,23154,530,1,0,0,3967.432,5660.811,268.5316,1.414797,1800,1800,0,0,0,0,0,0),

(@GUID+6,23153,530,1,0,0,3914.38,4913.135,268.2487,1.440539,1800,1800,0,0,0,0,0,2),
(@GUID+7,23154,530,1,0,0,3920.013,4910.366,267.7971,2.549393,1800,1800,0,0,0,0,0,0),
(@GUID+8,23154,530,1,0,0,3915.637,4918.675,268.0701,4.993489,1800,1800,0,0,0,0,0,0),

(@GUID+9,23153,530,1,0,0,4078.182,5123.284,266.949,2.261034,1800,1800,0,0,0,0,0,2),
(@GUID+10,23154,530,1,0,0,4070.757,5127.342,267.5959,5.573686,1800,1800,0,0,0,0,0,0),
(@GUID+11,23154,530,1,0,0,4076.135,5114.612,267.8706,1.363137,1800,1800,0,0,0,0,0,0);

DELETE FROM pool_template WHERE entry BETWEEN 25639 AND 25643;
INSERT INTO pool_template (entry, max_limit, description) VALUES
(25639, 3, 'Bash''ir - Bash''ir Surveyor (23153) and Mana-debt Slave (23154) 1'),
(25640, 3, 'Bash''ir - Bash''ir Surveyor (23153) and Mana-debt Slave (23154) 2'),
(25641, 3, 'Bash''ir - Bash''ir Surveyor (23153) and Mana-debt Slave (23154) 3'),
(25642, 3, 'Bash''ir - Bash''ir Surveyor (23153) and Mana-debt Slave (23154) 4'),
(25643, 1, 'Bash''ir - Bash''ir Surveyor (23153) and Mana-debt Slave (23154) Mother Pool');

DELETE FROM pool_creature WHERE pool_entry BETWEEN 25639 AND 25642;
INSERT INTO pool_creature (guid, pool_entry, chance, description) VALUES
(@GUID+0, 25639, 0, 'Bash''ir Surveyor (23153)'),
(@GUID+1, 25639, 0, 'Mana-debt Slave (23154)'),
(@GUID+2, 25639, 0, 'Mana-debt Slave (23154)'),

(@GUID+3, 25640, 0, 'Bash''ir Surveyor (23153)'),
(@GUID+4, 25640, 0, 'Mana-debt Slave (23154)'),
(@GUID+5, 25640, 0, 'Mana-debt Slave (23154)'),

(@GUID+6, 25641, 0, 'Bash''ir Surveyor (23153)'),
(@GUID+7, 25641, 0, 'Mana-debt Slave (23154)'),
(@GUID+8, 25641, 0, 'Mana-debt Slave (23154)'),

(@GUID+9, 25642, 0, 'Bash''ir Surveyor (23153)'),
(@GUID+10, 25642, 0, 'Mana-debt Slave (23154)'),
(@GUID+11, 25642, 0, 'Mana-debt Slave (23154)');

DELETE FROM pool_pool WHERE mother_pool=25643;
INSERT INTO pool_pool (pool_id, mother_pool, chance, description) VALUES 
(25639, 25643, 0, 'Ogri\'la - Bash''ir Surveyor (23153) and Mana-debt Slave (23154)'),
(25640, 25643, 0, 'Ogri\'la - Bash''ir Surveyor (23153) and Mana-debt Slave (23154)'),
(25641, 25643, 0, 'Ogri\'la - Bash''ir Surveyor (23153) and Mana-debt Slave (23154)'),
(25642, 25643, 0, 'Ogri\'la - Bash''ir Surveyor (23153) and Mana-debt Slave (23154)');

DELETE FROM `creature_linking` WHERE `master_guid` IN(@GUID+0,@GUID+3,@GUID+6,@GUID+9);
INSERT INTO `creature_linking` (`guid`, `master_guid`, `flag`) VALUES
(@GUID+1, @GUID+0, 1|2|128|512|8192), -- FLAG_AGGRO_ON_AGGRO, FLAG_TO_AGGRO_ON_AGGRO, FLAG_RESPAWN_ON_RESPAWN, FLAG_FOLLOW, FLAG_DESPAWN_ON_DESPAWN
(@GUID+2, @GUID+0, 1|2|128|512|8192),

(@GUID+4, @GUID+3, 1|2|128|512|8192),
(@GUID+5, @GUID+3, 1|2|128|512|8192),

(@GUID+7, @GUID+6, 1|2|128|512|8192),
(@GUID+8, @GUID+6, 1|2|128|512|8192),

(@GUID+10, @GUID+9, 1|2|128|512|8192),
(@GUID+11, @GUID+9, 1|2|128|512|8192);

DELETE FROM `dbscripts_on_creature_movement` WHERE `id` BETWEEN 2315301 AND 2315309;
INSERT INTO `dbscripts_on_creature_movement` (`id`,`delay`,`command`,`datalong`,`datalong2`,`datalong3`,`dataint`,`dataint2`,`dataint3`,`dataint4`,`buddy_entry`,`search_radius`,`data_flags`,`comments`,`x`,`y`,`z`,`o`) VALUES
(2315301,0,0,0,0,0,2000001543,2000001544,2000001545,0,0,0,0,'Bash''ir Surveyor - Random Say',0,0,0,0),

(2315302,0,32,1,0,0,0,0,0,0,0,0,0,'Bash''ir Surveyor - Pause Waypoints',0,0,0,0),
(2315302,0,1,233,0,0,0,0,0,0,23154,@GUID+1,23,'Crystalfused Miner - Emote 233',0,0,0,0),
(2315302,0,1,233,0,0,0,0,0,0,23154,@GUID+2,23,'Crystalfused Miner - Emote 233',0,0,0,0),
(2315302,30,0,0,0,0,2000001546,2000001547,2000001548,0,0,0,0,'Bash''ir Surveyor - Random Say',0,0,0,0),
(2315302,30,1,0,0,0,0,0,0,0,23154,@GUID+1,23,'Crystalfused Miner - Emote 0',0,0,0,0),
(2315302,30,1,0,0,0,0,0,0,0,23154,@GUID+2,23,'Crystalfused Miner - Emote 0',0,0,0,0),
(2315302,30,32,0,0,0,0,0,0,0,0,0,0,'Bash''ir Surveyor - Resume Waypoints',0,0,0,0),

(2315303,0,32,1,0,0,0,0,0,0,0,0,0,'Bash''ir Surveyor - Pause Waypoints',0,0,0,0),
(2315303,0,1,233,0,0,0,0,0,0,23154,@GUID+4,23,'Crystalfused Miner - Emote 233',0,0,0,0),
(2315303,0,1,233,0,0,0,0,0,0,23154,@GUID+5,23,'Crystalfused Miner - Emote 233',0,0,0,0),
(2315303,30,0,0,0,0,2000001546,2000001547,2000001548,0,0,0,0,'Bash''ir Surveyor - Random Say',0,0,0,0),
(2315303,30,1,0,0,0,0,0,0,0,23154,@GUID+4,23,'Crystalfused Miner - Emote 0',0,0,0,0),
(2315303,30,1,0,0,0,0,0,0,0,23154,@GUID+5,23,'Crystalfused Miner - Emote 0',0,0,0,0),
(2315303,30,32,0,0,0,0,0,0,0,0,0,0,'Bash''ir Surveyor - Resume Waypoints',0,0,0,0),

(2315304,0,32,1,0,0,0,0,0,0,0,0,0,'Bash''ir Surveyor - Pause Waypoints',0,0,0,0),
(2315304,0,1,233,0,0,0,0,0,0,23154,@GUID+7,23,'Crystalfused Miner - Emote 233',0,0,0,0),
(2315304,0,1,233,0,0,0,0,0,0,23154,@GUID+8,23,'Crystalfused Miner - Emote 233',0,0,0,0),
(2315304,30,0,0,0,0,2000001546,2000001547,2000001548,0,0,0,0,'Bash''ir Surveyor - Random Say',0,0,0,0),
(2315304,30,1,0,0,0,0,0,0,0,23154,@GUID+7,23,'Crystalfused Miner - Emote 0',0,0,0,0),
(2315304,30,1,0,0,0,0,0,0,0,23154,@GUID+8,23,'Crystalfused Miner - Emote 0',0,0,0,0),
(2315304,30,32,0,0,0,0,0,0,0,0,0,0,'Bash''ir Surveyor - Resume Waypoints',0,0,0,0),

(2315305,0,32,1,0,0,0,0,0,0,0,0,0,'Bash''ir Surveyor - Pause Waypoints',0,0,0,0),
(2315305,0,1,233,0,0,0,0,0,0,23154,@GUID+10,23,'Crystalfused Miner - Emote 233',0,0,0,0),
(2315305,0,1,233,0,0,0,0,0,0,23154,@GUID+11,23,'Crystalfused Miner - Emote 233',0,0,0,0),
(2315305,30,0,0,0,0,2000001546,2000001547,2000001548,0,0,0,0,'Bash''ir Surveyor - Random Say',0,0,0,0),
(2315305,30,1,0,0,0,0,0,0,0,23154,@GUID+10,23,'Crystalfused Miner - Emote 0',0,0,0,0),
(2315305,30,1,0,0,0,0,0,0,0,23154,@GUID+11,23,'Crystalfused Miner - Emote 0',0,0,0,0),
(2315305,30,32,0,0,0,0,0,0,0,0,0,0,'Bash''ir Surveyor - Resume Waypoints',0,0,0,0),

(2315306,0,0,0,0,0,2000001543,2000001544,2000001545,0,0,0,0,'Bash''ir Surveyor - Random Say',0,0,0,0),
(2315306,0,32,1,0,0,0,0,0,0,0,0,0,'Bash''ir Surveyor - Pause Waypoints',0,0,0,0),
(2315306,0,1,233,0,0,0,0,0,0,23154,@GUID+1,23,'Crystalfused Miner - Emote 233',0,0,0,0),
(2315306,0,1,233,0,0,0,0,0,0,23154,@GUID+2,23,'Crystalfused Miner - Emote 233',0,0,0,0),
(2315306,30,0,0,0,0,2000001546,2000001547,2000001548,0,0,0,0,'Bash''ir Surveyor - Random Say',0,0,0,0),
(2315306,30,1,0,0,0,0,0,0,0,23154,@GUID+1,23,'Crystalfused Miner - Emote 0',0,0,0,0),
(2315306,30,1,0,0,0,0,0,0,0,23154,@GUID+2,23,'Crystalfused Miner - Emote 0',0,0,0,0),
(2315306,30,32,0,0,0,0,0,0,0,0,0,0,'Bash''ir Surveyor - Resume Waypoints',0,0,0,0),

(2315307,0,0,0,0,0,2000001543,2000001544,2000001545,0,0,0,0,'Bash''ir Surveyor - Random Say',0,0,0,0),
(2315307,0,32,1,0,0,0,0,0,0,0,0,0,'Bash''ir Surveyor - Pause Waypoints',0,0,0,0),
(2315307,0,1,233,0,0,0,0,0,0,23154,@GUID+4,23,'Crystalfused Miner - Emote 233',0,0,0,0),
(2315307,0,1,233,0,0,0,0,0,0,23154,@GUID+5,23,'Crystalfused Miner - Emote 233',0,0,0,0),
(2315307,30,0,0,0,0,2000001546,2000001547,2000001548,0,0,0,0,'Bash''ir Surveyor - Random Say',0,0,0,0),
(2315307,30,1,0,0,0,0,0,0,0,23154,@GUID+4,23,'Crystalfused Miner - Emote 0',0,0,0,0),
(2315307,30,1,0,0,0,0,0,0,0,23154,@GUID+5,23,'Crystalfused Miner - Emote 0',0,0,0,0),
(2315307,30,32,0,0,0,0,0,0,0,0,0,0,'Bash''ir Surveyor - Resume Waypoints',0,0,0,0),

(2315308,0,0,0,0,0,2000001543,2000001544,2000001545,0,0,0,0,'Bash''ir Surveyor - Random Say',0,0,0,0),
(2315308,0,32,1,0,0,0,0,0,0,0,0,0,'Bash''ir Surveyor - Pause Waypoints',0,0,0,0),
(2315308,0,1,233,0,0,0,0,0,0,23154,@GUID+7,23,'Crystalfused Miner - Emote 233',0,0,0,0),
(2315308,0,1,233,0,0,0,0,0,0,23154,@GUID+8,23,'Crystalfused Miner - Emote 233',0,0,0,0),
(2315308,30,0,0,0,0,2000001546,2000001547,2000001548,0,0,0,0,'Bash''ir Surveyor - Random Say',0,0,0,0),
(2315308,30,1,0,0,0,0,0,0,0,23154,@GUID+7,23,'Crystalfused Miner - Emote 0',0,0,0,0),
(2315308,30,1,0,0,0,0,0,0,0,23154,@GUID+8,23,'Crystalfused Miner - Emote 0',0,0,0,0),
(2315308,30,32,0,0,0,0,0,0,0,0,0,0,'Bash''ir Surveyor - Resume Waypoints',0,0,0,0),

(2315309,0,0,0,0,0,2000001543,2000001544,2000001545,0,0,0,0,'Bash''ir Surveyor - Random Say',0,0,0,0),
(2315309,0,32,1,0,0,0,0,0,0,0,0,0,'Bash''ir Surveyor - Pause Waypoints',0,0,0,0),
(2315309,0,1,233,0,0,0,0,0,0,23154,@GUID+10,23,'Crystalfused Miner - Emote 233',0,0,0,0),
(2315309,0,1,233,0,0,0,0,0,0,23154,@GUID+11,23,'Crystalfused Miner - Emote 233',0,0,0,0),
(2315309,30,0,0,0,0,2000001546,2000001547,2000001548,0,0,0,0,'Bash''ir Surveyor - Random Say',0,0,0,0),
(2315309,30,1,0,0,0,0,0,0,0,23154,@GUID+10,23,'Crystalfused Miner - Emote 0',0,0,0,0),
(2315309,30,1,0,0,0,0,0,0,0,23154,@GUID+11,23,'Crystalfused Miner - Emote 0',0,0,0,0),
(2315309,30,32,0,0,0,0,0,0,0,0,0,0,'Bash''ir Surveyor - Resume Waypoints',0,0,0,0);

DELETE FROM `creature_movement` WHERE `id` IN(SELECT guid FROM creature WHERE id=23153);
INSERT INTO `creature_movement` (`id`,`point`,`position_x`,`position_y`,`position_z`,`waittime`,`script_id`,`orientation`) VALUES
(@GUID+0,1,4088.924,5360.324,266.8262,0,0,100),
(@GUID+0,2,4086.19,5334.616,272.1114,1000,2315302,100),
(@GUID+0,3,4055.083,5388.747,268.2536,0,0,100),
(@GUID+0,4,4018.438,5403.46,266.9296,1000,2315306,100),
(@GUID+0,5,4041.49,5440.908,266.7763,0,0,100),
(@GUID+0,6,4061.738,5470.963,267.3727,1000,2315306,100),
(@GUID+0,7,4081.422,5433.799,266.9398,0,0,100),
(@GUID+0,8,4088.155,5399.219,264.8799,0,0,100),
(@GUID+0,9,4099.717,5375.085,265.682,0,2315301,100),

(@GUID+3,1,3950.579,5664.166,267.8868,0,0,100),
(@GUID+3,2,3949.695,5648.014,267.833,1000,2315303,100),
(@GUID+3,3,3939.836,5699.776,267.8054,0,0,100),
(@GUID+3,4,3917.208,5714.594,267.5573,1000,2315307,100),
(@GUID+3,5,3953.256,5680.032,268.8732,0,0,100),
(@GUID+3,6,3983.988,5671.252,266.8484,0,0,100),
(@GUID+3,7,4018.189,5675.339,266.136,0,0,100),
(@GUID+3,8,4045.02,5677.407,267.089,1000,2315307,100),
(@GUID+3,9,4001.402,5668.4,267.5134,0,0,100),
(@GUID+3,10,3974.07,5668.724,267.664,0,2315301,100),

(@GUID+6,1,3921.228,4965.274,266.4946,0,0,100),
(@GUID+6,2,3910.742,4992.671,267.6488,1000,2315304,100),
(@GUID+6,3,3954.662,4958.776,266.2497,0,0,100),
(@GUID+6,4,3990.942,4941.342,268.8905,0,0,100),
(@GUID+6,5,4003.885,4918.704,266.4579,0,0,100),
(@GUID+6,6,4019.997,4916.955,265.7477,1000,2315308,100),
(@GUID+6,7,4001.091,4867.379,267.7419,0,0,100),
(@GUID+6,8,3966.167,4855.453,267.1823,0,0,100),
(@GUID+6,9,3938.668,4864.629,266.8073,0,0,100),
(@GUID+6,10,3917.792,4875.084,266.7963,1000,2315308,100),
(@GUID+6,11,3930.731,4901.205,267.671,0,0,100),
(@GUID+6,12,3917.535,4918.631,267.874,0,2315301,100),

(@GUID+9,1,4049.228,5158.38,265.8159,1000,2315305,100),
(@GUID+9,2,4013.033,5126.243,267.2072,0,0,100),
(@GUID+9,3,3994.749,5096.724,266.9342,0,0,100),
(@GUID+9,4,3972.481,5072.851,268.5905,1000,2315309,100),
(@GUID+9,5,4017.094,5033.253,268.2528,0,0,100),
(@GUID+9,6,4029.895,5002.403,267.9489,0,0,100),
(@GUID+9,7,4054.003,4995.914,267.5135,1000,2315309,100),
(@GUID+9,8,4058.921,5066.56,268.2322,0,0,100),
(@GUID+9,9,4066.631,5099.14,267.5258,0,0,100),
(@GUID+9,10,4069.543,5118.533,267.2003,0,2315301,100);



