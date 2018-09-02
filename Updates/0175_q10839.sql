-- q.10839 'Veil Skith: Darkstone of Terokk'
-- Trigger should be flying, and add correct UnitFlags
UPDATE creature_template SET InhabitType=4, UnitFlags=33587968 WHERE entry=22288;
-- Sync spawntimes for trigger npc and gameobject (both should be 28s)
UPDATE gameobject SET spawntimesecsmin=28, spawntimesecsmax=28 WHERE id=185191;
UPDATE creature SET spawntimesecsmin=28, spawntimesecsmax=28 WHERE id=22288;

-- Fix targets for the involved spells
DELETE FROM spell_script_target WHERE entry=38729;
INSERT INTO spell_script_target (entry,type,targetentry,inverseEffectMask) VALUES
(38729,1,22288,3), -- Effect 2 only
(38729,0,185191,6); -- Effect 0 only

DELETE FROM spell_script_target WHERE entry=38736;
INSERT INTO spell_script_target (entry,type,targetentry,inverseEffectMask) VALUES
(38736,1,22288,0);

