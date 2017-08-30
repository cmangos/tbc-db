-- Fixed position of NPC 1365 for Winter Veil event
-- Goli was AWOL against his will, changed to correct location
UPDATE `creature` SET `position_x`=-4882.71, `position_y`=-952.68, `position_z`=501.464, `orientation`=3.17408 WHERE `guid`=86181 AND `id`=1365;
