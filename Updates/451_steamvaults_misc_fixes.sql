UPDATE `creature_equip_template` SET `equipentry1`=1903 WHERE `entry`=17721; -- Coilfang Engineer

DELETE FROM `creature` WHERE `guid`=12716 AND `id`=17721; -- Incorrectly spawned Coilfang Engineer

DELETE FROM `creature_addon` WHERE `guid` IN (12676,452,12677,12678,12686,12687,12691,12709,12715,12593,12592,12635,12630,12633,12629,12586,12585,12584,12634,12612,12610,12609,12608,12583,12582);
INSERT INTO `creature_addon` (`guid`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) VALUES
(12676, 0, 0, 1, 16, 173, 0, NULL), -- Adds EMOTE_STATE_WORK_NOSHEATHE to Coilfang Engineers
(452, 0, 0, 1, 16, 173, 0, NULL), -- Coilfang Engineer
(12677, 0, 0, 1, 16, 173, 0, NULL), -- Coilfang Engineer
(12678, 0, 0, 1, 16, 173, 0, NULL), -- Coilfang Engineer
(12686, 0, 0, 1, 16, 173, 0, NULL), -- Coilfang Engineer
(12687, 0, 0, 1, 16, 173, 0, NULL), -- Coilfang Engineer
(12691, 0, 0, 1, 16, 173, 0, NULL), -- Coilfang Engineer
(12709, 0, 0, 1, 16, 173, 0, NULL), -- Coilfang Engineer
(12715, 0, 0, 1, 16, 173, 0, NULL), -- Coilfang Engineer
(12593, 0, 0, 0, 16, 30, 0, NULL), -- Adds EMOTE_STATE_NONE to Dreghood Slaves
(12592, 0, 0, 0, 16, 30, 0, NULL), -- Dreghood Slave Standing
(12635, 0, 0, 0, 16, 378, 0, NULL), -- Adds EMOTE_STATE_TALK to Dregood Slaves
(12630, 0, 0, 0, 16, 378, 0, NULL), -- Dreghood Slave Talking
(12633, 0, 0, 1, 16, 173, 0, NULL), -- Adds EMOTE_STATE_WORK_NOSHEATHE to Dreghood Slaves
(12629, 0, 0, 1, 16, 173, 0, NULL), -- Dreghood Slave Working
(12586, 0, 0, 1, 16, 173, 0, NULL), -- Dreghood Slave Working
(12585, 0, 0, 1, 16, 173, 0, NULL), -- Dreghood Slave Working
(12584, 0, 0, 1, 16, 173, 0, NULL), -- Dreghood Slave Working
(12634, 0, 0, 1, 16, 173, 0, NULL), -- Dreghood Slave Working
(12612, 0, 0, 1, 16, 173, 0, NULL), -- Dreghood Slave Working
(12610, 0, 0, 1, 16, 173, 0, NULL), -- Dreghood Slave Working
(12609, 0, 0, 1, 16, 173, 0, NULL), -- Dreghood Slave Working
(12608, 0, 0, 1, 16, 173, 0, NULL), -- Dreghood Slave Working
(12583, 0, 0, 0, 16, 69, 0, NULL), -- Adds EMOTE_STATE_USESTANDING to Steamrigger Mechanic
(12582, 0, 0, 0, 16, 69, 0, NULL); -- Steamrigger Mechanic Working

