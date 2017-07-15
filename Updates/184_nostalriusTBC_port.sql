-- the following creatures in Molten Core do fire damage with their melee attacks, not physical
-- (Ancient Core Hounds, Firelords, Lava Spawns, Firewalkers, Flameguards, Sons of Flame and Baron Geddon)
UPDATE `creature_template` SET `DamageSchool`='2' WHERE `Entry` IN ('11673', '11666', '11667', '11668', '12056', '12143', '12265');

-- the following creatures in Molten Core do not drop any loot, nor money when killed. You cannot skin them either.
-- (Flame Imp, Core Hound, Lava Spawn, Firesworn, Core Rager, Son of Flame)
UPDATE `creature_template` SET `LootId`='0', `SkinningLootId`='0', `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry` IN ('11669', '11671', '12265', '12099', '11672', '12143');
DELETE FROM `creature_loot_template` WHERE `entry` IN ('11669', '11671', '12265', '12099', '11672', '12143');

DELETE FROM `gameobject` WHERE `guid`='113269';
INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES
('113269', '178188', '409', '1', '748.839', '-985.16', '-178.283', '3.14159', '0', '0', '-1', '0', '604800', '255', '1');

UPDATE `gameobject_template` SET `flags`='16', `size`='1.03788' WHERE `entry`='176951';
UPDATE `gameobject_template` SET `flags`='16', `size`='1.03788' WHERE `entry`='176952';
UPDATE `gameobject_template` SET `flags`='16', `size`='1.03788' WHERE `entry`='176953';
UPDATE `gameobject_template` SET `flags`='16', `size`='1.03788' WHERE `entry`='176954';


-- Naxxramas
-- + attunement to Naxxramas was added
-- + teleport of Atiesh was fixed
UPDATE `areatrigger_teleport` SET `required_quest_done`='9378' WHERE `id`='4055';

DELETE FROM `spell_target_position` WHERE `id`='28147';
INSERT INTO `spell_target_position` (`id`, `target_map`, `target_position_x`, `target_position_y`, `target_position_z`, `target_orientation`) VALUES
('28147', '0', '-11123.3', '-2014.44', '47.09271', '0.675977');

UPDATE `gameobject_template` SET `faction`='0', `flags`='0' WHERE `entry`='181146';



-- The Shattered Halls - Equipment
-- * added equipment to creatures in the Shattered Halls
-- * added equipment to Targar Spinebreaker

DELETE FROM `item_template` WHERE `entry` IN ('18419', '21554', '12902', '13160', '22199', '29484');
INSERT INTO `item_template` (`entry`, `class`, `subclass`, `unk0`, `name`, `displayid`, `Quality`, `Flags`, `BuyCount`, `BuyPrice`, `SellPrice`, `InventoryType`, `AllowableClass`, `AllowableRace`, `ItemLevel`, `RequiredLevel`, `RequiredSkill`, `RequiredSkillRank`, `requiredspell`, `requiredhonorrank`, `RequiredCityRank`, `RequiredReputationFaction`, `RequiredReputationRank`, `maxcount`, `stackable`, `ContainerSlots`, `stat_type1`, `stat_value1`, `stat_type2`, `stat_value2`, `stat_type3`, `stat_value3`, `stat_type4`, `stat_value4`, `stat_type5`, `stat_value5`, `stat_type6`, `stat_value6`, `stat_type7`, `stat_value7`, `stat_type8`, `stat_value8`, `stat_type9`, `stat_value9`, `stat_type10`, `stat_value10`, `dmg_min1`, `dmg_max1`, `dmg_type1`, `dmg_min2`, `dmg_max2`, `dmg_type2`, `dmg_min3`, `dmg_max3`, `dmg_type3`, `dmg_min4`, `dmg_max4`, `dmg_type4`, `dmg_min5`, `dmg_max5`, `dmg_type5`, `armor`, `holy_res`, `fire_res`, `nature_res`, `frost_res`, `shadow_res`, `arcane_res`, `delay`, `ammo_type`, `RangedModRange`, `spellid_1`, `spelltrigger_1`, `spellcharges_1`, `spellppmRate_1`, `spellcooldown_1`, `spellcategory_1`, `spellcategorycooldown_1`, `spellid_2`, `spelltrigger_2`, `spellcharges_2`, `spellppmRate_2`, `spellcooldown_2`, `spellcategory_2`, `spellcategorycooldown_2`, `spellid_3`, `spelltrigger_3`, `spellcharges_3`, `spellppmRate_3`, `spellcooldown_3`, `spellcategory_3`, `spellcategorycooldown_3`, `spellid_4`, `spelltrigger_4`, `spellcharges_4`, `spellppmRate_4`, `spellcooldown_4`, `spellcategory_4`, `spellcategorycooldown_4`, `spellid_5`, `spelltrigger_5`, `spellcharges_5`, `spellppmRate_5`, `spellcooldown_5`, `spellcategory_5`, `spellcategorycooldown_5`, `bonding`, `description`, `PageText`, `LanguageID`, `PageMaterial`, `startquest`, `lockid`, `Material`, `sheath`, `RandomProperty`, `RandomSuffix`, `block`, `itemset`, `MaxDurability`, `area`, `Map`, `BagFamily`, `TotemCategory`, `socketColor_1`, `socketContent_1`, `socketColor_2`, `socketContent_2`, `socketColor_3`, `socketContent_3`, `socketBonus`, `GemProperties`, `RequiredDisenchantSkill`, `ArmorDamageModifier`, `ScriptName`, `DisenchantID`, `FoodType`, `minMoneyLoot`, `maxMoneyLoot`, `Duration`, `ExtraFlags`) VALUES
('18419', '2', '1', '-1', 'Monster - Axe, 2H Horde Red War Axe' , '30791', '0', '0', '1', '0', '0', '17', '-1', '-1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3400', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '-1', '0', '', '0', '0', '0', '0', '0', '0'),
('21554', '2', '3', '-1', 'Monster - Gun, PvP Horde' , '34107', '0', '0', '1', '0', '0', '26', '-1', '-1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3400', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '-1', '0', '', '0', '0', '0', '0', '0', '0'),
('12902', '2', '8', '-1', 'Monster - Sword2H, Luminous Evil Blade' , '23405', '0', '0', '1', '0', '0', '17', '-1', '-1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3400', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '-1', '0', '', '0', '0', '0', '0', '0', '0'),
('13160', '2', '8', '-1', 'Monster - Sword2H, Claymore Silver' , '23669', '0', '0', '1', '0', '0', '17', '-1', '-1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3400', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '-1', '0', '', '0', '0', '0', '0', '0', '0'),
('22199', '2', '1', '-1', 'Monster - Axe, 2H Arcanite Reaper' , '34534	', '0', '0', '1', '0', '0', '17', '-1', '-1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3400', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '-1', '0', '', '0', '0', '0', '0', '0', '0'),
('29484', '2', '5', '-1', 'Monster - Mace2H, Firemaul of Destruction (No Fire)' , '39840', '0', '0', '1', '0', '0', '17', '-1', '-1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3400', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '-1', '0', '', '0', '0', '0', '0', '0', '0');

DELETE FROM `creature_equip_template` WHERE `entry` BETWEEN '5599' AND '5615';
INSERT INTO `creature_equip_template` (`entry`, `equipentry1`, `equipentry2`, `equipentry3`) VALUES
('5599', '13707', '13707', '0'), -- Shattered Hand Heathen
('5600', '18419', '0', '21554'), -- Shattered Hand Reaver / Shattered Hand Executioner
('5601', '0', '12893', '0'),     -- Shattered Hand Sentry
('5602', '10619', '2711', '0'),  -- Shattered Hand Assassin
('5603', '0', '0', '21554'),     -- Shattered Hand Sharpshooter
('5604', '12290', '12290', '0'), -- Shattered Hand Savage
('5605', '2147', '0', '23052'),  -- Shattered Hand Houndmaster
('5606', '12902', '0', '0'),     -- Grand Warlock Nethekurse
('5607', '13160', '0', '0'),     -- Blood Guard Porung
('5608', '11019', '0', '0'),     -- Shattered Hand Zealot
('5609', '2147', '0', '14118'),  -- Shattered Hand Archer
('5610', '1906', '0', '0'),      -- Shattered Hand Scout
('5611', '14870', '0', '21554'), -- Shattered Hand Gladiator
('5612', '22199', '0', '0'),     -- Shattered Hand Centurion
('5613', '10615', '12995', '0'), -- Shattered Hand Champion
('5614', '29484', '0', '0'),     -- Warbringer O'mrogg
-- ('x', '0', '2081', '0'),   -- Shattered Hand Legionnaire | -> 5045
('5615', '22199', '0', '0'); -- Tagar Spinebreaker

-- Tagar Spinebreaker
UPDATE `creature_template` SET `EquipmentTemplateId`='5615' WHERE `Entry`='19443';

-- Shattered Hand Heathen
UPDATE `creature_template` SET `EquipmentTemplateId`='5599' WHERE `Entry`='17420';

-- Shattered Hand Reaver / Shattered Hand Executioner
UPDATE `creature_template` SET `EquipmentTemplateId`='5600' WHERE `Entry` IN ('16699', '17301');

-- Shattered Hand Sentry
UPDATE `creature_template` SET `EquipmentTemplateId`='5601' WHERE `Entry`='16507';

-- Shattered Hand Assassin
UPDATE `creature_template` SET `EquipmentTemplateId`='5602' WHERE `Entry`='17695';

-- Shattered Hand Sharpshooter
UPDATE `creature_template` SET `EquipmentTemplateId`='5603' WHERE `Entry`='16704';

-- Shattered Hand Savage
UPDATE `creature_template` SET `EquipmentTemplateId`='5604' WHERE `Entry`='16523';

-- Shattered Hand Houndmaster
UPDATE `creature_template` SET `EquipmentTemplateId`='5605' WHERE `Entry`='17670';

-- Grand Warlock Nethekurse
UPDATE `creature_template` SET `EquipmentTemplateId`='5606' WHERE `Entry`='16807';

-- Blood Guard Porung / Shattered Hand Blood Guard
UPDATE `creature_template` SET `EquipmentTemplateId`='5607' WHERE `Entry` IN ('20923', '17461');

-- Shattered Hand Zealot
UPDATE `creature_template` SET `EquipmentTemplateId`='5608' WHERE `Entry`='17462';

-- Shattered Hand Archer
UPDATE `creature_template` SET `EquipmentTemplateId`='5609' WHERE `Entry`='17427';

-- Shattered Hand Scout
UPDATE `creature_template` SET `EquipmentTemplateId`='5610' WHERE `Entry`='17693';

-- Shattered Hand Gladiator
UPDATE `creature_template` SET `EquipmentTemplateId`='5611' WHERE `Entry`='17464';

-- Shattered Hand Centurion
UPDATE `creature_template` SET `EquipmentTemplateId`='5612' WHERE `Entry`='17465';

-- Shattered Hand Champion
UPDATE `creature_template` SET `EquipmentTemplateId`='5613' WHERE `Entry`='17671';

-- Warbringer O'mrogg
UPDATE `creature_template` SET `EquipmentTemplateId`='5614' WHERE `Entry`='16809';
UPDATE `creature_template` SET `EquipmentTemplateId`='0'    WHERE `Entry`='20596';

-- Shattered Hand Legionnaire
UPDATE `creature_template` SET `EquipmentTemplateId`='5045' WHERE `Entry`='16700';

-- Netherstorm - Mageslayer, Mana Seeker & Mana Beast
-- + Mageslayer, Mana Seeker & Mana Beast do arcane damage, not phsyical
-- Mageslayer
UPDATE `creature_template` SET `DamageSchool`='6' WHERE `Entry`='18866';

-- Mana Seeker
UPDATE `creature_template` SET `DamageSchool`='6' WHERE `Entry`='18867';

-- Mana Beast
UPDATE `creature_template` SET `DamageSchool`='6' WHERE `Entry`='21267';



-- Hellfire Peninsula - Bonechewer Raider
-- + one missing spawn added
-- + added creature_movement
-- Bonechewer Raider
UPDATE `creature` SET `position_x`='-181.9185', `position_y`='2754.960', `position_z`='29.76429', `orientation`='0.4706351', `spawndist`='0', `MovementType`='2' WHERE `guid`='58703';
UPDATE `creature` SET `position_x`='-169.5699', `position_y`='2587.481', `position_z`='38.79408', `orientation`='1.7707180', `spawndist`='0', `MovementType`='2' WHERE `guid`='58707';
UPDATE `creature` SET `position_x`='-174.6418', `position_y`='2337.374', `position_z`='60.27502', `orientation`='0.8733066', `spawndist`='0', `MovementType`='2' WHERE `guid`='58710';
UPDATE `creature` SET `position_x`='-285.6413', `position_y`='2377.453', `position_z`='49.44769', `orientation`='1.1097160', `spawndist`='0', `MovementType`='2' WHERE `guid`='58709';
UPDATE `creature` SET `position_x`='-331.2074', `position_y`='2628.407', `position_z`='41.12315', `orientation`='5.5013020', `spawndist`='0', `MovementType`='2' WHERE `guid`='58708';
UPDATE `creature` SET `position_x`='-402.8730', `position_y`='2886.875', `position_z`='12.04784', `orientation`='1.5610350', `spawndist`='0', `MovementType`='2' WHERE `guid`='58705';
UPDATE `creature` SET `position_x`='-446.6853', `position_y`='2973.210', `position_z`='7.425929', `orientation`='5.2047230', `spawndist`='0', `MovementType`='2' WHERE `guid`='58704';
UPDATE `creature` SET `position_x`='-373.1331', `position_y`='2840.704', `position_z`='2.514051', `orientation`='5.2295210', `spawndist`='0', `MovementType`='2' WHERE `guid`='58706';

SET @GUID := '60702';
DELETE FROM `creature` WHERE `guid`=@GUID;
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
(@GUID, '16925', '530', '1', '0', '0', '-335.0468', '2752.976', '18.02921', '5.832601', '300', '0', '0', '3989', '0', '0', '2');

-- Bonechewer Raider
SET @GUID := '58703';
SET @POINT := '0';

DELETE FROM `creature_movement` WHERE `id`=@GUID;
INSERT INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) VALUES
(@GUID, @POINT := @POINT + '1', '-167.2791', '2762.397', '35.03310', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-153.4980', '2770.506', '38.86687', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-145.5141', '2778.560', '39.84270', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-150.6209', '2789.044', '37.58318', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-170.9648', '2783.814', '32.08046', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-188.9648', '2784.236', '27.20546', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-190.6546', '2803.861', '24.17830', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-187.4622', '2812.540', '24.02644', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-185.9375', '2822.917', '22.65193', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-186.7449', '2838.429', '21.39230', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-181.9546', '2844.102', '22.21323', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-162.6241', '2836.603', '27.33937', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-146.1291', '2856.581', '28.25343', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-162.6241', '2836.603', '27.33937', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-181.9546', '2844.102', '22.21323', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-186.7449', '2838.429', '21.39230', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-185.1585', '2822.960', '22.96394', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-187.4622', '2812.540', '24.02644', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-190.6546', '2803.861', '24.17830', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-189.0068', '2784.242', '27.13271', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-171.1839', '2783.755', '32.13344', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-150.8398', '2788.984', '37.61687', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-145.5141', '2778.560', '39.84270', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-153.4109', '2770.546', '38.92352', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-167.1914', '2762.438', '35.18008', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-182.9826', '2754.442', '29.35964', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0');

-- Bonechewer Raider
SET @GUID := '58707';
SET @POINT := '0';

DELETE FROM `creature_movement` WHERE `id`=@GUID;
INSERT INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) VALUES
(@GUID, @POINT := @POINT + '1', '-170.8916', '2594.003', '38.98936', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-163.8098', '2600.026', '39.70474', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-167.0926', '2612.118', '39.60592', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-164.8104', '2624.617', '41.01138', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-172.3015', '2637.951', '40.82253', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-169.1662', '2646.859', '41.71144', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-169.9226', '2658.623', '42.08022', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-171.7312', '2672.769', '42.52205', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-181.2483', '2687.248', '39.84602', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-171.7312', '2672.769', '42.52205', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-170.8340', '2658.854', '41.81105', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-169.1662', '2646.859', '41.71144', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-172.3015', '2637.951', '40.82253', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-164.8104', '2624.617', '41.01138', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-167.0926', '2612.118', '39.60592', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-163.8098', '2600.026', '39.70474', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-170.8916', '2594.003', '38.98936', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-167.9180', '2587.133', '39.15184', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0');

-- Bonechewer Raider
SET @GUID := '58710';
SET @POINT := '0';

DELETE FROM `creature_movement` WHERE `id`=@GUID;
INSERT INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) VALUES
(@GUID, @POINT := @POINT + '1', '-167.2186', '2346.245', '59.36354', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-168.4072', '2360.051', '56.96058', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-171.6395', '2374.953', '54.30202', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-177.5023', '2388.499', '51.21072', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-182.6530', '2395.477', '50.12331', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-179.3247', '2412.122', '48.04967', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-182.6530', '2395.477', '50.12331', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-177.5023', '2388.499', '51.21072', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-171.6395', '2374.953', '54.30202', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-168.4072', '2360.051', '56.96058', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-167.2186', '2346.245', '59.36354', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-176.9367', '2336.816', '59.97352', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0');


-- Bonechewer Raider
SET @GUID := '58709';
SET @POINT := '0';

DELETE FROM `creature_movement` WHERE `id`=@GUID;
INSERT INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) VALUES
(@GUID, @POINT := @POINT + '1', '-274.4911', '2399.897', '49.77866', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-283.3323', '2417.445', '46.53200', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-296.9130', '2419.694', '45.00490', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-297.6552', '2433.133', '43.74355', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-287.7249', '2443.604', '43.26709', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-297.7681', '2457.156', '41.47120', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-297.1104', '2470.606', '40.85517', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-284.5786', '2477.366', '40.42182', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-294.7406', '2486.197', '39.98676', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-284.5786', '2477.366', '40.42182', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0');

-- Bonechewer Raider
SET @GUID := '58708';
SET @POINT := '0';

DELETE FROM `creature_movement` WHERE `id`=@GUID;
INSERT INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) VALUES
(@GUID, @POINT := @POINT + '1', '-314.1055', '2611.425', '40.94425', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-312.7006', '2588.055', '41.26893', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-300.8873', '2569.031', '40.75892', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-299.0739', '2549.555', '41.54256', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-303.7984', '2522.735', '42.36698', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-299.0739', '2549.555', '41.54256', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-300.8873', '2569.031', '40.75892', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-312.7006', '2588.055', '41.26893', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-314.1055', '2611.425', '40.94425', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-333.0693', '2627.497', '41.20707', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0');

-- Bonechewer Raider
SET @GUID := '58705';
SET @POINT := '0';

DELETE FROM `creature_movement` WHERE `id`=@GUID;
INSERT INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) VALUES
(@GUID, @POINT := @POINT + '1', '-402.6427', '2912.629', '13.92711', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-430.5879', '2914.215', '19.83055', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-442.1708', '2931.770', '18.08150', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-446.6874', '2950.046', '14.31838', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-438.7261', '2965.066', '8.592793', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-455.4344', '2971.357', '8.522066', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-470.4279', '2965.707', '12.80443', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-484.7891', '2978.157', '10.32030', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-470.4279', '2965.707', '12.80443', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-455.4344', '2971.357', '8.522066', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-438.7261', '2965.066', '8.592793', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-446.6874', '2950.046', '14.31838', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-442.1708', '2931.770', '18.08150', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-430.7029', '2914.234', '19.78001', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-402.7578', '2912.647', '13.95555', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-405.8217', '2887.469', '13.37367', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0');

-- Bonechewer Raider
SET @GUID := '58704';
SET @POINT := '0';

DELETE FROM `creature_movement` WHERE `id`=@GUID;
INSERT INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) VALUES
(@GUID, @POINT := @POINT + '1', '-436.8235', '2954.842', '10.21511', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-444.5871', '2941.008', '15.81179', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-439.7943', '2924.293', '19.83089', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-422.7563', '2911.712', '18.93797', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-405.8555', '2909.803', '15.20555', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-393.1904', '2889.133', '7.439690', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-405.5176', '2909.734', '15.20555', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-422.7563', '2911.712', '18.93797', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-439.7943', '2924.293', '19.83089', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-444.5871', '2941.008', '15.81179', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-436.8235', '2954.842', '10.21511', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-447.3259', '2970.301', '8.519625', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0');

-- Bonechewer Raider
SET @GUID := '58706';
SET @POINT := '0';

DELETE FROM `creature_movement` WHERE `id`=@GUID;
INSERT INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) VALUES
(@GUID, @POINT := @POINT + '1', '-352.1416', '2803.856', '9.131262', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-372.7111', '2839.348', '3.085857', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0');

-- Bonechewer Raider
SET @GUID := '60702';
SET @POINT := '0';

DELETE FROM `creature_movement` WHERE `id`=@GUID;
INSERT INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) VALUES
(@GUID, @POINT := @POINT + '1', '-322.4414', '2746.878', '18.15054', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-319.3905', '2730.499', '22.58821', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-324.4281', '2717.232', '24.64143', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-317.8521', '2695.430', '28.83252', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-318.9086', '2687.239', '30.45813', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-331.6708', '2681.807', '33.13684', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-345.5975', '2673.298', '37.36148', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-355.8039', '2661.430', '41.94869', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-345.5975', '2673.298', '37.36148', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-331.6708', '2681.807', '33.13684', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-318.9086', '2687.239', '30.45813', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-317.8521', '2695.430', '28.83252', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-324.4281', '2717.232', '24.64143', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-319.3905', '2730.499', '22.58821', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-322.3822', '2746.857', '18.34170', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-341.0169', '2752.740', '18.49311', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0');


-- Fen Strider
-- + a few missing spawns got added (no guarantee I got all)
-- + creature_movement
UPDATE `creature` SET `position_x`='160.20270', `position_y`='7579.556', `position_z`='17.45830', `orientation`='0.41367400', `spawndist`='0', `MovementType`='2' WHERE `guid`='64818';
UPDATE `creature` SET `position_x`='155.59820', `position_y`='7401.581', `position_z`='17.59866', `orientation`='2.49479000', `spawndist`='0', `MovementType`='2' WHERE `guid`='64817';
UPDATE `creature` SET `position_x`='-92.00846', `position_y`='7708.857', `position_z`='17.45834', `orientation`='5.00308000', `spawndist`='0', `MovementType`='2' WHERE `guid`='64813';
UPDATE `creature` SET `position_x`='60.011180', `position_y`='7577.749', `position_z`='17.45995', `orientation`='3.05125000', `spawndist`='0', `MovementType`='2' WHERE `guid`='64812';
UPDATE `creature` SET `position_x`='-225.0553', `position_y`='7704.354', `position_z`='17.73448', `orientation`='5.97081700', `spawndist`='0', `MovementType`='2' WHERE `guid`='64811';
UPDATE `creature` SET `position_x`='-236.2229', `position_y`='7408.846', `position_z`='17.69233', `orientation`='1.55479000', `spawndist`='0', `MovementType`='2' WHERE `guid`='64810';
UPDATE `creature` SET `position_x`='-56.23958', `position_y`='7285.744', `position_z`='17.46379', `orientation`='2.19859500', `spawndist`='0', `MovementType`='2' WHERE `guid`='64809';
UPDATE `creature` SET `position_x`='-1.327257', `position_y`='7190.626', `position_z`='17.45743', `orientation`='5.70722700', `spawndist`='0', `MovementType`='2' WHERE `guid`='64808';
UPDATE `creature` SET `position_x`='87.793510', `position_y`='7116.792', `position_z`='17.72941', `orientation`='1.02545400', `spawndist`='0', `MovementType`='2' WHERE `guid`='64807';
UPDATE `creature` SET `position_x`='-254.5178', `position_y`='6974.267', `position_z`='17.13479', `orientation`='4.28982400', `spawndist`='0', `MovementType`='2' WHERE `guid`='64805';
UPDATE `creature` SET `position_x`='-110.6024', `position_y`='6851.105', `position_z`='17.74542', `orientation`='1.24837600', `spawndist`='0', `MovementType`='2' WHERE `guid`='64806';
UPDATE `creature` SET `position_x`='154.62380', `position_y`='6853.830', `position_z`='17.83063', `orientation`='3.07175600', `spawndist`='0', `MovementType`='2' WHERE `guid`='64816';
UPDATE `creature` SET `position_x`='157.98900', `position_y`='6624.495', `position_z`='18.04080', `orientation`='3.12304000', `spawndist`='0', `MovementType`='2' WHERE `guid`='64804';
UPDATE `creature` SET `position_x`='343.57600', `position_y`='6550.459', `position_z`='17.77261', `orientation`='2.00913300', `spawndist`='0', `MovementType`='2' WHERE `guid`='64815';
UPDATE `creature` SET `position_x`='118.63420', `position_y`='6538.225', `position_z`='17.86095', `orientation`='0.42989430', `spawndist`='0', `MovementType`='2' WHERE `guid`='64802';
UPDATE `creature` SET `position_x`='-351.1588', `position_y`='6448.076', `position_z`='17.55387', `orientation`='3.85910000', `spawndist`='0', `MovementType`='2' WHERE `guid`='64801';
UPDATE `creature` SET `position_x`='-523.7516', `position_y`='6245.508', `position_z`='17.45743', `orientation`='1.56442900', `spawndist`='0', `MovementType`='2' WHERE `guid`='64800';
UPDATE `creature` SET `position_x`='-210.2179', `position_y`='6125.596', `position_z`='17.62072', `orientation`='1.16077400', `spawndist`='0', `MovementType`='2' WHERE `guid`='64797';
UPDATE `creature` SET `position_x`='-78.38639', `position_y`='6189.341', `position_z`='17.88467', `orientation`='6.26370500', `spawndist`='0', `MovementType`='2' WHERE `guid`='64796';
UPDATE `creature` SET `position_x`='-78.98242', `position_y`='6017.764', `position_z`='17.66536', `orientation`='0.57344440', `spawndist`='0', `MovementType`='2' WHERE `guid`='64777';
UPDATE `creature` SET `position_x`='-43.73242', `position_y`='5884.914', `position_z`='17.45743', `orientation`='0.35501620', `spawndist`='0', `MovementType`='2' WHERE `guid`='64778';
UPDATE `creature` SET `position_x`='313.18020', `position_y`='6152.549', `position_z`='17.46033', `orientation`='2.93340800', `spawndist`='0', `MovementType`='2' WHERE `guid`='64795';
UPDATE `creature` SET `position_x`='89.309680', `position_y`='6282.893', `position_z`='17.77784', `orientation`='0.41398640', `spawndist`='0', `MovementType`='2' WHERE `guid`='64794';
UPDATE `creature` SET `position_x`='126.12670', `position_y`='6470.626', `position_z`='17.64801', `orientation`='4.69448400', `spawndist`='0', `MovementType`='2' WHERE `guid`='64803';
UPDATE `creature` SET `position_x`='795.84690', `position_y`='6311.574', `position_z`='17.54469', `orientation`='3.36853600', `spawndist`='0', `MovementType`='2' WHERE `guid`='64814';
UPDATE `creature` SET `position_x`='414.74600', `position_y`='6075.844', `position_z`='17.45741', `orientation`='3.83487500', `spawndist`='0', `MovementType`='2' WHERE `guid`='64767';
UPDATE `creature` SET `position_x`='643.39220', `position_y`='6014.192', `position_z`='17.45765', `orientation`='4.17489100', `spawndist`='0', `MovementType`='2' WHERE `guid`='64793';
UPDATE `creature` SET `position_x`='653.00710', `position_y`='5946.727', `position_z`='17.45750', `orientation`='0.01021201', `spawndist`='0', `MovementType`='2' WHERE `guid`='64792';
UPDATE `creature` SET `position_x`='728.06670', `position_y`='5721.620', `position_z`='17.58706', `orientation`='2.69756700', `spawndist`='0', `MovementType`='2' WHERE `guid`='64786';
UPDATE `creature` SET `position_x`='217.79480', `position_y`='5845.467', `position_z`='17.45743', `orientation`='4.96982900', `spawndist`='0', `MovementType`='2' WHERE `guid`='64790';
UPDATE `creature` SET `position_x`='496.83920', `position_y`='5813.647', `position_z`='17.47707', `orientation`='4.01757300', `spawndist`='0', `MovementType`='2' WHERE `guid`='64791';
UPDATE `creature` SET `position_x`='145.40580', `position_y`='5650.260', `position_z`='17.72946', `orientation`='1.55038700', `spawndist`='0', `MovementType`='2' WHERE `guid`='64789';
UPDATE `creature` SET `position_x`='331.85130', `position_y`='5594.594', `position_z`='17.45743', `orientation`='1.48083200', `spawndist`='0', `MovementType`='2' WHERE `guid`='64785';
UPDATE `creature` SET `position_x`='325.29970', `position_y`='5562.129', `position_z`='17.46652', `orientation`='3.74235200', `spawndist`='0', `MovementType`='2' WHERE `guid`='64787';
UPDATE `creature` SET `position_x`='-48.40126', `position_y`='5785.888', `position_z`='17.49846', `orientation`='0.26757850', `spawndist`='0', `MovementType`='2' WHERE `guid`='64779';
UPDATE `creature` SET `position_x`='147.77260', `position_y`='5480.706', `position_z`='17.82800', `orientation`='2.04575900', `spawndist`='0', `MovementType`='2' WHERE `guid`='64788';
UPDATE `creature` SET `position_x`='111.00500', `position_y`='5410.658', `position_z`='17.54664', `orientation`='3.24172500', `spawndist`='0', `MovementType`='2' WHERE `guid`='64784';
UPDATE `creature` SET `position_x`='30.070310', `position_y`='5300.391', `position_z`='17.47193', `orientation`='2.40377200', `spawndist`='0', `MovementType`='2' WHERE `guid`='64782';
UPDATE `creature` SET `position_x`='-317.5130', `position_y`='5376.506', `position_z`='18.15571', `orientation`='3.06732300', `spawndist`='0', `MovementType`='2' WHERE `guid`='64771';
UPDATE `creature` SET `position_x`='-416.3661', `position_y`='5343.229', `position_z`='17.78715', `orientation`='4.88692200', `spawndist`='0', `MovementType`='2' WHERE `guid`='64770';
UPDATE `creature` SET `position_x`='-654.6096', `position_y`='5287.945', `position_z`='17.87333', `orientation`='3.85539600', `spawndist`='0', `MovementType`='2' WHERE `guid`='64769';
UPDATE `creature` SET `position_x`='-811.3798', `position_y`='5111.386', `position_z`='18.25694', `orientation`='2.74557200', `spawndist`='0', `MovementType`='2' WHERE `guid`='64768';
UPDATE `creature` SET `position_x`='-691.8828', `position_y`='5512.941', `position_z`='17.45820', `orientation`='4.53620100', `spawndist`='0', `MovementType`='2' WHERE `guid`='64781';
UPDATE `creature` SET `position_x`='-828.5936', `position_y`='5559.735', `position_z`='17.45746', `orientation`='2.01472100', `spawndist`='0', `MovementType`='2' WHERE `guid`='64780';
UPDATE `creature` SET `position_x`='-1008.476', `position_y`='5783.575', `position_z`='17.58502', `orientation`='5.20181300', `spawndist`='0', `MovementType`='2' WHERE `guid`='64773';
UPDATE `creature` SET `position_x`='-1016.571', `position_y`='5537.158', `position_z`='17.29149', `orientation`='5.57002100', `spawndist`='0', `MovementType`='2' WHERE `guid`='64772';
UPDATE `creature` SET `position_x`='-705.7288', `position_y`='6107.719', `position_z`='17.62308', `orientation`='0.98978480', `spawndist`='0', `MovementType`='2' WHERE `guid`='64799';
UPDATE `creature` SET `position_x`='-465.5783', `position_y`='5957.499', `position_z`='17.48334', `orientation`='5.35077600', `spawndist`='0', `MovementType`='2' WHERE `guid`='64774';
UPDATE `creature` SET `position_x`='-173.1217', `position_y`='6079.413', `position_z`='18.21042', `orientation`='4.15322400', `spawndist`='0', `MovementType`='2' WHERE `guid`='64775';
UPDATE `creature` SET `position_x`='-402.6640', `position_y`='6089.223', `position_z`='18.11551', `orientation`='5.99774100', `spawndist`='0', `MovementType`='2' WHERE `guid`='64776';
UPDATE `creature` SET `position_x`='-509.1312', `position_y`='6078.509', `position_z`='17.45808', `orientation`='1.36730600', `spawndist`='0', `MovementType`='2' WHERE `guid`='64798';
UPDATE `creature` SET `position_x`='-78.34321', `position_y`='5456.187', `position_z`='17.59141', `orientation`='6.13285000', `spawndist`='0', `MovementType`='2' WHERE `guid`='64783';

SET @GUID := '65451';
DELETE FROM `creature` WHERE `guid`=@GUID;
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
(@GUID, '18134', '530', '1', '0', '0', '26.245880', '6323.260', '17.45739', '0.9665335', '300', '0', '0', '5158', '0', '0', '2');

SET @GUID := '65274';
DELETE FROM `creature` WHERE `guid`=@GUID;
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
(@GUID, '18134', '530', '1', '0', '0', '-310.3329', '7413.911', '17.58691', '0.3345013', '300', '0', '0', '5158', '0', '0', '2');

-- Fen Strider
SET @GUID := '64818';
SET @POINT := '0';

DELETE FROM `creature_movement` WHERE `id`=@GUID;
INSERT INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) VALUES
(@GUID, @POINT := @POINT + '1', '173.8466', '7585.545', '17.49908', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '181.9009', '7614.029', '17.48481', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '217.3355', '7622.445', '17.62408', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '243.8657', '7637.000', '17.74902', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '255.2209', '7680.370', '17.50446', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '243.8657', '7637.000', '17.74902', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '217.3355', '7622.445', '17.62408', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '181.9009', '7614.029', '17.48481', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '173.8466', '7585.545', '17.49908', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '154.9363', '7579.639', '17.49909', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0');

-- Fen Strider
SET @GUID := '64817';
SET @POINT := '0';

DELETE FROM `creature_movement` WHERE `id`=@GUID;
INSERT INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) VALUES
(@GUID, @POINT := @POINT + '1', '130.8735', '7420.252', '17.95489', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '126.3401', '7461.870', '17.49908', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '133.5556', '7498.767', '17.49907', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '172.0435', '7526.779', '17.80572', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '183.1641', '7564.119', '17.49908', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '216.8052', '7572.568', '18.05743', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '258.3971', '7558.753', '17.49908', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '290.4745', '7531.033', '17.49907', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '293.8652', '7496.662', '17.46751', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '290.4745', '7531.033', '17.49907', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '258.3971', '7558.753', '17.49908', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '216.8052', '7572.568', '18.05743', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '183.1641', '7564.119', '17.49908', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '172.0435', '7526.779', '17.80572', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '133.5556', '7498.767', '17.49907', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '126.3401', '7461.870', '17.49908', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '130.8735', '7420.252', '17.95489', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '161.1225', '7403.103', '17.76771', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0');

-- Fen Strider
SET @GUID := '64813';
SET @POINT := '0';

DELETE FROM `creature_movement` WHERE `id`=@GUID;
INSERT INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) VALUES
(@GUID, @POINT := @POINT + '1', '-83.05686', '7678.935', '17.49904', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-51.65668', '7653.138', '17.86285', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-21.17806', '7639.248', '17.49908', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '13.914710', '7648.901', '17.49908', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '30.724610', '7670.820', '17.49908', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '61.474290', '7653.199', '17.49908', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '30.724610', '7670.820', '17.49908', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '13.914710', '7648.901', '17.49908', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-21.17806', '7639.248', '17.49908', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-51.65668', '7653.138', '17.86285', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-83.05686', '7678.935', '17.49904', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-89.03635', '7712.265', '17.49775', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0');

-- Fen Strider
SET @GUID := '64812';
SET @POINT := '0';

DELETE FROM `creature_movement` WHERE `id`=@GUID;
INSERT INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) VALUES
(@GUID, @POINT := @POINT + '1', '13.020830', '7582.005', '17.38190', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-20.41309', '7579.509', '17.49661', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-51.63726', '7580.237', '17.49340', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-83.06499', '7593.451', '17.99619', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-106.0209', '7625.454', '17.40077', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-127.7703', '7661.864', '17.16993', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-160.9040', '7655.143', '17.60179', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-127.7703', '7661.864', '17.16993', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-106.0209', '7625.454', '17.40077', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-83.06499', '7593.451', '17.99619', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-51.63726', '7580.237', '17.49340', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-20.41309', '7579.509', '17.49661', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '13.020830', '7582.005', '17.38190', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '60.029410', '7576.993', '17.44869', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0');

-- Fen Strider
SET @GUID := '64811';
SET @POINT := '0';

DELETE FROM `creature_movement` WHERE `id`=@GUID;
INSERT INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) VALUES
(@GUID, @POINT := @POINT + '1', '-191.1144', '7693.393', '17.83742', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-176.6953', '7662.959', '17.96790', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-144.7080', '7651.377', '17.17211', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-102.1886', '7628.811', '17.40077', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-83.05024', '7596.740', '17.61765', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-65.05643', '7576.566', '17.49340', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-92.54026', '7535.951', '17.49907', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-102.3241', '7505.399', '17.49907', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-89.50771', '7475.422', '17.46522', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-102.3241', '7505.399', '17.49907', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-92.54026', '7535.951', '17.49907', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-65.05643', '7576.566', '17.49340', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-83.05024', '7596.740', '17.61765', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-102.1886', '7628.811', '17.40077', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-144.7080', '7651.377', '17.17211', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-176.6953', '7662.959', '17.96790', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-191.1144', '7693.393', '17.83742', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-222.6461', '7705.538', '17.70993', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0');

-- Fen Strider
SET @GUID := '64810';
SET @POINT := '0';

DELETE FROM `creature_movement` WHERE `id`=@GUID;
INSERT INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) VALUES
(@GUID, @POINT := @POINT + '1', '-235.5527', '7450.708', '17.67271', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-207.1196', '7471.188', '17.76062', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-176.8844', '7491.043', '17.52821', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-142.6079', '7514.397', '17.49906', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-105.9493', '7532.406', '17.49907', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-70.28440', '7559.799', '17.62407', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-105.9493', '7532.406', '17.49907', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-142.6079', '7514.397', '17.49906', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-176.8844', '7491.043', '17.52821', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-207.1196', '7471.188', '17.76062', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-235.5527', '7450.708', '17.67271', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-230.2877', '7405.630', '17.75596', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0');

-- Fen Strider
SET @GUID := '64809';
SET @POINT := '0';

DELETE FROM `creature_movement` WHERE `id`=@GUID;
INSERT INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) VALUES
(@GUID, @POINT := @POINT + '1', '-71.93815', '7307.375', '17.60395', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-79.30469', '7347.694', '18.22894', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-78.17383', '7375.893', '17.74908', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-101.6073', '7395.806', '17.49907', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-129.7888', '7390.173', '17.63237', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-152.8423', '7399.184', '17.46074', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-187.6275', '7385.377', '18.82357', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-152.8423', '7399.184', '17.46074', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-129.7888', '7390.173', '17.63237', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-101.6073', '7395.806', '17.49907', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-78.17383', '7375.893', '17.74908', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-79.38607', '7347.979', '18.26507', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-71.93815', '7307.375', '17.60395', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-50.82888', '7284.149', '17.71222', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0');

-- Fen Strider
SET @GUID := '64808';
SET @POINT := '0';

DELETE FROM `creature_movement` WHERE `id`=@GUID;
INSERT INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) VALUES
(@GUID, @POINT := @POINT + '1', '12.200960', '7214.417', '17.49909', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '20.545680', '7251.821', '17.75818', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '24.637700', '7284.342', '17.64326', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-0.755317', '7303.553', '17.76629', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-31.08843', '7285.497', '17.87614', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-51.22146', '7254.379', '17.96319', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-69.97092', '7225.815', '17.65932', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-51.22146', '7254.379', '17.96319', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-31.08843', '7285.497', '17.87614', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-0.755317', '7303.553', '17.76629', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '24.637700', '7284.342', '17.64326', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '20.545680', '7251.821', '17.75818', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '12.200960', '7214.417', '17.49909', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-0.724392', '7192.214', '17.49909', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0');

-- Fen Strider
SET @GUID := '64807';
SET @POINT := '0';

DELETE FROM `creature_movement` WHERE `id`=@GUID;
INSERT INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) VALUES
(@GUID, @POINT := @POINT + '1', '103.3050', '7142.358', '17.74033', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '126.3356', '7176.794', '17.69943', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '150.4501', '7219.933', '17.51093', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '166.1125', '7260.476', '17.93367', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '168.7971', '7288.949', '17.76567', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '131.7120', '7306.268', '17.80821', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '168.7971', '7288.949', '17.76567', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '166.1125', '7260.476', '17.93367', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '150.4501', '7219.933', '17.51093', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '126.3356', '7176.794', '17.69943', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '103.3050', '7142.358', '17.74033', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '80.52647', '7112.708', '17.75442', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0');

-- Fen Strider
SET @GUID := '64805';
SET @POINT := '0';

DELETE FROM `creature_movement` WHERE `id`=@GUID;
INSERT INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) VALUES
(@GUID, @POINT := @POINT + '1', '-264.4938', '6952.116', '17.00809', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-273.4789', '6939.156', '17.17082', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-249.9142', '6896.670', '17.51774', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-220.5421', '6920.763', '17.85999', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-183.6320', '6937.141', '17.07717', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-164.5482', '6934.413', '18.18033', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-183.6320', '6937.141', '17.07717', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-220.5421', '6920.763', '17.85999', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-249.9142', '6896.670', '17.51774', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-273.4789', '6939.156', '17.17082', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-264.4938', '6952.116', '17.00809', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-254.6145', '6980.825', '17.49502', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0');

-- Fen Strider
SET @GUID := '64806';
SET @POINT := '0';

DELETE FROM `creature_movement` WHERE `id`=@GUID;
INSERT INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) VALUES
(@GUID, @POINT := @POINT + '1', '-103.8334', '6871.367', '17.72661', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-86.75879', '6892.248', '18.36382', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-55.50000', '6902.915', '17.05776', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-11.81196', '6910.387', '18.13013', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-55.43544', '6902.944', '17.06338', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-86.75879', '6892.248', '18.36382', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-103.8334', '6871.367', '17.72661', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-110.7676', '6852.486', '17.62408', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0');

-- Fen Strider
SET @GUID := '64816';
SET @POINT := '0';

DELETE FROM `creature_movement` WHERE `id`=@GUID;
INSERT INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) VALUES
(@GUID, @POINT := @POINT + '1', '117.3765', '6856.435', '18.00443', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '92.60135', '6873.068', '17.51661', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '93.71539', '6909.779', '17.80663', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '111.3916', '6943.985', '17.73260', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '124.3180', '6978.092', '17.78216', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '114.5778', '7005.351', '17.81010', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '124.3180', '6978.092', '17.78216', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '111.3916', '6943.985', '17.73260', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '93.71539', '6909.779', '17.80663', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '92.60135', '6873.068', '17.51661', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '117.3765', '6856.435', '18.00443', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '155.9221', '6855.781', '17.84563', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0');

-- Fen Strider
SET @GUID := '64804';
SET @POINT := '0';

DELETE FROM `creature_movement` WHERE `id`=@GUID;
INSERT INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) VALUES
(@GUID, @POINT := @POINT + '1', '111.82250', '6625.367', '17.66128', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '81.887260', '6657.840', '18.02862', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '57.409940', '6697.926', '17.65664', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '32.802850', '6731.247', '17.43388', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '17.846680', '6764.872', '17.76712', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '23.140410', '6783.049', '17.74185', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-17.14497', '6796.488', '17.49905', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-27.98785', '6834.597', '17.61574', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-17.14497', '6796.488', '17.49905', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '23.140410', '6783.049', '17.74185', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '17.846680', '6764.872', '17.76712', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '32.802850', '6731.247', '17.43388', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '57.409940', '6697.926', '17.65664', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '81.887260', '6657.840', '18.02862', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '111.70700', '6625.484', '17.49905', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '159.98630', '6623.709', '18.07342', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0');

-- Fen Strider
SET @GUID := '64815';
SET @POINT := '0';

DELETE FROM `creature_movement` WHERE `id`=@GUID;
INSERT INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) VALUES
(@GUID, @POINT := @POINT + '1', '345.2822', '6546.819', '17.77597', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '328.7995', '6581.982', '17.74350', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '308.4703', '6622.076', '18.09456', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '285.0680', '6633.693', '17.60875', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '312.5683', '6641.804', '17.59590', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '337.7431', '6654.514', '17.49312', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '341.8825', '6677.266', '17.46976', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '329.1877', '6699.689', '18.18023', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '341.8825', '6677.266', '17.46976', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '337.7431', '6654.514', '17.49312', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '312.5683', '6641.804', '17.59590', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '285.0680', '6633.693', '17.60875', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '308.4703', '6622.076', '18.09456', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '328.7995', '6581.982', '17.74350', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '345.2822', '6546.819', '17.77597', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '330.5563', '6525.298', '17.79731', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0');

-- Fen Strider
SET @GUID := '64802';
SET @POINT := '0';

DELETE FROM `creature_movement` WHERE `id`=@GUID;
INSERT INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) VALUES
(@GUID, @POINT := @POINT + '1', '156.8943', '6555.767', '17.81371', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '187.3945', '6539.424', '17.82612', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '210.4182', '6553.550', '17.87408', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '208.0010', '6595.793', '17.71889', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '209.3846', '6549.310', '17.87408', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '182.1638', '6512.291', '17.87408', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '207.6569', '6529.196', '17.79969', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '228.9973', '6516.417', '17.79969', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '259.3248', '6504.434', '17.89135', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '228.9973', '6516.417', '17.79969', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '207.6569', '6529.196', '17.79969', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '182.1638', '6512.291', '17.87408', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '209.3846', '6549.310', '17.87408', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '208.0010', '6595.793', '17.71889', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '210.4182', '6553.550', '17.87408', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '187.3945', '6539.424', '17.82612', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '156.8943', '6555.767', '17.81371', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '117.1081', '6537.705', '17.86170', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0');

-- Fen Strider
SET @GUID := '64801';
SET @POINT := '0';

DELETE FROM `creature_movement` WHERE `id`=@GUID;
INSERT INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) VALUES
(@GUID, @POINT := @POINT + '1', '-371.9603', '6429.923', '17.39659', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-404.1039', '6448.900', '17.32619', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-429.9254', '6472.811', '17.34434', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-443.1256', '6439.643', '18.01491', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-445.8972', '6402.299', '17.71830', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-440.8055', '6356.273', '17.97383', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-445.8972', '6402.299', '17.71830', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-443.1256', '6439.643', '18.01491', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-429.9254', '6472.811', '17.34434', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-404.1039', '6448.900', '17.32619', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-371.9603', '6429.923', '17.39659', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-340.8035', '6459.065', '16.77041', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0');

-- Fen Strider
SET @GUID := '64800';
SET @POINT := '0';

DELETE FROM `creature_movement` WHERE `id`=@GUID;
INSERT INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) VALUES
(@GUID, @POINT := @POINT + '1', '-523.5103', '6283.410', '17.46291', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-525.4007', '6319.861', '17.47090', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-526.9883', '6349.109', '17.03569', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-529.2988', '6395.000', '16.74332', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-524.3882', '6422.457', '16.61760', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-508.7605', '6455.354', '17.40051', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-478.1498', '6473.233', '17.39840', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-508.7605', '6455.354', '17.40051', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-524.3882', '6422.457', '16.61760', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-529.2988', '6395.000', '16.74332', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-526.9883', '6349.109', '17.03569', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-525.4007', '6319.861', '17.47090', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-523.5103', '6283.410', '17.46291', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-526.4996', '6248.299', '17.40700', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0');

-- Fen Strider
SET @GUID := '64797';
SET @POINT := '0';

DELETE FROM `creature_movement` WHERE `id`=@GUID;
INSERT INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) VALUES
(@GUID, @POINT := @POINT + '1', '-200.9498', '6146.919', '17.49910', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-192.5762', '6181.449', '17.49910', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-178.5324', '6205.397', '17.83854', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-143.0820', '6223.518', '17.49905', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-118.2504', '6237.651', '17.49905', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-87.31641', '6255.852', '17.49905', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-88.65408', '6288.479', '17.50447', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-87.31641', '6255.852', '17.49905', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-118.2504', '6237.651', '17.49905', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-143.0820', '6223.518', '17.49905', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-178.5324', '6205.397', '17.83854', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-192.5762', '6181.449', '17.49910', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-200.9498', '6146.919', '17.49910', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-211.2024', '6124.590', '17.79438', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0');

-- Fen Strider
SET @GUID := '64796';
SET @POINT := '0';

DELETE FROM `creature_movement` WHERE `id`=@GUID;
INSERT INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) VALUES
(@GUID, @POINT := @POINT + '1', '-46.33192', '6188.717', '17.84356', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-10.72135', '6183.765', '17.49905', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '7.3927950', '6180.204', '17.49813', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-32.07671', '6208.437', '17.49905', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-47.30773', '6239.940', '17.49905', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-92.32552', '6253.953', '17.49905', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-47.30773', '6239.940', '17.49905', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-32.07671', '6208.437', '17.49905', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '7.3927950', '6180.204', '17.49813', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-10.72135', '6183.765', '17.49905', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-46.33192', '6188.717', '17.84356', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-81.22320', '6188.234', '17.80721', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0');

-- Fen Strider
SET @GUID := '64777';
SET @POINT := '0';

DELETE FROM `creature_movement` WHERE `id`=@GUID;
INSERT INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) VALUES
(@GUID, @POINT := @POINT + '1', '-66.30209', '6025.953', '17.49908', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-32.80664', '6032.478', '17.49908', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '6.6539710', '6025.576', '17.62318', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '14.761500', '6059.701', '17.78932', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '21.658310', '6083.830', '17.63726', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '17.591910', '6043.186', '17.49818', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '22.185330', '6012.022', '17.49818', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '20.112740', '5979.879', '17.74711', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '29.064560', '5946.927', '17.49910', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '51.845810', '5928.761', '17.40910', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '29.064560', '5946.927', '17.49910', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '20.112740', '5979.879', '17.74711', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '22.185330', '6012.022', '17.49818', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '17.591910', '6043.186', '17.49818', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '21.658310', '6083.830', '17.63726', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '14.761500', '6059.701', '17.78932', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '6.6539710', '6025.576', '17.62318', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-32.80664', '6032.478', '17.49908', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-66.30209', '6025.953', '17.49908', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-81.81229', '6005.886', '17.50690', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0');

-- Fen Strider
SET @GUID := '64778';
SET @POINT := '0';

DELETE FROM `creature_movement` WHERE `id`=@GUID;
INSERT INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) VALUES
(@GUID, @POINT := @POINT + '1', '-15.28299', '5895.461', '17.49908', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '16.720810', '5907.729', '17.48191', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '46.725150', '5911.564', '17.40910', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '77.361760', '5883.848', '17.49910', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '89.863280', '5851.272', '17.49910', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '77.361760', '5883.848', '17.49910', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '46.725150', '5911.564', '17.40910', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '16.720810', '5907.729', '17.48191', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-15.28299', '5895.461', '17.49908', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-45.57878', '5883.192', '17.49907', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0');

-- Fen Strider
SET @GUID := '64795';
SET @POINT := '0';

DELETE FROM `creature_movement` WHERE `id`=@GUID;
INSERT INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) VALUES
(@GUID, @POINT := @POINT + '1', '284.0559', '6158.702', '17.49910', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '256.5737', '6160.586', '17.58199', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '232.4042', '6149.979', '17.83490', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '199.5684', '6149.379', '17.52180', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '166.1183', '6148.252', '17.49910', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '137.0536', '6171.277', '17.49908', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '101.7850', '6158.617', '17.72066', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '79.87749', '6178.270', '17.49908', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '83.44955', '6212.276', '17.50453', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '79.87749', '6178.270', '17.49908', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '101.7850', '6158.617', '17.72066', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '137.0536', '6171.277', '17.49908', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '166.1183', '6148.252', '17.49910', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '199.5684', '6149.379', '17.52180', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '232.4042', '6149.979', '17.83490', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '256.5737', '6160.586', '17.58199', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '284.0559', '6158.702', '17.49910', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '319.1818', '6152.123', '17.49453', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0');

-- Fen Strider
SET @GUID := '64794';
SET @POINT := '0';

DELETE FROM `creature_movement` WHERE `id`=@GUID;
INSERT INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) VALUES
(@GUID, @POINT := @POINT + '1', '115.5930', '6294.441', '17.62409', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '140.3005', '6278.077', '17.49908', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '177.4853', '6278.098', '17.61749', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '216.5504', '6271.099', '17.49909', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '251.1006', '6271.895', '17.49814', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '279.4986', '6248.872', '17.59603', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '300.3756', '6220.479', '17.40025', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '336.6295', '6207.977', '17.40447', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '300.3756', '6220.479', '17.40025', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '279.4986', '6248.872', '17.59603', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '251.1006', '6271.895', '17.49814', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '216.5504', '6271.099', '17.49909', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '177.4853', '6278.098', '17.61749', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '140.3005', '6278.077', '17.49908', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '115.5930', '6294.441', '17.62409', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '90.39225', '6284.697', '17.58397', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0');

-- Fen Strider
SET @GUID := '64803';
SET @POINT := '0';

DELETE FROM `creature_movement` WHERE `id`=@GUID;
INSERT INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) VALUES
(@GUID, @POINT := @POINT + '1', '125.6221', '6442.443', '17.49907', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '136.6278', '6412.673', '17.49909', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '174.9317', '6390.463', '17.49308', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '211.8344', '6377.598', '17.49909', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '240.2501', '6356.440', '17.49910', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '265.3102', '6326.917', '17.49910', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '288.2079', '6287.810', '17.47691', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '313.9202', '6294.730', '17.49910', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '288.2079', '6287.810', '17.47691', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '265.3102', '6326.917', '17.49910', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '240.2501', '6356.440', '17.49910', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '211.8344', '6377.598', '17.49909', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '174.9317', '6390.463', '17.49308', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '136.6278', '6412.673', '17.49909', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '125.6221', '6442.443', '17.49907', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '122.3177', '6473.401', '17.90341', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0');

-- Fen Strider
SET @GUID := '64814';
SET @POINT := '0';

DELETE FROM `creature_movement` WHERE `id`=@GUID;
INSERT INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) VALUES
(@GUID, @POINT := @POINT + '1', '753.8679', '6301.880', '17.40890', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '722.5497', '6282.599', '17.36270', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '703.7663', '6252.408', '17.49536', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '689.2173', '6222.884', '17.46375', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '682.1595', '6188.333', '17.47886', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '671.9225', '6158.111', '17.60386', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '652.0421', '6132.491', '17.55671', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '671.9225', '6158.111', '17.60386', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '682.1595', '6188.333', '17.47886', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '689.2173', '6222.884', '17.46375', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '703.7663', '6252.408', '17.49536', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '722.5497', '6282.599', '17.36270', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '753.8679', '6301.880', '17.40890', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '796.7829', '6309.162', '17.56356', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0');

-- Fen Strider
SET @GUID := '64767';
SET @POINT := '0';

DELETE FROM `creature_movement` WHERE `id`=@GUID;
INSERT INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) VALUES
(@GUID, @POINT := @POINT + '1', '383.5587', '6049.932', '17.49520', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '363.8349', '6009.804', '17.49909', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '366.5155', '5967.035', '17.49909', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '385.7895', '5939.004', '17.90575', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '432.4685', '5922.287', '17.86790', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '466.1224', '5901.139', '17.53805', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '432.4685', '5922.287', '17.86790', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '385.7895', '5939.004', '17.90575', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '366.5155', '5967.035', '17.49909', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '363.8349', '6009.804', '17.49909', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '383.5587', '6049.932', '17.49520', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '414.4973', '6075.681', '17.49904', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0');

-- Fen Strider
SET @GUID := '64793';
SET @POINT := '0';

DELETE FROM `creature_movement` WHERE `id`=@GUID;
INSERT INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) VALUES
(@GUID, @POINT := @POINT + '1', '620.0464', '5975.023', '17.49909', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '589.2954', '5958.260', '17.49910', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '578.2181', '5920.502', '17.49912', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '551.3502', '5898.041', '17.49910', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '504.4940', '5887.850', '17.49912', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '471.8289', '5891.637', '17.88327', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '437.9240', '5919.541', '17.94552', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '471.8289', '5891.637', '17.88327', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '504.4940', '5887.850', '17.49912', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '551.3502', '5898.041', '17.49910', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '578.2181', '5920.502', '17.49912', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '589.2954', '5958.260', '17.49910', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '620.0464', '5975.023', '17.49909', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '646.5626', '6013.930', '17.49910', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0');

-- Fen Strider
SET @GUID := '64792';
SET @POINT := '0';

DELETE FROM `creature_movement` WHERE `id`=@GUID;
INSERT INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) VALUES
(@GUID, @POINT := @POINT + '1', '683.2247', '5947.035', '17.75097', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '707.1666', '5940.431', '17.53866', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '732.2723', '5906.607', '17.55844', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '741.6340', '5876.525', '17.18231', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '737.8778', '5839.425', '17.60259', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '736.2857', '5811.721', '18.36215', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '720.3111', '5781.002', '18.42918', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '715.8815', '5745.822', '17.63034', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '690.7528', '5729.215', '17.49909', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '715.8815', '5745.822', '17.63034', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '720.3111', '5781.002', '18.42918', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '736.2857', '5811.721', '18.36215', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '737.8778', '5839.425', '17.60259', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '741.6340', '5876.525', '17.18231', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '732.2723', '5906.607', '17.55844', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '707.1666', '5940.431', '17.53866', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '683.2247', '5947.035', '17.75097', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '649.7184', '5950.690', '17.49909', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0');

-- Fen Strider
SET @GUID := '64786';
SET @POINT := '0';

DELETE FROM `creature_movement` WHERE `id`=@GUID;
INSERT INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) VALUES
(@GUID, @POINT := @POINT + '1', '711.5545', '5729.475', '17.49909', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '668.0522', '5732.768', '17.49909', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '632.2855', '5728.686', '17.49908', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '616.3730', '5762.456', '17.49908', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '618.9044', '5798.506', '17.50095', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '613.7986', '5816.898', '17.50571', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '615.4912', '5779.825', '17.50095', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '615.1094', '5743.104', '17.49908', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '609.7659', '5722.993', '17.49908', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '580.8484', '5694.557', '17.77685', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '558.3204', '5672.167', '17.49909', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '580.8484', '5694.557', '17.77685', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '609.7659', '5722.993', '17.49908', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '615.1094', '5743.104', '17.49908', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '615.4912', '5779.825', '17.50095', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '613.7986', '5816.898', '17.50571', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '618.9044', '5798.506', '17.50095', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '616.3730', '5762.456', '17.49908', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '632.2855', '5728.686', '17.49908', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '668.0522', '5732.768', '17.49909', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '711.5545', '5729.475', '17.49909', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '735.8550', '5712.859', '17.57299', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0');

-- Fen Strider
SET @GUID := '64790';
SET @POINT := '0';

DELETE FROM `creature_movement` WHERE `id`=@GUID;
INSERT INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) VALUES
(@GUID, @POINT := @POINT + '1', '225.5676', '5815.944', '17.49908', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '236.6264', '5779.723', '17.49908', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '275.3563', '5779.654', '17.49909', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '317.3354', '5769.745', '17.49909', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '349.7367', '5756.506', '17.37620', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '380.3604', '5749.097', '17.41897', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '409.9687', '5716.992', '17.39267', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '435.5963', '5689.513', '17.40821', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '455.8582', '5653.635', '17.49909', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '435.5963', '5689.513', '17.40821', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '409.9687', '5716.992', '17.39267', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '380.3604', '5749.097', '17.41897', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '349.7367', '5756.506', '17.37620', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '317.3354', '5769.745', '17.49909', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '275.3563', '5779.654', '17.49909', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '236.6264', '5779.723', '17.49908', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '225.5676', '5815.944', '17.49908', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '222.9546', '5852.004', '17.49909', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0');

-- Fen Strider
SET @GUID := '64791';
SET @POINT := '0';

DELETE FROM `creature_movement` WHERE `id`=@GUID;
INSERT INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) VALUES
(@GUID, @POINT := @POINT + '1', '465.9463', '5776.576', '17.41164', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '448.3675', '5751.428', '17.46052', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '408.7079', '5770.821', '17.37896', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '386.6821', '5754.554', '17.41897', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '369.6011', '5710.395', '17.59549', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '352.3516', '5677.601', '17.49909', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '373.3804', '5720.132', '17.53165', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '414.3424', '5717.605', '17.44284', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '445.9049', '5718.170', '17.39267', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '487.5580', '5712.121', '17.39835', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '445.9049', '5718.170', '17.39267', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '414.3424', '5717.605', '17.44284', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '373.3804', '5720.132', '17.53165', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '352.3516', '5677.601', '17.49909', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '369.6011', '5710.395', '17.59549', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '386.6821', '5754.554', '17.41897', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '408.7079', '5770.821', '17.37896', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '448.3675', '5751.428', '17.46052', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '465.9463', '5776.576', '17.41164', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '491.8669', '5812.825', '17.49908', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0');

-- Fen Strider
SET @GUID := '64789';
SET @POINT := '0';

DELETE FROM `creature_movement` WHERE `id`=@GUID;
INSERT INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) VALUES
(@GUID, @POINT := @POINT + '1', '146.0272', '5680.703', '17.66429', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '144.9383', '5719.785', '17.49661', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '156.3608', '5733.671', '17.49710', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '178.2785', '5735.448', '17.68371', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '210.1719', '5724.709', '17.65166', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '225.4639', '5762.411', '17.31537', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '264.2412', '5782.001', '17.49908', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '278.3910', '5814.496', '17.57609', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '282.7552', '5842.217', '17.45109', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '278.3910', '5814.496', '17.57609', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '264.2412', '5782.001', '17.49908', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '225.4639', '5762.411', '17.31537', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '210.1719', '5724.709', '17.65166', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '178.2785', '5735.448', '17.68371', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '156.3608', '5733.671', '17.49710', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '144.9383', '5719.785', '17.49661', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '146.0272', '5680.703', '17.66429', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '146.1095', '5651.729', '17.67784', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0');

-- Fen Strider
SET @GUID := '64785';
SET @POINT := '0';

DELETE FROM `creature_movement` WHERE `id`=@GUID;
INSERT INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) VALUES
(@GUID, @POINT := @POINT + '1', '335.1364', '5631.010', '17.49908', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '324.8022', '5649.672', '17.49908', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '282.8491', '5652.730', '17.49909', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '244.4814', '5650.017', '17.49908', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '215.2133', '5641.461', '17.49908', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '202.7905', '5615.530', '17.55622', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '182.4033', '5597.265', '17.49908', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '138.8866', '5615.225', '17.46576', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '90.24013', '5621.603', '17.49909', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '138.8866', '5615.225', '17.46576', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '182.4033', '5597.265', '17.49908', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '202.7905', '5615.530', '17.55622', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '215.2133', '5641.461', '17.49908', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '244.4814', '5650.017', '17.49908', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '282.8491', '5652.730', '17.49909', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '324.8022', '5649.672', '17.49908', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '335.1364', '5631.010', '17.49908', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '332.5746', '5589.228', '17.49909', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0');

-- Fen Strider
SET @GUID := '64787';
SET @POINT := '0';

DELETE FROM `creature_movement` WHERE `id`=@GUID;
INSERT INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) VALUES
(@GUID, @POINT := @POINT + '1', '299.4445', '5544.412', '17.37348', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '264.2738', '5531.262', '17.92775', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '232.8887', '5527.525', '17.52870', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '199.9682', '5558.708', '17.60653', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '166.1176', '5583.089', '17.49910', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '148.7548', '5566.394', '17.49909', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '146.8485', '5519.998', '17.49908', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '148.7548', '5566.394', '17.49909', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '166.1176', '5583.089', '17.49910', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '199.9682', '5558.708', '17.60653', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '232.8887', '5527.525', '17.52870', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '264.2738', '5531.262', '17.92775', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '299.4445', '5544.412', '17.37348', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '330.2489', '5563.043', '17.41451', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0');

-- Fen Strider
SET @GUID := '64779';
SET @POINT := '0';

DELETE FROM `creature_movement` WHERE `id`=@GUID;
INSERT INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) VALUES
(@GUID, @POINT := @POINT + '1', '-31.21408', '5790.600', '17.80244', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '6.8998480', '5785.177', '17.49909', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '12.504770', '5748.672', '17.75924', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '8.4481330', '5700.218', '17.46301', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-18.70009', '5680.117', '17.49910', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-48.19379', '5666.413', '17.49910', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-82.09049', '5668.125', '17.46832', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-102.2704', '5658.955', '16.82566', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-82.09049', '5668.125', '17.46832', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-48.19379', '5666.413', '17.49910', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-18.70009', '5680.117', '17.49910', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '8.4481330', '5700.218', '17.46301', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '12.504770', '5748.672', '17.75924', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '6.8998480', '5785.177', '17.49909', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-31.21408', '5790.600', '17.80244', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-48.96680', '5785.517', '17.49908', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0');

-- Fen Strider
SET @GUID := '64788';
SET @POINT := '0';

DELETE FROM `creature_movement` WHERE `id`=@GUID;
INSERT INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) VALUES
(@GUID, @POINT := @POINT + '1', '132.1394', '5511.107', '17.49908', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '96.54264', '5530.071', '17.52178', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '72.50792', '5567.374', '17.49907', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '37.02224', '5578.584', '17.49907', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '2.194553', '5577.092', '17.49908', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '37.02224', '5578.584', '17.49907', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '72.50792', '5567.374', '17.49907', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '96.54264', '5530.071', '17.52178', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '132.1394', '5511.107', '17.49908', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '151.6769', '5479.063', '17.48717', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0');

-- Fen Strider
SET @GUID := '64784';
SET @POINT := '0';

DELETE FROM `creature_movement` WHERE `id`=@GUID;
INSERT INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) VALUES
(@GUID, @POINT := @POINT + '1', '75.71604', '5407.112', '17.62408', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '80.71908', '5393.210', '17.99909', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '110.2024', '5368.683', '17.47716', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '145.1066', '5345.202', '17.49734', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '143.4600', '5322.411', '17.95959', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '146.4954', '5283.085', '17.65803', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '143.4600', '5322.411', '17.95959', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '145.1066', '5345.202', '17.49734', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '110.2024', '5368.683', '17.47716', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '80.71908', '5393.210', '17.99909', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '75.71604', '5407.112', '17.62408', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '115.1097', '5414.181', '17.49907', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0');

-- Fen Strider
SET @GUID := '64782';
SET @POINT := '0';

DELETE FROM `creature_movement` WHERE `id`=@GUID;
INSERT INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) VALUES
(@GUID, @POINT := @POINT + '1', '4.9317490', '5323.244', '17.62409', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-26.47841', '5356.318', '17.85734', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-65.86523', '5378.005', '18.42885', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-98.33811', '5381.044', '17.91549', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-131.7958', '5398.479', '17.76864', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-98.33811', '5381.044', '17.91549', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-65.86523', '5378.005', '18.42885', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-26.47841', '5356.318', '17.85734', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '4.9317490', '5323.244', '17.62409', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '31.187070', '5302.142', '17.49909', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0');

-- Fen Strider
SET @GUID := '64783';
SET @POINT := '0';

DELETE FROM `creature_movement` WHERE `id`=@GUID;
INSERT INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) VALUES
(@GUID, @POINT := @POINT + '1', '-61.99067', '5453.709', '17.49905', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-28.12771', '5460.756', '17.49905', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-19.83192', '5492.910', '17.55667', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-16.03722', '5458.905', '17.49905', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '0.0417750', '5430.892', '17.49905', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '12.500110', '5406.847', '17.48977', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-23.77734', '5374.397', '17.72959', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '12.500110', '5406.847', '17.48977', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '0.0417750', '5430.892', '17.49905', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-16.03722', '5458.905', '17.49905', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-19.83192', '5492.910', '17.55667', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-28.12771', '5460.756', '17.49905', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-61.99067', '5453.709', '17.49905', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-86.24381', '5460.781', '17.76970', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0');

-- Fen Strider
SET @GUID := '64771';
SET @POINT := '0';

DELETE FROM `creature_movement` WHERE `id`=@GUID;
INSERT INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) VALUES
(@GUID, @POINT := @POINT + '1', '-356.3358', '5379.395', '17.87109', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-378.2636', '5382.861', '17.86846', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-387.7549', '5408.788', '17.74820', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-415.6922', '5415.858', '17.86433', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-441.6070', '5418.342', '17.76424', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-403.3750', '5415.424', '17.86433', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-384.9058', '5415.971', '17.74820', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-361.3589', '5427.584', '17.81659', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-330.2524', '5423.488', '17.93323', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-322.9159', '5399.029', '17.95394', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-331.5492', '5380.434', '17.98934', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-356.3358', '5379.395', '17.87109', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0');

-- Fen Strider
SET @GUID := '64770';
SET @POINT := '0';

DELETE FROM `creature_movement` WHERE `id`=@GUID;
INSERT INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) VALUES
(@GUID, @POINT := @POINT + '1', '-449.3398', '5342.336', '17.79391', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-477.4060', '5357.548', '17.87980', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-509.2152', '5366.260', '18.13867', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-548.3535', '5342.372', '17.76349', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-577.9679', '5352.116', '17.68461', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-622.0549', '5344.427', '17.49935', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-577.9679', '5352.116', '17.68461', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-548.3535', '5342.372', '17.76349', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-509.2152', '5366.260', '18.13867', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-477.4060', '5357.548', '17.87980', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-449.3398', '5342.336', '17.79391', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-414.6554', '5345.143', '17.79263', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0');

-- Fen Strider
SET @GUID := '64769';
SET @POINT := '0';

DELETE FROM `creature_movement` WHERE `id`=@GUID;
INSERT INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) VALUES
(@GUID, @POINT := @POINT + '1', '-686.9243', '5259.956', '17.87972', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-711.1509', '5226.004', '17.73018', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-740.3218', '5196.946', '17.88305', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-711.1509', '5226.004', '17.73018', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-686.9243', '5259.956', '17.87972', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-656.3967', '5287.788', '17.88201', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0');

-- Fen Strider
SET @GUID := '64768';
SET @POINT := '0';

DELETE FROM `creature_movement` WHERE `id`=@GUID;
INSERT INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) VALUES
(@GUID, @POINT := @POINT + '1', '-843.6936', '5124.897', '17.93274', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-882.0682', '5139.952', '17.88305', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-902.0120', '5122.662', '17.88305', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-916.0054', '5086.631', '17.88360', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-940.8605', '5075.036', '17.76662', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-979.3464', '5083.667', '18.55328', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-1017.911', '5099.622', '17.75860', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-1065.218', '5100.495', '17.50860', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-1017.911', '5099.622', '17.75860', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-979.3464', '5083.667', '18.55328', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-940.8605', '5075.036', '17.76662', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-916.0054', '5086.631', '17.88360', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-902.0120', '5122.662', '17.88305', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-882.0682', '5139.952', '17.88305', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-843.6936', '5124.897', '17.93274', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-812.0039', '5107.383', '18.71229', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0');

-- Fen Strider
SET @GUID := '64781';
SET @POINT := '0';

DELETE FROM `creature_movement` WHERE `id`=@GUID;
INSERT INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) VALUES
(@GUID, @POINT := @POINT + '1', '-696.3304', '5487.959', '17.49909', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-711.4406', '5466.509', '17.49908', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-741.9182', '5456.830', '17.49908', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-772.4839', '5443.940', '17.62408', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-807.5790', '5456.918', '17.49909', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-830.6971', '5478.230', '17.49908', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-826.8116', '5506.765', '17.49908', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-825.1914', '5546.160', '17.49905', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-826.8116', '5506.765', '17.49908', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-830.6971', '5478.230', '17.49908', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-807.5790', '5456.918', '17.49909', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-772.4839', '5443.940', '17.62408', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-741.9182', '5456.830', '17.49908', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-711.4406', '5466.509', '17.49908', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-696.3304', '5487.959', '17.49909', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-691.9963', '5512.772', '17.47927', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0');

-- Fen Strider
SET @GUID := '64780';
SET @POINT := '0';

DELETE FROM `creature_movement` WHERE `id`=@GUID;
INSERT INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) VALUES
(@GUID, @POINT := @POINT + '1', '-845.2606', '5594.781', '17.49979', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-869.1836', '5620.646', '18.20904', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-893.4542', '5636.297', '17.48650', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-907.9579', '5615.547', '17.49908', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-906.6673', '5589.928', '17.49907', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-907.9193', '5554.827', '17.49909', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-889.6183', '5537.365', '17.49909', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-891.3976', '5511.300', '17.49909', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-907.3821', '5509.792', '17.48495', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-891.3976', '5511.300', '17.49909', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-889.6183', '5537.365', '17.49909', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-907.9193', '5554.827', '17.49909', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-906.6673', '5589.928', '17.49907', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-907.9579', '5615.547', '17.49908', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-893.4542', '5636.297', '17.48650', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-869.1836', '5620.646', '18.20904', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-845.2606', '5594.781', '17.49979', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-827.6858', '5557.872', '17.49905', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0');

-- Fen Strider
SET @GUID := '64773';
SET @POINT := '0';

DELETE FROM `creature_movement` WHERE `id`=@GUID;
INSERT INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) VALUES
(@GUID, @POINT := @POINT + '1', '-987.5788', '5744.341', '17.49909', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-952.7982', '5722.180', '17.49813', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-984.4896', '5717.205', '17.49909', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-1025.188', '5707.518', '17.49699', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-984.4896', '5717.205', '17.49909', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-952.7982', '5722.180', '17.49813', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-987.5788', '5744.341', '17.49909', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-1007.783', '5784.594', '17.51414', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0');

-- Fen Strider
SET @GUID := '64772';
SET @POINT := '0';

DELETE FROM `creature_movement` WHERE `id`=@GUID;
INSERT INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) VALUES
(@GUID, @POINT := @POINT + '1', '-996.6628', '5519.937', '17.52150', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-992.8121', '5500.504', '17.52346', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-999.6793', '5481.102', '17.49909', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-1009.807', '5457.827', '17.48708', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-1013.846', '5423.110', '17.49909', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-1009.807', '5457.827', '17.48708', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-999.6793', '5481.102', '17.49909', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-992.8121', '5500.504', '17.52346', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-996.6628', '5519.937', '17.52150', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-1017.966', '5538.429', '17.10202', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0');

-- Fen Strider
SET @GUID := '64799';
SET @POINT := '0';

DELETE FROM `creature_movement` WHERE `id`=@GUID;
INSERT INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) VALUES
(@GUID, @POINT := @POINT + '1', '-690.3274', '6131.137', '18.09341', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-650.1953', '6128.293', '17.31914', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-609.8489', '6106.838', '17.56293', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-582.1886', '6080.161', '17.77252', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-579.3903', '6044.984', '17.49909', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-590.5842', '6024.271', '17.49909', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-626.2255', '6025.920', '18.17206', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-657.6616', '6026.399', '18.71043', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-684.5820', '6051.611', '17.75496', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-706.7420', '6091.642', '17.47389', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-706.4898', '6107.640', '17.53576', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0');

-- Fen Strider
SET @GUID := '64774';
SET @POINT := '0';

DELETE FROM `creature_movement` WHERE `id`=@GUID;
INSERT INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) VALUES
(@GUID, @POINT := @POINT + '1', '-457.9000', '5947.151', '17.48606', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-444.5015', '5918.243', '17.49350', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-443.1750', '5893.204', '17.42938', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-422.4767', '5919.401', '17.59870', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-416.6625', '5941.392', '17.40360', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-400.2587', '5966.586', '17.40360', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-383.6613', '5986.046', '17.40285', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-354.2553', '5978.438', '17.49909', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-344.5939', '5950.701', '17.49909', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-308.6082', '5944.290', '17.49689', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-344.5939', '5950.701', '17.49909', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-354.2553', '5978.438', '17.49909', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-383.6613', '5986.046', '17.40285', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-400.2587', '5966.586', '17.40360', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-416.6625', '5941.392', '17.40360', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-422.4767', '5919.401', '17.59870', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-443.1750', '5893.204', '17.42938', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-444.5015', '5918.243', '17.49350', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-457.9000', '5947.151', '17.48606', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-470.4798', '5963.944', '17.90614', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0');

-- Fen Strider
SET @GUID := '64775';
SET @POINT := '0';

DELETE FROM `creature_movement` WHERE `id`=@GUID;
INSERT INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) VALUES
(@GUID, @POINT := @POINT + '1', '-186.3317', '6058.303', '18.51708', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-214.7991', '6041.711', '18.32871', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-242.0302', '6019.454', '17.71815', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-240.6162', '5982.624', '17.52607', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-225.5439', '5957.163', '17.63308', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-251.2079', '5941.814', '17.49773', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-275.2058', '5931.042', '17.62954', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-294.5674', '5946.367', '17.50184', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-323.2102', '5957.246', '17.49909', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-350.0803', '5951.836', '17.49909', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-384.0290', '5946.546', '17.48655', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-350.0803', '5951.836', '17.49909', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-323.2102', '5957.246', '17.49909', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-294.5674', '5946.367', '17.50184', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-275.2058', '5931.042', '17.62954', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-251.2079', '5941.814', '17.49773', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-225.5439', '5957.163', '17.63308', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-240.6162', '5982.624', '17.52607', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-242.0302', '6019.454', '17.71815', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-214.7991', '6041.711', '18.32871', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-186.3317', '6058.303', '18.51708', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-164.5527', '6085.354', '18.31150', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0');

-- Fen Strider
SET @GUID := '64776';
SET @POINT := '0';

DELETE FROM `creature_movement` WHERE `id`=@GUID;
INSERT INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) VALUES
(@GUID, @POINT := @POINT + '1', '-367.4536', '6078.913', '17.49908', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-332.6654', '6080.386', '18.02447', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-301.7705', '6095.704', '17.49908', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-276.0217', '6132.753', '17.93902', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-253.0732', '6165.761', '17.57794', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-217.2867', '6168.313', '17.49910', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-190.5273', '6160.305', '17.38075', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-217.2867', '6168.313', '17.49910', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-253.0732', '6165.761', '17.57794', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-276.0217', '6132.753', '17.93902', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-301.7705', '6095.704', '17.49908', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-332.6654', '6080.386', '18.02447', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-367.4536', '6078.913', '17.49908', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-403.6659', '6090.355', '18.23721', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0');

-- Fen Strider
SET @GUID := '64798';
SET @POINT := '0';

DELETE FROM `creature_movement` WHERE `id`=@GUID;
INSERT INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) VALUES
(@GUID, @POINT := @POINT + '1', '-504.0656', '6103.058', '17.57066', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-467.0757', '6111.034', '17.89768', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-449.6576', '6111.891', '17.64181', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-463.5695', '6132.191', '16.73776', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-466.8561', '6165.977', '17.51208', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-458.3137', '6202.167', '17.98819', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-447.2309', '6217.370', '17.48819', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-494.9173', '6222.194', '17.49908', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-447.2309', '6217.370', '17.48819', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-458.3137', '6202.167', '17.98819', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-466.8561', '6165.977', '17.51208', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-463.5695', '6132.191', '16.73776', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-449.6576', '6111.891', '17.64181', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-467.0757', '6111.034', '17.89768', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-504.0656', '6103.058', '17.57066', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-509.7590', '6077.143', '17.54438', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0');

-- Fen Strider
SET @GUID := '65451';
SET @POINT := '0';

DELETE FROM `creature_movement` WHERE `id`=@GUID;
INSERT INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) VALUES
(@GUID, @POINT := @POINT + '1', '45.89670', '6351.776', '17.91318', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '73.51573', '6385.518', '17.44332', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '103.8388', '6402.013', '17.46575', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '140.1335', '6394.010', '17.49909', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '182.9640', '6388.439', '17.49308', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '223.5615', '6374.221', '17.49909', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '256.5877', '6388.807', '17.49910', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '251.3643', '6428.167', '17.49908', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '256.2328', '6456.200', '17.50299', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '251.3643', '6428.167', '17.49908', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '256.5877', '6388.807', '17.49910', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '223.5615', '6374.221', '17.49909', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '182.9640', '6388.439', '17.49308', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '140.1335', '6394.010', '17.49909', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '103.8388', '6402.013', '17.46575', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '73.51573', '6385.518', '17.44332', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '45.89670', '6351.776', '17.91318', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '24.42795', '6321.603', '17.49905', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0');

-- Fen Strider
SET @GUID := '65274';
SET @POINT := '0';

DELETE FROM `creature_movement` WHERE `id`=@GUID;
INSERT INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) VALUES
(@GUID, @POINT := @POINT + '1', '-285.5298', '7422.531', '17.65393', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-254.9120', '7428.493', '17.75332', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-247.2956', '7450.507', '17.54930', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-245.4115', '7483.657', '17.39584', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-247.9870', '7522.858', '17.70378', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-247.1969', '7559.842', '17.57414', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-247.4430', '7578.940', '17.37952', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-236.7838', '7612.135', '17.50561', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-216.7610', '7626.368', '17.48851', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-236.7838', '7612.135', '17.50561', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-247.4430', '7578.940', '17.37952', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-247.1969', '7559.842', '17.57414', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-247.9870', '7522.858', '17.70378', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-245.4115', '7483.657', '17.39584', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-247.2956', '7450.507', '17.54930', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-254.9120', '7428.493', '17.75332', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-285.5298', '7422.531', '17.65393', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-305.5315', '7416.800', '17.66984', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0');

-- + added creature_movement to a Shattered Hand Berserker outside of the Hellfire Citadel
-- + This Shattered Hand Berserker was spawned three times, removed two.
-- Shattered Hand Berserker
DELETE FROM `creature` WHERE `guid` IN ('58280', '58296');
UPDATE `creature` SET `position_x`='-432.5425', `position_y`='3016.569', `position_z`='-16.84295', `orientation`='5.780838', `spawndist`='0', `MovementType`='2' WHERE `guid`='58295';

SET @GUID := '58295';
SET @POINT := '0';

DELETE FROM `creature_movement` WHERE `id`=@GUID;
INSERT INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) VALUES
(@GUID, @POINT := @POINT + '1', '-406.9757', '3022.114', '-16.14812', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-384.4923', '3027.486', '-16.35291', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-369.7765', '3031.631', '-16.32663', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-332.8234', '3039.824', '-16.66688', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-323.3225', '3038.536', '-16.45017', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-318.3123', '3033.358', '-15.99788', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-289.7150', '3032.069', '-8.329719', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-279.9789', '3038.296', '-5.068746', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-282.3609', '3047.840', '-4.396113', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-269.6367', '3050.605', '-4.484854', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-242.5817', '3041.765', '-4.301134', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-230.1253', '3038.011', '-4.320513', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-242.5817', '3041.765', '-4.301134', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-269.6367', '3050.605', '-4.484854', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-282.3609', '3047.840', '-4.396113', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-279.9789', '3038.296', '-5.068746', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-289.7150', '3032.069', '-8.329719', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-318.3123', '3033.358', '-15.99788', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-323.3225', '3038.536', '-16.45017', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-331.8813', '3040.104', '-16.65558', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-369.7765', '3031.631', '-16.32663', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-384.4923', '3027.486', '-16.35291', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-406.3353', '3022.268', '-16.14812', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '-433.0263', '3016.659', '-16.49373', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0');


-- Hellfire Peninsula - Subjugator Shi'aziv & Yalqiz
-- + added creature_movement
UPDATE creature_template SET MovementType=2 WHERE entry IN(19282,19335);
UPDATE `creature` SET `position_x`='54.600360', `position_y`='1805.335', `position_z`='49.12101', `orientation`='1.304091', `MovementType`='2' WHERE `id`='19282'; -- Subjugator Shi'aziv
UPDATE `creature` SET `position_x`='-500.3803', `position_y`='1718.960', `position_z`='60.87181', `orientation`='3.734013', `MovementType`='2' WHERE `id`='19335'; -- Subjugator Yalqiz

-- Subjugator Shi'aziv
SET @ENTRY := '19282';
SET @POINT := '0';

DELETE FROM `creature_movement_template` WHERE `entry`=@ENTRY;
INSERT INTO `creature_movement_template` (`entry`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) VALUES
(@ENTRY, @POINT := @POINT + '1', '61.394100', '1830.152', '42.73946', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@ENTRY, @POINT := @POINT + '1', '56.415040', '1842.111', '42.80701', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@ENTRY, @POINT := @POINT + '1', '45.974290', '1851.916', '45.31885', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@ENTRY, @POINT := @POINT + '1', '24.965390', '1857.521', '54.07980', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@ENTRY, @POINT := @POINT + '1', '12.386280', '1857.223', '59.04086', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@ENTRY, @POINT := @POINT + '1', '2.0895180', '1853.448', '63.62301', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@ENTRY, @POINT := @POINT + '1', '-10.91016', '1844.119', '69.45425', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@ENTRY, @POINT := @POINT + '1', '-15.76009', '1833.515', '71.19009', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@ENTRY, @POINT := @POINT + '1', '-13.49230', '1816.223', '66.91240', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@ENTRY, @POINT := @POINT + '1', '-13.57107', '1802.379', '64.31023', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@ENTRY, @POINT := @POINT + '1', '-13.02865', '1783.143', '61.35052', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@ENTRY, @POINT := @POINT + '1', '-3.038954', '1762.001', '55.16345', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@ENTRY, @POINT := @POINT + '1', '9.0533860', '1752.676', '51.47461', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@ENTRY, @POINT := @POINT + '1', '21.688150', '1744.582', '48.89075', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@ENTRY, @POINT := @POINT + '1', '30.346680', '1750.987', '49.41211', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@ENTRY, @POINT := @POINT + '1', '42.703990', '1761.808', '49.77660', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@ENTRY, @POINT := @POINT + '1', '48.186630', '1777.874', '51.45816', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@ENTRY, @POINT := @POINT + '1', '55.352320', '1790.654', '51.11136', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@ENTRY, @POINT := @POINT + '1', '57.881180', '1800.581', '49.18709', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@ENTRY, @POINT := @POINT + '1', '59.407880', '1812.943', '46.47115', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0');

-- Subjugator Yalqiz
SET @ENTRY := '19335';
SET @POINT := '0';

DELETE FROM `creature_movement_template` WHERE `entry`=@ENTRY;
INSERT INTO `creature_movement_template` (`entry`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) VALUES
(@ENTRY, @POINT := @POINT + '1', '-516.5024', '1708.104', '57.89871', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@ENTRY, @POINT := @POINT + '1', '-533.4302', '1692.131', '53.87750', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@ENTRY, @POINT := @POINT + '1', '-532.1133', '1686.306', '51.65182', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@ENTRY, @POINT := @POINT + '1', '-526.8643', '1677.809', '47.36276', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@ENTRY, @POINT := @POINT + '1', '-510.7744', '1675.963', '47.51254', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@ENTRY, @POINT := @POINT + '1', '-490.4778', '1679.859', '49.24321', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@ENTRY, @POINT := @POINT + '1', '-482.0579', '1687.759', '51.38897', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@ENTRY, @POINT := @POINT + '1', '-480.3202', '1701.180', '55.15236', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@ENTRY, @POINT := @POINT + '1', '-489.2083', '1714.007', '58.48391', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@ENTRY, @POINT := @POINT + '1', '-496.4688', '1719.324', '60.74733', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@ENTRY, @POINT := @POINT + '1', '-505.4727', '1714.474', '59.55276', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0');

-- Arzeth the Merciless
-- + added creature_movement
-- + fixed movementspeed
SET @ENTRY := '19354';

UPDATE `creature` SET `position_x`='-660.0555', `position_y`='4799.76', `position_z`='49.16517', `orientation`='0.08726646', `spawndist`='0', `MovementType`='2' WHERE `id`=@ENTRY;
UPDATE `creature_template` SET `SpeedWalk`=('2.5' / '2.5'), `SpeedRun`=('9.72222' / '7.0'),MovementType=2 WHERE `Entry`=@ENTRY;

SET @POINT := '0';

DELETE FROM `creature_movement` WHERE `id`=(SELECT `guid` FROM `creature` WHERE `id`=@ENTRY);
DELETE FROM `creature_movement_template` WHERE `entry`=@ENTRY;
INSERT INTO `creature_movement_template` (`entry`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) VALUES
(@ENTRY, @POINT := @POINT + '1', '-621.8750', '4798.958', '39.37829', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@ENTRY, @POINT := @POINT + '1', '-582.3430', '4800.257', '35.04599', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@ENTRY, @POINT := @POINT + '1', '-546.5514', '4799.893', '33.73782', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@ENTRY, @POINT := @POINT + '1', '-512.5808', '4799.929', '31.99234', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@ENTRY, @POINT := @POINT + '1', '-480.9247', '4799.970', '28.30345', '30000', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@ENTRY, @POINT := @POINT + '1', '-542.1885', '4799.724', '33.74368', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@ENTRY, @POINT := @POINT + '1', '-570.3811', '4800.449', '34.47715', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@ENTRY, @POINT := @POINT + '1', '-592.3809', '4800.299', '35.85215', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@ENTRY, @POINT := @POINT + '1', '-617.6182', '4800.323', '38.70739', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@ENTRY, @POINT := @POINT + '1', '-659.4124', '4799.819', '49.09505', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@ENTRY, @POINT := @POINT + '1', '-659.4124', '4799.819', '49.09505', '30000', '0', '0', '0', '0', '0', '0', '0', '0', '6.091199', '0', '0');


-- Mistress of Doom
-- + removed double spawns
-- + added waypoints
DELETE FROM `creature` WHERE `guid` IN ('68722', '68723', '68724');

UPDATE `creature` SET `position_x`='408.4745', `position_y`='3264.019', `position_z`='74.64674', `orientation`='1.301382', `spawndist`='0', `MovementType`='2' WHERE `guid`='68725';
UPDATE `creature` SET `position_x`='384.3363', `position_y`='3257.237', `position_z`='74.62700', `orientation`='2.503842', `spawndist`='0', `MovementType`='2' WHERE `guid`='68726';
UPDATE `creature` SET `position_x`='329.0792', `position_y`='3319.538', `position_z`='71.74088', `orientation`='1.021431', `spawndist`='0', `MovementType`='2' WHERE `guid`='68727';

-- Mistress of Doom
SET @GUID := '68725';
SET @POINT := '0';

DELETE FROM `creature_movement` WHERE `id`=@GUID;
INSERT INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) VALUES
(@GUID, @POINT := @POINT + '1', '411.5036', '3274.989', '74.68412', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '408.0285', '3293.335', '74.58907', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '393.1323', '3301.217', '74.58429', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '383.5548', '3298.820', '74.53128', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '376.8429', '3288.129', '74.32133', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '378.8334', '3272.364', '74.51328', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '387.7648', '3258.965', '74.60986', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '378.8334', '3272.364', '74.51328', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '376.8651', '3287.953', '74.34109', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '383.5548', '3298.820', '74.53128', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '393.1323', '3301.217', '74.58429', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '408.0285', '3293.335', '74.58907', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '411.5036', '3274.989', '74.68412', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '407.5233', '3263.597', '74.55978', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0');

-- Mistress of Doom
SET @GUID := '68726';
SET @POINT := '0';

DELETE FROM `creature_movement` WHERE `id`=@GUID;
INSERT INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) VALUES
(@GUID, @POINT := @POINT + '1', '372.4839', '3266.020', '74.55065', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '377.4411', '3280.069', '74.39575', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '378.1626', '3299.152', '74.52856', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '384.6801', '3308.861', '74.54260', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '402.9049', '3304.486', '74.55357', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '413.7969', '3286.998', '74.61218', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '421.3358', '3276.941', '74.55165', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '416.6131', '3261.531', '74.55400', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '421.3358', '3276.941', '74.55165', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '413.7969', '3286.998', '74.61218', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '402.9049', '3304.486', '74.55357', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '384.6801', '3308.861', '74.54260', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '378.1626', '3299.152', '74.52856', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '377.4411', '3280.069', '74.39575', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '372.4839', '3266.020', '74.55065', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '384.5248', '3256.693', '74.51141', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0');

-- Mistress of Doom
SET @GUID := '68727';
SET @POINT := '0';

DELETE FROM `creature_movement` WHERE `id`=@GUID;
INSERT INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) VALUES
(@GUID, @POINT := @POINT + '1', '344.4051', '3344.649', '67.40168', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '368.5956', '3364.738', '63.81692', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '400.1786', '3349.047', '62.79062', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '421.0149', '3339.626', '62.06211', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '449.1115', '3343.667', '65.47438', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '468.0690', '3360.591', '77.34941', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '449.1115', '3343.667', '65.47438', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '421.0149', '3339.626', '62.06211', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '400.1786', '3349.047', '62.79062', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '368.5956', '3364.738', '63.81692', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '344.4051', '3344.649', '67.40168', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '327.5585', '3321.236', '72.71063', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0');


-- Mo'arg Forgefiend
-- + added one (missing) spawn, should be 2 spawns per camp
-- + added 6x creature_movement
SET @GUID := '59516';

DELETE FROM `creature` WHERE `guid`=@GUID;
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
(@GUID, '16946', '530', '1', '0', '0', '346.7749', '2238.071', '119.0799', '4.683131', '300	', '0', '0', '5158', '0', '0', '2');

UPDATE `creature` SET `position_x`='352.1310', `position_y`='2184.019', `position_z`='118.1270', `orientation`='1.2042770', `spawndist`='0', `MovementType`='2' WHERE `guid`='58976';
UPDATE `creature` SET `position_x`='386.5509', `position_y`='2500.263', `position_z`='150.6602', `orientation`='0.9773844', `spawndist`='0', `MovementType`='2' WHERE `guid`='58977';
UPDATE `creature` SET `position_x`='465.6350', `position_y`='2500.467', `position_z`='158.4418', `orientation`='1.6961510', `spawndist`='0', `MovementType`='2' WHERE `guid`='58978';
UPDATE `creature` SET `position_x`='599.9173', `position_y`='2796.910', `position_z`='222.7564', `orientation`='1.6038840', `spawndist`='0', `MovementType`='2' WHERE `guid`='58979';
UPDATE `creature` SET `position_x`='518.7199', `position_y`='2787.585', `position_z`='213.9373', `orientation`='3.4208450', `spawndist`='0', `MovementType`='2' WHERE `guid`='58980';

-- Mo'arg Forgefiend
SET @GUID := '58976';
SET @POINT := '0';

DELETE FROM `creature_movement` WHERE `id`=@GUID;
INSERT INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) VALUES
(@GUID, @POINT := @POINT + '1', '372.0695', '2182.736', '118.8579', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '366.0564', '2166.699', '120.0926', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '340.2971', '2157.962', '118.1013', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '366.6094', '2145.635', '119.6319', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '383.8836', '2119.436', '116.9982', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '421.0439', '2133.671', '115.8215', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '440.9657', '2161.880', '116.4515', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '440.4790', '2203.000', '116.4050', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '403.2045', '2208.661', '118.3625', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '401.5527', '2174.006', '118.6883', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '401.5527', '2174.006', '118.6883', '30000', '0', '0', '0', '0', '0', '0', '0', '0', '6.265732', '0', '0'),
(@GUID, @POINT := @POINT + '1', '399.2104', '2191.823', '118.6424', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '404.8127', '2217.122', '118.2728', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '396.1408', '2236.705', '118.3385', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '368.2067', '2248.499', '119.0556', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '342.0200', '2226.372', '118.8797', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '346.1346', '2207.040', '118.0938', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '336.8192', '2195.197', '118.9098', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '336.6985', '2183.829', '118.4553', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '351.0053', '2183.569', '117.9545', '30000', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0');

-- Mo'arg Forgefiend
SET @GUID := '58977';
SET @POINT := '0';

DELETE FROM `creature_movement` WHERE `id`=@GUID;
INSERT INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) VALUES
(@GUID, @POINT := @POINT + '1', '399.4823', '2519.981', '149.8910', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '406.9428', '2533.171', '148.9787', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '448.0670', '2525.669', '156.6973', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '456.0293', '2499.882', '155.5886', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '434.0441', '2479.981', '147.4321', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '399.7392', '2485.552', '148.1255', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '381.8427', '2486.963', '151.5587', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '367.8258', '2472.422', '154.5495', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '356.6569', '2483.301', '157.8432', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '351.3705', '2500.854', '158.6630', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '357.8864', '2513.297', '157.3211', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '367.5656', '2531.288', '153.4439', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '398.3242', '2527.413', '149.3065', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '395.4784', '2500.946', '149.1616', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '387.3022', '2499.525', '150.4558', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0');

-- Mo'arg Forgefiend
SET @GUID := '58978';
SET @POINT := '0';

DELETE FROM `creature_movement` WHERE `id`=@GUID;
INSERT INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) VALUES
(@GUID, @POINT := @POINT + '1', '462.0394', '2528.989', '161.5348', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '434.7895', '2532.606', '153.8877', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '404.5577', '2534.032', '148.8993', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '370.8831', '2546.889', '152.6021', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '339.7602', '2528.979', '162.1630', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '342.0280', '2510.275', '161.7880', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '344.9770', '2491.313', '161.0138', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '340.4948', '2467.489', '161.9072', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '364.9402', '2466.368', '155.6125', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '377.1379', '2448.386', '152.2784', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '400.8357', '2454.159', '145.8710', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '435.5023', '2459.958', '143.4676', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '464.7622', '2488.856', '156.6905', '30000', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '435.5023', '2459.958', '143.4676', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '400.8357', '2454.159', '145.8710', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '377.1379', '2448.386', '152.2784', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '364.9402', '2466.368', '155.6125', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '340.4948', '2467.489', '161.9072', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '344.9770', '2491.313', '161.0138', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '342.0280', '2510.275', '161.7880', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '339.7602', '2528.979', '162.1630', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '370.8831', '2546.889', '152.6021', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '404.5577', '2534.032', '148.8993', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '434.7895', '2532.606', '153.8877', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '462.0394', '2528.989', '161.5348', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '464.5326', '2500.708', '158.1301', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0');

-- Mo'arg Forgefiend
SET @GUID := '58979';
SET @POINT := '0';

DELETE FROM `creature_movement` WHERE `id`=@GUID;
INSERT INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) VALUES
(@GUID, @POINT := @POINT + '1', '588.9837', '2829.249', '219.6789', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '561.5564', '2834.301', '216.8961', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '536.1294', '2829.619', '214.0218', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '512.0079', '2818.889', '210.7213', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '500.9739', '2804.032', '208.2527', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '512.1336', '2782.000', '210.7045', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '533.5712', '2764.431', '214.2345', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '563.5703', '2764.285', '221.0970', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '596.6008', '2779.521', '224.6383', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '600.4445', '2798.629', '222.4285', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '599.4482', '2811.425', '219.6513', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '588.9837', '2829.249', '219.6789', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0');

-- Mo'arg Forgefiend
SET @GUID := '58980';
SET @POINT := '0';

DELETE FROM `creature_movement` WHERE `id`=@GUID;
INSERT INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) VALUES
(@GUID, @POINT := @POINT + '1', '517.9482', '2799.258', '214.2896', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '511.5638', '2804.806', '212.4117', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '515.9873', '2827.771', '211.1559', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '561.7473', '2830.094', '216.9400', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '583.3977', '2830.366', '218.8746', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '583.2642', '2813.984', '221.0345', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '572.8552', '2810.281', '221.3586', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '568.3524', '2799.524', '218.4582', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '574.8149', '2798.920', '218.5063', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '574.8149', '2798.920', '218.5063', '30000', '0', '0', '0', '0', '0', '0', '0', '0', '0.03490658', '0', '0'),
(@GUID, @POINT := @POINT + '1', '572.8413', '2788.211', '222.1392', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '581.5683', '2772.743', '222.3933', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '566.0281', '2761.802', '222.5634', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '546.7617', '2766.647', '216.6348', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '515.7907', '2761.146', '211.7126', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '485.8520', '2762.804', '201.7888', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '491.7773', '2799.334', '205.7678', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '529.5818', '2800.269', '214.2635', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '517.9482', '2799.258', '214.2896', '30000', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0');

-- Mo'arg Forgefiend
SET @GUID := '59516';
SET @POINT := '0';

DELETE FROM `creature_movement` WHERE `id`=@GUID;
INSERT INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) VALUES
(@GUID, @POINT := @POINT + '1', '346.0393', '2213.309', '117.9897', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '337.5000', '2166.667', '118.4763', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '365.4210', '2150.536', '119.2263', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '373.9099', '2131.246', '119.1636', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '401.7648', '2127.054', '116.1107', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '411.4461', '2144.292', '116.6813', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '438.6080', '2145.507', '116.6686', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '465.7404', '2144.955', '119.1745', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '464.4419', '2177.614', '119.7132', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '459.4780', '2209.128', '118.3973', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '449.0729', '2228.586', '118.2239', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '437.4313', '2244.417', '117.8247', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '400.4362', '2243.787', '116.9467', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '366.4103', '2246.238', '119.1055', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@GUID, @POINT := @POINT + '1', '338.0428', '2233.658', '118.9569', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0');


-- Tagar Spinebreaker
-- + removed a second spawn of this unique creature
-- + added movement
SET @ENTRY := '19443';

DELETE FROM `creature` WHERE `guid`='85987';

UPDATE `creature` SET `position_x`='-440.0492', `position_y`='2970.065', `position_z`='7.508814', `orientation`='4.585325', `spawntimesecs`='1800', `spawndist`='0', `MovementType`='2' WHERE `id`=@ENTRY;
UPDATE creature_template SET MovementType=2 WHERE `entry`=@ENTRY;

-- Tagar Spinebreaker
SET @ENTRY := '19443';
SET @POINT := '0';

DELETE FROM `creature_movement_template` WHERE `entry`=@ENTRY;
INSERT INTO `creature_movement_template` (`entry`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) VALUES
(@ENTRY, @POINT := @POINT + '1', '-444.4490', '2935.541', '17.37160', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@ENTRY, @POINT := @POINT + '1', '-431.3665', '2916.574', '19.33275', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@ENTRY, @POINT := @POINT + '1', '-410.3391', '2897.444', '16.29737', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@ENTRY, @POINT := @POINT + '1', '-431.3771', '2863.750', '23.18233', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@ENTRY, @POINT := @POINT + '1', '-458.1045', '2835.910', '34.73303', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@ENTRY, @POINT := @POINT + '1', '-474.8221', '2803.170', '44.83184', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@ENTRY, @POINT := @POINT + '1', '-482.1413', '2780.444', '50.48174', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@ENTRY, @POINT := @POINT + '1', '-464.1363', '2757.426', '49.97451', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@ENTRY, @POINT := @POINT + '1', '-437.0097', '2742.231', '45.18545', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@ENTRY, @POINT := @POINT + '1', '-417.4688', '2742.025', '40.00116', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@ENTRY, @POINT := @POINT + '1', '-394.2155', '2733.282', '34.96598', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@ENTRY, @POINT := @POINT + '1', '-370.1947', '2739.405', '27.66764', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@ENTRY, @POINT := @POINT + '1', '-344.3984', '2742.731', '22.04218', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@ENTRY, @POINT := @POINT + '1', '-328.4409', '2738.122', '21.60171', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@ENTRY, @POINT := @POINT + '1', '-322.7293', '2726.575', '23.19661', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@ENTRY, @POINT := @POINT + '1', '-324.5292', '2712.571', '25.90339', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@ENTRY, @POINT := @POINT + '1', '-333.8743', '2701.390', '29.52560', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@ENTRY, @POINT := @POINT + '1', '-343.8678', '2682.296', '35.19290', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@ENTRY, @POINT := @POINT + '1', '-360.7138', '2656.587', '43.49288', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@ENTRY, @POINT := @POINT + '1', '-353.4090', '2634.224', '39.98934', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@ENTRY, @POINT := @POINT + '1', '-340.1870', '2619.544', '42.69732', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@ENTRY, @POINT := @POINT + '1', '-315.1161', '2608.520', '41.10941', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@ENTRY, @POINT := @POINT + '1', '-315.1175', '2592.784', '41.11610', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@ENTRY, @POINT := @POINT + '1', '-326.0264', '2576.755', '44.59876', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@ENTRY, @POINT := @POINT + '1', '-319.7011', '2564.647', '44.56841', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@ENTRY, @POINT := @POINT + '1', '-306.6035', '2559.670', '43.15996', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@ENTRY, @POINT := @POINT + '1', '-303.0155', '2544.127', '42.16570', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@ENTRY, @POINT := @POINT + '1', '-308.2558', '2522.323', '42.33207', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@ENTRY, @POINT := @POINT + '1', '-324.7303', '2514.007', '39.77470', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@ENTRY, @POINT := @POINT + '1', '-341.2596', '2517.181', '42.19988', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@ENTRY, @POINT := @POINT + '1', '-356.1326', '2524.870', '43.68792', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@ENTRY, @POINT := @POINT + '1', '-372.5794', '2518.969', '44.36980', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@ENTRY, @POINT := @POINT + '1', '-384.2734', '2500.578', '43.13384', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@ENTRY, @POINT := @POINT + '1', '-382.4619', '2489.239', '35.94414', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@ENTRY, @POINT := @POINT + '1', '-366.6036', '2481.708', '27.00704', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@ENTRY, @POINT := @POINT + '1', '-336.8055', '2478.964', '29.27730', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@ENTRY, @POINT := @POINT + '1', '-316.8047', '2478.671', '38.34806', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@ENTRY, @POINT := @POINT + '1', '-300.1674', '2481.248', '40.28580', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@ENTRY, @POINT := @POINT + '1', '-291.5379', '2471.795', '40.73017', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@ENTRY, @POINT := @POINT + '1', '-299.4210', '2460.934', '41.18763', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@ENTRY, @POINT := @POINT + '1', '-293.6134', '2451.263', '42.09815', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@ENTRY, @POINT := @POINT + '1', '-290.9243', '2436.451', '43.87549', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@ENTRY, @POINT := @POINT + '1', '-297.5943', '2428.966', '44.06300', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@ENTRY, @POINT := @POINT + '1', '-296.6749', '2419.157', '44.97658', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@ENTRY, @POINT := @POINT + '1', '-282.9760', '2416.102', '46.81825', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@ENTRY, @POINT := @POINT + '1', '-276.8629', '2401.864', '49.40187', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@ENTRY, @POINT := @POINT + '1', '-277.8916', '2385.711', '48.82200', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@ENTRY, @POINT := @POINT + '1', '-275.5488', '2365.848', '50.60513', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@ENTRY, @POINT := @POINT + '1', '-285.8336', '2348.487', '51.24258', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@ENTRY, @POINT := @POINT + '1', '-270.1180', '2336.440', '54.06826', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@ENTRY, @POINT := @POINT + '1', '-258.9032', '2325.336', '56.74421', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@ENTRY, @POINT := @POINT + '1', '-245.2461', '2312.125', '51.73371', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@ENTRY, @POINT := @POINT + '1', '-224.2681', '2309.814', '49.53231', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@ENTRY, @POINT := @POINT + '1', '-193.9720', '2316.471', '55.18532', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@ENTRY, @POINT := @POINT + '1', '-177.4344', '2325.307', '62.10829', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@ENTRY, @POINT := @POINT + '1', '-168.6765', '2338.462', '60.56923', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@ENTRY, @POINT := @POINT + '1', '-167.8729', '2349.308', '58.74965', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@ENTRY, @POINT := @POINT + '1', '-168.5200', '2364.601', '56.28956', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@ENTRY, @POINT := @POINT + '1', '-169.8706', '2379.328', '53.68618', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@ENTRY, @POINT := @POINT + '1', '-174.0273', '2386.164', '51.76809', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@ENTRY, @POINT := @POINT + '1', '-181.4586', '2393.358', '50.29006', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@ENTRY, @POINT := @POINT + '1', '-181.6118', '2401.965', '49.19543', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@ENTRY, @POINT := @POINT + '1', '-170.8668', '2413.743', '48.18652', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@ENTRY, @POINT := @POINT + '1', '-155.9585', '2418.159', '44.62416', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@ENTRY, @POINT := @POINT + '1', '-143.6135', '2429.302', '48.67031', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@ENTRY, @POINT := @POINT + '1', '-137.6620', '2446.288', '45.33263', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@ENTRY, @POINT := @POINT + '1', '-129.5334', '2458.865', '47.11806', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@ENTRY, @POINT := @POINT + '1', '-118.4858', '2470.283', '46.80577', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@ENTRY, @POINT := @POINT + '1', '-125.0594', '2492.918', '46.72667', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@ENTRY, @POINT := @POINT + '1', '-142.4668', '2500.675', '45.44909', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@ENTRY, @POINT := @POINT + '1', '-163.2269', '2495.378', '43.84887', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@ENTRY, @POINT := @POINT + '1', '-175.1656', '2507.058', '42.24383', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@ENTRY, @POINT := @POINT + '1', '-177.5515', '2518.257', '40.71404', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@ENTRY, @POINT := @POINT + '1', '-171.8750', '2527.604', '41.07635', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@ENTRY, @POINT := @POINT + '1', '-162.3206', '2537.286', '42.56754', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@ENTRY, @POINT := @POINT + '1', '-146.7115', '2543.318', '41.38029', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@ENTRY, @POINT := @POINT + '1', '-140.9195', '2565.580', '41.34489', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@ENTRY, @POINT := @POINT + '1', '-161.9319', '2585.890', '39.86102', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@ENTRY, @POINT := @POINT + '1', '-168.3633', '2594.324', '39.29259', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@ENTRY, @POINT := @POINT + '1', '-162.8318', '2603.218', '39.82217', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@ENTRY, @POINT := @POINT + '1', '-164.8098', '2612.353', '39.95963', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@ENTRY, @POINT := @POINT + '1', '-166.3010', '2628.302', '41.23965', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@ENTRY, @POINT := @POINT + '1', '-169.2782', '2651.493', '41.80959', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@ENTRY, @POINT := @POINT + '1', '-173.8719', '2678.044', '42.39021', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@ENTRY, @POINT := @POINT + '1', '-167.0316', '2686.460', '43.08601', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@ENTRY, @POINT := @POINT + '1', '-136.6367', '2692.575', '45.80075', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@ENTRY, @POINT := @POINT + '1', '-109.7790', '2700.458', '50.21601', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@ENTRY, @POINT := @POINT + '1', '-105.7824', '2731.501', '52.56415', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@ENTRY, @POINT := @POINT + '1', '-118.9187', '2750.039', '49.62867', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@ENTRY, @POINT := @POINT + '1', '-130.3567', '2775.545', '41.48006', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@ENTRY, @POINT := @POINT + '1', '-152.8521', '2788.343', '37.01861', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@ENTRY, @POINT := @POINT + '1', '-186.1224', '2795.503', '26.38808', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@ENTRY, @POINT := @POINT + '1', '-188.4375', '2810.328', '24.27693', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@ENTRY, @POINT := @POINT + '1', '-175.6934', '2802.433', '28.90193', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@ENTRY, @POINT := @POINT + '1', '-161.5930', '2806.948', '32.17490', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@ENTRY, @POINT := @POINT + '1', '-149.4453', '2809.883', '35.48875', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@ENTRY, @POINT := @POINT + '1', '-148.4477', '2826.183', '33.97642', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@ENTRY, @POINT := @POINT + '1', '-165.3999', '2836.788', '26.73048', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@ENTRY, @POINT := @POINT + '1', '-180.7325', '2840.167', '23.00070', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@ENTRY, @POINT := @POINT + '1', '-165.3999', '2836.788', '26.73048', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@ENTRY, @POINT := @POINT + '1', '-148.4477', '2826.183', '33.97642', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@ENTRY, @POINT := @POINT + '1', '-149.4453', '2809.883', '35.48875', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@ENTRY, @POINT := @POINT + '1', '-161.5930', '2806.948', '32.17490', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@ENTRY, @POINT := @POINT + '1', '-175.5444', '2802.353', '28.92329', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@ENTRY, @POINT := @POINT + '1', '-188.2305', '2810.365', '24.27693', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@ENTRY, @POINT := @POINT + '1', '-186.1224', '2795.503', '26.38808', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@ENTRY, @POINT := @POINT + '1', '-152.8521', '2788.343', '37.01861', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@ENTRY, @POINT := @POINT + '1', '-130.3567', '2775.545', '41.48006', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@ENTRY, @POINT := @POINT + '1', '-118.9187', '2750.039', '49.62867', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@ENTRY, @POINT := @POINT + '1', '-105.7824', '2731.501', '52.56415', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@ENTRY, @POINT := @POINT + '1', '-109.7790', '2700.458', '50.21601', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@ENTRY, @POINT := @POINT + '1', '-136.5448', '2692.581', '46.02975', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@ENTRY, @POINT := @POINT + '1', '-167.0316', '2686.460', '43.08601', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@ENTRY, @POINT := @POINT + '1', '-173.8719', '2678.044', '42.39021', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@ENTRY, @POINT := @POINT + '1', '-169.2782', '2651.493', '41.80959', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@ENTRY, @POINT := @POINT + '1', '-166.3010', '2628.302', '41.23965', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@ENTRY, @POINT := @POINT + '1', '-164.8098', '2612.353', '39.95963', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@ENTRY, @POINT := @POINT + '1', '-162.8318', '2603.218', '39.82217', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@ENTRY, @POINT := @POINT + '1', '-168.3633', '2594.324', '39.29259', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@ENTRY, @POINT := @POINT + '1', '-161.9319', '2585.890', '39.86102', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@ENTRY, @POINT := @POINT + '1', '-141.0879', '2565.726', '41.35856', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@ENTRY, @POINT := @POINT + '1', '-146.7115', '2543.318', '41.38029', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@ENTRY, @POINT := @POINT + '1', '-162.3206', '2537.286', '42.56754', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@ENTRY, @POINT := @POINT + '1', '-171.8750', '2527.604', '41.07635', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@ENTRY, @POINT := @POINT + '1', '-177.5515', '2518.257', '40.71404', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@ENTRY, @POINT := @POINT + '1', '-175.1656', '2507.058', '42.24383', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@ENTRY, @POINT := @POINT + '1', '-163.2269', '2495.378', '43.84887', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@ENTRY, @POINT := @POINT + '1', '-142.4668', '2500.675', '45.44909', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@ENTRY, @POINT := @POINT + '1', '-125.0594', '2492.918', '46.72667', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@ENTRY, @POINT := @POINT + '1', '-118.4858', '2470.283', '46.80577', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@ENTRY, @POINT := @POINT + '1', '-129.5334', '2458.865', '47.11806', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@ENTRY, @POINT := @POINT + '1', '-137.6620', '2446.288', '45.33263', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@ENTRY, @POINT := @POINT + '1', '-143.6135', '2429.302', '48.67031', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@ENTRY, @POINT := @POINT + '1', '-155.9585', '2418.159', '44.62416', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@ENTRY, @POINT := @POINT + '1', '-170.8668', '2413.743', '48.18652', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@ENTRY, @POINT := @POINT + '1', '-181.6118', '2401.965', '49.19543', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@ENTRY, @POINT := @POINT + '1', '-181.4586', '2393.358', '50.29006', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@ENTRY, @POINT := @POINT + '1', '-174.0259', '2386.168', '51.76711', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@ENTRY, @POINT := @POINT + '1', '-169.8706', '2379.328', '53.68618', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@ENTRY, @POINT := @POINT + '1', '-168.5200', '2364.601', '56.28956', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@ENTRY, @POINT := @POINT + '1', '-167.8729', '2349.308', '58.74965', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@ENTRY, @POINT := @POINT + '1', '-168.6765', '2338.462', '60.56923', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@ENTRY, @POINT := @POINT + '1', '-177.4344', '2325.307', '62.10829', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@ENTRY, @POINT := @POINT + '1', '-193.9720', '2316.471', '55.18532', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@ENTRY, @POINT := @POINT + '1', '-224.2681', '2309.814', '49.53231', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@ENTRY, @POINT := @POINT + '1', '-244.9998', '2311.902', '51.73676', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@ENTRY, @POINT := @POINT + '1', '-258.9032', '2325.336', '56.74421', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@ENTRY, @POINT := @POINT + '1', '-270.1180', '2336.440', '54.06826', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@ENTRY, @POINT := @POINT + '1', '-285.8336', '2348.487', '51.24258', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@ENTRY, @POINT := @POINT + '1', '-275.5303', '2365.616', '50.66873', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@ENTRY, @POINT := @POINT + '1', '-277.8916', '2385.711', '48.82200', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@ENTRY, @POINT := @POINT + '1', '-276.8629', '2401.864', '49.40187', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@ENTRY, @POINT := @POINT + '1', '-282.9760', '2416.102', '46.81825', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@ENTRY, @POINT := @POINT + '1', '-296.6749', '2419.157', '44.97658', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@ENTRY, @POINT := @POINT + '1', '-297.5943', '2428.966', '44.06300', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@ENTRY, @POINT := @POINT + '1', '-290.9243', '2436.451', '43.87549', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@ENTRY, @POINT := @POINT + '1', '-293.5898', '2451.217', '42.06214', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@ENTRY, @POINT := @POINT + '1', '-299.4210', '2460.934', '41.18763', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@ENTRY, @POINT := @POINT + '1', '-291.5379', '2471.795', '40.73017', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@ENTRY, @POINT := @POINT + '1', '-300.1674', '2481.248', '40.28580', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@ENTRY, @POINT := @POINT + '1', '-316.4770', '2478.663', '38.43131', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@ENTRY, @POINT := @POINT + '1', '-336.4766', '2478.955', '29.18672', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@ENTRY, @POINT := @POINT + '1', '-366.6036', '2481.708', '27.00704', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@ENTRY, @POINT := @POINT + '1', '-382.4619', '2489.239', '35.94414', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@ENTRY, @POINT := @POINT + '1', '-384.2734', '2500.578', '43.13384', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@ENTRY, @POINT := @POINT + '1', '-372.5794', '2518.969', '44.36980', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@ENTRY, @POINT := @POINT + '1', '-356.1326', '2524.870', '43.68792', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@ENTRY, @POINT := @POINT + '1', '-341.2596', '2517.181', '42.19988', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@ENTRY, @POINT := @POINT + '1', '-324.7303', '2514.007', '39.77470', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@ENTRY, @POINT := @POINT + '1', '-308.2558', '2522.323', '42.33207', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@ENTRY, @POINT := @POINT + '1', '-303.0155', '2544.127', '42.16570', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@ENTRY, @POINT := @POINT + '1', '-306.4639', '2559.613', '43.08623', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@ENTRY, @POINT := @POINT + '1', '-319.7011', '2564.647', '44.56841', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@ENTRY, @POINT := @POINT + '1', '-326.0264', '2576.755', '44.59876', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@ENTRY, @POINT := @POINT + '1', '-315.1175', '2592.784', '41.11610', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@ENTRY, @POINT := @POINT + '1', '-315.1161', '2608.520', '41.10941', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@ENTRY, @POINT := @POINT + '1', '-340.1870', '2619.544', '42.69732', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@ENTRY, @POINT := @POINT + '1', '-353.4090', '2634.224', '39.98934', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@ENTRY, @POINT := @POINT + '1', '-360.7138', '2656.587', '43.49288', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@ENTRY, @POINT := @POINT + '1', '-343.8678', '2682.296', '35.19290', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@ENTRY, @POINT := @POINT + '1', '-333.8743', '2701.390', '29.52560', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@ENTRY, @POINT := @POINT + '1', '-324.5292', '2712.571', '25.90339', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@ENTRY, @POINT := @POINT + '1', '-322.7293', '2726.575', '23.19661', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@ENTRY, @POINT := @POINT + '1', '-328.4409', '2738.122', '21.60171', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@ENTRY, @POINT := @POINT + '1', '-344.1392', '2742.767', '22.06757', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@ENTRY, @POINT := @POINT + '1', '-370.1947', '2739.405', '27.66764', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@ENTRY, @POINT := @POINT + '1', '-394.2155', '2733.282', '34.96598', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@ENTRY, @POINT := @POINT + '1', '-417.4688', '2742.025', '40.00116', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@ENTRY, @POINT := @POINT + '1', '-437.0097', '2742.231', '45.18545', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@ENTRY, @POINT := @POINT + '1', '-464.1363', '2757.426', '49.97451', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@ENTRY, @POINT := @POINT + '1', '-482.1413', '2780.444', '50.48174', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@ENTRY, @POINT := @POINT + '1', '-474.8221', '2803.170', '44.83184', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@ENTRY, @POINT := @POINT + '1', '-458.1045', '2835.910', '34.73303', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@ENTRY, @POINT := @POINT + '1', '-431.3771', '2863.750', '23.18233', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@ENTRY, @POINT := @POINT + '1', '-410.3391', '2897.444', '16.29737', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@ENTRY, @POINT := @POINT + '1', '-431.3665', '2916.574', '19.33275', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@ENTRY, @POINT := @POINT + '1', '-444.4490', '2935.541', '17.37160', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@ENTRY, @POINT := @POINT + '1', '-438.6376', '2967.621', '7.942842', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0');


-- Razorsaw
SET @ENTRY := '20798';
UPDATE `creature` SET `position_x`='415.9948', `position_y`='2215.928', `position_z`='116.7331', `orientation`='2.310609', `MovementType`='2' WHERE `id`=@ENTRY;
UPDATE creature_template SET MovementType=2 WHERE `entry`=@ENTRY;

-- Razorsaw
SET @ENTRY := '20798';
SET @POINT := '0';

DELETE FROM `creature_movement_template` WHERE `entry`=@ENTRY;
INSERT INTO `creature_movement_template` (`entry`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) VALUES
(@ENTRY, @POINT := @POINT + '1', '402.9154', '2230.259', '117.4614', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@ENTRY, @POINT := @POINT + '1', '380.9025', '2232.046', '120.3028', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@ENTRY, @POINT := @POINT + '1', '373.8445', '2224.211', '119.6789', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@ENTRY, @POINT := @POINT + '1', '363.3306', '2208.840', '118.7775', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@ENTRY, @POINT := @POINT + '1', '377.8707', '2195.009', '118.3487', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@ENTRY, @POINT := @POINT + '1', '390.5488', '2186.308', '118.5270', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@ENTRY, @POINT := @POINT + '1', '389.7958', '2173.775', '118.2608', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@ENTRY, @POINT := @POINT + '1', '374.9228', '2168.000', '119.9206', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@ENTRY, @POINT := @POINT + '1', '362.8960', '2160.521', '119.6764', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@ENTRY, @POINT := @POINT + '1', '364.5011', '2147.048', '119.6321', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@ENTRY, @POINT := @POINT + '1', '371.8427', '2134.787', '119.0569', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@ENTRY, @POINT := @POINT + '1', '383.2012', '2131.624', '118.7750', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@ENTRY, @POINT := @POINT + '1', '400.1353', '2126.392', '116.0313', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@ENTRY, @POINT := @POINT + '1', '416.6149', '2139.431', '116.4313', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@ENTRY, @POINT := @POINT + '1', '444.4109', '2150.578', '116.9998', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@ENTRY, @POINT := @POINT + '1', '454.7191', '2161.122', '118.8741', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@ENTRY, @POINT := @POINT + '1', '439.4698', '2203.118', '116.4050', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
(@ENTRY, @POINT := @POINT + '1', '420.8893', '2226.885', '116.4050', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0');


-- Hellfire Ramparts - missing equipment

-- Bleeding Hollow Scryer
UPDATE `creature_template` SET `EquipmentTemplateId`='5598' WHERE `Entry`='17478';

-- Bonechewer Beastmaster
UPDATE `creature_template` SET `EquipmentTemplateId`='5265' WHERE `Entry`='17455';

-- Hellfire Sentry
UPDATE `creature_template` SET `EquipmentTemplateId`='131' WHERE `Entry`='17517';

DELETE FROM `creature_equip_template` WHERE `entry` = '5598';
INSERT INTO `creature_equip_template` (`entry`, `equipentry1`, `equipentry2`, `equipentry3`) VALUES
('5598', '13622', '0', '0');

DELETE FROM `item_template` WHERE `entry` IN ('13504', '13622');
INSERT INTO `item_template` (`entry`, `class`, `subclass`, `unk0`, `name`, `displayid`, `Quality`, `Flags`, `BuyCount`, `BuyPrice`, `SellPrice`, `InventoryType`, `AllowableClass`, `AllowableRace`, `ItemLevel`, `RequiredLevel`, `RequiredSkill`, `RequiredSkillRank`, `requiredspell`, `requiredhonorrank`, `RequiredCityRank`, `RequiredReputationFaction`, `RequiredReputationRank`, `maxcount`, `stackable`, `ContainerSlots`, `stat_type1`, `stat_value1`, `stat_type2`, `stat_value2`, `stat_type3`, `stat_value3`, `stat_type4`, `stat_value4`, `stat_type5`, `stat_value5`, `stat_type6`, `stat_value6`, `stat_type7`, `stat_value7`, `stat_type8`, `stat_value8`, `stat_type9`, `stat_value9`, `stat_type10`, `stat_value10`, `dmg_min1`, `dmg_max1`, `dmg_type1`, `dmg_min2`, `dmg_max2`, `dmg_type2`, `dmg_min3`, `dmg_max3`, `dmg_type3`, `dmg_min4`, `dmg_max4`, `dmg_type4`, `dmg_min5`, `dmg_max5`, `dmg_type5`, `armor`, `holy_res`, `fire_res`, `nature_res`, `frost_res`, `shadow_res`, `arcane_res`, `delay`, `ammo_type`, `RangedModRange`, `spellid_1`, `spelltrigger_1`, `spellcharges_1`, `spellppmRate_1`, `spellcooldown_1`, `spellcategory_1`, `spellcategorycooldown_1`, `spellid_2`, `spelltrigger_2`, `spellcharges_2`, `spellppmRate_2`, `spellcooldown_2`, `spellcategory_2`, `spellcategorycooldown_2`, `spellid_3`, `spelltrigger_3`, `spellcharges_3`, `spellppmRate_3`, `spellcooldown_3`, `spellcategory_3`, `spellcategorycooldown_3`, `spellid_4`, `spelltrigger_4`, `spellcharges_4`, `spellppmRate_4`, `spellcooldown_4`, `spellcategory_4`, `spellcategorycooldown_4`, `spellid_5`, `spelltrigger_5`, `spellcharges_5`, `spellppmRate_5`, `spellcooldown_5`, `spellcategory_5`, `spellcategorycooldown_5`, `bonding`, `description`, `PageText`, `LanguageID`, `PageMaterial`, `startquest`, `lockid`, `Material`, `sheath`, `RandomProperty`, `RandomSuffix`, `block`, `itemset`, `MaxDurability`, `area`, `Map`, `BagFamily`, `TotemCategory`, `socketColor_1`, `socketContent_1`, `socketColor_2`, `socketContent_2`, `socketColor_3`, `socketContent_3`, `socketBonus`, `GemProperties`, `RequiredDisenchantSkill`, `ArmorDamageModifier`, `ScriptName`, `DisenchantID`, `FoodType`, `minMoneyLoot`, `maxMoneyLoot`, `Duration`, `ExtraFlags`) VALUES
('13504', '2', '7', '-1', 'Monster - Sword, Doomguard', '24167', '0', '0', '1', '0', '0', '13', '-1', '-1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1000', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '', '0', '0', '0', '0', '0', '0', '3', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '-1', '0', '', '0', '0', '0', '0', '0', '0'),
('13622', '2', '10', '-1', 'Monster - Staff, D01 Circling Black Skull', '24343', '0', '0', '1', '0', '0', '17', '-1', '-1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1000', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '', '0', '0', '0', '0', '0', '0', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '-1', '0', '', '0', '0', '0', '0', '0', '0');


