-- ---------------------------------------------------------
-- CompleteScript for quest A Cure for Zahlia q.10020
-- ---------------------------------------------------------

-- Set quest_template
UPDATE quest_template SET CompleteScript=10020 WHERE entry=10020;

-- Add script
DELETE FROM `dbscripts_on_quest_end` WHERE `id` IN(10020);
INSERT INTO `dbscripts_on_quest_end` (`id`,`delay`,`priority`,`command`,`datalong`,`datalong2`,`datalong3`,`dataint`,`dataint2`,`dataint3`,`dataint4`,`buddy_entry`,`search_radius`,`data_flags`,`comments`,`x`,`y`,`z`,`o`) VALUES
(10020,0,0,32,1,0,0,0,0,0,0,18653,25,0,'Seth - Pause Waypoints',0,0,0,0),
(10020,875,0,42,0,0,0,3699,3697,0,0,0,0,0,'Sha''nir - Set Equipment slots',0,0,0,0),
(10020,2484,0,1,133,0,0,0,0,0,0,0,0,0,'Sha''nir - STATE_USESTANDING_NOSHEATHE',0,0,0,0),
(10020,9750,0,1,0,0,0,0,0,0,0,0,0,0,'Sha''nir - ONESHOT_NONE',0,0,0,0),
(10020,9750,0,42,1,0,0,0,0,0,0,0,0,0,'Sha''nir - Reset Equipment slots',0,0,0,0),
(10020,11000,0,3,0,0,0,0,0,0,0,0,0,0,'Sha''nir - Move',-1607.125,5299.7305,-38.577827,100),
(10020,13984,0,0,0,0,0,2000001637,0,0,0,0,0,0,'Sha''nir - Drink this, Zahlia.  It is not as potent as I''d hoped, but perhaps it will help.',0,0,0,0),
(10020,17453,0,42,0,0,0,2199,0,0,0,18652,5,0,'Zahlia - Set Equipment slots',0,0,0,0),
(10020,19484,0,1,92,0,0,0,0,0,0,18652,5,0,'Zahlia - OneShotEatNoSheathe',0,0,0,0),
(10020,25703,0,0,0,0,0,2000001638,0,0,0,18652,5,0,'Zahlia - I... I can see...',0,0,0,0),
(10020,28000,0,42,1,0,0,0,0,0,0,18652,5,0,'Zahlia - Reset Equipment slots',0,0,0,0),
(10020,29250,0,28,8,0,0,0,0,0,0,18652,5,0,'Zahlia - UNIT_STAND_STATE_KNEEL',0,0,0,0),
(10020,31672,0,1,18,0,0,0,0,0,0,18652,5,0,'Zahlia - OneShotCry',0,0,0,0),
(10020,32875,0,3,0,0,0,0,0,0,0,0,0,0,'Sha''nir - Move',-1605.4729,5292.9756,-38.577824,100),
(10020,34219,0,0,0,0,0,2000001639,0,0,0,18652,10,0,'Zahlia - I thought I''d never see my son''s face again.  Come here, Seth!  Let mom take a look at you!',0,0,0,0),
(10020,35703,0,36,1,0,0,0,0,0,0,0,0,0,'Sha''nir - Reset Facing',0,0,0,0),
(10020,36531,0,28,0,0,0,0,0,0,0,18652,10,0,'Zahlia - UNIT_STAND_STATE_STAND',0,0,0,0),
(10020,36531,0,3,0,0,0,0,0,0,0,18653,25,0,'Seth - Move',-1607.6587,5301.146,-38.577797,100),
(10020,37875,0,0,0,0,0,2000001640,0,0,0,18653,25,0,'Seth - Don''t cry mommy.  I''m right here, see?',0,0,0,0),
(10020,60000,0,32,0,0,0,0,0,0,0,18653,10,0,'Seth - Resume Waypoints',0,0,0,0);

-- Add texts
DELETE FROM `dbscript_string` WHERE `entry` BETWEEN 2000001637 AND 2000001640;
INSERT INTO `dbscript_string` (`entry`, `content_default`, `sound`, `type`, `language`, `emote`, `comment`, `broadcast_text_id`) VALUES 
(2000001637, 'Drink this, Zahlia.  It is not as potent as I''d hoped, but perhaps it will help.', 0, 0, 0, 1, 'Sha''nir (Entry: 18597)',15639),
(2000001638, 'I... I can see...', 0, 0, 0, 0, 'Zahlia (Entry: 18652)',15636),
(2000001639, 'I thought I''d never see my son''s face again.  Come here, Seth!  Let mom take a look at you!', 0, 0, 0, 0, 'Zahlia (Entry: 18652)',15637),
(2000001640, 'Don''t cry mommy.  I''m right here, see?', 0, 0, 0, 0, 'Seth (Entry: 18653)',15638);

