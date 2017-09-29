-- Wyrmcult Blessed c.21492
-- ------------------------

UPDATE creature_template SET SpeedWalk=(2.22222/2.5), SpeedRun=(8/7) WHERE entry=21492;
-- Add missing aura
UPDATE creature_template_addon SET auras='37637' WHERE entry=21492;


UPDATE creature SET MovementType=2, spawndist=0 WHERE guid=75400;
DELETE FROM `creature_movement` WHERE `id`=75400;
INSERT INTO `creature_movement` (`id`,`point`,`position_x`,`position_y`,`position_z`,`waittime`,`script_id`,`orientation`) VALUES
(75400,1,3114.639,7018.088,166.115,0,0,0),
(75400,2,3114.727,7028.735,165.1961,0,0,0),
(75400,3,3114.639,7018.088,166.115,0,0,0),
(75400,4,3120.61,7010.358,165.6011,0,0,0),
(75400,5,3126.011,7009.396,167.0388,0,0,0),
(75400,6,3120.61,7010.358,165.6011,0,0,0);

UPDATE creature SET MovementType=2, spawndist=0 WHERE guid=75401;
DELETE FROM `creature_movement` WHERE `id`=75401;
INSERT INTO `creature_movement` (`id`,`point`,`position_x`,`position_y`,`position_z`,`waittime`,`script_id`,`orientation`) VALUES
(75401,1,3109.647,7011.059,164.1824,0,0,0),
(75401,2,3105.156,7018.673,164.3448,0,0,0),
(75401,3,3105.752,7025.047,164.4358,0,0,0),
(75401,4,3108.745,7033.227,163.5854,0,0,0),
(75401,5,3105.809,7025.651,164.3207,0,0,0),
(75401,6,3105.156,7018.676,164.3353,0,0,0),
(75401,7,3109.58,7011.173,164.1788,0,0,0),
(75401,8,3115.475,7004.742,164.6678,0,0,0),
(75401,9,3122.777,7002.032,166.7164,0,0,0),
(75401,10,3115.641,7004.561,164.7224,0,0,0);

