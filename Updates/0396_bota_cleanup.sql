-- DELETE unused dbscripts_on_creature_movement from botanica
DELETE FROM dbscripts_on_creature_movement WHERE id IN (1797602, 1797603, 1797604, 1799305);

-- Text should be TextEmote
UPDATE broadcast_text SET ChatTypeID = '2' WHERE Id = '16944';