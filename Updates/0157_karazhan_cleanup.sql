-- Delete some old used dbscripts_on_creature_movement that no longer getting used to fix dberrors
-- npcs are Spectral Servant, Skeletal Waiter and Bennet
DELETE FROM dbscripts_on_creature_movement WHERE id IN (1640701, 1641501, 1641502, 1642601, 1642607, 1642611);