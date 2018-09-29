-- Set proper Creature Requirement for q.10488 Protecting Our Own
UPDATE quest_template SET ReqCreatureOrGOId1=21142 WHERE entry=10488;

DELETE FROM `dbscripts_on_event` WHERE `id` IN(13489);
INSERT INTO `dbscripts_on_event` (`id`,`delay`,`command`,`datalong`,`datalong2`,`datalong3`,`dataint`,`dataint2`,`dataint3`,`dataint4`,`buddy_entry`,`search_radius`,`data_flags`,`comments`,`x`,`y`,`z`,`o`) VALUES
(13489,0,8,21142,0,0,0,0,0,0,0,0,0,'Thunderlord Dire Wolf - Give Quest Credit',0,0,0,0);

