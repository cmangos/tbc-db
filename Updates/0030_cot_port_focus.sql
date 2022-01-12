-- focus needed for spell 46343 - actual focus GO not know used placeholder
DELETE FROM gameobject WHERE guid IN(155122) AND id IN(300156);
INSERT INTO gameobject(guid,id,map,spawnmask,position_x,position_y,position_z,orientation) VALUES
(155122,300156,530,1,-1747.74,5159.73,-37.1216,6.21337);

UPDATE dbscripts_on_gossip SET data_flags=2 WHERE id=9205;


