-- Devastation 21269 - spell_list
-- https://github.com/cmangos/tbc-db/commit/f65de43a604b1835d9ee3556fb3a82cf4c2c0367#diff-8344129e35190a1fe0366238d7f8994431be263a6cfe54e26376f0479744540bL29442-L29445
-- https://github.com/cmangos/tbc-db/commit/369b5b1acbc712a5c0c3de1d94f17e9b4a9b8db5
UPDATE creature_template SET SpellList = 2126901 WHERE entry=21269;
DELETE FROM creature_spell_list_entry WHERE Id IN(2126901);
INSERT INTO creature_spell_list_entry(Id, Name, ChanceSupportAction, ChanceRangedAttack) VALUES
(2126901, 'TK - Devastation', 0, 0);
DELETE FROM creature_spell_list WHERE Id IN(2126901);
INSERT INTO creature_spell_list(Id, Position, SpellId, Flags, CombatCondition, TargetId, ScriptId, Availability, Probability, InitialMin, InitialMax, RepeatMin, RepeatMax, Comments) VALUES
('2126901', '0', '36981', '0', '101', '0', '0', '100', '1','10000','15000','20000','25000', 'Devastation - Whirlwind'); -- 10-15 repeat prenerf?

