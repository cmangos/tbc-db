-- Add your query below.
-- https://github.com/vmangos/core/commit/8b921a2c69e4da00a284d07181a981267a0543c3
UPDATE `creature_template` SET `MaxLevel`='31' WHERE `entry`='3180'; -- Dark Iron Entrepreneur (30 Min)(30 Max)
UPDATE `creature_template` SET `MinLevel`='60', `MaxLevel`='60' WHERE `entry`='17231'; -- Garden Gas (70 Min)(70 Max) - does not apply to wotlk.
-- wotlk+
UPDATE `creature_template` SET `MinLevel`='15' WHERE `entry`='3578'; -- Dalaran Miner (15 Min)(16 Max)
UPDATE `creature_template` SET `MinLevel`='19' WHERE `entry`='7170'; -- Thragomm (19 Min)(21 Max)
UPDATE `creature_template` SET `MaxLevel`='14' WHERE `entry`='11836'; -- Captured Rabid Thistle Bear (13 Min)(14 Max)
UPDATE `creature_template` SET `MinLevel`='58', `MaxLevel`='59' WHERE `entry`='13547'; -- Veteran Coldmine Explorer (58 Min)(59 Max)
UPDATE `creature_template` SET `MinLevel`='40', `MaxLevel`='40' WHERE `entry`='14235'; -- The Rot (40 Min)(40 Max)
UPDATE `creature_template` SET `MaxLevel`='8' WHERE `entry`='15624'; -- Forest Wisp (6 Min)(8 Max)
-- End of migration.

