-- Vir'aani Arcanist 17150
DELETE FROM creature_addon WHERE guid IN (SELECT guid FROM creature WHERE id=17150);

-- Cyro-Engineer Sha''heen
UPDATE creature_template SET SpellList=1967101 WHERE entry=19671;
DELETE FROM creature_spell_list WHERE Id=1967101;
INSERT INTO creature_spell_list (Id, Position, SpellId, Flags, CombatCondition, TargetId, ScriptId, Availability, Probability, InitialMin, InitialMax, RepeatMin, RepeatMax, Comments) VALUES
(1967101, 1, 14514, 0, 101, 0, 0, 100, 0, 13400, 21100, 50000, 60000, 'Cyro-Engineer Sha''heen - Blink'), -- NUMBER_OF_MELEE_ATTACKERS > 0
(1967101, 2, 22938, 0, -1, 0, 0, 100, 0, 18000, 45000, 13000, 25000, 'Cyro-Engineer Sha''heen - Arcane Explosion'),
(1967101, 3, 13901, 2, -1, 1, 0, 100, 0, 0, 0, 0, 0, 'Cyro-Engineer Sha''heen - Arcane Bolt on Current'), -- SPELL_LIST_FLAG_RANGED_ACTION
(1967101, 4, 33839, 0, -1, 5, 0, 100, 0, 0, 2000, 300000, 310000, 'Cyro-Engineer Sha''heen - Vir''aani Concentration - friendly missing buff include self');
DELETE FROM creature_spell_list_entry WHERE Id=1967101;
INSERT INTO creature_spell_list_entry (Id, `Name`, ChanceSupportAction, ChanceRangedAttack) VALUES
(1967101, 'Mana Tombs - Cyro-Engineer Sha''heen', 0, 75);


