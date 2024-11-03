-- Remove wrong emoted text from Laughing Skull Rogue 17491 
UPDATE creature_spell_list SET ScriptId = 0 WHERE Id = 1749101 AND Position = 2;
UPDATE creature_spell_list SET ScriptId = 0 WHERE Id = 1861001 AND Position = 2;