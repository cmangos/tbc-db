-- Remove Scarab Bag from creature loot, only Scarab Coffers 180691 and Large Scarab Coffer 180690 should contain them
DELETE FROM `creature_loot_template` WHERE `item`='21156';

