-- missing data and script for q.10808
INSERT INTO creature(guid, id, map, spawnMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES
('150743', '12999', '530', '1', '0', '0', '-4192.256', '2005.324', '53.56592', '4.555309', '300', '300', '0', '0', '0', '0', '0', '0');

DELETE FROM spell_script_target WHERE entry IN(38482);
INSERT INTO spell_script_target(entry, type, targetEntry, inverseEffectMask) VALUES
('38482', '1', '22137', '0'),
('37281', '1', '22138', '0');

-- ('14293',/*delay*/'0',/*prio*/'0',/*cmd*/'0',/*dl*/'0',/*dl2*/'0',/*dl3*/'0',/*buddy*/'0',/*radius*/'0',/*flags*/'0',/*dint*/'0',/*dint2*/'0',/*dint3*/'0',/*dint4*/'0',/*x*/'0',/*y*/'0',/*z*/'0',/*o*/'0',/*comments*/''),
INSERT INTO dbscripts_on_event(id, delay, priority, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
('14293',/*delay*/'0',/*prio*/'0',/*cmd*/'15',/*dl*/'37281',/*dl2*/'0',/*dl3*/'0',/*buddy*/'22137',/*radius*/'30',/*flags*/'4',/*dint*/'0',/*dint2*/'0',/*dint3*/'0',/*dint4*/'0',/*x*/'0',/*y*/'0',/*z*/'0',/*o*/'0',/*comments*/'Cast Infernal Oversoul''s Wrath'),
('14293',/*delay*/'12000',/*prio*/'0',/*cmd*/'18',/*dl*/'0',/*dl2*/'0',/*dl3*/'0',/*buddy*/'0',/*radius*/'0',/*flags*/'0',/*dint*/'0',/*dint2*/'0',/*dint3*/'0',/*dint4*/'0',/*x*/'0',/*y*/'0',/*z*/'0',/*o*/'0',/*comments*/'Despawn self'),
('14293',/*delay*/'12000',/*prio*/'0',/*cmd*/'18',/*dl*/'0',/*dl2*/'0',/*dl3*/'0',/*buddy*/'22137',/*radius*/'50',/*flags*/'1',/*dint*/'0',/*dint2*/'0',/*dint3*/'0',/*dint4*/'0',/*x*/'0',/*y*/'0',/*z*/'0',/*o*/'0',/*comments*/'Despawn Old God'),
('14293',/*delay*/'12000',/*prio*/'0',/*cmd*/'18',/*dl*/'0',/*dl2*/'0',/*dl3*/'0',/*buddy*/'22138',/*radius*/'50',/*flags*/'1',/*dint*/'0',/*dint2*/'0',/*dint3*/'0',/*dint4*/'0',/*x*/'0',/*y*/'0',/*z*/'0',/*o*/'0',/*comments*/'Despawn Ritualist'),
('14293',/*delay*/'12000',/*prio*/'0',/*cmd*/'18',/*dl*/'0',/*dl2*/'0',/*dl3*/'0',/*buddy*/'22138',/*radius*/'50',/*flags*/'1',/*dint*/'0',/*dint2*/'0',/*dint3*/'0',/*dint4*/'0',/*x*/'0',/*y*/'0',/*z*/'0',/*o*/'0',/*comments*/'Despawn Ritualist'),
('14293',/*delay*/'12000',/*prio*/'0',/*cmd*/'18',/*dl*/'0',/*dl2*/'0',/*dl3*/'0',/*buddy*/'22138',/*radius*/'50',/*flags*/'1',/*dint*/'0',/*dint2*/'0',/*dint3*/'0',/*dint4*/'0',/*x*/'0',/*y*/'0',/*z*/'0',/*o*/'0',/*comments*/'Despawn Ritualist'),
('14293',/*delay*/'12000',/*prio*/'0',/*cmd*/'18',/*dl*/'0',/*dl2*/'0',/*dl3*/'0',/*buddy*/'22138',/*radius*/'50',/*flags*/'1',/*dint*/'0',/*dint2*/'0',/*dint3*/'0',/*dint4*/'0',/*x*/'0',/*y*/'0',/*z*/'0',/*o*/'0',/*comments*/'Despawn Ritualist');


