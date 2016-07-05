-- =====================================
-- quest 667 - Death From Below (Xfurry)
-- =====================================
-- conditions
DELETE FROM conditions WHERE condition_entry IN (944, 945);
INSERT INTO conditions (condition_entry, type, value1, value2) VALUES
(944, 36, 0, 60),
(945, 36, 3, 0);
DELETE FROM db_script_string WHERE entry IN (2000005632,2000005633);
INSERT INTO db_script_string (entry,content_default,sound,type,language,emote,comment) VALUES
(2000005632,'All hands to battle stations! Naga incoming!',0,1,0,22,'Shakes O\'Breen - yell_naga_1'),
(2000005633,'If we can just hold them now, I am sure we will be in the clear.',0,0,0,0,'Shakes O\'Breen - yell_naga_2');
-- quest script
UPDATE quest_template SET StartScript = entry WHERE entry = 667;
DELETE FROM dbscripts_on_quest_start WHERE id = 667;
INSERT INTO dbscripts_on_quest_start (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, x, y, z, o, comments) VALUES
-- (667, 0, C, d, d2, 0, 0, 0, 'change npc-flags on quest-accept'), -- ??
(667, 0, 0, 0, 0, 0, 0, 0, 2000005632, 0, 0, 0, 0, 'say_protect_1'),
-- First wave
(667, 20, 10, 2775, 60000, 0, 0, 0, 0, -2158.563, -1972.463, 15.812, 0, 'summon first wave'),
(667, 20, 10, 2775, 60000, 0, 0, 0, 0, -2153.296, -1969.006, 15.628, 0, 'summon first wave'),
(667, 20, 10, 2775, 60000, 0, 0, 0, 0, -2155.721, -1970.597, 15.327, 0, 'summon first wave'),
-- Condition check
(667, 50, 34, 944, 667, 0, 0, 0, 0, 0, 0, 0, 0, 'Stop script if player is dead or out of range'),
(667, 50, 34, 945, 667, 0, 0, 0, 0, 0, 0, 0, 0, 'Stop script if npc is dead'),
-- Second wave
(667, 55, 10, 2775, 60000, 0, 0, 0, 0, -2158.563, -1972.463, 15.812, 0, 'summon second wave'),
(667, 55, 10, 2775, 60000, 0, 0, 0, 0, -2153.296, -1969.006, 15.628, 0, 'summon second wave'),
(667, 55, 10, 2775, 60000, 0, 0, 0, 0, -2155.721, -1970.597, 15.327, 0, 'summon second wave'),
(667, 65, 0, 0, 0, 0, 0, 0, 2000005633, 0, 0, 0, 0, 'say_protect_2'),
-- Condition check
(667, 100, 34, 944, 667, 0, 0, 0, 0, 0, 0, 0, 0, 'Stop script if player is dead or out of range'),
(667, 100, 34, 945, 667, 0, 0, 0, 0, 0, 0, 0, 0, 'Stop script if npc is dead'),
-- Third wave
(667, 110, 10, 2775, 60000, 0, 0, 0, 0, -2158.563, -1972.463, 15.812, 0, 'summon third wave'),
(667, 130, 10, 2775, 60000, 0, 0, 0, 0, -2153.296, -1969.006, 15.628, 0, 'summon second wave'),
(667, 130, 10, 2775, 60000, 0, 0, 0, 0, -2155.721, -1970.597, 15.327, 0, 'summon second wave'),
-- Quest completed
(667, 190, 34, 944, 667, 0, 0, 0, 0, 0, 0, 0, 0, 'Stop script if player is dead or out of range'),
(667, 190, 34, 945, 667, 0, 0, 0, 0, 0, 0, 0, 0, 'Stop script if npc is dead'),
(667, 195, 7, 667, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'quest complete');
UPDATE creature_template SET MovementType = 2 WHERE entry IN (2775);
DELETE FROM creature_movement_template WHERE entry IN (2775);
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, script_id, waittime, orientation) VALUES
(2775, 1, -2153.701, -1973.676, 15.00, 277501, 1000, 5.4),
(2775, 2, -2145.585, -1985.125, 12.04, 0, 0, 0),
(2775, 3, -2132.084, -1992.558, 5.96, 0, 0, 0),
(2775, 4, -2118.418, -2005.057, 5.63, 0, 0, 0),
(2775, 5, -2109.372, -2024.358, 6.08, 0, 0, 0),
(2775, 6, -2100.003, -2030.407, 3.14, 277506, 0, 0);
DELETE FROM dbscripts_on_creature_movement WHERE id IN (277501,277506);
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, buddy_entry, search_radius, data_flags, comments) VALUES
(277501, 0, 25, 1, 0, 0, 0, 'set run on'),
(277506, 0, 26, 0, 2610, 20, 2, 'attack Shakes O\'Breen'); 




