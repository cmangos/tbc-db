UPDATE creature_template SET ScriptName='npc_event_generator_001' WHERE entry IN (2334);
DELETE FROM string_id WHERE Id IN(5300001) AND Name ='SILVERMOON_GUARDIANS_TURN_1';
DELETE FROM string_id WHERE Id IN(5300002) AND Name ='SILVERMOON_GUARDIANS_TURN_2';
INSERT INTO string_id(Id, Name) VALUES
(5300001,'SILVERMOON_GUARDIANS_TURN_1'),
(5300002,'SILVERMOON_GUARDIANS_TURN_2');
DELETE FROM string_id WHERE Id IN(5300003) AND Name ='SILVERMOON_GUARDIANS_TURN_EVENT';
INSERT INTO string_id(Id, Name) VALUES
(5300003,'SILVERMOON_GUARDIANS_TURN_EVENT');
DELETE FROM creature_spawn_data_template WHERE Entry=5300001 AND StringId = 5300001;
DELETE FROM creature_spawn_data_template WHERE Entry=5300002 AND StringId = 5300002;
DELETE FROM creature_spawn_data_template WHERE Entry=5300003 AND StringId = 5300003;
INSERT INTO creature_spawn_data_template(Entry,StringId,Name) VALUES
(5300001,5300001,'Silvermoon City Guardian - Turn targeting 1'),
(5300002,5300002,'Silvermoon City Guardian - Turn targeting 2');
INSERT INTO creature_spawn_data_template(Entry,StringId,Name) VALUES
(5300003,5300003,'Event Generator 001 - Turn targeting');
DELETE FROM creature_spawn_data WHERE Guid IN(56924,56923,56925,56917,56918,56919,56920,56921,56922,56926,56927,56928,140790);
INSERT INTO creature_spawn_data(Guid, Id) VALUES
(56924,5300001),
(56923,5300002),
(56925,5300002),
(56917,5300002),
(56918,5300002),
(56919,5300002),
(56920,5300002),
(56921,5300001),
(56922,5300001),
(56926,5300001),
(56927,5300001),
(56928,5300001);
INSERT INTO creature_spawn_data(Guid, Id) VALUES
(140790,5300003);

SET @MOVID=64058; -- arcane guardian
UPDATE creature SET position_x=9940.521,position_y=-7116.023,position_z=47.712418,MovementType=4 WHERE guid = @MOVID + 0;
DELETE FROM creature_movement WHERE Id = @MOVID + 0;
INSERT INTO creature_movement (Id, Point, PositionX, PositionY, PositionZ, Orientation, WaitTime, ScriptId, Comment) VALUES
(@MOVID + 0, '1', '9940.521', '-7116.023', '47.712418', '100', '0', '0', NULL),
(@MOVID + 0, '2', '9911.249', '-7151.739', '45.069153', '100', '0', '0', NULL),
(@MOVID + 0, '3', '9888.47', '-7178.521', '31.030865', '100', '0', '0', NULL),
(@MOVID + 0, '4', '9854.697', '-7169.182', '30.976637', '100', '0', '0', NULL),
(@MOVID + 0, '5', '9830.894', '-7194.369', '31.026825', '100', '0', '0', NULL),
(@MOVID + 0, '6', '9843.726', '-7205.858', '28.036522', '100', '0', '0', NULL),
(@MOVID + 0, '7', '9835.979', '-7215.1074', '27.492008', '100', '0', '0', NULL),
(@MOVID + 0, '8', '9805.371', '-7246.825', '26.127098', '100', '0', '0', NULL),
(@MOVID + 0, '9', '9817.014', '-7268.104', '26.22563', '100', '0', '0', NULL),
(@MOVID + 0, '10', '9790.763', '-7288.1597', '26.844706', '100', '0', '0', NULL),
(@MOVID + 0, '11', '9764.638', '-7307.5312', '24.45531', '100', '0', '0', NULL),
(@MOVID + 0, '12', '9721.618', '-7326.2954', '19.037931', '100', '0', '0', NULL),
(@MOVID + 0, '13', '9677.174', '-7327.428', '13.764099', '100', '0', '0', NULL),
(@MOVID + 0, '14', '9676.462', '-7312.242', '13.931272', '100', '0', '0', NULL),
(@MOVID + 0, '15', '9655.123', '-7309.979', '14.968227', '100', '0', '0', NULL),
(@MOVID + 0, '16', '9654.156', '-7298.613', '14.930659', '100', '0', '0', NULL),
(@MOVID + 0, '17', '9675.06', '-7295.336', '13.935108', '100', '0', '0', NULL),
(@MOVID + 0, '18', '9678.472', '-7273.6104', '14.024085', '100', '0', '0', NULL),
(@MOVID + 0, '19', '9656.481', '-7274.7495', '13.934436', '100', '0', '0', NULL),
(@MOVID + 0, '20', '9618.255', '-7276.667', '13.95427', '100', '0', '0', NULL),
(@MOVID + 0, '21', '9578.47', '-7274.924', '13.9402', '100', '0', '0', NULL),
(@MOVID + 0, '22', '9550.27', '-7273.434', '13.927897', '100', '0', '0', NULL),
(@MOVID + 0, '23', '9507.374', '-7278.3384', '14.015342', '100', '0', '0', NULL),
(@MOVID + 0, '24', '9505.458', '-7312.6274', '14.118998', '100', '0', '0', NULL),
(@MOVID + 0, '25', '9505.458', '-7312.6274', '14.118998', '100', '0', '0', NULL),
(@MOVID + 0, '26', '9505.922', '-7325.3467', '14.118977', '100', '0', '0', NULL),
(@MOVID + 0, '27', '9505.934', '-7325.675', '14.168063', '100', '0', '0', NULL),
(@MOVID + 0, '28', '9505.98', '-7326.943', '14.406', '100', '0', '0', NULL),
(@MOVID + 0, '29', '9506.239', '-7334.0435', '14.38966', '100', '0', '0', NULL),
(@MOVID + 0, '30', '9506.246', '-7334.22', '14.389319', '100', '0', '0', NULL),
(@MOVID + 0, '31', '9506.84', '-7350.501', '14.35621', '100', '0', '0', NULL),
(@MOVID + 0, '32', '9506.3125', '-7383.637', '14.321068', '100', '0', '0', NULL),
(@MOVID + 0, '33', '9505.881', '-7418.752', '14.304741', '100', '0', '0', NULL);

UPDATE creature_movement_template SET WaitTime=25000 WHERE Entry=16655 AND Point=3;
UPDATE creature_movement_template SET WaitTime=185000 WHERE Entry=16655 AND Point=3;
UPDATE creature_movement_template SET WaitTime=120000 WHERE Entry=16655 AND Point=11;
UPDATE creature_movement_template SET WaitTime=210000 WHERE Entry=16655 AND Point=14;
