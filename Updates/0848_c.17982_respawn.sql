-- Demolitionist Legoso 17982 should instantly respawn on Quest End / Death - npc_demolitionist_legoso
-- Already has CREATURE_EXTRA_FLAG_NO_XP_AT_KILL
UPDATE `creature` SET `spawntimesecsmin` = 1, `spawntimesecsmax` = 1 WHERE `id` = 17982; -- should instantly respawn if quest is failed

