-- Add missing item from WDB
DELETE FROM item_template WHERE entry IN(38578);
INSERT INTO item_template(entry,class,subclass,name,displayId,Quality,Flags,ItemLevel,spellid_1,spellcooldown_1,bonding,Material) VALUES
(38578,15,4,'The Flag of Ownership',36754,3,64,1,51640,60000,1,4);

-- DISCO fixes
UPDATE creature_template SET UnitFlags=33587712 WHERE entry in(27989);

DELETE FROM creature_template_addon WHERE entry IN(27989);
INSERT INTO creature_template_addon(entry,auras) VALUES
(27989,'50314');


