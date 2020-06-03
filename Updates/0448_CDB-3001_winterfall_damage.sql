-- Fix damage stats for Winterfall Furbolgs in Winterspring
-- Source: Bestiary
UPDATE `creature_template` SET `DamageMultiplier`='1.2', `MeleeBaseAttackTime`='2800' WHERE `entry`='10199'; -- Grizzle Snowpaw (1.35H)(1P)(1.68D)(1A)
UPDATE `creature_template` SET `DamageMultiplier`='1.2', `MeleeBaseAttackTime`='2800' WHERE `entry`='10916'; -- Winterfall Runner (1.35H)(1P)(1.2D)(1A)
UPDATE `creature_template` SET `DamageMultiplier`='1.2', `MeleeBaseAttackTime`='2800' WHERE `entry`='14372'; -- Winterfall Ambusher (1.35H)(1P)(1.2D)(1A)

