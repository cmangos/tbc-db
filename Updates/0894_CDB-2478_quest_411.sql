-- Fix end script quest for quest 411 (The Prodigal Lich Returns)
-- Search range was too short
UPDATE dbscripts_on_quest_end SET search_radius=20 WHERE id=411 AND buddy_entry=5666; -- 1 out of 3 was already 20

