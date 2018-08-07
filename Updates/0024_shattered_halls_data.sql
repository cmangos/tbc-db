-- O'mrogg's Left Head 19523, O'mrogg's Right Head 19524 no need for heroic template, resolve following boss in sd2 script
UPDATE `creature_template` SET `HeroicEntry` = 0 WHERE `entry` IN (19523,19524);
