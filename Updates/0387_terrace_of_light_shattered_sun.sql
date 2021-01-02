-- Fixes for area near Shattrath Portal to Isle of Quel'Danas

DELETE FROM creature WHERE guid=96656; -- delete stray Shattered Sun Marksman

-- "Sunwell Daily Bunny x 0.01" 24936 casts 44871 which hits "Sunwell Daily Bunny x 1.00" 24928
DELETE FROM dbscripts_on_relay WHERE id IN (2493600);
INSERT INTO dbscripts_on_relay (id, delay, priority, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, condition_id, comments) VALUES
(2493600, 0, 0, 15, 44871, 0, 0, 24928, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Sunwell Daily Bunny x 0.01 - Cast Sunwell Isle Mana Cell to Portal Beam');

-- "Sunwell Daily Bunny x 0.01" 24936
-- only active during GAME_EVENT_QUEL_DANAS_PHASE_2_PORTAL
DELETE FROM game_event_creature WHERE guid IN (5300070, 5300071, 5300072, 5300073, 5300074, 5300075, 5300076, 5300077, 5300078, 5300079);
INSERT INTO game_event_creature (guid, `event`) VALUES
(5300070, 305),
(5300071, 305),
(5300072, 305),
(5300073, 305),
(5300074, 305),
(5300075, 305),
(5300076, 305),
(5300077, 305),
(5300078, 305),
(5300079, 305);
-- Shattered Sun Warrior/Marksman
DELETE FROM game_event_creature WHERE guid IN (165102,165103,165104,165105,165106,165107,165108,165109);
INSERT INTO game_event_creature (guid, `event`) VALUES
(165102, 305), (165103, 305), (165104, 305), (165105, 305), (165106, 305), (165107, 305), (165108, 305), (165109, 305);
DELETE FROM creature WHERE guid IN (165102,165103,165104,165105,165106,165107,165108,165109);
INSERT INTO creature (guid, id, map, spawnMask, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, MovementType) VALUES
(165102, 25115, 530, 1, -1983.31, 5491.89, -12.3448, 0.172585, 30, 120, 0, 2),
(165103, 25115, 530, 1, -1866.12, 5519.31, -12.3448, 3.35933, 30, 120, 0, 2),
(165104, 25115, 530, 1, -1955.07, 5432.4, -12.3448, 4.9826, 30, 120, 0, 2),
(165105, 25115, 530, 1, -1753.5, 5495.75, -12.3448, 3.78282, 30, 120, 0, 2),

(165106, 24938, 530, 1, -1941.19, 5486.9, -12.3448, 0.593412, 30, 120, 0, 2),
(165107, 24938, 530, 1, -1958.11, 5418.16, -12.3448, 5.06145, 30, 120, 0, 2),
(165108, 24938, 530, 1, -1771.48, 5424.38, -12.3448, 1.79769, 30, 120, 0, 2),
(165109, 24938, 530, 1, -1799.05, 5549.32, -12.3448, 5.02655, 30, 120, 0, 2);

DELETE FROM creature_movement WHERE id IN (165102,165103,165104,165105,165106,165107,165108,165109);
INSERT INTO `creature_movement` (`id`,`point`,`position_x`,`position_y`,`position_z`,`waittime`,`script_id`,`orientation`) VALUES

-- Shattered Sun Warrior

(165102,1,-1983.3267,5492.0337,-12.42814,250,2511501,100),
(165102,2,-1941.969,5499.095,-12.428139,0,0,100),
(165102,3,-1905.1509,5501.0493,-12.428136,0,0,100),
(165102,4,-1875.1615,5471.325,-12.428117,0,0,100),
(165102,5,-1853.279,5475.174,-12.428113,0,0,100),
(165102,6,-1847.6495,5493.819,-12.454478,0,0,100),
(165102,7,-1841.8876,5499.542,-12.428068,5000,2511503,100),

(165103,1,-1866.1797,5519.3936,-12.428132,250,2511502,100),
(165103,2,-1889.286,5514.1885,-12.428133,0,0,100),
(165103,3,-1897.0851,5497.1406,-12.428128,0,0,100),
(165103,4,-1876.3418,5471.3965,-12.428118,0,0,100),
(165103,5,-1856.1884,5471.4707,-12.428112,0,0,100),
(165103,6,-1845.2689,5496.979,-12.456866,0,0,100),
(165103,7,-1840.9067,5499.918,-12.428005,5000,2511503,100),

(165104,1,-1954.9623,5432.1157,-12.428136,250,2511501,100),
(165104,2,-1947.6775,5405.7017,-12.428138,0,0,100),
(165104,3,-1928.3544,5396.6978,-12.428136,0,0,100),
(165104,4,-1892.1445,5430.7983,-12.428193,0,0,100),
(165104,5,-1865.2552,5463.5283,-12.428107,0,0,100),
(165104,6,-1841.3867,5493.1094,-12.42812,0,0,100),
(165104,7,-1840.0465,5499.258,-12.428029,5000,2511503,100),

(165105,1,-1753.5564,5495.536,-12.428139,250,2511502,100),
(165105,2,-1791.0067,5467.7573,-12.428138,0,0,100),
(165105,3,-1825.6354,5453.0747,-12.428243,0,0,100),
(165105,4,-1844.8906,5473.188,-12.428149,0,0,100),
(165105,5,-1840.2368,5498.817,-12.428061,5000,2511503,100),

-- Shattered Sun Marksman

(165106,1,-1941.1549,5487.1157,-12.42814,250,2493801,100),
(165106,2,-1914.2073,5504.9883,-12.428132,0,0,100),
(165106,3,-1896.7548,5495.9243,-12.428134,0,0,100),
(165106,4,-1879.798,5472.277,-12.428121,0,0,100),
(165106,5,-1853.0463,5469.339,-12.428118,0,0,100),
(165106,6,-1839.512,5498.5645,-12.428082,0,0,100),
(165106,7,-1839.512,5498.5645,-12.428082,5000,2511503,100),

(165107,1,-1958.1534,5418.127,-12.428137,250,2493801,100),
(165107,2,-1937.7491,5396.2954,-12.428137,0,0,100),
(165107,3,-1903.0226,5412.9766,-12.428205,0,0,100),
(165107,4,-1885.324,5439.7397,-12.428136,0,0,100),
(165107,5,-1856.431,5471.1665,-12.428113,0,0,100),
(165107,6,-1848.1873,5493.0825,-12.447548,0,0,100),
(165107,7,-1841.4481,5499.371,-12.428061,5000,2511503,100),

(165108,1,-1771.403,5424.443,-12.428137,250,2493802,100),
(165108,2,-1780.1294,5458.501,-12.428137,0,0,100),
(165108,3,-1802.2595,5461.306,-12.428137,0,0,100),
(165108,4,-1826.4666,5454.009,-12.428279,0,0,100),
(165108,5,-1844.7491,5470.9956,-12.428157,0,0,100),
(165108,6,-1840.0747,5498.433,-12.428087,5000,2511503,100),

(165109,1,-1799.1276,5549.2144,-12.428136,250,2493802,100),
(165109,2,-1786.2964,5503.2485,-12.428136,0,0,100),
(165109,3,-1788.1849,5469.7397,-12.428139,0,0,100),
(165109,4,-1822.2279,5450.821,-12.428144,0,0,100),
(165109,5,-1844.8711,5471.938,-12.428152,0,0,100),
(165109,6,-1840.0154,5499.118,-12.428037,5000,2511503,100);

DELETE FROM dbscripts_on_creature_movement WHERE id IN (2511501,2511502,2493801,2493802,2511503);
INSERT INTO dbscripts_on_creature_movement (id, delay, priority, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, condition_id, comments) VALUES
(2511501, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Shattered Sun Warrior - Run on'),
(2511501, 0, 0, 45, 0, 2511500, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Shattered Sun Warrior - Random Transform (Blood Elf)'),
(2511502, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Shattered Sun Warrior - Run on'),
(2511502, 0, 0, 45, 0, 2511501, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Shattered Sun Warrior - Random Transform (Draenei)'),

(2493801, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Shattered Sun Marksman - Run on'),
(2493801, 0, 0, 45, 0, 2493800, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Shattered Sun Marksman - Random Transform (Blood Elf)'),
(2493802, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Shattered Sun Marksman - Run on'),
(2493802, 0, 0, 45, 0, 2493801, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Shattered Sun Marksman - Random Transform (Draenei)'),

(2511503, 0, 0, 36, 0, 0, 0, 24928, 10, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Shattered Sun Warrior/Marksman - Face 24928 Sunwell Daily Bunny x 1.00'),
(2511503, 0, 1, 15, 34427, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Shattered Sun Warrior/Marksman - Cast Ethereal Teleport'),
(2511503, 0, 2, 1, 69, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Shattered Sun Warrior/Marksman - Set Emote State 69'),
(2511503, 0, 3, 18, 1000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Shattered Sun Warrior/Marksman - Despawn self after 1 second');

/*
TBC sniff shows us that during Sun's Reach Phase 3, these npcs were still the Tier 1 variant. Here's my best guess for what the requirements for each Tier are...
It's possible that Tiers 2 and 3 were never used at all.
In order for these NPCs to spawn, GAME_EVENT_QUEL_DANAS_PHASE_2_PORTAL must be active

Tier 1 - !GAME_EVENT_QUEL_DANAS_PHASE_3_ANVIL AND !GAME_EVENT_QUEL_DANAS_PHASE_4
Tier 2 - GAME_EVENT_QUEL_DANAS_PHASE_3_ONLY AND GAME_EVENT_QUEL_DANAS_PHASE_3_ANVIL
Tier 3 - GAME_EVENT_QUEL_DANAS_PHASE_4 AND !GAME_EVENT_QUEL_DANAS_PHASE_3_ANVIL
Tier 4 - GAME_EVENT_QUEL_DANAS_PHASE_4 AND GAME_EVENT_QUEL_DANAS_PHASE_3_ANVIL
*/

DELETE FROM conditions WHERE condition_entry IN (11010,11011,11012,11013,11014,11015);
INSERT INTO conditions (condition_entry, `type`, value1, value2, value3, value4, flags, comments) VALUES
-- 10305 'Event ID 305 Active'                            -- GAME_EVENT_QUEL_DANAS_PHASE_2_PORTAL
-- 10306 'Event ID 306 Active'                            -- GAME_EVENT_QUEL_DANAS_PHASE_3_ONLY
-- 10309 'Event ID 309 Active'                            -- GAME_EVENT_QUEL_DANAS_PHASE_3_ANVIL
-- 10310 'Event ID 310 Active'                            -- GAME_EVENT_QUEL_DANAS_PHASE_4
(11010, 12, 309, 0, 0, 0, 1, 'Event ID 309 NOT Active'),  -- !GAME_EVENT_QUEL_DANAS_PHASE_3_ANVIL
(11011, 12, 310, 0, 0, 0, 1, 'Event ID 310 NOT Active'),  -- !GAME_EVENT_QUEL_DANAS_PHASE_4
(11012, -1, 11010, 11011, 0, 0, 0, '(Event ID 309 NOT Active AND Event ID 310 NOT Active)'),  -- !GAME_EVENT_QUEL_DANAS_PHASE_3_ANVIL AND !GAME_EVENT_QUEL_DANAS_PHASE_4
(11013, -1, 10306, 10309, 0, 0, 0, '(Event ID 306 Active AND Event ID 309 Active)'),          -- GAME_EVENT_QUEL_DANAS_PHASE_3_ONLY AND GAME_EVENT_QUEL_DANAS_PHASE_3_ANVIL
(11014, -1, 10310, 11010, 0, 0, 0, '(Event ID 306 Active AND Event ID 309 NOT Active)'),      -- GAME_EVENT_QUEL_DANAS_PHASE_4 AND !GAME_EVENT_QUEL_DANAS_PHASE_3_ANVIL
(11015, -1, 10310, 10309, 0, 0, 0, '(Event ID 306 Active AND Event ID 309 Active)');          -- GAME_EVENT_QUEL_DANAS_PHASE_4 AND GAME_EVENT_QUEL_DANAS_PHASE_3_ANVIL

-- 24938 Shattered Sun Marksman
UPDATE creature_template SET EquipmentTemplateId=0 WHERE Entry=24938; -- 55298
DELETE FROM creature_equip_template WHERE entry=55298;

DELETE FROM dbscript_random_templates WHERE id IN (2493800,2493801);
INSERT INTO dbscript_random_templates (id, `type`, target_id, chance, comments) VALUES
(2493800, 1, 2493801, 0, 'Shattered Sun Marksman - BE Female'),
(2493800, 1, 2493802, 0, 'Shattered Sun Marksman - BE Male'),

(2493801, 1, 2493803, 0, 'Shattered Sun Marksman - Draenei Female'),
(2493801, 1, 2493804, 0, 'Shattered Sun Marksman - Draenei Male');

-- Shattered Sun Marksman - Blood Elf
DELETE FROM creature_equip_template WHERE entry IN (24963,24939,24940,24941);
INSERT INTO creature_equip_template (entry, equipentry1, equipentry2, equipentry3) VALUES
(24963,23382,0,34263),
(24939,23382,0,34263), -- guessed 
(24940,23382,0,34263), -- guessed
(24941,34301,0,34277);
-- male
UPDATE creature_template SET EquipmentTemplateId=24963 WHERE Entry=24963;
UPDATE creature_template SET EquipmentTemplateId=24939 WHERE Entry=24939;
UPDATE creature_template SET EquipmentTemplateId=24940 WHERE Entry=24940;
UPDATE creature_template SET EquipmentTemplateId=24941 WHERE Entry=24941;
-- female
UPDATE creature_template SET EquipmentTemplateId=24963 WHERE Entry=24942;
UPDATE creature_template SET EquipmentTemplateId=24939 WHERE Entry=24943;
UPDATE creature_template SET EquipmentTemplateId=24940 WHERE Entry=24944;
UPDATE creature_template SET EquipmentTemplateId=24941 WHERE Entry=24945;
-- Shattered Sun Marksman - Draenei
DELETE FROM creature_equip_template WHERE entry IN (24946,24947,24948,24949);
INSERT INTO creature_equip_template (entry, equipentry1, equipentry2, equipentry3) VALUES
(24946,29671,0,30580),
(24947,30408,0,34322), -- guessed 
(24948,30408,0,34322), -- guessed
(24949,28488,0,34326);
-- male
UPDATE creature_template SET EquipmentTemplateId=24946 WHERE Entry=24946;
UPDATE creature_template SET EquipmentTemplateId=24947 WHERE Entry=24947;
UPDATE creature_template SET EquipmentTemplateId=24948 WHERE Entry=24948;
UPDATE creature_template SET EquipmentTemplateId=24949 WHERE Entry=24949;
-- female
UPDATE creature_template SET EquipmentTemplateId=24946 WHERE Entry=24950;
UPDATE creature_template SET EquipmentTemplateId=24947 WHERE Entry=24951;
UPDATE creature_template SET EquipmentTemplateId=24948 WHERE Entry=24952;
UPDATE creature_template SET EquipmentTemplateId=24949 WHERE Entry=24953;

DELETE FROM dbscripts_on_relay WHERE id IN (2493801,2493802,2493803,2493804);
INSERT INTO dbscripts_on_relay (id, delay, priority, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, condition_id, comments) VALUES
(2493801, 0, 0, 15, 44962, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 11012, 'Shattered Sun Marksman - Cast Archer - BE Male Transform Tier 1'),
(2493801, 0, 0, 15, 44918, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 11013, 'Shattered Sun Marksman - Cast Archer - BE Male Transform Tier 2'),
(2493801, 0, 0, 15, 44919, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 11014, 'Shattered Sun Marksman - Cast Archer - BE Male Transform Tier 3'),
(2493801, 0, 0, 15, 44920, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 11015, 'Shattered Sun Marksman - Cast Archer - BE Male Transform Tier 4'),
(2493802, 0, 0, 15, 44921, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 11012, 'Shattered Sun Marksman - Cast Archer - BE Female Transform Tier 1'),
(2493802, 0, 0, 15, 44922, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 11013, 'Shattered Sun Marksman - Cast Archer - BE Female Transform Tier 2'),
(2493802, 0, 0, 15, 44923, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 11014, 'Shattered Sun Marksman - Cast Archer - BE Female Transform Tier 3'),
(2493802, 0, 0, 15, 44924, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 11015, 'Shattered Sun Marksman - Cast Archer - BE Female Transform Tier 4'),
(2493803, 0, 0, 15, 44925, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 11012, 'Shattered Sun Marksman - Cast Archer - Draenei Male Transform Tier 1'),
(2493803, 0, 0, 15, 44926, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 11013, 'Shattered Sun Marksman - Cast Archer - Draenei Male Transform Tier 2'),
(2493803, 0, 0, 15, 44927, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 11014, 'Shattered Sun Marksman - Cast Archer - Draenei Male Transform Tier 3'),
(2493803, 0, 0, 15, 44928, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 11015, 'Shattered Sun Marksman - Cast Archer - Draenei Male Transform Tier 4'),
(2493804, 0, 0, 15, 44929, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 11012, 'Shattered Sun Marksman - Cast Archer - Draenei Female Transform Tier 1'),
(2493804, 0, 0, 15, 44930, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 11013, 'Shattered Sun Marksman - Cast Archer - Draenei Female Transform Tier 2'),
(2493804, 0, 0, 15, 44931, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 11014, 'Shattered Sun Marksman - Cast Archer - Draenei Female Transform Tier 3'),
(2493804, 0, 0, 15, 44932, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 11015, 'Shattered Sun Marksman - Cast Archer - Draenei Female Transform Tier 4');

-- 25115 Shattered Sun Warrior
UPDATE creature_template SET EquipmentTemplateId=0 WHERE Entry=25115; -- 55396
DELETE FROM creature_equip_template WHERE entry=55396;

DELETE FROM dbscript_random_templates WHERE id IN (2511500,2511501);
INSERT INTO dbscript_random_templates (id, `type`, target_id, chance, comments) VALUES
(2511500, 1, 2511501, 0, 'Shattered Sun Warrior - BE Female'),
(2511500, 1, 2511502, 0, 'Shattered Sun Warrior - BE Male'),

(2511501, 1, 2511503, 0, 'Shattered Sun Warrior - Draenei Female'),
(2511501, 1, 2511504, 0, 'Shattered Sun Warrior - Draenei Male');

-- Shattered Sun Warrior - Blood Elf
DELETE FROM creature_equip_template WHERE entry IN (25116,25117,25118,25119);
INSERT INTO creature_equip_template (entry, equipentry1, equipentry2, equipentry3) VALUES
(25116,24320,24322,0),
(25117,23225,24322,0), -- guessed 
(25118,23225,24322,0), -- guessed
(25119,34596,34590,0);
-- female
UPDATE creature_template SET EquipmentTemplateId=25116 WHERE Entry=25116;
UPDATE creature_template SET EquipmentTemplateId=25117 WHERE Entry=25117;
UPDATE creature_template SET EquipmentTemplateId=25118 WHERE Entry=25118;
UPDATE creature_template SET EquipmentTemplateId=25119 WHERE Entry=25119;
-- male
UPDATE creature_template SET EquipmentTemplateId=25116 WHERE Entry=25120;
UPDATE creature_template SET EquipmentTemplateId=25117 WHERE Entry=25121;
UPDATE creature_template SET EquipmentTemplateId=25118 WHERE Entry=25122;
UPDATE creature_template SET EquipmentTemplateId=25119 WHERE Entry=25123;
-- Shattered Sun Warrior - Draenei
DELETE FROM creature_equip_template WHERE entry IN (25124,25125,25126,25127);
INSERT INTO creature_equip_template (entry, equipentry1, equipentry2, equipentry3) VALUES
(25124,30408,23907,0),
(25125,30408,23907,0), -- guessed 
(25126,30408,23907,0), -- guessed
(25127,31743,34588,0);
-- female
UPDATE creature_template SET EquipmentTemplateId=25124 WHERE Entry=25124;
UPDATE creature_template SET EquipmentTemplateId=25125 WHERE Entry=25125;
UPDATE creature_template SET EquipmentTemplateId=25126 WHERE Entry=25126;
UPDATE creature_template SET EquipmentTemplateId=25127 WHERE Entry=25127;
-- male
UPDATE creature_template SET EquipmentTemplateId=25124 WHERE Entry=25128;
UPDATE creature_template SET EquipmentTemplateId=25125 WHERE Entry=25129;
UPDATE creature_template SET EquipmentTemplateId=25126 WHERE Entry=25130;
UPDATE creature_template SET EquipmentTemplateId=25127 WHERE Entry=25131;

DELETE FROM dbscripts_on_relay WHERE id IN (2511501,2511502,2511503,2511504);
INSERT INTO dbscripts_on_relay (id, delay, priority, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, condition_id, comments) VALUES
(2511501, 0, 0, 15, 45155, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 11012, 'Shattered Sun Warrior - Cast Warrior - BE Female Transform Tier 1'),
(2511501, 0, 0, 15, 45156, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 11013, 'Shattered Sun Warrior - Cast Warrior - BE Female Transform Tier 2'),
(2511501, 0, 0, 15, 45157, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 11014, 'Shattered Sun Warrior - Cast Warrior - BE Female Transform Tier 3'),
(2511501, 0, 0, 15, 45158, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 11015, 'Shattered Sun Warrior - Cast Warrior - BE Female Transform Tier 4'),
(2511502, 0, 0, 15, 45159, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 11012, 'Shattered Sun Warrior - Cast Warrior - BE Male Transform Tier 1'),
(2511502, 0, 0, 15, 45160, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 11013, 'Shattered Sun Warrior - Cast Warrior - BE Male Transform Tier 2'),
(2511502, 0, 0, 15, 45161, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 11014, 'Shattered Sun Warrior - Cast Warrior - BE Male Transform Tier 3'),
(2511502, 0, 0, 15, 45162, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 11015, 'Shattered Sun Warrior - Cast Warrior - BE Male Transform Tier 4'),
(2511503, 0, 0, 15, 45163, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 11012, 'Shattered Sun Warrior - Cast Warrior - Draenei Female Transform Tier 1'),
(2511503, 0, 0, 15, 45164, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 11013, 'Shattered Sun Warrior - Cast Warrior - Draenei Female Transform Tier 2'),
(2511503, 0, 0, 15, 45165, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 11014, 'Shattered Sun Warrior - Cast Warrior - Draenei Female Transform Tier 3'),
(2511503, 0, 0, 15, 45166, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 11015, 'Shattered Sun Warrior - Cast Warrior - Draenei Female Transform Tier 4'),
(2511504, 0, 0, 15, 45167, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 11012, 'Shattered Sun Warrior - Cast Warrior - Draenei Male Transform Tier 1'),
(2511504, 0, 0, 15, 45168, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 11013, 'Shattered Sun Warrior - Cast Warrior - Draenei Male Transform Tier 2'),
(2511504, 0, 0, 15, 45169, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 11014, 'Shattered Sun Warrior - Cast Warrior - Draenei Male Transform Tier 3'),
(2511504, 0, 0, 15, 45170, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 11015, 'Shattered Sun Warrior - Cast Warrior - Draenei Male Transform Tier 4');


