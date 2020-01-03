-- Update flags and speed for NPCs 17286 (Invisible Man) and 16486 (Web Wrap)
UPDATE creature_template SET UnitFlags=(33554432+262144), ExtraFlags=64, InhabitType=4, SpeedWalk=1, SpeedRun=1.14286 WHERE Entry=17286; -- Invisible Man
UPDATE creature_template SET UnitFlags=262144, InhabitType=4 WHERE Entry=16486; -- Web Wrap

-- Add missing spell targets for spells used in Maexxna encounter
DELETE FROM spell_script_target WHERE entry IN (28617, 29108);
INSERT INTO spell_script_target (entry, type, targetEntry, inverseEffectMask)
VALUES
(28617, 1, 17286, 0), -- Web Wrap -> Invisible Man
(29108, 1, 16486, 0); -- Kill Web Wrap -> Web Wrap


