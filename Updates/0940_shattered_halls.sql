-- Shattered Halls rework
-- Convert creature_spell_list

-- Shattered Hand heathen
REPLACE INTO `creature_spell_list` (Id, Position, SpellId, Flags, TargetId, ScriptId, Availability, Probability, InitialMin, InitialMax, RepeatMin, RepeatMax, Comments) VALUES
(1742001, 1, 30474, 0, 1, 0, 100, 0, 6000, 13000, 12000, 16000, "Shattered Hand Heathen (Normal) - Bloodthirst"),
(2058701, 1, 35949, 0, 1, 0, 100, 0, 6000, 13000, 12000, 16000, "Shattered Hand Heathen (Heroic) - Bloodthirst");

UPDATE `creature_template` SET SpellList=1742001 WHERE entry = 17420;
UPDATE `creature_template` SET SpellList=2058701 WHERE entry = 20587;