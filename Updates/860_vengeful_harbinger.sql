-- Vengeful Harbinger q.10842 (TBC version)
-- ----------------------------------------
-- Templates
-- ----------------------------------------

UPDATE creature SET spawntimesecsmin=1, spawntimesecsmax=1 WHERE id IN(21489,21443);
UPDATE creature_template SET InhabitType=7, ModelId1=1126, ModelId2=11686, ExtraFlags=2097152, SpeedWalk=(2/2.5), SpeedRun=(14/7), MovementType=0 WHERE entry=21445; -- Bone Wastes - White Nether Orb
UPDATE creature_template SET InhabitType=7, ModelId1=10812, ModelId2=20383, SpeedWalk=(2/2.5), SpeedRun=(14/7), UnitFlags=33555200, MovementType=0 WHERE entry=21632; -- Nether Cloud
UPDATE creature_template SET InhabitType=4, ModelId1=20287, ModelId2=20287, ModelId3=20288, ModelId4=20289, SpeedWalk=(2/2.5), SpeedRun=(14/7), UnitFlags=33587456, MovementType=2 WHERE entry=21424; -- Terokkar - Bone Wastes - Draenei Soul
UPDATE creature_template SET ModelId1=20289, ModelId2=20288, ModelId3=20288, ModelId4=20289, UnitFlags=32768, MovementType=2 WHERE entry=21636; -- Vengeful Draenei
UPDATE creature_template SET MinLevel=64, MaxLevel=64, SpeedWalk=(5/2.5), SpeedRun=(8/7), UnitFlags=256, ExtraFlags=2097152, MovementType=2 WHERE entry=22285; -- Draenei Tomb Guardian
UPDATE creature_template SET InhabitType=7, ExtraFlags=0 WHERE entry=21451; -- Bone Wastes - Event Trigger A
UPDATE creature_template SET InhabitType=7, ExtraFlags=0 WHERE entry=21489; -- Bone Wastes - Event Trigger B
UPDATE creature_template SET InhabitType=7 WHERE entry=21443; -- Bone Wastes - Orb Waypoint 01
UPDATE creature_template SET InhabitType=7, ExtraFlags=0 WHERE entry=21463; -- Bone Wastes - Portal Trigger
UPDATE creature_template SET SpeedWalk=(2.5/2.5), SpeedRun=(8/7), MovementType=2,UnitFlags=32768 WHERE entry=21638; -- Vengeful Harbinger

UPDATE quest_template SET ReqItemId1=0,ReqItemCount1=0,OfferRewardText='You cannot know what you have done here $n.  You have saved so many of us from an eternity of darkness.  There is little that I can do for the living and nothing that I could give that would thank you enough.  Take what seems useful to you.'
WHERE entry IN(10842);

UPDATE creature SET MovementType=0, spawndist=0 WHERE id=21443; -- Bone Wastes - Orb Waypoint 01

UPDATE gameobject SET spawntimesecsmin=-56, spawntimesecsmax=-56 WHERE id=184828; -- Hologram Floorpiece and Draenei Ascendant despawned by default.
UPDATE gameobject SET spawntimesecsmin=-46, spawntimesecsmax=-46 WHERE id=184830;

DELETE FROM creature_involvedrelation WHERE quest=10842; -- Vengeful Harbinger is not the turn-in NPC
DELETE FROM gameobject_involvedrelation WHERE quest=10842;
INSERT INTO gameobject_involvedrelation (id, quest) VALUES
(184830,10842);
-- ----------------------------------------
-- Addons
-- ----------------------------------------
DELETE FROM `creature_template_addon` WHERE `entry` IN(21424,21445,21636,21638);
INSERT INTO `creature_template_addon` (`entry`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) VALUES
-- (21424, 0, 0, 1, 16, 0, 0, '17327 31748 36545 36550'), -- Terokkar - Bone Wastes - Draenei Soul - has to be cast in EAI, else it fails - blizz had bugs with it too
(21445, 0, 0, 1, 16, 0, 0, '33344 33343'), -- Bone Wastes - White Nether Orb
(21636, 0, 0, 1, 16, 0, 0, '17327 31748'), -- Vengeful Draenei
(21638, 0, 0, 1, 16, 0, 0, '17327 31748'); -- Vengeful Harbinger

-- ----------------------------------------
-- Spell targets
-- ----------------------------------------
DELETE FROM spell_script_target WHERE entry IN(36896,37226);
INSERT INTO spell_script_target (entry,type,targetEntry,inverseEffectMask) VALUES
(36896,1,21445,0),
(37226,1,21638,0);

-- ----------------------------------------
-- DBScripts
-- ----------------------------------------
-- Bone Wastes - White Nether Orb
DELETE FROM `dbscripts_on_creature_movement` WHERE `id` BETWEEN 2144501 AND 2144503;
INSERT INTO `dbscripts_on_creature_movement` (`id`,`delay`,`command`,`datalong`,`datalong2`,`datalong3`,`dataint`,`dataint2`,`dataint3`,`dataint4`,`buddy_entry`,`search_radius`,`data_flags`,`comments`,`x`,`y`,`z`,`o`) VALUES
(2144501,0,15,36896,1,0,0,0,0,0,21451,75200,23,'Bone Wastes - White Nether Orb -> Bone Wastes - Event Trigger A - Cast Chain Lightning 02',0,0,0,0), -- 01:03:42.000
(2144501,0,15,36896,1,0,0,0,0,0,21451,75197,23,'Bone Wastes - White Nether Orb -> Bone Wastes - Event Trigger A - Cast Chain Lightning 02',0,0,0,0), -- 01:03:42.000
(2144501,0,10,21632,0,0,0,0,0,0,0,0,0,'Bone Wastes - White Nether Orb - Summon Nether Cloud',-2971.253,4336.355,-38.22123,3.752458), -- 01:03:42.000
(2144501,2,15,31698,0,0,0,0,0,0,0,0,0,'Bone Wastes - White Nether Orb - Cast Grow',0,0,0,0), -- 01:03:44.000

(2144501,4,15,36896,1,0,0,0,0,0,21451,75199,23,'Bone Wastes - White Nether Orb -> Bone Wastes - Event Trigger A - Cast Chain Lightning 02',0,0,0,0), -- 01:03:47.000
(2144501,4,15,36896,1,0,0,0,0,0,21451,75195,23,'Bone Wastes - White Nether Orb -> Bone Wastes - Event Trigger A - Cast Chain Lightning 02',0,0,0,0), -- 01:03:47.000
(2144501,4,15,31698,0,0,0,0,0,0,0,0,0,'Bone Wastes - White Nether Orb - Cast Grow',0,0,0,0), -- 01:03:47.000

(2144501,6,15,36896,1,0,0,0,0,0,21451,75200,23,'Bone Wastes - White Nether Orb -> Bone Wastes - Event Trigger A - Cast Chain Lightning 02',0,0,0,0), -- 01:03:49.000
(2144501,6,15,36896,1,0,0,0,0,0,21451,75197,23,'Bone Wastes - White Nether Orb -> Bone Wastes - Event Trigger A - Cast Chain Lightning 02',0,0,0,0), -- 01:03:49.000

(2144502,0,15,29050,0,0,0,0,0,0,0,0,0,'Bone Wastes - White Nether Orb - Cast Grow',0,0,0,0), -- 01:03:56.000

(2144503,6,10,22285,0,0,0,0,0,0,0,0,8,'Bone Wastes - White Nether Orb - Summon Draenei Tomb Guardian',-2971.124,4332.798,-49.71428,1.658063), -- 01:04:13.000
(2144503,7,18,0,0,0,0,0,0,0,0,0,0,'Bone Wastes - White Nether Orb - Despawn Self',0,0,0,0); -- 01:04:14.000

-- Draenei Tomb Guardian
DELETE FROM `dbscripts_on_creature_movement` WHERE `id` BETWEEN 2228501 AND 2228507;
INSERT INTO `dbscripts_on_creature_movement` (`id`,`delay`,`command`,`datalong`,`datalong2`,`datalong3`,`dataint`,`dataint2`,`dataint3`,`dataint4`,`buddy_entry`,`search_radius`,`data_flags`,`comments`,`x`,`y`,`z`,`o`) VALUES
(2228501,0,32,1,0,0,0,0,0,0,0,0,0,'Draenei Tomb Guardian - STATE_WORK',0,0,0,0),
(2228501,5,10,21638,300000,1,0,0,0,0,0,0,8,'Draenei Tomb Guardian - Summon Vengeful Harbinger',-2972.714,4402.545,-49.14561,4.642576),

(2228502,0,1,173,0,0,0,0,0,0,0,0,0,'Draenei Tomb Guardian - STATE_WORK',0,0,0,0),
(2228502,20,1,0,0,0,0,0,0,0,0,0,0,'Draenei Tomb Guardian - STATE_WORK remove',0,0,0,0),
(2228502,2,10,21424,300000,1,0,0,0,0,0,0,8,'Draenei Tomb Guardian - Summon Terokkar - Bone Wastes - Draenei Soul',-2956.828,4412.747,-36.42405,3.37692), -- 01:04:18.000
(2228502,2,10,21424,300000,2,0,0,0,0,0,0,8,'Draenei Tomb Guardian - Summon Terokkar - Bone Wastes - Draenei Soul',-2973.672,4377.606,-48.10826,4.775964), -- 01:04:18.000
(2228502,2,10,21424,300000,3,0,0,0,0,0,0,8,'Draenei Tomb Guardian - Summon Terokkar - Bone Wastes - Draenei Soul',-2968.998,4437.106,-46.10773,3.693409), -- 01:04:18.000
(2228502,2,10,21424,300000,4,0,0,0,0,0,0,8,'Draenei Tomb Guardian - Summon Terokkar - Bone Wastes - Draenei Soul',-2981.394,4394.47,-47.99239,5.650124), -- 01:04:18.000
(2228502,2,10,21424,300000,5,0,0,0,0,0,0,8,'Draenei Tomb Guardian - Summon Terokkar - Bone Wastes - Draenei Soul',-2965.315,4359.161,-47.99607,3.442147), -- 01:04:18.000
(2228502,8,10,21636,300000,1,0,0,0,0,0,0,8,'Draenei Tomb Guardian - Summon Vengeful Draenei',-2972.592,4404.576,-49.14593,4.747295), -- 01:04:24.000
(2228502,8,10,21636,300000,2,0,0,0,0,0,0,8,'Draenei Tomb Guardian - Summon Vengeful Draenei',-2967.546,4406.551,-49.14558,4.642576), -- 01:04:24.000
(2228502,8,10,21636,300000,3,0,0,0,0,0,0,8,'Draenei Tomb Guardian - Summon Vengeful Draenei',-2976.732,4405.919,-49.14592,4.694936), -- 01:04:24.000
(2228502,19,10,21424,300000,6,0,0,0,0,0,0,8,'Draenei Tomb Guardian - Summon Terokkar - Bone Wastes - Draenei Soul',-2988.432,4394.389,-36.38369,6.078979), -- 01:04:35.000
(2228502,19,10,21424,300000,7,0,0,0,0,0,0,8,'Draenei Tomb Guardian - Summon Terokkar - Bone Wastes - Draenei Soul',-2989.655,4412.116,-42.59451,0.2398244), -- 01:04:35.000
(2228502,19,10,21424,300000,8,0,0,0,0,0,0,8,'Draenei Tomb Guardian - Summon Terokkar - Bone Wastes - Draenei Soul',-2956.231,4412.762,-42.56924,3.061273), -- 01:04:35.000
(2228502,19,10,21424,300000,9,0,0,0,0,0,0,8,'Draenei Tomb Guardian - Summon Terokkar - Bone Wastes - Draenei Soul',-2966.012,4384.853,-48.08511,4.642327), -- 01:04:35.000
(2228502,19,10,21424,300000,10,0,0,0,0,0,0,8,'Draenei Tomb Guardian - Summon Terokkar - Bone Wastes - Draenei Soul',-2955.971,4395.022,-39.50554,3.33007), -- 01:04:35.000
(2228502,20,15,36945,0,0,0,0,0,0,21489,5,7,'Draenei Tomb Guardian -> Bone Wastes - Event Trigger B - Cast Cosmetic - Purple Glow - Bone Wastes',0,0,0,0),

(2228503,0,1,173,0,0,0,0,0,0,0,0,0,'Draenei Tomb Guardian - STATE_WORK',0,0,0,0),
(2228503,20,1,0,0,0,0,0,0,0,0,0,0,'Draenei Tomb Guardian - STATE_WORK remove',0,0,0,0),
(2228503,20,10,21424,300000,11,0,0,0,0,0,0,8,'Draenei Tomb Guardian - Summon Terokkar - Bone Wastes - Draenei Soul',-2981.904,4416.856,-46.02745,6.147188), -- 01:05:01.000
(2228503,20,10,21424,300000,12,0,0,0,0,0,0,8,'Draenei Tomb Guardian - Summon Terokkar - Bone Wastes - Draenei Soul',-2988.385,4376.873,-39.48909,0.3478556), -- 01:05:01.000
(2228503,20,10,21424,300000,13,0,0,0,0,0,0,8,'Draenei Tomb Guardian - Summon Terokkar - Bone Wastes - Draenei Soul',-2955.221,4359.759,-39.56786,3.209827), -- 01:05:01.000
(2228503,20,10,21424,300000,14,0,0,0,0,0,0,8,'Draenei Tomb Guardian - Summon Terokkar - Bone Wastes - Draenei Soul',-2989.158,4394.5,-42.68121,0.1677267), -- 01:05:01.000
(2228503,20,10,21424,300000,15,0,0,0,0,0,0,8,'Draenei Tomb Guardian - Summon Terokkar - Bone Wastes - Draenei Soul',-2988.418,4358.942,-42.72601,0.005430005), -- 01:05:01.000
(2228503,20,10,21424,300000,16,0,0,0,0,0,0,8,'Draenei Tomb Guardian - Summon Terokkar - Bone Wastes - Draenei Soul',-2979.003,4359.749,-48.0452,5.871648), -- 01:05:01.000
(2228503,20,15,36945,0,0,0,0,0,0,21489,5,7,'Draenei Tomb Guardian -> Bone Wastes - Event Trigger B - Cast Cosmetic - Purple Glow - Bone Wastes',0,0,0,0),

(2228504,0,1,173,0,0,0,0,0,0,0,0,0,'Draenei Tomb Guardian - STATE_WORK',0,0,0,0),
(2228504,20,1,0,0,0,0,0,0,0,0,0,0,'Draenei Tomb Guardian - STATE_WORK remove',0,0,0,0),
(2228504,12,10,21636,300000,4,0,0,0,0,0,0,8,'Draenei Tomb Guardian - Summon Vengeful Draenei',-2978.329,4406.53,-49.1456,4.415683), -- 01:05:17.000
(2228504,12,10,21636,300000,5,0,0,0,0,0,0,8,'Draenei Tomb Guardian - Summon Vengeful Draenei',-2965.882,4407.402,-49.14573,4.555309), -- 01:05:17.000
(2228504,12,10,21636,300000,6,0,0,0,0,0,0,8,'Draenei Tomb Guardian - Summon Vengeful Draenei',-2972.616,4406.917,-49.1463,4.747295), -- 01:05:17.000
(2228504,20,15,36945,0,0,0,0,0,0,21489,5,7,'Draenei Tomb Guardian -> Bone Wastes - Event Trigger B - Cast Cosmetic - Purple Glow - Bone Wastes',0,0,0,0),

(2228505,0,1,173,0,0,0,0,0,0,0,0,0,'Draenei Tomb Guardian - STATE_WORK',0,0,0,0),
(2228505,20,1,0,0,0,0,0,0,0,0,0,0,'Draenei Tomb Guardian - STATE_WORK remove',0,0,0,0),
(2228505,2,10,21424,300000,1,0,0,0,0,0,0,8,'Draenei Tomb Guardian - Summon Terokkar - Bone Wastes - Draenei Soul',-2956.828,4412.747,-36.42405,3.37692), -- 01:05:32.000 Ghosts spawns repeat here
(2228505,2,10,21424,300000,2,0,0,0,0,0,0,8,'Draenei Tomb Guardian - Summon Terokkar - Bone Wastes - Draenei Soul',-2973.672,4377.606,-48.10826,4.775964), -- 01:05:32.000
(2228505,2,10,21424,300000,3,0,0,0,0,0,0,8,'Draenei Tomb Guardian - Summon Terokkar - Bone Wastes - Draenei Soul',-2968.998,4437.106,-46.10773,3.693409), -- 01:05:32.000
(2228505,2,10,21424,300000,4,0,0,0,0,0,0,8,'Draenei Tomb Guardian - Summon Terokkar - Bone Wastes - Draenei Soul',-2981.394,4394.47,-47.99239,5.650124), -- 01:05:32.000
(2228505,2,10,21424,300000,5,0,0,0,0,0,0,8,'Draenei Tomb Guardian - Summon Terokkar - Bone Wastes - Draenei Soul',-2965.315,4359.161,-47.99607,3.442147), -- 01:05:32.000
(2228505,18,10,21636,300000,1,0,0,0,0,0,0,8,'Draenei Tomb Guardian - Summon Vengeful Draenei',-2972.592,4404.576,-49.14593,4.747295), -- 01:05:48.000 Hostile spawns repeat here
(2228505,18,10,21636,300000,2,0,0,0,0,0,0,8,'Draenei Tomb Guardian - Summon Vengeful Draenei',-2967.546,4406.551,-49.14558,4.642576), -- 01:05:48.000
(2228505,18,10,21636,300000,3,0,0,0,0,0,0,8,'Draenei Tomb Guardian - Summon Vengeful Draenei',-2976.732,4405.919,-49.14592,4.694936), -- 01:05:48.000
(2228505,20,15,36945,0,0,0,0,0,0,21489,5,7,'Draenei Tomb Guardian -> Bone Wastes - Event Trigger B - Cast Cosmetic - Purple Glow - Bone Wastes',0,0,0,0),

(2228506,0,1,173,0,0,0,0,0,0,0,0,0,'Draenei Tomb Guardian - STATE_WORK',0,0,0,0),
(2228506,20,1,0,0,0,0,0,0,0,0,0,0,'Draenei Tomb Guardian - STATE_WORK remove',0,0,0,0),
(2228506,4,10,21424,300000,6,0,0,0,0,0,0,8,'Draenei Tomb Guardian - Summon Terokkar - Bone Wastes - Draenei Soul',-2988.432,4394.389,-36.38369,6.078979), -- 01:05:58.000
(2228506,4,10,21424,300000,7,0,0,0,0,0,0,8,'Draenei Tomb Guardian - Summon Terokkar - Bone Wastes - Draenei Soul',-2989.655,4412.116,-42.59451,0.2398244), -- 01:05:58.000
(2228506,4,10,21424,300000,8,0,0,0,0,0,0,8,'Draenei Tomb Guardian - Summon Terokkar - Bone Wastes - Draenei Soul',-2956.231,4412.762,-42.56924,3.061273), -- 01:05:58.000
(2228506,4,10,21424,300000,9,0,0,0,0,0,0,8,'Draenei Tomb Guardian - Summon Terokkar - Bone Wastes - Draenei Soul',-2966.012,4384.853,-48.08511,4.642327), -- 01:05:58.000
(2228506,4,10,21424,300000,10,0,0,0,0,0,0,8,'Draenei Tomb Guardian - Summon Terokkar - Bone Wastes - Draenei Soul',-2955.971,4395.022,-39.50554,3.33007), -- 01:05:58.000
(2228506,4,10,21424,300000,17,0,0,0,0,0,0,8,'Draenei Tomb Guardian - Summon Terokkar - Bone Wastes - Draenei Soul',-2978.904,4448.577,-46.11875,5.512737), -- 01:05:58.000 (This mob only spawns here???)
(2228506,20,15,36945,0,0,0,0,0,0,21489,5,7,'Draenei Tomb Guardian -> Bone Wastes - Event Trigger B - Cast Cosmetic - Purple Glow - Bone Wastes',0,0,0,0),

(2228507,0,1,173,0,0,0,0,0,0,0,0,0,'Draenei Tomb Guardian - STATE_WORK',0,0,0,0),
(2228507,20,1,0,0,0,0,0,0,0,0,0,0,'Draenei Tomb Guardian - STATE_WORK remove',0,0,0,0),
(2228507,3,10,21424,300000,11,0,0,0,0,0,0,8,'Draenei Tomb Guardian - Summon Terokkar - Bone Wastes - Draenei Soul',-2981.904,4416.856,-46.02745,6.147188), -- 01:06:23.000
(2228507,3,10,21424,300000,12,0,0,0,0,0,0,8,'Draenei Tomb Guardian - Summon Terokkar - Bone Wastes - Draenei Soul',-2988.385,4376.873,-39.48909,0.3478556), -- 01:06:23.000
(2228507,3,10,21424,300000,13,0,0,0,0,0,0,8,'Draenei Tomb Guardian - Summon Terokkar - Bone Wastes - Draenei Soul',-2955.221,4359.759,-39.56786,3.209827), -- 01:06:23.000
(2228507,3,10,21424,300000,14,0,0,0,0,0,0,8,'Draenei Tomb Guardian - Summon Terokkar - Bone Wastes - Draenei Soul',-2989.158,4394.5,-42.68121,0.1677267), -- 01:06:23.000
(2228507,3,10,21424,300000,15,0,0,0,0,0,0,8,'Draenei Tomb Guardian - Summon Terokkar - Bone Wastes - Draenei Soul',-2988.418,4358.942,-42.72601,0.005430005), -- 01:06:23.000
(2228507,3,10,21424,300000,16,0,0,0,0,0,0,8,'Draenei Tomb Guardian - Summon Terokkar - Bone Wastes - Draenei Soul',-2979.003,4359.749,-48.0452,5.871648), -- 01:06:23.000
(2228507,20,15,36945,0,0,0,0,0,0,21489,5,7,'Draenei Tomb Guardian -> Bone Wastes - Event Trigger B - Cast Cosmetic - Purple Glow - Bone Wastes',0,0,0,0);

-- Terokkar - Bone Wastes - Draenei Soul
DELETE FROM `dbscripts_on_creature_movement` WHERE `id` IN(2142401);
INSERT INTO `dbscripts_on_creature_movement` (`id`,`delay`,`command`,`datalong`,`datalong2`,`datalong3`,`dataint`,`dataint2`,`dataint3`,`dataint4`,`buddy_entry`,`search_radius`,`data_flags`,`comments`,`x`,`y`,`z`,`o`) VALUES
(2142401,0,45,0,10055,0,0,0,0,0,0,0,0,'Terokkar - Bone Wastes - Draenei Soul - Start Relay Script',0,0,0,0),
(2142401,2,18,0,0,0,0,0,0,0,0,0,0,'Terokkar - Bone Wastes - Draenei Soul - Despawn Self',0,0,0,0);

-- Vengeful Harbinger
DELETE FROM `dbscripts_on_creature_movement` WHERE `id`=2163801;
INSERT INTO `dbscripts_on_creature_movement` (`id`,`delay`,`command`,`datalong`,`datalong2`,`datalong3`,`dataint`,`dataint2`,`dataint3`,`dataint4`,`buddy_entry`,`search_radius`,`data_flags`,`comments`,`x`,`y`,`z`,`o`) VALUES
(2163801,0,15,35426,0,0,0,0,0,0,0,0,0,'Vengeful Harbinger - Cast Arcane Explosion Visual',0,0,0,0),
(2163801,0,15,37071,0,0,0,0,0,0,21451,75195,19,'Bone Wastes - Event Trigger A - Cast Cosmetic - Chain Lightning (single)',0,0,0,0),
(2163801,0,15,37071,0,0,0,0,0,0,21451,75196,19,'Bone Wastes - Event Trigger A - Cast Cosmetic - Chain Lightning (single)',0,0,0,0),
(2163801,0,15,37071,0,0,0,0,0,0,21451,75197,19,'Bone Wastes - Event Trigger A - Cast Cosmetic - Chain Lightning (single)',0,0,0,0),
(2163801,0,15,37071,0,0,0,0,0,0,21451,75198,19,'Bone Wastes - Event Trigger A - Cast Cosmetic - Chain Lightning (single)',0,0,0,0),
(2163801,0,15,37071,0,0,0,0,0,0,21451,75199,19,'Bone Wastes - Event Trigger A - Cast Cosmetic - Chain Lightning (single)',0,0,0,0),
(2163801,0,15,37071,0,0,0,0,0,0,21451,75200,19,'Bone Wastes - Event Trigger A - Cast Cosmetic - Chain Lightning (single)',0,0,0,0),

(2163801,0,15,37071,0,0,0,0,0,0,21489,75394,19,'Bone Wastes - Event Trigger B - Cast Cosmetic - Chain Lightning (single)',0,0,0,0),
(2163801,0,15,37071,0,0,0,0,0,0,21489,75395,19,'Bone Wastes - Event Trigger B - Cast Cosmetic - Chain Lightning (single)',0,0,0,0),
(2163801,0,15,37071,0,0,0,0,0,0,21489,75396,19,'Bone Wastes - Event Trigger B - Cast Cosmetic - Chain Lightning (single)',0,0,0,0),
(2163801,0,15,37071,0,0,0,0,0,0,21489,75397,19,'Bone Wastes - Event Trigger B - Cast Cosmetic - Chain Lightning (single)',0,0,0,0),
(2163801,0,15,37071,0,0,0,0,0,0,21489,75398,19,'Bone Wastes - Event Trigger B - Cast Cosmetic - Chain Lightning (single)',0,0,0,0),
(2163801,0,15,37071,0,0,0,0,0,0,21489,75399,19,'Bone Wastes - Event Trigger B - Cast Cosmetic - Chain Lightning (single)',0,0,0,0),

(2163801,0,18,2000,0,0,0,0,0,0,0,0,0,'Vengeful Harbinger - Despawn after 2000ms',0,0,0,0),

(2163801,0,45,10064,0,0,0,0,0,0,21489,75397,23,'Vengeful Harbinger - Start Relay Scripts for Bone Wastes - Event Trigger B',0,0,0,0),
(2163801,0,45,10064,0,0,0,0,0,0,21489,75396,23,'Vengeful Harbinger - Start Relay Scripts for Bone Wastes - Event Trigger B',0,0,0,0),

(2163801,0,45,10065,0,0,0,0,0,0,21489,75394,23,'Vengeful Harbinger - Start Relay Scripts for Bone Wastes - Event Trigger B',0,0,0,0),
(2163801,0,45,10065,0,0,0,0,0,0,21489,75399,23,'Vengeful Harbinger - Start Relay Scripts for Bone Wastes - Event Trigger B',0,0,0,0),

(2163801,0,45,10066,0,0,0,0,0,0,21489,75398,23,'Vengeful Harbinger - Start Relay Scripts for Bone Wastes - Event Trigger B',0,0,0,0),
(2163801,0,45,10066,0,0,0,0,0,0,21489,75395,23,'Vengeful Harbinger - Start Relay Scripts for Bone Wastes - Event Trigger B',0,0,0,0),

(2163801,0,45,10067,0,0,0,0,0,0,0,0,0,'Vengeful Harbinger - Start Relay Script',0,0,0,0);

INSERT INTO `dbscripts_on_relay` (`id`,`delay`,`command`,`datalong`,`datalong2`,`datalong3`,`dataint`,`dataint2`,`dataint3`,`dataint4`,`buddy_entry`,`search_radius`,`data_flags`,`comments`,`x`,`y`,`z`,`o`) VALUES
(10062,2,28,7,0,0,0,0,0,0,0,0,0,'Draenei Tomb Guardian - Set Stand State Dead',0,0,0,0),
(10062,2,18,2000,0,0,0,0,0,0,0,0,0,'Draenei Tomb Guardian - Despawn after 2000ms',0,0,0,0),

(10063,0,28,7,0,0,0,0,0,0,0,0,0,'Draenei Tomb Guardian - Set Stand State Dead',0,0,0,0),
(10063,0,22,35,0,0,0,0,0,0,0,0,0,'Vengeful Harbinger - Set Faction 35',0,0,0,0),
(10063,0,4,46,33587456,0,0,0,0,0,0,0,0,'Vengeful Harbinger - Set UnitFlags 33587456',0,0,0,0),
(10063,1,22,14,0,0,0,0,0,0,0,0,0,'Vengeful Harbinger - Set Faction 14',0,0,0,0),
(10063,2,35,1000,0,0,0,0,0,0,22285,80,1,'Vengeful Harbinger - Send AI Event 1000 to Draenei Tomb Guardian',0,0,0,0),

(10064,3,15,36927,1,0,0,0,0,0,21443,75162,17,'Bone Wastes - Event Trigger B - Cast Bone Wastes - Tomb Event Purple Beam',0,0,0,0), -- 75397 and 75396 cast on 75162
(10065,3,15,36927,1,0,0,0,0,0,21443,75161,17,'Bone Wastes - Event Trigger B - Cast Bone Wastes - Tomb Event Purple Beam',0,0,0,0), -- 75394 and 75399 cast on 75161
(10066,3,15,36927,1,0,0,0,0,0,21443,75160,17,'Bone Wastes - Event Trigger B - Cast Bone Wastes - Tomb Event Purple Beam',0,0,0,0), -- 75398 and 75395 cast on 75160

(10067,0,18,70000,0,0,0,0,0,0,21489,75394,23,'Bone Wastes - Event Trigger B - Despawn after 70s',0,0,0,0),
(10067,0,18,70000,0,0,0,0,0,0,21489,75395,23,'Bone Wastes - Event Trigger B - Despawn after 70s',0,0,0,0),
(10067,0,18,70000,0,0,0,0,0,0,21489,75396,23,'Bone Wastes - Event Trigger B - Despawn after 70s',0,0,0,0),
(10067,0,18,70000,0,0,0,0,0,0,21489,75397,23,'Bone Wastes - Event Trigger B - Despawn after 70s',0,0,0,0),
(10067,0,18,70000,0,0,0,0,0,0,21489,75398,23,'Bone Wastes - Event Trigger B - Despawn after 70s',0,0,0,0),
(10067,0,18,70000,0,0,0,0,0,0,21489,75399,23,'Bone Wastes - Event Trigger B - Despawn after 70s',0,0,0,0),
(10067,0,18,70000,0,0,0,0,0,0,21632,100,7,'Nether Cloud - Despawn after 70s',0,0,0,0),

(10067,5,15,36945,0,0,0,0,0,0,21443,75162,23,'Bone Wastes - Orb Waypoint 01 - Cast Cosmetic - Purple Glow - Bone Wastes',0,0,0,0),
(10067,5,15,36945,0,0,0,0,0,0,21443,75161,23,'Bone Wastes - Orb Waypoint 01 - Cast Cosmetic - Purple Glow - Bone Wastes',0,0,0,0),
(10067,5,15,36945,0,0,0,0,0,0,21443,75160,23,'Bone Wastes - Orb Waypoint 01 - Cast Cosmetic - Purple Glow - Bone Wastes',0,0,0,0),

(10067,16,9,56059,56,0,0,0,0,0,0,0,0,'Respawn Hologram Floorpiece',0,0,0,0),
(10067,25,9,56060,46,0,0,0,0,0,0,0,0,'Respawn Draenei Ascendant',0,0,0,0),

(10067,26,20,2,1,0,0,0,0,0,21443,75162,23,'Bone Wastes - Orb Waypoint 01 - Set PathId 1',0,0,0,0),
(10067,26,20,2,2,0,0,0,0,0,21443,75161,23,'Bone Wastes - Orb Waypoint 01 - Set PathId 2',0,0,0,0),
(10067,26,20,2,3,0,0,0,0,0,21443,75160,23,'Bone Wastes - Orb Waypoint 01 - Set PathId 3',0,0,0,0),
(10067,26,18,44000,0,0,0,0,0,0,21443,75162,23,'Bone Wastes - Orb Waypoint 01 - Despawn after 44s',0,0,0,0),
(10067,26,18,44000,0,0,0,0,0,0,21443,75161,23,'Bone Wastes - Orb Waypoint 01 - Despawn after 44s',0,0,0,0),
(10067,26,18,44000,0,0,0,0,0,0,21443,75160,23,'Bone Wastes - Orb Waypoint 01 - Despawn after 44s',0,0,0,0),

(10067,26,20,2,1,0,0,0,0,0,21489,75394,23,'Bone Wastes - Event Trigger B - Set PathId 1',0,0,0,0),
(10067,26,20,2,2,0,0,0,0,0,21489,75395,23,'Bone Wastes - Event Trigger B - Set PathId 2',0,0,0,0),
(10067,26,20,2,3,0,0,0,0,0,21489,75396,23,'Bone Wastes - Event Trigger B - Set PathId 3',0,0,0,0),
(10067,26,20,2,4,0,0,0,0,0,21489,75397,23,'Bone Wastes - Event Trigger B - Set PathId 4',0,0,0,0),
(10067,26,20,2,5,0,0,0,0,0,21489,75398,23,'Bone Wastes - Event Trigger B - Set PathId 5',0,0,0,0),
(10067,26,20,2,6,0,0,0,0,0,21489,75399,23,'Bone Wastes - Event Trigger B - Set PathId 6',0,0,0,0),

(10068,0,18,0,0,0,0,0,0,0,21443,75162,23,'Bone Wastes - Orb Waypoint 01 - Despawn',0,0,0,0),
(10068,0,18,0,0,0,0,0,0,0,21443,75161,23,'Bone Wastes - Orb Waypoint 01 - Despawn',0,0,0,0),
(10068,0,18,0,0,0,0,0,0,0,21443,75160,23,'Bone Wastes - Orb Waypoint 01 - Despawn',0,0,0,0),
(10068,0,18,0,0,0,0,0,0,0,21489,75394,23,'Bone Wastes - Event Trigger B - Despawn',0,0,0,0),
(10068,0,18,0,0,0,0,0,0,0,21489,75395,23,'Bone Wastes - Event Trigger B - Despawn',0,0,0,0),
(10068,0,18,0,0,0,0,0,0,0,21489,75396,23,'Bone Wastes - Event Trigger B - Despawn',0,0,0,0),
(10068,0,18,0,0,0,0,0,0,0,21489,75397,23,'Bone Wastes - Event Trigger B - Despawn',0,0,0,0),
(10068,0,18,0,0,0,0,0,0,0,21489,75398,23,'Bone Wastes - Event Trigger B - Despawn',0,0,0,0),
(10068,0,18,0,0,0,0,0,0,0,21489,75399,23,'Bone Wastes - Event Trigger B - Despawn',0,0,0,0),
(10068,0,18,0,0,0,0,0,0,0,21632,100,7,'Nether Cloud - Despawn',0,0,0,0),

(10070,0,15,37071,0,0,0,0,0,0,21451,75197,19,'Bone Wastes - Event Trigger A - Cast Cosmetic - Chain Lightning (single)',0,0,0,0),
(10071,0,15,35426,0,0,0,0,0,0,0,0,0,'Terokkar - Bone Wastes - Draenei Soul - Cast Arcane Explosion Visual',0,0,0,0);

INSERT INTO dbscript_random_templates (id,type,target_id,chance) VALUES
(10055,1,10070,0),
(10055,1,10071,0);

DELETE FROM `dbscripts_on_spell` WHERE `id` IN(37226);
INSERT INTO `dbscripts_on_spell` (`id`,`delay`,`command`,`datalong`,`datalong2`,`datalong3`,`dataint`,`dataint2`,`dataint3`,`dataint4`,`buddy_entry`,`search_radius`,`data_flags`,`comments`,`x`,`y`,`z`,`o`) VALUES
(37226,2,35,1000,0,0,0,0,0,0,0,0,6,'Target Sends AI Event 1000 to Self',0,0,0,0),
(37226,2,15,36550,0,0,0,0,0,0,0,0,6,'Target Casts Floating Drowned on Self',0,0,0,0);

-- ----------------------------------------
-- Waypoints
-- ----------------------------------------
-- Draenei Tomb Guardian
DELETE FROM `creature_movement_template` WHERE `entry`=22285;
INSERT INTO `creature_movement_template` (`entry`,`point`,`position_x`,`position_y`,`position_z`,`waittime`,`script_id`,`orientation`) VALUES
(22285,1,-2965.227,4341.134,-49.79761,20000,2228502,0.1396263), -- First pillar 01:04:16.000
(22285,2,-2966.47,4340.647,-49.79761,0,0,0),
(22285,3,-2967.955,4328.487,-49.79761,20000,2228503,5.113815), -- Second Pillar 01:04:41.000
(22285,4,-2972.031,4334.272,-49.79761,0,0,0),
(22285,5,-2978.416,4340.257,-49.79761,20000,2228504,2.478368), -- Third pillar 01:05:05.000
(22285,6,-2974.068,4336.971,-49.79761,0,0,0),
(22285,7,-2973.743,4328.831,-49.79761,20000,2228505,4.45059), -- Fourth pillar 01:05:30.000
(22285,8,-2971.669,4333.015,-49.79761,0,0,0),
(22285,9,-2963.102,4332.901,-49.79761,20000,2228506,5.77704), -- Fifth pillar 01:05:54.000
(22285,10,-2979.664,4332.404,-49.53042,20000,2228507,3.612832), -- Sixth pillar 01:06:20.000
(22285,11,-2971.188,4340.272,-49.79761,0,0,0),
(22285,12,-2971.315,4350.658,-49.22775,1000,2228501,100); -- In front of the altar (waiting for harbinger to be killed)

-- Vengeful Harbinger
DELETE FROM `creature_movement_template` WHERE `entry`=21638;
INSERT INTO `creature_movement_template` (`entry`,`pathId`,`point`,`position_x`,`position_y`,`position_z`,`waittime`,`script_id`,`orientation`) VALUES
(21638,1,1,-2978.154,4377.814,-49.22736,0,0,0),
(21638,1,2,-2972.416,4358.01,-49.22758,1000,3,100),

(21638,2,1,-2972.039,4373.925,-36.83775,0,0,100),
(21638,2,2,-2971.791,4363.654,-35.53216,0,0,100),
(21638,2,3,-2971.633,4350.606,-35.89322,0,0,100),
(21638,2,4,-2971.261,4336.65,-42.80984,1000,2163801,100);

-- Vengeful Draenei
DELETE FROM `creature_movement_template` WHERE `entry`=21636;
INSERT INTO `creature_movement_template` (`entry`,`pathId`,`point`,`position_x`,`position_y`,`position_z`,`waittime`,`script_id`,`orientation`) VALUES
(21636,1,1,-2972.355,4395.883,-49.22886,0,0,0),
(21636,1,2,-2968.271,4380.06,-49.22689,0,0,0),
(21636,1,3,-2970.967,4359.357,-49.22752,0,0,0),
(21636,1,4,-2971.29,4351.867,-49.2277,1000,3,100);

INSERT INTO `creature_movement_template` (`entry`,`pathId`,`point`,`position_x`,`position_y`,`position_z`,`waittime`,`script_id`,`orientation`) VALUES
(21636,2,1,-2969.966,4385.94,-49.22723,0,0,0),
(21636,2,2,-2966.443,4377.648,-49.22685,0,0,0),
(21636,2,3,-2969.115,4357.172,-49.22738,0,0,0),
(21636,2,4,-2967.098,4348.261,-48.73212,0,0,0),
(21636,2,5,-2970.833,4351.79,-49.2277,1000,3,100);

INSERT INTO `creature_movement_template` (`entry`,`pathId`,`point`,`position_x`,`position_y`,`position_z`,`waittime`,`script_id`,`orientation`) VALUES
(21636,3,1,-2975.802,4396.314,-49.22834,0,0,0),
(21636,3,2,-2977.751,4378.076,-49.22734,0,0,0),
(21636,3,3,-2974.622,4363.111,-49.22752,0,0,0),
(21636,3,4,-2973.463,4341.888,-49.79761,0,0,0),
(21636,3,5,-2972.499,4351.793,-49.22771,1000,3,100);

INSERT INTO `creature_movement_template` (`entry`,`pathId`,`point`,`position_x`,`position_y`,`position_z`,`waittime`,`script_id`,`orientation`) VALUES
(21636,4,1,-2973.546,4387.061,-49.22817,0,0,0),
(21636,4,2,-2977.421,4375.292,-49.22765,0,0,0),
(21636,4,3,-2973.87,4357.59,-49.22754,0,0,0),
(21636,4,4,-2972.823,4343.556,-49.797611,1000,3,100); -- Guessed waypoint, had no data for this last one

INSERT INTO `creature_movement_template` (`entry`,`pathId`,`point`,`position_x`,`position_y`,`position_z`,`waittime`,`script_id`,`orientation`) VALUES
(21636,5,1,-2963.076,4386.203,-49.22767,0,0,0),
(21636,5,2,-2963.653,4370.264,-49.2277,0,0,0),
(21636,5,3,-2970.504,4343.694,-49.79761,1000,3,100);

INSERT INTO `creature_movement_template` (`entry`,`pathId`,`point`,`position_x`,`position_y`,`position_z`,`waittime`,`script_id`,`orientation`) VALUES
(21636,6,1,-2968.945,4379.907,-49.22683,0,0,0),
(21636,6,2,-2970.432,4343.306,-49.79761,1000,3,100);

-- Terokkar - Bone Wastes - Draenei Soul
DELETE FROM `creature_movement_template` WHERE `entry`=21424;
INSERT INTO `creature_movement_template` (`entry`,`pathId`,`point`,`position_x`,`position_y`,`position_z`,`waittime`,`script_id`,`orientation`) VALUES
(21424,1,1,-2959.367,4412.021,-36.66248,0,0,100),
(21424,1,2,-2963.686,4409.228,-39.66246,0,0,100),
(21424,1,3,-2966.57,4404.422,-40.99581,0,0,100),
(21424,1,4,-2969.118,4398.831,-41.96803,0,0,100),
(21424,1,5,-2971.511,4395.908,-42.57914,0,0,100),
(21424,1,6,-2972.396,4390.416,-43.24581,0,0,100),
(21424,1,7,-2971.152,4385.233,-43.80136,0,0,100),
(21424,1,8,-2968.255,4380.655,-44.52358,0,0,100),
(21424,1,9,-2966.721,4375.563,-44.27359,0,0,100),
(21424,1,10,-2966.682,4370.036,-43.7458,0,0,100),
(21424,1,11,-2964.272,4362.356,-44.05136,0,0,100),
(21424,1,12,-2960.74,4357.936,-41.88469,0,0,100),
(21424,1,13,-2960.207,4352.702,-40.85692,0,0,100),
(21424,1,14,-2964.788,4347.388,-39.69026,0,0,100),
(21424,1,15,-2968.077,4341.114,-38.02358,0,0,100),
(21424,1,16,-2971.112,4335.839,-31.99579,5000,2142401,100);

INSERT INTO `creature_movement_template` (`entry`,`pathId`,`point`,`position_x`,`position_y`,`position_z`,`waittime`,`script_id`,`orientation`) VALUES
(21424,2,1,-2973.63,4366.385,-46.83805,0,0,100),
(21424,2,2,-2974.167,4362.911,-45.50471,0,0,100),
(21424,2,3,-2975.162,4359.93,-44.72693,0,0,100),
(21424,2,4,-2977.42,4355.523,-44.25471,0,0,100),
(21424,2,5,-2981.318,4351.616,-42.72693,0,0,100),
(21424,2,6,-2984.496,4347.17,-41.6436,0,0,100),
(21424,2,7,-2987.808,4339.986,-41.56548,0,0,100),
(21424,2,8,-2987.127,4332.255,-41.25993,0,0,100),
(21424,2,9,-2984.309,4325.054,-41.06549,0,0,100),
(21424,2,10,-2975.705,4319.812,-40.17658,0,0,100),
(21424,2,11,-2971.293,4323.173,-37.67651,0,0,100),
(21424,2,12,-2971.188,4329.461,-32.73209,0,0,100),
(21424,2,13,-2971.281,4335.895,-31.37094,5000,2142401,100);

INSERT INTO `creature_movement_template` (`entry`,`pathId`,`point`,`position_x`,`position_y`,`position_z`,`waittime`,`script_id`,`orientation`) VALUES
(21424,3,1,-2972.271,4434.911,-44.99057,0,0,100),
(21424,3,2,-2973.245,4430.013,-44.9072,0,0,100),
(21424,3,3,-2973.327,4424.74,-45.0461,0,0,100),
(21424,3,4,-2971.325,4419.56,-43.90723,0,0,100),
(21424,3,5,-2968.878,4416.733,-43.37944,0,0,100),
(21424,3,6,-2966.157,4411.349,-42.87945,0,0,100),
(21424,3,7,-2965.873,4404.043,-41.76835,0,0,100),
(21424,3,8,-2967.689,4399.256,-40.62949,0,0,100),
(21424,3,9,-2969.986,4395.051,-39.49058,0,0,100),
(21424,3,10,-2971.857,4390.338,-38.62944,0,0,100),
(21424,3,11,-2972.826,4381.457,-37.74055,0,0,100),
(21424,3,12,-2972.232,4371.735,-37.26834,0,0,100),
(21424,3,13,-2971.585,4365.307,-36.4628,0,0,100),
(21424,3,14,-2969.923,4358.511,-35.99056,0,0,100),
(21424,3,15,-2969.464,4352.329,-35.51833,0,0,100),
(21424,3,16,-2970.168,4346.855,-34.685,0,0,100),
(21424,3,17,-2970.685,4341.378,-34.01834,0,0,100),
(21424,3,18,-2971.518,4335.702,-31.93491,5000,2142401,100);

INSERT INTO `creature_movement_template` (`entry`,`pathId`,`point`,`position_x`,`position_y`,`position_z`,`waittime`,`script_id`,`orientation`) VALUES
(21424,4,1,-2978.714,4392.78,-46.58903,0,0,100),
(21424,4,2,-2974.888,4390.044,-45.64459,0,0,100),
(21424,4,3,-2971.638,4385.432,-44.17213,0,0,100),
(21424,4,4,-2970.543,4380.776,-43.53275,0,0,100),
(21424,4,5,-2969.269,4375.772,-43.56012,0,0,100),
(21424,4,6,-2967.33,4371.686,-42.67126,0,0,100),
(21424,4,7,-2966.556,4366.783,-42.03239,0,0,100),
(21424,4,8,-2969.491,4362.322,-41.0879,0,0,100),
(21424,4,9,-2972.14,4359.384,-41.11571,0,0,100),
(21424,4,10,-2977.228,4353.345,-41.22681,0,0,100),
(21424,4,11,-2981.686,4349.625,-37.1157,0,0,100),
(21424,4,12,-2985.759,4343.397,-35.03234,0,0,100),
(21424,4,13,-2987.266,4336.855,-33.64347,0,0,100),
(21424,4,14,-2985.957,4328.962,-33.58779,0,0,100),
(21424,4,15,-2982.055,4323.67,-33.19901,0,0,100),
(21424,4,16,-2978.738,4321.225,-33.28235,0,0,100),
(21424,4,17,-2974.794,4323.354,-33.28235,0,0,100),
(21424,4,18,-2970.475,4328.129,-33.28235,0,0,100),
(21424,4,19,-2971.199,4336.224,-31.03231,5000,2142401,100);

INSERT INTO `creature_movement_template` (`entry`,`pathId`,`point`,`position_x`,`position_y`,`position_z`,`waittime`,`script_id`,`orientation`) VALUES
(21424,5,1,-2968.564,4358.07,-46.42194,0,0,100),
(21424,5,2,-2972.783,4357.249,-44.36639,0,0,100),
(21424,5,3,-2974.648,4353.081,-43.6164,0,0,100),
(21424,5,4,-2976.107,4347.854,-41.45433,0,0,100),
(21424,5,5,-2975.122,4342.182,-38.81544,0,0,100),
(21424,5,6,-2971.165,4335.839,-33.20434,5000,2142401,100);

INSERT INTO `creature_movement_template` (`entry`,`pathId`,`point`,`position_x`,`position_y`,`position_z`,`waittime`,`script_id`,`orientation`) VALUES
(21424,6,1,-2983.758,4393.426,-35.92256,0,0,100),
(21424,6,2,-2980.446,4390.156,-36.97782,0,0,100),
(21424,6,3,-2977.294,4386.019,-38.00554,0,0,100),
(21424,6,4,-2970.188,4382.083,-39.78294,0,0,100),
(21424,6,5,-2967.074,4383.165,-40.58847,0,0,100),
(21424,6,6,-2964.443,4387.127,-40.61627,0,0,100),
(21424,6,7,-2965.061,4393.021,-40.17182,0,0,100),
(21424,6,8,-2967.911,4400.48,-40.58847,0,0,100),
(21424,6,9,-2973.951,4399.147,-42.39405,0,0,100),
(21424,6,10,-2977.027,4394.396,-45.08849,0,0,100),
(21424,6,11,-2979.912,4385.748,-46.11626,0,0,100),
(21424,6,12,-2977.38,4381.207,-46.72738,0,0,100),
(21424,6,13,-2975.742,4375.417,-46.53249,0,0,100),
(21424,6,14,-2978.079,4369.26,-46.61583,0,0,100),
(21424,6,15,-2979.14,4364.165,-46.08805,0,0,100),
(21424,6,16,-2976.788,4358.581,-45.83805,0,0,100),
(21424,6,17,-2971.769,4355.512,-44.47694,0,0,100),
(21424,6,18,-2967.393,4351.842,-41.06026,0,0,100),
(21424,6,19,-2965.421,4346.896,-39.28766,0,0,100),
(21424,6,20,-2966.485,4342.174,-37.25988,0,0,100),
(21424,6,21,-2971.037,4335.816,-33.67654,5000,2142401,100);

INSERT INTO `creature_movement_template` (`entry`,`pathId`,`point`,`position_x`,`position_y`,`position_z`,`waittime`,`script_id`,`orientation`) VALUES
(21424,7,1,-2986.91,4413.1,-41.43579,0,0,100),
(21424,7,2,-2981.986,4414.799,-37.68581,0,0,100),
(21424,7,3,-2976.527,4415.238,-37.57468,0,0,100),
(21424,7,4,-2973.062,4411.878,-40.4358,0,0,100),
(21424,7,5,-2972.047,4407.824,-42.65802,0,0,100),
(21424,7,6,-2974.684,4405.279,-42.76912,0,0,100),
(21424,7,7,-2977.552,4402.102,-42.85246,0,0,100),
(21424,7,8,-2980.243,4393.798,-44.32468,0,0,100),
(21424,7,9,-2978.795,4388.136,-44.01913,0,0,100),
(21424,7,10,-2976.475,4381.999,-43.65801,0,0,100),
(21424,7,11,-2978.542,4374.336,-44.908,0,0,100),
(21424,7,12,-2979.939,4368.577,-44.10245,0,0,100),
(21424,7,13,-2980.572,4362.417,-42.18578,0,0,100),
(21424,7,14,-2981.532,4355.31,-44.26913,0,0,100),
(21424,7,15,-2984.463,4348.214,-44.15802,0,0,100),
(21424,7,16,-2988.115,4342.827,-44.2969,0,0,100),
(21424,7,17,-2987.778,4337.106,-43.65802,0,0,100),
(21424,7,18,-2984.142,4335.532,-41.4358,0,0,100),
(21424,7,19,-2977.908,4335.035,-38.85245,0,0,100),
(21424,7,20,-2971.173,4335.753,-32.908,5000,2142401,100);

INSERT INTO `creature_movement_template` (`entry`,`pathId`,`point`,`position_x`,`position_y`,`position_z`,`waittime`,`script_id`,`orientation`) VALUES
(21424,8,1,-2958.493,4412.526,-41.88007,0,0,100),
(21424,8,2,-2963.045,4409.771,-42.65785,0,0,100),
(21424,8,3,-2968.605,4404.775,-41.38007,0,0,100),
(21424,8,4,-2975.121,4399.356,-38.8523,0,0,100),
(21424,8,5,-2981.673,4393.157,-35.07452,0,0,100),
(21424,8,6,-2982.511,4389.181,-33.18564,0,0,100),
(21424,8,7,-2982.945,4380.522,-33.60228,0,0,100),
(21424,8,8,-2979.229,4377.24,-34.21341,0,0,100),
(21424,8,9,-2971.004,4376.101,-36.51895,0,0,100),
(21424,8,10,-2965.259,4374.812,-34.35228,0,0,100),
(21424,8,11,-2963.027,4371.747,-33.18563,0,0,100),
(21424,8,12,-2962.311,4363.65,-34.04672,0,0,100),
(21424,8,13,-2963.318,4355.552,-38.07453,0,0,100),
(21424,8,14,-2965.274,4350.454,-39.4634,0,0,100),
(21424,8,15,-2968.725,4343.345,-37.04675,0,0,100),
(21424,8,16,-2971.171,4335.845,-31.10231,5000,2142401,100);

INSERT INTO `creature_movement_template` (`entry`,`pathId`,`point`,`position_x`,`position_y`,`position_z`,`waittime`,`script_id`,`orientation`) VALUES
(21424,9,1,-2967.111,4374.012,-46.22695,0,0,100),
(21424,9,2,-2967.145,4369.317,-45.67131,0,0,100),
(21424,9,3,-2967.022,4362.034,-45.94908,0,0,100),
(21424,9,4,-2962.325,4354.96,-45.9213,0,0,100),
(21424,9,5,-2956.866,4346.299,-44.78241,0,0,100),
(21424,9,6,-2954.582,4336.979,-43.28903,0,0,100),
(21424,9,7,-2956.388,4330.719,-41.34322,0,0,100),
(21424,9,8,-2961.695,4327.4,-39.09322,0,0,100),
(21424,9,9,-2964.806,4329.892,-37.25985,0,0,100),
(21424,9,10,-2971.18,4335.901,-31.09311,5000,2142401,100);

INSERT INTO `creature_movement_template` (`entry`,`pathId`,`point`,`position_x`,`position_y`,`position_z`,`waittime`,`script_id`,`orientation`) VALUES
(21424,10,1,-2962.503,4394.016,-38.31145,0,0,100),
(21424,10,2,-2965.064,4393.84,-38.36676,0,0,100),
(21424,10,3,-2970.928,4393.187,-38.17239,0,0,100),
(21424,10,4,-2974.632,4391.6,-37.5057,0,0,100),
(21424,10,5,-2976.414,4388.305,-37.64447,0,0,100),
(21424,10,6,-2978.137,4381.354,-38.03309,0,0,100),
(21424,10,7,-2978.949,4374.602,-38.89391,0,0,100),
(21424,10,8,-2978.86,4369.567,-39.14391,0,0,100),
(21424,10,9,-2977.217,4363.524,-40.25499,0,0,100),
(21424,10,10,-2973.419,4359.604,-39.17167,0,0,100),
(21424,10,11,-2968.488,4356.661,-38.72722,0,0,100),
(21424,10,12,-2964.638,4352.967,-38.33832,0,0,100),
(21424,10,13,-2959.404,4347.956,-37.28275,0,0,100),
(21424,10,14,-2956.542,4343.086,-35.83835,0,0,100),
(21424,10,15,-2955.566,4337.704,-32.9772,0,0,100),
(21424,10,16,-2956.174,4330.968,-34.06057,0,0,100),
(21424,10,17,-2961.153,4328.837,-35.89386,0,0,100),
(21424,10,18,-2964.674,4329.726,-35.78281,0,0,100),
(21424,10,19,-2967.503,4332.241,-33.58831,0,0,100),
(21424,10,20,-2971.332,4337.19,-30.14391,5000,2142401,100);

INSERT INTO `creature_movement_template` (`entry`,`pathId`,`point`,`position_x`,`position_y`,`position_z`,`waittime`,`script_id`,`orientation`) VALUES
(21424,11,1,-2978.45,4416.189,-44.15811,0,0,100),
(21424,11,2,-2974.653,4415.436,-42.57476,0,0,100),
(21424,11,3,-2972.194,4412.739,-42.71362,0,0,100),
(21424,11,4,-2967.227,4407.324,-41.88028,0,0,100),
(21424,11,5,-2965.115,4400.408,-43.13029,0,0,100),
(21424,11,6,-2965.924,4394.153,-42.01918,0,0,100),
(21424,11,7,-2970.303,4389.376,-38.93584,0,0,100),
(21424,11,8,-2976.258,4384.049,-35.18586,0,0,100),
(21424,11,9,-2978.654,4374.639,-32.99133,0,0,100),
(21424,11,10,-2982.48,4368.356,-33.71361,0,0,100),
(21424,11,11,-2981.354,4360.274,-36.3525,0,0,100),
(21424,11,12,-2971.745,4357.286,-36.88028,0,0,100),
(21424,11,13,-2967.119,4349.637,-39.49139,0,0,100),
(21424,11,14,-2967.052,4344.65,-39.74138,0,0,100),
(21424,11,15,-2968.179,4340.955,-38.51917,0,0,100),
(21424,11,16,-2971.17,4335.871,-32.32475,5000,2142401,100);

INSERT INTO `creature_movement_template` (`entry`,`pathId`,`point`,`position_x`,`position_y`,`position_z`,`waittime`,`script_id`,`orientation`) VALUES
(21424,12,1,-2982.75,4378.351,-38.22642,0,0,100),
(21424,12,2,-2979.617,4378.062,-39.47638,0,0,100),
(21424,12,3,-2973.747,4374.436,-39.53202,0,0,100),
(21424,12,4,-2970.946,4369.176,-37.36514,0,0,100),
(21424,12,5,-2967.825,4364.87,-35.89293,0,0,100),
(21424,12,6,-2962.204,4355.373,-39.05958,0,0,100),
(21424,12,7,-2958.595,4348.43,-41.94846,0,0,100),
(21424,12,8,-2955.958,4343.233,-43.33734,0,0,100),
(21424,12,9,-2955.918,4338.08,-43.75399,0,0,100),
(21424,12,10,-2958.605,4336.338,-43.59322,0,0,100),
(21424,12,11,-2962.948,4335.375,-40.23211,0,0,100),
(21424,12,12,-2967.378,4335.663,-35.64879,0,0,100),
(21424,12,13,-2971.028,4335.846,-31.09325,5000,2142401,100);

INSERT INTO `creature_movement_template` (`entry`,`pathId`,`point`,`position_x`,`position_y`,`position_z`,`waittime`,`script_id`,`orientation`) VALUES
(21424,13,1,-2960.752,4359.419,-40.03238,0,0,100),
(21424,13,2,-2970.5,4356.503,-43.19905,0,0,100),
(21424,13,3,-2973.604,4353.458,-44.11568,0,0,100),
(21424,13,4,-2974.704,4349.048,-43.33782,0,0,100),
(21424,13,5,-2974.269,4345.506,-41.31006,0,0,100),
(21424,13,6,-2973.378,4341.687,-38.11566,0,0,100),
(21424,13,7,-2971.032,4335.933,-32.58779,5000,2142401,100);

INSERT INTO `creature_movement_template` (`entry`,`pathId`,`point`,`position_x`,`position_y`,`position_z`,`waittime`,`script_id`,`orientation`) VALUES
(21424,14,1,-2983.968,4394.889,-42.33871,0,0,100),
(21424,14,2,-2977.944,4393.413,-43.75538,0,0,100),
(21424,14,3,-2971.517,4388.998,-44.61649,0,0,100),
(21424,14,4,-2967.175,4383.867,-44.33872,0,0,100),
(21424,14,5,-2964.426,4374.864,-45.03258,0,0,100),
(21424,14,6,-2961.154,4364.372,-44.19886,0,0,100),
(21424,14,7,-2958.638,4355.162,-43.13298,0,0,100),
(21424,14,8,-2955.742,4344.426,-42.07742,0,0,100),
(21424,14,9,-2954.821,4337.959,-42.57742,0,0,100),
(21424,14,10,-2957.509,4335.491,-41.52187,0,0,100),
(21424,14,11,-2962.906,4335.3,-38.07743,0,0,100),
(21424,14,12,-2967.029,4335.721,-35.77186,0,0,100),
(21424,14,13,-2971.163,4335.811,-32.29965,5000,2142401,100);

INSERT INTO `creature_movement_template` (`entry`,`pathId`,`point`,`position_x`,`position_y`,`position_z`,`waittime`,`script_id`,`orientation`) VALUES
(21424,15,1,-2982.579,4358.592,-43.17089,0,0,100),
(21424,15,2,-2976.609,4358.769,-44.89311,0,0,100),
(21424,15,3,-2969.329,4360.415,-45.6431,0,0,100),
(21424,15,4,-2964.554,4364.371,-45.50423,0,0,100),
(21424,15,5,-2964.04,4369.425,-44.47644,0,0,100),
(21424,15,6,-2966.608,4374.138,-41.94868,0,0,100),
(21424,15,7,-2972.02,4375.627,-40.14312,0,0,100),
(21424,15,8,-2976.222,4372.162,-40.58756,0,0,100),
(21424,15,9,-2977.121,4364.899,-40.22643,0,0,100),
(21424,15,10,-2973.522,4356.531,-38.97644,0,0,100),
(21424,15,11,-2971.324,4351.305,-37.92088,0,0,100),
(21424,15,12,-2970.867,4342.523,-37.42088,0,0,100),
(21424,15,13,-2971.106,4335.979,-33.75422,5000,2142401,100);

INSERT INTO `creature_movement_template` (`entry`,`pathId`,`point`,`position_x`,`position_y`,`position_z`,`waittime`,`script_id`,`orientation`) VALUES
(21424,16,1,-2976.345,4359.015,-47.31075,0,0,100),
(21424,16,2,-2971.284,4358.2,-46.0052,0,0,100),
(21424,16,3,-2969.163,4354.881,-46.72742,0,0,100),
(21424,16,4,-2968.415,4350.727,-46.50521,0,0,100),
(21424,16,5,-2968.897,4345.297,-45.67185,0,0,100),
(21424,16,6,-2969.648,4340.168,-42.44963,0,0,100),
(21424,16,7,-2970.995,4335.954,-31.92187,5000,2142401,100);

INSERT INTO `creature_movement_template` (`entry`,`pathId`,`point`,`position_x`,`position_y`,`position_z`,`waittime`,`script_id`,`orientation`) VALUES
(21424,17,1,-2975.923,4445.164,-44.96118,0,0,100),
(21424,17,2,-2972.925,4442.252,-44.37786,0,0,100),
(21424,17,3,-2971.135,4438.681,-43.76674,0,0,100),
(21424,17,4,-2972.497,4434.402,-43.3501,0,0,100),
(21424,17,5,-2973.193,4429.354,-43.76676,0,0,100),
(21424,17,6,-2973.421,4425.821,-43.8501,0,0,100),
(21424,17,7,-2977.35,4419.969,-42.79454,0,0,100),
(21424,17,8,-2978.861,4415.95,-41.62787,0,0,100),
(21424,17,9,-2979.336,4408.736,-40.57232,0,0,100),
(21424,17,10,-2977.757,4401.103,-40.15565,0,0,100),
(21424,17,11,-2974.67,4394.509,-40.37788,0,0,100),
(21424,17,12,-2969.735,4388.669,-38.54452,0,0,100),
(21424,17,13,-2965.51,4379.923,-38.57231,0,0,100),
(21424,17,14,-2965.031,4371.137,-39.4612,0,0,100),
(21424,17,15,-2966.446,4366.325,-40.98898,0,0,100),
(21424,17,16,-2965.112,4361.533,-43.10005,0,0,100),
(21424,17,17,-2961.606,4356.167,-44.40564,0,0,100),
(21424,17,18,-2960.841,4350.402,-43.15561,0,0,100),
(21424,17,19,-2965.037,4347.179,-41.29454,0,0,100),
(21424,17,20,-2967.874,4341.31,-40.48896,0,0,100),
(21424,17,21,-2971.269,4336.282,-31.51676,5000,2142401,100);

-- Bone Wastes - White Nether Orb
DELETE FROM `creature_movement_template` WHERE `entry`=21445;
INSERT INTO `creature_movement_template` (`entry`,`point`,`position_x`,`position_y`,`position_z`,`waittime`,`script_id`,`orientation`) VALUES
(21445,1,-2956.772,4336.21,-43.08211,0,0,100),
(21445,2,-2962.604,4337.235,-35.58628,0,0,100),
(21445,3,-2970.25,4336.105,-33.37884,6000,2144501,100), -- 
(21445,4,-2971.077,4335.903,-43.73795,0,0,100),
(21445,5,-2971.128,4335.867,-48.36709,0,0,100),
(21445,6,-2971.127,4335.868,-48.17161,5000,2144502,100),
(21445,7,-2971.127,4335.868,-48.17161,6000,0,4.729842),
(21445,8,-2971.127,4335.868,-48.17161,100000,2144503,1.58825);

-- Bone Wastes - Orb Waypoint 01
-- Movement is constant, they don't stop or start moving at any point during the event. 
UPDATE creature SET MovementType=2, spawndist=0 WHERE guid=75160 AND id=21443;
DELETE FROM `creature_movement` WHERE `id`=75160;
INSERT INTO `creature_movement` (`id`,`point`,`position_x`,`position_y`,`position_z`,`waittime`,`script_id`,`orientation`) VALUES
(75160,1,-2970.994,4338.005,-48.79761,0,0,0),
(75160,2,-2971.866,4340.714,-48.79761,0,0,0),
(75160,3,-2972.703,4338.782,-48.79761,0,0,0),
(75160,4,-2971.866,4340.714,-48.79761,0,0,0),
(75160,5,-2970.994,4338.005,-48.79761,0,0,0),
(75160,6,-2968.773,4341.27,-48.79761,0,0,0),
(75160,7,-2966.017,4337.788,-48.79761,0,0,0),
(75160,8,-2970.022,4336.94,-48.79761,0,0,0),
(75160,9,-2967.939,4331.497,-48.79761,0,0,0),
(75160,10,-2976.664,4333.633,-48.79761,0,0,0),
(75160,11,-2975.976,4333.739,-48.79761,0,0,0),
(75160,12,-2971.976,4336.219,-48.79761,0,0,0),
(75160,13,-2976.209,4335.932,-48.79761,0,0,0),
(75160,14,-2974.831,4340.487,-48.79761,0,0,0),
(75160,15,-2976.209,4335.932,-48.79761,0,0,0),
(75160,16,-2971.976,4336.219,-48.79761,0,0,0),
(75160,17,-2972.979,4329.922,-48.79761,0,0,0),
(75160,18,-2976.664,4333.633,-48.79761,0,0,0),
(75160,19,-2966.164,4335.198,-48.79761,0,0,0),
(75160,20,-2966.84,4335.1,-48.79761,0,0,0),
(75160,21,-2970.022,4336.94,-48.79761,0,0,0),
(75160,22,-2966.017,4337.788,-48.79761,0,0,0),
(75160,23,-2968.773,4341.27,-48.79761,0,0,0);

UPDATE creature SET MovementType=2, spawndist=0 WHERE guid=75161 AND id=21443;
DELETE FROM `creature_movement` WHERE `id`=75161;
INSERT INTO `creature_movement` (`id`,`point`,`position_x`,`position_y`,`position_z`,`waittime`,`script_id`,`orientation`) VALUES
(75161,1,-2971.524,4336.39,-48.79761,0,0,0),
(75161,2,-2976.652,4331.877,-48.79761,0,0,0),
(75161,3,-2972.108,4343.063,-48.79761,0,0,0),
(75161,4,-2972.863,4341.226,-48.79761,0,0,0),
(75161,5,-2978.359,4337.49,-48.79761,0,0,0),
(75161,6,-2966.364,4340.931,-48.79761,0,0,0),
(75161,7,-2968.566,4340.3,-48.79761,0,0,0),
(75161,8,-2963.628,4336.689,-48.79761,0,0,0),
(75161,9,-2969.605,4335.057,-48.79761,0,0,0),
(75161,10,-2963.628,4336.689,-48.79761,0,0,0),
(75161,11,-2970.474,4336.634,-48.79761,0,0,0),
(75161,12,-2966.364,4340.931,-48.79761,0,0,0),
(75161,13,-2978.359,4337.49,-48.79761,0,0,0),
(75161,14,-2976.077,4338.155,-48.79761,0,0,0),
(75161,15,-2971.015,4337.732,-48.79762,0,0,0),
(75161,16,-2976.652,4331.877,-48.79761,0,0,0),
(75161,17,-2971.524,4336.39,-48.79761,0,0,0),
(75161,18,-2972.081,4332.816,-48.79761,0,0,0),
(75161,19,-2967.039,4330.086,-48.79761,0,0,0),
(75161,20,-2966.868,4337.424,-48.79761,0,0,0),
(75161,21,-2967.039,4330.086,-48.79761,0,0,0),
(75161,22,-2972.081,4332.816,-48.79761,0,0,0);

UPDATE creature SET MovementType=2, spawndist=0 WHERE guid=75162 AND id=21443;
DELETE FROM `creature_movement` WHERE `id`=75162;
INSERT INTO `creature_movement` (`id`,`point`,`position_x`,`position_y`,`position_z`,`waittime`,`script_id`,`orientation`) VALUES
(75162,1,-2974.207,4339.127,-48.79761,0,0,0),
(75162,2,-2973.135,4342.598,-48.79761,0,0,0),
(75162,3,-2970.761,4337.66,-48.79761,0,0,0),
(75162,4,-2970.213,4339.229,-48.79761,0,0,0),
(75162,5,-2970.761,4337.66,-48.79761,0,0,0),
(75162,6,-2973.135,4342.598,-48.79761,0,0,0),
(75162,7,-2974.207,4339.127,-48.79761,0,0,0),
(75162,8,-2977.265,4338.545,-48.79761,0,0,0),
(75162,9,-2972.911,4334.464,-48.79761,0,0,0),
(75162,10,-2977.874,4334.591,-48.79761,0,0,0),
(75162,11,-2971.354,4336.678,-48.79761,0,0,0),
(75162,12,-2967.527,4330.476,-48.79761,0,0,0),
(75162,13,-2969.738,4335.885,-48.79761,0,0,0),
(75162,14,-2967.669,4335.222,-48.79761,0,0,0),
(75162,15,-2965.357,4337.898,-48.79761,0,0,0),
(75162,16,-2969.734,4337.405,-48.79761,0,0,0),
(75162,17,-2966.976,4340.979,-48.79761,0,0,0),
(75162,18,-2969.734,4337.405,-48.79761,0,0,0),
(75162,19,-2965.357,4337.898,-48.79761,0,0,0),
(75162,20,-2967.669,4335.222,-48.79761,0,0,0),
(75162,21,-2969.738,4335.885,-48.79761,0,0,0),
(75162,22,-2967.527,4330.476,-48.79761,0,0,0),
(75162,23,-2971.354,4336.678,-48.79761,0,0,0),
(75162,24,-2977.874,4334.591,-48.79761,0,0,0),
(75162,25,-2972.911,4334.464,-48.79761,0,0,0),
(75162,26,-2977.265,4338.545,-48.79761,0,0,0);

-- Waypoints used at the end of the event by c.21489 and c.21443
-- c.21443
DELETE FROM creature_movement_template WHERE entry=21443;
INSERT INTO `creature_movement_template` (`entry`,`pathId`,`point`,`position_x`,`position_y`,`position_z`,`waittime`,`script_id`,`orientation`) VALUES
(21443,1,1,-2972.615,4335.827,-44.76296,0,0,100),
(21443,1,2,-2967.41,4336.155,-39.74206,0,0,100),
(21443,1,3,-2968.403,4338.604,-38.9643,0,0,100),
(21443,1,4,-2970.48,4339.887,-37.88093,0,0,100),
(21443,1,5,-2972.072,4339.787,-37.10315,0,0,100),
(21443,1,6,-2973.99,4338.575,-36.57536,0,0,100),
(21443,1,7,-2974.894,4335.771,-36.54757,0,0,100),
(21443,1,8,-2973.837,4333.095,-37.49202,0,0,100),
(21443,1,9,-2971.075,4331.995,-38.60312,0,0,100),
(21443,1,10,-2968.386,4333.202,-39.57537,0,0,100);

INSERT INTO `creature_movement_template` (`entry`,`pathId`,`point`,`position_x`,`position_y`,`position_z`,`waittime`,`script_id`,`orientation`) VALUES
(21443,2,1,-2970.477,4336.422,-44.9861,0,0,100),
(21443,2,2,-2972.104,4339.854,-39.1865,0,0,100),
(21443,2,3,-2973.965,4338.571,-39.85316,0,0,100),
(21443,2,4,-2974.934,4335.73,-40.15873,0,0,100),
(21443,2,5,-2973.837,4333.045,-39.60315,0,0,100),
(21443,2,6,-2971.066,4331.918,-38.71426,0,0,100),
(21443,2,7,-2968.384,4333.149,-37.76981,0,0,100),
(21443,2,8,-2967.252,4335.923,-37.46427,0,0,100),
(21443,2,9,-2968.497,4338.704,-37.90872,0,0,100),
(21443,2,10,-2970.408,4339.868,-38.51983,0,0,100);

INSERT INTO `creature_movement_template` (`entry`,`pathId`,`point`,`position_x`,`position_y`,`position_z`,`waittime`,`script_id`,`orientation`) VALUES
(21443,3,1,-2971.309,4336.106,-45.24427,0,0,100),
(21443,3,2,-2969.925,4342.627,-35.38092,0,0,100),
(21443,3,3,-2972.688,4342.573,-35.38093,0,0,100),
(21443,3,4,-2976.185,4340.618,-35.46429,0,0,100),
(21443,3,5,-2977.955,4335.679,-35.7976,0,0,100),
(21443,3,6,-2975.792,4331.001,-36.13095,0,0,100),
(21443,3,7,-2971.05,4328.992,-36.29763,0,0,100),
(21443,3,8,-2966.315,4331.283,-36.32541,0,0,100),
(21443,3,9,-2964.447,4335.988,-36.07539,0,0,100),
(21443,3,10,-2966.365,4340.87,-35.63095,0,0,100);

-- c.21489
-- 75394
-- Position: X: -2966.503 Y: 4326.667 Z: -47.26835
DELETE FROM creature_movement_template WHERE entry=21489;
INSERT INTO `creature_movement_template` (`entry`,`pathId`,`point`,`position_x`,`position_y`,`position_z`,`waittime`,`script_id`,`orientation`) VALUES
(21489,1,1,-2969.121,4331.66,-45.07949,0,0,100),
(21489,1,2,-2964.257,4335.968,-37.63094,0,0,100),
(21489,1,3,-2966.189,4331.215,-38.35315,0,0,100),
(21489,1,4,-2970.975,4328.785,-40.32536,0,0,100),
(21489,1,5,-2976.047,4330.834,-42.35315,0,0,100),
(21489,1,6,-2978.069,4335.702,-43.63095,0,0,100),
(21489,1,7,-2976.321,4340.663,-42.63093,0,0,100),
(21489,1,8,-2972.799,4343.011,-41.24204,0,0,100),
(21489,1,9,-2969.767,4343.023,-39.90872,0,0,100),
(21489,1,10,-2966.164,4340.923,-38.57537,0,0,100),
(21489,1,11,-2964.997,4338.685,-38.04759,0,0,100);

-- 75399
-- Position: X: -2980.023 Y: 4340.593 Z: -47.41525
INSERT INTO `creature_movement_template` (`entry`,`pathId`,`point`,`position_x`,`position_y`,`position_z`,`waittime`,`script_id`,`orientation`) VALUES
(21489,2,1,-2975.33,4338.013,-45.18915,0,0,100),
(21489,2,2,-2971.195,4344.511,-48.10313,0,0,100),
(21489,2,3,-2966.976,4343.413,-46.73678,0,0,100),
(21489,2,4,-2963.977,4340.555,-44.95898,0,0,100),
(21489,2,5,-2962.64,4336.474,-42.93119,0,0,100),
(21489,2,6,-2963.607,4331.661,-40.09785,0,0,100),
(21489,2,7,-2966.374,4328.824,-38.26453,0,0,100),
(21489,2,8,-2969.896,4327.316,-36.93119,0,0,100),
(21489,2,9,-2973.19,4327.569,-37.29233,0,0,100),
(21489,2,10,-2977.098,4330.093,-39.12564,0,0,100),
(21489,2,11,-2979.235,4333.991,-41.73678,0,0,100),
(21489,2,12,-2979.29,4337.671,-43.73677,0,0,100),
(21489,2,13,-2978.181,4340.562,-45.73676,0,0,100),
(21489,2,14,-2975.753,4342.543,-47.29232,0,0,100),
(21489,2,15,-2973.337,4344.245,-48.34787,0,0,100);

-- 75397
-- Position: X: -2961.493 Y: 4333.264 Z: -47.20127
INSERT INTO `creature_movement_template` (`entry`,`pathId`,`point`,`position_x`,`position_y`,`position_z`,`waittime`,`script_id`,`orientation`) VALUES
(21489,3,1,-2966.772,4334.625,-45.08173,0,0,100),
(21489,3,2,-2967.863,4332.744,-35.60316,0,0,100),
(21489,3,3,-2970.881,4331.305,-35.65871,0,0,100),
(21489,3,4,-2974.55,4332.372,-35.68647,0,0,100),
(21489,3,5,-2975.78,4335.87,-35.54761,0,0,100),
(21489,3,6,-2974.439,4339.057,-35.32538,0,0,100),
(21489,3,7,-2972.214,4340.495,-35.18652,0,0,100),
(21489,3,8,-2970.146,4340.62,-35.15872,0,0,100),
(21489,3,9,-2967.91,4338.957,-35.24205,0,0,100),
(21489,3,10,-2966.763,4335.786,-35.4087,0,0,100);

-- 75395
-- Position: X: -2980.222 Y: 4331.297 Z: -47.17913
INSERT INTO `creature_movement_template` (`entry`,`pathId`,`point`,`position_x`,`position_y`,`position_z`,`waittime`,`script_id`,`orientation`) VALUES
(21489,4,1,-2975.446,4333.697,-45.08996,0,0,100),
(21489,4,2,-2976.108,4330.797,-48.71425,0,0,100),
(21489,4,3,-2973.033,4328.983,-48.74203,0,0,100),
(21489,4,4,-2970.703,4328.83,-48.65869,0,0,100),
(21489,4,5,-2966.946,4330.413,-48.63092,0,0,100),
(21489,4,6,-2965.118,4332.97,-48.5476,0,0,100),
(21489,4,7,-2964.508,4335.992,-48.46427,0,0,100),
(21489,4,8,-2965.306,4338.858,-48.15871,0,0,100),
(21489,4,9,-2966.759,4340.589,-48.32537,0,0,100),
(21489,4,10,-2968.453,4341.533,-48.4087,0,0,100),
(21489,4,11,-2970,4342.162,-48.43649,0,0,100),
(21489,4,12,-2972.472,4342.108,-48.49204,0,0,100),
(21489,4,13,-2974.996,4341.013,-48.54759,0,0,100),
(21489,4,14,-2976.898,4338.878,-48.51982,0,0,100),
(21489,4,15,-2977.708,4336.646,-48.60314,0,0,100),
(21489,4,16,-2977.528,4333.913,-48.74205,0,0,100);

-- 75398
-- Position: X: -2962.88 Y: 4342.352 Z: -47.1151
INSERT INTO `creature_movement_template` (`entry`,`pathId`,`point`,`position_x`,`position_y`,`position_z`,`waittime`,`script_id`,`orientation`) VALUES
(21489,5,1,-2967.577,4338.683,-44.96584,0,0,100),
(21489,5,2,-2966.368,4340.874,-47.88092,0,0,100),
(21489,5,3,-2969.827,4342.61,-46.5198,0,0,100),
(21489,5,4,-2972.617,4342.579,-45.79759,0,0,100),
(21489,5,5,-2976.219,4340.642,-43.96426,0,0,100),
(21489,5,6,-2978.484,4335.621,-43.46425,0,0,100),
(21489,5,7,-2976.139,4330.75,-44.04758,0,0,100),
(21489,5,8,-2970.9,4328.526,-45.65869,0,0,100),
(21489,5,9,-2965.897,4330.842,-47.0476,0,0,100),
(21489,5,10,-2964.094,4335.907,-47.07537,0,0,100),
(21489,5,11,-2964.386,4338.874,-47.82536,0,0,100);

-- 75396
-- Position: X: -2974.228 Y: 4326.374 Z: -47.23511
INSERT INTO `creature_movement_template` (`entry`,`pathId`,`point`,`position_x`,`position_y`,`position_z`,`waittime`,`script_id`,`orientation`) VALUES
(21489,6,1,-2972.669,4331.36,-45.13487,0,0,100),
(21489,6,2,-2979.691,4335.704,-38.4365,0,0,100),
(21489,6,3,-2978.976,4332.135,-40.38442,0,0,100),
(21489,6,4,-2977.115,4329.682,-41.96775,0,0,100),
(21489,6,5,-2974.782,4328.217,-43.4122,0,0,100),
(21489,6,6,-2971.312,4327.272,-44.38442,0,0,100),
(21489,6,7,-2968.077,4328.033,-43.71777,0,0,100),
(21489,6,8,-2964.499,4330.67,-42.3011,0,0,100),
(21489,6,9,-2963.055,4333.594,-40.43999,0,0,100),
(21489,6,10,-2963.009,4337.263,-38.35663,0,0,100),
(21489,6,11,-2963.973,4340.014,-36.93998,0,0,100),
(21489,6,12,-2965.676,4342.398,-35.60667,0,0,100),
(21489,6,13,-2967.344,4343.456,-34.74556,0,0,100),
(21489,6,14,-2970.889,4344.582,-33.96776,0,0,100),
(21489,6,15,-2974.579,4343.842,-34.21069,0,0,100),
(21489,6,16,-2977.177,4342.02,-35.15516,0,0,100),
(21489,6,17,-2978.819,4339.561,-36.46074,0,0,100),
(21489,6,18,-2979.605,4337.621,-37.43476,0,0,100);


