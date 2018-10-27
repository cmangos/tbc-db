-- Cast by Shadowy Necromancer c.17899 in acid
DELETE FROM `dbscripts_on_spell` WHERE `id` IN(31617,31624,31625);
INSERT INTO `dbscripts_on_spell` (`id`,`delay`,`command`,`datalong`,`datalong2`,`datalong3`,`dataint`,`dataint2`,`dataint3`,`dataint4`,`buddy_entry`,`search_radius`,`data_flags`,`comments`,`x`,`y`,`z`,`o`) VALUES
(31617,0,45,0,10134,0,0,0,0,0,0,0,4,'Raise Dead Spell (ID: 31617/31624/31625) - 20% Chance for caster to Say random text',0,0,0,0),
(31624,0,45,0,10134,0,0,0,0,0,0,0,4,'Raise Dead Spell (ID: 31617/31624/31625) - 20% Chance for caster to Say random text',0,0,0,0),
(31625,0,45,0,10134,0,0,0,0,0,0,0,4,'Raise Dead Spell (ID: 31617/31624/31625) - 20% Chance for caster to Say random text',0,0,0,0);

DELETE FROM `dbscript_string` WHERE `entry` BETWEEN 2000001575 AND 2000001576;
INSERT INTO `dbscript_string` (`entry`, `content_default`, `sound`, `type`, `language`, `emote`, `comment`) VALUES 
(2000001575, 'Elen-ak shaktha!', 0, 0, 0, 0, 'Raise Dead Spell (ID: 31617/31624/31625)'),
(2000001576, 'Rise, my soldiers, and march for me!', 0, 0, 0, 0, 'Raise Dead Spell (ID: 31617/31624/31625)');

DELETE FROM `dbscripts_on_relay` WHERE `id` IN(10133);
INSERT INTO `dbscripts_on_relay` (`id`,`delay`,`command`,`datalong`,`datalong2`,`datalong3`,`dataint`,`dataint2`,`dataint3`,`dataint4`,`buddy_entry`,`search_radius`,`data_flags`,`comments`,`x`,`y`,`z`,`o`) VALUES
(10133,0,0,0,0,0,2000001575,2000001576,0,0,0,0,0,'Raise Dead Spell (ID: 31617/31624/31625) - Say text',0,0,0,0);

DELETE FROM dbscript_random_templates WHERE id IN(10134);
INSERT INTO dbscript_random_templates (id,type,target_id,chance,comments) VALUES
(10134,1,0,80,'Raise Dead Spell (ID: 31617/31624/31625) - Do nothing'),
(10134,1,10133,20,'Raise Dead Spell (ID: 31617/31624/31625) - Say random text');

