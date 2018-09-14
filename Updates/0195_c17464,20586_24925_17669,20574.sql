-- Shattered Hand Gladiator 17464,20586
-- UnitFlag |16+2048+524288 fighting/resetting
UPDATE `creature_template` SET `UnitFlags` = 32832 WHERE `entry`= 17464;
UPDATE `creature_template` SET `UnitFlags` = 32832 WHERE `entry`= 20586;

-- Boss Portal: Purple (3.00) 24925
UPDATE `creature_template` SET `ModelId1` = 22742, `ModelId2` = 0, `ModelId3` = 0 WHERE `entry` = 24925;
REPLACE INTO `creature_template_addon` (`entry`, `emote`) VALUES (24925, 422);

-- Rabid Warhound 17669,20574
UPDATE `creature_template` SET `FactionAlliance` = 16, `FactionHorde` = 16 WHERE `entry`= 17669;
UPDATE `creature_template` SET `FactionAlliance` = 16, `FactionHorde` = 16 WHERE `entry`= 20574;

