DELETE FROM npc_gossip WHERE npc_guid IN(SELECT guid FROM creature WHERE id IN(21772,21774));
DELETE FROM gossip_menu WHERE entry IN(8392,8410);
INSERT INTO gossip_menu VALUES('8392', '10491', '0', '0');
INSERT INTO gossip_menu VALUES('8410', '10460', '0', '0');

UPDATE npc_text SET text0_0='I''m extremely busy, $r.$B$BWe have a terrible problem on our hands that must be dealt with at once!' WHERE id=10460;

UPDATE creature_template SET GossipMenuId=8410 WHERE entry=21772;
UPDATE creature_template SET GossipMenuId=8392 WHERE entry=21774;

DELETE FROM conditions WHERE condition_entry IN(3002,3003,3004,3005,3006,3007,3008,3009,3010,3011,3012,3013,3014,3015);
INSERT INTO conditions VALUES
(3002,9,10625,0), -- horde
(3003,9,10643,0), -- ally
(3004,16,30719,1), -- first tier spectrecles
(3005,-1,3002,3004), -- on first quest if lost spectrecles horde
(3006,-1,3003,3004), -- on first quest if lost spectrecles alliance
(3007,9,10633,0), -- horde
(3008,9,10644,0), -- ally
(3009,8,10633,0),
(3010,8,10644,0),
(3011,-2,3007,3009),
(3012,-2,3008,3010),
(3013,16,30721,1), -- second tier spectrecles
(3014,-1,3011,3013), -- horde
(3015,-1,3012,3013); -- ally

DELETE FROM gossip_menu_option WHERE menu_id IN(8392,8410);
INSERT INTO gossip_menu_option(menu_id, id, option_icon, option_text, option_id, npc_option_npcflag, action_menu_id, action_script_id, condition_id) VALUES
(8392,0,0,'Have you lost your Spectrecles?',1,1,-1,8392,3006),
(8392,1,0,'Have you lost your Spectrecles?',1,1,-1,8410,3015),
(8410,0,0,'Have you lost your Spectrecles?',1,1,-1,8392,3005),
(8410,1,0,'Have you lost your Spectrecles?',1,1,-1,8410,3014);

DELETE FROM dbscripts_on_gossip WHERE id IN(8392,8410);
INSERT INTO dbscripts_on_gossip VALUES
(8392,0,15,37602,0,0,0,0,0,0,0,0,0,0,0,0,'Replace lost spectrecles'),
(8410,0,15,37700,0,0,0,0,0,0,0,0,0,0,0,0,'Replace lost spectrecles');


