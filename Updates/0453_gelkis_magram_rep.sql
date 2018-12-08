-- Correct Gelkis & Magram Rep Values - https://wow.gamepedia.com/index.php?title=Gelkis_clan&oldid=1498171
-- Negative Rep Values should probably not be reduced by Level Difference
UPDATE `creature_onkill_reputation` SET `RewOnKillRepValue1` = 20, `RewOnKillRepValue2` = -100 WHERE `creature_id` IN (4638,4639,4640,4641,4642,4643,4644,4645,4662,5601,6068,4646,4647,4648,4649,4651,4652,4653,4661);
-- Add missing Khan Shaka 5602
DELETE FROM `creature_onkill_reputation` WHERE `creature_id` = 5602;
INSERT INTO `creature_onkill_reputation` (`creature_id`, `RewOnKillRepFaction1`, `RewOnKillRepFaction2`, `MaxStanding1`, `IsTeamAward1`, `RewOnKillRepValue1`, `MaxStanding2`, `IsTeamAward2`, `RewOnKillRepValue2`, `TeamDependent`) VALUES
(5602, 93, 92, 4, 0, 20, 4, 0, -100, 0);

