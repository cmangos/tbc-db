-- q.10607 Whispers of the Raven God

DELETE FROM spell_area WHERE spell=37475 AND area=3781;
INSERT INTO `spell_area` (`spell`, `area`, `quest_start`, `quest_start_active`, `quest_end`, `condition_id`, `aura_spell`, `racemask`, `gender`, `autocast`) VALUES
(37475, 3781, 10607, 1, 0, 0, 0, 0, 2, 1);

INSERT INTO `conditions` (`condition_entry`, `type`, `value1`, `value2`) VALUES 
(10083, 1, 37475, 0); -- Has aura 37475

INSERT INTO `dbscripts_on_relay` (`id`,`delay`,`command`,`datalong`,`datalong2`,`datalong3`,`dataint`,`dataint2`,`dataint3`,`dataint4`,`buddy_entry`,`search_radius`,`data_flags`,`comments`,`x`,`y`,`z`,`o`) VALUES
(10093,0,15,37466,0,0,0,0,0,0,0,0,4,'q.10607 - Player casts s.37466 on Self',0,0,0,0);

