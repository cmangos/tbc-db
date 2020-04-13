-- ---------------------------------------------------------
-- CompleteScript for quest Back to the Chief! q.10249
-- ---------------------------------------------------------

-- Quest template
UPDATE quest_template SET CompleteScript=10249 WHERE entry=10249;

-- Add the Firework Gameobjects with negative spawntime
SET @WAVE_1 := 161283;
SET @WAVE_2 := @WAVE_1 + 9;
SET @WAVE_3 := @WAVE_2 + 9;
SET @WAVE_4 := @WAVE_3 + 9;
SET @WAVE_5 := @WAVE_4 + 9;
SET @WAVE_6 := @WAVE_5 + 9;
SET @WAVE_7 := @WAVE_6 + 9;

-- Wave 1
DELETE FROM gameobject WHERE map=530 AND (id IN(180703,180704,180707,180708) OR id BETWEEN 180720 AND 180741);
INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`) VALUES 
(@WAVE_1 + 1, 180738, 530, 1, 2988.35, 3636.72, 167.151, 0.977383, 0, 0, 0.469471, 0.882948, -4, -4, 100, 1),
(@WAVE_1 + 2, 180728, 530, 1, 3038.07, 3670.59, 207.701, 4.76475, 0, 0, -0.688354, 0.725374, -4, -4, 100, 1),
(@WAVE_1 + 3, 180737, 530, 1, 3070.75, 3700.53, 166.667, 5.84685, 0, 0, -0.216439, 0.976296, -4, -4, 100, 1),
(@WAVE_1 + 4, 180733, 530, 1, 2967.57, 3710.52, 165.881, 0.977383, 0, 0, 0.469471, 0.882948, -4, -4, 100, 1),
(@WAVE_1 + 5, 180740, 530, 1, 3072.23, 3636.2, 164.938, 4.76475, 0, 0, -0.688354, 0.725374, -4, -4, 100, 1),
(@WAVE_1 + 6, 180703, 530, 1, 2992.44, 3646.61, 167.464, 5.84685, 0, 0, -0.216439, 0.976296, -4, -4, 100, 1),
(@WAVE_1 + 7, 180723, 530, 1, 3098.29, 3677.1, 165.249, 0.977383, 0, 0, 0.469471, 0.882948, -4, -4, 100, 1),
(@WAVE_1 + 8, 180726, 530, 1, 3029.77, 3718.18, 169.522, 4.76475, 0, 0, -0.688354, 0.725374, -4, -4, 100, 1),
(@WAVE_1 + 9, 180720, 530, 1, 3043.68, 3647.96, 171.584, 5.84685, 0, 0, -0.216439, 0.976296, -4, -4, 100, 1),

-- Wave 2
(@WAVE_2 + 1, 180737, 530, 1, 2988.35, 3636.72, 167.151, 0.977383, 0, 0, 0.469471, 0.882948, -4, -4, 100, 1),
(@WAVE_2 + 2, 180728, 530, 1, 3038.07, 3670.59, 207.701, 4.76475, 0, 0, -0.688354, 0.725374, -4, -4, 100, 1),
(@WAVE_2 + 3, 180739, 530, 1, 3070.75, 3700.53, 166.667, 5.84685, 0, 0, -0.216439, 0.976296, -4, -4, 100, 1),
(@WAVE_2 + 4, 180707, 530, 1, 2967.57, 3710.52, 165.881, 0.977383, 0, 0, 0.469471, 0.882948, -4, -4, 100, 1),
(@WAVE_2 + 5, 180741, 530, 1, 3072.23, 3636.2, 164.938, 4.76475, 0, 0, -0.688354, 0.725374, -4, -4, 100, 1),
(@WAVE_2 + 6, 180740, 530, 1, 2992.44, 3646.61, 167.464, 5.84685, 0, 0, -0.216439, 0.976296, -4, -4, 100, 1),
(@WAVE_2 + 7, 180726, 530, 1, 3098.29, 3677.1, 165.249, 0.977383, 0, 0, 0.469471, 0.882948, -4, -4, 100, 1),
(@WAVE_2 + 8, 180723, 530, 1, 3029.77, 3718.18, 169.522, 4.76475, 0, 0, -0.688354, 0.725374, -4, -4, 100, 1),
(@WAVE_2 + 9, 180722, 530, 1, 3043.68, 3647.96, 171.584, 5.84685, 0, 0, -0.216439, 0.976296, -4, -4, 100, 1),

-- Wave 3
(@WAVE_3 + 1, 180736, 530, 1, 2988.35, 3636.72, 167.151, 0.977383, 0, 0, 0.469471, 0.882948, -4, -4, 100, 1),
(@WAVE_3 + 2, 180731, 530, 1, 3038.07, 3670.59, 207.701, 4.76475, 0, 0, -0.688354, 0.725374, -4, -4, 100, 1),
(@WAVE_3 + 3, 180736, 530, 1, 3070.75, 3700.53, 166.667, 5.84685, 0, 0, -0.216439, 0.976296, -4, -4, 100, 1),
(@WAVE_3 + 4, 180740, 530, 1, 2967.57, 3710.52, 165.881, 0.977383, 0, 0, 0.469471, 0.882948, -4, -4, 100, 1),
(@WAVE_3 + 5, 180740, 530, 1, 3072.23, 3636.2, 164.938, 4.76475, 0, 0, -0.688354, 0.725374, -4, -4, 100, 1),
(@WAVE_3 + 6, 180703, 530, 1, 2992.44, 3646.61, 167.464, 5.84685, 0, 0, -0.216439, 0.976296, -4, -4, 100, 1),
(@WAVE_3 + 7, 180723, 530, 1, 3098.29, 3677.1, 165.249, 0.977383, 0, 0, 0.469471, 0.882948, -4, -4, 100, 1),
(@WAVE_3 + 8, 180720, 530, 1, 3029.77, 3718.18, 169.522, 4.76475, 0, 0, -0.688354, 0.725374, -4, -4, 100, 1),
(@WAVE_3 + 9, 180723, 530, 1, 3043.68, 3647.96, 171.584, 5.84685, 0, 0, -0.216439, 0.976296, -4, -4, 100, 1),

-- Wave 4
(@WAVE_4 + 1, 180739, 530, 1, 2988.35, 3636.72, 167.151, 0.977383, 0, 0, 0.469471, 0.882948, -4, -4, 100, 1),
(@WAVE_4 + 2, 180738, 530, 1, 3038.07, 3670.59, 207.701, 4.76475, 0, 0, -0.688354, 0.725374, -4, -4, 100, 1),
(@WAVE_4 + 3, 180736, 530, 1, 3070.75, 3700.53, 166.667, 5.84685, 0, 0, -0.216439, 0.976296, -4, -4, 100, 1),
(@WAVE_4 + 4, 180740, 530, 1, 2967.57, 3710.52, 165.881, 0.977383, 0, 0, 0.469471, 0.882948, -4, -4, 100, 1),
(@WAVE_4 + 5, 180740, 530, 1, 3072.23, 3636.2, 164.938, 4.76475, 0, 0, -0.688354, 0.725374, -4, -4, 100, 1),
(@WAVE_4 + 6, 180741, 530, 1, 2992.44, 3646.61, 167.464, 5.84685, 0, 0, -0.216439, 0.976296, -4, -4, 100, 1),
(@WAVE_4 + 7, 180724, 530, 1, 3098.29, 3677.1, 165.249, 0.977383, 0, 0, 0.469471, 0.882948, -4, -4, 100, 1),
(@WAVE_4 + 8, 180724, 530, 1, 3029.77, 3718.18, 169.522, 4.76475, 0, 0, -0.688354, 0.725374, -4, -4, 100, 1),
(@WAVE_4 + 9, 180723, 530, 1, 3043.68, 3647.96, 171.584, 5.84685, 0, 0, -0.216439, 0.976296, -4, -4, 100, 1),

-- Wave 5
(@WAVE_5 + 1, 180736, 530, 1, 2988.35, 3636.72, 167.151, 0.977383, 0, 0, 0.469471, 0.882948, -4, -4, 100, 1),
(@WAVE_5 + 2, 180736, 530, 1, 3038.07, 3670.59, 207.701, 4.76475, 0, 0, -0.688354, 0.725374, -4, -4, 100, 1),
(@WAVE_5 + 3, 180739, 530, 1, 3070.75, 3700.53, 166.667, 5.84685, 0, 0, -0.216439, 0.976296, -4, -4, 100, 1),
(@WAVE_5 + 4, 180703, 530, 1, 2967.57, 3710.52, 165.881, 0.977383, 0, 0, 0.469471, 0.882948, -4, -4, 100, 1),
(@WAVE_5 + 5, 180704, 530, 1, 3072.23, 3636.2, 164.938, 4.76475, 0, 0, -0.688354, 0.725374, -4, -4, 100, 1),
(@WAVE_5 + 6, 180740, 530, 1, 2992.44, 3646.61, 167.464, 5.84685, 0, 0, -0.216439, 0.976296, -4, -4, 100, 1),
(@WAVE_5 + 7, 180721, 530, 1, 3098.29, 3677.1, 165.249, 0.977383, 0, 0, 0.469471, 0.882948, -4, -4, 100, 1),
(@WAVE_5 + 8, 180726, 530, 1, 3029.77, 3718.18, 169.522, 4.76475, 0, 0, -0.688354, 0.725374, -4, -4, 100, 1),
(@WAVE_5 + 9, 180724, 530, 1, 3043.68, 3647.96, 171.584, 5.84685, 0, 0, -0.216439, 0.976296, -4, -4, 100, 1),

-- Wave 6
(@WAVE_6 + 1, 180731, 530, 1, 2988.35, 3636.72, 167.151, 0.977383, 0, 0, 0.469471, 0.882948, -4, -4, 100, 1),
(@WAVE_6 + 2, 180729, 530, 1, 3038.07, 3670.59, 207.701, 4.76475, 0, 0, -0.688354, 0.725374, -4, -4, 100, 1),
(@WAVE_6 + 3, 180728, 530, 1, 3070.75, 3700.53, 166.667, 5.84685, 0, 0, -0.216439, 0.976296, -4, -4, 100, 1),
(@WAVE_6 + 4, 180733, 530, 1, 2967.57, 3710.52, 165.881, 0.977383, 0, 0, 0.469471, 0.882948, -4, -4, 100, 1),
(@WAVE_6 + 5, 180740, 530, 1, 3072.23, 3636.2, 164.938, 4.76475, 0, 0, -0.688354, 0.725374, -4, -4, 100, 1),
(@WAVE_6 + 6, 180708, 530, 1, 2992.44, 3646.61, 167.464, 5.84685, 0, 0, -0.216439, 0.976296, -4, -4, 100, 1),
(@WAVE_6 + 7, 180724, 530, 1, 3098.29, 3677.1, 165.249, 0.977383, 0, 0, 0.469471, 0.882948, -4, -4, 100, 1),
(@WAVE_6 + 8, 180725, 530, 1, 3029.77, 3718.18, 169.522, 4.76475, 0, 0, -0.688354, 0.725374, -4, -4, 100, 1),
(@WAVE_6 + 9, 180722, 530, 1, 3043.68, 3647.96, 171.584, 5.84685, 0, 0, -0.216439, 0.976296, -4, -4, 100, 1),

-- Wave 7
(@WAVE_7 + 1, 180738, 530, 1, 2988.35, 3636.72, 167.151, 0.977383, 0, 0, 0.469471, 0.882948, -4, -4, 100, 1),
(@WAVE_7 + 2, 180738, 530, 1, 3038.07, 3670.59, 207.701, 4.76475, 0, 0, -0.688354, 0.725374, -4, -4, 100, 1),
(@WAVE_7 + 3, 180738, 530, 1, 3070.75, 3700.53, 166.667, 5.84685, 0, 0, -0.216439, 0.976296, -4, -4, 100, 1),
(@WAVE_7 + 4, 180740, 530, 1, 2967.57, 3710.52, 165.881, 0.977383, 0, 0, 0.469471, 0.882948, -4, -4, 100, 1),
(@WAVE_7 + 5, 180740, 530, 1, 3072.23, 3636.2, 164.938, 4.76475, 0, 0, -0.688354, 0.725374, -4, -4, 100, 1),
(@WAVE_7 + 6, 180740, 530, 1, 2992.44, 3646.61, 167.464, 5.84685, 0, 0, -0.216439, 0.976296, -4, -4, 100, 1),
(@WAVE_7 + 7, 180722, 530, 1, 3098.29, 3677.1, 165.249, 0.977383, 0, 0, 0.469471, 0.882948, -4, -4, 100, 1),
(@WAVE_7 + 8, 180722, 530, 1, 3029.77, 3718.18, 169.522, 4.76475, 0, 0, -0.688354, 0.725374, -4, -4, 100, 1),
(@WAVE_7 + 9, 180723, 530, 1, 3043.68, 3647.96, 171.584, 5.84685, 0, 0, -0.216439, 0.976296, -4, -4, 100, 1);

-- Add scripts
DELETE FROM `dbscripts_on_quest_end` WHERE `id` IN(10249);
INSERT INTO `dbscripts_on_quest_end` (`id`,`delay`,`priority`,`command`,`datalong`,`datalong2`,`datalong3`,`dataint`,`dataint2`,`dataint3`,`dataint4`,`buddy_entry`,`search_radius`,`data_flags`,`comments`,`x`,`y`,`z`,`o`) VALUES
(10249,0,0,21,1,0,0,0,0,0,0,0,0,0,'Rocket-Chief Fuselage - Set Active object on',0,0,0,0),

(10249,1640,0,0,0,0,0,2000001644,0,0,0,0,0,0,'Rocket-Chief Fuselage - Three cheers for $n!  $G He''s : She''s; saved the town from the Burning Legion!',0,0,0,0),

(10249,2312,0,9,@WAVE_1 + 1,5,0,0,0,0,0,0,0,64,'Rocket-Chief Fuselage - Spawn Fireworks Wave 1',0,0,0,0),
(10249,2312,0,9,@WAVE_1 + 2,5,0,0,0,0,0,0,0,64,'Rocket-Chief Fuselage - Spawn Fireworks Wave 1',0,0,0,0),
(10249,2312,0,9,@WAVE_1 + 3,5,0,0,0,0,0,0,0,64,'Rocket-Chief Fuselage - Spawn Fireworks Wave 1',0,0,0,0),
(10249,2312,0,9,@WAVE_1 + 4,5,0,0,0,0,0,0,0,64,'Rocket-Chief Fuselage - Spawn Fireworks Wave 1',0,0,0,0),
(10249,2312,0,9,@WAVE_1 + 5,5,0,0,0,0,0,0,0,64,'Rocket-Chief Fuselage - Spawn Fireworks Wave 1',0,0,0,0),
(10249,2312,0,9,@WAVE_1 + 6,5,0,0,0,0,0,0,0,64,'Rocket-Chief Fuselage - Spawn Fireworks Wave 1',0,0,0,0),
(10249,2312,0,9,@WAVE_1 + 7,5,0,0,0,0,0,0,0,64,'Rocket-Chief Fuselage - Spawn Fireworks Wave 1',0,0,0,0),
(10249,2312,0,9,@WAVE_1 + 8,5,0,0,0,0,0,0,0,64,'Rocket-Chief Fuselage - Spawn Fireworks Wave 1',0,0,0,0),
(10249,2312,0,9,@WAVE_1 + 9,5,0,0,0,0,0,0,0,64,'Rocket-Chief Fuselage - Spawn Fireworks Wave 1',0,0,0,0),
(10249,5390,0,35,5,95,0,0,0,0,0,0,0,0,'Rocket-Chief Fuselage - Throw AI Event 5',0,0,0,0),
(10249,5265,0,0,0,0,0,2000001645,0,0,0,0,0,0,'Rocket-Chief Fuselage - Hooray!',0,0,0,0),
(10249,5562,0,40,0,0,0,0,0,0,0,0,@WAVE_1 + 1,23,'Rocket-Chief Fuselage - Despawn Fireworks Wave 1',0,0,0,0),
(10249,5562,0,40,0,0,0,0,0,0,0,0,@WAVE_1 + 2,23,'Rocket-Chief Fuselage - Despawn Fireworks Wave 1',0,0,0,0),
(10249,5562,0,40,0,0,0,0,0,0,0,0,@WAVE_1 + 3,23,'Rocket-Chief Fuselage - Despawn Fireworks Wave 1',0,0,0,0),
(10249,5562,0,40,0,0,0,0,0,0,0,0,@WAVE_1 + 4,23,'Rocket-Chief Fuselage - Despawn Fireworks Wave 1',0,0,0,0),
(10249,5562,0,40,0,0,0,0,0,0,0,0,@WAVE_1 + 5,23,'Rocket-Chief Fuselage - Despawn Fireworks Wave 1',0,0,0,0),
(10249,5562,0,40,0,0,0,0,0,0,0,0,@WAVE_1 + 6,23,'Rocket-Chief Fuselage - Despawn Fireworks Wave 1',0,0,0,0),
(10249,5562,0,40,0,0,0,0,0,0,0,0,@WAVE_1 + 7,23,'Rocket-Chief Fuselage - Despawn Fireworks Wave 1',0,0,0,0),
(10249,5562,0,40,0,0,0,0,0,0,0,0,@WAVE_1 + 8,23,'Rocket-Chief Fuselage - Despawn Fireworks Wave 1',0,0,0,0),
(10249,5562,0,40,0,0,0,0,0,0,0,0,@WAVE_1 + 9,23,'Rocket-Chief Fuselage - Despawn Fireworks Wave 1',0,0,0,0),

(10249,11375,0,0,0,0,0,2000001645,0,0,0,0,0,0,'Rocket-Chief Fuselage - Hooray!',0,0,0,0),
(10249,11406,0,35,5,95,0,0,0,0,0,0,0,0,'Rocket-Chief Fuselage - Throw AI Event 5',0,0,0,0),
(10249,11625,0,9,@WAVE_2 + 1,5,0,0,0,0,0,0,0,64,'Rocket-Chief Fuselage - Spawn Fireworks Wave 2',0,0,0,0),
(10249,11625,0,9,@WAVE_2 + 2,5,0,0,0,0,0,0,0,64,'Rocket-Chief Fuselage - Spawn Fireworks Wave 2',0,0,0,0),
(10249,11625,0,9,@WAVE_2 + 3,5,0,0,0,0,0,0,0,64,'Rocket-Chief Fuselage - Spawn Fireworks Wave 2',0,0,0,0),
(10249,11625,0,9,@WAVE_2 + 4,5,0,0,0,0,0,0,0,64,'Rocket-Chief Fuselage - Spawn Fireworks Wave 2',0,0,0,0),
(10249,11625,0,9,@WAVE_2 + 5,5,0,0,0,0,0,0,0,64,'Rocket-Chief Fuselage - Spawn Fireworks Wave 2',0,0,0,0),
(10249,11625,0,9,@WAVE_2 + 6,5,0,0,0,0,0,0,0,64,'Rocket-Chief Fuselage - Spawn Fireworks Wave 2',0,0,0,0),
(10249,11625,0,9,@WAVE_2 + 7,5,0,0,0,0,0,0,0,64,'Rocket-Chief Fuselage - Spawn Fireworks Wave 2',0,0,0,0),
(10249,11625,0,9,@WAVE_2 + 8,5,0,0,0,0,0,0,0,64,'Rocket-Chief Fuselage - Spawn Fireworks Wave 2',0,0,0,0),
(10249,11625,0,9,@WAVE_2 + 9,5,0,0,0,0,0,0,0,64,'Rocket-Chief Fuselage - Spawn Fireworks Wave 2',0,0,0,0),
(10249,15265,0,40,0,0,0,0,0,0,0,0,@WAVE_2 + 1,23,'Rocket-Chief Fuselage - Despawn Fireworks Wave 2',0,0,0,0),
(10249,15265,0,40,0,0,0,0,0,0,0,0,@WAVE_2 + 2,23,'Rocket-Chief Fuselage - Despawn Fireworks Wave 2',0,0,0,0),
(10249,15265,0,40,0,0,0,0,0,0,0,0,@WAVE_2 + 3,23,'Rocket-Chief Fuselage - Despawn Fireworks Wave 2',0,0,0,0),
(10249,15265,0,40,0,0,0,0,0,0,0,0,@WAVE_2 + 4,23,'Rocket-Chief Fuselage - Despawn Fireworks Wave 2',0,0,0,0),
(10249,15265,0,40,0,0,0,0,0,0,0,0,@WAVE_2 + 5,23,'Rocket-Chief Fuselage - Despawn Fireworks Wave 2',0,0,0,0),
(10249,15265,0,40,0,0,0,0,0,0,0,0,@WAVE_2 + 6,23,'Rocket-Chief Fuselage - Despawn Fireworks Wave 2',0,0,0,0),
(10249,15265,0,40,0,0,0,0,0,0,0,0,@WAVE_2 + 7,23,'Rocket-Chief Fuselage - Despawn Fireworks Wave 2',0,0,0,0),
(10249,15265,0,40,0,0,0,0,0,0,0,0,@WAVE_2 + 8,23,'Rocket-Chief Fuselage - Despawn Fireworks Wave 2',0,0,0,0),
(10249,15265,0,40,0,0,0,0,0,0,0,0,@WAVE_2 + 9,23,'Rocket-Chief Fuselage - Despawn Fireworks Wave 2',0,0,0,0),

(10249,16469,0,9,@WAVE_3 + 1,5,0,0,0,0,0,0,0,64,'Rocket-Chief Fuselage - Spawn Fireworks Wave 3',0,0,0,0),
(10249,16469,0,9,@WAVE_3 + 2,5,0,0,0,0,0,0,0,64,'Rocket-Chief Fuselage - Spawn Fireworks Wave 3',0,0,0,0),
(10249,16469,0,9,@WAVE_3 + 3,5,0,0,0,0,0,0,0,64,'Rocket-Chief Fuselage - Spawn Fireworks Wave 3',0,0,0,0),
(10249,16469,0,9,@WAVE_3 + 4,5,0,0,0,0,0,0,0,64,'Rocket-Chief Fuselage - Spawn Fireworks Wave 3',0,0,0,0),
(10249,16469,0,9,@WAVE_3 + 5,5,0,0,0,0,0,0,0,64,'Rocket-Chief Fuselage - Spawn Fireworks Wave 3',0,0,0,0),
(10249,16469,0,9,@WAVE_3 + 6,5,0,0,0,0,0,0,0,64,'Rocket-Chief Fuselage - Spawn Fireworks Wave 3',0,0,0,0),
(10249,16469,0,9,@WAVE_3 + 7,5,0,0,0,0,0,0,0,64,'Rocket-Chief Fuselage - Spawn Fireworks Wave 3',0,0,0,0),
(10249,16469,0,9,@WAVE_3 + 8,5,0,0,0,0,0,0,0,64,'Rocket-Chief Fuselage - Spawn Fireworks Wave 3',0,0,0,0),
(10249,16469,0,9,@WAVE_3 + 9,5,0,0,0,0,0,0,0,64,'Rocket-Chief Fuselage - Spawn Fireworks Wave 3',0,0,0,0),
(10249,17422,0,35,5,95,0,0,0,0,0,0,0,0,'Rocket-Chief Fuselage - Throw AI Event 5',0,0,0,0),
(10249,17437,0,0,0,0,0,2000001645,0,0,0,0,0,0,'Rocket-Chief Fuselage - Hooray!',0,0,0,0),
(10249,20125,0,40,0,0,0,0,0,0,0,0,@WAVE_3 + 1,23,'Rocket-Chief Fuselage - Despawn Fireworks Wave 3',0,0,0,0),
(10249,20125,0,40,0,0,0,0,0,0,0,0,@WAVE_3 + 2,23,'Rocket-Chief Fuselage - Despawn Fireworks Wave 3',0,0,0,0),
(10249,20125,0,40,0,0,0,0,0,0,0,0,@WAVE_3 + 3,23,'Rocket-Chief Fuselage - Despawn Fireworks Wave 3',0,0,0,0),
(10249,20125,0,40,0,0,0,0,0,0,0,0,@WAVE_3 + 4,23,'Rocket-Chief Fuselage - Despawn Fireworks Wave 3',0,0,0,0),
(10249,20125,0,40,0,0,0,0,0,0,0,0,@WAVE_3 + 5,23,'Rocket-Chief Fuselage - Despawn Fireworks Wave 3',0,0,0,0),
(10249,20125,0,40,0,0,0,0,0,0,0,0,@WAVE_3 + 6,23,'Rocket-Chief Fuselage - Despawn Fireworks Wave 3',0,0,0,0),
(10249,20125,0,40,0,0,0,0,0,0,0,0,@WAVE_3 + 7,23,'Rocket-Chief Fuselage - Despawn Fireworks Wave 3',0,0,0,0),
(10249,20125,0,40,0,0,0,0,0,0,0,0,@WAVE_3 + 8,23,'Rocket-Chief Fuselage - Despawn Fireworks Wave 3',0,0,0,0),
(10249,20125,0,40,0,0,0,0,0,0,0,0,@WAVE_3 + 9,23,'Rocket-Chief Fuselage - Despawn Fireworks Wave 3',0,0,0,0),

(10249,21344,0,9,@WAVE_4 + 1,5,0,0,0,0,0,0,0,64,'Rocket-Chief Fuselage - Spawn Fireworks Wave 4',0,0,0,0),
(10249,21344,0,9,@WAVE_4 + 2,5,0,0,0,0,0,0,0,64,'Rocket-Chief Fuselage - Spawn Fireworks Wave 4',0,0,0,0),
(10249,21344,0,9,@WAVE_4 + 3,5,0,0,0,0,0,0,0,64,'Rocket-Chief Fuselage - Spawn Fireworks Wave 4',0,0,0,0),
(10249,21344,0,9,@WAVE_4 + 4,5,0,0,0,0,0,0,0,64,'Rocket-Chief Fuselage - Spawn Fireworks Wave 4',0,0,0,0),
(10249,21344,0,9,@WAVE_4 + 5,5,0,0,0,0,0,0,0,64,'Rocket-Chief Fuselage - Spawn Fireworks Wave 4',0,0,0,0),
(10249,21344,0,9,@WAVE_4 + 6,5,0,0,0,0,0,0,0,64,'Rocket-Chief Fuselage - Spawn Fireworks Wave 4',0,0,0,0),
(10249,21344,0,9,@WAVE_4 + 7,5,0,0,0,0,0,0,0,64,'Rocket-Chief Fuselage - Spawn Fireworks Wave 4',0,0,0,0),
(10249,21344,0,9,@WAVE_4 + 8,5,0,0,0,0,0,0,0,64,'Rocket-Chief Fuselage - Spawn Fireworks Wave 4',0,0,0,0),
(10249,21344,0,9,@WAVE_4 + 9,5,0,0,0,0,0,0,0,64,'Rocket-Chief Fuselage - Spawn Fireworks Wave 4',0,0,0,0),
(10249,24578,0,40,0,0,0,0,0,0,0,0,@WAVE_4 + 1,23,'Rocket-Chief Fuselage - Despawn Fireworks Wave 4',0,0,0,0),
(10249,24578,0,40,0,0,0,0,0,0,0,0,@WAVE_4 + 2,23,'Rocket-Chief Fuselage - Despawn Fireworks Wave 4',0,0,0,0),
(10249,24578,0,40,0,0,0,0,0,0,0,0,@WAVE_4 + 3,23,'Rocket-Chief Fuselage - Despawn Fireworks Wave 4',0,0,0,0),
(10249,24578,0,40,0,0,0,0,0,0,0,0,@WAVE_4 + 4,23,'Rocket-Chief Fuselage - Despawn Fireworks Wave 4',0,0,0,0),
(10249,24578,0,40,0,0,0,0,0,0,0,0,@WAVE_4 + 5,23,'Rocket-Chief Fuselage - Despawn Fireworks Wave 4',0,0,0,0),
(10249,24578,0,40,0,0,0,0,0,0,0,0,@WAVE_4 + 6,23,'Rocket-Chief Fuselage - Despawn Fireworks Wave 4',0,0,0,0),
(10249,24578,0,40,0,0,0,0,0,0,0,0,@WAVE_4 + 7,23,'Rocket-Chief Fuselage - Despawn Fireworks Wave 4',0,0,0,0),
(10249,24578,0,40,0,0,0,0,0,0,0,0,@WAVE_4 + 8,23,'Rocket-Chief Fuselage - Despawn Fireworks Wave 4',0,0,0,0),
(10249,24578,0,40,0,0,0,0,0,0,0,0,@WAVE_4 + 9,23,'Rocket-Chief Fuselage - Despawn Fireworks Wave 4',0,0,0,0),

(10249,26203,0,9,@WAVE_5 + 1,5,0,0,0,0,0,0,0,64,'Rocket-Chief Fuselage - Spawn Fireworks Wave 5',0,0,0,0),
(10249,26203,0,9,@WAVE_5 + 2,5,0,0,0,0,0,0,0,64,'Rocket-Chief Fuselage - Spawn Fireworks Wave 5',0,0,0,0),
(10249,26203,0,9,@WAVE_5 + 3,5,0,0,0,0,0,0,0,64,'Rocket-Chief Fuselage - Spawn Fireworks Wave 5',0,0,0,0),
(10249,26203,0,9,@WAVE_5 + 4,5,0,0,0,0,0,0,0,64,'Rocket-Chief Fuselage - Spawn Fireworks Wave 5',0,0,0,0),
(10249,26203,0,9,@WAVE_5 + 5,5,0,0,0,0,0,0,0,64,'Rocket-Chief Fuselage - Spawn Fireworks Wave 5',0,0,0,0),
(10249,26203,0,9,@WAVE_5 + 6,5,0,0,0,0,0,0,0,64,'Rocket-Chief Fuselage - Spawn Fireworks Wave 5',0,0,0,0),
(10249,26203,0,9,@WAVE_5 + 7,5,0,0,0,0,0,0,0,64,'Rocket-Chief Fuselage - Spawn Fireworks Wave 5',0,0,0,0),
(10249,26203,0,9,@WAVE_5 + 8,5,0,0,0,0,0,0,0,64,'Rocket-Chief Fuselage - Spawn Fireworks Wave 5',0,0,0,0),
(10249,26203,0,9,@WAVE_5 + 9,5,0,0,0,0,0,0,0,64,'Rocket-Chief Fuselage - Spawn Fireworks Wave 5',0,0,0,0),
(10249,29453,0,40,0,0,0,0,0,0,0,0,@WAVE_5 + 1,23,'Rocket-Chief Fuselage - Despawn Fireworks Wave 5',0,0,0,0),
(10249,29453,0,40,0,0,0,0,0,0,0,0,@WAVE_5 + 2,23,'Rocket-Chief Fuselage - Despawn Fireworks Wave 5',0,0,0,0),
(10249,29453,0,40,0,0,0,0,0,0,0,0,@WAVE_5 + 3,23,'Rocket-Chief Fuselage - Despawn Fireworks Wave 5',0,0,0,0),
(10249,29453,0,40,0,0,0,0,0,0,0,0,@WAVE_5 + 4,23,'Rocket-Chief Fuselage - Despawn Fireworks Wave 5',0,0,0,0),
(10249,29453,0,40,0,0,0,0,0,0,0,0,@WAVE_5 + 5,23,'Rocket-Chief Fuselage - Despawn Fireworks Wave 5',0,0,0,0),
(10249,29453,0,40,0,0,0,0,0,0,0,0,@WAVE_5 + 6,23,'Rocket-Chief Fuselage - Despawn Fireworks Wave 5',0,0,0,0),
(10249,29453,0,40,0,0,0,0,0,0,0,0,@WAVE_5 + 7,23,'Rocket-Chief Fuselage - Despawn Fireworks Wave 5',0,0,0,0),
(10249,29453,0,40,0,0,0,0,0,0,0,0,@WAVE_5 + 8,23,'Rocket-Chief Fuselage - Despawn Fireworks Wave 5',0,0,0,0),
(10249,29453,0,40,0,0,0,0,0,0,0,0,@WAVE_5 + 9,23,'Rocket-Chief Fuselage - Despawn Fireworks Wave 5',0,0,0,0),

(10249,31078,0,9,@WAVE_6 + 1,5,0,0,0,0,0,0,0,64,'Rocket-Chief Fuselage - Spawn Fireworks Wave 6',0,0,0,0),
(10249,31078,0,9,@WAVE_6 + 2,5,0,0,0,0,0,0,0,64,'Rocket-Chief Fuselage - Spawn Fireworks Wave 6',0,0,0,0),
(10249,31078,0,9,@WAVE_6 + 3,5,0,0,0,0,0,0,0,64,'Rocket-Chief Fuselage - Spawn Fireworks Wave 6',0,0,0,0),
(10249,31078,0,9,@WAVE_6 + 4,5,0,0,0,0,0,0,0,64,'Rocket-Chief Fuselage - Spawn Fireworks Wave 6',0,0,0,0),
(10249,31078,0,9,@WAVE_6 + 5,5,0,0,0,0,0,0,0,64,'Rocket-Chief Fuselage - Spawn Fireworks Wave 6',0,0,0,0),
(10249,31078,0,9,@WAVE_6 + 6,5,0,0,0,0,0,0,0,64,'Rocket-Chief Fuselage - Spawn Fireworks Wave 6',0,0,0,0),
(10249,31078,0,9,@WAVE_6 + 7,5,0,0,0,0,0,0,0,64,'Rocket-Chief Fuselage - Spawn Fireworks Wave 6',0,0,0,0),
(10249,31078,0,9,@WAVE_6 + 8,5,0,0,0,0,0,0,0,64,'Rocket-Chief Fuselage - Spawn Fireworks Wave 6',0,0,0,0),
(10249,31078,0,9,@WAVE_6 + 9,5,0,0,0,0,0,0,0,64,'Rocket-Chief Fuselage - Spawn Fireworks Wave 6',0,0,0,0),
(10249,34734,0,40,0,0,0,0,0,0,0,0,@WAVE_6 + 1,23,'Rocket-Chief Fuselage - Despawn Fireworks Wave 6',0,0,0,0),
(10249,34734,0,40,0,0,0,0,0,0,0,0,@WAVE_6 + 2,23,'Rocket-Chief Fuselage - Despawn Fireworks Wave 6',0,0,0,0),
(10249,34734,0,40,0,0,0,0,0,0,0,0,@WAVE_6 + 3,23,'Rocket-Chief Fuselage - Despawn Fireworks Wave 6',0,0,0,0),
(10249,34734,0,40,0,0,0,0,0,0,0,0,@WAVE_6 + 4,23,'Rocket-Chief Fuselage - Despawn Fireworks Wave 6',0,0,0,0),
(10249,34734,0,40,0,0,0,0,0,0,0,0,@WAVE_6 + 5,23,'Rocket-Chief Fuselage - Despawn Fireworks Wave 6',0,0,0,0),
(10249,34734,0,40,0,0,0,0,0,0,0,0,@WAVE_6 + 6,23,'Rocket-Chief Fuselage - Despawn Fireworks Wave 6',0,0,0,0),
(10249,34734,0,40,0,0,0,0,0,0,0,0,@WAVE_6 + 7,23,'Rocket-Chief Fuselage - Despawn Fireworks Wave 6',0,0,0,0),
(10249,34734,0,40,0,0,0,0,0,0,0,0,@WAVE_6 + 8,23,'Rocket-Chief Fuselage - Despawn Fireworks Wave 6',0,0,0,0),
(10249,34734,0,40,0,0,0,0,0,0,0,0,@WAVE_6 + 9,23,'Rocket-Chief Fuselage - Despawn Fireworks Wave 6',0,0,0,0),

(10249,35937,0,9,@WAVE_7 + 1,5,0,0,0,0,0,0,0,64,'Rocket-Chief Fuselage - Spawn Fireworks Wave 7',0,0,0,0),
(10249,35937,0,9,@WAVE_7 + 2,5,0,0,0,0,0,0,0,64,'Rocket-Chief Fuselage - Spawn Fireworks Wave 7',0,0,0,0),
(10249,35937,0,9,@WAVE_7 + 3,5,0,0,0,0,0,0,0,64,'Rocket-Chief Fuselage - Spawn Fireworks Wave 7',0,0,0,0),
(10249,35937,0,9,@WAVE_7 + 4,5,0,0,0,0,0,0,0,64,'Rocket-Chief Fuselage - Spawn Fireworks Wave 7',0,0,0,0),
(10249,35937,0,9,@WAVE_7 + 5,5,0,0,0,0,0,0,0,64,'Rocket-Chief Fuselage - Spawn Fireworks Wave 7',0,0,0,0),
(10249,35937,0,9,@WAVE_7 + 6,5,0,0,0,0,0,0,0,64,'Rocket-Chief Fuselage - Spawn Fireworks Wave 7',0,0,0,0),
(10249,35937,0,9,@WAVE_7 + 7,5,0,0,0,0,0,0,0,64,'Rocket-Chief Fuselage - Spawn Fireworks Wave 7',0,0,0,0),
(10249,35937,0,9,@WAVE_7 + 8,5,0,0,0,0,0,0,0,64,'Rocket-Chief Fuselage - Spawn Fireworks Wave 7',0,0,0,0),
(10249,35937,0,9,@WAVE_7 + 9,5,0,0,0,0,0,0,0,64,'Rocket-Chief Fuselage - Spawn Fireworks Wave 7',0,0,0,0),
(10249,39172,0,40,0,0,0,0,0,0,0,0,@WAVE_7 + 1,23,'Rocket-Chief Fuselage - Despawn Fireworks Wave 7',0,0,0,0),
(10249,39172,0,40,0,0,0,0,0,0,0,0,@WAVE_7 + 2,23,'Rocket-Chief Fuselage - Despawn Fireworks Wave 7',0,0,0,0),
(10249,39172,0,40,0,0,0,0,0,0,0,0,@WAVE_7 + 3,23,'Rocket-Chief Fuselage - Despawn Fireworks Wave 7',0,0,0,0),
(10249,39172,0,40,0,0,0,0,0,0,0,0,@WAVE_7 + 4,23,'Rocket-Chief Fuselage - Despawn Fireworks Wave 7',0,0,0,0),
(10249,39172,0,40,0,0,0,0,0,0,0,0,@WAVE_7 + 5,23,'Rocket-Chief Fuselage - Despawn Fireworks Wave 7',0,0,0,0),
(10249,39172,0,40,0,0,0,0,0,0,0,0,@WAVE_7 + 6,23,'Rocket-Chief Fuselage - Despawn Fireworks Wave 7',0,0,0,0),
(10249,39172,0,40,0,0,0,0,0,0,0,0,@WAVE_7 + 7,23,'Rocket-Chief Fuselage - Despawn Fireworks Wave 7',0,0,0,0),
(10249,39172,0,40,0,0,0,0,0,0,0,0,@WAVE_7 + 8,23,'Rocket-Chief Fuselage - Despawn Fireworks Wave 7',0,0,0,0),
(10249,39172,0,40,0,0,0,0,0,0,0,0,@WAVE_7 + 9,23,'Rocket-Chief Fuselage - Despawn Fireworks Wave 7',0,0,0,0),

(10249,40000,0,21,0,0,0,0,0,0,0,0,0,0,'Rocket-Chief Fuselage - Set Active object off',0,0,0,0);

-- Relay script to be used in ACID for various NPCs in Area 52
DELETE FROM `dbscripts_on_relay` WHERE `id` IN(10166,10167,10168,10169) AND command=1;
INSERT INTO `dbscripts_on_relay` (`id`,`delay`,`priority`,`command`,`datalong`,`datalong2`,`datalong3`,`dataint`,`dataint2`,`dataint3`,`dataint4`,`buddy_entry`,`search_radius`,`data_flags`,`comments`,`x`,`y`,`z`,`o`) VALUES
(10166,0,0,1,15,0,0,0,0,0,0,0,0,0,'Area 52 - Random Emote - OneShotRoar',0,0,0,0),
(10167,0,0,1,11,0,0,0,0,0,0,0,0,0,'Area 52 - Random Emote - OneShotLaugh',0,0,0,0),
(10168,0,0,1,21,0,0,0,0,0,0,0,0,0,'Area 52 - Random Emote - OneShotApplaud',0,0,0,0),
(10169,0,0,1,4,0,0,0,0,0,0,0,0,0,'Area 52 - Random Emote - OneShotCheer',0,0,0,0);

DELETE FROM dbscript_random_templates WHERE id=10172 AND target_id BETWEEN 10166 AND 10169;
INSERT INTO dbscript_random_templates (id,type,target_id,chance,comments) VALUES
(10172,1,10166,0,'Area 52 - Random Emote'),
(10172,1,10167,0,'Area 52 - Random Emote'),
(10172,1,10168,0,'Area 52 - Random Emote'),
(10172,1,10169,0,'Area 52 - Random Emote');

-- Add texts
DELETE FROM `dbscript_string` WHERE `entry` IN(2000001644,2000001645);
INSERT INTO `dbscript_string` (`entry`, `content_default`, `sound`, `type`, `language`, `emote`, `comment`, `broadcast_text_id`) VALUES 
(2000001644, 'Three cheers for $n!  $G He''s : She''s; saved the town from the Burning Legion!', 0, 1, 0, 0, 'Rocket-Chief Fuselage (Entry: 19570)', 17441),
(2000001645, 'Hooray!', 0, 1, 0, 0, 'Rocket-Chief Fuselage (Entry: 19570)', 17442);

