-- Fix Justine Demalier 12481 having random male model
UPDATE `creature_model_info` SET `modelid_other_gender` = 0 WHERE `modelid` = 3167; -- male guard model
UPDATE `creature_model_info` SET `gender` = 1, `modelid_other_gender` = 0 WHERE `modelid` = 5446; -- female guard model
UPDATE `creature_template` SET `Modelid2` = 5446 WHERE `entry` IN (
-- 68, -- Stormwind City Guard - 3167,5446 in sniff
-- 1642, -- Northshire Guard - 3167,3257 in sniff
-- 1756, -- Stormwind Royal Guard -> only uses 3167 in sniff
-- 1976, -- Stormwind City Patroller -> only uses 3167 in sniff
5587, -- [PH] Alliance Mine Boss -> not used, but add nontheless to preserver the value combination 
-- 9095, -- Northshire Guard Justin -> male unused counterpart to Justine?
-- 12481, -- Justine Demalier -> female only
16396 -- Stormwind Elite Guard -> not used, but add nontheless
-- 18948 -- Stormwind Soldier -- 3167,5446 in sniff
);

