-- Silithid Swarm 4196 - s.10722
-- https://github.com/cmangos/classic-db/commit/5cfc79c40bdab421f9c676c4e79c6dabf10d725f
DELETE FROM `creature_addon` WHERE `guid` IN (SELECT `guid` FROM `creature` WHERE `id` = 4196);
DELETE FROM `creature` WHERE `id` = 4196;

