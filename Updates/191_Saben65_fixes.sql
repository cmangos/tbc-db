-- https://github.com/cmangos/tbc-db/issues/4
-- Missing Gossips in HFP

-- Apothecary Zelana
UPDATE `creature_template` SET `GossipMenuID`=8269 WHERE `entry`=21257;
DELETE FROM `gossip_menu` WHERE `entry`=8269;
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES (8269, 10293, 0, 0);

-- Forward Commander To'arch
UPDATE `creature_template` SET `GossipMenuID`=7955 WHERE `entry`=19273;
DELETE FROM `gossip_menu` WHERE `entry`=7955;
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES (7955, 9771, 0, 0);

-- Amilya Airheart
UPDATE `creature_template` SET `GossipMenuID`=6944 WHERE `entry`=19558;

-- Stone Guard Ambelan
UPDATE `creature_template` SET `GossipMenuID`=7958 WHERE `entry`=19332;
DELETE FROM `gossip_menu` WHERE `entry`=7958;
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES (7958, 9777, 0, 0);

-- Zezzak
UPDATE `creature_template` SET `GossipMenuID`=8505 WHERE `entry`=22231;
DELETE FROM `gossip_menu` WHERE `entry`=8505;
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES (8505, 10636, 0, 0);

-- Captain Darkhowl
UPDATE `creature_template` SET `GossipMenuID`=8495 WHERE `entry`=22107;
DELETE FROM `gossip_menu` WHERE `entry`=8495;
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES (8495, 10610, 0, 0);

-- Overlord Hun Maimfist
UPDATE `creature_template` SET `GossipMenuID`=7335 WHERE `entry`=16576;
DELETE FROM `gossip_menu` WHERE `entry`=7335;
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES (7335, 8719, 0, 0);

-- https://github.com/cmangos/tbc-db/issues/6
-- Add stealth detection to Phantom Valets (Karazhan)
UPDATE `creature_template_addon` SET `auras`='18950' WHERE `entry`=16408;

-- https://github.com/cmangos/tbc-db/issues/8
-- Add gossip to Bennett
UPDATE `creature_template` SET `GossipMenuId`=8173 WHERE `entry`=16426;
DELETE FROM `gossip_menu` WHERE `entry`=8173;
INSERT INTO `gossip_menu` (`entry`, `text_id`) VALUES (8173, 10120);
DELETE FROM `npc_text` WHERE `id`=10120;
INSERT INTO `npc_text` (`ID`, `text0_0`, `text0_1`, `lang0`, `prob0`, `em0_0`, `em0_1`, `em0_2`, `em0_3`, `em0_4`, `em0_5`, `text1_0`, `text1_1`, `lang1`, `prob1`, `em1_0`, `em1_1`, `em1_2`, `em1_3`, `em1_4`, `em1_5`, `text2_0`, `text2_1`, `lang2`, `prob2`, `em2_0`, `em2_1`, `em2_2`, `em2_3`, `em2_4`, `em2_5`, `text3_0`, `text3_1`, `lang3`, `prob3`, `em3_0`, `em3_1`, `em3_2`, `em3_3`, `em3_4`, `em3_5`, `text4_0`, `text4_1`, `lang4`, `prob4`, `em4_0`, `em4_1`, `em4_2`, `em4_3`, `em4_4`, `em4_5`, `text5_0`, `text5_1`, `lang5`, `prob5`, `em5_0`, `em5_1`, `em5_2`, `em5_3`, `em5_4`, `em5_5`, `text6_0`, `text6_1`, `lang6`, `prob6`, `em6_0`, `em6_1`, `em6_2`, `em6_3`, `em6_4`, `em6_5`, `text7_0`, `text7_1`, `lang7`, `prob7`, `em7_0`, `em7_1`, `em7_2`, `em7_3`, `em7_4`, `em7_5`) VALUES (10120, 'I don\'t have time for idle chitchat. I have men and women to train, and a tower to watch.', NULL, 0, 1, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0);

-- https://github.com/cmangos/tbc-db/issues/9
-- Limit Karazhan book buffs to inside the raid
DELETE FROM `spell_area` WHERE `spell` IN (30550,30557,30562,30567);
INSERT INTO `spell_area` (`spell`, `area`, `quest_start`, `quest_start_active`, `quest_end`, `condition_id`, `aura_spell`, `racemask`, `gender`, `autocast`) VALUES 
(30550, 3457, 0, 0, 0, 0, 0, 0, 2, 0), -- Redemption of the Fallen
(30557, 3457, 0, 0, 0, 0, 0, 0, 2, 0), -- Wrath of the Titans
(30562, 3457, 0, 0, 0, 0, 0, 0, 2, 0), -- Legacy of the Mountain King
(30567, 3457, 0, 0, 0, 0, 0, 0, 2, 0); -- Torment of the Worgen

-- https://github.com/cmangos/tbc-db/issues/10
-- Dreadcaller 1 Pathing
SET @NPC := 69499;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=-558.5822,`position_y`=2003.227,`position_z`=98.30606 WHERE `guid`=@NPC;
DELETE FROM `creature_movement` WHERE `id`=@NPC;
INSERT INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) VALUES 
(@NPC,1,-558.5822,2003.227,98.30606,0,0,0,0,0,0,0,0,0,0,0,0),
(@NPC,2,-557.4218,2005.291,99.07405,0,0,0,0,0,0,0,0,0,0,0,0),
(@NPC,3,-559.7542,2056.054,96.38632,0,0,0,0,0,0,0,0,0,0,0,0),
(@NPC,4,-540.9093,2062.701,104.2178,0,0,0,0,0,0,0,0,0,0,0,0),
(@NPC,5,-538.0739,2083.637,102.7935,0,0,0,0,0,0,0,0,0,0,0,0),
(@NPC,6,-531.9629,2100.469,104.145,0,0,0,0,0,0,0,0,0,0,0,0),
(@NPC,7,-540.8042,2121.509,97.44407,0,0,0,0,0,0,0,0,0,0,0,0),
(@NPC,8,-542.6715,2139.263,94.42299,0,0,0,0,0,0,0,0,0,0,0,0),
(@NPC,9,-542.0955,2125.005,96.38588,0,0,0,0,0,0,0,0,0,0,0,0),
(@NPC,10,-531.0101,2105.611,103.8495,0,0,0,0,0,0,0,0,0,0,0,0),
(@NPC,11,-533.4691,2097.096,103.5421,0,0,0,0,0,0,0,0,0,0,0,0),
(@NPC,12,-539.8324,2066.038,103.8721,0,0,0,0,0,0,0,0,0,0,0,0),
(@NPC,13,-559.5454,2057.871,96.58672,0,0,0,0,0,0,0,0,0,0,0,0),
(@NPC,14,-557.4636,2005.37,98.92694,0,0,0,0,0,0,0,0,0,0,0,0);
-- .go -558.5822 2003.227 98.30606

-- Dreadcaller 2 Pathing
SET @NPC := 69500;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=233.3709,`position_y`=2074.927,`position_z`=39.10539 WHERE `guid`=@NPC;
DELETE FROM `creature_movement` WHERE `id`=@NPC;
INSERT INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) VALUES 
(@NPC,1,233.3709,2074.927,39.10539,0,0,0,0,0,0,0,0,0,0,0,0),
(@NPC,2,228.1582,2076.218,39.70464,0,0,0,0,0,0,0,0,0,0,0,0),
(@NPC,3,226.8357,2086.181,39.48833,0,0,0,0,0,0,0,0,0,0,0,0),
(@NPC,4,227.4231,2100.461,39.53439,0,0,0,0,0,0,0,0,0,0,0,0),
(@NPC,5,231.5971,2104.666,38.92635,0,0,0,0,0,0,0,0,0,0,0,0),
(@NPC,6,237.6874,2098.439,39.00676,0,0,0,0,0,0,0,0,0,0,0,0),
(@NPC,7,241.6207,2088.015,38.11906,0,0,0,0,0,0,0,0,0,0,0,0),
(@NPC,8,238.947,2078.802,38.06547,0,0,0,0,0,0,0,0,0,0,0,0);
-- .go 233.3709 2074.927 39.10539

-- Dreadcaller 3 Pathing
SET @NPC := 69501;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=190.7178,`position_y`=2286.323,`position_z`=49.66181 WHERE `guid`=@NPC;
DELETE FROM `creature_movement` WHERE `id`=@NPC;
INSERT INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) VALUES 
(@NPC,1,190.7178,2286.323,49.66181,0,0,0,0,0,0,0,0,0,0,0,0),
(@NPC,2,210.6431,2285.845,53.60326,0,0,0,0,0,0,0,0,0,0,0,0),
(@NPC,3,222.5459,2286.666,56.13475,0,0,0,0,0,0,0,0,0,0,0,0),
(@NPC,4,231.5569,2296.63,60.31371,0,0,0,0,0,0,0,0,0,0,0,0),
(@NPC,5,220.7462,2308.746,60.02021,0,0,0,0,0,0,0,0,0,0,0,0),
(@NPC,6,208.7211,2311.991,57.36103,0,0,0,0,0,0,0,0,0,0,0,0),
(@NPC,7,195.7977,2312.93,53.85427,0,0,0,0,0,0,0,0,0,0,0,0),
(@NPC,8,181.254,2297.919,50.28107,0,0,0,0,0,0,0,0,0,0,0,0);
-- .go 190.7178 2286.323 49.66181

-- Dreadcaller 4 Pathing
SET @NPC := 69502;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=177.5729,`position_y`=2268.238,`position_z`=48.5948 WHERE `guid`=@NPC;
DELETE FROM `creature_movement` WHERE `id`=@NPC;
INSERT INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) VALUES 
(@NPC,1,177.5729,2268.238,48.5948,0,0,0,0,0,0,0,0,0,0,0,0),
(@NPC,2,206.0571,2228.519,54.04856,0,0,0,0,0,0,0,0,0,0,0,0);
-- .go 177.5729 2268.238 48.5948

-- Dreadcaller 5 Pathing
SET @NPC := 69503;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=-523.7537,`position_y`=2008.213,`position_z`=82.43176 WHERE `guid`=@NPC;
DELETE FROM `creature_movement` WHERE `id`=@NPC;
INSERT INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) VALUE
(@NPC,1,-523.7537,2008.213,82.43176,0,0,0,0,0,0,0,0,0,0,0,0),
(@NPC,2,-513.3772,2034.226,82.13103,0,0,0,0,0,0,0,0,0,0,0,0),
(@NPC,3,-501.1374,2063.957,81.46646,0,0,0,0,0,0,0,0,0,0,0,0),
(@NPC,4,-490.7202,2097.977,79.50304,0,0,0,0,0,0,0,0,0,0,0,0),
(@NPC,5,-495.6437,2124.143,75.1469,0,0,0,0,0,0,0,0,0,0,0,0),
(@NPC,6,-500.0753,2152.032,70.07507,0,0,0,0,0,0,0,0,0,0,0,0),
(@NPC,7,-497.6553,2131.211,73.99121,0,0,0,0,0,0,0,0,0,0,0,0),
(@NPC,8,-488.903,2108.3,78.71799,0,0,0,0,0,0,0,0,0,0,0,0),
(@NPC,9,-496.6252,2076.111,81.08714,0,0,0,0,0,0,0,0,0,0,0,0),
(@NPC,10,-505.7927,2051.876,81.88617,0,0,0,0,0,0,0,0,0,0,0,0),
(@NPC,11,-519.2833,2018.794,82.35017,0,0,0,0,0,0,0,0,0,0,0,0),
(@NPC,12,-523.7976,2008.294,82.49103,0,0,0,0,0,0,0,0,0,0,0,0);
-- .go -523.7537 2008.213 82.43176

-- Dreadcaller 6 Pathing
SET @NPC := 69504;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=-506.4011,`position_y`=1982.52,`position_z`=85.11931 WHERE `guid`=@NPC;
DELETE FROM `creature_movement` WHERE `id`=@NPC;
INSERT INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) VALUE
(@NPC,1,-506.4011,1982.52,85.11931,0,0,0,0,0,0,0,0,0,0,0,0),
(@NPC,2,-491.8763,2002.533,90.20009,0,0,0,0,0,0,0,0,0,0,0,0),
(@NPC,3,-475.5587,2034.282,93.52704,0,0,0,0,0,0,0,0,0,0,0,0),
(@NPC,4,-459.14,2057.011,93.19531,0,0,0,0,0,0,0,0,0,0,0,0),
(@NPC,5,-488.9269,2006.812,90.64146,0,0,0,0,0,0,0,0,0,0,0,0),
(@NPC,6,-506.4684,1982.384,85.10349,0,0,0,0,0,0,0,0,0,0,0,0),
(@NPC,7,-459.1624,2056.984,93.22046,0,0,0,0,0,0,0,0,0,0,0,0),
(@NPC,8,-453.0856,2078.318,92.4622,0,0,0,0,0,0,0,0,0,0,0,0),
(@NPC,9,-458.4782,2105.915,91.30417,0,0,0,0,0,0,0,0,0,0,0,0),
(@NPC,10,-453.1829,2091.579,91.92897,0,0,0,0,0,0,0,0,0,0,0,0),
(@NPC,11,-454.6579,2067.877,92.86068,0,0,0,0,0,0,0,0,0,0,0,0),
(@NPC,12,-471.7339,2040.147,93.86339,0,0,0,0,0,0,0,0,0,0,0,0),
(@NPC,13,-488.8954,2006.772,90.6447,0,0,0,0,0,0,0,0,0,0,0,0),
(@NPC,14,-506.3882,1982.291,85.0636,0,0,0,0,0,0,0,0,0,0,0,0);
-- .go -506.4011 1982.52 85.11931

-- https://github.com/cmangos/tbc-db/issues/11
-- Add stealth detection to Bog Overlords
DELETE FROM `creature_template_addon` WHERE `entry`=21694;
INSERT INTO `creature_template_addon` (`entry`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) VALUE
(21694,0,0,0,0,0,0,'18950');