-- Cosmetic - Incinerate Blue
DELETE FROM spell_script_target WHERE entry=42567;
INSERT INTO spell_script_target (entry, type, targetEntry, inverseEffectMask) VALUES
(42567, 1, 23880, 0), -- Amani Eagle Spirit
(42567, 1, 23879, 0), -- Amani Dragonhawk Spirit
(42567, 1, 23878, 0), -- Amani Bear Spirit
(42567, 1, 23877, 0); -- Amani Lynx Spirit

-- Column of Fire
UPDATE creature_template SET UnitFlags=33587200 WHERE entry=24187;


