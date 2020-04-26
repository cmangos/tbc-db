-- Restore data6 for GO 178559 (Larva Spewer) to sniff value (negative)
UPDATE gameobject_template SET data6=-65536 WHERE entry=178559;
