-- Toxic Tunnel 16400
-- complements https://github.com/cmangos/classic-db/commit/199e73363364b670210425bf0e4501951b5618ce which never completely made it (ACID Change)
-- 28370 and triggerspell need change to make it work
UPDATE `creature_template` SET `UnitFlags` = 33554944 WHERE `entry` = 16400; -- wotlk sniff

