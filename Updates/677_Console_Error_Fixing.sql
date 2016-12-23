-- ======================================================================================
-- Add Missing Item_Template Entries From Equipment Conversions WIP To Fix Console Errors
-- ======================================================================================
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (12991,23573,-1,15,2,3,13);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (21122,33425,-1,15,2,3,13);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (12328,22394,-1,10,2,2,17);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (11838,22032,-1,6,2,2,17);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (13750,24499,-1,10,2,2,17);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (14877,25474,-1,0,2,3,13);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (13751,24503,-1,10,2,2,17);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (12950,23509,-1,5,2,1,17);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (14535,25155,-1,17,2,2,17);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (24034,36725,-1,7,2,3,13);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (23673,36442,-1,7,2,1,13);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (12993,23574,-1,7,2,3,13);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (30208,41752,-1,0,2,1,13);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (30209,41753,-1,0,2,1,22);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (11317,21159,-1,1,2,1,17);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (13316,23969,-1,8,2,1,17);

UPDATE creature_template SET EquipmentTemplateId=0 WHERE entry IN (21319);
DELETE FROM creature_equip_template WHERE entry IN (107);




-- ========================================================
-- Remove Duplicate Addon Data With Creature_Template_Addon
-- ========================================================
DELETE FROM creature_addon WHERE guid IN (66800,66804,66838,66839,66872,66878,66879,66897,67246,67247);



-- ==========================================================================
-- Remove Unused Reference_Loot_Template Data (Replaced With Newer Loot Code)
-- ==========================================================================
DELETE FROM reference_loot_template WHERE entry IN (49002);



-- ==========================================================================
-- Remove Unused DBScripts Data (Replaced With Newer Code and Improvements)
-- ==========================================================================
DELETE FROM dbscripts_on_gossip WHERE id IN (7426,574302);
DELETE FROM dbscripts_on_creature_movement WHERE id IN (892001,905601,905602,905603,905604);


-- ==========================================================================
-- Remove Unused DB Script Strings (Replaced With Newer Code and Improvements)
-- ==========================================================================

DELETE FROM db_script_string WHERE entry IN (2000000006,2000000007,2000000008,2000000305,2000000306,2000000307,2000000308,2000000309,2000000060,2000000323,2000000324,2000000325,2000000326,2000000544,2000000545,2000000546,2000000547,2000000548,2000000549,2000000550,2000000551,2000005546);
-- Add Missing String
insert into `db_script_string` (`entry`, `content_default`, `content_loc1`, `content_loc2`, `content_loc3`, `content_loc4`, `content_loc5`, `content_loc6`, `content_loc7`, `content_loc8`, `sound`, `type`, `language`, `emote`, `comment`) values('2000005488','%s puts the bundle of bloodthistle in his robe.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0','2','0','0',NULL);










