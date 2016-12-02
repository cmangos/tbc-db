-- ============================================================
-- Fix Mechanar - Cache of the Legion (Destroys key on Opening)
-- ============================================================
UPDATE gameobject_template SET flags=2 WHERE entry IN (184465,184849);

