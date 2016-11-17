-- ===========================================
-- Fix 4 Quest NPC in Kirin'Var in Netherstorm - Remove Unknown Faction Change to Friendly (Makes No Sense)
-- ===========================================
DELETE FROM dbscripts_on_creature_movement WHERE id IN (1954301,1954401,1954501,1954601);
UPDATE creature_movement_template SET script_id=0 WHERE point=1 AND entry IN (19543,19544,19545,19546);

