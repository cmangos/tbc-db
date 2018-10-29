-- Add missing Thrash 8876 / 12787 Auras
UPDATE `creature_template_addon` SET `auras` = '12787' WHERE `entry` = 13217; -- Thanthaldis Snowgleam
UPDATE `creature_template_addon` SET `auras` = '12787' WHERE `entry` = 13219; -- Jekyll Flandring
UPDATE `creature_addon` SET `auras` = '12787' WHERE `guid` = 16576; -- Jekyll Flandring

UPDATE `creature_template_addon` SET `auras` = '8876 14111' WHERE `entry` = 6511; -- Bloodpetal Thresher
UPDATE `creature_template_addon` SET `auras` = '8876' WHERE `entry` = 6581; -- Ravasaur Matriarch
UPDATE `creature_template_addon` SET `auras` = '8876' WHERE `entry` = 7452; -- Crazed Owlbeast
UPDATE `creature_template_addon` SET `auras` = '8876' WHERE `entry` = 7728; -- Kirith the Damned
UPDATE `creature_template_addon` SET `auras` = '8876' WHERE `entry` = 8532; -- Diseased Flayer

