-- The Steamvault - Linking

-- first "room" / way to "Hydromancer Thespia" boss
-- water elementals are already linked
-- 2x Coilfang Warrior (17802)
REPLACE INTO creature_linking (guid,master_guid,flag) VALUES
(118,120,3);
-- 3x Coilfang Engineer (17721) 1x Coilfang Warrior (17802)
REPLACE INTO creature_linking (guid,master_guid,flag) VALUES
(317,12686,3),
(317,12687,3),
(12686,12687,3);
-- 1x Coilfang Engineer (17721) 1x Coilfang Siren (17801) 1x Coilfang Oracle (17803)
REPLACE INTO creature_linking (guid,master_guid,flag) VALUES
(12674,12675,3),
(12674,12677,3),
(12675,12677,3);
-- 1x Coilfang Warrior (17802) 1x Coilfang Oracle (17803) 1x Coilfang Engineer (17721)
REPLACE INTO creature_linking (guid,master_guid,flag) VALUES
(12711,12710,3),
(12711,12709,3),
(12710,12709,3);
-- 2x Coilfang Siren (17801) 1x Coilfang Oracle (17803)
REPLACE INTO creature_linking (guid,master_guid,flag) VALUES
(12698,12699,3),
(12698,12697,3),
(12699,12697,3);
-- 1x Coilfang Engineer (17721) 1x Coilfang Warrior (17802) 1x Coilfang Oracle (17803)
REPLACE INTO creature_linking (guid,master_guid,flag) VALUES
(452,502,3),
(452,1550,3),
(502,1550,3);
-- 2x Coilfang Engineer (17721)
REPLACE INTO creature_linking (guid,master_guid,flag) VALUES
(12678,12715,3);
-- 2x Coilfang Engineer (17721) 1x Coilfang Siren (17801)
REPLACE INTO creature_linking (guid,master_guid,flag) VALUES
(12691,12690,3),
(12691,12676,3),
(12690,12676,3);
-- 1x Coilfang Engineer (17721) 1x Coilfang Siren (17801) 1x Coilfang Oracle (17803)
REPLACE INTO creature_linking (guid,master_guid,flag) VALUES
(1559,1557,3),
(1559,1560,3),
(1557,1560,3);
-- 2x Coilfang Siren (17801) 1x Coilfang Warrior (17802)
REPLACE INTO creature_linking (guid,master_guid,flag) VALUES
(12689,12692,3),
(12689,12693,3),
(12692,12693,3);
-- 2x Coilfang Siren (17801) 1x Coilfang Warrior (17802)
REPLACE INTO creature_linking (guid,master_guid,flag) VALUES
(1741,1742,3),
(1741,2080,3),
(1742,2080,3);
-- ramp towards next 2 bosses
-- 2x Coilfang Myrmidon (17800)
REPLACE INTO creature_linking (guid,master_guid,flag) VALUES
(1554,1552,3);
-- 1x Coilfang Sorceress (17722) 1x Coilfang Warrior (17802)
REPLACE INTO creature_linking (guid,master_guid,flag) VALUES
(1561,1723,3);
-- 2x Coilfang Sorceress (17722) 1x Coilfang Warrior (17802)
REPLACE INTO creature_linking (guid,master_guid,flag) VALUES
(12669,12668,3),
(12669,12667,3),
(12668,12667,3);
-- 2x Coilfang Siren (17801) 1x Coilfang Myrmidon (17800) 1x Coilfang Sorceress (17722)
REPLACE INTO creature_linking (guid,master_guid,flag) VALUES
(12627,12628,3),
(12627,12632,3),
(12627,12631,3),
(12628,12632,3),
(12628,12631,3),
(12632,12631,3);
-- 1x Coilfang Siren (17801) 2x Coilfang Myrmidon (17800) 1x Coilfang Sorceress (17722)
REPLACE INTO creature_linking (guid,master_guid,flag) VALUES
(12621,12620,3),
(12621,12619,3),
(12621,12622,3),
(12620,12619,3),
(12620,12622,3),
(12619,12622,3);
-- 2x Coilfang Myrmidon (17800) 1x Coilfang Sorceress (17722)
REPLACE INTO creature_linking (guid,master_guid,flag) VALUES
(12624,12625,3),
(12624,12626,3),
(12625,12626,3);
-- 1x Coilfang Myrmidon (17800) 1x Coilfang Sorceress (17722) 2x Coilfang Engineer (17721)
REPLACE INTO creature_linking (guid,master_guid,flag) VALUES
(12663,12662,3),
(12663,12660,3),
(12663,12661,3),
(12662,12660,3),
(12662,12661,3),
(12660,12661,3);
-- 1x Coilfang Myrmidon (17800) 1x Coilfang Sorceress (17722) 1x Coilfang Oracle (17803)
REPLACE INTO creature_linking (guid,master_guid,flag) VALUES
(12636,12637,3),
(12636,12638,3),
(12637,12638,3);
-- way to "Mekgineer Steamrigger" boss
-- not linking the slavemasters to the slaves yet, need to implement the paths/WPs first
-- 2x Coilfang Myrmidon (17800) 1x Coilfang Sorceress (17722) 1x Coilfang Slavemaster (17805)
REPLACE INTO creature_linking (guid,master_guid,flag) VALUES
(12618,12615,3),
(12618,12614,3),
(12618,12616,3),
(12615,12614,3),
(12615,12616,3),
(12614,12616,3);
-- 2x Coilfang Slavemaster (17805)
REPLACE INTO creature_linking (guid,master_guid,flag) VALUES
(12590,12588,3);
-- 2x Steamrigger Mechanic (17951) 1x Mekgineer Steamrigger (17796)
REPLACE INTO creature_linking (guid,master_guid,flag) VALUES
(12583,12597,3),
(12583,12582,3),
(12597,12582,3);
-- room of "Warlord Kalithresh" boss
-- 2x Coilfang Myrmidon (17800) 1x Coilfang Oracle (17803)
REPLACE INTO creature_linking (guid,master_guid,flag) VALUES
(12641,12642,3),
(12641,12643,3),
(12642,12643,3);
-- 1x Coilfang Myrmidon (17800) 1x Coilfang Sorceress (17722) 1x Coilfang Oracle (17803) 1x Coilfang Siren (17801)
REPLACE INTO creature_linking (guid,master_guid,flag) VALUES
(12649,12651,3),
(12649,12652,3),
(12649,12650,3),
(12651,12652,3),
(12651,12650,3),
(12652,12650,3);
-- 1x Coilfang Myrmidon (17800) 1x Coilfang Sorceress (17722) 1x Coilfang Oracle (17803) 1x Coilfang Siren (17801)
REPLACE INTO creature_linking (guid,master_guid,flag) VALUES
(12648,12647,3),
(12648,12653,3),
(12648,12646,3),
(12647,12653,3),
(12647,12646,3),
(12653,12646,3);


