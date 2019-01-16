-- Fixed graveyard for Alliance players in Orgrimmar. They will now be ported to Durotar (Razor Hill)
-- instead of Ashenvale. Thanks Tobschinski for pointing. This closes #270 
DELETE FROM `game_graveyard_zone` WHERE `id` = 32 AND `ghost_zone` = 1637;
INSERT INTO `game_graveyard_zone` (`id`, `ghost_zone`, `faction`) VALUES (32, 1637, 469); -- ghost spawn at Durotar, Razor Hill <- killed in Orgrimmar for alliance

-- Added missing graveyard for all players when dying in Ruins of Ahn'Qiraj
-- They will now respawn in the graveyard near the Gates of Ahn'Qiraj instead of respawning where they died
DELETE FROM `game_graveyard_zone` WHERE `ghost_zone` = 3429;
INSERT INTO `game_graveyard_zone` (`id`, `ghost_zone`, `faction`) VALUES (913, 3429, 0); -- ghost spawn at Silithus, Scarab Wall (AQ Only) <- killed in Ruins of Ahn’Qiraj for both factions

-- addition from classic-db

-- Add missing diverging graveyard when dying in Ironforge for horde and alliance, source classic-db
DELETE FROM `game_graveyard_zone` WHERE `id` = 101 AND `ghost_zone` = 1537;
INSERT INTO `game_graveyard_zone` (`id`, `ghost_zone`, `faction`) VALUES
(101, 1537, 67); -- ghost spawn at Dun Morogh, Kharanos <- killed in Ironforge for Horde
-- Alliance seems to be fine, not 102 Dun Morogh, Ironforge "right infront of the gates" but 852 Dun Morogh, Gates of Ironforge "real graveyard with ghosthealer"

