-- ===================
-- Fixes by Killerwife
-- ===================
-- To Legion Hold backport and cleanup
-- http://www.wowhead.com/quest=10563/to-legion-hold
-- http://www.wowhead.com/quest=10596/to-legion-hold

-- To Legion Hold(q.10596) -H  (q.10563) -A
-- summoned creature "Image of Warbringer Razuun" shoudn't move + equip. update
UPDATE creature_template SET EquipmentTemplateId = 5305, MovementType = 0 WHERE entry = 21502;
-- now lets 'Deathbringer Jovaan' - do q.event
UPDATE creature_template SET MovementType = 2 WHERE entry = 21633;
DELETE FROM creature_movement_template WHERE entry = 21633;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, orientation, model1, model2) VALUES
(21633,1,-3312.04,2948.81,171.12,1000,2163301,0,0,0,0,0,0,0,4.83,0,0),
(21633,2,-3308.27,2935.259,170.99,0,0,0,0,0,0,0,0,0,5.38,0,0),
(21633,3,-3304.39,2930.692,170.92,48000,2163302,0,0,0,0,0,0,0,5.57,0,0),
(21633,4,-3308.78,2935.84,171.02,0,0,0,0,0,0,0,0,0,1.75,0,0),
(21633,5,-3311.86,2949.64,171.12,0,0,0,0,0,0,0,0,0,1.82,0,0);
DELETE FROM dbscripts_on_creature_movement WHERE id IN (2163301, 2163302); 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(2163301,0,15,7791,0,0,0,0,0,0,0,0,0,0,0,0,'visual - summon'),
(2163302,3,1,25,0,0,0,0,0,0,0,0,0,0,0,0,''),
(2163302,4,0,0,0,0,0,0,2000005432,0,0,0,0,0,0,0,''),
(2163302,4,28,8,0,0,0,0,0,0,0,0,0,0,0,0,'STATE_KNEEL'),
(2163302,5,10,21502,43000,0,0,0,0,0,0,0,-3300.25,2927.11,173.654,2.45862,'summon - Image of Warbringer Razuun'),
(2163302,6,0,0,0,21502,10,0x04,2000005433,0,0,0,0,0,0,0,'force 21502 to: say text'),
(2163302,11,0,0,0,0,0,0,2000005434,0,0,0,0,0,0,0,''),
(2163302,16,0,0,0,21502,10,0x04,2000005435,0,0,0,0,0,0,0,'force 21502 to: say text'),
(2163302,19,1,25,0,21502,10,0x04,0,0,0,0,0,0,0,0,'force 21502 to: emote'),
(2163302,24,28,0,0,0,0,0,0,0,0,0,0,0,0,0,'STATE_STAND'),
(2163302,26,0,0,0,0,0,0,2000005436,0,0,0,0,0,0,0,''),
(2163302,31,0,0,0,21502,10,0x04,2000005437,0,0,0,0,0,0,0,'force 21502 to: say text'),
(2163302,35,0,0,0,0,0,0,2000005438,0,0,0,0,0,0,0,''),
(2163302,39,0,0,0,21502,10,0x04,2000005439,0,0,0,0,0,0,0,'force 21502 to: say text'),
(2163302,42,1,25,0,21502,10,0x04,0,0,0,0,0,0,0,0,'force 21502 to: emote'),
(2163302,45,1,66,0,0,0,0,0,0,0,0,0,0,0,0,'');
DELETE FROM db_script_string WHERE entry BETWEEN 2000005432 AND 2000005439;
INSERT INTO db_script_string (entry, content_default, content_loc1, content_loc2, content_loc3, content_loc4, content_loc5, content_loc6, content_loc7, content_loc8,emote) VALUES
(2000005432,'Everything is in readiness, warbringer.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),
(2000005433,'Doom Lord Kazzak will be pleased. You are to increase the pace of your attacks. Destroy the orcish and dwarven strongholds with all haste.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1),
(2000005434,'Warbringer, that will require the use of all the hold\'s infernals. It may leave us vulnerable to a counterattack',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),
(2000005435,'Don\'t worry about that. I\'ve increased production at the Deathforge. You\'ll have all the infernals you need to carry out your orders. Don\'t fail, Jovaan.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1),
(2000005436,'It shall be as you say, warbringer. One last question, if I may...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,66),
(2000005437,'Yes?',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,6),
(2000005438,'What\'s in the crate?',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,6),
(2000005439,'Crate? I didn\'t send you a crate, Jovaan. Don\'t you have more important things to worry about? Go see to them!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,5);

-- To Legion Hold(q.10596) -H  (q.10563) -A -- small update
DELETE FROM dbscripts_on_creature_movement WHERE id = 2163301; 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(2163301,0,15,34427,0,0,0,0,0,0,0,0,0,0,0,0,'visual - summon'); -- correct spell from sniff

-- UDB_247
-- To Legion Hold(q.10596) -H  (q.10563) -A - Update
-- communication device will despawn, to let correct see event with "Image of Warbringer Razuun"
DELETE FROM dbscripts_on_event WHERE id = 13852; 
INSERT INTO dbscripts_on_event (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES 
(13852,0,15,48342,0,0,0,4,0,0,0,0,0,0,0,0,'stun'),
(13852,3,10,21633,61000,0,0,0,0,0,0,0,-3312.04,2948.81,171.12,4.83,'summon - Deathbringer Jovaan'),
(13852,5,40,0,0,184834,25737,1 | 0x10,0,0,0,0,0,0,0,0,'despawn object'),
(13852,5,40,0,0,184835,25738,1 | 0x10,0,0,0,0,0,0,0,0,'despawn object'),
(13852,57,8,21502,0,0,0,4,0,0,0,0,0,0,0,0,'q. completed'),
(13852,60,14,48342,0,0,0,4,0,0,0,0,0,0,0,0,'stun');
-- sync. gameobjcts with quest. 
UPDATE gameobject SET spawntimesecs = 60 WHERE id IN (184834,184835);

DELETE FROM spell_template WHERE id=37492;
INSERT INTO spell_template(id,effect0,effect0_misc_value,comments) VALUES(37492,61,13852,'BOX O TRICKS EVENT TRIGGER'); -- add trigger for server-side spell boxotricks

