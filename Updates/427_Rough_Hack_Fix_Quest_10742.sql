-- ===============
-- Fix Quest 10742 - UDB Backported Data (ULTRA BASIC SCRIPT - REQUIRES MASSIVE SD2 SCRIPTING TO MAKE BLIZZLIKE) - https://www.youtube.com/watch?v=gr3ZhNID3_4
-- ===============
-- Goc
UPDATE creature_template SET FactionAlliance=14, FactionHorde=14, MechanicImmuneMask=1 WHERE entry IN (20555);
DELETE FROM creature WHERE id IN (20555); -- Summoned NPC
-- Goc (20555)
UPDATE `creature_template` SET `HealthMultiplier` = '20.0', `PowerMultiplier` = '0', `DamageMultiplier` = '14.286', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '139720', `MaxLevelHealth` = '139720', `MinLevelMana` = '0', `MaxLevelMana` = '0', `MinMeleeDmg` = '2525', `MaxMeleeDmg` = '3570', `MinRangedDmg` = '2864', `MaxRangedDmg` = '4254', `MeleeAttackPower` = '304.0', `RangedAttackPower` = '44.0', `Armor` = '6792.0' WHERE `entry` = '20555';


-- Rexxar
UPDATE creature_template SET FactionAlliance=1314, FactionHorde=1314, MechanicImmuneMask=12584977 WHERE entry IN (22448);
DELETE FROM creature WHERE id IN (22448); -- Summoned NPC
-- Rexxar (22448)
UPDATE `creature_template` SET `HealthMultiplier` = '16.0', `PowerMultiplier` = '0', `DamageMultiplier` = '2.0', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '118080', `MaxLevelHealth` = '118080', `MinLevelMana` = '0', `MaxLevelMana` = '0', `MinMeleeDmg` = '522', `MaxMeleeDmg` = '738', `MinRangedDmg` = '447', `MaxRangedDmg` = '664', `MeleeAttackPower` = '314.0', `RangedAttackPower` = '53.0', `Armor` = '7387.0' WHERE `entry` = '22448';


-- Add Event Scripts to Spawn Goc and Rexxar
DELETE FROM dbscripts_on_event WHERE id IN (14462);
insert into `dbscripts_on_event` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) values('14462','1','10','20555','300000','0','0','0','0','0','0','0','3705.15','5386.27','-4.06','5.11','Summon Goc - Quest 10742');
insert into `dbscripts_on_event` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) values('14462','5','10','22448','300000','0','0','0','0','0','0','0','3719.92','5352.77','-8.11','2.04','Summon Rexxar - Quest 10742');


