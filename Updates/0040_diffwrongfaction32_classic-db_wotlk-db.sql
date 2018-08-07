-- Npcs with wrong Faction 32 in tbc-db, port from classic-db / wotlk-db

UPDATE `creature_template` SET `FactionAlliance` = 7, `FactionHorde` = 7 WHERE `entry` IN (
3617, -- Lordaeron Citizen
8213, -- Ironback
14223, -- Cranky Benj
14224 -- 7:XT
);

UPDATE `creature_template` SET `FactionAlliance` = 14, `FactionHorde` = 14 WHERE `entry` IN (
3295, -- Sludge Beast
3652, -- Trigore the Lasher
6648, -- Antilos
8212, -- The Reak
9030, -- Ok\'thor the Breaker
9602, -- Hahk\'Zor
10821, -- Hed\'mush the Rotting
14237, -- Oozeworm
14345 -- The Ongar
);

UPDATE `creature_template` SET `FactionAlliance` = 21, `FactionHorde` = 21 WHERE `entry` IN (
1848, -- Lord Maldazzar
7895, -- Ambassador Bloodrage
10825 -- Gish the Unmoving
);

UPDATE `creature_template` SET `FactionAlliance` = 35, `FactionHorde` = 35 WHERE `entry` IN (
14453, -- Orb of Domination
14494 -- Eris Havenfire
);

UPDATE `creature_template` SET `FactionAlliance` = 37, `FactionHorde` = 37 WHERE `entry` IN (
5399, -- Veyzhak the Cannibal
5400, -- Zekkis
10822, -- Warlord Thresh\'jin
10823 -- Zul\'Brin Warpbranch
);

UPDATE `creature_template` SET `FactionAlliance` = 38, `FactionHorde` = 38 WHERE `entry` IN (
8208, -- Murderous Blisterpaw
10077, -- Deathmaw
14228 -- Giggler
);

-- update from classic-db
UPDATE `creature_template` SET `FactionAlliance` = 45, `FactionHorde` = 45 WHERE `entry` IN (
723, -- Mosh\'Ogg Butcher
2601, -- Foulbelly
2604, -- Molok the Crusher
8202, -- Cyclok the Mad
8297, -- Magronos the Unyielding
9604, -- Gorgon\'och
14488 -- Roloch
);

UPDATE `creature_template` SET `FactionAlliance` = 50, `FactionHorde` = 50 WHERE `entry` IN (
1063, -- Jade
5721-- Dreamscythe
);

UPDATE `creature_template` SET `FactionAlliance` = 67, `FactionHorde` = 67 WHERE `entry` IN (
1837, -- Scarlet Judge
1838, -- Scarlet Interrogator
1841, -- Scarlet Executioner
1843, -- Foreman Jerris
12128 -- Crimson Elite
);

UPDATE `creature_template` SET `FactionAlliance` = 495, `FactionHorde` = 495 WHERE `entry` IN (
14484, -- Injured Peasant
14485 -- Plagued Peasant
);

UPDATE `creature_template` SET `FactionAlliance` = 1216, `FactionHorde` = 1216 WHERE `entry` IN (
13139, -- Commander Randolph
13297, -- Lieutenant Stouthandle
13300, -- Lieutenant Mancuso
13426, -- Champion Mountaineer
14764 -- Icewing Marshal
);

UPDATE `creature_template` SET `FactionAlliance` = 11, `FactionHorde` = 11 WHERE `entry` = 12756; -- Lady Onyxia
UPDATE `creature_template` SET `FactionAlliance` = 15, `FactionHorde` = 15 WHERE `entry` = 3865; -- Shadow Charger - wotlk-db
UPDATE `creature_template` SET `FactionAlliance` = 16, `FactionHorde` = 16 WHERE `entry` = 5934; -- Heartrazor - classic-db (wotlk-db 14)
UPDATE `creature_template` SET `FactionAlliance` = 16, `FactionHorde` = 16 WHERE `entry` = 10882; -- Arikara - wotlk-db
UPDATE `creature_template` SET `FactionAlliance` = 18, `FactionHorde` = 18 WHERE `entry` = 14447; -- Gilmorian
UPDATE `creature_template` SET `FactionAlliance` = 24, `FactionHorde` = 24 WHERE `entry` = 507; -- Fenros
UPDATE `creature_template` SET `FactionAlliance` = 39, `FactionHorde` = 39 WHERE `entry` = 947; -- Rohh the Silent
UPDATE `creature_template` SET `FactionAlliance` = 47, `FactionHorde` = 47 WHERE `entry` = 14492; -- Verifonix
UPDATE `creature_template` SET `FactionAlliance` = 49, `FactionHorde` = 49 WHERE `entry` = 5935; -- Ironeye the Invincible
UPDATE `creature_template` SET `FactionAlliance` = 54, `FactionHorde` = 54 WHERE `entry` = 10096; -- High Justice Grimstone
UPDATE `creature_template` SET `FactionAlliance` = 69, `FactionHorde` = 69 WHERE `entry` = 13419; -- Ivus the Forest Lord
UPDATE `creature_template` SET `FactionAlliance` = 74, `FactionHorde` = 74 WHERE `entry` = 2779; -- Prince Nazjak
UPDATE `creature_template` SET `FactionAlliance` = 80, `FactionHorde` = 80 WHERE `entry` = 12116; -- Priestess of Elune - wotlk-db
UPDATE `creature_template` SET `FactionAlliance` = 80, `FactionHorde` = 80 WHERE `entry` = 12140; -- Guardian of Elune - wotlk-db
UPDATE `creature_template` SET `FactionAlliance` = 89, `FactionHorde` = 89 WHERE `entry` = 11120; -- Crimson Hammersmith
UPDATE `creature_template` SET `FactionAlliance` = 111, `FactionHorde` = 111 WHERE `entry` = 5864; --  Swinegart Spearhide
UPDATE `creature_template` SET `FactionAlliance` = 120, `FactionHorde` = 120 WHERE `entry` = 8116; --  Ziggle Sparks - wotlk-db
UPDATE `creature_template` SET `FactionAlliance` = 124, `FactionHorde` = 124 WHERE `entry` = 5916; -- Sentinel Amarassan
UPDATE `creature_template` SET `FactionAlliance` = 129, `FactionHorde` = 129 WHERE `entry` = 14236; -- Lord Angler
UPDATE `creature_template` SET `FactionAlliance` = 250, `FactionHorde` = 250 WHERE `entry` = 12126; -- Lord Tirion Fordring
UPDATE `creature_template` SET `FactionAlliance` = 310, `FactionHorde` = 310 WHERE `entry` = 14474; -- Zora

