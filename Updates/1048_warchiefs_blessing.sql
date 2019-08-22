-- correct positions and quaternions
DELETE FROM gameobject WHERE guid IN(12345,12344) AND id IN(175787,175788);
INSERT INTO gameobject(guid, id, map, spawnMask, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecsmin, spawntimesecsmax, animprogress, state) VALUES
('12345', '175787', '1', '1', '1917.503', '-4125.076', '42.95111', '-1.204277', '0', '0', '-0.5664063', '0.8241262', '900', '900', '100', '1'),
('12344', '175788', '1', '1', '1922.421', '-4124.92', '42.93932', '-1.919862', '0', '0', '-0.8191519', '0.5735767', '900', '900', '100', '1');
-- spell cast done in core now
DELETE FROM dbscripts_on_quest_end WHERE command=15 AND datalong=16609;
-- fixup of standup for thrall based on sniff
UPDATE dbscripts_on_quest_end SET data_flags=2 WHERE id IN(4974) AND command = 13 AND buddy_entry=175787;
UPDATE dbscripts_on_quest_end SET command=1,datalong=0 WHERE id IN(4974) AND command = 28 AND datalong=0;
UPDATE dbscripts_on_quest_end SET command=1,datalong=415 WHERE id IN(4974) AND command = 28 AND datalong=5;
UPDATE creature_template_addon SET emote=415,bytes1=0 WHERE entry IN(4949);


