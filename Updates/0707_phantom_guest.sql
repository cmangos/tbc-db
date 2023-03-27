-- Spell List for Phantom Guest
DELETE FROM creature_spell_list WHERE Id IN (1640901, 1640902, 1640903, 1640904, 1640905);
INSERT INTO `creature_spell_list` (Id, Position, SpellId, Flags, TargetId, ScriptId, Availability, Probability, InitialMin, InitialMax, RepeatMin, RepeatMax, Comments) VALUES
-- Version 1 - Engineer
(1640901, 2, 29579, 0, 1, 0, 100, 0, 2400, 4900, 14600, 21800, "Phantom Guest (Version - Engineer) - Throw Dynamite"),
(1640901, 1, 29513, 0, 0, 0, 100, 0, 6050, 14550, 8500, 17000, "Phantom Guest (Version - Engineer) - Goblin Dragon Gun"), 
-- Version 4 Healer
(1640902, 1, 29580, 0, 201, 0, 100, 0, 2000, 9000, 9000, 13000, "Phantom Guest (Version - Healer) - Heal"),
(1640902, 2, 29514, 0, 1, 0, 100, 0, 8450, 8500, 5000, 10000, "Phantom Guest (Version - Healer) - Holy Nova"),
-- Version 3 hunter 
(1640903, 3, 29583, 0, 1, 0, 100, 0, 7000, 11000, 7000, 9000, "Phantom Guest (Version - hunter) - Impale on current"),
(1640903, 4, 29582, 2, 1, 0, 100, 0, 1100, 1200, 2400, 3700, "Phantom Guest (Version - hunter) - Throw on current"),
-- Version 3 (caster)
(1640904, 1, 29928, 0, 1, 0, 100, 0, 9700, 21000, 13000, 23000, "Phantom Guest (Version - Caster) - Immolate"),
(1640904, 2, 29930, 0, 1, 0, 100, 0, 6000, 25000, 10000, 25000, "Phantom Guest (Version - Caster) - Curse of Agony"),
(1640904, 3, 29492, 2, 1, 0, 100, 0, 1200, 3700, 2500, 5000, "Phantom Guest (Version - Caster) - Searing Pain"),
-- version 5 melee
(1640905, 1, 29581, 0, 1, 0, 100, 0, 0, 5000, 6000, 9000, "Phantom Guest (Version - Healer) - Punch");

DELETE FROM creature_spell_list_entry WHERE Id IN (1640901, 1640902, 1640903, 1640904, 1640905);
REPLACE INTO `creature_spell_list_entry` (Id, Name, ChanceSupportAction, ChanceRangedAttack) VALUES
(1650701, "Karazhan - Phantom Guest (Engineer)", 0, 0),
(1650702, "Karazhan - Phantom Guest (Healer)", 0, 0),
(1650703, "Karazhan - Phantom Guest (Hunter)", 0, 0),
(1650704, "Karazhan - Phantom Guest (Caster)", 0, 0),
(1650705, "Karazhan - Phantom Guest (Melee)", 0, 0);

-- Dance Vibe spell should not stack 
UPDATE `spell_template` SET `StackAmount`='1' WHERE (`Id`='29521');