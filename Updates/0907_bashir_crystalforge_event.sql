-- Event happens XX:15:00 and XX:45:00 every hour (Started in SD2 void StartManaSlaveEvent() in world_map_outland)
-- https://github.com/cmangos/mangos-tbc/commit/96976e2376fd30b0b7dcf2aeff361b4a5ca3522a
DELETE FROM `dbscript_string` WHERE `entry` BETWEEN 2000001599 AND 2000001604;
INSERT INTO `dbscript_string` (`entry`, `content_default`, `sound`, `type`, `language`, `emote`, `comment`) VALUES 
(2000001599, 'About time you showed up!  That forge has been busted for almost an hour!', 0, 1, 0, 22, 'Bash''ir Arcanist (Entry: 22243)'),
(2000001600, 'Get over there and realign The Crystal Forge.', 0, 1, 0, 22, 'Bash''ir Arcanist (Entry: 22243)'),
(2000001601, 'The forge needs additonal tuning.  Look into it, slave!', 0, 1, 0, 22, 'Bash''ir Arcanist (Entry: 22243)'),

(2000001602, 'I shall add another year to your enslavement for your failure!', 0, 1, 0, 0, 'Bash''ir Arcanist (Entry: 22243)'),
(2000001603, 'Incompetent fools!  Why must we suffer your stupidity?', 0, 1, 0, 0, 'Bash''ir Arcanist (Entry: 22243)'),
(2000001604, 'What have you done you fools?', 0, 1, 0, 0, 'Bash''ir Arcanist (Entry: 22243)');

DELETE FROM spell_script_target WHERE entry=40490;
INSERT INTO spell_script_target (entry,type,targetEntry,inverseEffectMask) VALUES
(40490,1,22241,0),
(40490,1,22242,0),
(40490,1,22243,0);

DELETE FROM `dbscripts_on_relay` WHERE `id` IN(10140);
INSERT INTO `dbscripts_on_relay` (`id`,`delay`,`command`,`datalong`,`datalong2`,`datalong3`,`dataint`,`dataint2`,`dataint3`,`dataint4`,`buddy_entry`,`search_radius`,`data_flags`,`comments`,`x`,`y`,`z`,`o`) VALUES
(10140,1,10,23154,600000,1,0,0,0,0,0,0,0,'Spawn Mana-debt Slave',3972.204,5929.265,268.0783,5.351119), -- 21:45:10.858
(10140,1,10,23154,600000,2,0,0,0,0,0,0,0,'Spawn Mana-debt Slave',4032.224,5937.296,267.666,4.234397),
(10140,1,10,23154,600000,3,0,0,0,0,0,0,0,'Spawn Mana-debt Slave',4040.23,5843.711,267.1726,2.061258),
(10140,4,0,0,0,0,2000001599,2000001600,2000001601,0,22243,78252,19,'Bash''ir Arcanist - Random text 1',0,0,0,0),
(10140,300,31,23154,10,0,0,0,0,0,0,0,0,'Netherstorm Trigger - Terminate Script if no Mana-debt Slave nearby',0,0,0,0),
(10140,301,0,0,0,0,2000001602,2000001603,2000001604,0,22243,78252,19,'Bash''ir Arcanist - Random text 2',0,0,0,0),
(10140,301,15,40490,0,0,0,0,0,0,19656,160927,23,'Netherstorm Trigger - Cast Resonant Feedback',0,0,0,0),
(10140,301,15,40490,0,0,0,0,0,0,19656,160928,23,'Netherstorm Trigger - Cast Resonant Feedback',0,0,0,0),
(10140,301,15,40490,0,0,0,0,0,0,19656,160930,23,'Netherstorm Trigger - Cast Resonant Feedback',0,0,0,0),
(10140,301,35,5,10,0,0,0,0,0,0,0,0,'Netherstorm Trigger - Send AI Event 5',0,0,0,0); -- 21:50:12.353

UPDATE creature_template SET MovementType=2 WHERE entry=23154;
DELETE FROM `creature_movement_template` WHERE `entry`=23154;
INSERT INTO `creature_movement_template` (`entry`,`point`,`pathId`,`position_x`,`position_y`,`position_z`,`waittime`,`script_id`,`orientation`) VALUES
(23154,1,1,3979.143,5915.772,267.0489,0,0,100),
(23154,2,1,3994.154,5910.478,267.4732,0,0,100),
(23154,3,1,4004.146,5905.679,267.4436,0,0,100),
(23154,4,1,4010.434,5895.85,267.9485,0,0,100),
(23154,5,1,4013.901,5895.092,267.9485,1000,2315401,0.006547038),
(23154,6,1,4013.901,5895.092,267.9485,7000,2315402,0.006547038),
(23154,7,1,3972.11,5929.405,267.995,5000,2315403,2.105885),

(23154,1,2,4025.009,5925.947,267.7674,0,0,100),
(23154,2,2,4022.393,5912.756,267.9436,0,0,100),
(23154,3,2,4022.563,5901.287,267.9436,1000,2315401,4.383429),
(23154,4,2,4022.563,5901.287,267.9436,7000,2315402,4.359708),
(23154,5,2,4032.224,5937.296,267.543,5000,2315403,4.13643),

(23154,1,3,4028.832,5855.655,267.1263,0,0,100),
(23154,2,3,4030.124,5875.349,267.9485,0,0,100),
(23154,3,3,4016.545,5884.506,267.9485,0,0,100),
(23154,4,3,4018.161,5889.327,267.9485,1000,2315401,1.193439),
(23154,5,3,4018.161,5889.327,267.9485,7000,2315402,1.193439),
(23154,6,3,4040.23,5843.711,267.0498,5000,2315403,2.338741);

DELETE FROM `dbscripts_on_creature_movement` WHERE `id` IN(2315401,2315402,2315403);
INSERT INTO `dbscripts_on_creature_movement` (`id`,`delay`,`command`,`datalong`,`datalong2`,`datalong3`,`dataint`,`dataint2`,`dataint3`,`dataint4`,`buddy_entry`,`search_radius`,`data_flags`,`comments`,`x`,`y`,`z`,`o`) VALUES
(2315401,0,32,1,0,0,0,0,0,0,0,0,0,'Mana-debt Slave - Pause Waypoints',0,0,0,0),
(2315401,1,15,40639,0,0,0,0,0,0,19656,160929,17,'Mana-debt Slave - Cast Arcane Beam',0,0,0,0),

(2315402,1,1,6,0,0,0,0,0,0,0,0,0,'Mana-debt Slave - OneShotQuestion',0,0,0,0),
(2315402,5,1,15,0,0,0,0,0,0,0,0,0,'Mana-debt Slave - OneShotLaugh',0,0,0,0),
(2315402,5,25,1,0,0,0,0,0,0,0,0,0,'Mana-debt Slave - Set Run',0,0,0,0),

(2315403,0,15,40163,0,0,0,0,0,0,0,0,0,'Mana-debt Slave - Cast Teleport',0,0,0,0),
(2315403,0,18,1600,0,0,0,0,0,0,0,0,0,'Mana-debt Slave - Despawn Self',0,0,0,0);

