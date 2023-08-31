-- Ekkorash the Inquisitor spell_list
-- Spawned from Item 'Conjuring Powder' during the Quest - The Archmage's Staff

-- 19493	0	36040	11980	0	0	0	0	0	0	0	0
DELETE FROM `creature_template_spells` WHERE `entry` = 19493;

DELETE FROM `creature_spell_list_entry` WHERE `Id` = 1949301;
INSERT INTO `creature_spell_list_entry` (`Id`, `Name`, `ChanceSupportAction`, `ChanceRangedAttack`) VALUES
(1949301, 'Netherstorm - Ekkorash the Inquisitor', 0, 0);

DELETE FROM `creature_spell_list` WHERE `Id` = 1949301;
INSERT INTO `creature_spell_list` (`Id`, `Position`, `SpellId`, `Flags`, `CombatCondition`, `TargetId`, `ScriptId`, `Availability`, `Probability`, `InitialMin`, `InitialMax`, `RepeatMin`, `RepeatMax`, `Comments`) VALUES
(1949301, 1, 36040, 0, -1, 100, 0, 100, 0, 8000, 11000, 18000, 23000, 'Ekkorash the Inquisitor - Fel Flamestrike on random'),
(1949301, 2, 11980, 0, -1, 121, 0, 100, 0, 10000, 20000, 14000, 20000, 'Ekkorash the Inquisitor - Curse of Weakness on random player aura not present');


UPDATE `creature_template` SET `SpellList` = 1949301 WHERE `entry` = 19493;

-- Correct spawn points
DELETE FROM `dbscripts_on_event` WHERE id = '13008';
INSERT INTO dbscripts_on_event(id, delay, priority, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, datafloat, x, y, z, o, speed, condition_id, comments) VALUES
(13008,0,0,31,19493,100,0,0,0,8,0,0,0,0,0,0,0,0,0,0,0,'search for 19493 - terminate if alive'),
(13008,0,1,10,19493,360000,0,0,0,0,0,0,0,0,0,2767.8975, 3213.0693, 150.81097, 1.689447,0,0,'Spawn Ekkorash the Inquisitor');