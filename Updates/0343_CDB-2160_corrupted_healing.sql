-- Add proc for spell 23401 (Corrupted Healing) in Nefarian Encounter
DELETE FROM spell_proc_event WHERE entry=23401;
INSERT INTO `spell_proc_event` (`entry`, `SchoolMask`, `SpellFamilyName`, `SpellFamilyMask0`, `SpellFamilyMask1`, `SpellFamilyMask2`, `procFlags`, `procEx`, `ppmRate`, `CustomChance`, `Cooldown`) VALUES
(23401, 0x02, 6, 0, 0, 0, 0x00008000, 0, 0, 0, 0);


