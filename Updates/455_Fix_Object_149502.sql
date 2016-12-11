-- =================================================================
-- Fix Hoard of the Black Dragonflight Object (Should be Selectable)
-- =================================================================
UPDATE gameobject_template SET flags=0 WHERE entry IN (149502);

