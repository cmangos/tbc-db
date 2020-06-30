-- Change Error Text when it becomes known, otherwise other faction can buy opposite faction pvp gear due to factions not being all hostile to the opposite players
UPDATE `areatrigger_teleport` SET `condition_id` = 3 WHERE `Id` = 2527; -- Hall of Legends - Ogrimmar "You must be a Stone Guard or higher rank in order to enter the Hall of Legends." -> Horde Player
UPDATE `areatrigger_teleport` SET `condition_id` = 4 WHERE `Id` = 2532; -- Stormwind - Champions Hall "You must be a Knight or higher rank in order to enter the Champions' Hall." -> Alliance Player

-- only base unit stats alignment
UPDATE `creature_equip_template` SET `equipentry1` = '14874' WHERE (`entry` = '12794'); -- [16] UNIT_VIRTUAL_ITEM_SLOT_ID: 14874
UPDATE `creature_template` SET `Faction` = 29, `MinLevel` = 62, `MaxLevel` = 62, `NpcFlags` = 0, `UnitFlags` = 768 WHERE `entry` = 12788; -- Legionnaire Teena (125 later)
UPDATE `creature_template` SET `Faction` = 126, `MinLevel` = 62, `MaxLevel` = 62, `NpcFlags` = 0, `UnitFlags` = 768 WHERE `entry` = 12789; -- Blood Guard Hini'wana (876 later)
UPDATE `creature_template` SET `Faction` = 68, `MinLevel` = 62, `MaxLevel` = 62, `NpcFlags` = 0, `UnitFlags` = 768 WHERE `entry` = 12790; -- Advisor Willington (68 later)
UPDATE `creature_template` SET `Faction` = 104, `MinLevel` = 62, `MaxLevel` = 62, `NpcFlags` = 0, `UnitFlags` = 768 WHERE `entry` = 12791; -- Chieftain Earthbind (104 later)
UPDATE `creature_template` SET `Faction` = 35, `MinLevel` = 65, `MaxLevel` = 65, `NpcFlags` = 4224, `UnitFlags` = 768 WHERE `entry` = 12792; -- Lady Palanseer (35 1074 later)
UPDATE `creature_template` SET `Faction` = 35, `MinLevel` = 55, `MaxLevel` = 55, `NpcFlags` = 128, `UnitFlags` = 0 WHERE `entry` = 12793; -- Brave Stonehide (35 125 later)
UPDATE `creature_template` SET `Faction` = 29, `MinLevel` = 55, `MaxLevel` = 55, `NpcFlags` = 128, `UnitFlags` = 768 WHERE `entry` = 12794; -- Stone Guard Zarg (29 125 later)
UPDATE `creature_template` SET `Faction` = 126, `MinLevel` = 55, `MaxLevel` = 55, `NpcFlags` = 128, `UnitFlags` = 768 WHERE `entry` = 12795; -- First Sergeant Hola'mahi (126 125 later)
UPDATE `creature_template` SET `Faction` = 35, `MinLevel` = 55, `MaxLevel` = 55, `NpcFlags` = 128, `UnitFlags` = 768 WHERE `entry` = 12796; -- Raider Bork (35 1074 later)
UPDATE `creature_template` SET `Faction` = 85, `MinLevel` = 62, `MaxLevel` = 62, `NpcFlags` = 0, `UnitFlags` = 768 WHERE `entry` = 12797; -- Grunt Korf (85 later)
UPDATE `creature_template` SET `Faction` = 85, `MinLevel` = 62, `MaxLevel` = 62, `NpcFlags` = 0, `UnitFlags` = 768 WHERE `entry` = 12798; -- Grunt Bek'rah (85 later)
UPDATE `creature_template` SET `Faction` = 29, `MinLevel` = 55, `MaxLevel` = 55, `NpcFlags` = 4224, `UnitFlags` = 0 WHERE `entry` = 12799; -- Sergeant Ba'sha (29 later)
UPDATE `creature_template` SET `Faction` = 35, `MinLevel` = 65, `MaxLevel` = 65, `NpcFlags` = 4224, `UnitFlags` = 0 WHERE `entry` IN (14581,24667,26396); -- Sergeant Thunderhorn (35 1074 later)
UPDATE `creature_template` SET `Faction` = 1604, `MinLevel` = 62, `MaxLevel` = 62, `NpcFlags` = 0, `UnitFlags` = 768 WHERE `entry` = 19850; -- Councilor Arial D'Anastasis (1604 later)
UPDATE `creature_template` SET `Faction` = 1604, `MinLevel` = 65, `MaxLevel` = 65, `NpcFlags` = 4224, `UnitFlags` = 4864 WHERE `entry` = 23447; -- Sergeant Kien -> Doris Volanthius (UNIT_FLAG_PVP is now a column in creature_template, this is pre 2.3 npc)
UPDATE `creature_template` SET `Faction` = 1604, `MinLevel` = 70, `MaxLevel` = 70, `NpcFlags` = 4224, `UnitFlags` = 768 WHERE `entry` = 24520; -- Doris Volanthius (1604 later)
UPDATE `creature_template` SET `Faction` = 1074, `MinLevel` = 65, `MaxLevel` = 65, `NpcFlags` = 4224, `UnitFlags` = 768 WHERE `entry` = 24668; -- Lady Palanseer (norepair? sign this is a dummy template?) (1074 later)
UPDATE `creature_template` SET `Faction` = 1074, `MinLevel` = 65, `MaxLevel` = 65, `NpcFlags` = 4224, `UnitFlags` = 768 WHERE `entry` = 26397; -- Lady Palanseer (norepair? sign this is a dummy template?) (1074 later)
UPDATE `creature_template` SET `Faction` = 1604, `MinLevel` = 70, `MaxLevel` = 70, `NpcFlags` = 4224, `UnitFlags` = 768 WHERE `entry` = 26398; -- Doris Volanthius (1604 later)

-- only base unit stats alignment
UPDATE `creature_template` SET `Faction` = 35, `MinLevel` = 65, `MaxLevel` = 65, `UnitFlags` = 4864, `NpcFlags` = 4224 WHERE `entry` IN (12777,24672,26393); -- Captain Dirgehammer (35 1078, 65 later)
UPDATE `creature_template` SET `Faction` = 12, `MinLevel` = 55, `MaxLevel` = 55, `UnitFlags` = 4864, `NpcFlags` = 0 WHERE `entry` = 12778; -- Lieutenant Rachel Vaccar (123 later)
UPDATE `creature_template` SET `Faction` = 12, `MinLevel` = 55, `MaxLevel` = 55, `UnitFlags` = 4864, `NpcFlags` = 0 WHERE `entry` = 12779; -- Archmage Gaiman (123 later)
UPDATE `creature_template` SET `Faction` = 80, `MinLevel` = 55, `MaxLevel` = 55, `UnitFlags` = 4864, `NpcFlags` = 0 WHERE `entry` = 12780; -- Sergeant Major Skyshadow (124 laster)
UPDATE `creature_template` SET `Faction` = 35, `MinLevel` = 55, `MaxLevel` = 55, `UnitFlags` = 4864, `NpcFlags` = 128 WHERE `entry` = 12781; -- Master Sergeant Biggins (35 1078 later)
UPDATE `creature_template` SET `Faction` = 35, `MinLevel` = 65, `MaxLevel` = 65, `UnitFlags` = 4864, `NpcFlags` = 4224 WHERE `entry` IN (12782,24671,26394); -- Captain O'Neal (35 1078 later) - 
UPDATE `creature_template` SET `Faction` = 35, `MinLevel` = 55, `MaxLevel` = 55, `UnitFlags` = 4864, `NpcFlags` = 128 WHERE `entry` = 12783; -- Lieutenant Karter (35 1078 later)
UPDATE `creature_template` SET `Faction` = 875, `MinLevel` = 55, `MaxLevel` = 55, `UnitFlags` = 4864, `NpcFlags` = 128 WHERE `entry` = 12784; -- Lieutenant Jackspring (123 later)
UPDATE `creature_template` SET `Faction` = 55, `MinLevel` = 55, `MaxLevel` = 55, `UnitFlags` = 4864, `NpcFlags` = 128 WHERE `entry` = 12785; -- Sergeant Major Clate (123 later)
UPDATE `creature_template` SET `Faction` = 11, `MinLevel` = 62, `MaxLevel` = 62, `UnitFlags` = 4864, `NpcFlags` = 0 WHERE `entry` = 12786; -- Guard Quine (11 later)
UPDATE `creature_template` SET `Faction` = 11, `MinLevel` = 62, `MaxLevel` = 62, `UnitFlags` = 4864, `NpcFlags` = 0 WHERE `entry` = 12787; -- Guard Hammon (11 later)
UPDATE `creature_template` SET `Faction` = 1638, `MinLevel` = 69, `MaxLevel` = 69, `UnitFlags` = 33536, `NpcFlags` = 0 WHERE `entry` = 19848; -- Harbinger Ennarth (1640 later)
UPDATE `creature_template` SET `Faction` = 1638, `MinLevel` = 65, `MaxLevel` = 65, `UnitFlags` = 4864, `NpcFlags` = 4224 WHERE `entry` = 23446; -- Lieutenant Tristia (1638)
UPDATE `creature_template` SET `Faction` = 1638, `MinLevel` = 65, `MaxLevel` = 65, `UnitFlags` = 4864, `NpcFlags` = 4224 WHERE `entry` = 24670; -- Lieutenant Tristia (1638)
UPDATE `creature_template` SET `Faction` = 1638, `MinLevel` = 65, `MaxLevel` = 65, `UnitFlags` = 4864, `NpcFlags` = 4224 WHERE `entry` = 26395; -- Lieutenant Tristia (1638)

-- Lady Palanseer 12792,24668,26397 (549,545,552,562);
UPDATE `npc_vendor_template` SET `slot` = 1 WHERE `item` = 28404 AND `entry` = 549; -- offpieces
UPDATE `npc_vendor_template` SET `slot` = 2 WHERE `item` = 28405 AND `entry` = 549;
UPDATE `npc_vendor_template` SET `slot` = 3 WHERE `item` = 28402 AND `entry` = 549;
UPDATE `npc_vendor_template` SET `slot` = 4 WHERE `item` = 28409 AND `entry` = 549;
UPDATE `npc_vendor_template` SET `slot` = 5 WHERE `item` = 28411 AND `entry` = 549;
UPDATE `npc_vendor_template` SET `slot` = 6 WHERE `item` = 28410 AND `entry` = 549;
UPDATE `npc_vendor_template` SET `slot` = 7 WHERE `item` = 28423 AND `entry` = 549;
UPDATE `npc_vendor_template` SET `slot` = 8 WHERE `item` = 28424 AND `entry` = 549;
UPDATE `npc_vendor_template` SET `slot` = 9 WHERE `item` = 28422 AND `entry` = 549;
UPDATE `npc_vendor_template` SET `slot` = 10 WHERE `item` = 31594 AND `entry` = 549;
UPDATE `npc_vendor_template` SET `slot` = 11 WHERE `item` = 31598 AND `entry` = 549;
UPDATE `npc_vendor_template` SET `slot` = 12 WHERE `item` = 31595 AND `entry` = 549;
UPDATE `npc_vendor_template` SET `slot` = 13 WHERE `item` = 28443 AND `entry` = 549;
UPDATE `npc_vendor_template` SET `slot` = 14 WHERE `item` = 28445 AND `entry` = 549;
UPDATE `npc_vendor_template` SET `slot` = 15 WHERE `item` = 28444 AND `entry` = 549;
UPDATE `npc_vendor_template` SET `slot` = 16 WHERE `item` = 28446 AND `entry` = 549;
UPDATE `npc_vendor_template` SET `slot` = 17 WHERE `item` = 28448 AND `entry` = 549;
UPDATE `npc_vendor_template` SET `slot` = 18 WHERE `item` = 28447 AND `entry` = 549;
UPDATE `npc_vendor_template` SET `slot` = 19 WHERE `item` = 28450 AND `entry` = 549;
UPDATE `npc_vendor_template` SET `slot` = 20 WHERE `item` = 28451 AND `entry` = 549;
UPDATE `npc_vendor_template` SET `slot` = 21 WHERE `item` = 28449 AND `entry` = 549;
UPDATE `npc_vendor_template` SET `slot` = 22 WHERE `item` = 28629 AND `entry` = 549;
UPDATE `npc_vendor_template` SET `slot` = 23 WHERE `item` = 28605 AND `entry` = 549;
UPDATE `npc_vendor_template` SET `slot` = 24 WHERE `item` = 28630 AND `entry` = 549;
UPDATE `npc_vendor_template` SET `slot` = 25 WHERE `item` = 28639 AND `entry` = 549;
UPDATE `npc_vendor_template` SET `slot` = 26 WHERE `item` = 28638 AND `entry` = 549;
UPDATE `npc_vendor_template` SET `slot` = 27 WHERE `item` = 28640 AND `entry` = 549;
UPDATE `npc_vendor_template` SET `slot` = 28 WHERE `item` = 28385 AND `entry` = 549;
UPDATE `npc_vendor_template` SET `slot` = 29 WHERE `item` = 28381 AND `entry` = 549;
UPDATE `npc_vendor_template` SET `slot` = 30 WHERE `item` = 28383 AND `entry` = 549;
UPDATE `npc_vendor_template` SET `slot` = 31 WHERE `item` = 28644 AND `entry` = 549;
UPDATE `npc_vendor_template` SET `slot` = 32 WHERE `item` = 28646 AND `entry` = 549;
UPDATE `npc_vendor_template` SET `slot` = 33 WHERE `item` = 28645 AND `entry` = 549;
UPDATE `npc_vendor_template` SET `slot` = 34 WHERE `item` = 28641 AND `entry` = 549;
UPDATE `npc_vendor_template` SET `slot` = 35 WHERE `item` = 28643 AND `entry` = 549;
UPDATE `npc_vendor_template` SET `slot` = 36 WHERE `item` = 28642 AND `entry` = 549;
-- +S2
UPDATE `npc_vendor_template` SET `slot` = 37 WHERE `item` = 28817 AND `entry` IN (545,549); -- Hands
UPDATE `npc_vendor_template` SET `slot` = 38 WHERE `item` = 28820 AND `entry` IN (545,549); -- Shoulders
UPDATE `npc_vendor_template` SET `slot` = 39 WHERE `item` = 28819 AND `entry` IN (545,549); -- Legs
UPDATE `npc_vendor_template` SET `slot` = 40 WHERE `item` = 28818 AND `entry` IN (545,549); -- Head
UPDATE `npc_vendor_template` SET `slot` = 41 WHERE `item` = 28821 AND `entry` IN (545,549); -- Chest
UPDATE `npc_vendor_template` SET `slot` = 42 WHERE `item` = 28856 AND `entry` IN (545,549); -- Hands
UPDATE `npc_vendor_template` SET `slot` = 43 WHERE `item` = 28859 AND `entry` IN (545,549); -- Shoulders
UPDATE `npc_vendor_template` SET `slot` = 44 WHERE `item` = 28858 AND `entry` IN (545,549); -- Legs
UPDATE `npc_vendor_template` SET `slot` = 45 WHERE `item` = 28857 AND `entry` IN (545,549); -- Head
UPDATE `npc_vendor_template` SET `slot` = 46 WHERE `item` = 28860 AND `entry` IN (545,549); -- Chest
UPDATE `npc_vendor_template` SET `slot` = 47 WHERE `item` = 31621 AND `entry` IN (545,549); -- Hands
UPDATE `npc_vendor_template` SET `slot` = 48 WHERE `item` = 31628 AND `entry` IN (545,549); -- Shoulders
UPDATE `npc_vendor_template` SET `slot` = 49 WHERE `item` = 31627 AND `entry` IN (545,549); -- Legs
UPDATE `npc_vendor_template` SET `slot` = 50 WHERE `item` = 31626 AND `entry` IN (545,549); -- Head
UPDATE `npc_vendor_template` SET `slot` = 51 WHERE `item` = 31629 AND `entry` IN (545,549); -- Chest
UPDATE `npc_vendor_template` SET `slot` = 52 WHERE `item` = 28868 AND `entry` IN (545,549); -- Hands
UPDATE `npc_vendor_template` SET `slot` = 53 WHERE `item` = 28866 AND `entry` IN (545,549); -- Shoulders
UPDATE `npc_vendor_template` SET `slot` = 54 WHERE `item` = 28870 AND `entry` IN (545,549); -- Legs
UPDATE `npc_vendor_template` SET `slot` = 55 WHERE `item` = 28867 AND `entry` IN (545,549); -- Head
UPDATE `npc_vendor_template` SET `slot` = 56 WHERE `item` = 28869 AND `entry` IN (545,549); -- Chest
UPDATE `npc_vendor_template` SET `slot` = 57 WHERE `item` = 28836 AND `entry` IN (545,549); -- Hands
UPDATE `npc_vendor_template` SET `slot` = 58 WHERE `item` = 28839 AND `entry` IN (545,549); -- Shoulders
UPDATE `npc_vendor_template` SET `slot` = 59 WHERE `item` = 28838 AND `entry` IN (545,549); -- Legs
UPDATE `npc_vendor_template` SET `slot` = 60 WHERE `item` = 28837 AND `entry` IN (545,549); -- Head
UPDATE `npc_vendor_template` SET `slot` = 61 WHERE `item` = 28840 AND `entry` IN (545,549); -- Chest
UPDATE `npc_vendor_template` SET `slot` = 62 WHERE `item` = 31584 AND `entry` IN (545,549); -- Hands
UPDATE `npc_vendor_template` SET `slot` = 63 WHERE `item` = 31587 AND `entry` IN (545,549); -- Shoulders
UPDATE `npc_vendor_template` SET `slot` = 64 WHERE `item` = 31586 AND `entry` IN (545,549); -- Legs
UPDATE `npc_vendor_template` SET `slot` = 65 WHERE `item` = 31585 AND `entry` IN (545,549); -- Head
UPDATE `npc_vendor_template` SET `slot` = 66 WHERE `item` = 31588 AND `entry` IN (545,549); -- Chest
UPDATE `npc_vendor_template` SET `slot` = 67 WHERE `item` = 28811 AND `entry` IN (545,549); -- Hands
UPDATE `npc_vendor_template` SET `slot` = 68 WHERE `item` = 28814 AND `entry` IN (545,549); -- Shoulders
UPDATE `npc_vendor_template` SET `slot` = 69 WHERE `item` = 28813 AND `entry` IN (545,549); -- Legs
UPDATE `npc_vendor_template` SET `slot` = 70 WHERE `item` = 28812 AND `entry` IN (545,549); -- Head
UPDATE `npc_vendor_template` SET `slot` = 71 WHERE `item` = 28815 AND `entry` IN (545,549); -- Chest
UPDATE `npc_vendor_template` SET `slot` = 72 WHERE `item` = 28871 AND `entry` IN (545,549); -- Hands
UPDATE `npc_vendor_template` SET `slot` = 73 WHERE `item` = 28874 AND `entry` IN (545,549); -- Shoulders
UPDATE `npc_vendor_template` SET `slot` = 74 WHERE `item` = 28873 AND `entry` IN (545,549); -- Legs
UPDATE `npc_vendor_template` SET `slot` = 75 WHERE `item` = 28872 AND `entry` IN (545,549); -- Head
UPDATE `npc_vendor_template` SET `slot` = 76 WHERE `item` = 28875 AND `entry` IN (545,549); -- Chest
UPDATE `npc_vendor_template` SET `slot` = 77 WHERE `item` = 28806 AND `entry` IN (545,549); -- Hands
UPDATE `npc_vendor_template` SET `slot` = 78 WHERE `item` = 28809 AND `entry` IN (545,549); -- Shoulders
UPDATE `npc_vendor_template` SET `slot` = 79 WHERE `item` = 28808 AND `entry` IN (545,549); -- Legs
UPDATE `npc_vendor_template` SET `slot` = 80 WHERE `item` = 28807 AND `entry` IN (545,549); -- Head
UPDATE `npc_vendor_template` SET `slot` = 81 WHERE `item` = 28805 AND `entry` IN (545,549); -- Chest
UPDATE `npc_vendor_template` SET `slot` = 82 WHERE `item` = 31647 AND `entry` IN (545,549); -- Hands
UPDATE `npc_vendor_template` SET `slot` = 83 WHERE `item` = 31650 AND `entry` IN (545,549); -- Shoulders
UPDATE `npc_vendor_template` SET `slot` = 84 WHERE `item` = 31649 AND `entry` IN (545,549); -- Legs
UPDATE `npc_vendor_template` SET `slot` = 85 WHERE `item` = 31648 AND `entry` IN (545,549); -- Head
UPDATE `npc_vendor_template` SET `slot` = 86 WHERE `item` = 31646 AND `entry` IN (545,549); -- Chest
UPDATE `npc_vendor_template` SET `slot` = 87 WHERE `item` = 28842 AND `entry` IN (545,549); -- Hands
UPDATE `npc_vendor_template` SET `slot` = 88 WHERE `item` = 28845 AND `entry` IN (545,549); -- Shoulders
UPDATE `npc_vendor_template` SET `slot` = 89 WHERE `item` = 28844 AND `entry` IN (545,549); -- Legs
UPDATE `npc_vendor_template` SET `slot` = 90 WHERE `item` = 28843 AND `entry` IN (545,549); -- Head
UPDATE `npc_vendor_template` SET `slot` = 91 WHERE `item` = 28841 AND `entry` IN (545,549); -- Chest
UPDATE `npc_vendor_template` SET `slot` = 92 WHERE `item` = 28847 AND `entry` IN (545,549); -- Hands
UPDATE `npc_vendor_template` SET `slot` = 93 WHERE `item` = 28850 AND `entry` IN (545,549); -- Shoulders
UPDATE `npc_vendor_template` SET `slot` = 94 WHERE `item` = 28849 AND `entry` IN (545,549); -- Legs
UPDATE `npc_vendor_template` SET `slot` = 95 WHERE `item` = 28848 AND `entry` IN (545,549); -- Head
UPDATE `npc_vendor_template` SET `slot` = 96 WHERE `item` = 28846 AND `entry` IN (545,549); -- Chest
UPDATE `npc_vendor_template` SET `slot` = 97 WHERE `item` = 28852 AND `entry` IN (545,549); -- Hands
UPDATE `npc_vendor_template` SET `slot` = 98 WHERE `item` = 28855 AND `entry` IN (545,549); -- Shoulders
UPDATE `npc_vendor_template` SET `slot` = 99 WHERE `item` = 28854 AND `entry` IN (545,549); -- Legs
UPDATE `npc_vendor_template` SET `slot` = 100 WHERE `item` = 28853 AND `entry` IN (545,549); -- Head
UPDATE `npc_vendor_template` SET `slot` = 101 WHERE `item` = 28851 AND `entry` IN (545,549); -- Chest
UPDATE `npc_vendor_template` SET `slot` = 102 WHERE `item` = 31636 AND `entry` IN (545,549); -- Hands
UPDATE `npc_vendor_template` SET `slot` = 103 WHERE `item` = 31639 AND `entry` IN (545,549); -- Shoulders
UPDATE `npc_vendor_template` SET `slot` = 104 WHERE `item` = 31638 AND `entry` IN (545,549); -- Legs
UPDATE `npc_vendor_template` SET `slot` = 105 WHERE `item` = 31637 AND `entry` IN (545,549); -- Head
UPDATE `npc_vendor_template` SET `slot` = 106 WHERE `item` = 31635 AND `entry` IN (545,549); -- Chest
UPDATE `npc_vendor_template` SET `slot` = 107 WHERE `item` = 28862 AND `entry` IN (545,549); -- Hands
UPDATE `npc_vendor_template` SET `slot` = 108 WHERE `item` = 28865 AND `entry` IN (545,549); -- Shoulders
UPDATE `npc_vendor_template` SET `slot` = 109 WHERE `item` = 28864 AND `entry` IN (545,549); -- Legs
UPDATE `npc_vendor_template` SET `slot` = 110 WHERE `item` = 28863 AND `entry` IN (545,549); -- Head
UPDATE `npc_vendor_template` SET `slot` = 111 WHERE `item` = 28861 AND `entry` IN (545,549); -- Chest
UPDATE `npc_vendor_template` SET `slot` = 112 WHERE `item` = 28832 AND `entry` IN (545,549); -- Hands
UPDATE `npc_vendor_template` SET `slot` = 113 WHERE `item` = 28835 AND `entry` IN (545,549); -- Shoulders
UPDATE `npc_vendor_template` SET `slot` = 114 WHERE `item` = 28834 AND `entry` IN (545,549); -- Legs
UPDATE `npc_vendor_template` SET `slot` = 115 WHERE `item` = 28833 AND `entry` IN (545,549); -- Head
UPDATE `npc_vendor_template` SET `slot` = 116 WHERE `item` = 28831 AND `entry` IN (545,549); -- Chest

-- Doris Volanthius 24520 / Kayri 26089 - S3 Offset
-- maybe not final order as only one class was scanned
UPDATE `npc_vendor_template` SET `slot` = 1 WHERE `item` = 32799 AND `entry` IN (554,564); -- IoQD Badges/Tokens vs S3/S2 OffGear
UPDATE `npc_vendor_template` SET `slot` = 2 WHERE `item` = 32811 AND `entry` IN (554,564);
UPDATE `npc_vendor_template` SET `slot` = 3 WHERE `item` = 32787 AND `entry` IN (554,564);
UPDATE `npc_vendor_template` SET `slot` = 4 WHERE `item` = 32979 AND `entry` IN (554,564);
UPDATE `npc_vendor_template` SET `slot` = 5 WHERE `item` = 32980 AND `entry` IN (554,564);
UPDATE `npc_vendor_template` SET `slot` = 6 WHERE `item` = 32981 AND `entry` IN (554,564);
UPDATE `npc_vendor_template` SET `slot` = 7 WHERE `item` = 32807 AND `entry` IN (554,564);
UPDATE `npc_vendor_template` SET `slot` = 8 WHERE `item` = 32820 AND `entry` IN (554,564);
UPDATE `npc_vendor_template` SET `slot` = 9 WHERE `item` = 32795 AND `entry` IN (554,564);
UPDATE `npc_vendor_template` SET `slot` = 10 WHERE `item` = 32802 AND `entry` IN (554,564);
UPDATE `npc_vendor_template` SET `slot` = 11 WHERE `item` = 32814 AND `entry` IN (554,564);
UPDATE `npc_vendor_template` SET `slot` = 12 WHERE `item` = 32790 AND `entry` IN (554,564);
UPDATE `npc_vendor_template` SET `slot` = 13 WHERE `item` = 32800 AND `entry` IN (554,564);
UPDATE `npc_vendor_template` SET `slot` = 14 WHERE `item` = 32812 AND `entry` IN (554,564);
UPDATE `npc_vendor_template` SET `slot` = 15 WHERE `item` = 32788 AND `entry` IN (554,564);
UPDATE `npc_vendor_template` SET `slot` = 16 WHERE `item` = 32798 AND `entry` IN (554,564);
UPDATE `npc_vendor_template` SET `slot` = 17 WHERE `item` = 32810 AND `entry` IN (554,564);
UPDATE `npc_vendor_template` SET `slot` = 18 WHERE `item` = 32786 AND `entry` IN (554,564);
UPDATE `npc_vendor_template` SET `slot` = 19 WHERE `item` = 32808 AND `entry` IN (554,564);
UPDATE `npc_vendor_template` SET `slot` = 20 WHERE `item` = 32821 AND `entry` IN (554,564);
UPDATE `npc_vendor_template` SET `slot` = 21 WHERE `item` = 32796 AND `entry` IN (554,564);
UPDATE `npc_vendor_template` SET `slot` = 22 WHERE `item` = 32797 AND `entry` IN (554,564);
UPDATE `npc_vendor_template` SET `slot` = 23 WHERE `item` = 32809 AND `entry` IN (554,564);
UPDATE `npc_vendor_template` SET `slot` = 24 WHERE `item` = 32785 AND `entry` IN (554,564);
UPDATE `npc_vendor_template` SET `slot` = 25 WHERE `item` = 32998 AND `entry` IN (554,564);
UPDATE `npc_vendor_template` SET `slot` = 26 WHERE `item` = 32997 AND `entry` IN (554,564);
UPDATE `npc_vendor_template` SET `slot` = 27 WHERE `item` = 32999 AND `entry` IN (554,564);
UPDATE `npc_vendor_template` SET `slot` = 28 WHERE `item` = 32803 AND `entry` IN (554,564);
UPDATE `npc_vendor_template` SET `slot` = 29 WHERE `item` = 32816 AND `entry` IN (554,564);
UPDATE `npc_vendor_template` SET `slot` = 30 WHERE `item` = 32791 AND `entry` IN (554,564);
UPDATE `npc_vendor_template` SET `slot` = 31 WHERE `item` = 32804 AND `entry` IN (554,564);
UPDATE `npc_vendor_template` SET `slot` = 32 WHERE `item` = 32817 AND `entry` IN (554,564);
UPDATE `npc_vendor_template` SET `slot` = 33 WHERE `item` = 32792 AND `entry` IN (554,564);
UPDATE `npc_vendor_template` SET `slot` = 34 WHERE `item` = 32805 AND `entry` IN (554,564);
UPDATE `npc_vendor_template` SET `slot` = 35 WHERE `item` = 32818 AND `entry` IN (554,564);
UPDATE `npc_vendor_template` SET `slot` = 36 WHERE `item` = 32793 AND `entry` IN (554,564);
UPDATE `npc_vendor_template` SET `slot` = 37 WHERE `item` = 32988 AND `entry` IN (554,564);
UPDATE `npc_vendor_template` SET `slot` = 38 WHERE `item` = 32989 AND `entry` IN (554,564);
UPDATE `npc_vendor_template` SET `slot` = 39 WHERE `item` = 32990 AND `entry` IN (554,564);
UPDATE `npc_vendor_template` SET `slot` = 40 WHERE `item` = 32806 AND `entry` IN (554,564);
UPDATE `npc_vendor_template` SET `slot` = 41 WHERE `item` = 32819 AND `entry` IN (554,564);
UPDATE `npc_vendor_template` SET `slot` = 42 WHERE `item` = 32794 AND `entry` IN (554,564);
UPDATE `npc_vendor_template` SET `slot` = 43 WHERE `item` = 32801 AND `entry` IN (554,564);
UPDATE `npc_vendor_template` SET `slot` = 44 WHERE `item` = 32813 AND `entry` IN (554,564);
UPDATE `npc_vendor_template` SET `slot` = 45 WHERE `item` = 32789 AND `entry` IN (554,564);

-- offset items, pendant, bands, battlemaster trinkets
UPDATE `npc_vendor_template` SET `slot` = 51 WHERE `item` = 33882 AND `entry` IN (572,554); -- Vindicator's Dreadweave Belt
UPDATE `npc_vendor_template` SET `slot` = 52 WHERE `item` = 33883 AND `entry` IN (572,554); -- Vindicator's Dreadweave Cuffs
UPDATE `npc_vendor_template` SET `slot` = 53 WHERE `item` = 33884 AND `entry` IN (572,554); -- Vindicator's Dreadweave Stalkers
UPDATE `npc_vendor_template` SET `slot` = 54 WHERE `item` = 33900 AND `entry` IN (572,554); -- Vindicator's Mooncloth Belt
UPDATE `npc_vendor_template` SET `slot` = 55 WHERE `item` = 33901 AND `entry` IN (572,554); -- Vindicator's Mooncloth Cuffs
UPDATE `npc_vendor_template` SET `slot` = 56 WHERE `item` = 33902 AND `entry` IN (572,554); -- Vindicator's Mooncloth Slippers
UPDATE `npc_vendor_template` SET `slot` = 57 WHERE `item` = 33912 AND `entry` IN (572,554); -- Vindicator's Silk Belt
UPDATE `npc_vendor_template` SET `slot` = 58 WHERE `item` = 33913 AND `entry` IN (572,554); -- Vindicator's Silk Cuffs
UPDATE `npc_vendor_template` SET `slot` = 59 WHERE `item` = 33914 AND `entry` IN (572,554); -- Vindicator's Silk Footguards
-- 33882	572	Vindicator's Dreadweave Belt
-- 33883	572	Vindicator's Dreadweave Cuffs
-- 33884	572	Vindicator's Dreadweave Stalkers
-- 33900	572	Vindicator's Mooncloth Belt
-- 33901	572	Vindicator's Mooncloth Cuffs
-- 33902	572	Vindicator's Mooncloth Slippers
-- 33912	572	Vindicator's Silk Belt
-- 33913	572	Vindicator's Silk Cuffs
-- 33914	572	Vindicator's Silk Footguards
-- guessed, sorted other offset items after this schema
UPDATE `npc_vendor_template` SET `slot` = 60 WHERE `item` = 33891 AND `entry` IN (572,554);
UPDATE `npc_vendor_template` SET `slot` = 61 WHERE `item` = 33893 AND `entry` IN (572,554);
UPDATE `npc_vendor_template` SET `slot` = 62 WHERE `item` = 33892 AND `entry` IN (572,554);
UPDATE `npc_vendor_template` SET `slot` = 63 WHERE `item` = 33885 AND `entry` IN (572,554);
UPDATE `npc_vendor_template` SET `slot` = 64 WHERE `item` = 33887 AND `entry` IN (572,554);
UPDATE `npc_vendor_template` SET `slot` = 65 WHERE `item` = 33886 AND `entry` IN (572,554);
UPDATE `npc_vendor_template` SET `slot` = 66 WHERE `item` = 33879 AND `entry` IN (572,554);
UPDATE `npc_vendor_template` SET `slot` = 67 WHERE `item` = 33881 AND `entry` IN (572,554);
UPDATE `npc_vendor_template` SET `slot` = 68 WHERE `item` = 33880 AND `entry` IN (572,554);
UPDATE `npc_vendor_template` SET `slot` = 69 WHERE `item` = 33915 AND `entry` IN (572,554);
UPDATE `npc_vendor_template` SET `slot` = 70 WHERE `item` = 33917 AND `entry` IN (572,554);
UPDATE `npc_vendor_template` SET `slot` = 71 WHERE `item` = 33916 AND `entry` IN (572,554);
UPDATE `npc_vendor_template` SET `slot` = 72 WHERE `item` = 33877 AND `entry` IN (572,554);
UPDATE `npc_vendor_template` SET `slot` = 73 WHERE `item` = 33876 AND `entry` IN (572,554);
UPDATE `npc_vendor_template` SET `slot` = 74 WHERE `item` = 33878 AND `entry` IN (572,554);
UPDATE `npc_vendor_template` SET `slot` = 75 WHERE `item` = 33907 AND `entry` IN (572,554);
UPDATE `npc_vendor_template` SET `slot` = 76 WHERE `item` = 33906 AND `entry` IN (572,554);
UPDATE `npc_vendor_template` SET `slot` = 77 WHERE `item` = 33908 AND `entry` IN (572,554);
UPDATE `npc_vendor_template` SET `slot` = 78 WHERE `item` = 33895 AND `entry` IN (572,554);
UPDATE `npc_vendor_template` SET `slot` = 79 WHERE `item` = 33894 AND `entry` IN (572,554);
UPDATE `npc_vendor_template` SET `slot` = 80 WHERE `item` = 33896 AND `entry` IN (572,554);
UPDATE `npc_vendor_template` SET `slot` = 81 WHERE `item` = 33898 AND `entry` IN (572,554);
UPDATE `npc_vendor_template` SET `slot` = 82 WHERE `item` = 33897 AND `entry` IN (572,554);
UPDATE `npc_vendor_template` SET `slot` = 83 WHERE `item` = 33899 AND `entry` IN (572,554);
UPDATE `npc_vendor_template` SET `slot` = 84 WHERE `item` = 33811 AND `entry` IN (572,554);
UPDATE `npc_vendor_template` SET `slot` = 85 WHERE `item` = 33813 AND `entry` IN (572,554);
UPDATE `npc_vendor_template` SET `slot` = 86 WHERE `item` = 33812 AND `entry` IN (572,554);
UPDATE `npc_vendor_template` SET `slot` = 87 WHERE `item` = 33903 AND `entry` IN (572,554);
UPDATE `npc_vendor_template` SET `slot` = 88 WHERE `item` = 33904 AND `entry` IN (572,554);
UPDATE `npc_vendor_template` SET `slot` = 89 WHERE `item` = 33905 AND `entry` IN (572,554);
UPDATE `npc_vendor_template` SET `slot` = 90 WHERE `item` = 33909 AND `entry` IN (572,554);
UPDATE `npc_vendor_template` SET `slot` = 91 WHERE `item` = 33910 AND `entry` IN (572,554);
UPDATE `npc_vendor_template` SET `slot` = 92 WHERE `item` = 33911 AND `entry` IN (572,554);
UPDATE `npc_vendor_template` SET `slot` = 93 WHERE `item` = 33888 AND `entry` IN (572,554);
UPDATE `npc_vendor_template` SET `slot` = 94 WHERE `item` = 33889 AND `entry` IN (572,554);
UPDATE `npc_vendor_template` SET `slot` = 95 WHERE `item` = 33890 AND `entry` IN (572,554);
-- These are currently not in vendorlist for npc 12793, because that would mean we have to use the alternative vendor lists for him to make the pendants,bands,trinkets swap between seasons
UPDATE `npc_vendor_template` SET `slot` = 98 WHERE `item` = 33056 AND `entry` IN (572,581); -- Veteran's Band of Dominance
UPDATE `npc_vendor_template` SET `slot` = 99 WHERE `item` = 33057 AND `entry` IN (572,581); -- Veteran's Band of Triumph
UPDATE `npc_vendor_template` SET `slot` = 100 WHERE `item` = 33064 AND `entry` IN (572,581); -- Veteran's Band of Salvation
UPDATE `npc_vendor_template` SET `slot` = 101 WHERE `item` = 33920 AND `entry` IN (572,581); -- Vindicator's Pendant of Conquest
UPDATE `npc_vendor_template` SET `slot` = 102 WHERE `item` = 33921 AND `entry` IN (572,581); -- Vindicator's Pendant of Dominance
UPDATE `npc_vendor_template` SET `slot` = 103 WHERE `item` = 35319 AND `entry` IN (572,581); -- Vindicator's Pendant of Subjugation
UPDATE `npc_vendor_template` SET `slot` = 104 WHERE `item` = 33922 AND `entry` IN (572,581); -- Vindicator's Pendant of Salvation
UPDATE `npc_vendor_template` SET `slot` = 105 WHERE `item` = 35317 AND `entry` IN (572,581); -- Vindicator's Pendant of Reprieve
UPDATE `npc_vendor_template` SET `slot` = 106 WHERE `item` = 33923 AND `entry` IN (572,581); -- Vindicator's Pendant of Triumph
UPDATE `npc_vendor_template` SET `slot` = 107 WHERE `item` = 33853 AND `entry` IN (572,581); -- Vindicator's Band of Dominance
UPDATE `npc_vendor_template` SET `slot` = 108 WHERE `item` = 33918 AND `entry` IN (572,581); -- Vindicator's Band of Salvation
UPDATE `npc_vendor_template` SET `slot` = 109 WHERE `item` = 33919 AND `entry` IN (572,581); -- Vindicator's Band of Triumph
UPDATE `npc_vendor_template` SET `slot` = 110 WHERE `item` = 35320 AND `entry` IN (572,581); -- Vindicator's Band of Subjugation
UPDATE `npc_vendor_template` SET `slot` = 111 WHERE `item` = 34576 AND `entry` IN (572,581); -- Battlemaster's Cruelty
UPDATE `npc_vendor_template` SET `item` = 34577, `slot` = 112 WHERE `item` = 34162 AND `entry` IN (572,581); -- Battlemaster's Depravity
UPDATE `npc_vendor_template` SET `item` = 34578, `slot` = 113 WHERE `item` = 33832 AND `entry` IN (572,581); -- Battlemaster's Determination
UPDATE `npc_vendor_template` SET `item` = 34579, `slot` = 114 WHERE `item` = 34049 AND `entry` IN (572,581); -- Battlemaster's Audacity
UPDATE `npc_vendor_template` SET `item` = 34580, `slot` = 115 WHERE `item` = 34050 AND `entry` IN (572,581); -- Battlemaster's Perseverance
UPDATE `npc_vendor_template` SET `slot` = 116 WHERE `item` = 35327 AND `entry` IN (572,581); -- Battlemaster's Alacrity

-- S1-4 S1 Vendor Lists, S1-2 550,551 with Weapons, 552 S3 without weapons, 555 only Armor no Weapons
UPDATE `npc_vendor_template` SET `slot` = 1 WHERE `item` = 24550 AND `entry` IN (550,551,552,555);
UPDATE `npc_vendor_template` SET `slot` = 2 WHERE `item` = 28298 AND `entry` IN (550,551,552,555);
UPDATE `npc_vendor_template` SET `slot` = 3 WHERE `item` = 28299 AND `entry` IN (550,551,552,555);
UPDATE `npc_vendor_template` SET `slot` = 4 WHERE `item` = 28300 AND `entry` IN (550,551,552,555);
UPDATE `npc_vendor_template` SET `slot` = 5 WHERE `item` = 28476 AND `entry` IN (550,551,552,555);
UPDATE `npc_vendor_template` SET `slot` = 6 WHERE `item` = 28294 AND `entry` IN (550,551,552,555);
UPDATE `npc_vendor_template` SET `slot` = 7 WHERE `item` = 28295 AND `entry` IN (550,551,552,555);
UPDATE `npc_vendor_template` SET `slot` = 8 WHERE `item` = 28307 AND `entry` IN (550,551,552,555);
UPDATE `npc_vendor_template` SET `slot` = 9 WHERE `item` = 28308 AND `entry` IN (550,551,552,555);
UPDATE `npc_vendor_template` SET `slot` = 10 WHERE `item` = 28309 AND `entry` IN (550,551,552,555);
UPDATE `npc_vendor_template` SET `slot` = 11 WHERE `item` = 28305 AND `entry` IN (550,551,552,555);
UPDATE `npc_vendor_template` SET `slot` = 12 WHERE `item` = 28302 AND `entry` IN (550,551,552,555);
UPDATE `npc_vendor_template` SET `slot` = 13 WHERE `item` = 28313 AND `entry` IN (550,551,552,555);
UPDATE `npc_vendor_template` SET `slot` = 14 WHERE `item` = 28314 AND `entry` IN (550,551,552,555);
UPDATE `npc_vendor_template` SET `slot` = 15 WHERE `item` = 28312 AND `entry` IN (550,551,552,555);
UPDATE `npc_vendor_template` SET `slot` = 16 WHERE `item` = 28310 AND `entry` IN (550,551,552,555);
UPDATE `npc_vendor_template` SET `slot` = 17 WHERE `item` = 24557 AND `entry` IN (550,551,552,555);
UPDATE `npc_vendor_template` SET `slot` = 18 WHERE `item` = 28297 AND `entry` IN (550,551,552,555);
UPDATE `npc_vendor_template` SET `slot` = 19 WHERE `item` = 32450 AND `entry` IN (550,551,552,555);
UPDATE `npc_vendor_template` SET `slot` = 20 WHERE `item` = 32451 AND `entry` IN (550,551,552,555);
UPDATE `npc_vendor_template` SET `slot` = 21 WHERE `item` = 28319 AND `entry` IN (550,551,552,555);
UPDATE `npc_vendor_template` SET `slot` = 22 WHERE `item` = 28358 AND `entry` IN (550,551,552,555);
UPDATE `npc_vendor_template` SET `slot` = 23 WHERE `item` = 28346 AND `entry` IN (550,551,552,555);
UPDATE `npc_vendor_template` SET `slot` = 24 WHERE `item` = 32452 AND `entry` IN (550,551,552,555);
UPDATE `npc_vendor_template` SET `slot` = 25 WHERE `item` = 28320 AND `entry` IN (550,551,552,555);
-- guessed by entry, grouped by class
UPDATE `npc_vendor_template` SET `slot` = 26 WHERE `item` = 28355 AND `entry` IN (550,551,552,555);
UPDATE `npc_vendor_template` SET `slot` = 27 WHERE `item` = 33942 AND `entry` IN (550,551,552,555); -- nonexistant S1-2
UPDATE `npc_vendor_template` SET `slot` = 28 WHERE `item` = 33945 AND `entry` IN (550,551,552,555); -- nonexistant S1-2
UPDATE `npc_vendor_template` SET `slot` = 29 WHERE `item` = 28356 AND `entry` IN (550,551,552,555);
UPDATE `npc_vendor_template` SET `slot` = 30 WHERE `item` = 33936 AND `entry` IN (550,551,552,555); -- nonexistant S1-2
UPDATE `npc_vendor_template` SET `slot` = 31 WHERE `item` = 33948 AND `entry` IN (550,551,552,555); -- nonexistant S1-2
UPDATE `npc_vendor_template` SET `slot` = 32 WHERE `item` = 28357 AND `entry` IN (550,551,552,555);
UPDATE `npc_vendor_template` SET `slot` = 33 WHERE `item` = 33939 AND `entry` IN (550,551,552,555); -- nonexistant S1-2
UPDATE `npc_vendor_template` SET `slot` = 34 WHERE `item` = 33951 AND `entry` IN (550,551,552,555); -- nonexistant S1-2
-- set items
UPDATE `npc_vendor_template` SET `slot` = 35 WHERE `item` = 27707 AND `entry` IN (550,551,552,555); -- Gladiator's Satin Gloves
UPDATE `npc_vendor_template` SET `slot` = 36 WHERE `item` = 27710 AND `entry` IN (550,551,552,555); -- Gladiator's Satin Mantle
UPDATE `npc_vendor_template` SET `slot` = 37 WHERE `item` = 27709 AND `entry` IN (550,551,552,555); -- Gladiator's Satin Leggings
UPDATE `npc_vendor_template` SET `slot` = 38 WHERE `item` = 27708 AND `entry` IN (550,551,552,555); -- Gladiator's Satin Hood
UPDATE `npc_vendor_template` SET `slot` = 39 WHERE `item` = 27711 AND `entry` IN (550,551,552,555); -- Gladiator's Satin Robe
UPDATE `npc_vendor_template` SET `slot` = 40 WHERE `item` = 31409 AND `entry` IN (550,551,552,555); -- Gladiator's Mooncloth Gloves
UPDATE `npc_vendor_template` SET `slot` = 41 WHERE `item` = 31412 AND `entry` IN (550,551,552,555); -- Gladiator's Mooncloth Mantle
UPDATE `npc_vendor_template` SET `slot` = 42 WHERE `item` = 31411 AND `entry` IN (550,551,552,555); -- Gladiator's Mooncloth Leggings
UPDATE `npc_vendor_template` SET `slot` = 43 WHERE `item` = 31410 AND `entry` IN (550,551,552,555); -- Gladiator's Mooncloth Hood
UPDATE `npc_vendor_template` SET `slot` = 44 WHERE `item` = 31413 AND `entry` IN (550,551,552,555); -- Gladiator's Mooncloth Robe
-- Adding other class items with this sorting pattern
UPDATE `npc_vendor_template` SET `slot` = 45 WHERE `item` = 24556 AND `entry` IN (550,551,552,555); -- Gladiator's Dreadweave Gloves
UPDATE `npc_vendor_template` SET `slot` = 46 WHERE `item` = 24554 AND `entry` IN (550,551,552,555); -- Gladiator's Dreadweave Mantle
UPDATE `npc_vendor_template` SET `slot` = 47 WHERE `item` = 24555 AND `entry` IN (550,551,552,555); -- Gladiator's Dreadweave Leggings
UPDATE `npc_vendor_template` SET `slot` = 48 WHERE `item` = 24553 AND `entry` IN (550,551,552,555); -- Gladiator's Dreadweave Hood
UPDATE `npc_vendor_template` SET `slot` = 49 WHERE `item` = 24552 AND `entry` IN (550,551,552,555); -- Gladiator's Dreadweave Robe
UPDATE `npc_vendor_template` SET `slot` = 50 WHERE `item` = 30188 AND `entry` IN (550,551,552,555); -- Gladiator's Felweave Handguards
UPDATE `npc_vendor_template` SET `slot` = 51 WHERE `item` = 30186 AND `entry` IN (550,551,552,555); -- Gladiator's Felweave Amice
UPDATE `npc_vendor_template` SET `slot` = 52 WHERE `item` = 30201 AND `entry` IN (550,551,552,555); -- Gladiator's Felweave Trousers
UPDATE `npc_vendor_template` SET `slot` = 53 WHERE `item` = 30187 AND `entry` IN (550,551,552,555); -- Gladiator's Felweave Cowl
UPDATE `npc_vendor_template` SET `slot` = 54 WHERE `item` = 30200 AND `entry` IN (550,551,552,555); -- Gladiator's Felweave Raiment
UPDATE `npc_vendor_template` SET `slot` = 55 WHERE `item` = 25857 AND `entry` IN (550,551,552,555); -- Gladiator's Silk Handguards
UPDATE `npc_vendor_template` SET `slot` = 56 WHERE `item` = 25854 AND `entry` IN (550,551,552,555); -- Gladiator's Silk Amice
UPDATE `npc_vendor_template` SET `slot` = 57 WHERE `item` = 25858 AND `entry` IN (550,551,552,555); -- Gladiator's Silk Trousers
UPDATE `npc_vendor_template` SET `slot` = 58 WHERE `item` = 25855 AND `entry` IN (550,551,552,555); -- Gladiator's Silk Cowl
UPDATE `npc_vendor_template` SET `slot` = 59 WHERE `item` = 25856 AND `entry` IN (550,551,552,555); -- Gladiator's Silk Raiment
UPDATE `npc_vendor_template` SET `slot` = 60 WHERE `item` = 25834 AND `entry` IN (550,551,552,555); -- Gladiator's Leather Gloves
UPDATE `npc_vendor_template` SET `slot` = 61 WHERE `item` = 25832 AND `entry` IN (550,551,552,555); -- Gladiator's Leather Spaulders
UPDATE `npc_vendor_template` SET `slot` = 62 WHERE `item` = 25833 AND `entry` IN (550,551,552,555); -- Gladiator's Leather Legguards
UPDATE `npc_vendor_template` SET `slot` = 63 WHERE `item` = 25830 AND `entry` IN (550,551,552,555); -- Gladiator's Leather Helm
UPDATE `npc_vendor_template` SET `slot` = 64 WHERE `item` = 25831 AND `entry` IN (550,551,552,555); -- Gladiator's Leather Tunic
UPDATE `npc_vendor_template` SET `slot` = 65 WHERE `item` = 28126 AND `entry` IN (550,551,552,555); -- Gladiator's Dragonhide Gloves
UPDATE `npc_vendor_template` SET `slot` = 66 WHERE `item` = 28129 AND `entry` IN (550,551,552,555); -- Gladiator's Dragonhide Spaulders
UPDATE `npc_vendor_template` SET `slot` = 67 WHERE `item` = 28128 AND `entry` IN (550,551,552,555); -- Gladiator's Dragonhide Legguards
UPDATE `npc_vendor_template` SET `slot` = 68 WHERE `item` = 28127 AND `entry` IN (550,551,552,555); -- Gladiator's Dragonhide Helm
UPDATE `npc_vendor_template` SET `slot` = 69 WHERE `item` = 28130 AND `entry` IN (550,551,552,555); -- Gladiator's Dragonhide Tunic
UPDATE `npc_vendor_template` SET `slot` = 70 WHERE `item` = 31375 AND `entry` IN (550,551,552,555); -- Gladiator's Kodohide Gloves
UPDATE `npc_vendor_template` SET `slot` = 71 WHERE `item` = 31378 AND `entry` IN (550,551,552,555); -- Gladiator's Kodohide Spaulders
UPDATE `npc_vendor_template` SET `slot` = 72 WHERE `item` = 31377 AND `entry` IN (550,551,552,555); -- Gladiator's Kodohide Legguards
UPDATE `npc_vendor_template` SET `slot` = 73 WHERE `item` = 31376 AND `entry` IN (550,551,552,555); -- Gladiator's Kodohide Helm
UPDATE `npc_vendor_template` SET `slot` = 74 WHERE `item` = 31379 AND `entry` IN (550,551,552,555); -- Gladiator's Kodohide Tunic
UPDATE `npc_vendor_template` SET `slot` = 75 WHERE `item` = 28136 AND `entry` IN (550,551,552,555); -- Gladiator's Wyrmhide Gloves
UPDATE `npc_vendor_template` SET `slot` = 76 WHERE `item` = 28139 AND `entry` IN (550,551,552,555); -- Gladiator's Wyrmhide Spaulders
UPDATE `npc_vendor_template` SET `slot` = 77 WHERE `item` = 28138 AND `entry` IN (550,551,552,555); -- Gladiator's Wyrmhide Legguards
UPDATE `npc_vendor_template` SET `slot` = 78 WHERE `item` = 28137 AND `entry` IN (550,551,552,555); -- Gladiator's Wyrmhide Helm
UPDATE `npc_vendor_template` SET `slot` = 79 WHERE `item` = 28140 AND `entry` IN (550,551,552,555); -- Gladiator's Wyrmhide Tunic
UPDATE `npc_vendor_template` SET `slot` = 80 WHERE `item` = 28335 AND `entry` IN (550,551,552,555); -- Gladiator's Chain Gauntlets
UPDATE `npc_vendor_template` SET `slot` = 81 WHERE `item` = 28333 AND `entry` IN (550,551,552,555); -- Gladiator's Chain Spaulders
UPDATE `npc_vendor_template` SET `slot` = 82 WHERE `item` = 28332 AND `entry` IN (550,551,552,555); -- Gladiator's Chain Leggings
UPDATE `npc_vendor_template` SET `slot` = 83 WHERE `item` = 28331 AND `entry` IN (550,551,552,555); -- Gladiator's Chain Helm
UPDATE `npc_vendor_template` SET `slot` = 84 WHERE `item` = 28334 AND `entry` IN (550,551,552,555); -- Gladiator's Chain Armor
UPDATE `npc_vendor_template` SET `slot` = 85 WHERE `item` = 31397 AND `entry` IN (550,551,552,555); -- Gladiator's Ringmail Gauntlets
UPDATE `npc_vendor_template` SET `slot` = 86 WHERE `item` = 31407 AND `entry` IN (550,551,552,555); -- Gladiator's Ringmail Spaulders
UPDATE `npc_vendor_template` SET `slot` = 87 WHERE `item` = 31406 AND `entry` IN (550,551,552,555); -- Gladiator's Ringmail Leggings
UPDATE `npc_vendor_template` SET `slot` = 88 WHERE `item` = 31400 AND `entry` IN (550,551,552,555); -- Gladiator's Ringmail Helm
UPDATE `npc_vendor_template` SET `slot` = 89 WHERE `item` = 31396 AND `entry` IN (550,551,552,555); -- Gladiator's Ringmail Armor
UPDATE `npc_vendor_template` SET `slot` = 90 WHERE `item` = 26000 AND `entry` IN (550,551,552,555); -- Gladiator's Linked Gauntlets
UPDATE `npc_vendor_template` SET `slot` = 91 WHERE `item` = 25999 AND `entry` IN (550,551,552,555); -- Gladiator's Linked Spaulders
UPDATE `npc_vendor_template` SET `slot` = 92 WHERE `item` = 26001 AND `entry` IN (550,551,552,555); -- Gladiator's Linked Leggings
UPDATE `npc_vendor_template` SET `slot` = 93 WHERE `item` = 25998 AND `entry` IN (550,551,552,555); -- Gladiator's Linked Helm
UPDATE `npc_vendor_template` SET `slot` = 94 WHERE `item` = 25997 AND `entry` IN (550,551,552,555); -- Gladiator's Linked Armor
UPDATE `npc_vendor_template` SET `slot` = 95 WHERE `item` = 27470 AND `entry` IN (550,551,552,555); -- Gladiator's Mail Gauntlets
UPDATE `npc_vendor_template` SET `slot` = 96 WHERE `item` = 27473 AND `entry` IN (550,551,552,555); -- Gladiator's Mail Spaulders
UPDATE `npc_vendor_template` SET `slot` = 97 WHERE `item` = 27472 AND `entry` IN (550,551,552,555); -- Gladiator's Mail Leggings
UPDATE `npc_vendor_template` SET `slot` = 98 WHERE `item` = 27471 AND `entry` IN (550,551,552,555); -- Gladiator's Mail Helm
UPDATE `npc_vendor_template` SET `slot` = 99 WHERE `item` = 27469 AND `entry` IN (550,551,552,555); -- Gladiator's Mail Armor
UPDATE `npc_vendor_template` SET `slot` = 100 WHERE `item` = 24549 AND `entry` IN (550,551,552,555); -- Gladiator's Plate Gauntlets
UPDATE `npc_vendor_template` SET `slot` = 101 WHERE `item` = 24546 AND `entry` IN (550,551,552,555); -- Gladiator's Plate Shoulders
UPDATE `npc_vendor_template` SET `slot` = 102 WHERE `item` = 24547 AND `entry` IN (550,551,552,555); -- Gladiator's Plate Legguards
UPDATE `npc_vendor_template` SET `slot` = 103 WHERE `item` = 24545 AND `entry` IN (550,551,552,555); -- Gladiator's Plate Helm
UPDATE `npc_vendor_template` SET `slot` = 104 WHERE `item` = 24544 AND `entry` IN (550,551,552,555); -- Gladiator's Plate Chestpiece
UPDATE `npc_vendor_template` SET `slot` = 105 WHERE `item` = 31614 AND `entry` IN (550,551,552,555); -- Gladiator's Ornamented Gloves
UPDATE `npc_vendor_template` SET `slot` = 106 WHERE `item` = 31619 AND `entry` IN (550,551,552,555); -- Gladiator's Ornamented Spaulders
UPDATE `npc_vendor_template` SET `slot` = 107 WHERE `item` = 31618 AND `entry` IN (550,551,552,555); -- Gladiator's Ornamented Legplates
UPDATE `npc_vendor_template` SET `slot` = 108 WHERE `item` = 31616 AND `entry` IN (550,551,552,555); -- Gladiator's Ornamented Headcover
UPDATE `npc_vendor_template` SET `slot` = 109 WHERE `item` = 31613 AND `entry` IN (550,551,552,555); -- Gladiator's Ornamented Chestguard
UPDATE `npc_vendor_template` SET `slot` = 110 WHERE `item` = 27880 AND `entry` IN (550,551,552,555); -- Gladiator's Scaled Gauntlets
UPDATE `npc_vendor_template` SET `slot` = 111 WHERE `item` = 27883 AND `entry` IN (550,551,552,555); -- Gladiator's Scaled Shoulders
UPDATE `npc_vendor_template` SET `slot` = 112 WHERE `item` = 27882 AND `entry` IN (550,551,552,555); -- Gladiator's Scaled Legguards
UPDATE `npc_vendor_template` SET `slot` = 113 WHERE `item` = 27881 AND `entry` IN (550,551,552,555); -- Gladiator's Scaled Helm
UPDATE `npc_vendor_template` SET `slot` = 114 WHERE `item` = 27879 AND `entry` IN (550,551,552,555); -- Gladiator's Scaled Chestpiece
UPDATE `npc_vendor_template` SET `slot` = 115 WHERE `item` = 27703 AND `entry` IN (550,551,552,555); -- Gladiator's Lamellar Gauntlets
UPDATE `npc_vendor_template` SET `slot` = 116 WHERE `item` = 27706 AND `entry` IN (550,551,552,555); -- Gladiator's Lamellar Shoulders
UPDATE `npc_vendor_template` SET `slot` = 117 WHERE `item` = 27705 AND `entry` IN (550,551,552,555); -- Gladiator's Lamellar Legguards
UPDATE `npc_vendor_template` SET `slot` = 118 WHERE `item` = 27704 AND `entry` IN (550,551,552,555); -- Gladiator's Lamellar Helm
UPDATE `npc_vendor_template` SET `slot` = 119 WHERE `item` = 27702 AND `entry` IN (550,551,552,555); -- Gladiator's Lamellar Chestpiece

-- Brave Stonehide
UPDATE `npc_vendor` SET `slot` = 1 WHERE `item` = 18839 AND `entry` = 12793; -- Combat Healing Potion
UPDATE `npc_vendor` SET `slot` = 2 WHERE `item` = 18841 AND `entry` = 12793; -- Combat Mana Potion
UPDATE `npc_vendor` SET `slot` = 3, `ExtendedCost` = 1565 WHERE `item` = 31853 AND `entry` = 12793; -- Major Combat Healing Potion (wsg marks, later converted to honor+gold?)
-- Master Sergeant Biggins 40s+50honor, Brave Stonehide only 40s so middleground 40s + 5 honor no other value matches 50 in ItemExtendedCost.dbc
UPDATE `item_template` SET `SellPrice` = 1000, `BuyPrice` = 4000, `description` = NULL WHERE `entry` = 31853;
DELETE FROM `npc_vendor` WHERE `item` IN (31838,31839,31852) AND `entry` IN (12793); -- removed in tbcclassic so wasnt there anymore in 2.4.3, converted to honor+gold
-- UPDATE `npc_vendor` SET `slot` = 4 WHERE `item` = 31838 AND `entry` = 12793; -- Major Combat Healing Potion arathi
-- UPDATE `npc_vendor` SET `slot` = 5 WHERE `item` = 31839 AND `entry` = 12793; -- Major Combat Healing Potion av
-- UPDATE `npc_vendor` SET `slot` = 6 WHERE `item` = 31852 AND `entry` = 12793; -- Major Combat Healing Potion eots
UPDATE `npc_vendor` SET `slot` = 7, `ExtendedCost` = 1565 WHERE `item` = 31855 AND `entry` = 12793; -- Major Combat Mana Potion (wsg marks, later converted to honor+gold?)
UPDATE `item_template` SET `SellPrice` = 1000, `BuyPrice` = 4000, `description` = NULL WHERE `entry` = 31855;
DELETE FROM `npc_vendor` WHERE `item` IN (31840,31841,31854) AND `entry` IN (12793); -- removed in tbcclassic so wasnt there anymore in 2.4.3, converted to honor+gold
-- UPDATE `npc_vendor` SET `slot` = 8 WHERE `item` = 31840 AND `entry` = 12793; -- arathi
-- UPDATE `npc_vendor` SET `slot` = 9 WHERE `item` = 31841 AND `entry` = 12793; -- av
-- UPDATE `npc_vendor` SET `slot` = 10 WHERE `item` = 31854 AND `entry` = 12793; -- eots
UPDATE `npc_vendor` SET `slot` = 11 WHERE `item` = 32455 AND `entry` = 12793; -- Star's Lament
UPDATE `npc_vendor` SET `slot` = 12 WHERE `item` = 32453 AND `entry` = 12793; -- Star's Tears
UPDATE `npc_vendor` SET `slot` = 13 WHERE `item` = 15197 AND `entry` = 12793; -- Scout's Tabard
UPDATE `npc_vendor` SET `slot` = 14 WHERE `item` = 15199 AND `entry` = 12793; -- Stone Guard's Herald
UPDATE `npc_vendor` SET `slot` = 15 WHERE `item` = 15200 AND `entry` = 12793; -- Senior Sergeant's Insignia
UPDATE `npc_vendor` SET `slot` = 16 WHERE `item` = 18428 AND `entry` = 12793; -- Senior Sergeant's Insignia
UPDATE `npc_vendor` SET `slot` = 17 WHERE `item` = 16335 AND `entry` = 12793; -- Senior Sergeant's Insignia
UPDATE `npc_vendor` SET `slot` = 18 WHERE `item` = 18834 AND `entry` = 12793; -- Insignia of the Horde (ordered by entry as only own class is visible)
UPDATE `npc_vendor` SET `slot` = 19 WHERE `item` = 18845 AND `entry` = 12793; -- Insignia of the Horde
UPDATE `npc_vendor` SET `slot` = 20 WHERE `item` = 18846 AND `entry` = 12793; -- Insignia of the Horde
UPDATE `npc_vendor` SET `slot` = 21 WHERE `item` = 18849 AND `entry` = 12793; -- Insignia of the Horde
UPDATE `npc_vendor` SET `slot` = 22 WHERE `item` = 18850 AND `entry` = 12793; -- Insignia of the Horde
UPDATE `npc_vendor` SET `slot` = 23 WHERE `item` = 18851 AND `entry` = 12793; -- Insignia of the Horde
UPDATE `npc_vendor` SET `slot` = 24 WHERE `item` = 18852 AND `entry` = 12793; -- Insignia of the Horde
UPDATE `npc_vendor` SET `slot` = 25 WHERE `item` = 18853 AND `entry` = 12793; -- Insignia of the Horde
UPDATE `npc_vendor` SET `slot` = 26 WHERE `item` = 29592 AND `entry` = 12793; -- Insignia of the Horde
-- 18834	12793	Insignia of the Horde
-- 18845	12793	Insignia of the Horde
-- 18846	12793	Insignia of the Horde
-- 18849	12793	Insignia of the Horde
-- 18850	12793	Insignia of the Horde
-- 18851	12793	Insignia of the Horde
-- 18852	12793	Insignia of the Horde
-- 18853	12793	Insignia of the Horde
-- 29592	12793	Insignia of the Horde
UPDATE `npc_vendor` SET `slot` = 27 WHERE `item` = 18607 AND `entry` = 12793; -- Horde Battle Standard
UPDATE `npc_vendor` SET `slot` = 28 WHERE `item` = 28239 AND `entry` = 12793; -- (only one was visible so i guess only epic one is sold anymore? otherwise the own class medallion shouldve been visible too)
UPDATE `npc_vendor` SET `slot` = 29 WHERE `item` = 28240 AND `entry` = 12793;
UPDATE `npc_vendor` SET `slot` = 30 WHERE `item` = 28241 AND `entry` = 12793;
UPDATE `npc_vendor` SET `slot` = 31 WHERE `item` = 28242 AND `entry` = 12793;
UPDATE `npc_vendor` SET `slot` = 32 WHERE `item` = 28243 AND `entry` = 12793;
UPDATE `npc_vendor` SET `slot` = 33 WHERE `item` = 30343 AND `entry` = 12793;
UPDATE `npc_vendor` SET `slot` = 34 WHERE `item` = 30344 AND `entry` = 12793;
UPDATE `npc_vendor` SET `slot` = 35 WHERE `item` = 30345 AND `entry` = 12793;
UPDATE `npc_vendor` SET `slot` = 36 WHERE `item` = 30346 AND `entry` = 12793;
UPDATE `npc_vendor` SET `slot` = 37 WHERE `item` = 37865 AND `entry` = 12793; -- Medallion of the Horde
-- 28239	12793	Medallion of the Horde
-- 28240	12793	Medallion of the Horde
-- 28241	12793	Medallion of the Horde
-- 28242	12793	Medallion of the Horde
-- 28243	12793	Medallion of the Horde
-- 30343	12793	Medallion of the Horde
-- 30344	12793	Medallion of the Horde
-- 30345	12793	Medallion of the Horde
-- 30346	12793	Medallion of the Horde
-- 37865	12793	Medallion of the Horde
UPDATE `npc_vendor` SET `slot` = 38 WHERE `item` = 24551 AND `entry` = 12793; -- Talisman of the Horde
UPDATE `npc_vendor` SET `slot` = 39 WHERE `item` = 28377 AND `entry` = 12793; -- Sergeant's Heavy Cloak
DELETE FROM `npc_vendor` WHERE `item` = 28380 AND `entry` = 12793; -- https://tbc.wowhead.com/item=28380/sergeants-heavy-cloak
-- 28377	12793	Sergeant's Heavy Cloak
-- 28380	12793	Sergeant's Heavy Cloak
UPDATE `npc_vendor` SET `slot` = 40 WHERE `item` = 28378 AND `entry` = 12793; -- Sergeant's Heavy Cape
DELETE FROM `npc_vendor` WHERE `item` = 28379 AND `entry` = 12793; -- https://tbc.wowhead.com/item=28379/sergeants-heavy-cape
-- 28378	12793	Sergeant's Heavy Cape
-- 28379	12793	Sergeant's Heavy Cape
UPDATE `npc_vendor` SET `slot` = 41, `condition_id` = 504 WHERE `item` = 28244 AND `entry` = 12793; -- not the best solution as later we need condition like "sold in S3 and S4" but for these it works
UPDATE `npc_vendor` SET `slot` = 42, `condition_id` = 504 WHERE `item` = 28245 AND `entry` = 12793;
UPDATE `npc_vendor` SET `slot` = 43, `condition_id` = 504 WHERE `item` = 28246 AND `entry` = 12793;
UPDATE `npc_vendor` SET `slot` = 44, `condition_id` = 504 WHERE `item` = 28247 AND `entry` = 12793;
-- normally not sold anymore in 2.4.3 keep for now as other items are not in this vendor either.
-- 28244, -- 12793	Pendant of Triumph
-- 28245, -- 12793	Pendant of Dominance
-- 28246, -- 12793	Band of Triumph
-- 28247, -- 12793	Band of Dominance
UPDATE `npc_vendor` SET `slot` = 45 WHERE `item` = 28362 AND `entry` = 12793; -- Bold Ornate Ruby
UPDATE `npc_vendor` SET `slot` = 46 WHERE `item` = 28118 AND `entry` = 12793; -- Runed Ornate Ruby
UPDATE `npc_vendor` SET `slot` = 47 WHERE `item` = 28119 AND `entry` = 12793; -- Smooth Ornate Dawnstone
UPDATE `npc_vendor` SET `slot` = 48 WHERE `item` = 28120 AND `entry` = 12793; -- Gleaming Ornate Dawnstone
UPDATE `npc_vendor` SET `slot` = 49 WHERE `item` = 28363 AND `entry` = 12793; -- Inscribed Ornate Topaz
UPDATE `npc_vendor` SET `slot` = 50 WHERE `item` = 28123 AND `entry` = 12793; -- Potent Ornate Topaz

-- located in wrong vendor
DELETE FROM `npc_vendor` WHERE `entry` = 12793 AND `item` IN (
18427, -- 12793	Sergeant's Cloak
16341, -- 12793	Sergeant's Cloak
18461, -- 12793	Sergeant's Cloak
18437, -- 12793	First Sergeant's Silk Cuffs
16486, -- 12793	First Sergeant's Silk Cuffs
18435, -- 12793	First Sergeant's Leather Armguards
16497, -- 12793	First Sergeant's Leather Armguards
18436, -- 12793	First Sergeant's Dragonhide Armguards
18434, -- 12793	First Sergeant's Dragonhide Armguards
18432, -- 12793	First Sergeant's Mail Wristguards
16532, -- 12793	First Sergeant's Mail Wristguards
18430, -- 12793	First Sergeant's Plate Bracers
18429 -- 12793	First Sergeant's Plate Bracers
);

-- Sergeant Thunderhorn 14581,24667,26396
UPDATE `npc_vendor_template` SET `slot` = 1 WHERE `item` = 24550 AND `entry` = 553;
UPDATE `npc_vendor_template` SET `slot` = 2 WHERE `item` = 28298 AND `entry` = 553;
UPDATE `npc_vendor_template` SET `slot` = 3 WHERE `item` = 28299 AND `entry` = 553;
UPDATE `npc_vendor_template` SET `slot` = 4 WHERE `item` = 28300 AND `entry` = 553;
UPDATE `npc_vendor_template` SET `slot` = 5 WHERE `item` = 28476 AND `entry` = 553;
UPDATE `npc_vendor_template` SET `slot` = 6 WHERE `item` = 28294 AND `entry` = 553;
UPDATE `npc_vendor_template` SET `slot` = 7 WHERE `item` = 28295 AND `entry` = 553;
UPDATE `npc_vendor_template` SET `slot` = 8 WHERE `item` = 28307 AND `entry` = 553;
UPDATE `npc_vendor_template` SET `slot` = 9 WHERE `item` = 28308 AND `entry` = 553;
UPDATE `npc_vendor_template` SET `slot` = 10 WHERE `item` = 28309 AND `entry` = 553;
UPDATE `npc_vendor_template` SET `slot` = 11 WHERE `item` = 28305 AND `entry` = 553;
UPDATE `npc_vendor_template` SET `slot` = 12 WHERE `item` = 28302 AND `entry` = 553;
UPDATE `npc_vendor_template` SET `slot` = 13 WHERE `item` = 28313 AND `entry` = 553;
UPDATE `npc_vendor_template` SET `slot` = 14 WHERE `item` = 28314 AND `entry` = 553;
UPDATE `npc_vendor_template` SET `slot` = 15 WHERE `item` = 28312 AND `entry` = 553;
UPDATE `npc_vendor_template` SET `slot` = 16 WHERE `item` = 28310 AND `entry` = 553;
UPDATE `npc_vendor_template` SET `slot` = 17 WHERE `item` = 24557 AND `entry` = 553;
UPDATE `npc_vendor_template` SET `slot` = 18 WHERE `item` = 28297 AND `entry` = 553;
UPDATE `npc_vendor_template` SET `slot` = 19 WHERE `item` = 32450 AND `entry` = 553;
UPDATE `npc_vendor_template` SET `slot` = 20 WHERE `item` = 32451 AND `entry` = 553;
UPDATE `npc_vendor_template` SET `slot` = 21 WHERE `item` = 28319 AND `entry` = 553; -- thrown
UPDATE `npc_vendor_template` SET `slot` = 22 WHERE `item` = 28358 AND `entry` = 553; -- shield
UPDATE `npc_vendor_template` SET `slot` = 23 WHERE `item` = 28346 AND `entry` = 553;
UPDATE `npc_vendor_template` SET `slot` = 24 WHERE `item` = 32452 AND `entry` = 553;
UPDATE `npc_vendor_template` SET `slot` = 25 WHERE `item` = 28320 AND `entry` = 553;
-- guessed by entry, grouped by class
UPDATE `npc_vendor_template` SET `slot` = 26 WHERE `item` = 28355 AND `entry` = 553;
UPDATE `npc_vendor_template` SET `slot` = 27 WHERE `item` = 33942 AND `entry` = 553; -- nonexistant S1-2
UPDATE `npc_vendor_template` SET `slot` = 28 WHERE `item` = 33945 AND `entry` = 553; -- nonexistant S1-2
UPDATE `npc_vendor_template` SET `slot` = 29 WHERE `item` = 28356 AND `entry` = 553;
UPDATE `npc_vendor_template` SET `slot` = 30 WHERE `item` = 33936 AND `entry` = 553; -- nonexistant S1-2
UPDATE `npc_vendor_template` SET `slot` = 31 WHERE `item` = 33948 AND `entry` = 553; -- nonexistant S1-2
UPDATE `npc_vendor_template` SET `slot` = 32 WHERE `item` = 28357 AND `entry` = 553;
UPDATE `npc_vendor_template` SET `slot` = 33 WHERE `item` = 33939 AND `entry` = 553; -- nonexistant S1-2
UPDATE `npc_vendor_template` SET `slot` = 34 WHERE `item` = 33951 AND `entry` = 553; -- nonexistant S1-2

-- guessed by S1 Thunderhorn
UPDATE `npc_vendor_template` SET `slot` = 1 WHERE `item` = 31984 AND `entry` = 563;
UPDATE `npc_vendor_template` SET `slot` = 2 WHERE `item` = 31966 AND `entry` = 563;
UPDATE `npc_vendor_template` SET `slot` = 3 WHERE `item` = 31959 AND `entry` = 563;
UPDATE `npc_vendor_template` SET `slot` = 4 WHERE `item` = 32025 AND `entry` = 563;
UPDATE `npc_vendor_template` SET `slot` = 5 WHERE `item` = 32014 AND `entry` = 563;
UPDATE `npc_vendor_template` SET `slot` = 6 WHERE `item` = 31986 AND `entry` = 563;
UPDATE `npc_vendor_template` SET `slot` = 7 WHERE `item` = 32052 AND `entry` = 563;
UPDATE `npc_vendor_template` SET `slot` = 8 WHERE `item` = 32027 AND `entry` = 563;
UPDATE `npc_vendor_template` SET `slot` = 9 WHERE `item` = 31965 AND `entry` = 563;
UPDATE `npc_vendor_template` SET `slot` = 10 WHERE `item` = 31985 AND `entry` = 563;
UPDATE `npc_vendor_template` SET `slot` = 11 WHERE `item` = 32026 AND `entry` = 563;
UPDATE `npc_vendor_template` SET `slot` = 12 WHERE `item` = 31958 AND `entry` = 563;
UPDATE `npc_vendor_template` SET `slot` = 13 WHERE `item` = 32028 AND `entry` = 563;
UPDATE `npc_vendor_template` SET `slot` = 14 WHERE `item` = 32003 AND `entry` = 563;
UPDATE `npc_vendor_template` SET `slot` = 15 WHERE `item` = 32044 AND `entry` = 563;
UPDATE `npc_vendor_template` SET `slot` = 16 WHERE `item` = 32046 AND `entry` = 563;
UPDATE `npc_vendor_template` SET `slot` = 17 WHERE `item` = 32055 AND `entry` = 563;
UPDATE `npc_vendor_template` SET `slot` = 18 WHERE `item` = 32053 AND `entry` = 563;
UPDATE `npc_vendor_template` SET `slot` = 19 WHERE `item` = 32963 AND `entry` = 563;
UPDATE `npc_vendor_template` SET `slot` = 20 WHERE `item` = 32964 AND `entry` = 563;
UPDATE `npc_vendor_template` SET `slot` = 21 WHERE `item` = 32054 AND `entry` = 563;
-- why are the other shields not here? no class restriction!? (thrown,shield,book,wand - order)
UPDATE `npc_vendor_template` SET `slot` = 22 WHERE `item` = 33309 AND `entry` = 563; -- custom slot? 26 or nonexistant?
UPDATE `npc_vendor_template` SET `slot` = 23 WHERE `item` = 33313 AND `entry` = 563; -- custom slot? 27 or nonexistant?
UPDATE `npc_vendor_template` SET `slot` = 24 WHERE `item` = 32045 AND `entry` = 563;
UPDATE `npc_vendor_template` SET `slot` = 25 WHERE `item` = 31978 AND `entry` = 563;
UPDATE `npc_vendor_template` SET `slot` = 26 WHERE `item` = 32961 AND `entry` = 563;
-- guessed
UPDATE `npc_vendor_template` SET `slot` = 27 WHERE `item` = 32962 AND `entry` = 563;
UPDATE `npc_vendor_template` SET `slot` = 28 WHERE `item` = 33076 AND `entry` = 563;
UPDATE `npc_vendor_template` SET `slot` = 29 WHERE `item` = 33943 AND `entry` = 563;
UPDATE `npc_vendor_template` SET `slot` = 30 WHERE `item` = 33946 AND `entry` = 563;
UPDATE `npc_vendor_template` SET `slot` = 31 WHERE `item` = 33077 AND `entry` = 563;
UPDATE `npc_vendor_template` SET `slot` = 32 WHERE `item` = 33937 AND `entry` = 563;
UPDATE `npc_vendor_template` SET `slot` = 33 WHERE `item` = 33949 AND `entry` = 563;
UPDATE `npc_vendor_template` SET `slot` = 34 WHERE `item` = 33078 AND `entry` = 563;
UPDATE `npc_vendor_template` SET `slot` = 35 WHERE `item` = 33940 AND `entry` = 563;
UPDATE `npc_vendor_template` SET `slot` = 36 WHERE `item` = 33952 AND `entry` = 563;

-- guessed by S1 Thunderhorn
UPDATE `npc_vendor_template` SET `slot` = 1 WHERE `item` = 28293 AND `entry` = 547;
UPDATE `npc_vendor_template` SET `slot` = 2 WHERE `item` = 28918 AND `entry` = 547;
UPDATE `npc_vendor_template` SET `slot` = 3 WHERE `item` = 28917 AND `entry` = 547;
UPDATE `npc_vendor_template` SET `slot` = 4 WHERE `item` = 28923 AND `entry` = 547;
UPDATE `npc_vendor_template` SET `slot` = 5 WHERE `item` = 28919 AND `entry` = 547;
UPDATE `npc_vendor_template` SET `slot` = 6 WHERE `item` = 28933 AND `entry` = 547;
UPDATE `npc_vendor_template` SET `slot` = 7 WHERE `item` = 28937 AND `entry` = 547;
UPDATE `npc_vendor_template` SET `slot` = 8 WHERE `item` = 28926 AND `entry` = 547;
UPDATE `npc_vendor_template` SET `slot` = 9 WHERE `item` = 28920 AND `entry` = 547;
UPDATE `npc_vendor_template` SET `slot` = 10 WHERE `item` = 28921 AND `entry` = 547;
UPDATE `npc_vendor_template` SET `slot` = 11 WHERE `item` = 28925 AND `entry` = 547;
UPDATE `npc_vendor_template` SET `slot` = 12 WHERE `item` = 28924 AND `entry` = 547;
UPDATE `npc_vendor_template` SET `slot` = 13 WHERE `item` = 28928 AND `entry` = 547;
UPDATE `npc_vendor_template` SET `slot` = 14 WHERE `item` = 28922 AND `entry` = 547;
UPDATE `npc_vendor_template` SET `slot` = 15 WHERE `item` = 28929 AND `entry` = 547;
UPDATE `npc_vendor_template` SET `slot` = 16 WHERE `item` = 28930 AND `entry` = 547;
UPDATE `npc_vendor_template` SET `slot` = 17 WHERE `item` = 28935 AND `entry` = 547;
UPDATE `npc_vendor_template` SET `slot` = 18 WHERE `item` = 28931 AND `entry` = 547;
-- guessed
UPDATE `npc_vendor_template` SET `slot` = 19 WHERE `item` = 28938 AND `entry` = 547;
UPDATE `npc_vendor_template` SET `slot` = 20 WHERE `item` = 28939 AND `entry` = 547;

-- Stone Guard Zarg
UPDATE `npc_vendor_template` SET `slot` = 7 WHERE `item` = 16345 AND `entry` = 543; -- High Warlord's Blade
UPDATE `npc_vendor_template` SET `slot` = 14 WHERE `item` = 18826 AND `entry` = 543; -- High Warlord's Shield Wall
UPDATE `npc_vendor_template` SET `slot` = 6 WHERE `item` = 18828 AND `entry` = 543; -- High Warlord's Cleaver
UPDATE `npc_vendor_template` SET `slot` = 2 WHERE `item` = 18831 AND `entry` = 543; -- High Warlord's Battle Axe
UPDATE `npc_vendor_template` SET `slot` = 15 WHERE `item` = 18835 AND `entry` = 543; -- High Warlord's Recurve
UPDATE `npc_vendor_template` SET `slot` = 16 WHERE `item` = 18837 AND `entry` = 543; -- High Warlord's Crossbow
UPDATE `npc_vendor_template` SET `slot` = 13 WHERE `item` = 18840 AND `entry` = 543; -- High Warlord's Razor
UPDATE `npc_vendor_template` SET `slot` = 11 WHERE `item` = 18844 AND `entry` = 543; -- High Warlord's Right Claw
UPDATE `npc_vendor_template` SET `slot` = 12 WHERE `item` = 18848 AND `entry` = 543; -- High Warlord's Left Claw
UPDATE `npc_vendor_template` SET `slot` = 17 WHERE `item` = 18860 AND `entry` = 543; -- High Warlord's Street Sweeper
UPDATE `npc_vendor_template` SET `slot` = 9 WHERE `item` = 18866 AND `entry` = 543; -- High Warlord's Bludgeon
UPDATE `npc_vendor_template` SET `slot` = 3 WHERE `item` = 18868 AND `entry` = 543; -- High Warlord's Pulverizer
UPDATE `npc_vendor_template` SET `slot` = 5 WHERE `item` = 18871 AND `entry` = 543; -- High Warlord's Pig Sticker
UPDATE `npc_vendor_template` SET `slot` = 18 WHERE `item` = 18874 AND `entry` = 543; -- High Warlord's War Staff
UPDATE `npc_vendor_template` SET `slot` = 1 WHERE `item` = 18877 AND `entry` = 543; -- High Warlord's Greatsword
UPDATE `npc_vendor_template` SET `slot` = 10 WHERE `item` = 23464 AND `entry` = 543; -- High Warlord's Battle Mace
UPDATE `npc_vendor_template` SET `slot` = 4 WHERE `item` = 23465 AND `entry` = 543; -- High Warlord's Destroyer
UPDATE `npc_vendor_template` SET `slot` = 19 WHERE `item` = 23466 AND `entry` = 543; -- High Warlord's Spellblade
UPDATE `npc_vendor_template` SET `slot` = 8 WHERE `item` = 23467 AND `entry` = 543; -- High Warlord's Quickblade
UPDATE `npc_vendor_template` SET `slot` = 20 WHERE `item` = 23468 AND `entry` = 543; -- High Warlord's Tome of Destruction
UPDATE `npc_vendor_template` SET `slot` = 21 WHERE `item` = 23469 AND `entry` = 543; -- High Warlord's Tome of Mending

-- First Sergeant Hola'mahi 12795 (121 items, wotlk + neck pieces and low trinkets)
DELETE FROM `npc_vendor_template` WHERE `entry` = 542 AND `item` IN (16341,16486,16497,16532,18427,18429,18430,18432,18434,18435,18436,18437,18461);
INSERT INTO `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `slot`, `ExtendedCost`, `condition_id`, `comments`) VALUES
(542, 16341, 0, 0, 2, 986, 0, 'Sergeant\'s Cloak'),
(542, 16486, 0, 0, 5, 492, 0, 'First Sergeant\'s Silk Cuffs'),
(542, 16497, 0, 0, 7, 492, 0, 'First Sergeant\'s Leather Armguards'),
(542, 16532, 0, 0, 11, 492, 0, 'First Sergeant\'s Mail Wristguards'),
(542, 18427, 0, 0, 1, 1050, 0, 'Sergeant\'s Cloak'),
(542, 18429, 0, 0, 13, 492, 0, 'First Sergeant\'s Plate Bracers'),
(542, 18430, 0, 0, 12, 931, 0, 'First Sergeant\'s Plate Bracers'),
(542, 18432, 0, 0, 10, 931, 0, 'First Sergeant\'s Mail Wristguards'),
(542, 18434, 0, 0, 9, 492, 0, 'First Sergeant\'s Dragonhide Armguards'),
(542, 18435, 0, 0, 6, 931, 0, 'First Sergeant\'s Leather Armguards'),
(542, 18436, 0, 0, 8, 931, 0, 'First Sergeant\'s Dragonhide Armguards'),
(542, 18437, 0, 0, 4, 931, 0, 'First Sergeant\'s Silk Cuffs'),
(542, 18461, 0, 0, 3, 774, 0, 'Sergeant\'s Cloak');

UPDATE `npc_vendor_template` SET `slot` = 14 WHERE `item` = 22859 AND `entry` = 542; -- Blood Guard's Satin Walkers
UPDATE `npc_vendor_template` SET `slot` = 15 WHERE `item` = 22869 AND `entry` = 542; -- hands
UPDATE `npc_vendor_template` SET `slot` = 16 WHERE `item` = 22882 AND `entry` = 542; -- legs (legs/chest swapped in epic sets?)
UPDATE `npc_vendor_template` SET `slot` = 17 WHERE `item` = 22885 AND `entry` = 542; -- chest
UPDATE `npc_vendor_template` SET `slot` = 18 WHERE `item` = 23262 AND `entry` = 542; -- shoulder
UPDATE `npc_vendor_template` SET `slot` = 19 WHERE `item` = 23261 AND `entry` = 542; -- head
UPDATE `npc_vendor_template` SET `slot` = 20 WHERE `item` = 17618 AND `entry` = 542; -- General's Satin Boots (epic)
UPDATE `npc_vendor_template` SET `slot` = 21 WHERE `item` = 17620 AND `entry` = 542; -- hands epic
UPDATE `npc_vendor_template` SET `slot` = 23 WHERE `item` = 17625 AND `entry` = 542; -- legs epic
UPDATE `npc_vendor_template` SET `slot` = 22 WHERE `item` = 17624 AND `entry` = 542; -- chest epic
UPDATE `npc_vendor_template` SET `slot` = 24 WHERE `item` = 17623 AND `entry` = 542; -- head epic
UPDATE `npc_vendor_template` SET `slot` = 25 WHERE `item` = 17622 AND `entry` = 542; -- shoulder epic
-- guessed, just class rare/epic and changing chest epic with legs epic
UPDATE `npc_vendor_template` SET `slot` = 26 WHERE `item` = 22860 AND `entry` = 542; -- Blood Guard's Silk Walkers
UPDATE `npc_vendor_template` SET `slot` = 27 WHERE `item` = 22870 AND `entry` = 542; -- Blood Guard's Silk Handwraps
UPDATE `npc_vendor_template` SET `slot` = 28 WHERE `item` = 22883 AND `entry` = 542; -- Legionnaire's Silk Legguards
UPDATE `npc_vendor_template` SET `slot` = 29 WHERE `item` = 22886 AND `entry` = 542; -- Legionnaire's Silk Tunic
UPDATE `npc_vendor_template` SET `slot` = 30 WHERE `item` = 23264 AND `entry` = 542; -- Champion's Silk Mantle
UPDATE `npc_vendor_template` SET `slot` = 31 WHERE `item` = 23263 AND `entry` = 542; -- Champion's Silk Cowl
UPDATE `npc_vendor_template` SET `slot` = 32 WHERE `item` = 16539 AND `entry` = 542; -- General's Silk Boots
UPDATE `npc_vendor_template` SET `slot` = 33 WHERE `item` = 16540 AND `entry` = 542; -- General's Silk Handguards
UPDATE `npc_vendor_template` SET `slot` = 34 WHERE `item` = 16534 AND `entry` = 542; -- General's Silk Trousers
UPDATE `npc_vendor_template` SET `slot` = 35 WHERE `item` = 16535 AND `entry` = 542; -- Warlord's Silk Raiment - seems strange that legs and chest are swapped due to their COST
UPDATE `npc_vendor_template` SET `slot` = 36 WHERE `item` = 16533 AND `entry` = 542; -- Warlord's Silk Cowl
UPDATE `npc_vendor_template` SET `slot` = 37 WHERE `item` = 16536 AND `entry` = 542; -- Warlord's Silk Amice
UPDATE `npc_vendor_template` SET `slot` = 38 WHERE `item` = 22855 AND `entry` = 542;
UPDATE `npc_vendor_template` SET `slot` = 39 WHERE `item` = 22865 AND `entry` = 542;
UPDATE `npc_vendor_template` SET `slot` = 40 WHERE `item` = 22881 AND `entry` = 542;
UPDATE `npc_vendor_template` SET `slot` = 41 WHERE `item` = 22884 AND `entry` = 542;
UPDATE `npc_vendor_template` SET `slot` = 42 WHERE `item` = 23256 AND `entry` = 542;
UPDATE `npc_vendor_template` SET `slot` = 43 WHERE `item` = 23255 AND `entry` = 542;
UPDATE `npc_vendor_template` SET `slot` = 44 WHERE `item` = 17586 AND `entry` = 542; -- General's Dreadweave Boots
UPDATE `npc_vendor_template` SET `slot` = 45 WHERE `item` = 17588 AND `entry` = 542; -- General's Dreadweave Gloves
UPDATE `npc_vendor_template` SET `slot` = 46 WHERE `item` = 17593 AND `entry` = 542; -- General's Dreadweave Pants
UPDATE `npc_vendor_template` SET `slot` = 47 WHERE `item` = 17592 AND `entry` = 542; -- Warlord's Dreadweave Robe
UPDATE `npc_vendor_template` SET `slot` = 48 WHERE `item` = 17590 AND `entry` = 542; -- Warlord's Dreadweave Mantle
UPDATE `npc_vendor_template` SET `slot` = 49 WHERE `item` = 17591 AND `entry` = 542; -- Warlord's Dreadweave Hood
UPDATE `npc_vendor_template` SET `slot` = 50 WHERE `item` = 22856 AND `entry` = 542;
UPDATE `npc_vendor_template` SET `slot` = 51 WHERE `item` = 22864 AND `entry` = 542;
UPDATE `npc_vendor_template` SET `slot` = 52 WHERE `item` = 22880 AND `entry` = 542;
UPDATE `npc_vendor_template` SET `slot` = 53 WHERE `item` = 22879 AND `entry` = 542;
UPDATE `npc_vendor_template` SET `slot` = 54 WHERE `item` = 23258 AND `entry` = 542;
UPDATE `npc_vendor_template` SET `slot` = 55 WHERE `item` = 23257 AND `entry` = 542;
UPDATE `npc_vendor_template` SET `slot` = 56 WHERE `item` = 16558 AND `entry` = 542;
UPDATE `npc_vendor_template` SET `slot` = 57 WHERE `item` = 16560 AND `entry` = 542;
UPDATE `npc_vendor_template` SET `slot` = 58 WHERE `item` = 16564 AND `entry` = 542;
UPDATE `npc_vendor_template` SET `slot` = 59 WHERE `item` = 16563 AND `entry` = 542;
UPDATE `npc_vendor_template` SET `slot` = 60 WHERE `item` = 16562 AND `entry` = 542;
UPDATE `npc_vendor_template` SET `slot` = 61 WHERE `item` = 16561 AND `entry` = 542;
UPDATE `npc_vendor_template` SET `slot` = 62 WHERE `item` = 22852 AND `entry` = 542;
UPDATE `npc_vendor_template` SET `slot` = 63 WHERE `item` = 22863 AND `entry` = 542;
UPDATE `npc_vendor_template` SET `slot` = 64 WHERE `item` = 22878 AND `entry` = 542;
UPDATE `npc_vendor_template` SET `slot` = 65 WHERE `item` = 22877 AND `entry` = 542;
UPDATE `npc_vendor_template` SET `slot` = 66 WHERE `item` = 23254 AND `entry` = 542;
UPDATE `npc_vendor_template` SET `slot` = 67 WHERE `item` = 23253 AND `entry` = 542;
UPDATE `npc_vendor_template` SET `slot` = 68 WHERE `item` = 16554 AND `entry` = 542;
UPDATE `npc_vendor_template` SET `slot` = 69 WHERE `item` = 16555 AND `entry` = 542;
UPDATE `npc_vendor_template` SET `slot` = 70 WHERE `item` = 16552 AND `entry` = 542;
UPDATE `npc_vendor_template` SET `slot` = 71 WHERE `item` = 16549 AND `entry` = 542;
UPDATE `npc_vendor_template` SET `slot` = 72 WHERE `item` = 16551 AND `entry` = 542;
UPDATE `npc_vendor_template` SET `slot` = 73 WHERE `item` = 16550 AND `entry` = 542;
UPDATE `npc_vendor_template` SET `slot` = 74 WHERE `item` = 22843 AND `entry` = 542;
UPDATE `npc_vendor_template` SET `slot` = 75 WHERE `item` = 22862 AND `entry` = 542;
UPDATE `npc_vendor_template` SET `slot` = 76 WHERE `item` = 22875 AND `entry` = 542;
UPDATE `npc_vendor_template` SET `slot` = 77 WHERE `item` = 22874 AND `entry` = 542;
UPDATE `npc_vendor_template` SET `slot` = 78 WHERE `item` = 23252 AND `entry` = 542;
UPDATE `npc_vendor_template` SET `slot` = 79 WHERE `item` = 23251 AND `entry` = 542;
UPDATE `npc_vendor_template` SET `slot` = 80 WHERE `item` = 16569 AND `entry` = 542;
UPDATE `npc_vendor_template` SET `slot` = 81 WHERE `item` = 16571 AND `entry` = 542;
UPDATE `npc_vendor_template` SET `slot` = 82 WHERE `item` = 16567 AND `entry` = 542;
UPDATE `npc_vendor_template` SET `slot` = 83 WHERE `item` = 16565 AND `entry` = 542;
UPDATE `npc_vendor_template` SET `slot` = 84 WHERE `item` = 16568 AND `entry` = 542;
UPDATE `npc_vendor_template` SET `slot` = 85 WHERE `item` = 16566 AND `entry` = 542;
UPDATE `npc_vendor_template` SET `slot` = 86 WHERE `item` = 22857 AND `entry` = 542;
UPDATE `npc_vendor_template` SET `slot` = 87 WHERE `item` = 22867 AND `entry` = 542;
UPDATE `npc_vendor_template` SET `slot` = 88 WHERE `item` = 22887 AND `entry` = 542;
UPDATE `npc_vendor_template` SET `slot` = 89 WHERE `item` = 22876 AND `entry` = 542;
UPDATE `npc_vendor_template` SET `slot` = 90 WHERE `item` = 23260 AND `entry` = 542;
UPDATE `npc_vendor_template` SET `slot` = 91 WHERE `item` = 23259 AND `entry` = 542;
UPDATE `npc_vendor_template` SET `slot` = 92 WHERE `item` = 16573 AND `entry` = 542;
UPDATE `npc_vendor_template` SET `slot` = 93 WHERE `item` = 16574 AND `entry` = 542;
UPDATE `npc_vendor_template` SET `slot` = 94 WHERE `item` = 16579 AND `entry` = 542;
UPDATE `npc_vendor_template` SET `slot` = 95 WHERE `item` = 16577 AND `entry` = 542;
UPDATE `npc_vendor_template` SET `slot` = 96 WHERE `item` = 16580 AND `entry` = 542;
UPDATE `npc_vendor_template` SET `slot` = 97 WHERE `item` = 16578 AND `entry` = 542;
UPDATE `npc_vendor_template` SET `slot` = 98 WHERE `item` = 22858 AND `entry` = 542;
UPDATE `npc_vendor_template` SET `slot` = 99 WHERE `item` = 22868 AND `entry` = 542;
UPDATE `npc_vendor_template` SET `slot` = 100 WHERE `item` = 22873 AND `entry` = 542;
UPDATE `npc_vendor_template` SET `slot` = 101 WHERE `item` = 22872 AND `entry` = 542;
UPDATE `npc_vendor_template` SET `slot` = 102 WHERE `item` = 23243 AND `entry` = 542;
UPDATE `npc_vendor_template` SET `slot` = 103 WHERE `item` = 23244 AND `entry` = 542;
UPDATE `npc_vendor_template` SET `slot` = 104 WHERE `item` = 16545 AND `entry` = 542;
UPDATE `npc_vendor_template` SET `slot` = 105 WHERE `item` = 16548 AND `entry` = 542;
UPDATE `npc_vendor_template` SET `slot` = 106 WHERE `item` = 16543 AND `entry` = 542;
UPDATE `npc_vendor_template` SET `slot` = 107 WHERE `item` = 16541 AND `entry` = 542;
UPDATE `npc_vendor_template` SET `slot` = 108 WHERE `item` = 16544 AND `entry` = 542;
UPDATE `npc_vendor_template` SET `slot` = 109 WHERE `item` = 16542 AND `entry` = 542;
UPDATE `npc_vendor_template` SET `slot` = 110 WHERE `item` = 29601 AND `entry` = 542;
UPDATE `npc_vendor_template` SET `slot` = 111 WHERE `item` = 29600 AND `entry` = 542;
UPDATE `npc_vendor_template` SET `slot` = 112 WHERE `item` = 29603 AND `entry` = 542;
UPDATE `npc_vendor_template` SET `slot` = 113 WHERE `item` = 29602 AND `entry` = 542;
UPDATE `npc_vendor_template` SET `slot` = 114 WHERE `item` = 29605 AND `entry` = 542;
UPDATE `npc_vendor_template` SET `slot` = 115 WHERE `item` = 29604 AND `entry` = 542;
UPDATE `npc_vendor_template` SET `slot` = 116 WHERE `item` = 29612 AND `entry` = 542;
UPDATE `npc_vendor_template` SET `slot` = 117 WHERE `item` = 29613 AND `entry` = 542;
UPDATE `npc_vendor_template` SET `slot` = 118 WHERE `item` = 29614 AND `entry` = 542;
UPDATE `npc_vendor_template` SET `slot` = 119 WHERE `item` = 29615 AND `entry` = 542;
UPDATE `npc_vendor_template` SET `slot` = 120 WHERE `item` = 29617 AND `entry` = 542;
UPDATE `npc_vendor_template` SET `slot` = 121 WHERE `item` = 29616 AND `entry` = 542;

-- Raider Bork
UPDATE `npc_vendor` SET `slot` = 1 WHERE `item` = 29466 AND `entry` = 12796; -- Black War Kodo
UPDATE `npc_vendor` SET `slot` = 2 WHERE `item` = 29469 AND `entry` = 12796; -- Horn of the Black War Wolf
UPDATE `npc_vendor` SET `slot` = 3 WHERE `item` = 29470 AND `entry` = 12796; -- Red Skeletal Warhorse
UPDATE `npc_vendor` SET `slot` = 4 WHERE `item` = 29472 AND `entry` = 12796; -- Whistle of the Black War Raptor
UPDATE `npc_vendor` SET `slot` = 5 WHERE `item` = 34129 AND `entry` = 12796; -- Swift Warstrider

-- It seems every season vendor is slightly different sorted (not class depended), or each vendor is different, so using same pattern for all seasons
-- S2 Item Lists (556,557,560,561,562)
-- even if these items were added one season later we can use them in S2 for balance and fairness of gear
DELETE FROM `npc_vendor_template` WHERE `entry` = 560 AND `item` IN (33952,33949,33946,33943,33940,33937);
INSERT INTO `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `slot`, `ExtendedCost`, `condition_id`, `comments`) VALUES
-- (560, 33078, 0, 0, 0, 2283, 505, 'Merciless Gladiator\'s Totem of the Third Wind'), -- heal
-- (560, 33077, 0, 0, 0, 2283, 505, 'Merciless Gladiator\'s Libram of Justice'), -- heal
-- (560, 33076, 0, 0, 0, 2283, 505, 'Merciless Gladiator\'s Idol of Tenacity'), -- heal
(560, 33952, 0, 0, 0, 2283, 505, 'Merciless Gladiator\'s Totem of Survival'),
(560, 33949, 0, 0, 0, 2283, 505, 'Merciless Gladiator\'s Libram of Vengeance'),
(560, 33946, 0, 0, 0, 2283, 505, 'Merciless Gladiator\'s Idol of Resolve'),
(560, 33943, 0, 0, 0, 2283, 505, 'Merciless Gladiator\'s Idol of Steadfastness'),
(560, 33940, 0, 0, 0, 2283, 505, 'Merciless Gladiator\'s Totem of Indomitability'),
(560, 33937, 0, 0, 0, 2283, 505, 'Merciless Gladiator\'s Libram of Fortitude');

UPDATE `npc_vendor_template` SET `slot` = 1 WHERE `item` = 32034 AND `entry` IN (556,557,560,561,562); -- Merciless Gladiator's Satin Gloves
UPDATE `npc_vendor_template` SET `slot` = 2 WHERE `item` = 32037 AND `entry` IN (556,557,560,561,562); -- Merciless Gladiator's Satin Mantle
UPDATE `npc_vendor_template` SET `slot` = 3 WHERE `item` = 32036 AND `entry` IN (556,557,560,561,562); -- Merciless Gladiator's Satin Leggings
UPDATE `npc_vendor_template` SET `slot` = 4 WHERE `item` = 32035 AND `entry` IN (556,557,560,561,562); -- Merciless Gladiator's Satin Hood
UPDATE `npc_vendor_template` SET `slot` = 5 WHERE `item` = 32038 AND `entry` IN (556,557,560,561,562); -- Merciless Gladiator's Satin Robe

UPDATE `npc_vendor_template` SET `slot` = 6 WHERE `item` = 32015 AND `entry` IN (556,557,560,561,562); -- Merciless Gladiator's Mooncloth Gloves
UPDATE `npc_vendor_template` SET `slot` = 7 WHERE `item` = 32018 AND `entry` IN (556,557,560,561,562); -- Merciless Gladiator's Mooncloth Mantle
UPDATE `npc_vendor_template` SET `slot` = 8 WHERE `item` = 32017 AND `entry` IN (556,557,560,561,562); -- Merciless Gladiator's Mooncloth Leggings
UPDATE `npc_vendor_template` SET `slot` = 9 WHERE `item` = 32016 AND `entry` IN (556,557,560,561,562); -- Merciless Gladiator's Mooncloth Hood
UPDATE `npc_vendor_template` SET `slot` = 10 WHERE `item` = 32019 AND `entry` IN (556,557,560,561,562); -- Merciless Gladiator's Mooncloth Robe

UPDATE `npc_vendor_template` SET `slot` = 11 WHERE `item` = 31973 AND `entry` IN (556,557,560,561,562); -- Merciless Gladiator's Dreadweave Gloves
UPDATE `npc_vendor_template` SET `slot` = 12 WHERE `item` = 31976 AND `entry` IN (556,557,560,561,562); -- Merciless Gladiator's Dreadweave Mantle
UPDATE `npc_vendor_template` SET `slot` = 13 WHERE `item` = 31975 AND `entry` IN (556,557,560,561,562); -- Merciless Gladiator's Dreadweave Leggings
UPDATE `npc_vendor_template` SET `slot` = 14 WHERE `item` = 31974 AND `entry` IN (556,557,560,561,562); -- Merciless Gladiator's Dreadweave Hood
UPDATE `npc_vendor_template` SET `slot` = 15 WHERE `item` = 31977 AND `entry` IN (556,557,560,561,562); -- Merciless Gladiator's Dreadweave Robe

UPDATE `npc_vendor_template` SET `slot` = 16 WHERE `item` = 31981 AND `entry` IN (556,557,560,561,562); -- Merciless Gladiator's Felweave Handguards
UPDATE `npc_vendor_template` SET `slot` = 17 WHERE `item` = 31979 AND `entry` IN (556,557,560,561,562); -- Merciless Gladiator's Felweave Amice
UPDATE `npc_vendor_template` SET `slot` = 18 WHERE `item` = 31983 AND `entry` IN (556,557,560,561,562); -- Merciless Gladiator's Felweave Trousers
UPDATE `npc_vendor_template` SET `slot` = 19 WHERE `item` = 31980 AND `entry` IN (556,557,560,561,562); -- Merciless Gladiator's Felweave Cowl
UPDATE `npc_vendor_template` SET `slot` = 20 WHERE `item` = 31982 AND `entry` IN (556,557,560,561,562); -- Merciless Gladiator's Felweave Raiment

UPDATE `npc_vendor_template` SET `slot` = 21 WHERE `item` = 32049 AND `entry` IN (556,557,560,561,562); -- Merciless Gladiator's Silk Handguards
UPDATE `npc_vendor_template` SET `slot` = 22 WHERE `item` = 32047 AND `entry` IN (556,557,560,561,562); -- Merciless Gladiator's Silk Amice
UPDATE `npc_vendor_template` SET `slot` = 23 WHERE `item` = 32051 AND `entry` IN (556,557,560,561,562); -- Merciless Gladiator's Silk Trousers
UPDATE `npc_vendor_template` SET `slot` = 24 WHERE `item` = 32048 AND `entry` IN (556,557,560,561,562); -- Merciless Gladiator's Silk Cowl
UPDATE `npc_vendor_template` SET `slot` = 25 WHERE `item` = 32050 AND `entry` IN (556,557,560,561,562); -- Merciless Gladiator's Silk Raiment

UPDATE `npc_vendor_template` SET `slot` = 26 WHERE `item` = 31998 AND `entry` IN (556,557,560,561,562); -- Merciless Gladiator's Leather Gloves
UPDATE `npc_vendor_template` SET `slot` = 27 WHERE `item` = 32001 AND `entry` IN (556,557,560,561,562); -- Merciless Gladiator's Leather Spaulders
UPDATE `npc_vendor_template` SET `slot` = 28 WHERE `item` = 32000 AND `entry` IN (556,557,560,561,562); -- Merciless Gladiator's Leather Legguards
UPDATE `npc_vendor_template` SET `slot` = 29 WHERE `item` = 31999 AND `entry` IN (556,557,560,561,562); -- Merciless Gladiator's Leather Helm
UPDATE `npc_vendor_template` SET `slot` = 30 WHERE `item` = 32002 AND `entry` IN (556,557,560,561,562); -- Merciless Gladiator's Leather Tunic

UPDATE `npc_vendor_template` SET `slot` = 31 WHERE `item` = 31967 AND `entry` IN (556,557,560,561,562); -- Merciless Gladiator's Dragonhide Gloves
UPDATE `npc_vendor_template` SET `slot` = 32 WHERE `item` = 31971 AND `entry` IN (556,557,560,561,562); -- Merciless Gladiator's Dragonhide Spaulders
UPDATE `npc_vendor_template` SET `slot` = 33 WHERE `item` = 31969 AND `entry` IN (556,557,560,561,562); -- Merciless Gladiator's Dragonhide Legguards
UPDATE `npc_vendor_template` SET `slot` = 34 WHERE `item` = 31968 AND `entry` IN (556,557,560,561,562); -- Merciless Gladiator's Dragonhide Helm
UPDATE `npc_vendor_template` SET `slot` = 35 WHERE `item` = 31972 AND `entry` IN (556,557,560,561,562); -- Merciless Gladiator's Dragonhide Tunic

UPDATE `npc_vendor_template` SET `slot` = 36 WHERE `item` = 31987 AND `entry` IN (556,557,560,561,562); -- Merciless Gladiator's Kodohide Gloves
UPDATE `npc_vendor_template` SET `slot` = 37 WHERE `item` = 31990 AND `entry` IN (556,557,560,561,562); -- Merciless Gladiator's Kodohide Spaulders
UPDATE `npc_vendor_template` SET `slot` = 38 WHERE `item` = 31989 AND `entry` IN (556,557,560,561,562); -- Merciless Gladiator's Kodohide Legguards
UPDATE `npc_vendor_template` SET `slot` = 39 WHERE `item` = 31988 AND `entry` IN (556,557,560,561,562); -- Merciless Gladiator's Kodohide Helm
UPDATE `npc_vendor_template` SET `slot` = 40 WHERE `item` = 31991 AND `entry` IN (556,557,560,561,562); -- Merciless Gladiator's Kodohide Tunic

UPDATE `npc_vendor_template` SET `slot` = 41 WHERE `item` = 32056 AND `entry` IN (556,557,560,561,562); -- Merciless Gladiator's Wyrmhide Gloves
UPDATE `npc_vendor_template` SET `slot` = 42 WHERE `item` = 32059 AND `entry` IN (556,557,560,561,562); -- Merciless Gladiator's Wyrmhide Spaulders
UPDATE `npc_vendor_template` SET `slot` = 43 WHERE `item` = 32058 AND `entry` IN (556,557,560,561,562); -- Merciless Gladiator's Wyrmhide Legguards
UPDATE `npc_vendor_template` SET `slot` = 44 WHERE `item` = 32057 AND `entry` IN (556,557,560,561,562); -- Merciless Gladiator's Wyrmhide Helm
UPDATE `npc_vendor_template` SET `slot` = 45 WHERE `item` = 32060 AND `entry` IN (556,557,560,561,562); -- Merciless Gladiator's Wyrmhide Tunic

UPDATE `npc_vendor_template` SET `slot` = 46 WHERE `item` = 31961 AND `entry` IN (556,557,560,561,562); -- Merciless Gladiator's Chain Gauntlets
UPDATE `npc_vendor_template` SET `slot` = 47 WHERE `item` = 31964 AND `entry` IN (556,557,560,561,562); -- Merciless Gladiator's Chain Spaulders
UPDATE `npc_vendor_template` SET `slot` = 48 WHERE `item` = 31963 AND `entry` IN (556,557,560,561,562); -- Merciless Gladiator's Chain Leggings
UPDATE `npc_vendor_template` SET `slot` = 49 WHERE `item` = 31962 AND `entry` IN (556,557,560,561,562); -- Merciless Gladiator's Chain Helm
UPDATE `npc_vendor_template` SET `slot` = 50 WHERE `item` = 31960 AND `entry` IN (556,557,560,561,562); -- Merciless Gladiator's Chain Armor

UPDATE `npc_vendor_template` SET `slot` = 51 WHERE `item` = 32030 AND `entry` IN (556,557,560,561,562); -- Merciless Gladiator's Ringmail Gauntlets
UPDATE `npc_vendor_template` SET `slot` = 52 WHERE `item` = 32033 AND `entry` IN (556,557,560,561,562); -- Merciless Gladiator's Ringmail Spaulders
UPDATE `npc_vendor_template` SET `slot` = 53 WHERE `item` = 32032 AND `entry` IN (556,557,560,561,562); -- Merciless Gladiator's Ringmail Leggings
UPDATE `npc_vendor_template` SET `slot` = 54 WHERE `item` = 32031 AND `entry` IN (556,557,560,561,562); -- Merciless Gladiator's Ringmail Helm
UPDATE `npc_vendor_template` SET `slot` = 55 WHERE `item` = 32029 AND `entry` IN (556,557,560,561,562); -- Merciless Gladiator's Ringmail Armor

UPDATE `npc_vendor_template` SET `slot` = 56 WHERE `item` = 32005 AND `entry` IN (556,557,560,561,562); -- Merciless Gladiator's Linked Gauntlets
UPDATE `npc_vendor_template` SET `slot` = 57 WHERE `item` = 32008 AND `entry` IN (556,557,560,561,562); -- Merciless Gladiator's Linked Spaulders
UPDATE `npc_vendor_template` SET `slot` = 58 WHERE `item` = 32007 AND `entry` IN (556,557,560,561,562); -- Merciless Gladiator's Linked Leggings
UPDATE `npc_vendor_template` SET `slot` = 59 WHERE `item` = 32006 AND `entry` IN (556,557,560,561,562); -- Merciless Gladiator's Linked Helm
UPDATE `npc_vendor_template` SET `slot` = 60 WHERE `item` = 32004 AND `entry` IN (556,557,560,561,562); -- Merciless Gladiator's Linked Armor

UPDATE `npc_vendor_template` SET `slot` = 61 WHERE `item` = 32010 AND `entry` IN (556,557,560,561,562); -- Merciless Gladiator's Mail Gauntlets
UPDATE `npc_vendor_template` SET `slot` = 62 WHERE `item` = 32013 AND `entry` IN (556,557,560,561,562); -- Merciless Gladiator's Mail Spaulders
UPDATE `npc_vendor_template` SET `slot` = 63 WHERE `item` = 32012 AND `entry` IN (556,557,560,561,562); -- Merciless Gladiator's Mail Leggings
UPDATE `npc_vendor_template` SET `slot` = 64 WHERE `item` = 32011 AND `entry` IN (556,557,560,561,562); -- Merciless Gladiator's Mail Helm
UPDATE `npc_vendor_template` SET `slot` = 65 WHERE `item` = 32009 AND `entry` IN (556,557,560,561,562); -- Merciless Gladiator's Mail Armor

UPDATE `npc_vendor_template` SET `slot` = 66 WHERE `item` = 30487 AND `entry` IN (556,557,560,561,562); -- Merciless Gladiator's Plate Gauntlets
UPDATE `npc_vendor_template` SET `slot` = 67 WHERE `item` = 30490 AND `entry` IN (556,557,560,561,562); -- Merciless Gladiator's Plate Shoulders
UPDATE `npc_vendor_template` SET `slot` = 68 WHERE `item` = 30489 AND `entry` IN (556,557,560,561,562); -- Merciless Gladiator's Plate Legguards
UPDATE `npc_vendor_template` SET `slot` = 69 WHERE `item` = 30488 AND `entry` IN (556,557,560,561,562); -- Merciless Gladiator's Plate Helm
UPDATE `npc_vendor_template` SET `slot` = 70 WHERE `item` = 30486 AND `entry` IN (556,557,560,561,562); -- Merciless Gladiator's Plate Chestpiece

UPDATE `npc_vendor_template` SET `slot` = 71 WHERE `item` = 32021 AND `entry` IN (556,557,560,561,562); -- Merciless Gladiator's Ornamented Gloves
UPDATE `npc_vendor_template` SET `slot` = 72 WHERE `item` = 32024 AND `entry` IN (556,557,560,561,562); -- Merciless Gladiator's Ornamented Spaulders
UPDATE `npc_vendor_template` SET `slot` = 73 WHERE `item` = 32023 AND `entry` IN (556,557,560,561,562); -- Merciless Gladiator's Ornamented Legplates
UPDATE `npc_vendor_template` SET `slot` = 74 WHERE `item` = 32022 AND `entry` IN (556,557,560,561,562); -- Merciless Gladiator's Ornamented Headcover
UPDATE `npc_vendor_template` SET `slot` = 75 WHERE `item` = 32020 AND `entry` IN (556,557,560,561,562); -- Merciless Gladiator's Ornamented Chestguard

UPDATE `npc_vendor_template` SET `slot` = 76 WHERE `item` = 32040 AND `entry` IN (556,557,560,561,562); -- Merciless Gladiator's Scaled Gauntlets
UPDATE `npc_vendor_template` SET `slot` = 77 WHERE `item` = 32043 AND `entry` IN (556,557,560,561,562); -- Merciless Gladiator's Scaled Shoulders
UPDATE `npc_vendor_template` SET `slot` = 78 WHERE `item` = 32042 AND `entry` IN (556,557,560,561,562); -- Merciless Gladiator's Scaled Legguards
UPDATE `npc_vendor_template` SET `slot` = 79 WHERE `item` = 32041 AND `entry` IN (556,557,560,561,562); -- Merciless Gladiator's Scaled Helm
UPDATE `npc_vendor_template` SET `slot` = 80 WHERE `item` = 32039 AND `entry` IN (556,557,560,561,562); -- Merciless Gladiator's Scaled Chestpiece

UPDATE `npc_vendor_template` SET `slot` = 81 WHERE `item` = 31993 AND `entry` IN (556,557,560,561,562); -- Merciless Gladiator's Lamellar Gauntlets
UPDATE `npc_vendor_template` SET `slot` = 82 WHERE `item` = 31996 AND `entry` IN (556,557,560,561,562); -- Merciless Gladiator's Lamellar Shoulders
UPDATE `npc_vendor_template` SET `slot` = 83 WHERE `item` = 31995 AND `entry` IN (556,557,560,561,562); -- Merciless Gladiator's Lamellar Legguards
UPDATE `npc_vendor_template` SET `slot` = 84 WHERE `item` = 31997 AND `entry` IN (556,557,560,561,562); -- Merciless Gladiator's Lamellar Helm
UPDATE `npc_vendor_template` SET `slot` = 85 WHERE `item` = 31992 AND `entry` IN (556,557,560,561,562); -- Merciless Gladiator's Lamellar Chestpiece

UPDATE `npc_vendor_template` SET `slot` = 86 WHERE `item` = 31984 AND `entry` IN (556,557,560,561,562); -- Merciless Gladiator's Greatsword
UPDATE `npc_vendor_template` SET `slot` = 87 WHERE `item` = 31959 AND `entry` IN (556,557,560,561,562); -- Merciless Gladiator's Bonegrinder
UPDATE `npc_vendor_template` SET `slot` = 88 WHERE `item` = 31966 AND `entry` IN (556,557,560,561,562); -- Merciless Gladiator's Decapitator
UPDATE `npc_vendor_template` SET `slot` = 89 WHERE `item` = 32025 AND `entry` IN (556,557,560,561,562); -- Merciless Gladiator's Painsaw
UPDATE `npc_vendor_template` SET `slot` = 90 WHERE `item` = 32014 AND `entry` IN (556,557,560,561,562); -- Merciless Gladiator's Maul
UPDATE `npc_vendor_template` SET `slot` = 91 WHERE `item` = 32052 AND `entry` IN (556,557,560,561,562); -- Merciless Gladiator's Slicer
UPDATE `npc_vendor_template` SET `slot` = 92 WHERE `item` = 32027 AND `entry` IN (556,557,560,561,562); -- Merciless Gladiator's Quickblade
UPDATE `npc_vendor_template` SET `slot` = 93 WHERE `item` = 31965 AND `entry` IN (556,557,560,561,562); -- Merciless Gladiator's Cleaver
UPDATE `npc_vendor_template` SET `slot` = 94 WHERE `item` = 31985 AND `entry` IN (556,557,560,561,562); -- Merciless Gladiator's Hacker
UPDATE `npc_vendor_template` SET `slot` = 95 WHERE `item` = 32026 AND `entry` IN (556,557,560,561,562); -- Merciless Gladiator's Pummeler
UPDATE `npc_vendor_template` SET `slot` = 96 WHERE `item` = 31958 AND `entry` IN (556,557,560,561,562); -- Merciless Gladiator's Bonecracker
UPDATE `npc_vendor_template` SET `slot` = 97 WHERE `item` = 32028 AND `entry` IN (556,557,560,561,562); -- Merciless Gladiator's Right Ripper
UPDATE `npc_vendor_template` SET `slot` = 98 WHERE `item` = 32003 AND `entry` IN (556,557,560,561,562); -- Merciless Gladiator's Left Ripper
UPDATE `npc_vendor_template` SET `slot` = 99 WHERE `item` = 32044 AND `entry` IN (556,557,560,561,562); -- Merciless Gladiator's Shanker
UPDATE `npc_vendor_template` SET `slot` = 100 WHERE `item` = 32046 AND `entry` IN (556,557,560,561,562); -- Merciless Gladiator's Shiv
UPDATE `npc_vendor_template` SET `slot` = 101 WHERE `item` = 32055 AND `entry` IN (556,557,560,561,562); -- Merciless Gladiator's War Staff
UPDATE `npc_vendor_template` SET `slot` = 102 WHERE `item` = 32053 AND `entry` IN (556,557,560,561,562); -- Merciless Gladiator's Spellblade
UPDATE `npc_vendor_template` SET `slot` = 103 WHERE `item` = 32963 AND `entry` IN (556,557,560,561,562); -- Merciless Gladiator's Gavel
UPDATE `npc_vendor_template` SET `slot` = 104 WHERE `item` = 32964 AND `entry` IN (556,557,560,561,562); -- Merciless Gladiator's Salvation
UPDATE `npc_vendor_template` SET `slot` = 105 WHERE `item` = 31986 AND `entry` IN (556,557,560,561,562); -- Merciless Gladiator's Crossbow of the Phoenix
UPDATE `npc_vendor_template` SET `slot` = 106 WHERE `item` = 32054 AND `entry` IN (556,557,560,561,562); -- Merciless Gladiator's War Edge
UPDATE `npc_vendor_template` SET `slot` = 107 WHERE `item` = 32045 AND `entry` IN (556,557,560,561,562); -- Merciless Gladiator's Shield Wall
UPDATE `npc_vendor_template` SET `slot` = 108 WHERE `item` = 33309 AND `entry` IN (556,557,560,561,562); -- Merciless Gladiator's Redoubt
UPDATE `npc_vendor_template` SET `slot` = 109 WHERE `item` = 33313 AND `entry` IN (556,557,560,561,562); -- Merciless Gladiator's Barrier
UPDATE `npc_vendor_template` SET `slot` = 110 WHERE `item` = 31978 AND `entry` IN (556,557,560,561,562); -- Merciless Gladiator's Endgame
UPDATE `npc_vendor_template` SET `slot` = 111 WHERE `item` = 32961 AND `entry` IN (556,557,560,561,562); -- Merciless Gladiator's Reprieve
UPDATE `npc_vendor_template` SET `slot` = 112 WHERE `item` = 32962 AND `entry` IN (556,557,560,561,562); -- Merciless Gladiator's Touch of Defeat
-- books idols totems (druid order confirmed)
UPDATE `npc_vendor_template` SET `slot` = 113 WHERE `item` = 33946 AND `entry` IN (556,557,560,561,562); -- Merciless Gladiator's Idol of Resolve (feral)
UPDATE `npc_vendor_template` SET `slot` = 114 WHERE `item` = 33943 AND `entry` IN (556,557,560,561,562); -- Merciless Gladiator's Idol of Steadfastness (balance)
UPDATE `npc_vendor_template` SET `slot` = 115 WHERE `item` = 33076 AND `entry` IN (556,557,560,561,562); -- Merciless Gladiator's Idol of Tenacity (resto)
UPDATE `npc_vendor_template` SET `slot` = 116 WHERE `item` = 33077 AND `entry` IN (556,557,560,561,562); -- Merciless Gladiator's Libram of Justice
UPDATE `npc_vendor_template` SET `slot` = 117 WHERE `item` = 33937 AND `entry` IN (556,557,560,561,562); -- Merciless Gladiator's Libram of Fortitude
UPDATE `npc_vendor_template` SET `slot` = 118 WHERE `item` = 33949 AND `entry` IN (556,557,560,561,562); -- Merciless Gladiator's Libram of Vengeance
UPDATE `npc_vendor_template` SET `slot` = 119 WHERE `item` = 33078 AND `entry` IN (556,557,560,561,562); -- Merciless Gladiator's Totem of the Third Wind
UPDATE `npc_vendor_template` SET `slot` = 120 WHERE `item` = 33940 AND `entry` IN (556,557,560,561,562); -- Merciless Gladiator's Totem of Indomitability
UPDATE `npc_vendor_template` SET `slot` = 121 WHERE `item` = 33952 AND `entry` IN (556,557,560,561,562); -- Merciless Gladiator's Totem of Survival

-- Captain O'Neal 12782,24671,26394 (546,553,563)
UPDATE `npc_vendor_template` SET `slot` = 1 WHERE `item` = 28943 AND `entry` = 546; -- Grand Marshal's Warblade
UPDATE `npc_vendor_template` SET `slot` = 2 WHERE `item` = 28945 AND `entry` = 546; -- Grand Marshal's Decapitator
UPDATE `npc_vendor_template` SET `slot` = 3 WHERE `item` = 28942 AND `entry` = 546; -- Grand Marshal's Bonegrinder
UPDATE `npc_vendor_template` SET `slot` = 4 WHERE `item` = 28949 AND `entry` = 546; -- Grand Marshal's Painsaw
UPDATE `npc_vendor_template` SET `slot` = 5 WHERE `item` = 28948 AND `entry` = 546; -- Grand Marshal's Maul
UPDATE `npc_vendor_template` SET `slot` = 6 WHERE `item` = 28960 AND `entry` = 546; -- Grand Marshal's Heavy Crossbow
UPDATE `npc_vendor_template` SET `slot` = 7 WHERE `item` = 28956 AND `entry` = 546; -- Grand Marshal's Slicer
UPDATE `npc_vendor_template` SET `slot` = 8 WHERE `item` = 28952 AND `entry` = 546; -- Grand Marshal's Quickblade
UPDATE `npc_vendor_template` SET `slot` = 9 WHERE `item` = 28944 AND `entry` = 546; -- Grand Marshal's Cleaver
UPDATE `npc_vendor_template` SET `slot` = 10 WHERE `item` = 28946 AND `entry` = 546; -- Grand Marshal's Hacker
UPDATE `npc_vendor_template` SET `slot` = 11 WHERE `item` = 28951 AND `entry` = 546; -- Grand Marshal's Pummeler
UPDATE `npc_vendor_template` SET `slot` = 12 WHERE `item` = 28950 AND `entry` = 546; -- Grand Marshal's Bonecracker
UPDATE `npc_vendor_template` SET `slot` = 13 WHERE `item` = 28953 AND `entry` = 546; -- Grand Marshal's Right Ripper
UPDATE `npc_vendor_template` SET `slot` = 14 WHERE `item` = 28947 AND `entry` = 546; -- Grand Marshal's Left Ripper
UPDATE `npc_vendor_template` SET `slot` = 15 WHERE `item` = 28954 AND `entry` = 546; -- Grand Marshal's Shanker
UPDATE `npc_vendor_template` SET `slot` = 16 WHERE `item` = 28955 AND `entry` = 546; -- Grand Marshal's Shiv
UPDATE `npc_vendor_template` SET `slot` = 17 WHERE `item` = 28959 AND `entry` = 546; -- Grand Marshal's War Staff
UPDATE `npc_vendor_template` SET `slot` = 18 WHERE `item` = 28957 AND `entry` = 546; -- Grand Marshal's Spellblade
UPDATE `npc_vendor_template` SET `slot` = 19 WHERE `item` = 28941 AND `entry` = 546; -- Grand Marshal's Battletome
UPDATE `npc_vendor_template` SET `slot` = 20 WHERE `item` = 28940 AND `entry` = 546; -- Grand Marshal's Barricade

-- S2 Offset
-- even if these items were added one season later we can use them in S2 for balance and fairness of gear
DELETE FROM `npc_vendor_template` WHERE `entry` = 564 AND `item` = 32798; -- missing
INSERT INTO `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `slot`, `ExtendedCost`, `condition_id`, `comments`) VALUES
(564, 32798, 0, 0, 16, 1923, 0, 'Veteran\'s Dragonhide Belt');

-- Should be after 28378 in other Vendor, Pendant then Bands, Veteran then Guardian, then Battlemaster then Gems
UPDATE `npc_vendor_template` SET `slot` = 46 WHERE `item` = 33056 AND `entry` = 564;
UPDATE `npc_vendor_template` SET `slot` = 47 WHERE `item` = 33064 AND `entry` = 564;
UPDATE `npc_vendor_template` SET `slot` = 48 WHERE `item` = 33057 AND `entry` = 564;
UPDATE `npc_vendor_template` SET `slot` = 49 WHERE `item` = 33067 AND `entry` = 564;
UPDATE `npc_vendor_template` SET `slot` = 50 WHERE `item` = 33065 AND `entry` = 564;
UPDATE `npc_vendor_template` SET `slot` = 51 WHERE `item` = 33068 AND `entry` = 564;
UPDATE `npc_vendor_template` SET `slot` = 52 WHERE `item` = 33066 AND `entry` = 564;

-- S3
UPDATE `npc_vendor_template` SET `slot` = 1 WHERE `item` = 33744 AND `entry` IN (570,571); -- Vengeful Gladiator's Satin Gloves
UPDATE `npc_vendor_template` SET `slot` = 2 WHERE `item` = 33747 AND `entry` IN (570,571); -- Vengeful Gladiator's Satin Mantle
UPDATE `npc_vendor_template` SET `slot` = 3 WHERE `item` = 33746 AND `entry` IN (570,571); -- Vengeful Gladiator's Satin Leggings
UPDATE `npc_vendor_template` SET `slot` = 4 WHERE `item` = 33745 AND `entry` IN (570,571); -- Vengeful Gladiator's Satin Hood
UPDATE `npc_vendor_template` SET `slot` = 5 WHERE `item` = 33748 AND `entry` IN (570,571); -- Vengeful Gladiator's Satin Robe
UPDATE `npc_vendor_template` SET `slot` = 6 WHERE `item` = 33717 AND `entry` IN (570,571); -- Vengeful Gladiator's Mooncloth Gloves
UPDATE `npc_vendor_template` SET `slot` = 7 WHERE `item` = 33720 AND `entry` IN (570,571); -- Vengeful Gladiator's Mooncloth Mantle
UPDATE `npc_vendor_template` SET `slot` = 8 WHERE `item` = 33719 AND `entry` IN (570,571); -- Vengeful Gladiator's Mooncloth Leggings
UPDATE `npc_vendor_template` SET `slot` = 9 WHERE `item` = 33718 AND `entry` IN (570,571); -- Vengeful Gladiator's Mooncloth Hood
UPDATE `npc_vendor_template` SET `slot` = 10 WHERE `item` = 33721 AND `entry` IN (570,571); -- Vengeful Gladiator's Mooncloth Robe
UPDATE `npc_vendor_template` SET `slot` = 11 WHERE `item` = 33676 AND `entry` IN (570,571); -- Vengeful Gladiator's Dreadweave Gloves
UPDATE `npc_vendor_template` SET `slot` = 12 WHERE `item` = 33679 AND `entry` IN (570,571); -- Vengeful Gladiator's Dreadweave Mantle
UPDATE `npc_vendor_template` SET `slot` = 13 WHERE `item` = 33678 AND `entry` IN (570,571); -- Vengeful Gladiator's Dreadweave Leggings
UPDATE `npc_vendor_template` SET `slot` = 14 WHERE `item` = 33677 AND `entry` IN (570,571); -- Vengeful Gladiator's Dreadweave Hood
UPDATE `npc_vendor_template` SET `slot` = 15 WHERE `item` = 33680 AND `entry` IN (570,571); -- Vengeful Gladiator's Dreadweave Robe
UPDATE `npc_vendor_template` SET `slot` = 16 WHERE `item` = 33684 AND `entry` IN (570,571); -- Vengeful Gladiator's Felweave Handguards
UPDATE `npc_vendor_template` SET `slot` = 17 WHERE `item` = 33682 AND `entry` IN (570,571); -- Vengeful Gladiator's Felweave Amice
UPDATE `npc_vendor_template` SET `slot` = 18 WHERE `item` = 33686 AND `entry` IN (570,571); -- Vengeful Gladiator's Felweave Trousers
UPDATE `npc_vendor_template` SET `slot` = 19 WHERE `item` = 33683 AND `entry` IN (570,571); -- Vengeful Gladiator's Felweave Cowl
UPDATE `npc_vendor_template` SET `slot` = 20 WHERE `item` = 33685 AND `entry` IN (570,571); -- Vengeful Gladiator's Felweave Raiment
UPDATE `npc_vendor_template` SET `slot` = 21 WHERE `item` = 33759 AND `entry` IN (570,571); -- Vengeful Gladiator's Silk Handguards
UPDATE `npc_vendor_template` SET `slot` = 22 WHERE `item` = 33757 AND `entry` IN (570,571); -- Vengeful Gladiator's Silk Amice
UPDATE `npc_vendor_template` SET `slot` = 23 WHERE `item` = 33761 AND `entry` IN (570,571); -- Vengeful Gladiator's Silk Trousers
UPDATE `npc_vendor_template` SET `slot` = 24 WHERE `item` = 33758 AND `entry` IN (570,571); -- Vengeful Gladiator's Silk Cowl
UPDATE `npc_vendor_template` SET `slot` = 25 WHERE `item` = 33760 AND `entry` IN (570,571); -- Vengeful Gladiator's Silk Raiment
UPDATE `npc_vendor_template` SET `slot` = 26 WHERE `item` = 33700 AND `entry` IN (570,571); -- Vengeful Gladiator's Leather Gloves
UPDATE `npc_vendor_template` SET `slot` = 27 WHERE `item` = 33703 AND `entry` IN (570,571); -- Vengeful Gladiator's Leather Spaulders
UPDATE `npc_vendor_template` SET `slot` = 28 WHERE `item` = 33702 AND `entry` IN (570,571); -- Vengeful Gladiator's Leather Legguards
UPDATE `npc_vendor_template` SET `slot` = 29 WHERE `item` = 33701 AND `entry` IN (570,571); -- Vengeful Gladiator's Leather Helm
UPDATE `npc_vendor_template` SET `slot` = 30 WHERE `item` = 33704 AND `entry` IN (570,571); -- Vengeful Gladiator's Leather Tunic
UPDATE `npc_vendor_template` SET `slot` = 31 WHERE `item` = 33671 AND `entry` IN (570,571); -- Vengeful Gladiator's Dragonhide Gloves
UPDATE `npc_vendor_template` SET `slot` = 32 WHERE `item` = 33674 AND `entry` IN (570,571); -- Vengeful Gladiator's Dragonhide Spaulders
UPDATE `npc_vendor_template` SET `slot` = 33 WHERE `item` = 33673 AND `entry` IN (570,571); -- Vengeful Gladiator's Dragonhide Legguards
UPDATE `npc_vendor_template` SET `slot` = 34 WHERE `item` = 33672 AND `entry` IN (570,571); -- Vengeful Gladiator's Dragonhide Helm
UPDATE `npc_vendor_template` SET `slot` = 35 WHERE `item` = 33675 AND `entry` IN (570,571); -- Vengeful Gladiator's Dragonhide Tunic
UPDATE `npc_vendor_template` SET `slot` = 36 WHERE `item` = 33690 AND `entry` IN (570,571); -- Vengeful Gladiator's Kodohide Gloves
UPDATE `npc_vendor_template` SET `slot` = 37 WHERE `item` = 33693 AND `entry` IN (570,571); -- Vengeful Gladiator's Kodohide Spaulders
UPDATE `npc_vendor_template` SET `slot` = 38 WHERE `item` = 33692 AND `entry` IN (570,571); -- Vengeful Gladiator's Kodohide Legguards
UPDATE `npc_vendor_template` SET `slot` = 39 WHERE `item` = 33691 AND `entry` IN (570,571); -- Vengeful Gladiator's Kodohide Helm
UPDATE `npc_vendor_template` SET `slot` = 40 WHERE `item` = 33694 AND `entry` IN (570,571); -- Vengeful Gladiator's Kodohide Tunic
UPDATE `npc_vendor_template` SET `slot` = 41 WHERE `item` = 33767 AND `entry` IN (570,571); -- Vengeful Gladiator's Wyrmhide Gloves
UPDATE `npc_vendor_template` SET `slot` = 42 WHERE `item` = 33770 AND `entry` IN (570,571); -- Vengeful Gladiator's Wyrmhide Spaulders
UPDATE `npc_vendor_template` SET `slot` = 43 WHERE `item` = 33769 AND `entry` IN (570,571); -- Vengeful Gladiator's Wyrmhide Legguards
UPDATE `npc_vendor_template` SET `slot` = 44 WHERE `item` = 33768 AND `entry` IN (570,571); -- Vengeful Gladiator's Wyrmhide Helm
UPDATE `npc_vendor_template` SET `slot` = 45 WHERE `item` = 33771 AND `entry` IN (570,571); -- Vengeful Gladiator's Wyrmhide Tunic
UPDATE `npc_vendor_template` SET `slot` = 46 WHERE `item` = 33665 AND `entry` IN (570,571); -- Vengeful Gladiator's Chain Gauntlets
UPDATE `npc_vendor_template` SET `slot` = 47 WHERE `item` = 33668 AND `entry` IN (570,571); -- Vengeful Gladiator's Chain Spaulders
UPDATE `npc_vendor_template` SET `slot` = 48 WHERE `item` = 33667 AND `entry` IN (570,571); -- Vengeful Gladiator's Chain Leggings
UPDATE `npc_vendor_template` SET `slot` = 49 WHERE `item` = 33666 AND `entry` IN (570,571); -- Vengeful Gladiator's Chain Helm
UPDATE `npc_vendor_template` SET `slot` = 50 WHERE `item` = 33664 AND `entry` IN (570,571); -- Vengeful Gladiator's Chain Armor
UPDATE `npc_vendor_template` SET `slot` = 51 WHERE `item` = 33739 AND `entry` IN (570,571); -- Vengeful Gladiator's Ringmail Gauntlets
UPDATE `npc_vendor_template` SET `slot` = 52 WHERE `item` = 33742 AND `entry` IN (570,571); -- Vengeful Gladiator's Ringmail Spaulders
UPDATE `npc_vendor_template` SET `slot` = 53 WHERE `item` = 33741 AND `entry` IN (570,571); -- Vengeful Gladiator's Ringmail Leggings
UPDATE `npc_vendor_template` SET `slot` = 54 WHERE `item` = 33740 AND `entry` IN (570,571); -- Vengeful Gladiator's Ringmail Helm
UPDATE `npc_vendor_template` SET `slot` = 55 WHERE `item` = 33738 AND `entry` IN (570,571); -- Vengeful Gladiator's Ringmail Armor
UPDATE `npc_vendor_template` SET `slot` = 56 WHERE `item` = 33707 AND `entry` IN (570,571); -- Vengeful Gladiator's Linked Gauntlets
UPDATE `npc_vendor_template` SET `slot` = 57 WHERE `item` = 33710 AND `entry` IN (570,571); -- Vengeful Gladiator's Linked Spaulders
UPDATE `npc_vendor_template` SET `slot` = 58 WHERE `item` = 33709 AND `entry` IN (570,571); -- Vengeful Gladiator's Linked Leggings
UPDATE `npc_vendor_template` SET `slot` = 59 WHERE `item` = 33708 AND `entry` IN (570,571); -- Vengeful Gladiator's Linked Helm
UPDATE `npc_vendor_template` SET `slot` = 60 WHERE `item` = 33706 AND `entry` IN (570,571); -- Vengeful Gladiator's Linked Armor
UPDATE `npc_vendor_template` SET `slot` = 61 WHERE `item` = 33712 AND `entry` IN (570,571); -- Vengeful Gladiator's Mail Gauntlets
UPDATE `npc_vendor_template` SET `slot` = 62 WHERE `item` = 33715 AND `entry` IN (570,571); -- Vengeful Gladiator's Mail Spaulders
UPDATE `npc_vendor_template` SET `slot` = 63 WHERE `item` = 33714 AND `entry` IN (570,571); -- Vengeful Gladiator's Mail Leggings
UPDATE `npc_vendor_template` SET `slot` = 64 WHERE `item` = 33713 AND `entry` IN (570,571); -- Vengeful Gladiator's Mail Helm
UPDATE `npc_vendor_template` SET `slot` = 65 WHERE `item` = 33711 AND `entry` IN (570,571); -- Vengeful Gladiator's Mail Armor
UPDATE `npc_vendor_template` SET `slot` = 66 WHERE `item` = 33729 AND `entry` IN (570,571); -- Vengeful Gladiator's Plate Gauntlets
UPDATE `npc_vendor_template` SET `slot` = 67 WHERE `item` = 33732 AND `entry` IN (570,571); -- Vengeful Gladiator's Plate Shoulders
UPDATE `npc_vendor_template` SET `slot` = 68 WHERE `item` = 33731 AND `entry` IN (570,571); -- Vengeful Gladiator's Plate Legguards
UPDATE `npc_vendor_template` SET `slot` = 69 WHERE `item` = 33730 AND `entry` IN (570,571); -- Vengeful Gladiator's Plate Helm
UPDATE `npc_vendor_template` SET `slot` = 70 WHERE `item` = 33728 AND `entry` IN (570,571); -- Vengeful Gladiator's Plate Chestpiece
UPDATE `npc_vendor_template` SET `slot` = 71 WHERE `item` = 33723 AND `entry` IN (570,571); -- Vengeful Gladiator's Ornamented Gloves
UPDATE `npc_vendor_template` SET `slot` = 72 WHERE `item` = 33726 AND `entry` IN (570,571); -- Vengeful Gladiator's Ornamented Spaulders
UPDATE `npc_vendor_template` SET `slot` = 73 WHERE `item` = 33725 AND `entry` IN (570,571); -- Vengeful Gladiator's Ornamented Legplates
UPDATE `npc_vendor_template` SET `slot` = 74 WHERE `item` = 33724 AND `entry` IN (570,571); -- Vengeful Gladiator's Ornamented Headcover
UPDATE `npc_vendor_template` SET `slot` = 75 WHERE `item` = 33722 AND `entry` IN (570,571); -- Vengeful Gladiator's Ornamented Chestguard
UPDATE `npc_vendor_template` SET `slot` = 76 WHERE `item` = 33750 AND `entry` IN (570,571); -- Vengeful Gladiator's Scaled Gauntlets
UPDATE `npc_vendor_template` SET `slot` = 77 WHERE `item` = 33753 AND `entry` IN (570,571); -- Vengeful Gladiator's Scaled Shoulders
UPDATE `npc_vendor_template` SET `slot` = 78 WHERE `item` = 33752 AND `entry` IN (570,571); -- Vengeful Gladiator's Scaled Legguards
UPDATE `npc_vendor_template` SET `slot` = 79 WHERE `item` = 33751 AND `entry` IN (570,571); -- Vengeful Gladiator's Scaled Helm
UPDATE `npc_vendor_template` SET `slot` = 80 WHERE `item` = 33749 AND `entry` IN (570,571); -- Vengeful Gladiator's Scaled Chestpiece
UPDATE `npc_vendor_template` SET `slot` = 81 WHERE `item` = 33696 AND `entry` IN (570,571); -- Vengeful Gladiator's Lamellar Gauntlets
UPDATE `npc_vendor_template` SET `slot` = 82 WHERE `item` = 33699 AND `entry` IN (570,571); -- Vengeful Gladiator's Lamellar Shoulders
UPDATE `npc_vendor_template` SET `slot` = 83 WHERE `item` = 33698 AND `entry` IN (570,571); -- Vengeful Gladiator's Lamellar Legguards
UPDATE `npc_vendor_template` SET `slot` = 84 WHERE `item` = 33697 AND `entry` IN (570,571); -- Vengeful Gladiator's Lamellar Helm
UPDATE `npc_vendor_template` SET `slot` = 85 WHERE `item` = 33695 AND `entry` IN (570,571); -- Vengeful Gladiator's Lamellar Chestpiece
UPDATE `npc_vendor_template` SET `slot` = 86 WHERE `item` = 34014 AND `entry` IN (570,571); -- Vengeful Gladiator's Waraxe (unclear where this is as its only visible to hunters)
UPDATE `npc_vendor_template` SET `slot` = 87 WHERE `item` = 33688 AND `entry` IN (570,571); -- Vengeful Gladiator's Greatsword
UPDATE `npc_vendor_template` SET `slot` = 88 WHERE `item` = 33663 AND `entry` IN (570,571); -- Vengeful Gladiator's Bonegrinder
UPDATE `npc_vendor_template` SET `slot` = 89 WHERE `item` = 33670 AND `entry` IN (570,571); -- Vengeful Gladiator's Decapitator
UPDATE `npc_vendor_template` SET `slot` = 90 WHERE `item` = 33727 AND `entry` IN (570,571); -- Vengeful Gladiator's Painsaw
UPDATE `npc_vendor_template` SET `slot` = 91 WHERE `item` = 33716 AND `entry` IN (570,571); -- Vengeful Gladiator's Staff
UPDATE `npc_vendor_template` SET `slot` = 92 WHERE `item` = 33762 AND `entry` IN (570,571); -- Vengeful Gladiator's Slicer
UPDATE `npc_vendor_template` SET `slot` = 93 WHERE `item` = 33734 AND `entry` IN (570,571); -- Vengeful Gladiator's Quickblade
UPDATE `npc_vendor_template` SET `slot` = 94 WHERE `item` = 33737 AND `entry` IN (570,571); -- Vengeful Gladiator's Right Ripper
UPDATE `npc_vendor_template` SET `slot` = 95 WHERE `item` = 33705 AND `entry` IN (570,571); -- Vengeful Gladiator's Left Ripper
UPDATE `npc_vendor_template` SET `slot` = 96 WHERE `item` = 34016 AND `entry` IN (570,571); -- Vengeful Gladiator's Left Render
UPDATE `npc_vendor_template` SET `slot` = 97 WHERE `item` = 33669 AND `entry` IN (570,571); -- Vengeful Gladiator's Cleaver
UPDATE `npc_vendor_template` SET `slot` = 98 WHERE `item` = 33689 AND `entry` IN (570,571); -- Vengeful Gladiator's Hacker
UPDATE `npc_vendor_template` SET `slot` = 99 WHERE `item` = 34015 AND `entry` IN (570,571); -- Vengeful Gladiator's Chopper
UPDATE `npc_vendor_template` SET `slot` = 100 WHERE `item` = 33733 AND `entry` IN (570,571); -- Vengeful Gladiator's Pummeler
UPDATE `npc_vendor_template` SET `slot` = 101 WHERE `item` = 33662 AND `entry` IN (570,571); -- Vengeful Gladiator's Bonecracker
UPDATE `npc_vendor_template` SET `slot` = 102 WHERE `item` = 33754 AND `entry` IN (570,571); -- Vengeful Gladiator's Shanker
UPDATE `npc_vendor_template` SET `slot` = 103 WHERE `item` = 33756 AND `entry` IN (570,571); -- Vengeful Gladiator's Shiv
UPDATE `npc_vendor_template` SET `slot` = 104 WHERE `item` = 33801 AND `entry` IN (570,571); -- Vengeful Gladiator's Mutilator
UPDATE `npc_vendor_template` SET `slot` = 105 WHERE `item` = 33006 AND `entry` IN (570,571); -- Vengeful Gladiator's Heavy Crossbow
UPDATE `npc_vendor_template` SET `slot` = 106 WHERE `item` = 34530 AND `entry` IN (570,571); -- Vengeful Gladiator's Rifle
UPDATE `npc_vendor_template` SET `slot` = 107 WHERE `item` = 34529 AND `entry` IN (570,571); -- Vengeful Gladiator's Longbow
UPDATE `npc_vendor_template` SET `slot` = 108 WHERE `item` = 33687 AND `entry` IN (570,571); -- Vengeful Gladiator's Gavel
UPDATE `npc_vendor_template` SET `slot` = 109 WHERE `item` = 33743 AND `entry` IN (570,571); -- Vengeful Gladiator's Salvation
UPDATE `npc_vendor_template` SET `slot` = 110 WHERE `item` = 33763 AND `entry` IN (570,571); -- Vengeful Gladiator's Spellblade
UPDATE `npc_vendor_template` SET `slot` = 111 WHERE `item` = 33766 AND `entry` IN (570,571); -- Vengeful Gladiator's War Staff
UPDATE `npc_vendor_template` SET `slot` = 112 WHERE `item` = 34540 AND `entry` IN (570,571); -- Vengeful Gladiator's Battle Staff
UPDATE `npc_vendor_template` SET `slot` = 113 WHERE `item` = 33764 AND `entry` IN (570,571); -- Vengeful Gladiator's Touch of Defeat
UPDATE `npc_vendor_template` SET `slot` = 114 WHERE `item` = 34066 AND `entry` IN (570,571); -- Vengeful Gladiator's Piercing Touch
UPDATE `npc_vendor_template` SET `slot` = 115 WHERE `item` = 34059 AND `entry` IN (570,571); -- Vengeful Gladiator's Baton of Light
UPDATE `npc_vendor_template` SET `slot` = 116 WHERE `item` = 33765 AND `entry` IN (570,571); -- Vengeful Gladiator's War Edge
UPDATE `npc_vendor_template` SET `slot` = 117 WHERE `item` = 33681 AND `entry` IN (570,571); -- Vengeful Gladiator's Endgame
UPDATE `npc_vendor_template` SET `slot` = 118 WHERE `item` = 33736 AND `entry` IN (570,571); -- Vengeful Gladiator's Reprieve
UPDATE `npc_vendor_template` SET `slot` = 119 WHERE `item` = 34033 AND `entry` IN (570,571); -- Vengeful Gladiator's Grimoire
UPDATE `npc_vendor_template` SET `slot` = 120 WHERE `item` = 33661 AND `entry` IN (570,571); -- Vengeful Gladiator's Barrier
UPDATE `npc_vendor_template` SET `slot` = 121 WHERE `item` = 33735 AND `entry` IN (570,571); -- Vengeful Gladiator's Redoubt
UPDATE `npc_vendor_template` SET `slot` = 122 WHERE `item` = 33755 AND `entry` IN (570,571); -- Vengeful Gladiator's Shield Wall
UPDATE `npc_vendor_template` SET `slot` = 123 WHERE `item` = 33841 AND `entry` IN (570,571); -- Vengeful Gladiator's Idol of Tenacity
UPDATE `npc_vendor_template` SET `slot` = 124 WHERE `item` = 33944 AND `entry` IN (570,571); -- Vengeful Gladiator's Idol of Steadfastness
UPDATE `npc_vendor_template` SET `slot` = 125 WHERE `item` = 33947 AND `entry` IN (570,571); -- Vengeful Gladiator's Idol of Resolve
UPDATE `npc_vendor_template` SET `slot` = 126 WHERE `item` = 33842 AND `entry` IN (570,571); -- Vengeful Gladiator's Libram of Justice
UPDATE `npc_vendor_template` SET `slot` = 127 WHERE `item` = 33938 AND `entry` IN (570,571); -- Vengeful Gladiator's Libram of Fortitude
UPDATE `npc_vendor_template` SET `slot` = 128 WHERE `item` = 33950 AND `entry` IN (570,571); -- Vengeful Gladiator's Libram of Vengeance
UPDATE `npc_vendor_template` SET `slot` = 129 WHERE `item` = 33843 AND `entry` IN (570,571); -- Vengeful Gladiator's Totem of the Third Wind
UPDATE `npc_vendor_template` SET `slot` = 130 WHERE `item` = 33941 AND `entry` IN (570,571); -- Vengeful Gladiator's Totem of Indomitability
UPDATE `npc_vendor_template` SET `slot` = 131 WHERE `item` = 33953 AND `entry` IN (570,571); -- Vengeful Gladiator's Totem of Survival

-- S4 580


UPDATE `npc_vendor_template` SET `slot` = 200 where entry = 580;
UPDATE `npc_vendor_template` SET `slot` = 1 WHERE `item` = 35083 AND `entry` = 580; -- Brutal Gladiator's Satin Gloves
UPDATE `npc_vendor_template` SET `slot` = 2 WHERE `item` = 35086 AND `entry` = 580; -- Brutal Gladiator's Satin Mantle
UPDATE `npc_vendor_template` SET `slot` = 3 WHERE `item` = 35085 AND `entry` = 580; -- Brutal Gladiator's Satin Leggings
UPDATE `npc_vendor_template` SET `slot` = 4 WHERE `item` = 35084 AND `entry` = 580; -- Brutal Gladiator's Satin Hood
UPDATE `npc_vendor_template` SET `slot` = 5 WHERE `item` = 35087 AND `entry` = 580; -- Brutal Gladiator's Satin Robe
UPDATE `npc_vendor_template` SET `slot` = 6 WHERE `item` = 35053 AND `entry` = 580; -- Brutal Gladiator's Mooncloth Gloves
UPDATE `npc_vendor_template` SET `slot` = 7 WHERE `item` = 35056 AND `entry` = 580; -- Brutal Gladiator's Mooncloth Mantle
UPDATE `npc_vendor_template` SET `slot` = 8 WHERE `item` = 35055 AND `entry` = 580; -- Brutal Gladiator's Mooncloth Leggings
UPDATE `npc_vendor_template` SET `slot` = 9 WHERE `item` = 35054 AND `entry` = 580; -- Brutal Gladiator's Mooncloth Hood
UPDATE `npc_vendor_template` SET `slot` = 10 WHERE `item` = 35057 AND `entry` = 580; -- Brutal Gladiator's Mooncloth Robe
UPDATE `npc_vendor_template` SET `slot` = 11 WHERE `item` = 35003 AND `entry` = 580; -- Brutal Gladiator's Dreadweave Gloves
UPDATE `npc_vendor_template` SET `slot` = 12 WHERE `item` = 35006 AND `entry` = 580; -- Brutal Gladiator's Dreadweave Mantle
UPDATE `npc_vendor_template` SET `slot` = 13 WHERE `item` = 35005 AND `entry` = 580; -- Brutal Gladiator's Dreadweave Leggings
UPDATE `npc_vendor_template` SET `slot` = 14 WHERE `item` = 35004 AND `entry` = 580; -- Brutal Gladiator's Dreadweave Hood
UPDATE `npc_vendor_template` SET `slot` = 15 WHERE `item` = 35007 AND `entry` = 580; -- Brutal Gladiator's Dreadweave Robe
UPDATE `npc_vendor_template` SET `slot` = 16 WHERE `item` = 35011 AND `entry` = 580; -- Brutal Gladiator's Felweave Handguards
UPDATE `npc_vendor_template` SET `slot` = 17 WHERE `item` = 35009 AND `entry` = 580; -- Brutal Gladiator's Felweave Amice
UPDATE `npc_vendor_template` SET `slot` = 18 WHERE `item` = 35013 AND `entry` = 580; -- Brutal Gladiator's Felweave Trousers
UPDATE `npc_vendor_template` SET `slot` = 19 WHERE `item` = 35010 AND `entry` = 580; -- Brutal Gladiator's Felweave Cowl
UPDATE `npc_vendor_template` SET `slot` = 20 WHERE `item` = 35012 AND `entry` = 580; -- Brutal Gladiator's Felweave Raiment
UPDATE `npc_vendor_template` SET `slot` = 21 WHERE `item` = 35098 AND `entry` = 580; -- Brutal Gladiator's Silk Handguards
UPDATE `npc_vendor_template` SET `slot` = 22 WHERE `item` = 35096 AND `entry` = 580; -- Brutal Gladiator's Silk Amice
UPDATE `npc_vendor_template` SET `slot` = 23 WHERE `item` = 35100 AND `entry` = 580; -- Brutal Gladiator's Silk Trousers
UPDATE `npc_vendor_template` SET `slot` = 24 WHERE `item` = 35097 AND `entry` = 580; -- Brutal Gladiator's Silk Cowl
UPDATE `npc_vendor_template` SET `slot` = 25 WHERE `item` = 35099 AND `entry` = 580; -- Brutal Gladiator's Silk Raiment
UPDATE `npc_vendor_template` SET `slot` = 26 WHERE `item` = 35032 AND `entry` = 580; -- Brutal Gladiator's Leather Gloves
UPDATE `npc_vendor_template` SET `slot` = 27 WHERE `item` = 35035 AND `entry` = 580; -- Brutal Gladiator's Leather Spaulders
UPDATE `npc_vendor_template` SET `slot` = 28 WHERE `item` = 35034 AND `entry` = 580; -- Brutal Gladiator's Leather Legguards
UPDATE `npc_vendor_template` SET `slot` = 29 WHERE `item` = 35033 AND `entry` = 580; -- Brutal Gladiator's Leather Helm
UPDATE `npc_vendor_template` SET `slot` = 30 WHERE `item` = 35036 AND `entry` = 580; -- Brutal Gladiator's Leather Tunic
UPDATE `npc_vendor_template` SET `slot` = 31 WHERE `item` = 34998 AND `entry` = 580; -- Brutal Gladiator's Dragonhide Gloves
UPDATE `npc_vendor_template` SET `slot` = 32 WHERE `item` = 35001 AND `entry` = 580; -- Brutal Gladiator's Dragonhide Spaulders
UPDATE `npc_vendor_template` SET `slot` = 33 WHERE `item` = 35000 AND `entry` = 580; -- Brutal Gladiator's Dragonhide Legguards
UPDATE `npc_vendor_template` SET `slot` = 34 WHERE `item` = 34999 AND `entry` = 580; -- Brutal Gladiator's Dragonhide Helm
UPDATE `npc_vendor_template` SET `slot` = 35 WHERE `item` = 35002 AND `entry` = 580; -- Brutal Gladiator's Dragonhide Tunic
UPDATE `npc_vendor_template` SET `slot` = 36 WHERE `item` = 35022 AND `entry` = 580; -- Brutal Gladiator's Kodohide Gloves
UPDATE `npc_vendor_template` SET `slot` = 37 WHERE `item` = 35025 AND `entry` = 580; -- Brutal Gladiator's Kodohide Spaulders
UPDATE `npc_vendor_template` SET `slot` = 38 WHERE `item` = 35024 AND `entry` = 580; -- Brutal Gladiator's Kodohide Legguards
UPDATE `npc_vendor_template` SET `slot` = 39 WHERE `item` = 35023 AND `entry` = 580; -- Brutal Gladiator's Kodohide Helm
UPDATE `npc_vendor_template` SET `slot` = 40 WHERE `item` = 35026 AND `entry` = 580; -- Brutal Gladiator's Kodohide Tunic
UPDATE `npc_vendor_template` SET `slot` = 41 WHERE `item` = 35111 AND `entry` = 580; -- Brutal Gladiator's Wyrmhide Gloves
UPDATE `npc_vendor_template` SET `slot` = 42 WHERE `item` = 35114 AND `entry` = 580; -- Brutal Gladiator's Wyrmhide Spaulders
UPDATE `npc_vendor_template` SET `slot` = 43 WHERE `item` = 35113 AND `entry` = 580; -- Brutal Gladiator's Wyrmhide Legguards
UPDATE `npc_vendor_template` SET `slot` = 44 WHERE `item` = 35112 AND `entry` = 580; -- Brutal Gladiator's Wyrmhide Helm
UPDATE `npc_vendor_template` SET `slot` = 45 WHERE `item` = 35115 AND `entry` = 580; -- Brutal Gladiator's Wyrmhide Tunic
UPDATE `npc_vendor_template` SET `slot` = 46 WHERE `item` = 34991 AND `entry` = 580; -- Brutal Gladiator's Chain Gauntlets
UPDATE `npc_vendor_template` SET `slot` = 47 WHERE `item` = 34994 AND `entry` = 580; -- Brutal Gladiator's Chain Spaulders
UPDATE `npc_vendor_template` SET `slot` = 48 WHERE `item` = 34993 AND `entry` = 580; -- Brutal Gladiator's Chain Leggings
UPDATE `npc_vendor_template` SET `slot` = 49 WHERE `item` = 34992 AND `entry` = 580; -- Brutal Gladiator's Chain Helm
UPDATE `npc_vendor_template` SET `slot` = 50 WHERE `item` = 34990 AND `entry` = 580; -- Brutal Gladiator's Chain Armor
UPDATE `npc_vendor_template` SET `slot` = 51 WHERE `item` = 35078 AND `entry` = 580; -- Brutal Gladiator's Ringmail Gauntlets
UPDATE `npc_vendor_template` SET `slot` = 52 WHERE `item` = 35081 AND `entry` = 580; -- Brutal Gladiator's Ringmail Spaulders
UPDATE `npc_vendor_template` SET `slot` = 53 WHERE `item` = 35080 AND `entry` = 580; -- Brutal Gladiator's Ringmail Leggings
UPDATE `npc_vendor_template` SET `slot` = 54 WHERE `item` = 35079 AND `entry` = 580; -- Brutal Gladiator's Ringmail Helm
UPDATE `npc_vendor_template` SET `slot` = 55 WHERE `item` = 35077 AND `entry` = 580; -- Brutal Gladiator's Ringmail Armor
UPDATE `npc_vendor_template` SET `slot` = 56 WHERE `item` = 35043 AND `entry` = 580; -- Brutal Gladiator's Linked Gauntlets
UPDATE `npc_vendor_template` SET `slot` = 57 WHERE `item` = 35046 AND `entry` = 580; -- Brutal Gladiator's Linked Spaulders
UPDATE `npc_vendor_template` SET `slot` = 58 WHERE `item` = 35045 AND `entry` = 580; -- Brutal Gladiator's Linked Leggings
UPDATE `npc_vendor_template` SET `slot` = 59 WHERE `item` = 35044 AND `entry` = 580; -- Brutal Gladiator's Linked Helm
UPDATE `npc_vendor_template` SET `slot` = 60 WHERE `item` = 35042 AND `entry` = 580; -- Brutal Gladiator's Linked Armor
UPDATE `npc_vendor_template` SET `slot` = 61 WHERE `item` = 35049 AND `entry` = 580; -- Brutal Gladiator's Mail Gauntlets
UPDATE `npc_vendor_template` SET `slot` = 62 WHERE `item` = 35052 AND `entry` = 580; -- Brutal Gladiator's Mail Spaulders
UPDATE `npc_vendor_template` SET `slot` = 63 WHERE `item` = 35051 AND `entry` = 580; -- Brutal Gladiator's Mail Leggings
UPDATE `npc_vendor_template` SET `slot` = 64 WHERE `item` = 35050 AND `entry` = 580; -- Brutal Gladiator's Mail Helm
UPDATE `npc_vendor_template` SET `slot` = 65 WHERE `item` = 35048 AND `entry` = 580; -- Brutal Gladiator's Mail Armor
UPDATE `npc_vendor_template` SET `slot` = 66 WHERE `item` = 35067 AND `entry` = 580; -- Brutal Gladiator's Plate Gauntlets
UPDATE `npc_vendor_template` SET `slot` = 67 WHERE `item` = 35070 AND `entry` = 580; -- Brutal Gladiator's Plate Shoulders
UPDATE `npc_vendor_template` SET `slot` = 68 WHERE `item` = 35069 AND `entry` = 580; -- Brutal Gladiator's Plate Legguards
UPDATE `npc_vendor_template` SET `slot` = 69 WHERE `item` = 35068 AND `entry` = 580; -- Brutal Gladiator's Plate Helm
UPDATE `npc_vendor_template` SET `slot` = 70 WHERE `item` = 35066 AND `entry` = 580; -- Brutal Gladiator's Plate Chestpiece
UPDATE `npc_vendor_template` SET `slot` = 71 WHERE `item` = 35060 AND `entry` = 580; -- Brutal Gladiator's Ornamented Gloves
UPDATE `npc_vendor_template` SET `slot` = 72 WHERE `item` = 35063 AND `entry` = 580; -- Brutal Gladiator's Ornamented Spaulders
UPDATE `npc_vendor_template` SET `slot` = 73 WHERE `item` = 35062 AND `entry` = 580; -- Brutal Gladiator's Ornamented Legplates
UPDATE `npc_vendor_template` SET `slot` = 74 WHERE `item` = 35061 AND `entry` = 580; -- Brutal Gladiator's Ornamented Headcover
UPDATE `npc_vendor_template` SET `slot` = 75 WHERE `item` = 35059 AND `entry` = 580; -- Brutal Gladiator's Ornamented Chestguard
UPDATE `npc_vendor_template` SET `slot` = 76 WHERE `item` = 35089 AND `entry` = 580; -- Brutal Gladiator's Scaled Gauntlets
UPDATE `npc_vendor_template` SET `slot` = 77 WHERE `item` = 35092 AND `entry` = 580; -- Brutal Gladiator's Scaled Shoulders
UPDATE `npc_vendor_template` SET `slot` = 78 WHERE `item` = 35091 AND `entry` = 580; -- Brutal Gladiator's Scaled Legguards
UPDATE `npc_vendor_template` SET `slot` = 79 WHERE `item` = 35090 AND `entry` = 580; -- Brutal Gladiator's Scaled Helm
UPDATE `npc_vendor_template` SET `slot` = 80 WHERE `item` = 35088 AND `entry` = 580; -- Brutal Gladiator's Scaled Chestpiece
UPDATE `npc_vendor_template` SET `slot` = 81 WHERE `item` = 35028 AND `entry` = 580; -- Brutal Gladiator's Lamellar Gauntlets
UPDATE `npc_vendor_template` SET `slot` = 82 WHERE `item` = 35031 AND `entry` = 580; -- Brutal Gladiator's Lamellar Shoulders
UPDATE `npc_vendor_template` SET `slot` = 83 WHERE `item` = 35030 AND `entry` = 580; -- Brutal Gladiator's Lamellar Legguards
UPDATE `npc_vendor_template` SET `slot` = 84 WHERE `item` = 35029 AND `entry` = 580; -- Brutal Gladiator's Lamellar Helm
UPDATE `npc_vendor_template` SET `slot` = 85 WHERE `item` = 35027 AND `entry` = 580; -- Brutal Gladiator's Lamellar Chestpiece
UPDATE `npc_vendor_template` SET `slot` = 86 WHERE `item` = 35110 AND `entry` = 580; -- Brutal Gladiator's Waraxe
UPDATE `npc_vendor_template` SET `slot` = 87 WHERE `item` = 36737 AND `entry` = 580; -- Brutal Gladiator's Hatchet
UPDATE `npc_vendor_template` SET `slot` = 88 WHERE `item` = 35015 AND `entry` = 580; -- Brutal Gladiator's Greatsword
UPDATE `npc_vendor_template` SET `slot` = 89 WHERE `item` = 34989 AND `entry` = 580; -- Brutal Gladiator's Bonegrinder
UPDATE `npc_vendor_template` SET `slot` = 90 WHERE `item` = 34997 AND `entry` = 580; -- Brutal Gladiator's Decapitator
UPDATE `npc_vendor_template` SET `slot` = 91 WHERE `item` = 35064 AND `entry` = 580; -- Brutal Gladiator's Painsaw
UPDATE `npc_vendor_template` SET `slot` = 92 WHERE `item` = 35103 AND `entry` = 580; -- Brutal Gladiator's Staff
UPDATE `npc_vendor_template` SET `slot` = 93 WHERE `item` = 35101 AND `entry` = 580; -- Brutal Gladiator's Slicer
UPDATE `npc_vendor_template` SET `slot` = 94 WHERE `item` = 35072 AND `entry` = 580; -- Brutal Gladiator's Quickblade
UPDATE `npc_vendor_template` SET `slot` = 95 WHERE `item` = 35076 AND `entry` = 580; -- Brutal Gladiator's Right Ripper
UPDATE `npc_vendor_template` SET `slot` = 96 WHERE `item` = 35038 AND `entry` = 580; -- Brutal Gladiator's Left Ripper
UPDATE `npc_vendor_template` SET `slot` = 97 WHERE `item` = 35037 AND `entry` = 580; -- Brutal Gladiator's Left Render
UPDATE `npc_vendor_template` SET `slot` = 98 WHERE `item` = 34996 AND `entry` = 580; -- Brutal Gladiator's Cleaver
UPDATE `npc_vendor_template` SET `slot` = 99 WHERE `item` = 35017 AND `entry` = 580; -- Brutal Gladiator's Hacker
UPDATE `npc_vendor_template` SET `slot` = 100 WHERE `item` = 34995 AND `entry` = 580; -- Brutal Gladiator's Chopper
UPDATE `npc_vendor_template` SET `slot` = 101 WHERE `item` = 35071 AND `entry` = 580; -- Brutal Gladiator's Pummeler
UPDATE `npc_vendor_template` SET `slot` = 102 WHERE `item` = 34988 AND `entry` = 580; -- Brutal Gladiator's Bonecracker
UPDATE `npc_vendor_template` SET `slot` = 103 WHERE `item` = 35093 AND `entry` = 580; -- Brutal Gladiator's Shanker
UPDATE `npc_vendor_template` SET `slot` = 104 WHERE `item` = 35095 AND `entry` = 580; -- Brutal Gladiator's Shiv
UPDATE `npc_vendor_template` SET `slot` = 105 WHERE `item` = 35058 AND `entry` = 580; -- Brutal Gladiator's Mutilator
UPDATE `npc_vendor_template` SET `slot` = 106 WHERE `item` = 35018 AND `entry` = 580; -- Brutal Gladiator's Heavy Crossbow
UPDATE `npc_vendor_template` SET `slot` = 107 WHERE `item` = 35075 AND `entry` = 580; -- Brutal Gladiator's Rifle
UPDATE `npc_vendor_template` SET `slot` = 108 WHERE `item` = 35047 AND `entry` = 580; -- Brutal Gladiator's Longbow
UPDATE `npc_vendor_template` SET `slot` = 109 WHERE `item` = 35014 AND `entry` = 580; -- Brutal Gladiator's Gavel
UPDATE `npc_vendor_template` SET `slot` = 110 WHERE `item` = 35082 AND `entry` = 580; -- Brutal Gladiator's Salvation
UPDATE `npc_vendor_template` SET `slot` = 111 WHERE `item` = 35102 AND `entry` = 580; -- Brutal Gladiator's Spellblade
UPDATE `npc_vendor_template` SET `slot` = 112 WHERE `item` = 35109 AND `entry` = 580; -- Brutal Gladiator's War Staff
UPDATE `npc_vendor_template` SET `slot` = 113 WHERE `item` = 34987 AND `entry` = 580; -- Brutal Gladiator's Battle Staff
UPDATE `npc_vendor_template` SET `slot` = 114 WHERE `item` = 35107 AND `entry` = 580; -- Brutal Gladiator's Touch of Defeat
UPDATE `npc_vendor_template` SET `slot` = 115 WHERE `item` = 35065 AND `entry` = 580; -- Brutal Gladiator's Piercing Touch
UPDATE `npc_vendor_template` SET `slot` = 116 WHERE `item` = 34985 AND `entry` = 580; -- Brutal Gladiator's Baton of Light
UPDATE `npc_vendor_template` SET `slot` = 117 WHERE `item` = 35108 AND `entry` = 580; -- Brutal Gladiator's War Edge
UPDATE `npc_vendor_template` SET `slot` = 118 WHERE `item` = 35008 AND `entry` = 580; -- Brutal Gladiator's Endgame
UPDATE `npc_vendor_template` SET `slot` = 119 WHERE `item` = 35016 AND `entry` = 580; -- Brutal Gladiator's Grimoire
UPDATE `npc_vendor_template` SET `slot` = 120 WHERE `item` = 35074 AND `entry` = 580; -- Brutal Gladiator's Reprieve
UPDATE `npc_vendor_template` SET `slot` = 121 WHERE `item` = 34986 AND `entry` = 580; -- Brutal Gladiator's Barrier
UPDATE `npc_vendor_template` SET `slot` = 122 WHERE `item` = 35073 AND `entry` = 580; -- Brutal Gladiator's Redoubt
UPDATE `npc_vendor_template` SET `slot` = 123 WHERE `item` = 35094 AND `entry` = 580; -- Brutal Gladiator's Shield Wall
UPDATE `npc_vendor_template` SET `slot` = 124 WHERE `item` = 35021 AND `entry` = 580; -- Brutal Gladiator's Idol of Tenacity
UPDATE `npc_vendor_template` SET `slot` = 125 WHERE `item` = 35020 AND `entry` = 580; -- Brutal Gladiator's Idol of Steadfastness
UPDATE `npc_vendor_template` SET `slot` = 126 WHERE `item` = 35019 AND `entry` = 580; -- Brutal Gladiator's Idol of Resolve
UPDATE `npc_vendor_template` SET `slot` = 127 WHERE `item` = 35039 AND `entry` = 580; -- Brutal Gladiator's Libram of Fortitude
UPDATE `npc_vendor_template` SET `slot` = 128 WHERE `item` = 35040 AND `entry` = 580; -- Brutal Gladiator's Libram of Justice
UPDATE `npc_vendor_template` SET `slot` = 129 WHERE `item` = 35041 AND `entry` = 580; -- Brutal Gladiator's Libram of Vengeance
UPDATE `npc_vendor_template` SET `slot` = 130 WHERE `item` = 35104 AND `entry` = 580; -- Brutal Gladiator's Totem of Indomitability
UPDATE `npc_vendor_template` SET `slot` = 131 WHERE `item` = 35105 AND `entry` = 580; -- Brutal Gladiator's Totem of Survival
UPDATE `npc_vendor_template` SET `slot` = 132 WHERE `item` = 35106 AND `entry` = 580; -- Brutal Gladiator's Totem of the Third Wind
-- Put them at the end instead of after the armor, makes no sense
UPDATE `npc_vendor_template` SET `slot` = 133 WHERE `item` = 38545 AND `entry` = 580; -- Bold Ornate Ruby
UPDATE `npc_vendor_template` SET `slot` = 134 WHERE `item` = 38550 AND `entry` = 580; -- Smooth Ornate Dawnstone
UPDATE `npc_vendor_template` SET `slot` = 135 WHERE `item` = 38547 AND `entry` = 580; -- Inscribed Ornate Topaz
UPDATE `npc_vendor_template` SET `slot` = 136 WHERE `item` = 38549 AND `entry` = 580; -- Runed Ornate Ruby
UPDATE `npc_vendor_template` SET `slot` = 137 WHERE `item` = 38546 AND `entry` = 580; -- Gleaming Ornate Dawnstone
UPDATE `npc_vendor_template` SET `slot` = 138 WHERE `item` = 38548 AND `entry` = 580; -- Potent Ornate Topaz

-- Redo 12781 as he's a mix of _template and entry vendor
-- 509 - Used by unused Officer Areyn 12805
UPDATE `creature_template` SET `VendorTemplateId` = 0 WHERE `entry` = 12781; -- Cant share same template as Officer Areyn 12805
DELETE FROM `npc_vendor` WHERE `entry` = 12781;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `slot`, `ExtendedCost`, `condition_id`, `comments`) VALUES
(12781, 15198, 0, 0, 14, 1006, 0, 'Knight\'s Colors'),
(12781, 18606, 0, 0, 27, 386, 0, 'Alliance Battle Standard'),
(12781, 18839, 0, 0, 1, 460, 0, 'Combat Healing Potion'),
(12781, 18841, 0, 0, 2, 460, 0, 'Combat Mana Potion'),
(12781, 25829, 0, 0, 38, 125, 0, 'Talisman of the Alliance'),
(12781, 28118, 0, 0, 46, 95, 0, 'Runed Ornate Ruby'),
(12781, 28119, 0, 0, 47, 95, 0, 'Smooth Ornate Dawnstone'),
(12781, 28120, 0, 0, 48, 95, 0, 'Gleaming Ornate Dawnstone'),
(12781, 28123, 0, 0, 50, 99, 0, 'Potent Ornate Topaz'),
(12781, 28244, 0, 0, 41, 127, 504, 'Pendant of Triumph'), -- not the best solution as later we need condition like "sold in S3 and S4" but for these it works
(12781, 28245, 0, 0, 42, 127, 504, 'Pendant of Dominance'),
(12781, 28246, 0, 0, 43, 129, 504, 'Band of Triumph'),
(12781, 28247, 0, 0, 44, 129, 504, 'Band of Dominance'),
(12781, 28362, 0, 0, 45, 95, 0, 'Bold Ornate Ruby'),
(12781, 28363, 0, 0, 49, 99, 0, 'Inscribed Ornate Topaz'),
-- (12781, 31838, 0, 0, XXX, 1648, 0, 'Major Combat Healing Potion'), -- removed
-- (12781, 31839, 0, 0, XXX, 1649, 0, 'Major Combat Healing Potion'),
-- (12781, 31840, 0, 0, XXX, 1648, 0, 'Major Combat Mana Potion'),
-- (12781, 31841, 0, 0, XXX, 1649, 0, 'Major Combat Mana Potion'),
-- (12781, 31852, 0, 0, XXX, 1652, 0, 'Major Combat Healing Potion'),
-- (12781, 31854, 0, 0, XXX, 1652, 0, 'Major Combat Mana Potion'),
(12781, 31853, 0, 0, 3, 1565, 0, 'Major Combat Healing Potion'),
(12781, 31855, 0, 0, 4, 1565, 0, 'Major Combat Mana Potion'),
(12781, 32453, 0, 0, 12, 1564, 0, 'Star\'s Tears'),
(12781, 32455, 0, 0, 11, 460, 0, 'Star\'s Lament'),
(12781, 15196, 0, 0, 13, 1007, 0, 'Private\'s Tabard'),
(12781, 18442, 0, 0, 15, 838, 0, 'Master Sergeant\'s Insignia'),
(12781, 18443, 0, 0, 17, 491, 0, 'Master Sergeant\'s Insignia'),
(12781, 18444, 0, 0, 16, 930, 0, 'Master Sergeant\'s Insignia'),
(12781, 18854, 0, 0, 18, 634, 0, 'Insignia of the Alliance'),
(12781, 18856, 0, 0, 19, 634, 0, 'Insignia of the Alliance'),
(12781, 18857, 0, 0, 20, 634, 0, 'Insignia of the Alliance'),
(12781, 18858, 0, 0, 21, 634, 0, 'Insignia of the Alliance'),
(12781, 18859, 0, 0, 22, 634, 0, 'Insignia of the Alliance'),
(12781, 18862, 0, 0, 23, 634, 0, 'Insignia of the Alliance'),
(12781, 18863, 0, 0, 24, 634, 0, 'Insignia of the Alliance'),
(12781, 18864, 0, 0, 25, 634, 0, 'Insignia of the Alliance'),
(12781, 29593, 0, 0, 26, 634, 0, 'Insignia of the Alliance'),
(12781, 28234, 0, 0, 28, 2404, 0, 'Medallion of the Alliance'),
(12781, 28235, 0, 0, 29, 2404, 0, 'Medallion of the Alliance'),
(12781, 28236, 0, 0, 30, 2404, 0, 'Medallion of the Alliance'),
(12781, 28237, 0, 0, 31, 2404, 0, 'Medallion of the Alliance'),
(12781, 28238, 0, 0, 32, 2404, 0, 'Medallion of the Alliance'),
(12781, 30348, 0, 0, 33, 2404, 0, 'Medallion of the Alliance'),
(12781, 30349, 0, 0, 34, 2404, 0, 'Medallion of the Alliance'),
(12781, 30350, 0, 0, 35, 2404, 0, 'Medallion of the Alliance'),
(12781, 30351, 0, 0, 36, 2404, 0, 'Medallion of the Alliance'),
(12781, 37864, 0, 0, 37, 2403, 0, 'Medallion of the Alliance'),
(12781, 28377, 0, 0, 39, 165, 0, 'Sergeant\'s Heavy Cape'),
(12781, 28378, 0, 0, 40, 165, 0, 'Sergeant\'s Heavy Cloak');

-- Lieutenant Karter
UPDATE `npc_vendor` SET `slot` = 1 WHERE `item` = 29465 AND `entry` = 12783;
UPDATE `npc_vendor` SET `slot` = 2 WHERE `item` = 29467 AND `entry` = 12783;
UPDATE `npc_vendor` SET `slot` = 3 WHERE `item` = 29468 AND `entry` = 12783;
UPDATE `npc_vendor` SET `slot` = 4 WHERE `item` = 29471 AND `entry` = 12783;
UPDATE `npc_vendor` SET `slot` = 5 WHERE `item` = 35906 AND `entry` = 12783;

DELETE FROM `npc_vendor_template` WHERE `entry` = 540 AND `item` IN (16342,18440,18441,18445,18447,18448,18449,18452,18453,18454,18455,18456,18457);
INSERT INTO `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `slot`, `ExtendedCost`, `condition_id`, `comments`) VALUES
(540, 16342, 0, 0, 3, 774, 0, 'Sergeant\'s Cape'),
(540, 18440, 0, 0, 1, 1050, 0, 'Sergeant\'s Cape'),
(540, 18441, 0, 0, 2, 986, 0, 'Sergeant\'s Cape'),
(540, 18445, 0, 0, 13, 492, 0, 'Sergeant Major\'s Plate Wristguards'),
(540, 18447, 0, 0, 12, 931, 0, 'Sergeant Major\'s Plate Wristguards'),
(540, 18448, 0, 0, 11, 492, 0, 'Sergeant Major\'s Chain Armguards'),
(540, 18449, 0, 0, 10, 931, 0, 'Sergeant Major\'s Chain Armguards'),
(540, 18452, 0, 0, 7, 492, 0, 'Sergeant Major\'s Leather Armsplints'),
(540, 18453, 0, 0, 6, 931, 0, 'Sergeant Major\'s Leather Armsplints'),
(540, 18454, 0, 0, 9, 492, 0, 'Sergeant Major\'s Dragonhide Armsplints'),
(540, 18455, 0, 0, 8, 931, 0, 'Sergeant Major\'s Dragonhide Armsplints'),
(540, 18456, 0, 0, 5, 492, 0, 'Sergeant Major\'s Silk Cuffs'),
(540, 18457, 0, 0, 4, 931, 0, 'Sergeant Major\'s Silk Cuffs');

UPDATE `npc_vendor_template` SET `slot` = 14 WHERE `item` = 23289 AND `entry` = 540; -- Knight-Lieutenant's Satin Walkers
UPDATE `npc_vendor_template` SET `slot` = 15 WHERE `item` = 23288 AND `entry` = 540; -- Knight-Lieutenant's Satin Handwraps
UPDATE `npc_vendor_template` SET `slot` = 16 WHERE `item` = 23302 AND `entry` = 540; -- Knight-Captain's Satin Legguards
UPDATE `npc_vendor_template` SET `slot` = 17 WHERE `item` = 23303 AND `entry` = 540; -- Knight-Captain's Satin Tunic
UPDATE `npc_vendor_template` SET `slot` = 18 WHERE `item` = 23316 AND `entry` = 540; -- Lieutenant Commander's Satin Hood
UPDATE `npc_vendor_template` SET `slot` = 19 WHERE `item` = 23317 AND `entry` = 540; -- Lieutenant Commander's Satin Mantle
UPDATE `npc_vendor_template` SET `slot` = 20 WHERE `item` = 17607 AND `entry` = 540; -- Marshal's Satin Sandals
UPDATE `npc_vendor_template` SET `slot` = 21 WHERE `item` = 17608 AND `entry` = 540; -- Marshal's Satin Gloves
UPDATE `npc_vendor_template` SET `slot` = 22 WHERE `item` = 17603 AND `entry` = 540; -- Marshal's Satin Pants
UPDATE `npc_vendor_template` SET `slot` = 23 WHERE `item` = 17605 AND `entry` = 540; -- Field Marshal's Satin Vestments
UPDATE `npc_vendor_template` SET `slot` = 24 WHERE `item` = 17602 AND `entry` = 540; -- Field Marshal's Headdress
UPDATE `npc_vendor_template` SET `slot` = 25 WHERE `item` = 17604 AND `entry` = 540; -- Field Marshal's Satin Mantle

UPDATE `npc_vendor_template` SET `slot` = 26 WHERE `item` = 23291 AND `entry` = 540; -- Knight-Lieutenant's Silk Walkers
UPDATE `npc_vendor_template` SET `slot` = 27 WHERE `item` = 23290 AND `entry` = 540; -- Knight-Lieutenant's Silk Handwraps
UPDATE `npc_vendor_template` SET `slot` = 28 WHERE `item` = 23305 AND `entry` = 540; -- Knight-Captain's Silk Tunic
UPDATE `npc_vendor_template` SET `slot` = 29 WHERE `item` = 23304 AND `entry` = 540; -- Knight-Captain's Silk Legguards
UPDATE `npc_vendor_template` SET `slot` = 30 WHERE `item` = 23318 AND `entry` = 540; -- Lieutenant Commander's Silk Cowl
UPDATE `npc_vendor_template` SET `slot` = 31 WHERE `item` = 23319 AND `entry` = 540; -- Lieutenant Commander's Silk Mantle
UPDATE `npc_vendor_template` SET `slot` = 32 WHERE `item` = 16437 AND `entry` = 540; -- Marshal's Silk Footwraps
UPDATE `npc_vendor_template` SET `slot` = 33 WHERE `item` = 16440 AND `entry` = 540; -- Marshal's Silk Gloves
UPDATE `npc_vendor_template` SET `slot` = 34 WHERE `item` = 16442 AND `entry` = 540; -- Marshal's Silk Leggings
UPDATE `npc_vendor_template` SET `slot` = 35 WHERE `item` = 16443 AND `entry` = 540; -- Field Marshal's Silk Vestments
UPDATE `npc_vendor_template` SET `slot` = 36 WHERE `item` = 16441 AND `entry` = 540; -- Field Marshal's Coronet
UPDATE `npc_vendor_template` SET `slot` = 37 WHERE `item` = 16444 AND `entry` = 540; -- Field Marshal's Silk Spaulders

UPDATE `npc_vendor_template` SET `slot` = 38 WHERE `item` = 23283 AND `entry` = 540; -- Knight-Lieutenant's Dreadweave Walkers
UPDATE `npc_vendor_template` SET `slot` = 39 WHERE `item` = 23282 AND `entry` = 540; -- Knight-Lieutenant's Dreadweave Handwraps
UPDATE `npc_vendor_template` SET `slot` = 40 WHERE `item` = 23297 AND `entry` = 540; -- Knight-Captain's Dreadweave Tunic
UPDATE `npc_vendor_template` SET `slot` = 41 WHERE `item` = 23296 AND `entry` = 540; -- Knight-Captain's Dreadweave Legguards
UPDATE `npc_vendor_template` SET `slot` = 42 WHERE `item` = 23310 AND `entry` = 540; -- Lieutenant Commander's Dreadweave Cowl
UPDATE `npc_vendor_template` SET `slot` = 43 WHERE `item` = 23311 AND `entry` = 540; -- Lieutenant Commander's Dreadweave Spaulders
UPDATE `npc_vendor_template` SET `slot` = 44 WHERE `item` = 17583 AND `entry` = 540; -- Marshal's Dreadweave Boots
UPDATE `npc_vendor_template` SET `slot` = 45 WHERE `item` = 17584 AND `entry` = 540; -- Marshal's Dreadweave Gloves
UPDATE `npc_vendor_template` SET `slot` = 46 WHERE `item` = 17579 AND `entry` = 540; -- Marshal's Dreadweave Leggings
UPDATE `npc_vendor_template` SET `slot` = 47 WHERE `item` = 17581 AND `entry` = 540; -- Field Marshal's Dreadweave Robe
UPDATE `npc_vendor_template` SET `slot` = 48 WHERE `item` = 17578 AND `entry` = 540; -- Field Marshal's Coronal
UPDATE `npc_vendor_template` SET `slot` = 49 WHERE `item` = 17580 AND `entry` = 540; -- Field Marshal's Dreadweave Shoulders

UPDATE `npc_vendor_template` SET `slot` = 50 WHERE `item` = 23285 AND `entry` = 540; -- Knight-Lieutenant's Leather Walkers
UPDATE `npc_vendor_template` SET `slot` = 51 WHERE `item` = 23284 AND `entry` = 540; -- Knight-Lieutenant's Leather Grips
UPDATE `npc_vendor_template` SET `slot` = 52 WHERE `item` = 23298 AND `entry` = 540; -- Knight-Captain's Leather Chestpiece
UPDATE `npc_vendor_template` SET `slot` = 53 WHERE `item` = 23299 AND `entry` = 540; -- Knight-Captain's Leather Legguards
UPDATE `npc_vendor_template` SET `slot` = 54 WHERE `item` = 23312 AND `entry` = 540; -- Lieutenant Commander's Leather Helm
UPDATE `npc_vendor_template` SET `slot` = 55 WHERE `item` = 23313 AND `entry` = 540; -- Lieutenant Commander's Leather Shoulders
UPDATE `npc_vendor_template` SET `slot` = 56 WHERE `item` = 16446 AND `entry` = 540; -- Marshal's Leather Footguards
UPDATE `npc_vendor_template` SET `slot` = 57 WHERE `item` = 16454 AND `entry` = 540; -- Marshal's Leather Handgrips
UPDATE `npc_vendor_template` SET `slot` = 58 WHERE `item` = 16456 AND `entry` = 540; -- Marshal's Leather Leggings
UPDATE `npc_vendor_template` SET `slot` = 59 WHERE `item` = 16453 AND `entry` = 540; -- Field Marshal's Leather Chestpiece
UPDATE `npc_vendor_template` SET `slot` = 60 WHERE `item` = 16455 AND `entry` = 540; -- Field Marshal's Leather Mask
UPDATE `npc_vendor_template` SET `slot` = 61 WHERE `item` = 16457 AND `entry` = 540; -- Field Marshal's Leather Epaulets

UPDATE `npc_vendor_template` SET `slot` = 62 WHERE `item` = 23281 AND `entry` = 540; -- Knight-Lieutenant's Dragonhide Treads
UPDATE `npc_vendor_template` SET `slot` = 63 WHERE `item` = 23280 AND `entry` = 540; -- Knight-Lieutenant's Dragonhide Grips
UPDATE `npc_vendor_template` SET `slot` = 64 WHERE `item` = 23294 AND `entry` = 540; -- Knight-Captain's Dragonhide Chestpiece
UPDATE `npc_vendor_template` SET `slot` = 65 WHERE `item` = 23295 AND `entry` = 540; -- Knight-Captain's Dragonhide Leggings
UPDATE `npc_vendor_template` SET `slot` = 66 WHERE `item` = 23308 AND `entry` = 540; -- Lieutenant Commander's Dragonhide Headguard
UPDATE `npc_vendor_template` SET `slot` = 67 WHERE `item` = 23309 AND `entry` = 540; -- Lieutenant Commander's Dragonhide Shoulders
UPDATE `npc_vendor_template` SET `slot` = 68 WHERE `item` = 16459 AND `entry` = 540; -- Marshal's Dragonhide Boots
UPDATE `npc_vendor_template` SET `slot` = 69 WHERE `item` = 16448 AND `entry` = 540; -- Marshal's Dragonhide Gauntlets
UPDATE `npc_vendor_template` SET `slot` = 70 WHERE `item` = 16450 AND `entry` = 540; -- Marshal's Dragonhide Legguards
UPDATE `npc_vendor_template` SET `slot` = 71 WHERE `item` = 16452 AND `entry` = 540; -- Field Marshal's Dragonhide Breastplate
UPDATE `npc_vendor_template` SET `slot` = 72 WHERE `item` = 16451 AND `entry` = 540; -- Field Marshal's Dragonhide Helmet
UPDATE `npc_vendor_template` SET `slot` = 73 WHERE `item` = 16449 AND `entry` = 540; -- Field Marshal's Dragonhide Spaulders

UPDATE `npc_vendor_template` SET `slot` = 74 WHERE `item` = 23278 AND `entry` = 540; -- Knight-Lieutenant's Chain Greaves
UPDATE `npc_vendor_template` SET `slot` = 75 WHERE `item` = 23279 AND `entry` = 540; -- Knight-Lieutenant's Chain Vices
UPDATE `npc_vendor_template` SET `slot` = 76 WHERE `item` = 23292 AND `entry` = 540; -- Knight-Captain's Chain Hauberk
UPDATE `npc_vendor_template` SET `slot` = 77 WHERE `item` = 23293 AND `entry` = 540; -- Knight-Captain's Chain Legguards
UPDATE `npc_vendor_template` SET `slot` = 78 WHERE `item` = 23306 AND `entry` = 540; -- Lieutenant Commander's Chain Helm
UPDATE `npc_vendor_template` SET `slot` = 79 WHERE `item` = 23307 AND `entry` = 540; -- Lieutenant Commander's Chain Shoulders
UPDATE `npc_vendor_template` SET `slot` = 80 WHERE `item` = 16462 AND `entry` = 540; -- Marshal's Chain Boots
UPDATE `npc_vendor_template` SET `slot` = 81 WHERE `item` = 16463 AND `entry` = 540; -- Marshal's Chain Grips
UPDATE `npc_vendor_template` SET `slot` = 82 WHERE `item` = 16467 AND `entry` = 540; -- Marshal's Chain Legguards
UPDATE `npc_vendor_template` SET `slot` = 83 WHERE `item` = 16466 AND `entry` = 540; -- Field Marshal's Chain Breastplate
UPDATE `npc_vendor_template` SET `slot` = 84 WHERE `item` = 16465 AND `entry` = 540; -- Field Marshal's Chain Helm
UPDATE `npc_vendor_template` SET `slot` = 85 WHERE `item` = 16468 AND `entry` = 540; -- Field Marshal's Chain Spaulders

UPDATE `npc_vendor_template` SET `slot` = 86 WHERE `item` = 29594 AND `entry` = 540; -- Knight-Lieutenant's Mail Greaves
UPDATE `npc_vendor_template` SET `slot` = 87 WHERE `item` = 29595 AND `entry` = 540; -- Knight-Lieutenant's Mail Vices
UPDATE `npc_vendor_template` SET `slot` = 88 WHERE `item` = 29596 AND `entry` = 540; -- Knight-Captain's Mail Hauberk
UPDATE `npc_vendor_template` SET `slot` = 89 WHERE `item` = 29597 AND `entry` = 540; -- Knight-Captain's Mail Legguards
UPDATE `npc_vendor_template` SET `slot` = 90 WHERE `item` = 29598 AND `entry` = 540; -- Lieutenant Commander's Mail Headguard
UPDATE `npc_vendor_template` SET `slot` = 91 WHERE `item` = 29599 AND `entry` = 540; -- Lieutenant Commander's Mail Pauldrons
UPDATE `npc_vendor_template` SET `slot` = 92 WHERE `item` = 29606 AND `entry` = 540; -- Marshal's Mail Boots
UPDATE `npc_vendor_template` SET `slot` = 93 WHERE `item` = 29607 AND `entry` = 540; -- Marshal's Mail Gauntlets
UPDATE `npc_vendor_template` SET `slot` = 94 WHERE `item` = 29608 AND `entry` = 540; -- Marshal's Mail Leggings
UPDATE `npc_vendor_template` SET `slot` = 95 WHERE `item` = 29609 AND `entry` = 540; -- Field Marshal's Mail Armor
UPDATE `npc_vendor_template` SET `slot` = 96 WHERE `item` = 29610 AND `entry` = 540; -- Field Marshal's Mail Helm
UPDATE `npc_vendor_template` SET `slot` = 97 WHERE `item` = 29611 AND `entry` = 540; -- Field Marshal's Mail Spaulders

UPDATE `npc_vendor_template` SET `slot` = 98 WHERE `item` = 23287 AND `entry` = 540; -- Knight-Lieutenant's Plate Greaves
UPDATE `npc_vendor_template` SET `slot` = 99 WHERE `item` = 23286 AND `entry` = 540; -- Knight-Lieutenant's Plate Gauntlets
UPDATE `npc_vendor_template` SET `slot` = 100 WHERE `item` = 23300 AND `entry` = 540; -- Knight-Captain's Plate Hauberk
UPDATE `npc_vendor_template` SET `slot` = 101 WHERE `item` = 23301 AND `entry` = 540; -- Knight-Captain's Plate Leggings
UPDATE `npc_vendor_template` SET `slot` = 102 WHERE `item` = 23314 AND `entry` = 540; -- Lieutenant Commander's Plate Helmet
UPDATE `npc_vendor_template` SET `slot` = 103 WHERE `item` = 23315 AND `entry` = 540; -- Lieutenant Commander's Plate Shoulders
UPDATE `npc_vendor_template` SET `slot` = 104 WHERE `item` = 16483 AND `entry` = 540; -- Marshal's Plate Boots
UPDATE `npc_vendor_template` SET `slot` = 105 WHERE `item` = 16484 AND `entry` = 540; -- Marshal's Plate Gauntlets
UPDATE `npc_vendor_template` SET `slot` = 106 WHERE `item` = 16479 AND `entry` = 540; -- Marshal's Plate Legguards
UPDATE `npc_vendor_template` SET `slot` = 107 WHERE `item` = 16477 AND `entry` = 540; -- Field Marshal's Plate Armor
UPDATE `npc_vendor_template` SET `slot` = 108 WHERE `item` = 16478 AND `entry` = 540; -- Field Marshal's Plate Helm
UPDATE `npc_vendor_template` SET `slot` = 109 WHERE `item` = 16480 AND `entry` = 540; -- Field Marshal's Plate Shoulderguards

UPDATE `npc_vendor_template` SET `slot` = 110 WHERE `item` = 23275 AND `entry` = 540; -- Knight-Lieutenant's Lamellar Sabatons
UPDATE `npc_vendor_template` SET `slot` = 111 WHERE `item` = 23274 AND `entry` = 540; -- Knight-Lieutenant's Lamellar Gauntlets
UPDATE `npc_vendor_template` SET `slot` = 112 WHERE `item` = 23272 AND `entry` = 540; -- Knight-Captain's Lamellar Breastplate
UPDATE `npc_vendor_template` SET `slot` = 113 WHERE `item` = 23273 AND `entry` = 540; -- Knight-Captain's Lamellar Leggings
UPDATE `npc_vendor_template` SET `slot` = 114 WHERE `item` = 23276 AND `entry` = 540; -- Lieutenant Commander's Lamellar Headguard
UPDATE `npc_vendor_template` SET `slot` = 115 WHERE `item` = 23277 AND `entry` = 540; -- Lieutenant Commander's Lamellar Shoulders
UPDATE `npc_vendor_template` SET `slot` = 116 WHERE `item` = 16472 AND `entry` = 540; -- Marshal's Lamellar Boots
UPDATE `npc_vendor_template` SET `slot` = 117 WHERE `item` = 16471 AND `entry` = 540; -- Marshal's Lamellar Gloves
UPDATE `npc_vendor_template` SET `slot` = 118 WHERE `item` = 16475 AND `entry` = 540; -- Marshal's Lamellar Legplates
UPDATE `npc_vendor_template` SET `slot` = 119 WHERE `item` = 16473 AND `entry` = 540; -- Field Marshal's Lamellar Chestplate
UPDATE `npc_vendor_template` SET `slot` = 120 WHERE `item` = 16474 AND `entry` = 540; -- Field Marshal's Lamellar Faceguard
UPDATE `npc_vendor_template` SET `slot` = 121 WHERE `item` = 16476 AND `entry` = 540; -- Field Marshal's Lamellar Pauldrons

-- Lieutenant Jackspring 12784
UPDATE `npc_vendor_template` SET `slot` = 1 WHERE `item` = 18876 AND `entry` = 541; -- Grand Marshal's Claymore
UPDATE `npc_vendor_template` SET `slot` = 2 WHERE `item` = 18830 AND `entry` = 541; -- Grand Marshal's Sunderer
UPDATE `npc_vendor_template` SET `slot` = 3 WHERE `item` = 18867 AND `entry` = 541; -- Grand Marshal's Battle Hammer
UPDATE `npc_vendor_template` SET `slot` = 4 WHERE `item` = 23455 AND `entry` = 541; -- Grand Marshal's Demolisher
UPDATE `npc_vendor_template` SET `slot` = 5 WHERE `item` = 18869 AND `entry` = 541; -- Grand Marshal's Glaive
UPDATE `npc_vendor_template` SET `slot` = 6 WHERE `item` = 18827 AND `entry` = 541; -- Grand Marshal's Handaxe
UPDATE `npc_vendor_template` SET `slot` = 7 WHERE `item` = 12584 AND `entry` = 541; -- Grand Marshal's Longsword
UPDATE `npc_vendor_template` SET `slot` = 8 WHERE `item` = 23456 AND `entry` = 541; -- Grand Marshal's Swiftblade
UPDATE `npc_vendor_template` SET `slot` = 9 WHERE `item` = 18865 AND `entry` = 541; -- Grand Marshal's Punisher
UPDATE `npc_vendor_template` SET `slot` = 10 WHERE `item` = 23454 AND `entry` = 541; -- Grand Marshal's Warhammer
UPDATE `npc_vendor_template` SET `slot` = 11 WHERE `item` = 18843 AND `entry` = 541; -- Grand Marshal's Right Hand Blade
UPDATE `npc_vendor_template` SET `slot` = 12 WHERE `item` = 18847 AND `entry` = 541; -- Grand Marshal's Left Hand Blade
UPDATE `npc_vendor_template` SET `slot` = 13 WHERE `item` = 18838 AND `entry` = 541; -- Grand Marshal's Dirk
UPDATE `npc_vendor_template` SET `slot` = 14 WHERE `item` = 18825 AND `entry` = 541; -- Grand Marshal's Aegis
UPDATE `npc_vendor_template` SET `slot` = 15 WHERE `item` = 18833 AND `entry` = 541; -- Grand Marshal's Bullseye
UPDATE `npc_vendor_template` SET `slot` = 16 WHERE `item` = 18836 AND `entry` = 541; -- Grand Marshal's Repeater
UPDATE `npc_vendor_template` SET `slot` = 17 WHERE `item` = 18855 AND `entry` = 541; -- Grand Marshal's Hand Cannon
UPDATE `npc_vendor_template` SET `slot` = 18 WHERE `item` = 18873 AND `entry` = 541; -- Grand Marshal's Stave
UPDATE `npc_vendor_template` SET `slot` = 19 WHERE `item` = 23451 AND `entry` = 541; -- Grand Marshal's Mageblade
UPDATE `npc_vendor_template` SET `slot` = 20 WHERE `item` = 23452 AND `entry` = 541; -- Grand Marshal's Tome of Power
UPDATE `npc_vendor_template` SET `slot` = 21 WHERE `item` = 23453 AND `entry` = 541; -- Grand Marshal's Tome of Restoration

-- Captain Dirgehammer 12777 (548)
UPDATE `npc_vendor_template` SET `slot` = 1 WHERE `item` = 28980 AND `entry` = 548;
UPDATE `npc_vendor_template` SET `slot` = 2 WHERE `item` = 28981 AND `entry` = 548;
UPDATE `npc_vendor_template` SET `slot` = 3 WHERE `item` = 28982 AND `entry` = 548;
UPDATE `npc_vendor_template` SET `slot` = 4 WHERE `item` = 29001 AND `entry` = 548;
UPDATE `npc_vendor_template` SET `slot` = 5 WHERE `item` = 29002 AND `entry` = 548;
UPDATE `npc_vendor_template` SET `slot` = 6 WHERE `item` = 29003 AND `entry` = 548;
UPDATE `npc_vendor_template` SET `slot` = 7 WHERE `item` = 28986 AND `entry` = 548;
UPDATE `npc_vendor_template` SET `slot` = 8 WHERE `item` = 28988 AND `entry` = 548;
UPDATE `npc_vendor_template` SET `slot` = 9 WHERE `item` = 28987 AND `entry` = 548;
UPDATE `npc_vendor_template` SET `slot` = 10 WHERE `item` = 31596 AND `entry` = 548;

UPDATE `npc_vendor_template` SET `slot` = 11 WHERE `item` = 31599 AND `entry` = 548;
UPDATE `npc_vendor_template` SET `slot` = 12 WHERE `item` = 31597 AND `entry` = 548;
UPDATE `npc_vendor_template` SET `slot` = 13 WHERE `item` = 28976 AND `entry` = 548;
UPDATE `npc_vendor_template` SET `slot` = 14 WHERE `item` = 28978 AND `entry` = 548;
UPDATE `npc_vendor_template` SET `slot` = 15 WHERE `item` = 28977 AND `entry` = 548;
UPDATE `npc_vendor_template` SET `slot` = 16 WHERE `item` = 29004 AND `entry` = 548;
UPDATE `npc_vendor_template` SET `slot` = 17 WHERE `item` = 29006 AND `entry` = 548;
UPDATE `npc_vendor_template` SET `slot` = 18 WHERE `item` = 29005 AND `entry` = 548;
UPDATE `npc_vendor_template` SET `slot` = 19 WHERE `item` = 28974 AND `entry` = 548;
UPDATE `npc_vendor_template` SET `slot` = 20 WHERE `item` = 28973 AND `entry` = 548;

UPDATE `npc_vendor_template` SET `slot` = 21 WHERE `item` = 28975 AND `entry` = 548;
UPDATE `npc_vendor_template` SET `slot` = 22 WHERE `item` = 28990 AND `entry` = 548;
UPDATE `npc_vendor_template` SET `slot` = 23 WHERE `item` = 28989 AND `entry` = 548;
UPDATE `npc_vendor_template` SET `slot` = 24 WHERE `item` = 28991 AND `entry` = 548;
UPDATE `npc_vendor_template` SET `slot` = 25 WHERE `item` = 28993 AND `entry` = 548;
UPDATE `npc_vendor_template` SET `slot` = 26 WHERE `item` = 28992 AND `entry` = 548;
UPDATE `npc_vendor_template` SET `slot` = 27 WHERE `item` = 28994 AND `entry` = 548;
UPDATE `npc_vendor_template` SET `slot` = 28 WHERE `item` = 28995 AND `entry` = 548;
UPDATE `npc_vendor_template` SET `slot` = 29 WHERE `item` = 28996 AND `entry` = 548;
UPDATE `npc_vendor_template` SET `slot` = 30 WHERE `item` = 28997 AND `entry` = 548;

UPDATE `npc_vendor_template` SET `slot` = 31 WHERE `item` = 28998 AND `entry` = 548;
UPDATE `npc_vendor_template` SET `slot` = 32 WHERE `item` = 28999 AND `entry` = 548;
UPDATE `npc_vendor_template` SET `slot` = 33 WHERE `item` = 29000 AND `entry` = 548;
UPDATE `npc_vendor_template` SET `slot` = 34 WHERE `item` = 28983 AND `entry` = 548;
UPDATE `npc_vendor_template` SET `slot` = 35 WHERE `item` = 28984 AND `entry` = 548;
UPDATE `npc_vendor_template` SET `slot` = 36 WHERE `item` = 28985 AND `entry` = 548;
UPDATE `npc_vendor_template` SET `slot` = 37 WHERE `item` = 28624 AND `entry` = 548;
UPDATE `npc_vendor_template` SET `slot` = 38 WHERE `item` = 28627 AND `entry` = 548;
UPDATE `npc_vendor_template` SET `slot` = 39 WHERE `item` = 28626 AND `entry` = 548;
UPDATE `npc_vendor_template` SET `slot` = 40 WHERE `item` = 28625 AND `entry` = 548;

UPDATE `npc_vendor_template` SET `slot` = 41 WHERE `item` = 28628 AND `entry` = 548;
UPDATE `npc_vendor_template` SET `slot` = 42 WHERE `item` = 28704 AND `entry` = 548;
UPDATE `npc_vendor_template` SET `slot` = 43 WHERE `item` = 28707 AND `entry` = 548;
UPDATE `npc_vendor_template` SET `slot` = 44 WHERE `item` = 28706 AND `entry` = 548;
UPDATE `npc_vendor_template` SET `slot` = 45 WHERE `item` = 28705 AND `entry` = 548;

UPDATE `npc_vendor_template` SET `slot` = 46 WHERE `item` = 28708 AND `entry` = 548;
UPDATE `npc_vendor_template` SET `slot` = 47 WHERE `item` = 31620 AND `entry` = 548;
UPDATE `npc_vendor_template` SET `slot` = 48 WHERE `item` = 31624 AND `entry` = 548;
UPDATE `npc_vendor_template` SET `slot` = 49 WHERE `item` = 31623 AND `entry` = 548;
UPDATE `npc_vendor_template` SET `slot` = 50 WHERE `item` = 31622 AND `entry` = 548;

UPDATE `npc_vendor_template` SET `slot` = 51 WHERE `item` = 31625 AND `entry` = 548;
UPDATE `npc_vendor_template` SET `slot` = 52 WHERE `item` = 28716 AND `entry` = 548;
UPDATE `npc_vendor_template` SET `slot` = 53 WHERE `item` = 28714 AND `entry` = 548;
UPDATE `npc_vendor_template` SET `slot` = 54 WHERE `item` = 28718 AND `entry` = 548;
UPDATE `npc_vendor_template` SET `slot` = 55 WHERE `item` = 28715 AND `entry` = 548;
UPDATE `npc_vendor_template` SET `slot` = 56 WHERE `item` = 28717 AND `entry` = 548;
UPDATE `npc_vendor_template` SET `slot` = 57 WHERE `item` = 28684 AND `entry` = 548;
UPDATE `npc_vendor_template` SET `slot` = 58 WHERE `item` = 28687 AND `entry` = 548;
UPDATE `npc_vendor_template` SET `slot` = 59 WHERE `item` = 28686 AND `entry` = 548;
UPDATE `npc_vendor_template` SET `slot` = 60 WHERE `item` = 28685 AND `entry` = 548;

UPDATE `npc_vendor_template` SET `slot` = 61 WHERE `item` = 28688 AND `entry` = 548;
UPDATE `npc_vendor_template` SET `slot` = 62 WHERE `item` = 31589 AND `entry` = 548;
UPDATE `npc_vendor_template` SET `slot` = 63 WHERE `item` = 31592 AND `entry` = 548;
UPDATE `npc_vendor_template` SET `slot` = 64 WHERE `item` = 31591 AND `entry` = 548;
UPDATE `npc_vendor_template` SET `slot` = 65 WHERE `item` = 31590 AND `entry` = 548;
UPDATE `npc_vendor_template` SET `slot` = 66 WHERE `item` = 31593 AND `entry` = 548;
UPDATE `npc_vendor_template` SET `slot` = 67 WHERE `item` = 28618 AND `entry` = 548;
UPDATE `npc_vendor_template` SET `slot` = 68 WHERE `item` = 28622 AND `entry` = 548;
UPDATE `npc_vendor_template` SET `slot` = 69 WHERE `item` = 28620 AND `entry` = 548;
UPDATE `npc_vendor_template` SET `slot` = 70 WHERE `item` = 28619 AND `entry` = 548;

UPDATE `npc_vendor_template` SET `slot` = 71 WHERE `item` = 28623 AND `entry` = 548;
UPDATE `npc_vendor_template` SET `slot` = 72 WHERE `item` = 28719 AND `entry` = 548;
UPDATE `npc_vendor_template` SET `slot` = 73 WHERE `item` = 28722 AND `entry` = 548;
UPDATE `npc_vendor_template` SET `slot` = 74 WHERE `item` = 28721 AND `entry` = 548;
UPDATE `npc_vendor_template` SET `slot` = 75 WHERE `item` = 28720 AND `entry` = 548;
UPDATE `npc_vendor_template` SET `slot` = 76 WHERE `item` = 28723 AND `entry` = 548;
UPDATE `npc_vendor_template` SET `slot` = 77 WHERE `item` = 28614 AND `entry` = 548;
UPDATE `npc_vendor_template` SET `slot` = 78 WHERE `item` = 28617 AND `entry` = 548;
UPDATE `npc_vendor_template` SET `slot` = 79 WHERE `item` = 28616 AND `entry` = 548;
UPDATE `npc_vendor_template` SET `slot` = 80 WHERE `item` = 28615 AND `entry` = 548;

UPDATE `npc_vendor_template` SET `slot` = 81 WHERE `item` = 28613 AND `entry` = 548;
UPDATE `npc_vendor_template` SET `slot` = 82 WHERE `item` = 31641 AND `entry` = 548;
UPDATE `npc_vendor_template` SET `slot` = 83 WHERE `item` = 31644 AND `entry` = 548;
UPDATE `npc_vendor_template` SET `slot` = 84 WHERE `item` = 31643 AND `entry` = 548;
UPDATE `npc_vendor_template` SET `slot` = 85 WHERE `item` = 31642 AND `entry` = 548;
UPDATE `npc_vendor_template` SET `slot` = 86 WHERE `item` = 31640 AND `entry` = 548;
UPDATE `npc_vendor_template` SET `slot` = 87 WHERE `item` = 28690 AND `entry` = 548;
UPDATE `npc_vendor_template` SET `slot` = 88 WHERE `item` = 28693 AND `entry` = 548;
UPDATE `npc_vendor_template` SET `slot` = 89 WHERE `item` = 28692 AND `entry` = 548;
UPDATE `npc_vendor_template` SET `slot` = 90 WHERE `item` = 28691 AND `entry` = 548;

UPDATE `npc_vendor_template` SET `slot` = 91 WHERE `item` = 28689 AND `entry` = 548;
UPDATE `npc_vendor_template` SET `slot` = 92 WHERE `item` = 28695 AND `entry` = 548;
UPDATE `npc_vendor_template` SET `slot` = 93 WHERE `item` = 28698 AND `entry` = 548;
UPDATE `npc_vendor_template` SET `slot` = 94 WHERE `item` = 28697 AND `entry` = 548;
UPDATE `npc_vendor_template` SET `slot` = 95 WHERE `item` = 28696 AND `entry` = 548;
UPDATE `npc_vendor_template` SET `slot` = 96 WHERE `item` = 28694 AND `entry` = 548;
UPDATE `npc_vendor_template` SET `slot` = 97 WHERE `item` = 28700 AND `entry` = 548;
UPDATE `npc_vendor_template` SET `slot` = 98 WHERE `item` = 28703 AND `entry` = 548;
UPDATE `npc_vendor_template` SET `slot` = 99 WHERE `item` = 28702 AND `entry` = 548;
UPDATE `npc_vendor_template` SET `slot` = 100 WHERE `item` = 28701 AND `entry` = 548;

UPDATE `npc_vendor_template` SET `slot` = 101 WHERE `item` = 28699 AND `entry` = 548;
UPDATE `npc_vendor_template` SET `slot` = 102 WHERE `item` = 31631 AND `entry` = 548;
UPDATE `npc_vendor_template` SET `slot` = 103 WHERE `item` = 31634 AND `entry` = 548;
UPDATE `npc_vendor_template` SET `slot` = 104 WHERE `item` = 31633 AND `entry` = 548;
UPDATE `npc_vendor_template` SET `slot` = 105 WHERE `item` = 31632 AND `entry` = 548;
UPDATE `npc_vendor_template` SET `slot` = 106 WHERE `item` = 31630 AND `entry` = 548;
UPDATE `npc_vendor_template` SET `slot` = 107 WHERE `item` = 28710 AND `entry` = 548;
UPDATE `npc_vendor_template` SET `slot` = 108 WHERE `item` = 28713 AND `entry` = 548;
UPDATE `npc_vendor_template` SET `slot` = 109 WHERE `item` = 28712 AND `entry` = 548;
UPDATE `npc_vendor_template` SET `slot` = 110 WHERE `item` = 28711 AND `entry` = 548;

UPDATE `npc_vendor_template` SET `slot` = 111 WHERE `item` = 28709 AND `entry` = 548;
UPDATE `npc_vendor_template` SET `slot` = 112 WHERE `item` = 28680 AND `entry` = 548;
UPDATE `npc_vendor_template` SET `slot` = 113 WHERE `item` = 28683 AND `entry` = 548;
UPDATE `npc_vendor_template` SET `slot` = 114 WHERE `item` = 28724 AND `entry` = 548;
UPDATE `npc_vendor_template` SET `slot` = 115 WHERE `item` = 28681 AND `entry` = 548;
UPDATE `npc_vendor_template` SET `slot` = 116 WHERE `item` = 28679 AND `entry` = 548;

-- S4 Offset
UPDATE `npc_vendor_template` SET `slot` = 51 WHERE `item` = 33882 AND `entry` = 581; -- Vindicator's Dreadweave Belt
UPDATE `npc_vendor_template` SET `slot` = 52 WHERE `item` = 33883 AND `entry` = 581; -- Vindicator's Dreadweave Cuffs
UPDATE `npc_vendor_template` SET `slot` = 53 WHERE `item` = 33884 AND `entry` = 581; -- Vindicator's Dreadweave Stalkers
UPDATE `npc_vendor_template` SET `slot` = 54 WHERE `item` = 33900 AND `entry` = 581; -- Vindicator's Mooncloth Belt
UPDATE `npc_vendor_template` SET `slot` = 55 WHERE `item` = 33901 AND `entry` = 581; -- Vindicator's Mooncloth Cuffs
UPDATE `npc_vendor_template` SET `slot` = 56 WHERE `item` = 33902 AND `entry` = 581; -- Vindicator's Mooncloth Slippers
UPDATE `npc_vendor_template` SET `slot` = 57 WHERE `item` = 33912 AND `entry` = 581; -- Vindicator's Silk Belt
UPDATE `npc_vendor_template` SET `slot` = 58 WHERE `item` = 33913 AND `entry` = 581; -- Vindicator's Silk Cuffs
UPDATE `npc_vendor_template` SET `slot` = 59 WHERE `item` = 33914 AND `entry` = 581; -- Vindicator's Silk Footguards
-- 33882	572	Vindicator's Dreadweave Belt
-- 33883	572	Vindicator's Dreadweave Cuffs
-- 33884	572	Vindicator's Dreadweave Stalkers
-- 33900	572	Vindicator's Mooncloth Belt
-- 33901	572	Vindicator's Mooncloth Cuffs
-- 33902	572	Vindicator's Mooncloth Slippers
-- 33912	572	Vindicator's Silk Belt
-- 33913	572	Vindicator's Silk Cuffs
-- 33914	572	Vindicator's Silk Footguards
-- guessed, sorted other offset items after this schema
UPDATE `npc_vendor_template` SET `slot` = 60 WHERE `item` = 33891 AND `entry` = 581;
UPDATE `npc_vendor_template` SET `slot` = 61 WHERE `item` = 33893 AND `entry` = 581;
UPDATE `npc_vendor_template` SET `slot` = 62 WHERE `item` = 33892 AND `entry` = 581;
UPDATE `npc_vendor_template` SET `slot` = 63 WHERE `item` = 33885 AND `entry` = 581;
UPDATE `npc_vendor_template` SET `slot` = 64 WHERE `item` = 33887 AND `entry` = 581;
UPDATE `npc_vendor_template` SET `slot` = 65 WHERE `item` = 33886 AND `entry` = 581;
UPDATE `npc_vendor_template` SET `slot` = 66 WHERE `item` = 33879 AND `entry` = 581;
UPDATE `npc_vendor_template` SET `slot` = 67 WHERE `item` = 33881 AND `entry` = 581;
UPDATE `npc_vendor_template` SET `slot` = 68 WHERE `item` = 33880 AND `entry` = 581;
UPDATE `npc_vendor_template` SET `slot` = 69 WHERE `item` = 33915 AND `entry` = 581;
UPDATE `npc_vendor_template` SET `slot` = 70 WHERE `item` = 33917 AND `entry` = 581;
UPDATE `npc_vendor_template` SET `slot` = 71 WHERE `item` = 33916 AND `entry` = 581;
UPDATE `npc_vendor_template` SET `slot` = 72 WHERE `item` = 33877 AND `entry` = 581;
UPDATE `npc_vendor_template` SET `slot` = 73 WHERE `item` = 33876 AND `entry` = 581;
UPDATE `npc_vendor_template` SET `slot` = 74 WHERE `item` = 33878 AND `entry` = 581;
UPDATE `npc_vendor_template` SET `slot` = 75 WHERE `item` = 33907 AND `entry` = 581;
UPDATE `npc_vendor_template` SET `slot` = 76 WHERE `item` = 33906 AND `entry` = 581;
UPDATE `npc_vendor_template` SET `slot` = 77 WHERE `item` = 33908 AND `entry` = 581;
UPDATE `npc_vendor_template` SET `slot` = 78 WHERE `item` = 33895 AND `entry` = 581;
UPDATE `npc_vendor_template` SET `slot` = 79 WHERE `item` = 33894 AND `entry` = 581;
UPDATE `npc_vendor_template` SET `slot` = 80 WHERE `item` = 33896 AND `entry` = 581;
UPDATE `npc_vendor_template` SET `slot` = 81 WHERE `item` = 33898 AND `entry` = 581;
UPDATE `npc_vendor_template` SET `slot` = 82 WHERE `item` = 33897 AND `entry` = 581;
UPDATE `npc_vendor_template` SET `slot` = 83 WHERE `item` = 33899 AND `entry` = 581;
UPDATE `npc_vendor_template` SET `slot` = 84 WHERE `item` = 33811 AND `entry` = 581;
UPDATE `npc_vendor_template` SET `slot` = 85 WHERE `item` = 33813 AND `entry` = 581;
UPDATE `npc_vendor_template` SET `slot` = 86 WHERE `item` = 33812 AND `entry` = 581;
UPDATE `npc_vendor_template` SET `slot` = 87 WHERE `item` = 33903 AND `entry` = 581;
UPDATE `npc_vendor_template` SET `slot` = 88 WHERE `item` = 33904 AND `entry` = 581;
UPDATE `npc_vendor_template` SET `slot` = 89 WHERE `item` = 33905 AND `entry` = 581;
UPDATE `npc_vendor_template` SET `slot` = 90 WHERE `item` = 33909 AND `entry` = 581;
UPDATE `npc_vendor_template` SET `slot` = 91 WHERE `item` = 33910 AND `entry` = 581;
UPDATE `npc_vendor_template` SET `slot` = 92 WHERE `item` = 33911 AND `entry` = 581;
UPDATE `npc_vendor_template` SET `slot` = 93 WHERE `item` = 33888 AND `entry` = 581;
UPDATE `npc_vendor_template` SET `slot` = 94 WHERE `item` = 33889 AND `entry` = 581;
UPDATE `npc_vendor_template` SET `slot` = 95 WHERE `item` = 33890 AND `entry` = 581;

-- Guardian
UPDATE `npc_vendor_template` SET `slot` = 111 WHERE `item` = 35153 AND `entry` = 581; -- belt
UPDATE `npc_vendor_template` SET `slot` = 112 WHERE `item` = 35168 AND `entry` = 581; -- bracer
UPDATE `npc_vendor_template` SET `slot` = 113 WHERE `item` = 35138 AND `entry` = 581; -- boots
UPDATE `npc_vendor_template` SET `slot` = 114 WHERE `item` = 35159 AND `entry` = 581;
UPDATE `npc_vendor_template` SET `slot` = 115 WHERE `item` = 35174 AND `entry` = 581;
UPDATE `npc_vendor_template` SET `slot` = 116 WHERE `item` = 35144 AND `entry` = 581;
UPDATE `npc_vendor_template` SET `slot` = 117 WHERE `item` = 35164 AND `entry` = 581;
UPDATE `npc_vendor_template` SET `slot` = 118 WHERE `item` = 35179 AND `entry` = 581;
UPDATE `npc_vendor_template` SET `slot` = 119 WHERE `item` = 35149 AND `entry` = 581;
UPDATE `npc_vendor_template` SET `slot` = 120 WHERE `item` = 35156 AND `entry` = 581;
UPDATE `npc_vendor_template` SET `slot` = 121 WHERE `item` = 35171 AND `entry` = 581;
UPDATE `npc_vendor_template` SET `slot` = 122 WHERE `item` = 35141 AND `entry` = 581;
UPDATE `npc_vendor_template` SET `slot` = 123 WHERE `item` = 35154 AND `entry` = 581;
UPDATE `npc_vendor_template` SET `slot` = 124 WHERE `item` = 35169 AND `entry` = 581;
UPDATE `npc_vendor_template` SET `slot` = 125 WHERE `item` = 35139 AND `entry` = 581;
UPDATE `npc_vendor_template` SET `slot` = 126 WHERE `item` = 35152 AND `entry` = 581;
UPDATE `npc_vendor_template` SET `slot` = 127 WHERE `item` = 35167 AND `entry` = 581;
UPDATE `npc_vendor_template` SET `slot` = 128 WHERE `item` = 35137 AND `entry` = 581;
UPDATE `npc_vendor_template` SET `slot` = 129 WHERE `item` = 35165 AND `entry` = 581;
UPDATE `npc_vendor_template` SET `slot` = 130 WHERE `item` = 35180 AND `entry` = 581;
UPDATE `npc_vendor_template` SET `slot` = 131 WHERE `item` = 35150 AND `entry` = 581;
UPDATE `npc_vendor_template` SET `slot` = 132 WHERE `item` = 35151 AND `entry` = 581;
UPDATE `npc_vendor_template` SET `slot` = 133 WHERE `item` = 35166 AND `entry` = 581;
UPDATE `npc_vendor_template` SET `slot` = 134 WHERE `item` = 35136 AND `entry` = 581;
UPDATE `npc_vendor_template` SET `slot` = 135 WHERE `item` = 35162 AND `entry` = 581;
UPDATE `npc_vendor_template` SET `slot` = 136 WHERE `item` = 35177 AND `entry` = 581;
UPDATE `npc_vendor_template` SET `slot` = 137 WHERE `item` = 35147 AND `entry` = 581;
UPDATE `npc_vendor_template` SET `slot` = 138 WHERE `item` = 35157 AND `entry` = 581;
UPDATE `npc_vendor_template` SET `slot` = 139 WHERE `item` = 35172 AND `entry` = 581;
UPDATE `npc_vendor_template` SET `slot` = 140 WHERE `item` = 35142 AND `entry` = 581;

UPDATE `npc_vendor_template` SET `slot` = 141 WHERE `item` = 35158 AND `entry` = 581;
UPDATE `npc_vendor_template` SET `slot` = 142 WHERE `item` = 35173 AND `entry` = 581;
UPDATE `npc_vendor_template` SET `slot` = 143 WHERE `item` = 35143 AND `entry` = 581;
UPDATE `npc_vendor_template` SET `slot` = 144 WHERE `item` = 35161 AND `entry` = 581;
UPDATE `npc_vendor_template` SET `slot` = 145 WHERE `item` = 35176 AND `entry` = 581;
UPDATE `npc_vendor_template` SET `slot` = 146 WHERE `item` = 35146 AND `entry` = 581;
UPDATE `npc_vendor_template` SET `slot` = 147 WHERE `item` = 35160 AND `entry` = 581;
UPDATE `npc_vendor_template` SET `slot` = 148 WHERE `item` = 35175 AND `entry` = 581;
UPDATE `npc_vendor_template` SET `slot` = 149 WHERE `item` = 35145 AND `entry` = 581;
UPDATE `npc_vendor_template` SET `slot` = 150 WHERE `item` = 35163 AND `entry` = 581;

UPDATE `npc_vendor_template` SET `slot` = 151 WHERE `item` = 35178 AND `entry` = 581;
UPDATE `npc_vendor_template` SET `slot` = 152 WHERE `item` = 35148 AND `entry` = 581;
UPDATE `npc_vendor_template` SET `slot` = 153 WHERE `item` = 35155 AND `entry` = 581;
UPDATE `npc_vendor_template` SET `slot` = 154 WHERE `item` = 35170 AND `entry` = 581;
UPDATE `npc_vendor_template` SET `slot` = 155 WHERE `item` = 35140 AND `entry` = 581;

UPDATE `npc_vendor_template` SET `slot` = 161 WHERE `item` = 33920 AND `entry` = 581; -- Vindicator's Pendant of Conquest
UPDATE `npc_vendor_template` SET `slot` = 162 WHERE `item` = 33921 AND `entry` = 581; -- Vindicator's Pendant of Dominance
UPDATE `npc_vendor_template` SET `slot` = 163 WHERE `item` = 35319 AND `entry` = 581; -- Vindicator's Pendant of Subjugation
UPDATE `npc_vendor_template` SET `slot` = 164 WHERE `item` = 33922 AND `entry` = 581; -- Vindicator's Pendant of Salvation
UPDATE `npc_vendor_template` SET `slot` = 165 WHERE `item` = 35317 AND `entry` = 581; -- Vindicator's Pendant of Reprieve
UPDATE `npc_vendor_template` SET `slot` = 166 WHERE `item` = 33923 AND `entry` = 581; -- Vindicator's Pendant of Triumph
UPDATE `npc_vendor_template` SET `slot` = 167 WHERE `item` = 33853 AND `entry` = 581; -- Vindicator's Band of Dominance
UPDATE `npc_vendor_template` SET `slot` = 168 WHERE `item` = 33918 AND `entry` = 581; -- Vindicator's Band of Salvation
UPDATE `npc_vendor_template` SET `slot` = 169 WHERE `item` = 33919 AND `entry` = 581; -- Vindicator's Band of Triumph
UPDATE `npc_vendor_template` SET `slot` = 170 WHERE `item` = 35320 AND `entry` = 581; -- Vindicator's Band of Subjugation

UPDATE `npc_vendor_template` SET `slot` = 171 WHERE `item` = 35129 AND `entry` = 581;
UPDATE `npc_vendor_template` SET `slot` = 172 WHERE `item` = 35130 AND `entry` = 581;
UPDATE `npc_vendor_template` SET `slot` = 173 WHERE `item` = 37927 AND `entry` = 581;
UPDATE `npc_vendor_template` SET `slot` = 174 WHERE `item` = 35131 AND `entry` = 581;
UPDATE `npc_vendor_template` SET `slot` = 175 WHERE `item` = 35132 AND `entry` = 581;
UPDATE `npc_vendor_template` SET `slot` = 176 WHERE `item` = 35133 AND `entry` = 581;
UPDATE `npc_vendor_template` SET `slot` = 177 WHERE `item` = 37929 AND `entry` = 581;
UPDATE `npc_vendor_template` SET `slot` = 178 WHERE `item` = 35134 AND `entry` = 581;
UPDATE `npc_vendor_template` SET `slot` = 179 WHERE `item` = 37928 AND `entry` = 581;
UPDATE `npc_vendor_template` SET `slot` = 180 WHERE `item` = 35135 AND `entry` = 581;

UPDATE `npc_vendor_template` SET `slot` = 181 WHERE `item` = 34576 AND `entry` = 581;
UPDATE `npc_vendor_template` SET `slot` = 182 WHERE `item` = 34577 AND `entry` = 581;
UPDATE `npc_vendor_template` SET `slot` = 183 WHERE `item` = 34578 AND `entry` = 581;
UPDATE `npc_vendor_template` SET `slot` = 184 WHERE `item` = 34579 AND `entry` = 581;
UPDATE `npc_vendor_template` SET `slot` = 185 WHERE `item` = 34580 AND `entry` = 581;
UPDATE `npc_vendor_template` SET `slot` = 186 WHERE `item` = 35327 AND `entry` = 581;

