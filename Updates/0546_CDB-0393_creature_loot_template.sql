-- Fixed rank of creature 2600 (Singer) because she is rare but not elite and changed faction to Syndicate
-- Source: http://www.wowwiki.com/Singer
UPDATE `creature_template` SET `Faction` = 87 WHERE `entry` = 2600;

