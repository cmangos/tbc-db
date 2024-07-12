-- NPC Unseen spawned in Duskwood should have faction 15 
-- was faction 14 before
UPDATE creature_template SET Faction = '15' WHERE entry = '3094';