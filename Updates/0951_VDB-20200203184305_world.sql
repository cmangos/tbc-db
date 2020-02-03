-- Add your query below.

-- Preparations for removal of currentwaypoint field.
-- SELECT * FROM creature where currentwaypoint = 1 AND `movementtype` = 2;
UPDATE `creature` SET `currentwaypoint` = 0 WHERE `guid` IN (
-- guid, id, map
51, -- 5124	0
108, -- 6175	0
122, -- 5109	0
134, -- 5595	0
144, -- 5595	0
146, -- 727	0
187, -- 727	0
245, -- 727	0
-- 334, -- 853	0
354, -- 853	0
398, -- 853	0
411, -- 853	0
1021, -- 853	0
1895, -- 5595	0
2070, -- 23858	530
2129, -- 11748	0
2779, -- 5974	0
2859, -- 5999	0
2968, -- 5999	0
3031, -- 11807	0
3902, -- 8304	0
37556, -- 5484	0
38668, -- 861	0
52348, -- 12864	1
72695, -- 20600	530
79723, -- 3518	0
79769, -- 2198	0
79776, -- 1328	0
79792, -- 1976	0
82765, -- 16246	530
84582, -- 17222	530
90477 -- 7295	0
);

-- SELECT * FROM creature where currentwaypoint > 1 AND `movementtype` = 2; -- all instanced

-- SELECT * FROM creature where currentwaypoint != 0 AND `movementtype` != 2;
UPDATE `creature` SET `currentwaypoint` = 0 WHERE `guid` IN (
37538, -- 20619	530
80335, -- 1423	0
94480, -- 23748	530
-- these might have spawndist 10 instead of 5
-- https://github.com/cmangos/tbc-db/commit/3605bf7fe77e294a234b83f421801a297c9e28cc#diff-30a52d5bac74d174cf4a9b02e92c7b4fc72b0737604446eef9cfd475fc9d6885R34
106013, -- 5429	1
106014, -- 5429	1
106029, -- 5424	1
106030, -- 5426	1
106031, -- 5424	1
106032 -- 5426	1
);

UPDATE `creature` SET `spawndist` = 2, `MovementType` = 1 WHERE `guid` = 37538; -- As the others c.20619
UPDATE `creature` SET `position_x`=-6241.2, `position_y`=319.528, `position_z`=382.653, `currentwaypoint` = 0 WHERE `guid`=334; -- setting to first waypoint
UPDATE `creature` SET `position_z`=181.3 WHERE `guid`=34503; -- falling below map

 -- https://github.com/cmangos/tbc-db/commit/26e25fdaa0764593d767d6b06d15aaa83acca3ed#diff-65afe5b17416c1a6fb640eaf7c8444583addeeb8cc23db2176a6dda2fa56859bR12
UPDATE `creature_movement` SET `orientation` = 100 WHERE `id` = 411 AND `point` = 7;

-- End of migration.

