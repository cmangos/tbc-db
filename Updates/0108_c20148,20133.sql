-- Dead Doomguard 20148
UPDATE `creature_template` SET `UnitFlags` = 33817344 WHERE `entry` = 20148; -- 570688256 done by aura
UPDATE `creature_template_addon` SET `emote` = 0, `auras` = '29266' WHERE `entry` = 20148;

-- Image of Socrethar 20133 - Emotes and Text missing
UPDATE `creature_template` SET `InhabitType` = 4, `UnitFlags` = 33555200 WHERE `entry` = 20133;

