-- q.9586 'Help Tavara'
-- Tavara
-- player must be able to cast spells on her
UPDATE creature_template_addon SET b2_1_flags = 1 WHERE entry = 17551;
UPDATE creature SET curhealth = 75 WHERE guid = 63161;
UPDATE quest_template SET ReqSpellCast1 = 0 WHERE entry = 9586; -- hack removed

-- Other Priest quests
-- they shouldn't regenerate hp.
UPDATE creature SET spawntimesecs = 60 WHERE id IN (12429,12423,12427,12430,12428,17551); -- quest req.
UPDATE creature_template SET RegenerateStats = 2 WHERE Entry IN (12429,12423,12427,12430,12428,17551);


