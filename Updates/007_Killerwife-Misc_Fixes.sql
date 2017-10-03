UPDATE creature SET DeathState=0 WHERE id=16852; -- remove death state from sedai's corpse
UPDATE creature_template SET DynamicFlags=DynamicFlags|32 WHERE entry=16852; -- set dead dynamic flag for sedai's corpse

DELETE FROM creature_template_addon WHERE entry=16852;
INSERT INTO creature_template_addon VALUES(16852,0,7,0,0,0,0,''); -- set lying state for sedai's corpse

UPDATE gameobject_template SET data2=1 WHERE entry=177241; -- Araj phylactery make it refill so that whole group can loot

UPDATE dbscripts_on_gossip SET datalong=26464 WHERE id=7759; -- finally give quest Who are they? proper completion
UPDATE dbscripts_on_gossip SET datalong=26465 WHERE id=7757;
UPDATE dbscripts_on_gossip SET datalong=26466 WHERE id=7760;

-- 10/04
UPDATE creature_template SET NpcFlags=1 WHERE entry=20159; -- remove quest giver flag and wrong vendor flag
UPDATE creature_template SET UnitFlags=UnitFlags|518 WHERE entry=16852; -- make non attackable, non attacking

-- 17/04
-- rogue lockpicking quest gameobjects dont despawn

-- 18/04
UPDATE quest_template SET ReqSpellCast2=0 WHERE entry=10923; -- a quest Evil Draws Near has wrong completion conditions

