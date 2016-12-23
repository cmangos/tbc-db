-- q.10637 & q.10688 'A Necessary Distraction'
-- old hack removed
UPDATE quest_template SET ReqSpellCast1 = 0 WHERE entry IN (10637,10688);
DELETE FROM dbscripts_on_spell WHERE id = 37834;
-- Azaloth
UPDATE creature_template SET UnitFlags = 32768 WHERE entry = 21506;
UPDATE creature_template_addon SET auras = NULL WHERE entry = 21506;
-- Demon Hunter Supllicant, Sunfury Warlock
UPDATE creature_template SET FactionAlliance = 1826, FactionHorde = 1826 WHERE entry = 21179;
UPDATE creature_template SET FactionAlliance = 1813, FactionHorde = 1813 WHERE entry = 21503;
DELETE FROM creature_movement WHERE id IN (75412,75411,75410,75409,75408);
UPDATE creature SET MovementType = 0, spawndist = 0 WHERE guid IN (75412,75411,75410,75409,75408);
DELETE FROM dbscripts_on_creature_movement WHERE id = 2150301;


