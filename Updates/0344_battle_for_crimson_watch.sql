UPDATE creature_template SET GossipMenuId=8464 WHERE entry IN(22073);
DELETE FROM gossip_menu WHERE entry=8464;
INSERT INTO gossip_menu(entry, text_id, script_id, condition_id) VALUES
(8464,10573,0,0);
DELETE FROM npc_text WHERE id=10573;
DELETE FROM npc_text_broadcast_text WHERE Id=10573;
INSERT INTO npc_text_broadcast_text(Id,Prob0,Prob1,Prob2,Prob3,Prob4,Prob5,Prob6,Prob7,BroadcastTextId0,BroadcastTextId1,BroadcastTextId2,BroadcastTextId3,BroadcastTextId4,BroadcastTextId5,BroadcastTextId6,BroadcastTextId7) VALUES
(10573,1,0,0,0,0,0,0,0,19759,0,0,0,0,0,0,0);

UPDATE creature_template SET UnitFlags=320,Faction=1701 WHERE entry IN(22076);
UPDATE creature_model_info SET bounding_radius=0.766,combat_reach=3 WHERE modelid IN(20780);
UPDATE creature SET modelid=0 WHERE guid IN(79587) AND id IN(19595);
UPDATE creature_template SET UnitFlags=33588032 WHERE entry IN(22083);
UPDATE creature_template SET InhabitType=5 WHERE entry IN(22083);
UPDATE creature SET position_x=-4634.525,position_y=1384.88,position_z=143.7461,orientation=5.759586 WHERE id IN(22083) AND guid IN(79587);

