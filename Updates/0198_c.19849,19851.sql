-- https://www.wowhead.com/wotlk/quest=10248/you-robot#comments:id=5235735
-- https://www.youtube.com/watch?v=X4_8Aautsa0&ab_channel=GitGudGuides

-- Scrap Reaver X6000 (19849) - npc_scrap_reaver
-- https://www.wowhead.com/tbc/npc=19849/scrap-reaver-x6000
UPDATE `creature_template` SET `SpeedWalk` = 4, `SpeedRun` = 2.57143 WHERE `entry` = 19849;
DELETE FROM creature_template_spells WHERE entry = 19849; -- all have CategoryRecoveryTime: 10000 ms so no need for manual CD setting.
INSERT INTO creature_template_spells (entry, setId, spell1, spell2, spell3, spell4, spell5, spell6, spell7, spell8, spell9, spell10) VALUES
(19849,0,0,0,34618,34620,34619,0,0,0,0,0); -- first three slots are always taken by pet commands! spell3 removed in wrath

-- ==========================

-- Negatron 19851 - https://www.wowhead.com/tbc/npc=19851/negatron
-- https://www.wowhead.com/tbc/npc=19851/negatron#comments:id=58902
UPDATE `creature_template` SET `SpellList` = 1985101 WHERE `entry` = 19851;

-- 19851	0	34625	33919	0	0	0	0	0	0	0	0
DELETE FROM `creature_template_spells` WHERE `entry` = 19851;

DELETE FROM `creature_spell_list_entry` WHERE `Id` = 1985101;
INSERT INTO `creature_spell_list_entry` (`Id`, `Name`, `ChanceSupportAction`, `ChanceRangedAttack`) VALUES
(1985101, 'Netherstorm - Negatron (19851)', 0, 0);

DELETE FROM `creature_spell_list` WHERE `Id` = 1985101;
INSERT INTO `creature_spell_list` (`Id`, `Position`, `SpellId`, `Flags`, `CombatCondition`, `TargetId`, `ScriptId`, `Availability`, `Probability`, `InitialMin`, `InitialMax`, `RepeatMin`, `RepeatMax`, `Comments`) VALUES
(1985101, 1, 34625, 0, -1, 1, 0, 100, 0, 5000, 10000, 20000, 30000, 'Negatron - Demolish'),
(1985101, 2, 35565, 0, -1, 0, 0, 100, 0, 12000, 30000, 30000, 60000, 'Negatron - Earthquake'),
(1985101, 3, 35570, 0, -1, 107, 0, 100, 0, 10000, 30000, 25000, 30000, 'Negatron - Charge on random player not in melee'),
(1985101, 4, 34624, 0, -1, 0, 0, 100, 0, 10000, 30000, 20000, 30000, 'Negatron - Enrage'); -- renmamed Frenzy in wrath

