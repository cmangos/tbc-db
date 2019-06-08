-- ********************************Conditions**********************************************************

/* Adding condition support for requiring Love is in the Air to be active and NOT active */

-- INSERT INTO `conditions` (`condition_entry`, `type`, `value1`, `value2`, `comments`) VALUES (500, 12, 8, 0, ''); -- exists already in tbc-db (condition_entry 474)
INSERT INTO `conditions` (`condition_entry`, `type`, `value1`, `value2`, `comments`) VALUES (950, 25, 8, 0, ''); -- 501 in classic-db

-- Condition to have perfume aura
INSERT INTO `conditions` (`condition_entry`, `type`, `value1`, `value2`, `comments`) VALUES (1299, 1, 26682, 0, ''); -- 502 in classic-db

-- Condition to have cologne aura
INSERT INTO `conditions` (`condition_entry`, `type`, `value1`, `value2`, `comments`) VALUES (1312, 1, 26681, 0, ''); -- 503 in classic-db

-- Condition to have adored aura 
INSERT INTO `conditions` (`condition_entry`, `type`, `value1`, `value2`, `comments`) VALUES (1313, 1, 26680, 0, ''); -- 504 in classic-db

-- Conditions to have and not have heartbroken aura
INSERT INTO `conditions` (`condition_entry`, `type`, `value1`, `value2`, `comments`) VALUES (1314, 1, 26898, 0, ''); -- 505 in classic-db
INSERT INTO `conditions` (`condition_entry`, `type`, `value1`, `value2`, `comments`) VALUES (1315, 11, 26898, 0, ''); -- 506 in classic-db

-- Condition Love is in the Air Active and NOT heartbroken
INSERT INTO `conditions` (`condition_entry`, `type`, `value1`, `value2`, `comments`) VALUES (1316, -1, 474, 1315, ''); -- 507 in classic-db

-- Condition Love is in the Air Active and heartbroken
INSERT INTO `conditions` (`condition_entry`, `type`, `value1`, `value2`, `comments`) VALUES (1317, -1, 474, 1314, ''); -- 508 in classic-db

-- Condition to have Love is in the Air Aura (NPC)
INSERT INTO `conditions` (`condition_entry`, `type`, `value1`, `value2`, `comments`) VALUES (1318, 32, 27741, 0, ''); -- 509 in classic-db

-- To have Cologne Aura and Love is in the Air Active
INSERT INTO `conditions` (`condition_entry`, `type`, `value1`, `value2`, `comments`) VALUES (1319, -1, 474, 1312, ''); -- 510 in classic-db

-- Conditions to not have perfume or cologne auras
INSERT INTO `conditions` (`condition_entry`, `type`, `value1`, `value2`, `comments`) VALUES (1320, 11, 26681, 0, ''); -- 511 in classic-db
INSERT INTO `conditions` (`condition_entry`, `type`, `value1`, `value2`, `comments`) VALUES (1321, 11, 26682, 0, ''); -- 512 in classic-db

-- Conditions to have/not have Love Tokens in inventory
INSERT INTO `conditions` (`condition_entry`, `type`, `value1`, `value2`, `comments`) VALUES (1322, 23, 21815, 1, ''); -- 513 in classic-db
INSERT INTO `conditions` (`condition_entry`, `type`, `value1`, `value2`, `comments`) VALUES (1323, 24, 21815, 1, ''); -- 514 in classic-db

-- Creating multiple conditon entry for love token gossip (cologne only)
INSERT INTO `conditions` (`condition_entry`, `type`, `value1`, `value2`, `comments`) VALUES (1324, -1, 1315, 1318, ''); -- 515 in classic-db
INSERT INTO `conditions` (`condition_entry`, `type`, `value1`, `value2`, `comments`) VALUES (1325, -1, 1319, 1322, ''); -- 516 in classic-db
INSERT INTO `conditions` (`condition_entry`, `type`, `value1`, `value2`, `comments`) VALUES (1326, -1, 1324, 1325, ''); -- 517 in classic-db

-- Adored and Love is in the Air Active
INSERT INTO `conditions` (`condition_entry`, `type`, `value1`, `value2`, `comments`) VALUES (1327, -1, 474, 1313, ''); -- 518 in classic-db

-- No Cologne Aura and Love is in the Air Active
INSERT INTO `conditions` (`condition_entry`, `type`, `value1`, `value2`, `comments`) VALUES (1328, -1, 474, 1320, ''); -- 519 in classic-db

-- No Perfume Aura and Love is in the Air Active
INSERT INTO `conditions` (`condition_entry`, `type`, `value1`, `value2`, `comments`) VALUES (1329, -1, 474, 1321, ''); -- 520 in classic-db

-- To have Perfume Aura and Love is in the Air Active
INSERT INTO `conditions` (`condition_entry`, `type`, `value1`, `value2`, `comments`) VALUES (1330, -1, 474, 1299, ''); -- 521 in classic-db

-- Creating multiple conditon entry for love token gossip (perfume only)
INSERT INTO `conditions` (`condition_entry`, `type`, `value1`, `value2`, `comments`) VALUES (1331, -1, 1322, 1330, ''); -- 522 in classic-db
INSERT INTO `conditions` (`condition_entry`, `type`, `value1`, `value2`, `comments`) VALUES (1332, -1, 1324, 1330, ''); -- 523 in classic-db

-- No tokens in inventory and event active
INSERT INTO `conditions` (`condition_entry`, `type`, `value1`, `value2`, `comments`) VALUES (1333, -1, 474, 1323, ''); -- 524 in classic-db

-- To have perfume or cologne aura and love is in the air active
INSERT INTO `conditions` (`condition_entry`, `type`, `value1`, `value2`, `comments`) VALUES (1334, -2, 1299, 1312, ''); -- 525 in classic-db
INSERT INTO `conditions` (`condition_entry`, `type`, `value1`, `value2`, `comments`) VALUES (1335, -1, 474, 1334, ''); -- 526 in classic-db

-- Creating multiple conditon entry for love token gossip (cologne or perfume for UC Guardians)
INSERT INTO `conditions` (`condition_entry`, `type`, `value1`, `value2`, `comments`) VALUES (1572, -1, 1322, 1335, ''); -- 527 in classic-db
INSERT INTO `conditions` (`condition_entry`, `type`, `value1`, `value2`, `comments`) VALUES (1573, -1, 1324, 1572, ''); -- 528 in classic-db

-- To Not have perfume or cologne aura and Love is in the air active(530)
INSERT INTO `conditions` (`condition_entry`, `type`, `value1`, `value2`, `comments`) VALUES (1574, -3, 1334, 0, ''); -- 529 in classic-db
INSERT INTO `conditions` (`condition_entry`, `type`, `value1`, `value2`, `comments`) VALUES (1575, -1, 474, 1574, ''); -- 530 in classic-db

-- NPC Female (SW City Guard and Patrollers)
INSERT INTO `conditions` (`condition_entry`, `type`, `value1`, `value2`, `comments`) VALUES (1576, 41, 2, 0, ''); -- 531 in classic-db

-- NPC Female (Org Grunts and Bluffwatchers)
INSERT INTO `conditions` (`condition_entry`, `type`, `value1`, `value2`, `comments`) VALUES (1577, 41, 1, 0, ''); -- 532 in classic-db

-- NPC Male
INSERT INTO `conditions` (`condition_entry`, `type`, `value1`, `value2`, `comments`) VALUES (1578, 41, 0, 0, ''); -- 533 in classic-db

-- Condition Love is in the Air Active, player NOT heartbroken and Guard NPC Female (SW City Guard and Patrollers)
INSERT INTO `conditions` (`condition_entry`, `type`, `value1`, `value2`, `comments`) VALUES (1579, -1, 1316, 1576, ''); -- 534 in classic-db

-- Condition Love is in the Air Active, player NOT heartbroken and Guard NPC Female (Org Grunts and Bluffwatchers)
INSERT INTO `conditions` (`condition_entry`, `type`, `value1`, `value2`, `comments`) VALUES (1580, -1, 1316, 1577, ''); -- 535 in classic-db

-- Condition Love is in the Air Active, player NOT heartbroken and Guard NPC Male
INSERT INTO `conditions` (`condition_entry`, `type`, `value1`, `value2`, `comments`) VALUES (1581, -1, 1316, 1578, ''); -- 536 in classic-db

-- Conditon entry for love token gossip (cologne only) and Guard NPC Female (SW City Guard and Patrollers)
INSERT INTO `conditions` (`condition_entry`, `type`, `value1`, `value2`, `comments`) VALUES (1582, -1, 1326, 1576, ''); -- 537 in classic-db

-- Conditon entry for love token gossip (cologne only) and Guard NPC Female (Org Grunts and Bluffwatchers)
INSERT INTO `conditions` (`condition_entry`, `type`, `value1`, `value2`, `comments`) VALUES (1583, -1, 1326, 1577, ''); -- 538 in classic-db

-- Conditon entry for love token gossip (perfume only) and Guard NPC Male
INSERT INTO `conditions` (`condition_entry`, `type`, `value1`, `value2`, `comments`) VALUES (1588, -1, 1332, 1578, ''); -- 539 in classic-db

-- No Cologne Aura and Love is in the Air Active and Guard NPC Female (SW City Guard and Patrollers)
INSERT INTO `conditions` (`condition_entry`, `type`, `value1`, `value2`, `comments`) VALUES (1589, -1, 1328, 1576, ''); -- 540 in classic-db

-- No Cologne Aura and Love is in the Air Active and Guard NPC Female (Org Grunts and Bluffwatchers)
INSERT INTO `conditions` (`condition_entry`, `type`, `value1`, `value2`, `comments`) VALUES (1590, -1, 1328, 1577, ''); -- 541 in classic-db

-- No Perfume Aura and Love is in the Air Active and Guard NPC Male
INSERT INTO `conditions` (`condition_entry`, `type`, `value1`, `value2`, `comments`) VALUES (1591, -1, 1329, 1578, ''); -- 542 in classic-db


