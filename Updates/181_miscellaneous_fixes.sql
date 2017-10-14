UPDATE quest_template SET SpecialFlags=2 WHERE entry IN(1560); -- fix Toogas quest quest being autocompleted at start

DELETE FROM gameobject WHERE id=2008;
INSERT INTO gameobject(guid, id, map, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecs, animprogress, state) VALUES
('17154', '2008', '0', '-19.4826', '-935.304', '58.0971', '2.6529', '-0.046553', '0.011607', '0.969178', '0.241643', '7200', '100', '1');



