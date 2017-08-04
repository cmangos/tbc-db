-- Quest 770 should only be available for horde players
UPDATE `quest_template` SET `RequiredRaces`='690' WHERE `entry`=770;
