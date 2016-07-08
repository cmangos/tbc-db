-- ==============================================================================================
-- INITIAL HOTFIX FOR CREATURE LOOT Green/Blue/Purple WORLD DROP ISSUES WHERE THEY DROP TOO OFTEN
-- ==============================================================================================

-- NPC LOOT - (Level: 60-61 Green Loot) - (Item Levels: 90-93) - NPC Levels Approx 60-66
UPDATE creature_loot_template SET ChanceOrQuestChance='0.1' WHERE ChanceOrQuestChance='1' AND mincountOrRef IN (-24003);

-- NPC LOOT - (Level: 60-61 Blue Loot) - (Item Levels: 85-91) - NPC Levels Approx 57-64
UPDATE creature_loot_template SET ChanceOrQuestChance='0.02' WHERE ChanceOrQuestChance='0.5' AND mincountOrRef IN (-24004);

-- NPC LOOT - (Level: 62-63 Green Loot) - (Item Levels: 96-99) - NPC Levels Approx 62-70
UPDATE creature_loot_template SET ChanceOrQuestChance='0.1' WHERE ChanceOrQuestChance='1' AND mincountOrRef IN (-24005);

-- NPC LOOT - (Level: 62-63 Blue Loot) - (Item Levels: 91-94) - NPC Levels Approx 60-65
UPDATE creature_loot_template SET ChanceOrQuestChance='0.02' WHERE ChanceOrQuestChance='0.5' AND mincountOrRef IN (-24006);

-- NPC LOOT - (Level: 64-65 Green Loot) - (Item Levels: 102-105) - NPC Levels Approx 64-72
UPDATE creature_loot_template SET ChanceOrQuestChance='0.1' WHERE ChanceOrQuestChance='1' AND mincountOrRef IN (-24007);

-- NPC LOOT - (Level: 64-65 Blue Loot) - (Item Levels: 97-100) - NPC Levels Approx 62-68
UPDATE creature_loot_template SET ChanceOrQuestChance='0.02' WHERE ChanceOrQuestChance='0.5' AND mincountOrRef IN (-24008);

-- NPC LOOT - (Level: 66-67 Green Loot) - (Item Levels: 108-111) - NPC Levels Approx 57-72
UPDATE creature_loot_template SET ChanceOrQuestChance='0.1' WHERE ChanceOrQuestChance='1' AND mincountOrRef IN (-24009);

-- NPC LOOT - (Level: 66-67 Blue Loot) - (Item Levels: 103-106) - NPC Levels Approx 64-70
UPDATE creature_loot_template SET ChanceOrQuestChance='0.02' WHERE ChanceOrQuestChance='0.5' AND mincountOrRef IN (-24010);

-- NPC LOOT - (Level: 68-69 Green Loot) - (Item Levels: 114-117) - NPC Levels Approx 57-73
UPDATE creature_loot_template SET ChanceOrQuestChance='0.1' WHERE ChanceOrQuestChance='1' AND mincountOrRef IN (-24011);

-- NPC LOOT - (Level: 68-69 Blue Loot) - (Item Levels: 97-115) - NPC Levels Approx 59-72
UPDATE creature_loot_template SET ChanceOrQuestChance='0.02' WHERE ChanceOrQuestChance='0.5' AND mincountOrRef IN (-24012);

-- NPC LOOT - (Level: 70 Green Loot) - (Item Levels: 120) - NPC Levels Approx 60-73
UPDATE creature_loot_template SET ChanceOrQuestChance='0.1' WHERE ChanceOrQuestChance='1' AND mincountOrRef IN (-24013);

-- NPC LOOT - (Level: 70 Blue Loot) - (Item Levels: 109-115) - NPC Levels Approx 60-73
UPDATE creature_loot_template SET ChanceOrQuestChance='0.02' WHERE ChanceOrQuestChance='0.5' AND mincountOrRef IN (-24014);

-- NPC LOOT - (Level: 70 Purple Loot) - (Item Levels: 100) - NPC Levels Approx 63-72
UPDATE creature_loot_template SET ChanceOrQuestChance='0.0001' WHERE ChanceOrQuestChance='0.1' AND mincountOrRef IN (-24015);

-- NPC LOOT - (Level: 55-56 Green Loot) - (Item Levels: 100) - NPC Levels Approx 59-61
UPDATE creature_loot_template SET ChanceOrQuestChance='0.1' WHERE ChanceOrQuestChance='1' AND mincountOrRef IN (-24016);

-- NPC LOOT - (Level: 55-56 Blue Loot) - (Item Levels: 60-61) - NPC Levels Approx 55-71
UPDATE creature_loot_template SET ChanceOrQuestChance='0.02' WHERE ChanceOrQuestChance='0.5' AND mincountOrRef IN (-24017);

-- NPC LOOT - (Level: 57-58 Green Loot) - (Item Levels: 62-63) - NPC Levels Approx 54-73
UPDATE creature_loot_template SET ChanceOrQuestChance='0.1' WHERE ChanceOrQuestChance='1' AND mincountOrRef IN (-24018);

-- NPC LOOT - (Level: 57-58 Blue Loot) - (Item Levels: 62-63) - NPC Levels Approx 57-71
UPDATE creature_loot_template SET ChanceOrQuestChance='0.02' WHERE ChanceOrQuestChance='0.5' AND mincountOrRef IN (-24019);

-- NPC LOOT - (Level: 59-60 Green Loot) - (Item Levels: 64-65) - NPC Levels Approx 57-73
UPDATE creature_loot_template SET ChanceOrQuestChance='0.1' WHERE ChanceOrQuestChance='1' AND mincountOrRef IN (-24020);

-- NPC LOOT - (Level: 60 Blue Loot) - (Item Levels: 65) - NPC Levels Approx 55-70
UPDATE creature_loot_template SET ChanceOrQuestChance='0.02' WHERE ChanceOrQuestChance='0.5' AND mincountOrRef IN (-24021);

-- NPC LOOT - (Level: 57-58 Green Loot) - (Item Levels: 81-84) - NPC Levels Approx 57-62
UPDATE creature_loot_template SET ChanceOrQuestChance='0.1' WHERE ChanceOrQuestChance='1' AND mincountOrRef IN (-24022);

-- NPC LOOT - (Level: 59 Green Loot) - (Item Levels: 87) - NPC Levels Approx 59-63
UPDATE creature_loot_template SET ChanceOrQuestChance='0.1' WHERE ChanceOrQuestChance='1' AND mincountOrRef IN (-24023);

-- NPC LOOT - (Level: 45-46 Green Loot) - (Item Levels: 50-51) - NPC Levels Approx 37-63
UPDATE creature_loot_template SET ChanceOrQuestChance='0.1' WHERE ChanceOrQuestChance='1' AND mincountOrRef IN (-24025);

-- NPC LOOT - (Level: 45-46 Blue Loot) - (Item Levels: 50-51) - NPC Levels Approx 41-64
UPDATE creature_loot_template SET ChanceOrQuestChance='0.02' WHERE ChanceOrQuestChance='0.5' AND mincountOrRef IN (-24026);

-- NPC LOOT - (Level: 47-48 Green Loot) - (Item Levels: 52-53) - NPC Levels Approx 41-70
UPDATE creature_loot_template SET ChanceOrQuestChance='0.1' WHERE ChanceOrQuestChance='1' AND mincountOrRef IN (-24027);

-- NPC LOOT - (Level: 47-48 Blue Loot) - (Item Levels: 52-53) - NPC Levels Approx 41-65
UPDATE creature_loot_template SET ChanceOrQuestChance='0.02' WHERE ChanceOrQuestChance='0.5' AND mincountOrRef IN (-24028);

-- NPC LOOT - (Level: 49-50 Green Loot) - (Item Levels: 54-55) - NPC Levels Approx 41-70
UPDATE creature_loot_template SET ChanceOrQuestChance='0.1' WHERE ChanceOrQuestChance='1' AND mincountOrRef IN (-24029);

-- NPC LOOT - (Level: 49-50 Blue Loot) - (Item Levels: 54-55) - NPC Levels Approx 46-70
UPDATE creature_loot_template SET ChanceOrQuestChance='0.02' WHERE ChanceOrQuestChance='0.5' AND mincountOrRef IN (-24030);

-- NPC LOOT - (Level: 51-52 Green Loot) - (Item Levels: 56-57) - NPC Levels Approx 42-70
UPDATE creature_loot_template SET ChanceOrQuestChance='0.1' WHERE ChanceOrQuestChance='1' AND mincountOrRef IN (-24031);

-- NPC LOOT - (Level: 51-52 Blue Loot) - (Item Levels: 56-57) - NPC Levels Approx 50-70
UPDATE creature_loot_template SET ChanceOrQuestChance='0.02' WHERE ChanceOrQuestChance='0.5' AND mincountOrRef IN (-24032);

-- NPC LOOT - (Level: 53-54 Green Loot) - (Item Levels: 58-59) - NPC Levels Approx 48-71
UPDATE creature_loot_template SET ChanceOrQuestChance='0.1' WHERE ChanceOrQuestChance='1' AND mincountOrRef IN (-24033);

-- NPC LOOT - (Level: 53-54 Blue Loot) - (Item Levels: 58-59) - NPC Levels Approx 51-71
UPDATE creature_loot_template SET ChanceOrQuestChance='0.02' WHERE ChanceOrQuestChance='0.5' AND mincountOrRef IN (-24034);

-- NPC LOOT - (Level: 35-36 Green Loot) - (Item Levels: 40-42) - NPC Levels Approx 34-55
UPDATE creature_loot_template SET ChanceOrQuestChance='0.1' WHERE ChanceOrQuestChance='1' AND mincountOrRef IN (-24037);

-- NPC LOOT - (Level: 35-36 Blue Loot) - (Item Levels: 40-41) - NPC Levels Approx 20-47
UPDATE creature_loot_template SET ChanceOrQuestChance='0.02' WHERE ChanceOrQuestChance='0.5' AND mincountOrRef IN (-24038);

-- NPC LOOT - (Level: 37-38 Green Loot) - (Item Levels: 42-43) - NPC Levels Approx 34-59
UPDATE creature_loot_template SET ChanceOrQuestChance='0.1' WHERE ChanceOrQuestChance='1' AND mincountOrRef IN (-24039);

-- NPC LOOT - (Level: 37-38 Blue Loot) - (Item Levels: 42-43) - NPC Levels Approx 36-49
UPDATE creature_loot_template SET ChanceOrQuestChance='0.02' WHERE ChanceOrQuestChance='0.5' AND mincountOrRef IN (-24040);

-- NPC LOOT - (Level: 39-40 Green Loot) - (Item Levels: 40-45) - NPC Levels Approx 34-55
UPDATE creature_loot_template SET ChanceOrQuestChance='0.1' WHERE ChanceOrQuestChance='1' AND mincountOrRef IN (-24041);

-- NPC LOOT - (Level: 39-40 Blue Loot) - (Item Levels: 44-45) - NPC Levels Approx 28-50
UPDATE creature_loot_template SET ChanceOrQuestChance='0.02' WHERE ChanceOrQuestChance='0.5' AND mincountOrRef IN (-24042);

-- NPC LOOT - (Level: 41-42 Green Loot) - (Item Levels: 46-47) - NPC Levels Approx 33-61
UPDATE creature_loot_template SET ChanceOrQuestChance='0.1' WHERE ChanceOrQuestChance='1' AND mincountOrRef IN (-24043);

-- NPC LOOT - (Level: 41-42 Blue Loot) - (Item Levels: 46-47) - NPC Levels Approx 37-54
UPDATE creature_loot_template SET ChanceOrQuestChance='0.02' WHERE ChanceOrQuestChance='0.5' AND mincountOrRef IN (-24044);

-- NPC LOOT - (Level: 43-44 Green Loot) - (Item Levels: 48-49) - NPC Levels Approx 37-62
UPDATE creature_loot_template SET ChanceOrQuestChance='0.1' WHERE ChanceOrQuestChance='1' AND mincountOrRef IN (-24045);

-- NPC LOOT - (Level: 43-44 Blue Loot) - (Item Levels: 48-49) - NPC Levels Approx 39-61
UPDATE creature_loot_template SET ChanceOrQuestChance='0.02' WHERE ChanceOrQuestChance='0.5' AND mincountOrRef IN (-24046);

-- NPC LOOT - (Level: 25-26 Green Loot) - (Item Levels: 30-31) - NPC Levels Approx 19-60
UPDATE creature_loot_template SET ChanceOrQuestChance='0.1' WHERE ChanceOrQuestChance='1' AND mincountOrRef IN (-24048);

-- NPC LOOT - (Level: 25-26 Blue Loot) - (Item Levels: 30-31) - NPC Levels Approx 10-60
UPDATE creature_loot_template SET ChanceOrQuestChance='0.02' WHERE ChanceOrQuestChance='0.5' AND mincountOrRef IN (-24049);

-- NPC LOOT - (Level: 27-28 Green Loot) - (Item Levels: 32-33) - NPC Levels Approx 8-60
UPDATE creature_loot_template SET ChanceOrQuestChance='0.1' WHERE ChanceOrQuestChance='1' AND mincountOrRef IN (-24050);

-- NPC LOOT - (Level: 27-28 Blue Loot) - (Item Levels: 32-33) - NPC Levels Approx 10-59
UPDATE creature_loot_template SET ChanceOrQuestChance='0.02' WHERE ChanceOrQuestChance='0.5' AND mincountOrRef IN (-24051);

-- NPC LOOT - (Level: 29-30 Green Loot) - (Item Levels: 34-35) - NPC Levels Approx 8-60
UPDATE creature_loot_template SET ChanceOrQuestChance='0.1' WHERE ChanceOrQuestChance='1' AND mincountOrRef IN (-24052);

-- NPC LOOT - (Level: 29-30 Blue Loot) - (Item Levels: 34-35) - NPC Levels Approx 19-63
UPDATE creature_loot_template SET ChanceOrQuestChance='0.02' WHERE ChanceOrQuestChance='0.5' AND mincountOrRef IN (-24053);

-- NPC LOOT - (Level: 31-32 Green Loot) - (Item Levels: 36-37) - NPC Levels Approx 19-65
UPDATE creature_loot_template SET ChanceOrQuestChance='0.1' WHERE ChanceOrQuestChance='1' AND mincountOrRef IN (-24054);

-- NPC LOOT - (Level: 31-32 Blue Loot) - (Item Levels: 36-37) - NPC Levels Approx 31-41
UPDATE creature_loot_template SET ChanceOrQuestChance='0.02' WHERE ChanceOrQuestChance='0.5' AND mincountOrRef IN (-24055);

-- NPC LOOT - (Level: 33-34 Green Loot) - (Item Levels: 38-39) - NPC Levels Approx 19-65
UPDATE creature_loot_template SET ChanceOrQuestChance='0.1' WHERE ChanceOrQuestChance='1' AND mincountOrRef IN (-24056);

-- NPC LOOT - (Level: 33-34 Blue Loot) - (Item Levels: 38-39) - NPC Levels Approx 19-43
UPDATE creature_loot_template SET ChanceOrQuestChance='0.02' WHERE ChanceOrQuestChance='0.5' AND mincountOrRef IN (-24057);

-- NPC LOOT - (Level: 15-16 Green Loot) - (Item Levels: 20-21) - NPC Levels Approx 10-59
UPDATE creature_loot_template SET ChanceOrQuestChance='0.1' WHERE ChanceOrQuestChance='1' AND mincountOrRef IN (-24060);

-- NPC LOOT - (Level: 15-16 Blue Loot) - (Item Levels: 20-21) - NPC Levels Approx 16-25
UPDATE creature_loot_template SET ChanceOrQuestChance='0.02' WHERE ChanceOrQuestChance='0.5' AND mincountOrRef IN (-24061);

-- NPC LOOT - (Level: 17-18 Green Loot) - (Item Levels: 22-23) - NPC Levels Approx 15-28
UPDATE creature_loot_template SET ChanceOrQuestChance='0.1' WHERE ChanceOrQuestChance='1' AND mincountOrRef IN (-24062);

-- NPC LOOT - (Level: 17-18 Blue Loot) - (Item Levels: 22-23) - NPC Levels Approx 16-28
UPDATE creature_loot_template SET ChanceOrQuestChance='0.02' WHERE ChanceOrQuestChance='0.5' AND mincountOrRef IN (-24063);

-- NPC LOOT - (Level: 19-20 Green Loot) - (Item Levels: 24-25) - NPC Levels Approx 10-44
UPDATE creature_loot_template SET ChanceOrQuestChance='0.1' WHERE ChanceOrQuestChance='1' AND mincountOrRef IN (-24064);

-- NPC LOOT - (Level: 19-20 Blue Loot) - (Item Levels: 24-25) - NPC Levels Approx 16-37
UPDATE creature_loot_template SET ChanceOrQuestChance='0.02' WHERE ChanceOrQuestChance='0.05' AND mincountOrRef IN (-24065);

-- NPC LOOT - (Level: 21-22 Green Loot) - (Item Levels: 26-27) - NPC Levels Approx 16-47
UPDATE creature_loot_template SET ChanceOrQuestChance='0.1' WHERE ChanceOrQuestChance='0.5' AND mincountOrRef IN (-24066);

-- NPC LOOT - (Level: 21-22 Blue Loot) - (Item Levels: 26-27) - NPC Levels Approx 19-32
UPDATE creature_loot_template SET ChanceOrQuestChance='0.02' WHERE ChanceOrQuestChance='0.5' AND mincountOrRef IN (-24067);

-- NPC LOOT - (Level: 23-24 Green Loot) - (Item Levels: 28-29) - NPC Levels Approx 16-61
UPDATE creature_loot_template SET ChanceOrQuestChance='0.1' WHERE ChanceOrQuestChance='1' AND mincountOrRef IN (-24068);

-- NPC LOOT - (Level: 23-24 Blue Loot) - (Item Levels: 28-29) - NPC Levels Approx 19-58
UPDATE creature_loot_template SET ChanceOrQuestChance='0.02' WHERE ChanceOrQuestChance='0.5' AND mincountOrRef IN (-24069);

-- NPC LOOT - (Level: 5-6 Green Loot) - (Item Levels: 10-11) - Drops From Approx Level 5-18 NPC ???
UPDATE creature_loot_template SET ChanceOrQuestChance='0.1' WHERE ChanceOrQuestChance='1' AND mincountOrRef IN (-24074);

-- NPC LOOT - (Level: 7-8 Green Loot) - (Item Levels: 12-13) - NPC Levels Approx 7-18
UPDATE creature_loot_template SET ChanceOrQuestChance='0.1' WHERE ChanceOrQuestChance='1' AND mincountOrRef IN (-24075);

-- NPC LOOT - (Level: 9-10 Green Loot) - (Item Levels: 14-15) - NPC Levels Approx 8-19
UPDATE creature_loot_template SET ChanceOrQuestChance='0.1' WHERE ChanceOrQuestChance='1' AND mincountOrRef IN (-24076);

-- NPC LOOT - (Level: 11-12 Green Loot) - (Item Levels: 16-17) - NPC Levels Approx 10-35
UPDATE creature_loot_template SET ChanceOrQuestChance='0.1' WHERE ChanceOrQuestChance='1' AND mincountOrRef IN (-24077);

-- NPC LOOT - (Level: 13-14 Green Loot) - (Item Levels: 18-19) - NPC Levels Approx 10-55
UPDATE creature_loot_template SET ChanceOrQuestChance='0.1' WHERE ChanceOrQuestChance='1' AND mincountOrRef IN (-24078);

-- NPC LOOT - (Level: 35-36 Purple Loot) - (Item Levels: 40-41) - NPC Levels Approx 31-45
UPDATE creature_loot_template SET ChanceOrQuestChance='0.0001' WHERE ChanceOrQuestChance='0.1' AND mincountOrRef IN (-24079);

-- NPC LOOT - (Level: 37-38 Purple Loot) - (Item Levels: 42-43) - NPC Levels Approx 36-49
UPDATE creature_loot_template SET ChanceOrQuestChance='0.0001' WHERE ChanceOrQuestChance='0.1' AND mincountOrRef IN (-24080);

-- NPC LOOT - (Level: 39-40 Purple Loot) - (Item Levels: 44-45) - NPC Levels Approx 37-49
UPDATE creature_loot_template SET ChanceOrQuestChance='0.0001' WHERE ChanceOrQuestChance='0.1' AND mincountOrRef IN (-24081);

-- NPC LOOT - (Level: 41-42 Purple Loot) - (Item Levels: 46-47) - NPC Levels Approx 38-53
UPDATE creature_loot_template SET ChanceOrQuestChance='0.0001' WHERE ChanceOrQuestChance='0.1' AND mincountOrRef IN (-24082);

-- NPC LOOT - (Level: 43-44 Purple Loot) - (Item Levels: 48-49) - NPC Levels Approx 40-61
UPDATE creature_loot_template SET ChanceOrQuestChance='0.0001' WHERE ChanceOrQuestChance='0.1' AND mincountOrRef IN (-24083);

-- NPC LOOT - (Level: 45-46 Purple Loot) - (Item Levels: 50-51) - NPC Levels Approx 41-64
UPDATE creature_loot_template SET ChanceOrQuestChance='0.0001' WHERE ChanceOrQuestChance='0.1' AND mincountOrRef IN (-24084);

-- NPC LOOT - (Level: 47-48 Purple Loot) - (Item Levels: 52-53) - NPC Levels Approx 41-65
UPDATE creature_loot_template SET ChanceOrQuestChance='0.0001' WHERE ChanceOrQuestChance='0.1' AND mincountOrRef IN (-24085);

-- NPC LOOT - (Level: 49-50 Purple Loot) - (Item Levels: 54-55) - NPC Levels Approx 48-69
UPDATE creature_loot_template SET ChanceOrQuestChance='0.0001' WHERE ChanceOrQuestChance='0.1' AND mincountOrRef IN (-24086);

-- NPC LOOT - (Level: 51-52 Purple Loot) - (Item Levels: 56-57) - NPC Levels Approx 50-70
UPDATE creature_loot_template SET ChanceOrQuestChance='0.0001' WHERE ChanceOrQuestChance='0.1' AND mincountOrRef IN (-24087);

-- NPC LOOT - (Level: 53-54 Purple Loot) - (Item Levels: 58-59) - NPC Levels Approx 52-71
UPDATE creature_loot_template SET ChanceOrQuestChance='0.0001' WHERE ChanceOrQuestChance='0.1' AND mincountOrRef IN (-24088);

-- NPC LOOT - (Level: 55-56 Purple Loot) - (Item Levels: 60-61) - NPC Levels Approx 55-71
UPDATE creature_loot_template SET ChanceOrQuestChance='0.0001' WHERE ChanceOrQuestChance='0.1' AND mincountOrRef IN (-24089);

-- NPC LOOT - (Level: 57-58 Purple Loot) - (Item Levels: 62-63) - NPC Levels Approx 57-71
UPDATE creature_loot_template SET ChanceOrQuestChance='0.0001' WHERE ChanceOrQuestChance='0.1' AND mincountOrRef IN (-24090);

-- NPC LOOT - (Level: 59-60 Purple Loot) - (Item Levels: 64-65) - NPC Levels Approx 60-63
UPDATE creature_loot_template SET ChanceOrQuestChance='0.0001' WHERE ChanceOrQuestChance='0.1' AND mincountOrRef IN (-24091);

-- NPC LOOT - (Level: 0 Green Formula/Design Loot) - (Item Levels: 69-72) - NPC Levels Approx 60-73
UPDATE creature_loot_template SET ChanceOrQuestChance='0.05' WHERE ChanceOrQuestChance='0.5' AND mincountOrRef IN (-24092);

-- NPC LOOT - (Level: 0 Green/Blue/Purple Formula/Design Loot) - (Item Levels: 73) - NPC Levels Approx 63-73
UPDATE creature_loot_template SET ChanceOrQuestChance='0.0001' WHERE ChanceOrQuestChance='0.5' AND mincountOrRef IN (-24093);









