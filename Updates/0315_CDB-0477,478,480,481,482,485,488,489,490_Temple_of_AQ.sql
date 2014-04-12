-- Obsidian Eradicator, creature 15262
UPDATE `creature_onkill_reputation` SET `RewOnKillRepFaction2` = 0, `RewOnKillRepValue1` = 100, `MaxStanding2` = 0, `RewOnKillRepValue2` = 0 WHERE `creature_id` = 15262;

-- Anubisath Sentinel
UPDATE `creature_onkill_reputation` SET `RewOnKillRepFaction2`= 0, `RewOnKillRepValue1`= 100, `MaxStanding2`= 0, `RewOnKillRepValue2`= 0 WHERE `creature_id`= 15264;

-- Anubisath Warder
DELETE FROM `creature_onkill_reputation` WHERE `creature_id` = 15311;
INSERT INTO `creature_onkill_reputation` (`creature_id`, `RewOnKillRepFaction1`, `RewOnKillRepFaction2`, `MaxStanding1`, `IsTeamAward1`, `RewOnKillRepValue1`, `MaxStanding2`, `IsTeamAward2`, `RewOnKillRepValue2`, `TeamDependent`) VALUES (15311, 910, 0, 3, 0, 100, 0, 0, 0, 0);

-- Obsidian Nullifier
DELETE FROM `creature_onkill_reputation` WHERE `creature_id` = 15312;
INSERT INTO `creature_onkill_reputation` (`creature_id`, `RewOnKillRepFaction1`, `RewOnKillRepFaction2`, `MaxStanding1`, `IsTeamAward1`, `RewOnKillRepValue1`, `MaxStanding2`, `IsTeamAward2`, `RewOnKillRepValue2`, `TeamDependent`) VALUES
(15312, 910, 0, 3, 0, 100, 0, 0, 0, 0);

-- Qiraji Champion
DELETE FROM `creature_onkill_reputation` WHERE `creature_id` = 15252;
INSERT INTO `creature_onkill_reputation` (`creature_id`, `RewOnKillRepFaction1`, `RewOnKillRepFaction2`, `MaxStanding1`, `IsTeamAward1`, `RewOnKillRepValue1`, `MaxStanding2`, `IsTeamAward2`, `RewOnKillRepValue2`, `TeamDependent`) VALUES (15252, 910, 0, 3, 0, 100, 0, 0, 0, 0);

-- Bug Trio
UPDATE `creature_template` SET `SpeedWalk` = 2.4 WHERE `entry` IN (15544,15511,15543); -- 2.4

-- Battleguard Sartura & Guards
UPDATE `creature_template` SET `SpeedWalk` = 2.8 WHERE `entry` IN (15516,15984); -- 6

-- Anubisath Defender
UPDATE `creature_onkill_reputation` SET `RewOnKillRepFaction2` = 0, `RewOnKillRepValue1` = 100, `MaxStanding2` = 0, `RewOnKillRepValue2` = 0 WHERE `creature_id` = 15277;

-- Qiraji Mindslayer / Qiraji Slayer

DELETE FROM `creature_onkill_reputation` WHERE `creature_id` IN (15246,15250);

INSERT INTO `creature_onkill_reputation` (`creature_id`, `RewOnKillRepFaction1`, `RewOnKillRepFaction2`, `MaxStanding1`, `IsTeamAward1`, `RewOnKillRepValue1`, `MaxStanding2`, `IsTeamAward2`, `RewOnKillRepValue2`, `TeamDependent`) VALUES
(15246, 910, 0, 3, 0, 100, 0, 0, 0, 0),
(15250, 910, 0, 3, 0, 100, 0, 0, 0, 0);

-- Qiraji Mindslayer / Qiraji Slayer
UPDATE `creature_template` SET `SpeedWalk` = 2.8 WHERE `Entry` = 15250; -- 1.6

-- Vekniss Soldier
UPDATE `creature_onkill_reputation` SET `RewOnKillRepFaction2` = 0, `RewOnKillRepValue1` = 100, `MaxStanding2` = 0, `RewOnKillRepValue2` = 0 WHERE `creature_id` = 15229;

UPDATE `creature_onkill_reputation` SET `RewOnKillRepFaction2` = 0, `RewOnKillRepValue1` = 100, `MaxStanding2` = 0, `RewOnKillRepValue2` = 0 WHERE `creature_id` = 15249; -- Qiraji Lasher
UPDATE `creature_onkill_reputation` SET `RewOnKillRepFaction2` = 0, `RewOnKillRepValue1` = 100, `MaxStanding2` = 0, `RewOnKillRepValue2` = 0 WHERE `creature_id` = 15236; -- Vekniss Wasp
UPDATE `creature_onkill_reputation` SET `RewOnKillRepFaction2` = 0, `RewOnKillRepValue1` = 100, `MaxStanding2` = 0, `RewOnKillRepValue2` = 0 WHERE `creature_id` = 15235; -- Vekniss Stinger

-- Colossus of Regal
DELETE FROM `creature_onkill_reputation` WHERE `creature_id` IN (15741);
INSERT INTO `creature_onkill_reputation` (`creature_id`, `RewOnKillRepFaction1`, `RewOnKillRepFaction2`, `MaxStanding1`, `IsTeamAward1`, `RewOnKillRepValue1`, `MaxStanding2`, `IsTeamAward2`, `RewOnKillRepValue2`, `TeamDependent`) VALUES (15741, 910, 609, 3, 0, 2000, 7, 0, 25, 0);

