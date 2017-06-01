UPDATE creature_template SET ModelId1=14501,ModelId2=0 WHERE entry IN(20769);
UPDATE creature_template SET FactionAlliance=14,FactionHorde=14 WHERE entry=21425;
UPDATE gameobject_template SET data1=15 WHERE entry IN(300097); -- since its an TEMP GO, did it through eyeballing on retail

REPLACE INTO creature(guid, id, map, spawnMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES
('72462', '20454', '530', '1', '0', '0', '3881.919', '2494.047', '115.7529', '4.764749', '180', '180', '0', '0', '94448', '6618', '0', '0'),
('73277', '20769', '530', '1', '0', '0', '3840.713', '2480.351', '112.7209', '3.979351', '300', '300', '0', '0', '42', '0', '0', '0'),
('73278', '20769', '530', '1', '0', '0', '3916.083', '2489.661', '107.6608', '2.844887', '300', '300', '0', '0', '42', '0', '0', '0'),
('73279', '20769', '530', '1', '0', '0', '3881.623', '2540.748', '109.5197', '2.792527', '300', '300', '0', '0', '42', '0', '0', '0');


