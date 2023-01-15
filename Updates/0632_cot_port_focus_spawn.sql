-- focus needed for spell 46343 - actual focus GO not know used placeholder
-- spawn was later deleted by massive AQ War Effort File - prevguid: 155122
-- https://github.com/cmangos/tbc-db/commit/9bb4fdef14b5b389c5f144c5612e8c90862a7072
DELETE FROM gameobject WHERE guid IN(5309449) AND id IN(300156); -- free tbc/wotlkmangos
INSERT INTO gameobject(guid,id,map,spawnmask,position_x,position_y,position_z,orientation) VALUES
(5309449,300156,530,1,-1747.74,5159.73,-37.1216,6.21337);

