-- ===================
-- Fixes by Killerwife
-- ===================
-- Prince Malchezaar fix

UPDATE spell_script_target SET targetEntry=17645 WHERE entry=30834; -- insert target for infernalrelay spell 1
UPDATE creature_template SET ScriptName='npc_infernal_relay',ExtraFlags=4098 WHERE entry=17645; -- set script, active creature flag
UPDATE spell_script_target SET targetEntry=17645 WHERE entry=30834;
UPDATE creature_template SET ScriptName='npc_infernal_relay',ExtraFlags=4098 WHERE entry=17645;
UPDATE creature_template SET ExtraFlags=517 WHERE entry=15690; -- disable parry normally
UPDATE creature_template SET FactionAlliance=16,FactionHorde=16,NpcFlags=33554432,EquipmentTemplateId=121 WHERE entry=17650; -- change to correct faction, make unselectable and add equip weapons
UPDATE creature_template SET FactionAlliance=954,FactionHorde=954,UnitFlags=33554432,ScriptName='npc_netherspite_infernal' WHERE entry=17646; -- make unselectable, correct factions

DELETE FROM creature WHERE id=17645;
INSERT INTO creature VALUES(63370,17645,532,1,0,0,-10833.1,-2151.58,240.86,4.62512,43200,0,0,8,0,0,0); -- add correct InfernalRelay npc spawns
INSERT INTO creature(guid,id,map,spawnMask,position_x,position_y,position_z,orientation) VALUES(63371,17645,532,1,-10893.51,-2081.342,342.2936,5.183628);
DELETE FROM item_template WHERE entry=23996; 
INSERT INTO item_template(entry,class,subclass,name,displayId,quality,InventoryType,AllowableClass,AllowableRace,ItemLevel,sheath)  -- add missing item, malchezaar axe
VALUES(23996,2,0,'Monster - Axe, Malchezzar',40065,0,13,-1,-1,1,1);
INSERT INTO creature_equip_template VALUES(121,23996,23996,0); -- add missing equip template from udb

-- gist diff https://gist.github.com/killerwife/80a9a6b82d595527f551

