-- q.10438 'On Nethery Wings' -- update
UPDATE gossip_menu_option SET action_script_id = 822901 WHERE menu_id = 8229;
DELETE FROM dbscripts_on_gossip WHERE id IN (8229,822901); -- scriptid corrected .. should be gossip+01... 
INSERT INTO dbscripts_on_gossip (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(822901,0,30,627,0,0,0,0,0,0,0,0,0,0,0,0,0,'taxi path'); -- same
-- Void Conduit 20899
-- UPDATE creature_template SET UnitFlags = 0, ExtraFlags = 64 WHERE entry = 20899; -- same
DELETE FROM dbscripts_on_creature_death WHERE id IN (20899);
INSERT INTO dbscripts_on_creature_death (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(20899,0,0,0,0,0,0,0,0,18602,0,0,0,0,0,0,0,'Yell on Death'); -- from acid

