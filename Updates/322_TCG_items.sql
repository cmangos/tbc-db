-- Add missing item from WDB
DELETE FROM item_template WHERE entry IN(38578);
INSERT INTO item_template(entry,class,subclass,name,displayId,Quality,Flags,ItemLevel,spellid_1,spellcooldown_1,bonding,Material) VALUES
(38578,15,4,'The Flag of Ownership',36754,3,64,1,51640,60000,1,4);

-- DISCO fixes
UPDATE creature_template SET UnitFlags=33587712 WHERE entry in(27989);

DELETE FROM creature_template_addon WHERE entry IN(27989);
INSERT INTO creature_template_addon(entry,auras) VALUES
(27989,'50314');

-- Ethereal Soul-Trader
DELETE FROM item_template WHERE entry IN(38186);
INSERT INTO item_template(entry,name,displayid,Quality,Flags,ItemLevel,stackable,bonding,description,Material) VALUES
(38186,'Ethereal Credit',36861,1,65536,1,250,1,'Only of value to an Ethereal Soul-Trader.',4);

DELETE FROM item_template WHERE entry IN(38160,38161,38162,38163,38285,38286);
INSERT INTO item_template(entry,class,name,displayid,Quality,InventoryType,AllowableClass,ItemLevel,stackable,Material) VALUES
(38160,4,'Soul-Trader''s Bindings' ,50578,1,20,32767,1,1,4),
(38161,4,'Soul-Trader''s Gloves'   ,51271,1,10,32767,1,1,4),
(38162,4,'Soul-Trader''s Boots'    ,50579,1,8,32767,1,1,4),
(38163,4,'Soul-Trader''s Head Wrap',50489,1,1,32767,1,1,4),
(38285,4,'Soul-Trader''s Waistband',50582,1,6,32767,1,1,4),
(38286,4,'Soul-Trader''s Pauldrons',50581,1,3,32767,1,1,4);

UPDATE creature_template SET UnitFlags=32768,NpcFlags=128 WHERE entry IN(27914);

DELETE FROM npc_vendor WHERE entry IN(27914);
INSERT INTO npc_vendor(entry, item, maxcount, incrtime, ExtendedCost, condition_id, comments) VALUES
(27914,38308,0,0,2411,0,'Ethereal Essence Sphere'),
(27914,38300,0,0,2411,0,'Diluted Ethereum Essence'),
(27914,38294,0,0,2411,0,'Ethereal Liqueur'),
(27914,38291,0,0,2411,0,'Ethereal Mutagen'),
(27914,38160,0,0,2411,0,'Soul-Trader''s Bindings'),
(27914,38161,0,0,2411,0,'Soul-Trader''s Gloves'),
(27914,38162,0,0,2411,0,'Soul-Trader''s Boots'),
(27914,38163,0,0,2411,0,'Soul-Trader''s Head Wrap'),
(27914,38285,0,0,2411,0,'Soul-Trader''s Waistband'),
(27914,38286,0,0,2411,0,'Soul-Trader''s Pauldrons');


