-- Quest Ar'kelos the Guardian 10176
-- 3 Netherstorm Trigger that should have a visual Blue Beam

-- spell_script_target Creature by Guid is OBSOLETE – use StringId instead 
-- spaw_group 28000 - 28999 - Netherstorm keep same for string_id
DELETE FROM `string_id` WHERE `Id` IN (28000, 28001, 28002);
INSERT INTO `string_id` (`Id`, `Name`) VALUES
(28000, 'NETHERSTORM_BLUE_BEAM_TARGET_01'),
(28001, 'NETHERSTORM_BLUE_BEAM_TARGET_02'),
(28002, 'NETHERSTORM_BLUE_BEAM_TARGET_03');

DELETE FROM creature_spawn_data_template WHERE Entry IN (1965601, 1965602, 1965603);
INSERT INTO `creature_spawn_data_template` (`Entry`, `StringId`, `Name`) VALUES 
(1965601, 28000, 'Netherstorm Trigger - Blue Beam Target - StringID'), 
(1965602, 28001, 'Netherstorm Trigger - Blue Beam Target - StringID'), 
(1965603, 28002, 'Netherstorm Trigger - Blue Beam Target - StringID');

DELETE FROM creature_spawn_data WHERE Guid IN (70107, 70108, 70111);
INSERT INTO `creature_spawn_data` (`Guid`, `Id`) VALUES 
(70107, 1965601),
(70108, 1965602),
(70111, 1965603);

-- Blue Beam Targets
DELETE FROM spell_script_target WHERE entry IN (34209, 34211, 34212);
INSERT INTO `spell_script_target` (`entry`, `type`, `targetEntry`) VALUES
('34212', '5', '28000'),
('34209', '5', '28002'),
('34211', '5', '28001');