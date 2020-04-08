-- Don't allow players to spawn multiple Negatrons in q.10248 (You, Robot)
-- Event used in spell 34630
-- Set priority 1 for already existing scripts
UPDATE dbscripts_on_event SET priority=1 WHERE id=12821;
-- Add terminate script with priority 0 to make it run first
DELETE FROM `dbscripts_on_event` WHERE `id`=12821 AND command=31;
INSERT INTO `dbscripts_on_event` (`id`,`delay`,`priority`,`command`,`datalong`,`datalong2`,`datalong3`,`dataint`,`dataint2`,`dataint3`,`dataint4`,`buddy_entry`,`search_radius`,`data_flags`,`comments`,`x`,`y`,`z`,`o`) VALUES
(12821,0,0,31,19851,190,0,0,0,0,0,0,0,8,'(You, Robot script) - Terminate Script if Negatron already spawned',0,0,0,0);

