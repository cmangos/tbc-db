-- Improve Rethban Caverns & Add Render''s Rock Mineral Pooling

-- 2020	4	Master Mineral Pool - Redridge Mountians (Rethban Caverns) - can confirm 4 spawns here and 6 in Render's Rock https://youtu.be/ock1Lro_z84?t=20
-- wrong change here to 5 - https://github.com/cmangos/tbc-db/commit/f8a04181830ee3184e0e1ac6c1b5824760ae5515#diff-e632b676b9b08cfac24b06a6417d172efe0f7c18d6f2e8f38add34fc136dc467R165
UPDATE `pool_template` SET `max_limit` = 4, `description` = 'Master Mineral Pool - Redridge Mountains (Rethban Caverns)' WHERE `entry` = 2020; -- Mountians -> Mountains

-- Remove wrong duplicate node
DELETE FROM `gameobject` WHERE `guid` IN (75963,75964,75965); -- duplicate pool 6093 (o.76203) inside rethban caverns but not linked to it, with wrong gameobject_template entries
DELETE FROM `pool_gameobject` WHERE `pool_entry` = 6008;
DELETE FROM `pool_pool` WHERE `pool_id` = 6008;

-- Remove Rethban Ore from all entries in gameobject_loot_template except the ones (1735, 1736) used in Rethban Cavern
DELETE FROM `gameobject_loot_template` WHERE `item` = 2798 AND `entry` NOT IN (1735, 1736); -- Ore Inside Rethban Caverns

-- Create pooling for Render's Rock
DELETE FROM `pool_template` WHERE `entry` = 1999;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES
(1999, 6, 'Master Mineral Pool - Redridge Mountains (Render''s Rock)'); -- https://youtu.be/zTES02HAe9w?t=35 - minimap

UPDATE `pool_pool` SET `mother_pool` = 1999, `description` = 'Redridge Mountains (Render''s Rock) - Mineral Deposit' WHERE `pool_id` IN (3776,3773,6050,3778,6051,6010,6057,6004,3774,6002);
 -- Increase Respawntime to other Cave Spawns due to smaller pool size
UPDATE `gameobject` SET `spawntimesecsmin` = 180, `spawntimesecsmax` = 360 WHERE `guid` IN (SELECT `guid` FROM `pool_gameobject` WHERE `pool_entry` IN (3776,3773,6050,3778,6051,6010,6057,6004,3774,6002));

-- ('2019','22','Master Mineral Pool - Redridge Mountians (Main Section)') - 78 Total, down from 89
UPDATE pool_template SET max_limit=20, `description` = 'Master Mineral Pool - Redridge Mountains (Main Section)' WHERE entry = 2019; -- Mountians -> Mountains

-- wrong change here, only one go was moved inside the cave outside seems more fitting - https://github.com/cmangos/tbc-db/commit/f8a04181830ee3184e0e1ac6c1b5824760ae5515#diff-e632b676b9b08cfac24b06a6417d172efe0f7c18d6f2e8f38add34fc136dc467R67
UPDATE `gameobject` SET `position_z` = 208.172 WHERE `guid` IN (105283,105284,105285); -- leave them outside the cave as their pooling suggests so and they are closer to the outside then to inside the cave

