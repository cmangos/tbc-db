-- Remove Gnome Citizen 39623, which dont belong in tbc-db
-- https://www.wowhead.com/npc=39623/gnome-citizen#comments
-- https://github.com/cmangos/tbc-db/commit/0e038789416aed3001357ffbbf49e255e4572cf4
-- https://github.com/cmangos/wotlk-db/commit/4b433f92c0efe3e0cdb2771e5c6604149439c099
DELETE FROM `creature_addon` WHERE `guid` IN (SELECT `guid` FROM `creature` WHERE `id` = 39623);
DELETE FROM `creature_movement` WHERE `id` IN (SELECT `guid` FROM `creature` WHERE `id` = 39623);
DELETE FROM dbscripts_on_creature_movement WHERE id IN (3962301,3962302);
DELETE FROM `creature` WHERE `id` = 39623;
DELETE FROM `creature_template` WHERE `entry` = 39623;

