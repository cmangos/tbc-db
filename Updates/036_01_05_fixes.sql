UPDATE db_script_string SET emote=274 WHERE entry=2000005439; -- correct emote from grz3s
-- Devildog4355 | Minor Fixes
-- Move Radius for Marauding/Crust Burster
UPDATE creature SET spawndist = 30, MovementType = 1 WHERE id = 16857;
UPDATE creature SET spawndist = 30, MovementType = 1 WHERE id = 16844;