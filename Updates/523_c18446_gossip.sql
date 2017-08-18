-- Earthbinder Tavgren (18446) Gossip
DELETE FROM conditions WHERE condition_entry=526;
INSERT INTO conditions (condition_entry, type, value1, value2) VALUES
(526, 8, 9971, 0); -- Quest 9971 Rewarded

UPDATE gossip_menu SET condition_id=526 WHERE entry=7696 AND text_id=9407;

