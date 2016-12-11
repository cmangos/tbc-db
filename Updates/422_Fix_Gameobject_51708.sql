-- ==================================
-- Fix GO: 51708 "Eliza's Grave Dirt"
-- ==================================
UPDATE gameobject_template SET flags=4 WHERE entry IN (51708);

