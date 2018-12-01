-- q.10556 Scratches
-- Fix duplicate birds spawning
-- Fix data for Kaliri Totem c.21468
-- Fix spell_script_target for s.37013 'Despawn Kaliri Totem'
-- Add one missing spawn of g.184826 'Lashh'an Circle Spell Focus'

UPDATE creature_template SET FactionAlliance=1629, FactionHorde=1629, SpeedWalk=3.5/2.5, SpeedRun=10/7, UnitFlags=33555200 WHERE entry=21468; -- Kaliri Totem

-- Remove bird summoning. It is handled by the spell already s.36904
-- Add missing visual spell
DELETE FROM dbscripts_on_event WHERE id=12890;
INSERT INTO `dbscripts_on_event` (`id`,`delay`,`command`,`datalong`,`datalong2`,`datalong3`,`dataint`,`dataint2`,`dataint3`,`dataint4`,`buddy_entry`,`search_radius`,`data_flags`,`comments`,`x`,`y`,`z`,`o`) VALUES
(12890,0,15,34892,0,0,0,0,0,0,20093,5,7,'Blade''s Edge - Arakkoa Spell Origin - Cast Arakkoa Channeling Target',0,0,0,0);

-- Should only hit Kaliri Totem c.21468
-- The SPELL_EFFECT_SCRIPT_EFFECT of s.37013 and s.37028 is done in SpellEffects.cpp and blades_edge_mountains.cpp (npc_daranelleAI)
DELETE FROM spell_script_target WHERE entry=37013;
INSERT INTO spell_script_target (entry,type,targetEntry,inverseEffectMask) VALUES
(37013,1,21468,0);

-- Lashh'an Circle Spell Focus
-- Add one missing and update the coordinates of the existing one.
-- Spell focus gameobjects don't appear in sniffs, so use the position of the trigger npc which is also involved in the quest.
UPDATE gameobject SET position_x=1612.651, position_y=6934.456, position_z=160.0191, orientation=5.707227 WHERE guid=160757 AND id=20093;
DELETE FROM gameobject WHERE id=184826 AND guid=160194;
INSERT INTO gameobject (guid, id, map, spawnMask, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecsmin, spawntimesecsmax, animprogress, state) VALUES
(160194, 184826, 530, 1, 1637.021, 6998.459, 158.3239, 1.308997, 0, 0, 0, 0, 180, 180, 0, 1);

