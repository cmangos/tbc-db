-- Remove model from Shade of Aran invisible NPCs which does not appear in sniff
UPDATE creature_template SET ModelId2=0 WHERE entry BETWEEN 17168 AND 17176;


