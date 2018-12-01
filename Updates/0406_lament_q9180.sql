UPDATE creature_template SET UnitFlags=33554688, InhabitType=4, SpeedWalk=2.5/2.5, SpeedRun=8/7, ModelId1=17035, ModelId2=11686 WHERE entry=21641; -- Lament of the Highborne Spell Bunny
UPDATE creature_template SET UnitFlags=768, InhabitType=4, SpeedWalk=0.5/2.5, SpeedRun=8/7, MovementType=2 WHERE entry=21628; -- Highborne Lamenter
DELETE FROM creature_movement_template WHERE entry=21628; -- Path IDs assigned in SD2 npc_lady_sylvanas_windrunnerAI
INSERT INTO `creature_movement_template` (`entry`, `pathId`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `waittime`, `script_id`) VALUES
(21628,1,1,1286.178,312.7989,-56.15427,1.133142,5000,7),
(21628,2,1,1287.959,311.534,-56.26538,0.760652,5000,7),
(21628,3,1,1290.516,311.1839,-56.20983,1.628063,5000,7),
(21628,4,1,1292.552,311.8947,-56.07092,1.960982,5000,7);
