-- Remove wrong Badge of Justice 29434 from Zul'Aman Time Run Chest Loot
DELETE FROM `gameobject_loot_template` WHERE `entry` IN (22699,22790,22797,22968) AND `item` = 29434;

