-- Fixes graveyard for horde in Dun Morogh and Ironforge
-- Horde will now spawn at Kharanos instead of Wetlands when they die in Dun Morogh and Ironforge.
UPDATE game_graveyard_zone SET faction=0 WHERE id=100 AND ghost_zone=1;

