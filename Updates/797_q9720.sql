-- 17999 has it already correct for visual animation of s.31736
UPDATE `creature_template` SET `ExtraFlags` = 0 WHERE `entry` IN (17998,18000,18002);

-- Remove Dublicate Steampump Overseer
DELETE FROM `creature` WHERE `guid` = 65679 AND id=18340;

