-- Fixed stats and flags for NPCs 15631 (Spotlight), 15897 (Large Spotlight) & 15902 (Giant Spotlight)
UPDATE `creature_template` SET `DamageMultiplier`='1' WHERE `entry`='15631'; -- Spotlight (1.35H)(1P)(0.2D)(1A)
UPDATE `creature_template` SET `UnitFlags`='33555200', `SpeedWalk` = 1 WHERE `entry`='15902'; -- Giant Spotlight (1.35H)(1P)(1D)(1A) modelid 14501 classic, 15880 is correct for later maybe

