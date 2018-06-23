-- Timeline from sniffs:
-- 13:07:18.684 - quest accepted, not started
-- 13:07:28.263 - SAY_1
-- 13:07:30.731 - SAY_2
-- 13:07:32.763 - SAY_3
-- 13:07:32.966 - Barada moves
-- 13:07:39.497 - SPELL_BARADA_COMMANDS
-- 13:07:45.716 - bRANDOM
-- 13:07:51.622 - SAY_4
-- 13:08:09.638 - SPELL_BARADA_FALTERS
 -- 13:08:09.638 - Jules moves (floats)
-- 13:08:11.919 - SPELL_JULES_THREATENS
-- 13:08:33.872 - bRANDOM
-- 13:08:57.872 - bRANDOM
-- 13:09:21.575 - bRANDOM
-- 13:09:24.669 - SPELL_BARADA_COMMANDS
-- 13:09:28.919 - jules moves (starts flying)
 -- 13:09:28.919 - SPELL_JULES_VOMITS
-- 13:09:34.841 - jRANDOM
-- 13:09:44.872 - bRANDOM
-- 13:09:54.872 - jRANDOM
-- 13:10:04.950 - bRANDOM
-- 13:10:14.528 - jRANDOM
-- 13:10:24.638 - bRANDOM
-- 13:10:34.653 - jRANDOM
-- 13:10:44.716 - bRANDOM
-- 13:10:54.559 - jules moves back home
-- 13:10:59.888 - SAY_5
-- 13:11:00.903 - SPELL_JULES_GOES_PRONE
-- 13:11:03.325 - barada moves back
-- 13:11:06.903 - HEAL_SELF
-- 13:11:13.716 - Quest complete

-- Update waypoints for bara guy
DELETE FROM `creature_movement_template` WHERE entry = 22431;
INSERT INTO `creature_movement_template` (`entry`, `pathId`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `orientation`) VALUES 
(22431, 0, 0, -708.548, 2748.71, 101.591, 0, 0, 0),
(22431, 0, 1, -710.803, 2748.05, 101.591, 1000, 0, 0),
(22431, 0, 2, -706.955, 2752.71, 101.591, 0, 0, 0),
(22431, 0, 3, -707.211, 2754.10, 101.591, 1000, 0, 0);

-- Update waypoints for Colonol Jules
DELETE FROM `creature_movement_template` WHERE entry = 22432;
INSERT INTO `creature_movement_template` (`entry`, `pathId`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `orientation`) VALUES 
(22432, 0, 0, -713.746, 2744.86, 103.286, 0, 0, 0),
(22432, 0, 1, -713.390, 2748.81, 103.480, 0, 0, 0),
(22432, 0, 2, -708.577, 2748.76, 103.786, 0, 0, 0),
(22432, 0, 3, -708.239, 2745.67, 103.730, 0, 0, 0),
(22432, 0, 4, -710.870, 2743.91, 103.425, 0, 0, 0),
(22432, 0, 5, -710.502, 2750.73, 103.940, 0, 0, 0),
(22432, 0, 6, -710.211, 2754.36, 102.367, 1000, 0, 0);
    
-- should be casting 39380, not 39381 every 35 seconds
-- should be casting 39381 every 35 seconds, 6 seconds after 39380
-- (updated in acid file)

