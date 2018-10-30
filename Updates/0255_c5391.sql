-- Galen Goodward 5391 - npc_galen_goodward (requires TEMPFACTION_TOGGLE_IMMUNE_TO_NPC added in SetFactionTemporary)
UPDATE `creature_template` SET `UnitFlags` = 768 WHERE `entry` = 5391; -- wotlk 512 classic: https://github.com/cmangos/classic-db/commit/0a25e3f6aeaacd25a42d5552c21ecd3f4005dd01 probably hackfix

