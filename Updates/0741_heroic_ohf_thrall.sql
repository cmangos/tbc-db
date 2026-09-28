-- Heroic OHF Thrall should not hit for 1 damage, evidence shows he can deal more than 1 damage, and normal mode does more than 1 damage
-- Appears it would be closer to 700-900 against Epoch Hunter, this is 330-850 as variance is unknown
UPDATE `creature_template` SET `DamageMultiplier` = '4.00578' WHERE (`Entry` = '20548');

-- TODO: Lieutenant Drake Heroic Damage is too low, hitting under 1.5k mortal strike on tier 4 tank, I suggest 3x multiplier from current 12.09, judging from what we have now to 2.4.3 video showing 4.5k mortal strike on tier 4 paladin

-- Heroic summoned variants of Tarren Mill mobs were doing much less damage than normal mode and regular heroic patrol versions; make them consistent damage with regular variant
UPDATE `creature_template` SET `DamageMultiplier` = '8.61135' WHERE (`Entry` = '23181');
UPDATE `creature_template` SET `DamageMultiplier` = '8.61135' WHERE (`Entry` = '23182');
UPDATE `creature_template` SET `DamageMultiplier` = '10.0285' WHERE (`Entry` = '23183');
UPDATE `creature_template` SET `DamageMultiplier` = '10.0285' WHERE (`Entry` = '23184');
UPDATE `creature_template` SET `DamageMultiplier` = '9.77778' WHERE (`Entry` = '23185');
UPDATE `creature_template` SET `DamageMultiplier` = '9.77778' WHERE (`Entry` = '23186');

-- get rid of update_template as we handle this with 33133 spell dummy
DELETE FROM dbscripts_on_creature_movement WHERE ID IN (1809201, 1809301, 1809401) AND command = 44;

-- Increase delay of dbscript to account for cast on arrival of final waypoint; first wave attacks 13 seconds after stopping
UPDATE `dbscripts_on_creature_movement` SET `delay` = '12000' WHERE `id` = '1809401' AND `command` = '48';
UPDATE `dbscripts_on_creature_movement` SET `delay` = '12000' WHERE `id` = '1809301' AND `command` = '48';
UPDATE `dbscripts_on_creature_movement` SET `delay` = '12000' WHERE `id` = '1809201' AND `command` = '48';
UPDATE `dbscripts_on_creature_movement` SET `delay` = '13000' WHERE `id` = '1809401' AND `command` = '26';
UPDATE `dbscripts_on_creature_movement` SET `delay` = '13000' WHERE `id` = '1809301' AND `command` = '26';
UPDATE `dbscripts_on_creature_movement` SET `delay` = '13000' WHERE `id` = '1809201' AND `command` = '26';