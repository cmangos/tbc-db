-- blizzlike - tbc misses this modelid - no sniff - so cant use it - in wotlk do use this
-- UPDATE creature_template SET ModelId2=23501 WHERE entry IN(21654);
-- custom one with relatively same size and height as needed
UPDATE creature_template SET ModelId2=19595 WHERE entry IN(21654);

