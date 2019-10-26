UPDATE gossip_menu_option SET condition_id=10168 WHERE menu_id=8081 AND id = 0;
DELETE FROM conditions WHERE condition_entry=72 AND type=9 AND value1=10286; 
INSERT INTO conditions(condition_entry, type, value1, value2) VALUES
(10163,9,10286,0),
(10164,8,10286,0),
(10165,9,10287,0),
(10166,-3,10165,0),
(10167,-1,10164,10166),
(10168,-2,10163,10167);


