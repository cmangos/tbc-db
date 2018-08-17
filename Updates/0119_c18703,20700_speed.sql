-- Fix Speed for Sethekk Spirit 18703,20700 - Speeds were flipped
UPDATE `creature_template` SET `SpeedWalk` = (2.77778 / 2.5), `SpeedRun` = (2 / 7) WHERE `entry` IN (18703,20700);

