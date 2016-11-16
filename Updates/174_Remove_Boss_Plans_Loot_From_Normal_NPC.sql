-- Remove Boss Plans Drops From Normal NPC Loot
DELETE FROM `creature_loot_template` WHERE `item` IN (22388,22389,22390);

