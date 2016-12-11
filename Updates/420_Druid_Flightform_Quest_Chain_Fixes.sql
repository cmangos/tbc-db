-- ===================================
-- Druid Flight Form Quest Chain Fixes
-- ===================================
-- Correct Quest 10990 and 10991 (Summoned NPC Were Reversed)
DELETE FROM dbscripts_on_go_template_use WHERE id IN (185547,185553);
insert into `dbscripts_on_go_template_use` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) values('185553','1','10','22994','60000','0','0','8','0','0','0','0','0','0','0','0','Summon Guardian of the Falcon');
insert into `dbscripts_on_go_template_use` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) values('185547','1','10','22993','60000','0','0','8','0','0','0','0','0','0','0','0','Summon Guardian of the Eagle');


-- ======================
-- Fix Escort Quest 10965
-- ======================
-- Aspect of the Raven
UPDATE creature_template SET FactionAlliance=14, FactionHorde=14, ExtraFlags=2 WHERE entry IN (22915);
-- Aspect of the Raven (22915)
UPDATE `creature_template` SET `HealthMultiplier` = '2.0', `PowerMultiplier` = '0', `DamageMultiplier` = '1.0', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '13972', `MaxLevelHealth` = '13972', `MinLevelMana` = '0', `MaxLevelMana` = '0', `MinMeleeDmg` = '252', `MaxMeleeDmg` = '357', `MinRangedDmg` = '215', `MaxRangedDmg` = '320', `MeleeAttackPower` = '304.0', `RangedAttackPower` = '44.0', `Armor` = '6792' WHERE `entry` = '22915';

-- Clintar Dreamwalker's Spirit
UPDATE creature_template SET ExtraFlags=0 WHERE entry IN (22916);
-- Clintar Dreamwalker's Spirit (22916)
UPDATE `creature_template` SET `HealthMultiplier` = '0.65', `PowerMultiplier` = '1.0', `DamageMultiplier` = '1.0', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '3633', `MaxLevelHealth` = '3633', `MinLevelMana` = '3155', `MaxLevelMana` = '3155', `MinMeleeDmg` = '234', `MaxMeleeDmg` = '331', `MinRangedDmg` = '198', `MaxRangedDmg` = '295', `MeleeAttackPower` = '286.0', `RangedAttackPower` = '33.0', `Armor` = '5474.0' WHERE `entry` = '22916';
UPDATE creature SET modelid=0, curhealth=3633 WHERE id IN (22916);

-- Fix Quest Requirements
UPDATE quest_template SET ReqCreatureOrGOId1=22916, ReqCreatureOrGOCount1=1 WHERE entry IN (10965);






