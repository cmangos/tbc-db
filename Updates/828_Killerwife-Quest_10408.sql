
-- ===================
-- Fixes by Killerwife
-- ===================
-- Nexus-King Salhadaar quest script
-- http://www.wowhead.com/quest=10408/nexus-king-salhadaar

UPDATE creature_template SET MovementType=0 WHERE entry=20769; -- make creatures stationary
UPDATE creature SET position_x=3916.414551,position_y=2493.324463,position_z=109.439087,MovementType=0 WHERE guid=73278; -- adjust correct position, be careful about this one
UPDATE creature SET MovementType=0 WHERE id=20769;
UPDATE creature SET position_z=108.475868 WHERE guid=72462; -- correct Z coordinate
UPDATE creature_template SET FactionAlliance=14,FactionHorde=14 WHERE entry=21425; -- set correct faction for summons
-- TODO for X-Savior: give 21425 creature entry correct hp and damage
-- Nexus-King Salhadaar (21425)
UPDATE creature_template SET MinLevel=72,MaxLevel=72, UnitClass=2, Expansion=1, HealthMultiplier=3, PowerMultiplier=15, EquipmentTemplateId=1585 WHERE entry=21425; 
UPDATE `creature_template` SET `HealthMultiplier` = '3.0', `PowerMultiplier` = '15.0', `DamageMultiplier` = '3.0', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '17709', `MaxLevelHealth` = '17709', `MinLevelMana` = '49635', `MaxLevelMana` = '49635', `MinMeleeDmg` = '508', `MaxMeleeDmg` = '718', `MinRangedDmg` = '585', `MaxRangedDmg` = '870', `MeleeAttackPower` = '296.0', `RangedAttackPower` = '40.0', `Armor` = '5954.0' WHERE `entry` = '21425';
-- Remove All Loot
DELETE FROM creature_loot_template WHERE entry IN (21425);
UPDATE creature_template SET LootId=0 WHERE entry=21425; 








