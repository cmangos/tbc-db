-- q.10277 'The Caverns of Time'
-- redone via DB
-- old outdated (v poor) sd2 script removed
-- https://github.com/cmangos/mangos-tbc/commit/f455cfc5280958b8ef027c52926a8eea08e48f4d

-- Important: TBC - need to check text id in relay 19903
-- It may be the same id redone with wotlk launch. TBC text should be: 'This timeway is currently collapsing. What that may hold for the past, present and future is currently unknown...'

-- Andormu 20130
UPDATE creature_template SET MinLevel = 66, MaxLevel = 66 WHERE entry = 20130;
-- Nozari 20131
UPDATE creature_template SET MinLevel = 60, MaxLevel = 60 WHERE entry = 20131;
-- Custodian of Time 20129
UPDATE creature_template SET Faction = 1779, UnitFlags = 33536, MinLevel = 70, MaxLevel = 70, SpeedWalk = (4 / 2.5), SpeedRun = (8 / 7), MovementType = 0 WHERE entry = 20129;
DELETE FROM creature_movement_template WHERE Entry = 20129;
INSERT INTO creature_movement_template (`Entry`, `PathId`, `Point`, `PositionX`, `PositionY`, `PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES
(20129,1,1,-8383.019,-4244.391,-206.6419,100,0,0),
(20129,1,2,-8401.535,-4229.183,-206.6909,100,0,0),
(20129,1,3,-8431.324,-4205.242,-209.3008,100,0,0),
(20129,1,4,-8446.195,-4199.217,-211.243 ,100,80000,11),
(20129,1,5,-8458.105,-4211.28,-213.5028 ,100,0,0),
(20129,1,6,-8474.044,-4211.068,-214.7394,100,0,0),
(20129,1,7,-8496.167,-4213.949,-214.2639,100,0,0),
(20129,1,8,-8535.091,-4218.915,-212.5248,100,0,0),
(20129,1,9,-8570.049,-4231.135,-211.2689,100,0,0),
(20129,1,10,-8598.164,-4247.171,-210.466 ,100,0,0),
(20129,1,11,-8627.352,-4268.631,-210.4807,2.583087,1000,1025),
(20129,1,12,-8627.352,-4268.631,-210.4807,100,28000,13),
(20129,1,13,-8621.246,-4292.463,-210.9081,100,0,0),
(20129,1,14,-8607.385,-4337.514,-212.1313,3.926991,10000,14),
(20129,1,15,-8577.146,-4359.431,-214.5522,100,0,0),
(20129,1,16,-8561.278,-4380.342,-215.3783,100,0,0),
(20129,1,17,-8540.864,-4399.46,-216.2492 ,100,0,0),
(20129,1,18,-8523.853,-4407.744,-216.4457,100,27000,15),
(20129,1,19,-8488.358,-4429.706,-215.94  ,100,0,0),
(20129,1,20,-8443.823,-4427.043,-213.4158,100,0,0),
(20129,1,21,-8409.723,-4412.882,-211.1733,100,0,0),
(20129,1,22,-8379.641,-4393.748,-208.4698,100,0,0),
(20129,1,23,-8359.075,-4369.809,-208.169 ,100,0,0),
(20129,1,24,-8358.578,-4360.841,-208.1463,0.1919862,26000,16),
(20129,1,25,-8363.002,-4342.101,-208.679,100,0,0),
(20129,1,26,-8367.569,-4306.754,-209.5198,100,0,0),
(20129,1,27,-8374.003,-4286.133,-208.7309,100,10000,12);
DELETE FROM dbscripts_on_relay WHERE id BETWEEN 19900 AND 19907;
INSERT INTO dbscripts_on_relay (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
-- first part
(19900,1,21,1,0,0,0,0,6,0,0,0,0,0,0,0,0,'Part of Custodian of Time 20129 EAI: active'),
(19900,2,0,0,0,0,0,0,0x02,17656,0,0,0,0,0,0,0,'Part of Custodian of Time 20129 EAI: Say 1'),
(19900,3,1,1,0,0,0,0,6,0,0,0,0,0,0,0,0,'Part of Custodian of Time 20129 EAI: emote'),
(19900,11000,0,0,0,0,0,0,0x02,17657,0,0,0,0,0,0,0,'Part of Custodian of Time 20129 EAI: Say 2'),
(19900,11001,1,1,0,0,0,0,6,0,0,0,0,0,0,0,0,'Part of Custodian of Time 20129 EAI: emote'),
(19900,26000,0,0,0,0,0,0,0x02,17658,0,0,0,0,0,0,0,'Part of Custodian of Time 20129 EAI: Say 3'),
(19900,26001,1,1,0,0,0,0,6,0,0,0,0,0,0,0,0,'Part of Custodian of Time 20129 EAI: emote'),
(19900,38000,0,0,0,0,0,0,0x02,17668,0,0,0,0,0,0,0,'Part of Custodian of Time 20129 EAI: Say 4'), -- Follow me, please.
(19900,38001,1,273,0,0,0,0,6,0,0,0,0,0,0,0,0,'Part of Custodian of Time 20129 EAI: emote'),
(19900,39000,20,2,1,0,0,0,6,0,0,0,0,0,0,0,0,'Part of Custodian of Time 20129 EAI: set Path1'),
-- 2nd part
(19901,1,36,0,0,0,0,0,0x02,0,0,0,0,0,0,0,0,'Part of Custodian of Time 20129 EAI: face player'),
(19901,2000,0,0,0,0,0,0,0x02,17667,0,0,0,0,0,0,0,'Part of Custodian of Time 20129 EAI: Say 5'),
(19901,2001,1,1,0,0,0,0,6,0,0,0,0,0,0,0,0,'Part of Custodian of Time 20129 EAI: emote'),
(19901,11000,0,0,0,0,0,0,0x02,17659,0,0,0,0,0,0,0,'Part of Custodian of Time 20129 EAI: Say 6'),
(19901,11001,1,1,0,0,0,0,6,0,0,0,0,0,0,0,0,'Part of Custodian of Time 20129 EAI: emote'),
(19901,26000,0,0,0,0,0,0,0x02,17660,0,0,0,0,0,0,0,'Part of Custodian of Time 20129 EAI: Say 7'),
(19901,26001,1,1,0,0,0,0,6,0,0,0,0,0,0,0,0,'Part of Custodian of Time 20129 EAI: emote'),
(19901,40000,3,0,0,0,0,0,6,0,0,0,0,0,0,0,1.466077,'Part of Custodian of Time 20129 EAI: move'),
(19901,41000,0,0,0,0,0,0,0x02,17661,0,0,0,0,0,0,0,'Part of Custodian of Time 20129 EAI: Say 8'),
(19901,41001,1,1,0,0,0,0,6,0,0,0,0,0,0,0,0,'Part of Custodian of Time 20129 EAI: emote'),
(19901,47000,1,25,0,0,0,0,6,0,0,0,0,0,0,0,0,'Part of Custodian of Time 20129 EAI: emote'),
(19901,54000,0,0,0,0,0,0,0x02,17663,0,0,0,0,0,0,0,'Part of Custodian of Time 20129 EAI: Say 9'),
(19901,54001,1,25,0,0,0,0,6,0,0,0,0,0,0,0,0,'Part of Custodian of Time 20129 EAI: emote'),
(19901,59000,36,0,0,0,0,0,0x02,0,0,0,0,0,0,0,0,'Part of Custodian of Time 20129 EAI: face player'),
(19901,60000,1,1,0,0,0,0,6,0,0,0,0,0,0,0,0,'Part of Custodian of Time 20129 EAI: emote'),
(19901,75000,0,0,0,0,0,0,0x02,17668,0,0,0,0,0,0,0,'Part of Custodian of Time 20129 EAI: Say 4'), -- Follow me, please.
(19901,75001,1,273,0,0,0,0,6,0,0,0,0,0,0,0,0,'Part of Custodian of Time 20129 EAI: emote'),
-- 3rd part
(19902,1,36,0,0,0,0,0,0x02,0,0,0,0,0,0,0,0,'Part of Custodian of Time 20129 EAI: face player'),
(19902,1000,0,0,0,0,0,0,0x02,17664,0,0,0,0,0,0,0,'Part of Custodian of Time 20129 EAI: Say 10'),
(19902,1001,1,1,0,0,0,0,6,0,0,0,0,0,0,0,0,'Part of Custodian of Time 20129 EAI: emote'),
(19902,22000,0,0,0,0,0,0,0x02,17668,0,0,0,0,0,0,0,'Part of Custodian of Time 20129 EAI: Say 4'), -- Follow me, please.
(19902,22001,1,273,0,0,0,0,6,0,0,0,0,0,0,0,0,'Part of Custodian of Time 20129 EAI: emote'),
-- 4th part
(19903,1,36,0,0,0,0,0,0x02,0,0,0,0,0,0,0,0,'Part of Custodian of Time 20129 EAI: face player'),
/* NOTE TBC - text here may be diff: TBC "This timeway is currently collapsing. What that may hold for the past, present and future is currently unknown..." no ID in WotlkDB .. replaced by 17669*/
(19903,1000,0,0,0,0,0,0,0x02,17669,0,0,0,0,0,0,0,'Part of Custodian of Time 20129 EAI: Say 11'), -- This timeway collapsed and reformed. The result was Stratholme of yore. What could possibly be happening inside?
(19903,1001,1,1,0,0,0,0,6,0,0,0,0,0,0,0,0,'Part of Custodian of Time 20129 EAI: emote'),
(19903,4000,1,1,0,0,0,0,6,0,0,0,0,0,0,0,0,'Part of Custodian of Time 20129 EAI: emote'),
-- 5th part
(19904,1,36,0,0,0,0,0,0x02,0,0,0,0,0,0,0,0,'Part of Custodian of Time 20129 EAI: face player'),
(19904,1000,0,0,0,0,0,0,0x02,17662,0,0,0,0,0,0,0,'Part of Custodian of Time 20129 EAI: Say 12'),
(19904,1001,1,1,0,0,0,0,6,0,0,0,0,0,0,0,0,'Part of Custodian of Time 20129 EAI: emote'),
(19904,22000,0,0,0,0,0,0,0x02,17668,0,0,0,0,0,0,0,'Part of Custodian of Time 20129 EAI: Say 4'), -- Follow me, please.
(19904,22001,1,273,0,0,0,0,6,0,0,0,0,0,0,0,0,'Part of Custodian of Time 20129 EAI: emote'),
-- 6th part
(19905,1000,0,0,0,0,0,0,0x02,17665,0,0,0,0,0,0,0,'Part of Custodian of Time 20129 EAI: Say 13'),
(19905,1001,1,25,0,0,0,0,6,0,0,0,0,0,0,0,0,'Part of Custodian of Time 20129 EAI: emote'),
(19905,22000,0,0,0,0,0,0,0x02,17668,0,0,0,0,0,0,0,'Part of Custodian of Time 20129 EAI: Say 4'), -- Follow me, please.
(19905,22001,1,273,0,0,0,0,6,0,0,0,0,0,0,0,0,'Part of Custodian of Time 20129 EAI: emote'),
-- final part
(19906,1,36,0,0,0,0,0,0x02,0,0,0,0,0,0,0,0,'Part of Custodian of Time 20129 EAI: face player'),
(19906,1000,0,0,0,0,0,0,0x02,17666,0,0,0,0,0,0,0,'Part of Custodian of Time 20129 EAI: Say 13'),
(19906,1001,1,1,0,0,0,0,6,0,0,0,0,0,0,0,0,'Part of Custodian of Time 20129 EAI: emote'),
(19906,1002,15,34883,0,0,0,0,0x02,0,0,0,0,0,0,0,0,'Part of Custodian of Time 20129 EAI: cast 34883'),
(19906,7000,18,100,0,0,0,0,6,0,0,0,0,0,0,0,0,'Part of Custodian of Time 20129 EAI: despawn self'),
(19906,7001,21,0,0,0,0,0,6,0,0,0,0,0,0,0,0,'Part of Custodian of Time 20129 EAI: unactive');
UPDATE `broadcast_text` SET `ChatTypeID` = 4 WHERE `Id` IN (17656,17657,17658,17668,17667,17659,17660,17661,17663,17664,17669,17662,17665,17666);

