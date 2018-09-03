-- Fix 3 spell_script_targets using the old temporary Spell Focus gameobjects
-- Proper Spell Focus templates were added here: https://github.com/cmangos/tbc-db/commit/c14185d8cde57d6722f9fef6e587c6befc65023f
UPDATE spell_script_target SET targetEntry=184826 WHERE targetEntry=300106 AND entry=36904; -- Lashh'an Circle Spell Focus
UPDATE spell_script_target SET targetEntry=185880 WHERE targetEntry=300127 AND entry=40328; -- Soulgrinder's Altar Spell Focus
UPDATE spell_script_target SET targetEntry=180867 WHERE targetEntry=300058 AND entry=26373; -- Greater Moonlight Spell Focus

