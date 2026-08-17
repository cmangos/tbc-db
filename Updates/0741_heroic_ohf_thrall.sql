-- Heroic OHF Thrall should not hit for 1 damage, evidence shows he can deal more than 1 damage, and normal mode does more than 1 damage
-- Appears it would be closer to 700-900 against Epoch Hunter, this is 330-850 as variance is unknown
UPDATE `creature_template` SET `DamageMultiplier` = '4.00578' WHERE (`Entry` = '20548');

DELETE FROM `waypoint_path` WHERE `PathId` = 5600435;

-- add thrall waypoints to waypoint_path
INSERT INTO `waypoint_path` (`PathId`,`Point`,`PositionX`,`PositionY`,`PositionZ`,`Orientation`,`WaitTime`,`ScriptId`,`Comment`) VALUES (5600435,1,2230.91,118.765,82.2947,100,2000,0,'open the prison door');
INSERT INTO `waypoint_path` (`PathId`,`Point`,`PositionX`,`PositionY`,`PositionZ`,`Orientation`,`WaitTime`,`ScriptId`,`Comment`) VALUES (5600435,2,2230.33,114.98,82.2946,100,0,0,'');
INSERT INTO `waypoint_path` (`PathId`,`Point`,`PositionX`,`PositionY`,`PositionZ`,`Orientation`,`WaitTime`,`ScriptId`,`Comment`) VALUES (5600435,3,2233.36,111.057,82.2996,100,0,0,'');
INSERT INTO `waypoint_path` (`PathId`,`Point`,`PositionX`,`PositionY`,`PositionZ`,`Orientation`,`WaitTime`,`ScriptId`,`Comment`) VALUES (5600435,4,2231.17,108.486,82.6624,100,0,0,'');
INSERT INTO `waypoint_path` (`PathId`,`Point`,`PositionX`,`PositionY`,`PositionZ`,`Orientation`,`WaitTime`,`ScriptId`,`Comment`) VALUES (5600435,5,2220.22,114.605,89.4264,100,0,0,'');
INSERT INTO `waypoint_path` (`PathId`,`Point`,`PositionX`,`PositionY`,`PositionZ`,`Orientation`,`WaitTime`,`ScriptId`,`Comment`) VALUES (5600435,6,2215.23,115.99,89.4549,100,0,0,'');
INSERT INTO `waypoint_path` (`PathId`,`Point`,`PositionX`,`PositionY`,`PositionZ`,`Orientation`,`WaitTime`,`ScriptId`,`Comment`) VALUES (5600435,7,2210,106.849,89.4549,100,0,0,'');
INSERT INTO `waypoint_path` (`PathId`,`Point`,`PositionX`,`PositionY`,`PositionZ`,`Orientation`,`WaitTime`,`ScriptId`,`Comment`) VALUES (5600435,8,2205.66,105.234,89.4549,100,0,0,'');
INSERT INTO `waypoint_path` (`PathId`,`Point`,`PositionX`,`PositionY`,`PositionZ`,`Orientation`,`WaitTime`,`ScriptId`,`Comment`) VALUES (5600435,9,2192.26,112.618,89.4549,100,1000,1787601,'thrall knocks out the armorer');
INSERT INTO `waypoint_path` (`PathId`,`Point`,`PositionX`,`PositionY`,`PositionZ`,`Orientation`,`WaitTime`,`ScriptId`,`Comment`) VALUES (5600435,10,2182.11,120.328,89.4548,100,3000,0,'SAY_TH_ARMORY_1');
INSERT INTO `waypoint_path` (`PathId`,`Point`,`PositionX`,`PositionY`,`PositionZ`,`Orientation`,`WaitTime`,`ScriptId`,`Comment`) VALUES (5600435,11,2182.11,120.328,89.4548,100,2000,0,'');
INSERT INTO `waypoint_path` (`PathId`,`Point`,`PositionX`,`PositionY`,`PositionZ`,`Orientation`,`WaitTime`,`ScriptId`,`Comment`) VALUES (5600435,12,2182.11,120.328,89.4548,100,2000,0,'');
INSERT INTO `waypoint_path` (`PathId`,`Point`,`PositionX`,`PositionY`,`PositionZ`,`Orientation`,`WaitTime`,`ScriptId`,`Comment`) VALUES (5600435,13,2182.11,120.328,89.4548,100,2000,0,'');
INSERT INTO `waypoint_path` (`PathId`,`Point`,`PositionX`,`PositionY`,`PositionZ`,`Orientation`,`WaitTime`,`ScriptId`,`Comment`) VALUES (5600435,14,2182.11,120.328,89.4548,100,3000,0,'');
INSERT INTO `waypoint_path` (`PathId`,`Point`,`PositionX`,`PositionY`,`PositionZ`,`Orientation`,`WaitTime`,`ScriptId`,`Comment`) VALUES (5600435,15,2182.11,120.328,89.4548,100,3000,0,'SAY_TH_ARMORY_2');
INSERT INTO `waypoint_path` (`PathId`,`Point`,`PositionX`,`PositionY`,`PositionZ`,`Orientation`,`WaitTime`,`ScriptId`,`Comment`) VALUES (5600435,16,2189.44,113.922,89.4549,100,0,0,'');
INSERT INTO `waypoint_path` (`PathId`,`Point`,`PositionX`,`PositionY`,`PositionZ`,`Orientation`,`WaitTime`,`ScriptId`,`Comment`) VALUES (5600435,17,2195.63,110.584,89.4549,100,0,0,'');
INSERT INTO `waypoint_path` (`PathId`,`Point`,`PositionX`,`PositionY`,`PositionZ`,`Orientation`,`WaitTime`,`ScriptId`,`Comment`) VALUES (5600435,18,2201.09,115.115,89.4549,100,0,0,'');
INSERT INTO `waypoint_path` (`PathId`,`Point`,`PositionX`,`PositionY`,`PositionZ`,`Orientation`,`WaitTime`,`ScriptId`,`Comment`) VALUES (5600435,19,2204.34,121.036,89.4355,100,0,0,'');
INSERT INTO `waypoint_path` (`PathId`,`Point`,`PositionX`,`PositionY`,`PositionZ`,`Orientation`,`WaitTime`,`ScriptId`,`Comment`) VALUES (5600435,20,2208.66,129.127,87.956,100,0,0,'first ambush');
INSERT INTO `waypoint_path` (`PathId`,`Point`,`PositionX`,`PositionY`,`PositionZ`,`Orientation`,`WaitTime`,`ScriptId`,`Comment`) VALUES (5600435,21,2193.09,137.94,88.2164,100,0,0,'');
INSERT INTO `waypoint_path` (`PathId`,`Point`,`PositionX`,`PositionY`,`PositionZ`,`Orientation`,`WaitTime`,`ScriptId`,`Comment`) VALUES (5600435,22,2173.39,149.064,87.9227,100,0,0,'');
INSERT INTO `waypoint_path` (`PathId`,`Point`,`PositionX`,`PositionY`,`PositionZ`,`Orientation`,`WaitTime`,`ScriptId`,`Comment`) VALUES (5600435,23,2164.25,137.965,85.0595,100,0,0,'second ambush');
INSERT INTO `waypoint_path` (`PathId`,`Point`,`PositionX`,`PositionY`,`PositionZ`,`Orientation`,`WaitTime`,`ScriptId`,`Comment`) VALUES (5600435,24,2149.31,125.645,77.0858,100,0,0,'');
INSERT INTO `waypoint_path` (`PathId`,`Point`,`PositionX`,`PositionY`,`PositionZ`,`Orientation`,`WaitTime`,`ScriptId`,`Comment`) VALUES (5600435,25,2142.78,127.173,75.5954,100,0,0,'');
INSERT INTO `waypoint_path` (`PathId`,`Point`,`PositionX`,`PositionY`,`PositionZ`,`Orientation`,`WaitTime`,`ScriptId`,`Comment`) VALUES (5600435,26,2139.28,133.952,73.6386,100,0,0,'third ambush');
INSERT INTO `waypoint_path` (`PathId`,`Point`,`PositionX`,`PositionY`,`PositionZ`,`Orientation`,`WaitTime`,`ScriptId`,`Comment`) VALUES (5600435,27,2139.54,155.235,67.1269,100,0,0,'');
INSERT INTO `waypoint_path` (`PathId`,`Point`,`PositionX`,`PositionY`,`PositionZ`,`Orientation`,`WaitTime`,`ScriptId`,`Comment`) VALUES (5600435,28,2145.38,167.551,64.8974,100,0,0,'fourth ambush');
INSERT INTO `waypoint_path` (`PathId`,`Point`,`PositionX`,`PositionY`,`PositionZ`,`Orientation`,`WaitTime`,`ScriptId`,`Comment`) VALUES (5600435,29,2134.28,175.304,67.9446,100,0,0,'');
INSERT INTO `waypoint_path` (`PathId`,`Point`,`PositionX`,`PositionY`,`PositionZ`,`Orientation`,`WaitTime`,`ScriptId`,`Comment`) VALUES (5600435,30,2118.08,187.387,68.8141,100,0,0,'');
INSERT INTO `waypoint_path` (`PathId`,`Point`,`PositionX`,`PositionY`,`PositionZ`,`Orientation`,`WaitTime`,`ScriptId`,`Comment`) VALUES (5600435,31,2105.88,195.461,65.1854,100,0,0,'');
INSERT INTO `waypoint_path` (`PathId`,`Point`,`PositionX`,`PositionY`,`PositionZ`,`Orientation`,`WaitTime`,`ScriptId`,`Comment`) VALUES (5600435,32,2096.77,196.939,65.2117,100,0,0,'');
INSERT INTO `waypoint_path` (`PathId`,`Point`,`PositionX`,`PositionY`,`PositionZ`,`Orientation`,`WaitTime`,`ScriptId`,`Comment`) VALUES (5600435,33,2083.9,209.395,64.8736,100,0,0,'');
INSERT INTO `waypoint_path` (`PathId`,`Point`,`PositionX`,`PositionY`,`PositionZ`,`Orientation`,`WaitTime`,`ScriptId`,`Comment`) VALUES (5600435,34,2063.4,229.509,64.4883,100,0,0,'summon Skarloc');
INSERT INTO `waypoint_path` (`PathId`,`Point`,`PositionX`,`PositionY`,`PositionZ`,`Orientation`,`WaitTime`,`ScriptId`,`Comment`) VALUES (5600435,35,2063.4,229.509,64.4883,100,10000,0,'SAY_SKARLOC_ENTER');
INSERT INTO `waypoint_path` (`PathId`,`Point`,`PositionX`,`PositionY`,`PositionZ`,`Orientation`,`WaitTime`,`ScriptId`,`Comment`) VALUES (5600435,36,2063.4,229.509,64.4883,100,5000,0,'attack Skarloc');
INSERT INTO `waypoint_path` (`PathId`,`Point`,`PositionX`,`PositionY`,`PositionZ`,`Orientation`,`WaitTime`,`ScriptId`,`Comment`) VALUES (5600435,37,2063.4,229.509,64.4883,100,0,0,'gossip after skarloc');
INSERT INTO `waypoint_path` (`PathId`,`Point`,`PositionX`,`PositionY`,`PositionZ`,`Orientation`,`WaitTime`,`ScriptId`,`Comment`) VALUES (5600435,38,2046.7,251.941,62.7851,100,4000,0,'mount up');
INSERT INTO `waypoint_path` (`PathId`,`Point`,`PositionX`,`PositionY`,`PositionZ`,`Orientation`,`WaitTime`,`ScriptId`,`Comment`) VALUES (5600435,39,2046.7,251.941,62.7851,100,3000,0,'SAY_TH_MOUNTS_UP');
INSERT INTO `waypoint_path` (`PathId`,`Point`,`PositionX`,`PositionY`,`PositionZ`,`Orientation`,`WaitTime`,`ScriptId`,`Comment`) VALUES (5600435,40,2011.77,278.478,65.3388,100,0,0,'');
INSERT INTO `waypoint_path` (`PathId`,`Point`,`PositionX`,`PositionY`,`PositionZ`,`Orientation`,`WaitTime`,`ScriptId`,`Comment`) VALUES (5600435,41,2005.08,289.676,66.1179,100,0,0,'');
INSERT INTO `waypoint_path` (`PathId`,`Point`,`PositionX`,`PositionY`,`PositionZ`,`Orientation`,`WaitTime`,`ScriptId`,`Comment`) VALUES (5600435,42,2033.11,337.45,66.0948,100,0,0,'');
INSERT INTO `waypoint_path` (`PathId`,`Point`,`PositionX`,`PositionY`,`PositionZ`,`Orientation`,`WaitTime`,`ScriptId`,`Comment`) VALUES (5600435,43,2070.3,416.208,66.0893,100,0,0,'');
INSERT INTO `waypoint_path` (`PathId`,`Point`,`PositionX`,`PositionY`,`PositionZ`,`Orientation`,`WaitTime`,`ScriptId`,`Comment`) VALUES (5600435,44,2086.76,469.768,65.9182,100,0,0,'');
INSERT INTO `waypoint_path` (`PathId`,`Point`,`PositionX`,`PositionY`,`PositionZ`,`Orientation`,`WaitTime`,`ScriptId`,`Comment`) VALUES (5600435,45,2101.7,497.955,61.7881,100,0,0,'');
INSERT INTO `waypoint_path` (`PathId`,`Point`,`PositionX`,`PositionY`,`PositionZ`,`Orientation`,`WaitTime`,`ScriptId`,`Comment`) VALUES (5600435,46,2133.39,530.933,55.37,100,0,0,'');
INSERT INTO `waypoint_path` (`PathId`,`Point`,`PositionX`,`PositionY`,`PositionZ`,`Orientation`,`WaitTime`,`ScriptId`,`Comment`) VALUES (5600435,47,2157.91,559.635,48.5157,100,0,0,'');
INSERT INTO `waypoint_path` (`PathId`,`Point`,`PositionX`,`PositionY`,`PositionZ`,`Orientation`,`WaitTime`,`ScriptId`,`Comment`) VALUES (5600435,48,2167.34,586.191,42.4394,100,0,0,'');
INSERT INTO `waypoint_path` (`PathId`,`Point`,`PositionX`,`PositionY`,`PositionZ`,`Orientation`,`WaitTime`,`ScriptId`,`Comment`) VALUES (5600435,49,2174.17,637.643,33.9002,100,0,0,'');
INSERT INTO `waypoint_path` (`PathId`,`Point`,`PositionX`,`PositionY`,`PositionZ`,`Orientation`,`WaitTime`,`ScriptId`,`Comment`) VALUES (5600435,50,2179.31,656.053,34.723,100,0,0,'');
INSERT INTO `waypoint_path` (`PathId`,`Point`,`PositionX`,`PositionY`,`PositionZ`,`Orientation`,`WaitTime`,`ScriptId`,`Comment`) VALUES (5600435,51,2183.65,670.941,34.0318,100,0,0,'');
INSERT INTO `waypoint_path` (`PathId`,`Point`,`PositionX`,`PositionY`,`PositionZ`,`Orientation`,`WaitTime`,`ScriptId`,`Comment`) VALUES (5600435,52,2201.5,668.616,36.1236,100,0,0,'');
INSERT INTO `waypoint_path` (`PathId`,`Point`,`PositionX`,`PositionY`,`PositionZ`,`Orientation`,`WaitTime`,`ScriptId`,`Comment`) VALUES (5600435,53,2221.56,652.747,36.6153,100,0,0,'');
INSERT INTO `waypoint_path` (`PathId`,`Point`,`PositionX`,`PositionY`,`PositionZ`,`Orientation`,`WaitTime`,`ScriptId`,`Comment`) VALUES (5600435,54,2238.97,640.125,37.2214,100,0,0,'');
INSERT INTO `waypoint_path` (`PathId`,`Point`,`PositionX`,`PositionY`,`PositionZ`,`Orientation`,`WaitTime`,`ScriptId`,`Comment`) VALUES (5600435,55,2251.17,620.574,40.1473,100,0,0,'');
INSERT INTO `waypoint_path` (`PathId`,`Point`,`PositionX`,`PositionY`,`PositionZ`,`Orientation`,`WaitTime`,`ScriptId`,`Comment`) VALUES (5600435,56,2261.98,595.303,41.4117,100,0,0,'');
INSERT INTO `waypoint_path` (`PathId`,`Point`,`PositionX`,`PositionY`,`PositionZ`,`Orientation`,`WaitTime`,`ScriptId`,`Comment`) VALUES (5600435,57,2278.67,560.172,38.909,100,0,0,'');
INSERT INTO `waypoint_path` (`PathId`,`Point`,`PositionX`,`PositionY`,`PositionZ`,`Orientation`,`WaitTime`,`ScriptId`,`Comment`) VALUES (5600435,58,2336.72,528.327,40.9369,100,0,0,'');
INSERT INTO `waypoint_path` (`PathId`,`Point`,`PositionX`,`PositionY`,`PositionZ`,`Orientation`,`WaitTime`,`ScriptId`,`Comment`) VALUES (5600435,59,2381.04,519.612,37.7312,100,0,0,'');
INSERT INTO `waypoint_path` (`PathId`,`Point`,`PositionX`,`PositionY`,`PositionZ`,`Orientation`,`WaitTime`,`ScriptId`,`Comment`) VALUES (5600435,60,2412.2,515.425,39.2068,100,0,0,'');
INSERT INTO `waypoint_path` (`PathId`,`Point`,`PositionX`,`PositionY`,`PositionZ`,`Orientation`,`WaitTime`,`ScriptId`,`Comment`) VALUES (5600435,61,2452.39,516.174,42.9387,100,0,0,'');
INSERT INTO `waypoint_path` (`PathId`,`Point`,`PositionX`,`PositionY`,`PositionZ`,`Orientation`,`WaitTime`,`ScriptId`,`Comment`) VALUES (5600435,62,2467.38,539.389,47.4992,100,0,0,'');
INSERT INTO `waypoint_path` (`PathId`,`Point`,`PositionX`,`PositionY`,`PositionZ`,`Orientation`,`WaitTime`,`ScriptId`,`Comment`) VALUES (5600435,63,2470.7,554.333,46.6668,100,0,0,'');
INSERT INTO `waypoint_path` (`PathId`,`Point`,`PositionX`,`PositionY`,`PositionZ`,`Orientation`,`WaitTime`,`ScriptId`,`Comment`) VALUES (5600435,64,2478.07,575.321,55.4549,100,0,0,'');
INSERT INTO `waypoint_path` (`PathId`,`Point`,`PositionX`,`PositionY`,`PositionZ`,`Orientation`,`WaitTime`,`ScriptId`,`Comment`) VALUES (5600435,65,2480,585.408,56.6921,100,0,0,'');
INSERT INTO `waypoint_path` (`PathId`,`Point`,`PositionX`,`PositionY`,`PositionZ`,`Orientation`,`WaitTime`,`ScriptId`,`Comment`) VALUES (5600435,66,2482.67,608.817,55.6643,100,0,0,'');
INSERT INTO `waypoint_path` (`PathId`,`Point`,`PositionX`,`PositionY`,`PositionZ`,`Orientation`,`WaitTime`,`ScriptId`,`Comment`) VALUES (5600435,67,2485.62,626.061,58.0132,100,2000,0,'dismount');
INSERT INTO `waypoint_path` (`PathId`,`Point`,`PositionX`,`PositionY`,`PositionZ`,`Orientation`,`WaitTime`,`ScriptId`,`Comment`) VALUES (5600435,68,2486.91,626.356,58.0761,100,2000,0,'EMOTE_TH_STARTLE_HORSE');
INSERT INTO `waypoint_path` (`PathId`,`Point`,`PositionX`,`PositionY`,`PositionZ`,`Orientation`,`WaitTime`,`ScriptId`,`Comment`) VALUES (5600435,69,2486.91,626.356,58.0761,100,0,0,'gossip before barn');
INSERT INTO `waypoint_path` (`PathId`,`Point`,`PositionX`,`PositionY`,`PositionZ`,`Orientation`,`WaitTime`,`ScriptId`,`Comment`) VALUES (5600435,70,2488.58,660.94,57.3913,100,0,0,'');
INSERT INTO `waypoint_path` (`PathId`,`Point`,`PositionX`,`PositionY`,`PositionZ`,`Orientation`,`WaitTime`,`ScriptId`,`Comment`) VALUES (5600435,71,2502.56,686.059,55.6252,100,0,0,'');
INSERT INTO `waypoint_path` (`PathId`,`Point`,`PositionX`,`PositionY`,`PositionZ`,`Orientation`,`WaitTime`,`ScriptId`,`Comment`) VALUES (5600435,72,2502.08,694.36,55.5083,100,0,0,'');
INSERT INTO `waypoint_path` (`PathId`,`Point`,`PositionX`,`PositionY`,`PositionZ`,`Orientation`,`WaitTime`,`ScriptId`,`Comment`) VALUES (5600435,73,2491.46,694.321,55.7163,100,0,0,'enter barn');
INSERT INTO `waypoint_path` (`PathId`,`Point`,`PositionX`,`PositionY`,`PositionZ`,`Orientation`,`WaitTime`,`ScriptId`,`Comment`) VALUES (5600435,74,2491.1,703.3,55.763,100,0,0,'');
INSERT INTO `waypoint_path` (`PathId`,`Point`,`PositionX`,`PositionY`,`PositionZ`,`Orientation`,`WaitTime`,`ScriptId`,`Comment`) VALUES (5600435,75,2485.64,702.992,55.7917,100,0,0,'');
INSERT INTO `waypoint_path` (`PathId`,`Point`,`PositionX`,`PositionY`,`PositionZ`,`Orientation`,`WaitTime`,`ScriptId`,`Comment`) VALUES (5600435,76,2479.63,696.521,55.7901,100,500,0,'');
INSERT INTO `waypoint_path` (`PathId`,`Point`,`PositionX`,`PositionY`,`PositionZ`,`Orientation`,`WaitTime`,`ScriptId`,`Comment`) VALUES (5600435,77,2479.63,696.521,55.7901,100,1500,0,'spawn mobs');
INSERT INTO `waypoint_path` (`PathId`,`Point`,`PositionX`,`PositionY`,`PositionZ`,`Orientation`,`WaitTime`,`ScriptId`,`Comment`) VALUES (5600435,78,2476.24,696.204,55.8093,100,500,0,'');
INSERT INTO `waypoint_path` (`PathId`,`Point`,`PositionX`,`PositionY`,`PositionZ`,`Orientation`,`WaitTime`,`ScriptId`,`Comment`) VALUES (5600435,79,2476.24,696.204,55.8093,100,0,0,'start dialogue');
INSERT INTO `waypoint_path` (`PathId`,`Point`,`PositionX`,`PositionY`,`PositionZ`,`Orientation`,`WaitTime`,`ScriptId`,`Comment`) VALUES (5600435,80,2475.39,695.983,55.8146,100,0,0,'');
INSERT INTO `waypoint_path` (`PathId`,`Point`,`PositionX`,`PositionY`,`PositionZ`,`Orientation`,`WaitTime`,`ScriptId`,`Comment`) VALUES (5600435,81,2477.75,694.473,55.7945,100,0,0,'');
INSERT INTO `waypoint_path` (`PathId`,`Point`,`PositionX`,`PositionY`,`PositionZ`,`Orientation`,`WaitTime`,`ScriptId`,`Comment`) VALUES (5600435,82,2481.27,697.747,55.791,100,0,0,'');
INSERT INTO `waypoint_path` (`PathId`,`Point`,`PositionX`,`PositionY`,`PositionZ`,`Orientation`,`WaitTime`,`ScriptId`,`Comment`) VALUES (5600435,83,2486.31,703.131,55.7861,100,0,0,'');
INSERT INTO `waypoint_path` (`PathId`,`Point`,`PositionX`,`PositionY`,`PositionZ`,`Orientation`,`WaitTime`,`ScriptId`,`Comment`) VALUES (5600435,84,2490.76,703.511,55.7662,100,0,0,'');
INSERT INTO `waypoint_path` (`PathId`,`Point`,`PositionX`,`PositionY`,`PositionZ`,`Orientation`,`WaitTime`,`ScriptId`,`Comment`) VALUES (5600435,85,2491.3,694.792,55.7195,100,0,0,'exit barn');
INSERT INTO `waypoint_path` (`PathId`,`Point`,`PositionX`,`PositionY`,`PositionZ`,`Orientation`,`WaitTime`,`ScriptId`,`Comment`) VALUES (5600435,86,2502.08,694.36,55.5083,100,0,0,'');
INSERT INTO `waypoint_path` (`PathId`,`Point`,`PositionX`,`PositionY`,`PositionZ`,`Orientation`,`WaitTime`,`ScriptId`,`Comment`) VALUES (5600435,87,2507.99,679.298,56.376,100,0,0,'');
INSERT INTO `waypoint_path` (`PathId`,`Point`,`PositionX`,`PositionY`,`PositionZ`,`Orientation`,`WaitTime`,`ScriptId`,`Comment`) VALUES (5600435,88,2524.79,669.919,54.9258,100,0,0,'');
INSERT INTO `waypoint_path` (`PathId`,`Point`,`PositionX`,`PositionY`,`PositionZ`,`Orientation`,`WaitTime`,`ScriptId`,`Comment`) VALUES (5600435,89,2543.19,665.289,56.2957,100,0,0,'');
INSERT INTO `waypoint_path` (`PathId`,`Point`,`PositionX`,`PositionY`,`PositionZ`,`Orientation`,`WaitTime`,`ScriptId`,`Comment`) VALUES (5600435,90,2566.49,664.354,54.5034,100,0,0,'');
INSERT INTO `waypoint_path` (`PathId`,`Point`,`PositionX`,`PositionY`,`PositionZ`,`Orientation`,`WaitTime`,`ScriptId`,`Comment`) VALUES (5600435,91,2592,664.611,56.4394,100,0,0,'');
INSERT INTO `waypoint_path` (`PathId`,`Point`,`PositionX`,`PositionY`,`PositionZ`,`Orientation`,`WaitTime`,`ScriptId`,`Comment`) VALUES (5600435,92,2614.43,663.806,55.3921,100,2000,0,'');
INSERT INTO `waypoint_path` (`PathId`,`Point`,`PositionX`,`PositionY`,`PositionZ`,`Orientation`,`WaitTime`,`ScriptId`,`Comment`) VALUES (5600435,93,2616.14,665.499,55.161,100,0,0,'');
INSERT INTO `waypoint_path` (`PathId`,`Point`,`PositionX`,`PositionY`,`PositionZ`,`Orientation`,`WaitTime`,`ScriptId`,`Comment`) VALUES (5600435,94,2623.56,666.965,54.3983,100,0,0,'');
INSERT INTO `waypoint_path` (`PathId`,`Point`,`PositionX`,`PositionY`,`PositionZ`,`Orientation`,`WaitTime`,`ScriptId`,`Comment`) VALUES (5600435,95,2629.99,661.059,54.2738,100,0,0,'');
INSERT INTO `waypoint_path` (`PathId`,`Point`,`PositionX`,`PositionY`,`PositionZ`,`Orientation`,`WaitTime`,`ScriptId`,`Comment`) VALUES (5600435,96,2629,656.982,56.0651,100,0,0,'enter the church');
INSERT INTO `waypoint_path` (`PathId`,`Point`,`PositionX`,`PositionY`,`PositionZ`,`Orientation`,`WaitTime`,`ScriptId`,`Comment`) VALUES (5600435,97,2620.84,633.007,56.03,100,3000,0,'SAY_TH_CHURCH_ENTER');
INSERT INTO `waypoint_path` (`PathId`,`Point`,`PositionX`,`PositionY`,`PositionZ`,`Orientation`,`WaitTime`,`ScriptId`,`Comment`) VALUES (5600435,98,2620.84,633.007,56.03,100,5000,0,'church ambush');
INSERT INTO `waypoint_path` (`PathId`,`Point`,`PositionX`,`PositionY`,`PositionZ`,`Orientation`,`WaitTime`,`ScriptId`,`Comment`) VALUES (5600435,99,2620.84,633.007,56.03,100,0,0,'SAY_TH_CHURCH_END');
INSERT INTO `waypoint_path` (`PathId`,`Point`,`PositionX`,`PositionY`,`PositionZ`,`Orientation`,`WaitTime`,`ScriptId`,`Comment`) VALUES (5600435,100,2622.99,639.178,56.03,100,0,0,'');
INSERT INTO `waypoint_path` (`PathId`,`Point`,`PositionX`,`PositionY`,`PositionZ`,`Orientation`,`WaitTime`,`ScriptId`,`Comment`) VALUES (5600435,101,2628.73,656.693,56.061,100,0,0,'');
INSERT INTO `waypoint_path` (`PathId`,`Point`,`PositionX`,`PositionY`,`PositionZ`,`Orientation`,`WaitTime`,`ScriptId`,`Comment`) VALUES (5600435,102,2630.34,661.135,54.2738,100,0,0,'');
INSERT INTO `waypoint_path` (`PathId`,`Point`,`PositionX`,`PositionY`,`PositionZ`,`Orientation`,`WaitTime`,`ScriptId`,`Comment`) VALUES (5600435,103,2635.38,672.243,54.4508,100,0,0,'');
INSERT INTO `waypoint_path` (`PathId`,`Point`,`PositionX`,`PositionY`,`PositionZ`,`Orientation`,`WaitTime`,`ScriptId`,`Comment`) VALUES (5600435,104,2644.13,668.158,55.3797,100,0,0,'');
INSERT INTO `waypoint_path` (`PathId`,`Point`,`PositionX`,`PositionY`,`PositionZ`,`Orientation`,`WaitTime`,`ScriptId`,`Comment`) VALUES (5600435,105,2646.82,666.74,56.9898,100,0,0,'');
INSERT INTO `waypoint_path` (`PathId`,`Point`,`PositionX`,`PositionY`,`PositionZ`,`Orientation`,`WaitTime`,`ScriptId`,`Comment`) VALUES (5600435,106,2658.22,665.432,57.1725,100,0,0,'');
INSERT INTO `waypoint_path` (`PathId`,`Point`,`PositionX`,`PositionY`,`PositionZ`,`Orientation`,`WaitTime`,`ScriptId`,`Comment`) VALUES (5600435,107,2661.88,674.849,57.1725,100,0,0,'');
INSERT INTO `waypoint_path` (`PathId`,`Point`,`PositionX`,`PositionY`,`PositionZ`,`Orientation`,`WaitTime`,`ScriptId`,`Comment`) VALUES (5600435,108,2656.23,677.208,57.1725,100,0,0,'');
INSERT INTO `waypoint_path` (`PathId`,`Point`,`PositionX`,`PositionY`,`PositionZ`,`Orientation`,`WaitTime`,`ScriptId`,`Comment`) VALUES (5600435,109,2652.28,670.27,61.9353,100,0,0,'');
INSERT INTO `waypoint_path` (`PathId`,`Point`,`PositionX`,`PositionY`,`PositionZ`,`Orientation`,`WaitTime`,`ScriptId`,`Comment`) VALUES (5600435,110,2650.79,664.29,61.9302,100,0,0,'inn ambush');
INSERT INTO `waypoint_path` (`PathId`,`Point`,`PositionX`,`PositionY`,`PositionZ`,`Orientation`,`WaitTime`,`ScriptId`,`Comment`) VALUES (5600435,111,2660.48,659.409,61.937,100,5000,0,'SAY_TA_ESCAPED');
INSERT INTO `waypoint_path` (`PathId`,`Point`,`PositionX`,`PositionY`,`PositionZ`,`Orientation`,`WaitTime`,`ScriptId`,`Comment`) VALUES (5600435,112,2660.48,659.409,61.937,100,0,0,'SAY_TH_MEET_TARETHA - gossip before epoch');
INSERT INTO `waypoint_path` (`PathId`,`Point`,`PositionX`,`PositionY`,`PositionZ`,`Orientation`,`WaitTime`,`ScriptId`,`Comment`) VALUES (5600435,113,2660.48,659.409,61.937,100,0,0,'SAY_EPOCH_ENTER1');
INSERT INTO `waypoint_path` (`PathId`,`Point`,`PositionX`,`PositionY`,`PositionZ`,`Orientation`,`WaitTime`,`ScriptId`,`Comment`) VALUES (5600435,114,2650.62,666.643,61.9305,100,0,0,'');
INSERT INTO `waypoint_path` (`PathId`,`Point`,`PositionX`,`PositionY`,`PositionZ`,`Orientation`,`WaitTime`,`ScriptId`,`Comment`) VALUES (5600435,115,2652.37,670.561,61.9368,100,0,0,'');
INSERT INTO `waypoint_path` (`PathId`,`Point`,`PositionX`,`PositionY`,`PositionZ`,`Orientation`,`WaitTime`,`ScriptId`,`Comment`) VALUES (5600435,116,2656.05,676.761,57.1727,100,0,0,'');
INSERT INTO `waypoint_path` (`PathId`,`Point`,`PositionX`,`PositionY`,`PositionZ`,`Orientation`,`WaitTime`,`ScriptId`,`Comment`) VALUES (5600435,117,2658.49,677.166,57.1727,100,0,0,'');
INSERT INTO `waypoint_path` (`PathId`,`Point`,`PositionX`,`PositionY`,`PositionZ`,`Orientation`,`WaitTime`,`ScriptId`,`Comment`) VALUES (5600435,118,2659.28,667.117,57.1727,100,0,0,'');
INSERT INTO `waypoint_path` (`PathId`,`Point`,`PositionX`,`PositionY`,`PositionZ`,`Orientation`,`WaitTime`,`ScriptId`,`Comment`) VALUES (5600435,119,2649.71,665.387,57.1727,100,0,0,'');
INSERT INTO `waypoint_path` (`PathId`,`Point`,`PositionX`,`PositionY`,`PositionZ`,`Orientation`,`WaitTime`,`ScriptId`,`Comment`) VALUES (5600435,120,2634.79,672.964,54.4577,100,0,0,'outside inn');
INSERT INTO `waypoint_path` (`PathId`,`Point`,`PositionX`,`PositionY`,`PositionZ`,`Orientation`,`WaitTime`,`ScriptId`,`Comment`) VALUES (5600435,121,2635.06,673.892,54.4713,100,18000,0,'SAY_EPOCH_ENTER3');
INSERT INTO `waypoint_path` (`PathId`,`Point`,`PositionX`,`PositionY`,`PositionZ`,`Orientation`,`WaitTime`,`ScriptId`,`Comment`) VALUES (5600435,122,2635.06,673.892,54.4713,100,0,0,'fight begins');
INSERT INTO `waypoint_path` (`PathId`,`Point`,`PositionX`,`PositionY`,`PositionZ`,`Orientation`,`WaitTime`,`ScriptId`,`Comment`) VALUES (5600435,123,2635.06,673.892,54.4713,100,0,0,'fight ends');
INSERT INTO `waypoint_path` (`PathId`,`Point`,`PositionX`,`PositionY`,`PositionZ`,`Orientation`,`WaitTime`,`ScriptId`,`Comment`) VALUES (5600435,124,2634.3,661.698,54.4147,100,0,0,'run off');
INSERT INTO `waypoint_path` (`PathId`,`Point`,`PositionX`,`PositionY`,`PositionZ`,`Orientation`,`WaitTime`,`ScriptId`,`Comment`) VALUES (5600435,125,2652.21,644.396,56.1906,100,0,0,'');

-- add to waypoint_path_name
INSERT INTO `waypoint_path_name` (`PathId`, `Name`) VALUES ('5600435', 'Old Hillsbrad Foothills - Thrall');

-- dbscripts_on_creature_movement for Thrall / Durnholde Armorer (id = 1787601)

DELETE FROM `dbscripts_on_creature_movement` WHERE `id` = 1787601;

INSERT INTO `dbscripts_on_creature_movement`
(`id`, `delay`, `priority`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `datafloat`, `x`, `y`, `z`, `o`, `speed`, `condition_id`, `comments`)
VALUES
(1787601, 0, 0, 32, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Thrall - Pause Waypoints'),
(1787601, 0, 0, 32, 1, 0, 0, 18764, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Durnholde Armorer - Pause Waypoints'),
(1787601, 1000, 0, 36, 0, 0, 0, 18764, 20, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Thrall - Face Durnholde Armorer'),
(1787601, 2000, 0, 0, 0, 0, 0, 18764, 20, 0, 15891, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Durnholde Armorer - SAY_ARMORER_CALL_GUARDS'),
(1787601, 1000, 0, 36, 0, 0, 0, 18764, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Durnholde Armorer - Face Thrall'),
(1787601, 2000, 0, 1, 5, 0, 0, 18764, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Durnholde Armorer - Emote Exclamation'),
(1787601, 3000, 0, 37, 0, 0, 1, 18764, 20, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Thrall - Dynamic Move to Durnholde Armorer'),
(1787601, 5000, 0, 15, 32890, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Thrall - Cast Knockout'),
(1787601, 6000, 0, 0, 0, 0, 0, 0, 0, 0, 15892, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Thrall - SAY_TH_KILL_ARMORER'),
(1787601, 8000, 0, 32, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Thrall - Unpause Waypoints'),
(1787601, 8000, 0, 25, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Thrall - RUN OFF');