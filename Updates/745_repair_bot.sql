-- Correct unitflags of Repair Bots
-- Source: WotLK-DB
UPDATE creature_template SET UnitFlags=768 WHERE entry IN (14337,24780);

