-- Updated Naxxramas Military Sub-Boss Trigger level from 80 to 60
-- Thanks Ela for pointing and fixing
UPDATE `creature_template` SET `minlevel` = 60, `maxlevel` = 60 WHERE `entry` = 16137;

-- Fixed rank of creatures involved in Gothic Fight because they were missing their Elite rank
UPDATE `creature_template` SET `rank` = 1 WHERE `entry` IN (16126, 16124, 16125, 16148, 16150);


