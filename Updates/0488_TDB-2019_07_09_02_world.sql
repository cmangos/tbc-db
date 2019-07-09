-- Fix RequiredRaces for Grimand Elmore 1700 & Klockmort Spannerspan 1704
-- https://tbc.wowhead.com/quest=1700/grimand-elmore
-- https://tbc.wowhead.com/quest=1704/klockmort-spannerspan
UPDATE `quest_template` SET `RequiredRaces`=1 WHERE `ID`=1700; -- Human
UPDATE `quest_template` SET `RequiredRaces`=4+64 WHERE `ID`=1704; -- Dwarf+Gnome

