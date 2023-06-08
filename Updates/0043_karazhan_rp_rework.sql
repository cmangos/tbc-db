-- Delete some old used dbscripts_on_creature_movement that no longer getting used to fix dberrors
-- npcs are Spectral Servant, Skeletal Waiter they are now scripted via creature_ai_script
DELETE FROM dbscripts_on_creature_movement WHERE id IN (1640701, 1641501, 1641502);