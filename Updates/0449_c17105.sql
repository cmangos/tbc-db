-- Emissary Valustraa 17105
-- https://www.wowhead.com/npc=17105/emissary-valustraa#comments:id=841079 was made a mage trainer around patch 3.2, befor just race ambassador
UPDATE `creature` SET `modelid` = 0, `position_x` = 9664.364, `position_y` = 2528.672, `position_z`  = 1360.082, `orientation` = 5.654867 WHERE `id` = 17105;
UPDATE `creature_template` SET `NpcFlags` = 3 WHERE `entry` = 17105; -- remove classtrainer npc flag, set to sniff
DELETE FROM `gossip_menu_option` WHERE `menu_id` = 7366; -- remove mage gossip option to learn spells and unlearn talents
UPDATE `gossip_menu` SET `condition_id` = 302 WHERE `entry` = 7366 AND `text_id` = 8799; -- Draenei RaceCheck

