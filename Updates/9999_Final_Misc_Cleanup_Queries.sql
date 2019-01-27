-- ===============================================================================================
-- TEMP FIX: APPLY WORLD LOOT TEMPLATES TO SINGLE NPC TO CLEAR ALL FALSE CONSOLE ERRORS ON STARTUP - WAYPOINT NPC HAS ALL REFERENCE LOOT TEMPLATES ASSIGNED
-- ===============================================================================================
UPDATE `creature_template` SET `LootId` = 1 WHERE `entry` = 1;
DELETE FROM `creature_loot_template` WHERE `entry` = 1;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(1, 12004, 1, 1, -12004, 1, 0, 'Uncommon & Rare Gem - TBC'),
(1, 12005, 1, 1, -12005, 1, 0, 'Epic Gem - TBC'),
(1, 25030, 1, 1, -25030, 1, 0, 'Blade\'s Edge Mountains (Boss Loot) - Jewelcrafting Design'),
(1, 34010, 1, 1, -34010, 1, 0, ''),
(1, 36196, 1, 1, -36196, 1, 0, 'Hyjal Summit (Trash Loot) - Epic Items'),
(1, 36197, 1, 1, -36197, 1, 0, 'Hyjal Summit (Trash Loot) - Profession (-Pattern,-Plans)'),
(1, 36198, 1, 1, -36198, 1, 0, 'Black Temple (Trash Loot) - Epic Items'),
(1, 36199, 1, 1, -36199, 1, 0, 'Black Temple (Trash Loot) - Profession (-Pattern,-Plans)'),
(1, 42009, 1, 0, -42009, 1, 0, 'Super Healing/Mana Potion (75%)(25%) - TBC'),
(1, 49000, 1, 0, -49000, 1, 0, 'Darkmoon Cards (Blessings, Storms, Furies, Lunacy Ace) - Dungeon End Bosses (Levels: 70+)'),
(1, 49001, 1, 0, -49001, 1, 0, 'Darkmoon Cards (Blessings, Storms, Furies, Lunacy 5-8) - Heroic Dungeon and Raids'),
(1, 49002, 1, 0, -49002, 1, 0, 'Darkmoon Cards (Blessings, Storms, Furies, Lunacy 2-4) - Not In Dungeons and Raids'),
(1, 50501, 1, 0, -50501, 1, 0, 'NPC LOOT - Profession (-Design,-Formula,-Pattern,-Plans,-Recipe,-Schematic) - NPC Level 68+ Elite'),
(1, 50502, 1, 0, -50502, 1, 0, 'NPC LOOT (Green World Drop) - (Item Levels: 10-15 (Profession Recipes)) - (NPC Levels: 6-20)'),
(1, 50600, 1, 0, -50600, 1, 0, 'NPC LOOT (White World Drop) - (Item Levels: 20 (Scrolls I)) - (NPC Levels 10-25)'),
(1, 50601, 1, 0, -50601, 1, 0, 'NPC LOOT (White World Drop) - (Item Levels: 35 (Scrolls II)) - (NPC Levels 25-40)'),
(1, 50602, 1, 0, -50602, 1, 0, 'NPC LOOT (White World Drop) - (Item Levels: 50 (Scrolls III)) - (NPC Levels 40-55)'),
(1, 50603, 1, 0, -50603, 1, 0, 'NPC LOOT (White World Drop) - (Item Levels: 65 (Scrolls IV)) - (NPC Levels 55-62)'),
(1, 50604, 1, 0, -50604, 1, 0, 'Scrolls V - (NPC Levels 58-72) - TBC'),
(1, 60000, 1, 0, -60000, 1, 0, 'NPC LOOT (Grey World Drop) - (Item Levels: 1-5) - (NPC Levels: 1-5)'),
(1, 60001, 1, 0, -60001, 1, 0, 'NPC LOOT (Grey World Drop) - (Item Levels: 6-10) - (NPC Levels: 6-10)'),
(1, 60002, 1, 0, -60002, 1, 0, 'NPC LOOT (Grey World Drop) - (Item Levels: 11-15) - (NPC Levels: 11-15)'),
(1, 60003, 1, 0, -60003, 1, 0, 'NPC LOOT (Grey World Drop) - (Item Levels: 16-20) - (NPC Levels: 16-20)'),
(1, 60004, 1, 0, -60004, 1, 0, 'NPC LOOT (Grey World Drop) - (Item Levels: 21-25) - (NPC Levels: 21-25)'),
(1, 60005, 1, 0, -60005, 1, 0, 'NPC LOOT (Grey World Drop) - (Item Levels: 26-30) - (NPC Levels: 26-30)'),
(1, 60006, 1, 0, -60006, 1, 0, 'NPC LOOT (Grey World Drop) - (Item Levels: 31-40) - (NPC Levels: 31-40)'),
(1, 60007, 1, 0, -60007, 1, 0, 'NPC LOOT (Grey World Drop) - (Item Levels: 41-50) - (NPC Levels: 41-50)'),
(1, 60008, 1, 0, -60008, 1, 0, 'NPC LOOT (Grey World Drop) - (Item Levels: 51-60) - (NPC Levels: 51-60) - VANILLA NPC ONLY'),
(1, 60100, 1, 0, -60100, 1, 0, 'NPC LOOT (Green World Drop) - (Item Levels: 7-12) - (NPC Levels: 8)'),
(1, 60101, 1, 0, -60101, 1, 0, 'NPC LOOT (Green World Drop) - (Item Levels: 7-12) - (NPC Levels: 8-9)'),
(1, 60102, 1, 0, -60102, 1, 0, 'NPC LOOT (Green World Drop) - (Item Levels: 8-12) - (NPC Levels: 9)'),
(1, 60103, 1, 0, -60103, 1, 0, 'NPC LOOT (Green World Drop) - (Item Levels: 8-13) - (NPC Levels: 9-10)'),
(1, 60104, 1, 0, -60104, 1, 0, 'NPC LOOT (Green World Drop) - (Item Levels: 9-13) - (NPC Levels: 10)'),
(1, 60105, 1, 0, -60105, 1, 0, 'NPC LOOT (Green World Drop) - (Item Levels: 9-14) - (NPC Levels: 10-11)'),
(1, 60106, 1, 0, -60106, 1, 0, 'NPC LOOT (Green World Drop) - (Item Levels: 10-14) - (NPC Levels: 11)'),
(1, 60107, 1, 0, -60107, 1, 0, 'NPC LOOT (Green World Drop) - (Item Levels: 10-15) - (NPC Levels: 11-12)'),
(1, 60108, 1, 0, -60108, 1, 0, 'NPC LOOT (Green World Drop) - (Item Levels: 11-15) - (NPC Levels: 12)'),
(1, 60109, 1, 0, -60109, 1, 0, 'NPC LOOT (Green World Drop) - (Item Levels: 11-16) - (NPC Levels: 12-13)'),
(1, 60110, 1, 0, -60110, 1, 0, 'NPC LOOT (Green World Drop) - (Item Levels: 12-16) - (NPC Levels: 13)'),
(1, 60111, 1, 0, -60111, 1, 0, 'NPC LOOT (Green World Drop) - (Item Levels: 12-17) - (NPC Levels: 13-14)'),
(1, 60112, 1, 0, -60112, 1, 0, 'NPC LOOT (Green World Drop) - (Item Levels: 13-17) - (NPC Levels: 14)'),
(1, 60113, 1, 0, -60113, 1, 0, 'NPC LOOT (Green World Drop) - (Item Levels: 13-18) - (NPC Levels: 14-15)'),
(1, 60114, 1, 0, -60114, 1, 0, 'NPC LOOT (Green World Drop) - (Item Levels: 14-18) - (NPC Levels: 15)'),
(1, 60115, 1, 0, -60115, 1, 0, 'NPC LOOT (Green World Drop) - (Item Levels: 14-19) - (NPC Levels: 15-16)'),
(1, 60116, 1, 0, -60116, 1, 0, 'NPC LOOT (Green World Drop) - (Item Levels: 15-19) - (NPC Levels: 16)'),
(1, 60117, 1, 0, -60117, 1, 0, 'NPC LOOT (Green World Drop) - (Item Levels: 15-20) - (NPC Levels: 16-17)'),
(1, 60118, 1, 0, -60118, 1, 0, 'NPC LOOT (Green World Drop) - (Item Levels: 16-20) - (NPC Levels: 17)'),
(1, 60119, 1, 0, -60119, 1, 0, 'NPC LOOT (Green World Drop) - (Item Levels: 16-21) - (NPC Levels: 17-18)'),
(1, 60120, 1, 0, -60120, 1, 0, 'NPC LOOT (Green World Drop) - (Item Levels: 17-21) - (NPC Levels: 18)'),
(1, 60121, 1, 0, -60121, 1, 0, 'NPC LOOT (Green World Drop) - (Item Levels: 17-22) - (NPC Levels: 18-19)'),
(1, 60122, 1, 0, -60122, 1, 0, 'NPC LOOT (Green World Drop) - (Item Levels: 18-22) - (NPC Levels: 19)'),
(1, 60123, 1, 0, -60123, 1, 0, 'NPC LOOT (Green World Drop) - (Item Levels: 18-23) - (NPC Levels: 19-20)'),
(1, 60124, 1, 0, -60124, 1, 0, 'NPC LOOT (Green World Drop) - (Item Levels: 19-23) - (NPC Levels: 20)'),
(1, 60125, 1, 0, -60125, 1, 0, 'NPC LOOT (Green World Drop) - (Item Levels: 19-24) - (NPC Levels: 20-21)'),
(1, 60126, 1, 0, -60126, 1, 0, 'NPC LOOT (Green World Drop) - (Item Levels: 20-24) - (NPC Levels: 21)'),
(1, 60127, 1, 0, -60127, 1, 0, 'NPC LOOT (Green World Drop) - (Item Levels: 20-25) - (NPC Levels: 21-22)'),
(1, 60128, 1, 0, -60128, 1, 0, 'NPC LOOT (Green World Drop) - (Item Levels: 21-25) - (NPC Levels: 22)'),
(1, 60129, 1, 0, -60129, 1, 0, 'NPC LOOT (Green World Drop) - (Item Levels: 21-26) - (NPC Levels: 22-23)'),
(1, 60130, 1, 0, -60130, 1, 0, 'NPC LOOT (Green World Drop) - (Item Levels: 22-26) - (NPC Levels: 23)'),
(1, 60131, 1, 0, -60131, 1, 0, 'NPC LOOT (Green World Drop) - (Item Levels: 22-27) - (NPC Levels: 23-24)'),
(1, 60132, 1, 0, -60132, 1, 0, 'NPC LOOT (Green World Drop) - (Item Levels: 23-27) - (NPC Levels: 24)'),
(1, 60133, 1, 0, -60133, 1, 0, 'NPC LOOT (Green World Drop) - (Item Levels: 23-28) - (NPC Levels: 24-25)'),
(1, 60134, 1, 0, -60134, 1, 0, 'NPC LOOT (Green World Drop) - (Item Levels: 24-28) - (NPC Levels: 25)'),
(1, 60135, 1, 0, -60135, 1, 0, 'NPC LOOT (Green World Drop) - (Item Levels: 24-29) - (NPC Levels: 25-26)'),
(1, 60136, 1, 0, -60136, 1, 0, 'NPC LOOT (Green World Drop) - (Item Levels: 25-29) - (NPC Levels: 26)'),
(1, 60137, 1, 0, -60137, 1, 0, 'NPC LOOT (Green World Drop) - (Item Levels: 25-30) - (NPC Levels: 26-27)'),
(1, 60138, 1, 0, -60138, 1, 0, 'NPC LOOT (Green World Drop) - (Item Levels: 26-30) - (NPC Levels: 27)'),
(1, 60139, 1, 0, -60139, 1, 0, 'NPC LOOT (Green World Drop) - (Item Levels: 26-31) - (NPC Levels: 27-28)'),
(1, 60140, 1, 0, -60140, 1, 0, 'NPC LOOT (Green World Drop) - (Item Levels: 27-31) - (NPC Levels: 28)'),
(1, 60141, 1, 0, -60141, 1, 0, 'NPC LOOT (Green World Drop) - (Item Levels: 27-32) - (NPC Levels: 28-29)'),
(1, 60142, 1, 0, -60142, 1, 0, 'NPC LOOT (Green World Drop) - (Item Levels: 28-32) - (NPC Levels: 29)'),
(1, 60143, 1, 0, -60143, 1, 0, 'NPC LOOT (Green World Drop) - (Item Levels: 28-33) - (NPC Levels: 29-30)'),
(1, 60144, 1, 0, -60144, 1, 0, 'NPC LOOT (Green World Drop) - (Item Levels: 29-33) - (NPC Levels: 30)'),
(1, 60145, 1, 0, -60145, 1, 0, 'NPC LOOT (Green World Drop) - (Item Levels: 29-34) - (NPC Levels: 30-31)'),
(1, 60146, 1, 0, -60146, 1, 0, 'NPC LOOT (Green World Drop) - (Item Levels: 30-34) - (NPC Levels: 31)'),
(1, 60147, 1, 0, -60147, 1, 0, 'NPC LOOT (Green World Drop) - (Item Levels: 30-35) - (NPC Levels: 31-32)'),
(1, 60148, 1, 0, -60148, 1, 0, 'NPC LOOT (Green World Drop) - (Item Levels: 31-35) - (NPC Levels: 32)'),
(1, 60149, 1, 0, -60149, 1, 0, 'NPC LOOT (Green World Drop) - (Item Levels: 31-36) - (NPC Levels: 32-33)'),
(1, 60150, 1, 0, -60150, 1, 0, 'NPC LOOT (Green World Drop) - (Item Levels: 32-36) - (NPC Levels: 33)'),
(1, 60151, 1, 0, -60151, 1, 0, 'NPC LOOT (Green World Drop) - (Item Levels: 32-37) - (NPC Levels: 33-34)'),
(1, 60152, 1, 0, -60152, 1, 0, 'NPC LOOT (Green World Drop) - (Item Levels: 33-37) - (NPC Levels: 34)'),
(1, 60153, 1, 0, -60153, 1, 0, 'NPC LOOT (Green World Drop) - (Item Levels: 33-38) - (NPC Levels: 34-35)'),
(1, 60154, 1, 0, -60154, 1, 0, 'NPC LOOT (Green World Drop) - (Item Levels: 34-38) - (NPC Levels: 35)'),
(1, 60155, 1, 0, -60155, 1, 0, 'NPC LOOT (Green World Drop) - (Item Levels: 34-39) - (NPC Levels: 35-36)'),
(1, 60156, 1, 0, -60156, 1, 0, 'NPC LOOT (Green World Drop) - (Item Levels: 35-39) - (NPC Levels: 36)'),
(1, 60157, 1, 0, -60157, 1, 0, 'NPC LOOT (Green World Drop) - (Item Levels: 35-40) - (NPC Levels: 36-37)'),
(1, 60158, 1, 0, -60158, 1, 0, 'NPC LOOT (Green World Drop) - (Item Levels: 36-40) - (NPC Levels: 37)'),
(1, 60159, 1, 0, -60159, 1, 0, 'NPC LOOT (Green World Drop) - (Item Levels: 36-41) - (NPC Levels: 37-38)'),
(1, 60160, 1, 0, -60160, 1, 0, 'NPC LOOT (Green World Drop) - (Item Levels: 37-41) - (NPC Levels: 38)'),
(1, 60161, 1, 0, -60161, 1, 0, 'NPC LOOT (Green World Drop) - (Item Levels: 37-42) - (NPC Levels: 38-39)'),
(1, 60162, 1, 0, -60162, 1, 0, 'NPC LOOT (Green World Drop) - (Item Levels: 38-42) - (NPC Levels: 39)'),
(1, 60163, 1, 0, -60163, 1, 0, 'NPC LOOT (Green World Drop) - (Item Levels: 38-43) - (NPC Levels: 39-40)'),
(1, 60164, 1, 0, -60164, 1, 0, 'NPC LOOT (Green World Drop) - (Item Levels: 39-43) - (NPC Levels: 40)'),
(1, 60165, 1, 0, -60165, 1, 0, 'NPC LOOT (Green World Drop) - (Item Levels: 39-44) - (NPC Levels: 40-41)'),
(1, 60166, 1, 0, -60166, 1, 0, 'NPC LOOT (Green World Drop) - (Item Levels: 40-44) - (NPC Levels: 41)'),
(1, 60167, 1, 0, -60167, 1, 0, 'NPC LOOT (Green World Drop) - (Item Levels: 40-45) - (NPC Levels: 41-42)'),
(1, 60168, 1, 0, -60168, 1, 0, 'NPC LOOT (Green World Drop) - (Item Levels: 41-45) - (NPC Levels: 42)'),
(1, 60169, 1, 0, -60169, 1, 0, 'NPC LOOT (Green World Drop) - (Item Levels: 41-46) - (NPC Levels: 42-43)'),
(1, 60170, 1, 0, -60170, 1, 0, 'NPC LOOT (Green World Drop) - (Item Levels: 42-46) - (NPC Levels: 43)'),
(1, 60171, 1, 0, -60171, 1, 0, 'NPC LOOT (Green World Drop) - (Item Levels: 42-47) - (NPC Levels: 43-44)'),
(1, 60172, 1, 0, -60172, 1, 0, 'NPC LOOT (Green World Drop) - (Item Levels: 43-47) - (NPC Levels: 44)'),
(1, 60173, 1, 0, -60173, 1, 0, 'NPC LOOT (Green World Drop) - (Item Levels: 43-48) - (NPC Levels: 44-45)'),
(1, 60174, 1, 0, -60174, 1, 0, 'NPC LOOT (Green World Drop) - (Item Levels: 44-48) - (NPC Levels: 45)'),
(1, 60175, 1, 0, -60175, 1, 0, 'NPC LOOT (Green World Drop) - (Item Levels: 44-49) - (NPC Levels: 45-46)'),
(1, 60176, 1, 0, -60176, 1, 0, 'NPC LOOT (Green World Drop) - (Item Levels: 45-50) - (NPC Levels: 46)'),
(1, 60177, 1, 0, -60177, 1, 0, 'NPC LOOT (Green World Drop) - (Item Levels: 46-50) - (NPC Levels: 46-47)'),
(1, 60178, 1, 0, -60178, 1, 0, 'NPC LOOT (Green World Drop) - (Item Levels: 46-51) - (NPC Levels: 47)'),
(1, 60179, 1, 0, -60179, 1, 0, 'NPC LOOT (Green World Drop) - (Item Levels: 47-51) - (NPC Levels: 47-48)'),
(1, 60180, 1, 0, -60180, 1, 0, 'NPC LOOT (Green World Drop) - (Item Levels: 47-52) - (NPC Levels: 48)'),
(1, 60181, 1, 0, -60181, 1, 0, 'NPC LOOT (Green World Drop) - (Item Levels: 48-52) - (NPC Levels: 48-49)'),
(1, 60182, 1, 0, -60182, 1, 0, 'NPC LOOT (Green World Drop) - (Item Levels: 48-52) - (NPC Levels: 49)'),
(1, 60183, 1, 0, -60183, 1, 0, 'NPC LOOT (Green World Drop) - (Item Levels: 48-53) - (NPC Levels: 49-50)'),
(1, 60184, 1, 0, -60184, 1, 0, 'NPC LOOT (Green World Drop) - (Item Levels: 49-53) - (NPC Levels: 50)'),
(1, 60185, 1, 0, -60185, 1, 0, 'NPC LOOT (Green World Drop) - (Item Levels: 49-54) - (NPC Levels: 50-51)'),
(1, 60186, 1, 0, -60186, 1, 0, 'NPC LOOT (Green World Drop) - (Item Levels: 50-54) - (NPC Levels: 51)'),
(1, 60187, 1, 0, -60187, 1, 0, 'NPC LOOT (Green World Drop) - (Item Levels: 50-55) - (NPC Levels: 51-52)'),
(1, 60188, 1, 0, -60188, 1, 0, 'NPC LOOT (Green World Drop) - (Item Levels: 51-55) - (NPC Levels: 52)'),
(1, 60189, 1, 0, -60189, 1, 0, 'NPC LOOT (Green World Drop) - (Item Levels: 51-56) - (NPC Levels: 52-53)'),
(1, 60190, 1, 0, -60190, 1, 0, 'NPC LOOT (Green World Drop) - (Item Levels: 52-56) - (NPC Levels: 53)'),
(1, 60191, 1, 0, -60191, 1, 0, 'NPC LOOT (Green World Drop) - (Item Levels: 52-57) - (NPC Levels: 53-54)'),
(1, 60192, 1, 0, -60192, 1, 0, 'NPC LOOT (Green World Drop) - (Item Levels: 53-57) - (NPC Levels: 54)'),
(1, 60193, 1, 0, -60193, 1, 0, 'NPC LOOT (Green World Drop) - (Item Levels: 53-58) - (NPC Levels: 54-55)'),
(1, 60194, 1, 0, -60194, 1, 0, 'NPC LOOT (Green World Drop) - (Item Levels: 54-58) - (NPC Levels: 55)'),
(1, 60195, 1, 0, -60195, 1, 0, 'NPC LOOT (Green World Drop) - (Item Levels: 54-59) - (NPC Levels: 55-56)'),
(1, 60196, 1, 0, -60196, 1, 0, 'NPC LOOT (Green World Drop) - (Item Levels: 55-59) - (NPC Levels: 56)'),
(1, 60197, 1, 0, -60197, 1, 0, 'NPC LOOT (Green World Drop) - (Item Levels: 55-60) - (NPC Levels: 56-57)'),
(1, 60198, 1, 0, -60198, 1, 0, 'NPC LOOT (Green World Drop) - (Item Levels: 56-60) - (NPC Levels: 57)'),
(1, 60199, 1, 0, -60199, 1, 0, 'NPC LOOT (Green World Drop) - (Item Levels: 56-61) - (NPC Levels: 57-58) - VANILLA NPC ONLY'),
(1, 60200, 1, 0, -60200, 1, 0, 'NPC LOOT (Blue World Drop) - (Item Levels: 20) - (NPC Levels: 20)'),
(1, 60201, 1, 0, -60201, 1, 0, 'NPC LOOT (Blue World Drop) - (Item Levels: 20-23) - (NPC Levels: 20-21)'),
(1, 60202, 1, 0, -60202, 1, 0, 'NPC LOOT (Blue World Drop) - (Item Levels: 20-23) - (NPC Levels: 21)'),
(1, 60203, 1, 0, -60203, 1, 0, 'NPC LOOT (Blue World Drop) - (Item Levels: 20-23) - (NPC Levels: 21-22)'),
(1, 60204, 1, 0, -60204, 1, 0, 'NPC LOOT (Blue World Drop) - (Item Levels: 21-23) - (NPC Levels: 22)'),
(1, 60205, 1, 0, -60205, 1, 0, 'NPC LOOT (Blue World Drop) - (Item Levels: 21-25) - (NPC Levels: 22-23)'),
(1, 60206, 1, 0, -60206, 1, 0, 'NPC LOOT (Blue World Drop) - (Item Levels: 21-25) - (NPC Levels: 23)'),
(1, 60207, 1, 0, -60207, 1, 0, 'NPC LOOT (Blue World Drop) - (Item Levels: 21-26) - (NPC Levels: 23-24)'),
(1, 60208, 1, 0, -60208, 1, 0, 'NPC LOOT (Blue World Drop) - (Item Levels: 22-26) - (NPC Levels: 24)'),
(1, 60209, 1, 0, -60209, 1, 0, 'NPC LOOT (Blue World Drop) - (Item Levels: 22-27) - (NPC Levels: 24-25)'),
(1, 60210, 1, 0, -60210, 1, 0, 'NPC LOOT (Blue World Drop) - (Item Levels: 23-27) - (NPC Levels: 25)'),
(1, 60211, 1, 0, -60211, 1, 0, 'NPC LOOT (Blue World Drop) - (Item Levels: 23-28) - (NPC Levels: 25-26)'),
(1, 60212, 1, 0, -60212, 1, 0, 'NPC LOOT (Blue World Drop) - (Item Levels: 24-28) - (NPC Levels: 26)'),
(1, 60213, 1, 0, -60213, 1, 0, 'NPC LOOT (Blue World Drop) - (Item Levels: 24-29) - (NPC Levels: 26-27)'),
(1, 60214, 1, 0, -60214, 1, 0, 'NPC LOOT (Blue World Drop) - (Item Levels: 25-29) - (NPC Levels: 27)'),
(1, 60215, 1, 0, -60215, 1, 0, 'NPC LOOT (Blue World Drop) - (Item Levels: 25-30) - (NPC Levels: 27-28)'),
(1, 60216, 1, 0, -60216, 1, 0, 'NPC LOOT (Blue World Drop) - (Item Levels: 26-30) - (NPC Levels: 28)'),
(1, 60217, 1, 0, -60217, 1, 0, 'NPC LOOT (Blue World Drop) - (Item Levels: 26-31) - (NPC Levels: 28-29)'),
(1, 60218, 1, 0, -60218, 1, 0, 'NPC LOOT (Blue World Drop) - (Item Levels: 27-31) - (NPC Levels: 29)'),
(1, 60219, 1, 0, -60219, 1, 0, 'NPC LOOT (Blue World Drop) - (Item Levels: 27-32) - (NPC Levels: 29-30)'),
(1, 60220, 1, 0, -60220, 1, 0, 'NPC LOOT (Blue World Drop) - (Item Levels: 28-32) - (NPC Levels: 30)'),
(1, 60221, 1, 0, -60221, 1, 0, 'NPC LOOT (Blue World Drop) - (Item Levels: 28-33) - (NPC Levels: 30-31)'),
(1, 60222, 1, 0, -60222, 1, 0, 'NPC LOOT (Blue World Drop) - (Item Levels: 29-33) - (NPC Levels: 31)'),
(1, 60223, 1, 0, -60223, 1, 0, 'NPC LOOT (Blue World Drop) - (Item Levels: 29-34) - (NPC Levels: 31-32)'),
(1, 60224, 1, 0, -60224, 1, 0, 'NPC LOOT (Blue World Drop) - (Item Levels: 30-34) - (NPC Levels: 32)'),
(1, 60225, 1, 0, -60225, 1, 0, 'NPC LOOT (Blue World Drop) - (Item Levels: 30-35) - (NPC Levels: 32-33)'),
(1, 60226, 1, 0, -60226, 1, 0, 'NPC LOOT (Blue World Drop) - (Item Levels: 31-35) - (NPC Levels: 33)'),
(1, 60227, 1, 0, -60227, 1, 0, 'NPC LOOT (Blue World Drop) - (Item Levels: 31-36) - (NPC Levels: 33-34)'),
(1, 60228, 1, 0, -60228, 1, 0, 'NPC LOOT (Blue World Drop) - (Item Levels: 32-36) - (NPC Levels: 34)'),
(1, 60229, 1, 0, -60229, 1, 0, 'NPC LOOT (Blue World Drop) - (Item Levels: 32-36) - (NPC Levels: 34-35)'),
(1, 60230, 1, 0, -60230, 1, 0, 'NPC LOOT (Blue World Drop) - (Item Levels: 33-37) - (NPC Levels: 35)'),
(1, 60231, 1, 0, -60231, 1, 0, 'NPC LOOT (Blue World Drop) - (Item Levels: 33-38) - (NPC Levels: 35-36)'),
(1, 60232, 1, 0, -60232, 1, 0, 'NPC LOOT (Blue World Drop) - (Item Levels: 34-38) - (NPC Levels: 36)'),
(1, 60233, 1, 0, -60233, 1, 0, 'NPC LOOT (Blue World Drop) - (Item Levels: 34-39) - (NPC Levels: 36-37)'),
(1, 60234, 1, 0, -60234, 1, 0, 'NPC LOOT (Blue World Drop) - (Item Levels: 35-39) - (NPC Levels: 37)'),
(1, 60235, 1, 0, -60235, 1, 0, 'NPC LOOT (Blue World Drop) - (Item Levels: 35-40) - (NPC Levels: 37-38)'),
(1, 60236, 1, 0, -60236, 1, 0, 'NPC LOOT (Blue World Drop) - (Item Levels: 36-40) - (NPC Levels: 38)'),
(1, 60237, 1, 0, -60237, 1, 0, 'NPC LOOT (Blue World Drop) - (Item Levels: 36-41) - (NPC Levels: 38-39)'),
(1, 60238, 1, 0, -60238, 1, 0, 'NPC LOOT (Blue World Drop) - (Item Levels: 37-41) - (NPC Levels: 39)'),
(1, 60239, 1, 0, -60239, 1, 0, 'NPC LOOT (Blue World Drop) - (Item Levels: 37-42) - (NPC Levels: 39-40)'),
(1, 60240, 1, 0, -60240, 1, 0, 'NPC LOOT (Blue World Drop) - (Item Levels: 38-42) - (NPC Levels: 40)'),
(1, 60241, 1, 0, -60241, 1, 0, 'NPC LOOT (Blue World Drop) - (Item Levels: 38-43) - (NPC Levels: 40-41)'),
(1, 60242, 1, 0, -60242, 1, 0, 'NPC LOOT (Blue World Drop) - (Item Levels: 39-43) - (NPC Levels: 41)'),
(1, 60243, 1, 0, -60243, 1, 0, 'NPC LOOT (Blue World Drop) - (Item Levels: 39-44) - (NPC Levels: 41-42)'),
(1, 60244, 1, 0, -60244, 1, 0, 'NPC LOOT (Blue World Drop) - (Item Levels: 40-44) - (NPC Levels: 42)'),
(1, 60245, 1, 0, -60245, 1, 0, 'NPC LOOT (Blue World Drop) - (Item Levels: 40-45) - (NPC Levels: 42-43)'),
(1, 60246, 1, 0, -60246, 1, 0, 'NPC LOOT (Blue World Drop) - (Item Levels: 41-45) - (NPC Levels: 43)'),
(1, 60247, 1, 0, -60247, 1, 0, 'NPC LOOT (Blue World Drop) - (Item Levels: 41-46) - (NPC Levels: 43-44)'),
(1, 60248, 1, 0, -60248, 1, 0, 'NPC LOOT (Blue World Drop) - (Item Levels: 42-46) - (NPC Levels: 44)'),
(1, 60249, 1, 0, -60249, 1, 0, 'NPC LOOT (Blue World Drop) - (Item Levels: 42-47) - (NPC Levels: 44-45)'),
(1, 60250, 1, 0, -60250, 1, 0, 'NPC LOOT (Blue World Drop) - (Item Levels: 43-47) - (NPC Levels: 45)'),
(1, 60251, 1, 0, -60251, 1, 0, 'NPC LOOT (Blue World Drop) - (Item Levels: 43-48) - (NPC Levels: 45-46)'),
(1, 60252, 1, 0, -60252, 1, 0, 'NPC LOOT (Blue World Drop) - (Item Levels: 44-48) - (NPC Levels: 46)'),
(1, 60253, 1, 0, -60253, 1, 0, 'NPC LOOT (Blue World Drop) - (Item Levels: 44-49) - (NPC Levels: 46-47)'),
(1, 60254, 1, 0, -60254, 1, 0, 'NPC LOOT (Blue World Drop) - (Item Levels: 45-49) - (NPC Levels: 47)'),
(1, 60255, 1, 0, -60255, 1, 0, 'NPC LOOT (Blue World Drop) - (Item Levels: 45-50) - (NPC Levels: 47-48)'),
(1, 60256, 1, 0, -60256, 1, 0, 'NPC LOOT (Blue World Drop) - (Item Levels: 46-50) - (NPC Levels: 48)'),
(1, 60257, 1, 0, -60257, 1, 0, 'NPC LOOT (Blue World Drop) - (Item Levels: 46-51) - (NPC Levels: 48-49)'),
(1, 60258, 1, 0, -60258, 1, 0, 'NPC LOOT (Blue World Drop) - (Item Levels: 47-51) - (NPC Levels: 49)'),
(1, 60259, 1, 0, -60259, 1, 0, 'NPC LOOT (Blue World Drop) - (Item Levels: 47-52) - (NPC Levels: 49-50)'),
(1, 60260, 1, 0, -60260, 1, 0, 'NPC LOOT (Blue World Drop) - (Item Levels: 48-52) - (NPC Levels: 50)'),
(1, 60261, 1, 0, -60261, 1, 0, 'NPC LOOT (Blue World Drop) - (Item Levels: 48-53) - (NPC Levels: 50-51)'),
(1, 60262, 1, 0, -60262, 1, 0, 'NPC LOOT (Blue World Drop) - (Item Levels: 49-53) - (NPC Levels: 51)'),
(1, 60263, 1, 0, -60263, 1, 0, 'NPC LOOT (Blue World Drop) - (Item Levels: 49-54) - (NPC Levels: 51-52)'),
(1, 60264, 1, 0, -60264, 1, 0, 'NPC LOOT (Blue World Drop) - (Item Levels: 50-54) - (NPC Levels: 52)'),
(1, 60265, 1, 0, -60265, 1, 0, 'NPC LOOT (Blue World Drop) - (Item Levels: 50-55) - (NPC Levels: 52-53)'),
(1, 60266, 1, 0, -60266, 1, 0, 'NPC LOOT (Blue World Drop) - (Item Levels: 51-55) - (NPC Levels: 53)'),
(1, 60267, 1, 0, -60267, 1, 0, 'NPC LOOT (Blue World Drop) - (Item Levels: 51-56) - (NPC Levels: 53-54)'),
(1, 60268, 1, 0, -60268, 1, 0, 'NPC LOOT (Blue World Drop) - (Item Levels: 52-56) - (NPC Levels: 54)'),
(1, 60269, 1, 0, -60269, 1, 0, 'NPC LOOT (Blue World Drop) - (Item Levels: 52-57) - (NPC Levels: 54-55)'),
(1, 60270, 1, 0, -60270, 1, 0, 'NPC LOOT (Blue World Drop) - (Item Levels: 53-57) - (NPC Levels: 55)'),
(1, 60271, 1, 0, -60271, 1, 0, 'NPC LOOT (Blue World Drop) - (Item Levels: 53-58) - (NPC Levels: 55-56)'),
(1, 60272, 1, 0, -60272, 1, 0, 'NPC LOOT (Blue World Drop) - (Item Levels: 54-58) - (NPC Levels: 56)'),
(1, 60273, 1, 0, -60273, 1, 0, 'NPC LOOT (Blue World Drop) - (Item Levels: 54-59) - (NPC Levels: 56-57)'),
(1, 60274, 1, 0, -60274, 1, 0, 'NPC LOOT (Blue World Drop) - (Item Levels: 55-59) - (NPC Levels: 57)'),
(1, 60275, 1, 0, -60275, 1, 0, 'NPC LOOT (Blue World Drop) - (Item Levels: 55-60) - (NPC Levels: 57-58) - VANILLA NPC ONLY'),
(1, 60276, 1, 0, -60276, 1, 0, 'NPC LOOT (Blue World Drop) - (Item Levels: 56-60) - (NPC Levels: 58) - VANILLA NPC ONLY'),
(1, 60277, 1, 0, -60277, 1, 0, 'NPC LOOT (Blue World Drop) - (Item Levels: 56-60) - (NPC Levels: 58-59) - VANILLA NPC ONLY'),
(1, 60278, 1, 0, -60278, 1, 0, 'NPC LOOT (Blue World Drop) - (Item Levels: 56-60) - (NPC Levels: 59) - VANILLA NPC ONLY'),
(1, 60279, 1, 0, -60279, 1, 0, 'NPC LOOT (Blue World Drop) - (Item Levels: 56-60) - (NPC Levels: 59-60) - VANILLA NPC ONLY'),
(1, 60280, 1, 0, -60280, 1, 0, 'NPC LOOT (Blue World Drop) - (Item Levels: 56-60) - (NPC Levels: 60) - VANILLA NPC ONLY'),
(1, 60281, 1, 0, -60281, 1, 0, 'NPC LOOT (Blue World Drop) - (Item Levels: 56-60) - (NPC Levels: 60-61) - VANILLA NPC ONLY'),
(1, 60282, 1, 0, -60282, 1, 0, 'NPC LOOT (Blue World Drop) - (Item Levels: 56-60) - (NPC Levels: 61) - VANILLA NPC ONLY'),
(1, 60283, 1, 0, -60283, 1, 0, 'NPC LOOT (Blue World Drop) - (Item Levels: 56-60) - (NPC Levels: 61-62) - VANILLA NPC ONLY'),
(1, 60284, 1, 0, -60284, 1, 0, 'NPC LOOT (Blue World Drop) - (Item Levels: 56-60) - (NPC Levels: 62) - VANILLA NPC ONLY'),
(1, 60290, 1, 0, -60290, 1, 0, 'NPC LOOT (Green World Drop) - (Item Levels: 57-61) - (NPC Levels: 58) - VANILLA NPC ONLY'),
(1, 60291, 1, 0, -60291, 1, 0, 'NPC LOOT (Green World Drop) - (Item Levels: 57-62) - (NPC Levels: 58-59) - VANILLA NPC ONLY'),
(1, 60292, 1, 0, -60292, 1, 0, 'NPC LOOT (Green World Drop) - (Item Levels: 58-62) - (NPC Levels: 59) - VANILLA NPC ONLY'),
(1, 60293, 1, 0, -60293, 1, 0, 'NPC LOOT (Green World Drop) - (Item Levels: 58-63) - (NPC Levels: 59-60) - VANILLA NPC ONLY'),
(1, 60294, 1, 0, -60294, 1, 0, 'NPC LOOT (Green World Drop) - (Item Levels: 59-63) - (NPC Levels: 60) - VANILLA NPC ONLY'),
(1, 60295, 1, 0, -60295, 1, 0, 'NPC LOOT (Green World Drop) - (Item Levels: 59-64) - (NPC Levels: 60-61) - VANILLA NPC ONLY'),
(1, 60296, 1, 0, -60296, 1, 0, 'NPC LOOT (Green World Drop) - (Item Levels: 60-64) - (NPC Levels: 61) - VANILLA NPC ONLY'),
(1, 60297, 1, 0, -60297, 1, 0, 'NPC LOOT (Green World Drop) - (Item Levels: 60-65) - (NPC Levels: 61-62) - VANILLA NPC ONLY'),
(1, 60298, 1, 0, -60298, 1, 0, 'NPC LOOT (Green World Drop) - (Item Levels: 61-65) - (NPC Levels: 62) - VANILLA NPC ONLY'),
(1, 60300, 1, 0, -60300, 1, 0, 'NPC LOOT (Purple World Drop) - (Item Levels: 40-41) - (NPC Levels: 40)'),
(1, 60301, 1, 0, -60301, 1, 0, 'NPC LOOT (Purple World Drop) - (Item Levels: 40-42) - (NPC Levels: 40-41)'),
(1, 60302, 1, 0, -60302, 1, 0, 'NPC LOOT (Purple World Drop) - (Item Levels: 40-42) - (NPC Levels: 41)'),
(1, 60303, 1, 0, -60303, 1, 0, 'NPC LOOT (Purple World Drop) - (Item Levels: 40-43) - (NPC Levels: 41-42)'),
(1, 60304, 1, 0, -60304, 1, 0, 'NPC LOOT (Purple World Drop) - (Item Levels: 41-43) - (NPC Levels: 42)'),
(1, 60305, 1, 0, -60305, 1, 0, 'NPC LOOT (Purple World Drop) - (Item Levels: 41-44) - (NPC Levels: 42-43)'),
(1, 60306, 1, 0, -60306, 1, 0, 'NPC LOOT (Purple World Drop) - (Item Levels: 42-44) - (NPC Levels: 43)'),
(1, 60307, 1, 0, -60307, 1, 0, 'NPC LOOT (Purple World Drop) - (Item Levels: 42-45) - (NPC Levels: 43-44)'),
(1, 60308, 1, 0, -60308, 1, 0, 'NPC LOOT (Purple World Drop) - (Item Levels: 43-45) - (NPC Levels: 44)'),
(1, 60309, 1, 0, -60309, 1, 0, 'NPC LOOT (Purple World Drop) - (Item Levels: 43-46) - (NPC Levels: 44-45)'),
(1, 60310, 1, 0, -60310, 1, 0, 'NPC LOOT (Purple World Drop) - (Item Levels: 44-46) - (NPC Levels: 45)'),
(1, 60311, 1, 0, -60311, 1, 0, 'NPC LOOT (Purple World Drop) - (Item Levels: 44-47) - (NPC Levels: 45-46)'),
(1, 60312, 1, 0, -60312, 1, 0, 'NPC LOOT (Purple World Drop) - (Item Levels: 45-47) - (NPC Levels: 46)'),
(1, 60313, 1, 0, -60313, 1, 0, 'NPC LOOT (Purple World Drop) - (Item Levels: 45-48) - (NPC Levels: 46-47)'),
(1, 60314, 1, 0, -60314, 1, 0, 'NPC LOOT (Purple World Drop) - (Item Levels: 46-48) - (NPC Levels: 47)'),
(1, 60315, 1, 0, -60315, 1, 0, 'NPC LOOT (Purple World Drop) - (Item Levels: 46-49) - (NPC Levels: 47-48)'),
(1, 60316, 1, 0, -60316, 1, 0, 'NPC LOOT (Purple World Drop) - (Item Levels: 47-49) - (NPC Levels: 48)'),
(1, 60317, 1, 0, -60317, 1, 0, 'NPC LOOT (Purple World Drop) - (Item Levels: 47-50) - (NPC Levels: 48-49)'),
(1, 60318, 1, 0, -60318, 1, 0, 'NPC LOOT (Purple World Drop) - (Item Levels: 48-50) - (NPC Levels: 49)'),
(1, 60319, 1, 0, -60319, 1, 0, 'NPC LOOT (Purple World Drop) - (Item Levels: 48-51) - (NPC Levels: 49-50)'),
(1, 60320, 1, 0, -60320, 1, 0, 'NPC LOOT (Purple World Drop) - (Item Levels: 49-51) - (NPC Levels: 50)'),
(1, 60321, 1, 0, -60321, 1, 0, 'NPC LOOT (Purple World Drop) - (Item Levels: 49-52) - (NPC Levels: 50-51)'),
(1, 60322, 1, 0, -60322, 1, 0, 'NPC LOOT (Purple World Drop) - (Item Levels: 50-52) - (NPC Levels: 51)'),
(1, 60323, 1, 0, -60323, 1, 0, 'NPC LOOT (Purple World Drop) - (Item Levels: 50-53) - (NPC Levels: 51-52)'),
(1, 60324, 1, 0, -60324, 1, 0, 'NPC LOOT (Purple World Drop) - (Item Levels: 51-53) - (NPC Levels: 52)'),
(1, 60325, 1, 0, -60325, 1, 0, 'NPC LOOT (Purple World Drop) - (Item Levels: 51-54) - (NPC Levels: 52-53)'),
(1, 60326, 1, 0, -60326, 1, 0, 'NPC LOOT (Purple World Drop) - (Item Levels: 52-54) - (NPC Levels: 53)'),
(1, 60327, 1, 0, -60327, 1, 0, 'NPC LOOT (Purple World Drop) - (Item Levels: 52-55) - (NPC Levels: 53-54)'),
(1, 60328, 1, 0, -60328, 1, 0, 'NPC LOOT (Purple World Drop) - (Item Levels: 53-55) - (NPC Levels: 54)'),
(1, 60329, 1, 0, -60329, 1, 0, 'NPC LOOT (Purple World Drop) - (Item Levels: 53-56) - (NPC Levels: 54-55)'),
(1, 60330, 1, 0, -60330, 1, 0, 'NPC LOOT (Purple World Drop) - (Item Levels: 54-56) - (NPC Levels: 55)'),
(1, 60331, 1, 0, -60331, 1, 0, 'NPC LOOT (Purple World Drop) - (Item Levels: 54-57) - (NPC Levels: 55-56)'),
(1, 60332, 1, 0, -60332, 1, 0, 'NPC LOOT (Purple World Drop) - (Item Levels: 55-57) - (NPC Levels: 56)'),
(1, 60333, 1, 0, -60333, 1, 0, 'NPC LOOT (Purple World Drop) - (Item Levels: 55-58) - (NPC Levels: 56-57)'),
(1, 60334, 1, 0, -60334, 1, 0, 'NPC LOOT (Purple World Drop) - (Item Levels: 56-58) - (NPC Levels: 57)'),
(1, 60335, 1, 0, -60335, 1, 0, 'NPC LOOT (Purple World Drop) - (Item Levels: 56-59) - (NPC Levels: 57-58) - VANILLA NPC ONLY'),
(1, 60336, 1, 0, -60336, 1, 0, 'NPC LOOT (Purple World Drop) - (Item Levels: 57-59) - (NPC Levels: 58) - VANILLA NPC ONLY'),
(1, 60337, 1, 0, -60337, 1, 0, 'NPC LOOT (Purple World Drop) - (Item Levels: 57-60) - (NPC Levels: 58-59) - VANILLA NPC ONLY'),
(1, 60338, 1, 0, -60338, 1, 0, 'NPC LOOT (Purple World Drop) - (Item Levels: 58-60) - (NPC Levels: 59) - VANILLA NPC ONLY'),
(1, 60339, 1, 0, -60339, 1, 0, 'NPC LOOT (Purple World Drop) - (Item Levels: 58-61) - (NPC Levels: 59-60) - VANILLA NPC ONLY'),
(1, 60340, 1, 0, -60340, 1, 0, 'NPC LOOT (Purple World Drop) - (Item Levels: 59-61) - (NPC Levels: 60) - VANILLA NPC ONLY'),
(1, 60341, 1, 0, -60341, 1, 0, 'NPC LOOT (Purple World Drop) - (Item Levels: 59-62) - (NPC Levels: 60-61) - VANILLA NPC ONLY'),
(1, 60342, 1, 0, -60342, 1, 0, 'NPC LOOT (Purple World Drop) - (Item Levels: 60-62) - (NPC Levels: 61) - VANILLA NPC ONLY'),
(1, 60343, 1, 0, -60343, 1, 0, 'NPC LOOT (Purple World Drop) - (Item Levels: 60-64) - (NPC Levels: 61-62) - VANILLA NPC ONLY'),
(1, 60344, 1, 0, -60344, 1, 0, 'NPC LOOT (Purple World Drop) - (Item Levels: 61-65) - (NPC Levels: 62) - VANILLA NPC ONLY'),
(1, 60345, 1, 0, -60345, 1, 0, 'NPC LOOT (Purple World Drop) - (Item Levels: 100) - (NPC Levels 70+) - (WORLD EPIC BOE) - TBC NPC ONLY'),
(1, 60346, 1, 0, -60346, 1, 0, 'NPC LOOT (Karazhan Zone Drop) - (Level: 70 Purple) - (Item Levels: 115) - NPC Levels 70+ (RAID EPIC BOP LOOT DROP)'),
(1, 60400, 1, 0, -60400, 1, 0, 'NPC LOOT (White World Drop) - (Item Levels: 5 Pouches Only) - (NPC Levels: 1-5)'),
(1, 60401, 1, 0, -60401, 1, 0, 'NPC LOOT (White World Drop) - (Item Levels: 7-10) - (NPC Levels: 5-6)'),
(1, 60402, 1, 0, -60402, 1, 0, 'NPC LOOT (White World Drop) - (Item Levels: 7-10) - (NPC Levels: 6)'),
(1, 60403, 1, 0, -60403, 1, 0, 'NPC LOOT (White World Drop) - (Item Levels: 7-11) - (NPC Levels: 6-7)'),
(1, 60404, 1, 0, -60404, 1, 0, 'NPC LOOT (White World Drop) - (Item Levels: 7-11) - (NPC Levels: 7)'),
(1, 60405, 1, 0, -60405, 1, 0, 'NPC LOOT (White World Drop) - (Item Levels: 7-12) - (NPC Levels: 7-8)'),
(1, 60406, 1, 0, -60406, 1, 0, 'NPC LOOT (White World Drop) - (Item Levels: 7-12) - (NPC Levels: 8)'),
(1, 60407, 1, 0, -60407, 1, 0, 'NPC LOOT (White World Drop) - (Item Levels: 7-12) - (NPC Levels: 8-9)'),
(1, 60408, 1, 0, -60408, 1, 0, 'NPC LOOT (White World Drop) - (Item Levels: 8-12) - (NPC Levels: 9)'),
(1, 60409, 1, 0, -60409, 1, 0, 'NPC LOOT (White World Drop) - (Item Levels: 8-13) - (NPC Levels: 9-10)'),
(1, 60410, 1, 0, -60410, 1, 0, 'NPC LOOT (White World Drop) - (Item Levels: 9-13) - (NPC Levels: 10)'),
(1, 60411, 1, 0, -60411, 1, 0, 'NPC LOOT (White World Drop) - (Item Levels: 9-14) - (NPC Levels: 10-11)'),
(1, 60412, 1, 0, -60412, 1, 0, 'NPC LOOT (White World Drop) - (Item Levels: 10-14) - (NPC Levels: 11)'),
(1, 60413, 1, 0, -60413, 1, 0, 'NPC LOOT (White World Drop) - (Item Levels: 10-14) - (NPC Levels: 11-12)'),
(1, 60414, 1, 0, -60414, 1, 0, 'NPC LOOT (White World Drop) - (Item Levels: 11-14) - (NPC Levels: 12)'),
(1, 60415, 1, 0, -60415, 1, 0, 'NPC LOOT (White World Drop) - (Item Levels: 11-14) - (NPC Levels: 12-13)'),
(1, 60416, 1, 0, -60416, 1, 0, 'NPC LOOT (White World Drop) - (Item Levels: 12-14) - (NPC Levels: 13)'),
(1, 60417, 1, 0, -60417, 1, 0, 'NPC LOOT (White World Drop) - (Item Levels: 12-14) - (NPC Levels: 13-14)'),
(1, 60418, 1, 0, -60418, 1, 0, 'NPC LOOT (White World Drop) - (Item Levels: 13-15) - (NPC Levels: 14)'),
(1, 60419, 1, 0, -60419, 1, 0, 'NPC LOOT (White World Drop) - (Item Levels: 13-18) - (NPC Levels: 14-15)'),
(1, 60420, 1, 0, -60420, 1, 0, 'NPC LOOT (White World Drop) - (Item Levels: 14-18) - (NPC Levels: 15)'),
(1, 60421, 1, 0, -60421, 1, 0, 'NPC LOOT (White World Drop) - (Item Levels: 14-19) - (NPC Levels: 15-16)'),
(1, 60422, 1, 0, -60422, 1, 0, 'NPC LOOT (White World Drop) - (Item Levels: 15-19) - (NPC Levels: 16)'),
(1, 60423, 1, 0, -60423, 1, 0, 'NPC LOOT (White World Drop) - (Item Levels: 15-21) - (NPC Levels: 16-17)'),
(1, 60424, 1, 0, -60424, 1, 0, 'NPC LOOT (White World Drop) - (Item Levels: 18-21) - (NPC Levels: 17)'),
(1, 60425, 1, 0, -60425, 1, 0, 'NPC LOOT (White World Drop) - (Item Levels: 18-21) - (NPC Levels: 17-18)'),
(1, 60426, 1, 0, -60426, 1, 0, 'NPC LOOT (White World Drop) - (Item Levels: 19-21) - (NPC Levels: 18)'),
(1, 60427, 1, 0, -60427, 1, 0, 'NPC LOOT (White World Drop) - (Item Levels: 19-22) - (NPC Levels: 18-19)'),
(1, 60428, 1, 0, -60428, 1, 0, 'NPC LOOT (White World Drop) - (Item Levels: 20-22) - (NPC Levels: 19)'),
(1, 60429, 1, 0, -60429, 1, 0, 'NPC LOOT (White World Drop) - (Item Levels: 20-23) - (NPC Levels: 19-20)'),
(1, 60430, 1, 0, -60430, 1, 0, 'NPC LOOT (White World Drop) - (Item Levels: 21-23) - (NPC Levels: 20)'),
(1, 60431, 1, 0, -60431, 1, 0, 'NPC LOOT (White World Drop) - (Item Levels: 21-24) - (NPC Levels: 20-21)'),
(1, 60432, 1, 0, -60432, 1, 0, 'NPC LOOT (White World Drop) - (Item Levels: 22-24) - (NPC Levels: 21)'),
(1, 60433, 1, 0, -60433, 1, 0, 'NPC LOOT (White World Drop) - (Item Levels: 22-24) - (NPC Levels: 21-22)'),
(1, 60434, 1, 0, -60434, 1, 0, 'NPC LOOT (White World Drop) - (Item Levels: 22-24) - (NPC Levels: 22)'),
(1, 60435, 1, 0, -60435, 1, 0, 'NPC LOOT (White World Drop) - (Item Levels: 22-24) - (NPC Levels: 22-23)'),
(1, 60436, 1, 0, -60436, 1, 0, 'NPC LOOT (White World Drop) - (Item Levels: 23-24) - (NPC Levels: 23)'),
(1, 60437, 1, 0, -60437, 1, 0, 'NPC LOOT (White World Drop) - (Item Levels: 23-24) - (NPC Levels: 23-24)'),
(1, 60438, 1, 0, -60438, 1, 0, 'NPC LOOT (White World Drop) - (Item Levels: 23-24) - (NPC Levels: 24)'),
(1, 60439, 1, 0, -60439, 1, 0, 'NPC LOOT (White World Drop) - (Item Levels: 23-24) - (NPC Levels: 24-25)'),
(1, 60440, 1, 0, -60440, 1, 0, 'NPC LOOT (White World Drop) - (Item Levels: 24) - (NPC Levels: 25)'),
(1, 60441, 1, 0, -60441, 1, 0, 'NPC LOOT (White World Drop) - (Item Levels: 5 (6 Slot Bag)) - (NPC Levels: 6-10)'),
(1, 60442, 1, 0, -60442, 1, 0, 'NPC LOOT (White World Drop) - (Item Levels: 15 (8 Slot Bag)) - (NPC Levels: 11-20)'),
(1, 60443, 1, 0, -60443, 1, 0, 'NPC LOOT (White World Drop) - (Item Levels: 25 (10 Slot Bag)) - (NPC Levels: 21-30)'),
(1, 60444, 1, 0, -60444, 1, 0, 'NPC LOOT (White World Drop) - (Item Levels: 35 (12 Slot Bag)) - (NPC Levels: 31-40)'),
(1, 60445, 1, 0, -60445, 1, 0, 'NPC LOOT (White World Drop) - (Item Levels: 45 (14 Slot Bag)) - (NPC Levels: 41-60)'),
(1, 61000, 1, 0, -61000, 1, 0, 'NPC LOOT (Grey World Drop) - (Item Levels: 66-69) - (NPC Levels: 58-65) - TBC NPC ONLY'),
(1, 61001, 1, 0, -61001, 1, 0, 'NPC LOOT (Grey World Drop) - (Item Levels: 69-72) - (NPC Levels: 66-72) - TBC NPC ONLY'),
(1, 61100, 1, 0, -61100, 1, 0, 'NPC LOOT (Green World Drop) - (Item Levels: 81) - (NPC Levels: 58) - TBC NPC ONLY'),
(1, 61101, 1, 0, -61101, 1, 0, 'NPC LOOT (Green World Drop) - (Item Levels: 81-84) - (NPC Levels: 58-59) - TBC NPC ONLY'),
(1, 61102, 1, 0, -61102, 1, 0, 'NPC LOOT (Green World Drop) - (Item Levels: 81-84) - (NPC Levels: 59) - TBC NPC ONLY'),
(1, 61103, 1, 0, -61103, 1, 0, 'NPC LOOT (Green World Drop) - (Item Levels: 81-87) - (NPC Levels: 59-60) - TBC NPC ONLY'),
(1, 61104, 1, 0, -61104, 1, 0, 'NPC LOOT (Green World Drop) - (Item Levels: 81-87) - (NPC Levels: 60) - TBC NPC ONLY'),
(1, 61105, 1, 0, -61105, 1, 0, 'NPC LOOT (Green World Drop) - (Item Levels: 81-90) - (NPC Levels: 60-61) - TBC NPC ONLY'),
(1, 61106, 1, 0, -61106, 1, 0, 'NPC LOOT (Green World Drop) - (Item Levels: 84-90) - (NPC Levels: 61) - TBC NPC ONLY'),
(1, 61107, 1, 0, -61107, 1, 0, 'NPC LOOT (Green World Drop) - (Item Levels: 84-93) - (NPC Levels: 61-62) - TBC NPC ONLY'),
(1, 61108, 1, 0, -61108, 1, 0, 'NPC LOOT (Green World Drop) - (Item Levels: 87-93) - (NPC Levels: 62) - TBC NPC ONLY'),
(1, 61109, 1, 0, -61109, 1, 0, 'NPC LOOT (Green World Drop) - (Item Levels: 87-96) - (NPC Levels: 62-63) - TBC NPC ONLY'),
(1, 61110, 1, 0, -61110, 1, 0, 'NPC LOOT (Green World Drop) - (Item Levels: 90-96) - (NPC Levels: 63) - TBC NPC ONLY'),
(1, 61111, 1, 0, -61111, 1, 0, 'NPC LOOT (Green World Drop) - (Item Levels: 90-99) - (NPC Levels: 63-64) - TBC NPC ONLY'),
(1, 61112, 1, 0, -61112, 1, 0, 'NPC LOOT (Green World Drop) - (Item Levels: 93-99) - (NPC Levels: 64) - TBC NPC ONLY'),
(1, 61113, 1, 0, -61113, 1, 0, 'NPC LOOT (Green World Drop) - (Item Levels: 93-102) - (NPC Levels: 64-65) - TBC NPC ONLY'),
(1, 61114, 1, 0, -61114, 1, 0, 'NPC LOOT (Green World Drop) - (Item Levels: 96-102) - (NPC Levels: 65) - TBC NPC ONLY'),
(1, 61115, 1, 0, -61115, 1, 0, 'NPC LOOT (Green World Drop) - (Item Levels: 96-105) - (NPC Levels: 65-66) - TBC NPC ONLY'),
(1, 61116, 1, 0, -61116, 1, 0, 'NPC LOOT (Green World Drop) - (Item Levels: 99-105) - (NPC Levels: 66) - TBC NPC ONLY'),
(1, 61117, 1, 0, -61117, 1, 0, 'NPC LOOT (Green World Drop) - (Item Levels: 99-108) - (NPC Levels: 66-67) - TBC NPC ONLY'),
(1, 61118, 1, 0, -61118, 1, 0, 'NPC LOOT (Green World Drop) - (Item Levels: 102-108) - (NPC Levels: 67) - TBC NPC ONLY'),
(1, 61119, 1, 0, -61119, 1, 0, 'NPC LOOT (Green World Drop) - (Item Levels: 102-111) - (NPC Levels: 67-68) - TBC NPC ONLY'),
(1, 61120, 1, 0, -61120, 1, 0, 'NPC LOOT (Green World Drop) - (Item Levels: 105-111) - (NPC Levels: 68) - TBC NPC ONLY'),
(1, 61121, 1, 0, -61121, 1, 0, 'NPC LOOT (Green World Drop) - (Item Levels: 105-114) - (NPC Levels: 68-69) - TBC NPC ONLY'),
(1, 61122, 1, 0, -61122, 1, 0, 'NPC LOOT (Green World Drop) - (Item Levels: 108-114) - (NPC Levels: 69) - TBC NPC ONLY'),
(1, 61123, 1, 0, -61123, 1, 0, 'NPC LOOT (Green World Drop) - (Item Levels: 108-117) - (NPC Levels: 69-70) - TBC NPC ONLY'),
(1, 61124, 1, 0, -61124, 1, 0, 'NPC LOOT (Green World Drop) - (Item Levels: 111-117) - (NPC Levels: 70) - TBC NPC ONLY'),
(1, 61125, 1, 0, -61125, 1, 0, 'NPC LOOT (Green World Drop) - (Item Levels: 111-120) - (NPC Levels: 70-71) - TBC NPC ONLY'),
(1, 61126, 1, 0, -61126, 1, 0, 'NPC LOOT (Green World Drop) - (Item Levels: 114-120) - (NPC Levels: 71) - TBC NPC ONLY'),
(1, 61127, 1, 0, -61127, 1, 0, 'NPC LOOT (Green World Drop) - (Item Levels: 114-120) - (NPC Levels: 71-72) - TBC NPC ONLY'),
(1, 61128, 1, 0, -61128, 1, 0, 'NPC LOOT (Green World Drop) - (Item Levels: 117-120) - (NPC Levels: 72) - TBC NPC ONLY'),
(1, 61129, 1, 0, -61129, 1, 0, 'NPC LOOT (Green World Drop) - (Item Levels: 120) - (NPC Levels: 72-73) - TBC NPC ONLY'),
(1, 61130, 1, 0, -61130, 1, 0, 'NPC LOOT (Green World Drop) - (Item Levels: 120) - (NPC Levels: 73) - TBC NPC ONLY'),
(1, 61200, 1, 0, -61200, 1, 0, 'NPC LOOT (Blue World Drop) - (Item Levels: 85) - (NPC Levels: 58) - TBC NPC ONLY'),
(1, 61201, 1, 0, -61201, 1, 0, 'NPC LOOT (Blue World Drop) - (Item Levels: 85) - (NPC Levels: 58-59) - TBC NPC ONLY'),
(1, 61202, 1, 0, -61202, 1, 0, 'NPC LOOT (Blue World Drop) - (Item Levels: 85) - (NPC Levels: 59) - TBC NPC ONLY'),
(1, 61203, 1, 0, -61203, 1, 0, 'NPC LOOT (Blue World Drop) - (Item Levels: 85-88) - (NPC Levels: 59-60) - TBC NPC ONLY'),
(1, 61204, 1, 0, -61204, 1, 0, 'NPC LOOT (Blue World Drop) - (Item Levels: 85-88) - (NPC Levels: 60) - TBC NPC ONLY'),
(1, 61205, 1, 0, -61205, 1, 0, 'NPC LOOT (Blue World Drop) - (Item Levels: 85-91) - (NPC Levels: 60-61) - TBC NPC ONLY'),
(1, 61206, 1, 0, -61206, 1, 0, 'NPC LOOT (Blue World Drop) - (Item Levels: 85-91) - (NPC Levels: 61) - TBC NPC ONLY'),
(1, 61207, 1, 0, -61207, 1, 0, 'NPC LOOT (Blue World Drop) - (Item Levels: 85-94) - (NPC Levels: 61-62) - TBC NPC ONLY'),
(1, 61208, 1, 0, -61208, 1, 0, 'NPC LOOT (Blue World Drop) - (Item Levels: 88-94) - (NPC Levels: 62) - TBC NPC ONLY'),
(1, 61209, 1, 0, -61209, 1, 0, 'NPC LOOT (Blue World Drop) - (Item Levels: 88-97) - (NPC Levels: 62-63) - TBC NPC ONLY'),
(1, 61210, 1, 0, -61210, 1, 0, 'NPC LOOT (Blue World Drop) - (Item Levels: 91-97) - (NPC Levels: 63) - TBC NPC ONLY'),
(1, 61211, 1, 0, -61211, 1, 0, 'NPC LOOT (Blue World Drop) - (Item Levels: 91-100) - (NPC Levels: 63-64) - TBC NPC ONLY'),
(1, 61212, 1, 0, -61212, 1, 0, 'NPC LOOT (Blue World Drop) - (Item Levels: 94-100) - (NPC Levels: 64) - TBC NPC ONLY'),
(1, 61213, 1, 0, -61213, 1, 0, 'NPC LOOT (Blue World Drop) - (Item Levels: 94-103) - (NPC Levels: 64-65) - TBC NPC ONLY'),
(1, 61214, 1, 0, -61214, 1, 0, 'NPC LOOT (Blue World Drop) - (Item Levels: 97-103) - (NPC Levels: 65) - TBC NPC ONLY'),
(1, 61215, 1, 0, -61215, 1, 0, 'NPC LOOT (Blue World Drop) - (Item Levels: 97-106) - (NPC Levels: 65-66) - TBC NPC ONLY'),
(1, 61216, 1, 0, -61216, 1, 0, 'NPC LOOT (Blue World Drop) - (Item Levels: 100-106) - (NPC Levels: 66) - TBC NPC ONLY'),
(1, 61217, 1, 0, -61217, 1, 0, 'NPC LOOT (Blue World Drop) - (Item Levels: 100-109) - (NPC Levels: 66-67) - TBC NPC ONLY'),
(1, 61218, 1, 0, -61218, 1, 0, 'NPC LOOT (Blue World Drop) - (Item Levels: 103-109) - (NPC Levels: 67) - TBC NPC ONLY'),
(1, 61219, 1, 0, -61219, 1, 0, 'NPC LOOT (Blue World Drop) - (Item Levels: 103-112) - (NPC Levels: 67-68) - TBC NPC ONLY'),
(1, 61220, 1, 0, -61220, 1, 0, 'NPC LOOT (Blue World Drop) - (Item Levels: 106-112) - (NPC Levels: 68) - TBC NPC ONLY'),
(1, 61221, 1, 0, -61221, 1, 0, 'NPC LOOT (Blue World Drop) - (Item Levels: 106-115) - (NPC Levels: 68-69) - TBC NPC ONLY'),
(1, 61222, 1, 0, -61222, 1, 0, 'NPC LOOT (Blue World Drop) - (Item Levels: 109-115) - (NPC Levels: 69) - TBC NPC ONLY'),
(1, 61223, 1, 0, -61223, 1, 0, 'NPC LOOT (Blue World Drop) - (Item Levels: 109-115) - (NPC Levels: 69-70) - TBC NPC ONLY'),
(1, 61224, 1, 0, -61224, 1, 0, 'NPC LOOT (Blue World Drop) - (Item Levels: 112-115) - (NPC Levels: 70) - TBC NPC ONLY'),
(1, 61225, 1, 0, -61225, 1, 0, 'NPC LOOT (Blue World Drop) - (Item Levels: 112-115) - (NPC Levels: 70-71) - TBC NPC ONLY'),
(1, 61226, 1, 0, -61226, 1, 0, 'NPC LOOT (Blue World Drop) - (Item Levels: 115) - (NPC Levels: 71) - TBC NPC ONLY'),
(1, 61227, 1, 0, -61227, 1, 0, 'NPC LOOT (Blue World Drop) - (Item Levels: 115) - (NPC Levels: 71-72) - TBC NPC ONLY'),
(1, 61228, 1, 0, -61228, 1, 0, 'NPC LOOT (Blue World Drop) - (Item Levels: 115) - (NPC Levels: 72) - TBC NPC ONLY');

-- =========================================================================================================================================================
-- =================                    APPLY LATEST ITEM NAMES AND REFERENCE NAMES TO LOOT / REFERENCE / VENDOR TABLES                    ================= 
-- =========================================================================================================================================================
UPDATE `reference_loot_template` SET comments='';
UPDATE `reference_loot_template` ct JOIN `item_template` it ON it.entry = ct.item AND ct.MinCountOrRef > 0 SET ct.comments = CONCAT(ct.comments, "", it.name);
UPDATE `reference_loot_template` ct JOIN `reference_loot_template_names` rltn ON rltn.entry = ct.item AND ct.MinCountOrRef < 0 SET ct.comments = CONCAT(ct.comments, "", rltn.name);

UPDATE `creature_loot_template` SET comments='';
UPDATE `creature_loot_template` ct JOIN `item_template` it ON it.entry = ct.item AND ct.MinCountOrRef > 0 SET ct.comments = CONCAT(ct.comments, "", it.name);
UPDATE `creature_loot_template` ct JOIN `reference_loot_template_names` rltn ON rltn.entry = ct.item AND ct.MinCountOrRef < 0 SET ct.comments = CONCAT(ct.comments, "", rltn.name);

UPDATE `gameobject_loot_template` SET comments='';
UPDATE `gameobject_loot_template` ct JOIN `item_template` it ON it.entry = ct.item AND ct.MinCountOrRef > 0 SET ct.comments = CONCAT(ct.comments, "", it.name);
UPDATE `gameobject_loot_template` ct JOIN `reference_loot_template_names` rltn ON rltn.entry = ct.item AND ct.MinCountOrRef < 0 SET ct.comments = CONCAT(ct.comments, "", rltn.name);

UPDATE `disenchant_loot_template` SET comments='';
UPDATE `disenchant_loot_template` ct JOIN `item_template` it ON it.entry = ct.item AND ct.MinCountOrRef > 0 SET ct.comments = CONCAT(ct.comments, "", it.name);
UPDATE `disenchant_loot_template` ct JOIN `reference_loot_template_names` rltn ON rltn.entry = ct.item AND ct.MinCountOrRef < 0 SET ct.comments = CONCAT(ct.comments, "", rltn.name);

UPDATE `fishing_loot_template` SET comments='';
UPDATE `fishing_loot_template` ct JOIN `item_template` it ON it.entry = ct.item AND ct.MinCountOrRef > 0 SET ct.comments = CONCAT(ct.comments, "", it.name);
UPDATE `fishing_loot_template` ct JOIN `reference_loot_template_names` rltn ON rltn.entry = ct.item AND ct.MinCountOrRef < 0 SET ct.comments = CONCAT(ct.comments, "", rltn.name);

UPDATE `item_loot_template` SET comments='';
UPDATE `item_loot_template` ct JOIN `item_template` it ON it.entry = ct.item AND ct.MinCountOrRef > 0 SET ct.comments = CONCAT(ct.comments, "", it.name);
UPDATE `item_loot_template` ct JOIN `reference_loot_template_names` rltn ON rltn.entry = ct.item AND ct.MinCountOrRef < 0 SET ct.comments = CONCAT(ct.comments, "", rltn.name);

UPDATE `prospecting_loot_template` SET comments='';
UPDATE `prospecting_loot_template` ct JOIN `item_template` it ON it.entry = ct.item AND ct.MinCountOrRef > 0 SET ct.comments = CONCAT(ct.comments, "", it.name);
UPDATE `prospecting_loot_template` ct JOIN `reference_loot_template_names` rltn ON rltn.entry = ct.item AND ct.MinCountOrRef < 0 SET ct.comments = CONCAT(ct.comments, "", rltn.name);

UPDATE `skinning_loot_template` SET comments='';
UPDATE `skinning_loot_template` ct JOIN `item_template` it ON it.entry = ct.item AND ct.MinCountOrRef > 0 SET ct.comments = CONCAT(ct.comments, "", it.name);
UPDATE `skinning_loot_template` ct JOIN `reference_loot_template_names` rltn ON rltn.entry = ct.item AND ct.MinCountOrRef < 0 SET ct.comments = CONCAT(ct.comments, "", rltn.name);

UPDATE `pickpocketing_loot_template` SET comments='';
UPDATE `pickpocketing_loot_template` ct JOIN `item_template` it ON it.entry = ct.item AND ct.MinCountOrRef > 0 SET ct.comments = CONCAT(ct.comments, "", it.name);
UPDATE `pickpocketing_loot_template` ct JOIN `reference_loot_template_names` rltn ON rltn.entry = ct.item AND ct.MinCountOrRef < 0 SET ct.comments = CONCAT(ct.comments, "", rltn.name);

UPDATE `npc_vendor_template` SET comments='';
UPDATE `npc_vendor_template` ct JOIN `item_template` it ON it.entry = ct.item SET ct.comments = CONCAT(ct.comments, "", it.name);

UPDATE `npc_vendor` SET comments='';
UPDATE `npc_vendor` ct JOIN `item_template` it ON it.entry = ct.item SET ct.comments = CONCAT(ct.comments, "", it.name);

-- ==============================
-- Populate Condition Comments
-- ==============================
UPDATE conditions SET comments=NULL;
-- CONDITION_NONE
UPDATE conditions SET comments=CONCAT('Player Has Aura: ',value1, ', EffectIndex: ',value2) WHERE type=1 AND comments IS NULL; -- CONDITION_AURA
UPDATE conditions SET comments=CONCAT('Player Has ',value2,' or more of Item ID ',value1,' in Inventory') WHERE type=2 AND comments IS NULL; -- CONDITION_ITEM
UPDATE conditions SET comments=CONCAT('Player Has Item ID ',value1,' Equipped') WHERE type=3 AND comments IS NULL; -- CONDITION_ITEM_EQUIPPED
UPDATE conditions SET comments=CONCAT('Is In Area ID: ',value1) WHERE type=4 AND value2=0 AND comments IS NULL; -- CONDITION_AREAID
UPDATE conditions SET comments=CONCAT('NOT In Area ID: ',value1) WHERE type=4 AND value2=1 AND comments IS NULL; -- CONDITION_AREAID
UPDATE conditions SET comments=CONCAT('Has Minimum Rank Hated With Faction ID: ',value1) WHERE type=5 AND value2=0 AND comments IS NULL; -- CONDITION_REPUTATION_RANK_MIN
UPDATE conditions SET comments=CONCAT('Has Minimum Rank Hostile With Faction ID: ',value1) WHERE type=5 AND value2=1 AND comments IS NULL; -- CONDITION_REPUTATION_RANK_MIN
UPDATE conditions SET comments=CONCAT('Has Minimum Rank Unfriendly With Faction ID: ',value1) WHERE type=5 AND value2=2 AND comments IS NULL; -- CONDITION_REPUTATION_RANK_MIN
UPDATE conditions SET comments=CONCAT('Has Minimum Rank Neutral With Faction ID: ',value1) WHERE type=5 AND value2=3 AND comments IS NULL; -- CONDITION_REPUTATION_RANK_MIN
UPDATE conditions SET comments=CONCAT('Has Minimum Rank Friendly With Faction ID: ',value1) WHERE type=5 AND value2=4 AND comments IS NULL; -- CONDITION_REPUTATION_RANK_MIN
UPDATE conditions SET comments=CONCAT('Has Minimum Rank Honored With Faction ID: ',value1) WHERE type=5 AND value2=5 AND comments IS NULL; -- CONDITION_REPUTATION_RANK_MIN
UPDATE conditions SET comments=CONCAT('Has Minimum Rank Revered With Faction ID: ',value1) WHERE type=5 AND value2=6 AND comments IS NULL; -- CONDITION_REPUTATION_RANK_MIN
UPDATE conditions SET comments=CONCAT('Has Minimum Rank Exalted With Faction ID: ',value1) WHERE type=5 AND value2=7 AND comments IS NULL; -- CONDITION_REPUTATION_RANK_MIN
UPDATE conditions SET comments=CONCAT('Alliance Player') WHERE type=6 AND value1=469 AND comments IS NULL; -- CONDITION_TEAM
UPDATE conditions SET comments=CONCAT('Horde Player') WHERE type=6 AND value1=67 AND comments IS NULL; -- CONDITION_TEAM
UPDATE conditions SET comments=CONCAT('Has Skill ID ',value1,', Minimum Skill Value ',value2) WHERE type=7 AND comments IS NULL; -- CONDITION_SKILL
UPDATE conditions SET comments=CONCAT('Quest ID ',value1,' Rewarded') WHERE type=8 AND comments IS NULL; -- CONDITION_QUESTREWARDED
UPDATE conditions SET comments=CONCAT('Quest ID ',value1,' Taken') WHERE type=9 AND value2=0 AND comments IS NULL; -- CONDITION_QUESTTAKEN
UPDATE conditions SET comments=CONCAT('Quest ID ',value1,' Taken AND NOT Completed') WHERE type=9 AND value2=1 AND comments IS NULL; -- CONDITION_QUESTTAKEN
UPDATE conditions SET comments=CONCAT('Quest ID ',value1,' Taken AND Completed') WHERE type=9 AND value2=2 AND comments IS NULL; -- CONDITION_QUESTTAKEN
UPDATE conditions SET comments=CONCAT('Player has any Argent Dawn Commission Aura Active (17670,23930,24198,29112,29113)') WHERE type=10 AND comments IS NULL; -- CONDITION_AD_COMMISSION_AURA
UPDATE conditions SET comments=CONCAT('NOT Player Has Aura: ',value1, ', EffectIndex: ',value2) WHERE type=11 AND comments IS NULL; -- CONDITION_NO_AURA
UPDATE conditions SET comments=CONCAT('Event ID ',value1, ' Active') WHERE type=12 AND comments IS NULL; -- CONDITION_ACTIVE_EVENT
UPDATE conditions SET comments=CONCAT('Area Flag ',value1, ' Present in Current Area') WHERE type=13 AND value1 !=0 AND value2=0 AND comments IS NULL; -- CONDITION_AREA_FLAG
UPDATE conditions SET comments=CONCAT('Area Flag ',value2, ' NOT Present in Current Area') WHERE type=13 AND value1 =0 AND value2 !=0 AND comments IS NULL; -- CONDITION_AREA_FLAG
UPDATE conditions SET comments=CONCAT('Area Flag ',value1, ' Present in Current Area AND Area Flag ',value2,' NOT Present in Current Area') WHERE type=13 AND value1 !=0 AND value2 !=0 AND comments IS NULL; -- CONDITION_AREA_FLAG
UPDATE conditions SET comments=CONCAT('Player RaceMask: ',value1) WHERE type=14 AND value1 !=0 AND value2=0 AND comments IS NULL; -- CONDITION_RACE_CLASS
UPDATE conditions SET comments=CONCAT('Player ClassMask: ',value2) WHERE type=14 AND value1 =0 AND value2 !=0 AND comments IS NULL; -- CONDITION_RACE_CLASS
UPDATE conditions SET comments=CONCAT('Player RaceMask: ',value1, ' AND Player ClassMask: ',value2) WHERE type=14 AND value1 !=0 AND value2 !=0 AND comments IS NULL; -- CONDITION_RACE_CLASS
UPDATE conditions SET comments=CONCAT('Player Level == ',value1) WHERE type=15 AND value2=0 AND comments IS NULL; -- CONDITION_LEVEL
UPDATE conditions SET comments=CONCAT('Player Level >= ',value1) WHERE type=15 AND value2=1 AND comments IS NULL; -- CONDITION_LEVEL
UPDATE conditions SET comments=CONCAT('Player Level <= ',value1) WHERE type=15 AND value2=2 AND comments IS NULL; -- CONDITION_LEVEL
UPDATE conditions SET comments=CONCAT('Player Has Less Than ',value2,' of Item ID ',value1,' in Inventory') WHERE type=16 AND comments IS NULL; -- CONDITION_NOITEM
UPDATE conditions SET comments=CONCAT('Player Has Learned Spell: ',value1) WHERE type=17 AND value2=0 AND comments IS NULL; -- CONDITION_SPELL
UPDATE conditions SET comments=CONCAT('NOT Player Has Learned Spell: ',value1) WHERE type=17 AND value2=1 AND comments IS NULL; -- CONDITION_SPELL
-- CONDITION_INSTANCE_SCRIPT
UPDATE conditions SET comments=CONCAT('Quest ID ',value1,' Available') WHERE type=19 AND comments IS NULL; -- CONDITION_QUESTAVAILABLE
-- CONDITION_ACHIEVEMENT
-- CONDITION_ACHIEVEMENT_REALM
UPDATE conditions SET comments=CONCAT('Quest ID ',value1,' NOT Taken AND NOT Rewarded') WHERE type=22 AND comments IS NULL; -- CONDITION_QUEST_NONE
UPDATE conditions SET comments=CONCAT('Player Has ',value2,' or more of Item ID ',value1,' in Inventory/Bank') WHERE type=23 AND comments IS NULL; -- CONDITION_ITEM_WITH_BANK
UPDATE conditions SET comments=CONCAT('Player Has Less Than ',value2,' of Item ID ',value1,' in Inventory/Bank') WHERE type=24 AND comments IS NULL; -- CONDITION_NOITEM_WITH_BANK
UPDATE conditions SET comments=CONCAT('Game Event ',value1,' NOT Active') WHERE type=25 AND comments IS NULL; -- CONDITION_NOT_ACTIVE_GAME_EVENT
UPDATE conditions SET comments=CONCAT('Holiday ',value1,' Active') WHERE type=26 AND comments IS NULL; -- CONDITION_ACTIVE_HOLIDAY
UPDATE conditions SET comments=CONCAT('NOT Holiday ',value1,' Active') WHERE type=27 AND comments IS NULL; -- CONDITION_NOT_ACTIVE_HOLIDAY
UPDATE conditions SET comments=CONCAT('Player can learn Ability from Spell ID: ',value1) WHERE type=28 AND value2=0 AND comments IS NULL; -- CONDITION_LEARNABLE_ABILITY
UPDATE conditions SET comments=CONCAT('(Player can learn Ability from Spell ID ',value1,' AND NOT has Item ID ',value2,' in Inventory or Bank)') WHERE type=28 AND value2 !=0 AND comments IS NULL; -- CONDITION_LEARNABLE_ABILITY
UPDATE conditions SET comments=CONCAT('Skill level of Skill ID ',value1,' Below level ',value2) WHERE type=29 AND comments IS NULL; -- CONDITION_SKILL_BELOW
UPDATE conditions SET comments=CONCAT('Has Maximum Rank Hated With Faction ID: ',value1) WHERE type=30 AND value2=0 AND comments IS NULL; -- CONDITION_REPUTATION_RANK_MAX
UPDATE conditions SET comments=CONCAT('Has Maximum Rank Hostile With Faction ID: ',value1) WHERE type=30 AND value2=1 AND comments IS NULL; -- CONDITION_REPUTATION_RANK_MAX
UPDATE conditions SET comments=CONCAT('Has Maximum Rank Unfriendly With Faction ID: ',value1) WHERE type=30 AND value2=2 AND comments IS NULL; -- CONDITION_REPUTATION_RANK_MAX
UPDATE conditions SET comments=CONCAT('Has Maximum Rank Neutral With Faction ID: ',value1) WHERE type=30 AND value2=3 AND comments IS NULL; -- CONDITION_REPUTATION_RANK_MAX
UPDATE conditions SET comments=CONCAT('Has Maximum Rank Friendly With Faction ID: ',value1) WHERE type=30 AND value2=4 AND comments IS NULL; -- CONDITION_REPUTATION_RANK_MAX
UPDATE conditions SET comments=CONCAT('Has Maximum Rank Honored With Faction ID: ',value1) WHERE type=30 AND value2=5 AND comments IS NULL; -- CONDITION_REPUTATION_RANK_MAX
UPDATE conditions SET comments=CONCAT('Has Maximum Rank Revered With Faction ID: ',value1) WHERE type=30 AND value2=6 AND comments IS NULL; -- CONDITION_REPUTATION_RANK_MAX
UPDATE conditions SET comments=CONCAT('Has Maximum Rank Exalted With Faction ID: ',value1) WHERE type=30 AND value2=7 AND comments IS NULL; -- CONDITION_REPUTATION_RANK_MAX
UPDATE conditions SET comments=CONCAT('Dungeon Encounter ID ',value1,' Completed') WHERE type=31 AND value2=0 AND comments IS NULL; -- CONDITION_COMPLETED_ENCOUNTER
UPDATE conditions SET comments=CONCAT('Dungeon Encounter ID ',value1,' Completed OR Dungeon Encounter ID ',value2,' Completed') WHERE type=31 AND value2 !=0 AND comments IS NULL; -- CONDITION_COMPLETED_ENCOUNTER
UPDATE conditions SET comments=CONCAT('Source of Condition Has Aura: ',value1, ', EffectIndex: ',value2) WHERE type=32 AND comments IS NULL; -- CONDITION_SOURCE_AURA
UPDATE conditions SET comments=CONCAT('Source of Condition''s Last Waypoint == ',value1) WHERE type=33 AND value2=0 AND comments IS NULL; -- CONDITION_LAST_WAYPOINT
UPDATE conditions SET comments=CONCAT('Source of Condition''s Last Waypoint <= ',value1) WHERE type=33 AND value2=1 AND comments IS NULL; -- CONDITION_LAST_WAYPOINT
UPDATE conditions SET comments=CONCAT('Source of Condition''s Last Waypoint >= ',value1) WHERE type=33 AND value2=2 AND comments IS NULL; -- CONDITION_LAST_WAYPOINT
-- CONDITION_XP_USER
UPDATE conditions SET comments=CONCAT('Player Gender: Male') WHERE type=35 AND value1=0 AND comments IS NULL; -- CONDITION_GENDER
UPDATE conditions SET comments=CONCAT('Player Gender: Femal') WHERE type=35 AND value1=1 AND comments IS NULL; -- CONDITION_GENDER
UPDATE conditions SET comments=CONCAT('Player Gender: None') WHERE type=35 AND value1=2 AND comments IS NULL; -- CONDITION_GENDER
UPDATE conditions SET comments=CONCAT('Player is Dead') WHERE type=36 AND value1=0 AND value2=0 AND comments IS NULL; -- CONDITION_DEAD_OR_AWAY
UPDATE conditions SET comments=CONCAT('All Players in Group are Dead') WHERE type=36 AND value1=1 AND value2=0 AND comments IS NULL; -- CONDITION_DEAD_OR_AWAY
UPDATE conditions SET comments=CONCAT('All Players in Instance are Dead') WHERE type=36 AND value1=2 AND value2=0 AND comments IS NULL; -- CONDITION_DEAD_OR_AWAY
UPDATE conditions SET comments=CONCAT('Player is Dead OR NOT Within ',value2,'y of Source') WHERE type=36 AND value1=0 AND value2 !=0 AND comments IS NULL; -- CONDITION_DEAD_OR_AWAY
UPDATE conditions SET comments=CONCAT('All Players in Group are Dead OR NOT Within ',value2,'y of Source') WHERE type=36 AND value1=1 AND value2 !=0 AND comments IS NULL; -- CONDITION_DEAD_OR_AWAY
UPDATE conditions SET comments=CONCAT('All Players in Instance are Dead OR NOT Within ',value2,'y of Source') WHERE type=36 AND value1=2 AND value2 !=0 AND comments IS NULL; -- CONDITION_DEAD_OR_AWAY
UPDATE conditions SET comments=CONCAT('Creature Source is Dead') WHERE type=36 AND value1=3 AND comments IS NULL; -- CONDITION_DEAD_OR_AWAY
UPDATE conditions SET comments=CONCAT('Creature of Entry ',value1,' Found Alive Within ',value2,'y of Source') WHERE type=37 AND comments IS NULL; 
-- CONDITION_PVP_SCRIPT

-- NOT, OR, AND (Run a few times to completely fill out the most complex conditions)
UPDATE conditions t, (SELECT DISTINCT condition_entry, comments FROM conditions) t1 -- CONDITION_NOT
   SET t.comments = CONCAT('NOT (',t1.comments,')')
 WHERE t.value1 = t1.condition_entry AND t.comments IS NULL
   AND t.type = -3;
   
UPDATE conditions t, (SELECT DISTINCT condition_entry, comments FROM conditions) t1, (SELECT DISTINCT condition_entry, comments FROM conditions) t2 -- CONDITION_OR
   SET t.comments = CONCAT('(',t1.comments,' OR ',t2.comments,')')
 WHERE t.value1 = t1.condition_entry AND t.value2= t2.condition_entry AND t.comments IS NULL
   AND t.type = -2;
   
UPDATE conditions t, (SELECT DISTINCT condition_entry, comments FROM conditions) t1, (SELECT DISTINCT condition_entry, comments FROM conditions) t2 -- CONDITION_AND
   SET t.comments = CONCAT('(',t1.comments,' AND ',t2.comments,')')
 WHERE t.value1 = t1.condition_entry AND t.value2= t2.condition_entry AND t.comments IS NULL
   AND t.type = -1;

UPDATE conditions t, (SELECT DISTINCT condition_entry, comments FROM conditions) t1 -- CONDITION_NOT
   SET t.comments = CONCAT('NOT (',t1.comments,')')
 WHERE t.value1 = t1.condition_entry AND t.comments IS NULL
   AND t.type = -3;
   
UPDATE conditions t, (SELECT DISTINCT condition_entry, comments FROM conditions) t1, (SELECT DISTINCT condition_entry, comments FROM conditions) t2 -- CONDITION_OR
   SET t.comments = CONCAT('(',t1.comments,' OR ',t2.comments,')')
 WHERE t.value1 = t1.condition_entry AND t.value2= t2.condition_entry AND t.comments IS NULL
   AND t.type = -2;
   
UPDATE conditions t, (SELECT DISTINCT condition_entry, comments FROM conditions) t1, (SELECT DISTINCT condition_entry, comments FROM conditions) t2 -- CONDITION_AND
   SET t.comments = CONCAT('(',t1.comments,' AND ',t2.comments,')')
 WHERE t.value1 = t1.condition_entry AND t.value2= t2.condition_entry AND t.comments IS NULL
   AND t.type = -1;
   
UPDATE conditions t, (SELECT DISTINCT condition_entry, comments FROM conditions) t1 -- CONDITION_NOT
   SET t.comments = CONCAT('NOT (',t1.comments,')')
 WHERE t.value1 = t1.condition_entry AND t.comments IS NULL
   AND t.type = -3;
   
UPDATE conditions t, (SELECT DISTINCT condition_entry, comments FROM conditions) t1, (SELECT DISTINCT condition_entry, comments FROM conditions) t2 -- CONDITION_OR
   SET t.comments = CONCAT('(',t1.comments,' OR ',t2.comments,')')
 WHERE t.value1 = t1.condition_entry AND t.value2= t2.condition_entry AND t.comments IS NULL
   AND t.type = -2;
   
UPDATE conditions t, (SELECT DISTINCT condition_entry, comments FROM conditions) t1, (SELECT DISTINCT condition_entry, comments FROM conditions) t2 -- CONDITION_AND
   SET t.comments = CONCAT('(',t1.comments,' AND ',t2.comments,')')
 WHERE t.value1 = t1.condition_entry AND t.value2= t2.condition_entry AND t.comments IS NULL
   AND t.type = -1;
   
UPDATE conditions t, (SELECT DISTINCT condition_entry, comments FROM conditions) t1 -- CONDITION_NOT
   SET t.comments = CONCAT('NOT (',t1.comments,')')
 WHERE t.value1 = t1.condition_entry AND t.comments IS NULL
   AND t.type = -3;
   
UPDATE conditions t, (SELECT DISTINCT condition_entry, comments FROM conditions) t1, (SELECT DISTINCT condition_entry, comments FROM conditions) t2 -- CONDITION_OR
   SET t.comments = CONCAT('(',t1.comments,' OR ',t2.comments,')')
 WHERE t.value1 = t1.condition_entry AND t.value2= t2.condition_entry AND t.comments IS NULL
   AND t.type = -2;
   
UPDATE conditions t, (SELECT DISTINCT condition_entry, comments FROM conditions) t1, (SELECT DISTINCT condition_entry, comments FROM conditions) t2 -- CONDITION_AND
   SET t.comments = CONCAT('(',t1.comments,' AND ',t2.comments,')')
 WHERE t.value1 = t1.condition_entry AND t.value2= t2.condition_entry AND t.comments IS NULL
   AND t.type = -1;

