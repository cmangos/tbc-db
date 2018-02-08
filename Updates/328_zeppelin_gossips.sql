UPDATE creature_template SET ExtraFlags=ExtraFlags|4096 WHERE entry IN(12137,9564,12136,9566,3150,3149);

DELETE FROM npc_gossip WHERE npc_guid IN(368,32037,3464,32036,3463,369);

DELETE FROM npc_text WHERE id IN(11182,11179);
INSERT INTO npc_text(Id,text0_0,text0_1,prob0) VALUES
(11182,'The zeppelin should just have departed from Undercity.','The zeppelin should just have departed from Undercity.',1),
(11179,'The zeppelin should just have arrived at Undercity.','The zeppelin should just have arrived at Undercity.',1);

UPDATE creature_template SET GossipMenuId=3842 WHERE entry IN(12137);
UPDATE creature_template SET GossipMenuId=2441 WHERE entry IN(3149);

UPDATE gossip_menu_option SET action_menu_id=8766 WHERE menu_id IN(2101);
UPDATE gossip_menu_option SET action_menu_id=8765 WHERE menu_id IN(1971);
UPDATE gossip_menu_option SET action_menu_id=8764 WHERE menu_id IN(2441);
DELETE FROM gossip_menu WHERE entry IN(8766) AND text_id IN(11179,11182);
INSERT INTO gossip_menu VALUES
(8766,11179,0,0),
(8766,11182,0,0);

-- Squibby Overspeck
-- Hin Denburg
UPDATE gossip_menu SET condition_id=1300 WHERE entry IN(8766) AND text_id IN(11179);
UPDATE gossip_menu SET condition_id=1301 WHERE entry IN(8766) AND text_id IN(11182);
UPDATE gossip_menu SET condition_id=1302 WHERE entry IN(8766) AND text_id IN(11180);
UPDATE gossip_menu SET condition_id=1303 WHERE entry IN(8766) AND text_id IN(11181);

-- Zapetta
-- Freeza
UPDATE gossip_menu SET condition_id=1304 WHERE entry IN(8765) AND text_id IN(11165);
UPDATE gossip_menu SET condition_id=1305 WHERE entry IN(8765) AND text_id IN(11174);
UPDATE gossip_menu SET condition_id=1306 WHERE entry IN(8765) AND text_id IN(11173);
UPDATE gossip_menu SET condition_id=1307 WHERE entry IN(8765) AND text_id IN(11175);

-- Nez'Raz
-- Snurk Bucksquick
UPDATE gossip_menu SET condition_id=1308 WHERE entry IN(8764) AND text_id IN(11169);
UPDATE gossip_menu SET condition_id=1309 WHERE entry IN(8764) AND text_id IN(11170);
UPDATE gossip_menu SET condition_id=1310 WHERE entry IN(8764) AND text_id IN(11167);
UPDATE gossip_menu SET condition_id=1311 WHERE entry IN(8764) AND text_id IN(11172);

-- arrivals 11167,11169
-- arrivals 11165,11173
-- arrivals 11179,11180

DELETE FROM conditions WHERE condition_entry BETWEEN 1300 AND 1311;
INSERT INTO conditions VALUES
(1300,40,176495,15312), -- arrived UC
(1301,40,176495,15313), -- departed UC
(1302,40,176495,15314), -- arrived Gromgol
(1303,40,176495,15315), -- departed Gromgol
(1304,40,164871,15318), -- arrived OG
(1305,40,164871,15319), -- departed OG
(1306,40,164871,15320), -- arrived UC
(1307,40,164871,15321), -- departed UC
(1308,40,175080,15322), -- arrived OG
(1309,40,175080,15323), -- departed OG
(1310,40,175080,15324), -- arrived Gromgol
(1311,40,175080,15325); -- departed Gromgol


