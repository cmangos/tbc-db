-- Warlock Tier 3 (Plagueheart) 2-piece set bonus "Vampirism" (spell 28831)
-- procced on every cast because spell_template.ProcChance was 101.
-- Set it to 10% to match the intended proc chance.
-- ref https://github.com/cmangos/issues/issues/3941
UPDATE `spell_template` SET `ProcChance` = 10 WHERE `Id` = 28831;
