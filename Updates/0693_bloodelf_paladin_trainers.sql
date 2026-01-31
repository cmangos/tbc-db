-- Apply Horde Paladin Trainer Template to UC & Orgrimmar Paladin Trainers
-- Issue was that Paladins could not Train their Warhorse at these locations.
-- https://www.wowhead.com/tbc/spell=34769/summon-warhorse#taught-by-npc
UPDATE `creature_template` SET `TrainerTemplateId` = 22 WHERE `entry` IN (
20406, -- Champion Cyssa Dawnrose
23128); -- Master Pyreanor

-- 26327 Paladin Trainer - for AT has alliane template applied which misses these two spells, cant be learned due to race conditions anyways.
-- SKILL_RACIAL_BLOODELF  = 756
DELETE FROM `npc_trainer` WHERE `entry` = 26327 AND `spell` IN (31892,34769);
INSERT INTO `npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`, `ReqAbility1`, `ReqAbility2`, `ReqAbility3`, `condition_id`) VALUES
(26327, 31892, 50000, 756, 0, 64, NULL, NULL, NULL, 0), -- Seal of Blood (Rank 1)
(26327, 34769, 10000, 0, 0, 30, NULL, NULL, NULL, 0); -- Summon Warhorse (Summon)

