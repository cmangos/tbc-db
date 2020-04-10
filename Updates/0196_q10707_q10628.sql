-- Akama q.10628 - There is a 4sec window after player turns in quest before NPCFlags are removed. This is Blizzlike
-- However if another player during that time managed to turn in and start the afterscript for q.10707 or q.10944, then the "Toggle mode" for Akama NPCflags in the afterscript would actually toggle off NPCflags instead of on after the event.
-- Change dbscripts to "Remove" and "Add" mode to prevent this from ever happening.
UPDATE dbscripts_on_quest_end SET datalong2=2 WHERE id=10628 AND command=29 AND delay=4000; -- Remove NPCFlags
UPDATE dbscripts_on_quest_end SET datalong2=1 WHERE id=10628 AND command=29 AND delay=47000; -- Add NPCFlags
-- Additionally, terminate the script if one of the other quest end scripts are already running.
-- Set priority 1 for already existing scripts
UPDATE dbscripts_on_quest_end SET priority=1 WHERE id=10628 AND delay=0;
-- Add terminate script with priority 0 to make it run first
DELETE FROM `dbscripts_on_quest_end` WHERE `id`=10628 AND command=31;
INSERT INTO `dbscripts_on_quest_end` (`id`,`delay`,`priority`,`command`,`datalong`,`datalong2`,`datalong3`,`dataint`,`dataint2`,`dataint3`,`dataint4`,`buddy_entry`,`search_radius`,`data_flags`,`comments`,`x`,`y`,`z`,`o`) VALUES
(10628,0,0,31,22820,20,0,0,0,0,0,0,0,8,'Akama - Terminate Script if Seer Olum already spawned (Both events should not run simultaneously)',0,0,0,0),
(10628,0,0,31,22865,20,0,0,0,0,0,0,0,8,'Akama - Terminate Script if Illidan''s Presence already spawned (Both events should not run simultaneously)',0,0,0,0);

-- Don't let afterscript for The Ata'mal Terrace q.10707 start if Akama q.10628 or The Secret Compromised q.10944 afterscript is already running
-- Set priority 1 for already existing scripts
UPDATE dbscripts_on_quest_end SET priority=1 WHERE id=10707 AND delay=0;
-- Add terminate script with priority 0 to make it run first
DELETE FROM `dbscripts_on_quest_end` WHERE `id`=10707 AND command=31;
INSERT INTO `dbscripts_on_quest_end` (`id`,`delay`,`priority`,`command`,`datalong`,`datalong2`,`datalong3`,`dataint`,`dataint2`,`dataint3`,`dataint4`,`buddy_entry`,`search_radius`,`data_flags`,`comments`,`x`,`y`,`z`,`o`) VALUES
(10707,0,0,31,21768,20,0,0,0,0,0,0,0,8,'Akama - Terminate Script if Vagath already spawned (Both events should not run simultaneously)',0,0,0,0),
(10707,0,0,31,22820,20,0,0,0,0,0,0,0,8,'Akama - Terminate Script if Seer Olum already spawned (Both events should not run simultaneously)',0,0,0,0),
(10707,0,0,31,22865,20,0,0,0,0,0,0,0,8,'Akama - Terminate Script if Illidan''s Presence already spawned (Both events should not run simultaneously)',0,0,0,0);

