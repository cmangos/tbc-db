-- Few Random NPC Fixes
UPDATE creature_template SET InhabitType=3, UnitFlags=0, ExtraFlags=0, SpeedWalk=1, Expansion=1 WHERE entry IN (23446,26395,24520,26398);
UPDATE creature_template SET InhabitType=3, UnitFlags=0, ExtraFlags=0, SpeedWalk=1, Expansion=1, Rank=1 WHERE entry IN (23446,26395,24520,26398);
UPDATE creature_template SET MinLevel=65, MaxLevel=65, FactionAlliance=1638, FactionHorde=1638, UnitFlags=0, ExtraFlags=0, SpeedWalk=1, Expansion=1  WHERE entry IN (24670);
UPDATE creature_template SET HeroicEntry=20320 WHERE entry IN (18500);
UPDATE creature_template SET HeroicEntry=20323 WHERE entry IN (18501);


-- =================================
-- Gruul's Lair Fixes (5.x DBC Data)
-- =================================
-- Fix Gruul the Dragonkiller
UPDATE creature_template SET FactionAlliance=16, FactionHorde=16 WHERE entry IN (19044);
-- Fix High King Maulgar in Gruul's Lair
UPDATE creature_template SET FactionAlliance=45, FactionHorde=45 WHERE entry IN (18831);
-- Fix Lair Brute in Gruul's Lair
UPDATE creature_template SET FactionAlliance=45, FactionHorde=45 WHERE entry IN (19389);
-- Fix Blindeye the Seer in Gruul's Lair
UPDATE creature_template SET FactionAlliance=45, FactionHorde=45 WHERE entry IN (18836);
-- Fix Gronn-Priest in Gruul's Lair
UPDATE creature_template SET FactionAlliance=45, FactionHorde=45 WHERE entry IN (21350);
-- Fix Kiggler the Crazed in Gruul's Lair
UPDATE creature_template SET FactionAlliance=45, FactionHorde=45 WHERE entry IN (18835);
-- Fix Krosh Firehand in Gruul's Lair
UPDATE creature_template SET FactionAlliance=45, FactionHorde=45 WHERE entry IN (18832);
-- Fix Olm the Summoner in Gruul's Lair
UPDATE creature_template SET FactionAlliance=45, FactionHorde=45 WHERE entry IN (18834);
-- Fix Wild Fel Stalker in Gruul's Lair
UPDATE creature_template SET FactionAlliance=45, FactionHorde=45 WHERE entry IN (18847);


-- Fix Haris Pilton Faction (5.x DBC Data)
UPDATE creature_template SET FactionAlliance=35, FactionHorde=35 WHERE entry IN (18756);

-- Remove Incorrect NPC Loot Entires (Cleanup From Recent Fixes)
DELETE FROM creature_loot_template WHERE entry IN (240,246,3388,17462,20595,17917,20627,21338,21915);
UPDATE creature_template SET LootId=0 WHERE entry IN (240,246,3388);

-- Remove Incorrect Gameobject Loot Entires (Consolidtated when TBC Chest Loot Was Completely Re-Done)
DELETE FROM creature_loot_template WHERE entry IN (21278,21279,21281);

-- Correct Time Keeper Dragon Faction
UPDATE creature_template SET FactionAlliance=1718, FactionHorde=1718 WHERE entry IN (17918);

-- Set 2.4.3 Spawn Rate For Bhag'thera (Shortened in 2.4.3) - Will Setup Query To Restore 1800 Respawn Time For Progression
UPDATE creature SET SpawnTimeSecs=1800 WHERE id IN (728);

-- Add Missing Sporebat Eye Quest Drops from Young Sporebat and Greater Sporebat (Was added in 2.4.3)
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('18129','24426','-80','0','1','1','0','Spore Bat Eye');
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('20387','24426','-80','0','1','1','0','Spore Bat Eye');

-- Add Missing Blazzle and Meeda Spawns in Area 52 (added in 2.4.3) - Removed Them in Progression Until 2.4.3
DELETE FROM creature WHERE guid IN (105898,105899);
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('105898','28343','530','1','0','0','2958.14','3679.2','144.119','1.26551','600','0','0','5060','2933','0','0');
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('105899','28344','530','1','0','0','3046.43','3701.36','143.383','4.40826','600','0','0','7984','0','0','0');

-- Convert Foreman Wick Movement to Template
DELETE FROM creature_movement WHERE id IN (85051);
UPDATE creature_template SET MovementType=2 WHERE entry IN (28571);
DELETE FROM creature_movement_template WHERE entry IN (28571);
insert into `creature_movement_template` (`entry`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('28571','1','-8649.95','904.458','98.4782','18000','0','0','0','0','0','0','0','0','2.26181','0','0');
insert into `creature_movement_template` (`entry`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('28571','2','-8649.95','904.458','98.4782','1400','0','0','0','0','0','0','5','0','2.26181','0','0');
insert into `creature_movement_template` (`entry`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('28571','3','-8649.95','904.458','98.4782','17000','0','0','0','0','0','0','0','0','2.26181','0','0');

-- Convert Mason Goldgild Movement to Template
DELETE FROM creature_movement WHERE id IN (85050);
UPDATE creature_template SET MovementType=2 WHERE entry IN (28572);
DELETE FROM creature_movement_template WHERE entry IN (28572);
insert into `creature_movement_template` (`entry`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('28572','1','-8651.36','906.174','98.1521','15000','0','0','0','0','0','0','0','0','5.29659','0','0');
insert into `creature_movement_template` (`entry`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('28572','2','-8651.36','906.174','98.1521','1400','0','0','0','0','0','0','5','0','5.29659','0','0');
insert into `creature_movement_template` (`entry`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('28572','3','-8651.36','906.174','98.1521','20000','0','0','0','0','0','0','0','0','5.29659','0','0');

-- Gilbarta Grandhammer <Battleground Enthusiast> - Part of Special Event During 2008 Bejing Olympics - Added in 2.4.3
DELETE FROM creature WHERE guid IN (105897);
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('105897','27398','0','1','0','0','-5040.91','-1250.86','507.939','0.698132','300','0','0','1848','0','0','0');

-- Add Missing High Admiral "Shelly" Jorrik <Retiree> Spawn (Added in 2.4.3) - (High Admiral "Shelly" Jorrik (26081))
DELETE FROM creature_template WHERE entry IN (26081);
insert into `creature_template` (`Entry`, `Name`, `SubName`, `IconName`, `MinLevel`, `MaxLevel`, `HeroicEntry`, `ModelId1`, `ModelId2`, `ModelId3`, `ModelId4`, `FactionAlliance`, `FactionHorde`, `Scale`, `Family`, `CreatureType`, `InhabitType`, `RegenerateStats`, `RacialLeader`, `NpcFlags`, `UnitFlags`, `DynamicFlags`, `ExtraFlags`, `CreatureTypeFlags`, `SpeedWalk`, `SpeedRun`, `UnitClass`, `Rank`, `Expansion`, `HealthMultiplier`, `PowerMultiplier`, `DamageMultiplier`, `DamageVariance`, `ArmorMultiplier`, `ExperienceMultiplier`, `MinLevelHealth`, `MaxLevelHealth`, `MinLevelMana`, `MaxLevelMana`, `MinMeleeDmg`, `MaxMeleeDmg`, `MinRangedDmg`, `MaxRangedDmg`, `Armor`, `MeleeAttackPower`, `RangedAttackPower`, `MeleeBaseAttackTime`, `RangedBaseAttackTime`, `DamageSchool`, `MinLootGold`, `MaxLootGold`, `LootId`, `PickpocketLootId`, `SkinningLootId`, `KillCredit1`, `KillCredit2`, `MechanicImmuneMask`, `ResistanceHoly`, `ResistanceFire`, `ResistanceNature`, `ResistanceFrost`, `ResistanceShadow`, `ResistanceArcane`, `PetSpellDataId`, `MovementType`, `TrainerType`, `TrainerSpell`, `TrainerClass`, `TrainerRace`, `TrainerTemplateId`, `VendorTemplateId`, `EquipmentTemplateId`, `GossipMenuId`, `AIName`, `ScriptName`) values('26081','High Admiral \"Shelly\" Jorrik','Retiree','','48','50','0','1550','0','0','0','120','120','1','0','7','3','3','0','4224','0','0','0','0','1','1.14286','1','0','0','1.49','1','1','1','1','1','3072','3300','0','0','2','2','1','1','7','24','0','2000','2000','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','','');
UPDATE `creature_template` SET `HealthMultiplier` = '1.49', `PowerMultiplier` = '0', `DamageMultiplier` = '1.0', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '3072', `MaxLevelHealth` = '3300', `MinLevelMana` = '0', `MaxLevelMana` = '0', `MinMeleeDmg` = '80', `MaxMeleeDmg` = '112', `MinRangedDmg` = '55', `MaxRangedDmg` = '86', `MeleeAttackPower` = '206.0', `RangedAttackPower` = '20.0', `Armor` = '2999.0' WHERE `entry` = '26081';
DELETE FROM creature WHERE guid IN (105896);
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('105896','26081','0','1','0','0','-6378.3','1268.58','7.18762','2.37482','300','0','0','3072','0','0','0');

-- Add Missing Edward Cairn Spawn in Undercity (Added in 2.4.2)
DELETE FROM creature WHERE guid IN (105895);
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('105895','29095','0','1','0','0','1581.83','196.686','-43.1022','2.25663','180','0','0','1220','0','0','0');

-- Add Missing Horace Alder <Mage Trainer> Spawn in Theramore Isle (Added in 2.4.2)
DELETE FROM creature WHERE guid IN (105894);
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('105894','27704','1','1','0','0','-3746.12','-4457.83','56.2565','3.77405','180','5','0','1939','4393','0','1');

-- Add Missing Ian Drake <Elder> Spawn in Stormwind City (Added in 2.4.2)
DELETE FROM creature WHERE guid IN (105893);
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('105893','29093','0','1','0','0','-8807.04','638.359','94.312','3.56047','180','0','0','1220','0','0','0');

-- Add Missing Technician Halmaha <Engineering Supplies> Spawn in Shattrath City (Added in 2.4.2)
DELETE FROM creature WHERE guid IN (105892);
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('105892','27711','530','1','0','0','-1888.47','5771.15','129.559','5.87552','25','0','0','5914','0','0','0');

-- Delete Non-Existing Spell Target Location
DELETE FROM spell_target_position WHERE id IN (26220);

-- Fix Item Name
UPDATE item_template SET name='Grime-Encrusted Scale' WHERE entry IN (25429);









