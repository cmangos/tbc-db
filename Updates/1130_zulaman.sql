-- Zul'Aman Updates
-- Nalorakk Trash has UNIT_FLAG_IMMUNE_TO_PLAYER + UNIT_FLAG_IMMUNE_TO_NPC to control the gauntlet
-- 24358 aura 23973

-- =====
-- Trash
-- =====

UPDATE `creature_template` SET `ModelId1` = 22273, `ModelId2` = 22274 WHERE `entry` = 23542; -- Amani'shi Axe Thrower `UnitFlags` = 33600

UPDATE `creature_template` SET `ModelId1` = 22277, `ModelId2` = 22278, `MechanicImmuneMask` = 578893651 WHERE `entry` = 23580; -- Amani'shi Warbringer

UPDATE `creature_template` SET `ModelId1` = 22275, `ModelId2` = 22276, `ExtraFlags` = `ExtraFlags`|4194304 WHERE `entry` = 23581; -- Amani'shi Medicine Man

UPDATE `creature_template` SET `ModelId1` = 22271, `ModelId2` = 22272 WHERE `entry` = 23582; -- Amani'shi Tribesman

-- 23584	Amani Bear

UPDATE `creature_template` SET `MechanicImmuneMask` = 536936961 WHERE `entry` = 23586; -- Amani'shi Scout

UPDATE `creature_template` SET `ModelId1` = 22315, `ModelId2` = 22316, `MechanicImmuneMask` = 9 WHERE `entry` = 23587; -- Amani'shi Reinforcement

UPDATE `creature_template` SET `ModelId1` = 22307, `ModelId2` = 22308, `ExtraFlags` = `ExtraFlags`|4194304 WHERE `entry` = 23596; -- Amani'shi Flame Caster

UPDATE `creature_template` SET `ModelId1` = 22309, `ModelId2` = 22310, `MechanicImmuneMask` = 578893659 WHERE `entry` = 23597; -- Amani'shi Guardian

-- 23598	Amani Dragonhawk Hatchling

UPDATE `creature_template` SET `ModelId1` = 22313, `ModelId2` = 22314 WHERE `entry` = 23774; -- Amani'shi Trainer

-- 23834	Amani Dragonhawk

UPDATE `creature_template` SET `ModelId1` = 22322, `ModelId2` = 22323, `ModelId3` = 22324, `ModelId4` = 22325 WHERE `entry` = 23889; -- Amani'shi Savage

-- 24043 Amani Lynx

UPDATE `creature_template` SET `MechanicImmuneMask` = 70996 WHERE `entry` = 24047; -- Amani Crocolisk

UPDATE `creature_template` SET `ModelId1` = 22301, `ModelId2` = 22302, `MechanicImmuneMask` = 8394064 WHERE `entry` = 24059; -- Amani'shi Beast Tamer

-- 24064	Amani Lynx Cub

UPDATE `creature_template` SET `ModelId1` = 22303, `ModelId2` = 22304, `MechanicImmuneMask` =  578893651 WHERE `entry` = 24065; -- Amani'shi Handler

-- 24138	Tamed Amani Crocolisk

UPDATE `creature_template` SET `MechanicImmuneMask` = 9 WHERE `entry` = 24159; -- Amani Eagle

UPDATE `creature_template` SET `ModelId1` = 22261, `ModelId2` = 22262, `MechanicImmuneMask` = 70227 WHERE `entry` = 24179; -- Amani'shi Wind Walker

UPDATE `creature_template` SET `MechanicImmuneMask` = 70227 WHERE `entry` = 24180; -- Amani'shi Protector

UPDATE `creature_template` SET `MechanicImmuneMask` = 1029 WHERE `entry` = 24217; -- Amani Bear Mount

UPDATE `creature_template` SET `MechanicImmuneMask` = 9 WHERE `entry` = 24225; -- Amani'shi Warrior

UPDATE `creature_template` SET `MechanicImmuneMask` = 578895839, `ExtraFlags` = `ExtraFlags`|256 WHERE `entry` = 24374; -- Amani'shi Berserker

UPDATE `creature_template` SET `MechanicImmuneMask` = 70996 WHERE `entry` = 24530; -- Amani Elder Lynx

UPDATE `creature_template` SET `MechanicImmuneMask` = 578895707 WHERE `entry` = 24549; -- Amani'shi Tempest

-- ======
-- Bosses
-- ======

-- 23574	Akil'zon
-- 24175	Amani'shi Lookout

-- 23576	Nalorakk

-- 23578	Jan'alai
-- 23818	Amani'shi Hatcher
-- 24504	Amani'shi Hatcher

-- 23577	Halazzi
UPDATE `creature_template` SET `ExtraFlags` = `ExtraFlags`|4194304 WHERE `entry` = 24224; -- Corrupted Lightning Totem

-- UPDATE `creature_template` SET `` WHERE `entry` = 24239; -- Hex Lord Malacrass

UPDATE `creature_template` SET `ModelId1` = 1206, `ModelId2` = 6303, `ModelId3` = 2957, `ModelId4` = 2958 WHERE `entry` = 24338; -- Amani Snake

UPDATE `creature_template` SET `ExtraFlags` = `ExtraFlags`|256 WHERE `entry` = 23863; -- Zul'jin

-- 23877	Amani Lynx Spirit
-- 23878	Amani Bear Spirit
-- 23879	Amani Dragonhawk Spirit
-- 23880	Amani Eagle Spirit

