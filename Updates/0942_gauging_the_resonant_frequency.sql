-- Has accompanying core script
DELETE FROM creature_template_addon WHERE entry=21760;
DELETE FROM spell_script_target WHERE entry IN(37697);
INSERT INTO spell_script_target VALUES
(37697,1,21759,0);

UPDATE creature_template SET MovementType=0,UnitFlags=33587968 WHERE entry=21760;
UPDATE creature_template SET MovementType=0,UnitFlags=33587456 WHERE entry=21759;

UPDATE creature_model_info SET bounding_radius=0.8012421,combat_reach=0 WHERE modelid IN(20476);
UPDATE creature_template SET ModelId1=11686,UnitFlags=33587968,Faction=14 WHERE entry=21796;
-- 20476 actual model changed in script

UPDATE creature_template SET UnitFlags=33555200,MovementType=0,Faction=1715 WHERE entry IN(21798);

DELETE FROM creature WHERE id=21796; -- only summoned by script


