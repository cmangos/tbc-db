UPDATE creature_template SET UnitFlags=33344 WHERE entry IN(20904,21622); -- warden melichar correct flags
UPDATE creature_template SET UnitFlags=832 WHERE entry IN(20977,21602); -- millhouse manastor correct flags
UPDATE creature_template SET UnitFlags=33600 WHERE entry IN(20912,21599); -- harbringer skyriss correct flags

-- cyrukh fixes
UPDATE creature_template SET UnitFlags=320,FactionAlliance=16,FactionHorde=16 WHERE entry IN(21181);
UPDATE creature_model_info SET bounding_radius=5,combat_reach=10 WHERE modelid IN(20135);

-- remove 256 unitflag from gahzrilla at end of WPs
DELETE FROM dbscripts_on_creature_movement WHERE id IN(7273) AND command=5;
INSERT INTO dbscripts_on_creature_movement(id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
('7273', '0', '5', '46', '256', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Gahzrilla - Remove Unit Flag IMMUNE_TO_PLAYER');

-- What Book? I Don't See Any Book. (10231)
UPDATE creature_template SET UnitFlags=32768|512|256 WHERE entry=19720; -- "Dirty" Larry <Ruffian>
UPDATE creature_template SET UnitFlags=32768|512|256 WHERE entry=19725; -- "Epic" Malone <Ruffian>
UPDATE creature_template SET UnitFlags=32768|512|256 WHERE entry=19726; -- "Creepjack" <Ruffian>

-- add missing 512 flag to Netherspite portals
UPDATE creature_template SET UnitFlags=33555200 WHERE entry IN(17367,17368,17369);


