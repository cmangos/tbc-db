-- Heroic OHF Thrall should not hit for 1 damage, evidence shows he can deal more than 1 damage, and normal mode does more than 1 damage
-- Appears it would be closer to 700-900 against Epoch Hunter, this is 330-850 as variance is unknown
UPDATE `creature_template` SET `DamageMultiplier` = '4.00578' WHERE (`Entry` = '20548');

-- remove dragonkin abilities from human versions
DELETE FROM `creature_ai_scripts` WHERE (`id` = '1809203');
DELETE FROM `creature_ai_scripts` WHERE (`id` = '1809304');
DELETE FROM `creature_ai_scripts` WHERE (`id` = '1809307');
DELETE FROM `creature_ai_scripts` WHERE (`id` = '1809305');

DELETE FROM `creature_ai_scripts` WHERE (`id` = '2318004');
DELETE FROM `creature_ai_scripts` WHERE (`id` = '2318005');
DELETE FROM `creature_ai_scripts` WHERE (`id` = '2318007');
DELETE FROM `creature_ai_scripts` WHERE (`id` = '2317503');

-- Heroic summoned variants of Tarren Mill mobs were doing much less damage than normal mode and regular heroic patrol versions; make them consistent damage with regular variant
UPDATE `creature_template` SET `DamageMultiplier` = '8.61135' WHERE (`Entry` = '23181');
UPDATE `creature_template` SET `DamageMultiplier` = '8.61135' WHERE (`Entry` = '23182');
UPDATE `creature_template` SET `DamageMultiplier` = '10.0285' WHERE (`Entry` = '23183');
UPDATE `creature_template` SET `DamageMultiplier` = '10.0285' WHERE (`Entry` = '23184');
UPDATE `creature_template` SET `DamageMultiplier` = '9.77778' WHERE (`Entry` = '23185');
UPDATE `creature_template` SET `DamageMultiplier` = '9.77778' WHERE (`Entry` = '23186');


