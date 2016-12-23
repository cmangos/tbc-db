-- Wrathscale point
-- Duplicates
DELETE FROM creature WHERE guid IN (60995,60960,61031,61756,60985,60957,61850,60955,60959,60942,60940,61015,61028,60952,61751,61025,60939,60945,61846,60933,60973,60949,61020,61022,60936,60970,60934,60977,60971);
DELETE FROM creature_addon WHERE guid IN (60995,60960,61031,61756,60985,60957,61850,60955,60959,60942,60940,61015,61028,60952,61751,61025,60939,60945,61846,60933,60973,60949,61020,61022,60936,60970,60934,60977,60971);
DELETE FROM creature_movement WHERE id IN (60995,60960,61031,61756,60985,60957,61850,60955,60959,60942,60940,61015,61028,60952,61751,61025,60939,60945,61846,60933,60973,60949,61020,61022,60936,60970,60934,60977,60971);

-- Wrathscale Naga
UPDATE creature SET position_x = -4844.897461, position_y = -11912.063477, position_z = 21.396135, spawndist = 20, movementType = 1 WHERE guid = 60953;
UPDATE creature SET position_x = -4899.026855, position_y = -12169.821289, position_z = -1.874012, spawndist = 15, movementType = 1 WHERE guid = 60961;
UPDATE creature SET position_x = -4956.098145, position_y = -11942.524414, position_z = 10.438543, spawndist = 15, movementType = 1 WHERE guid = 60938;
UPDATE creature SET position_x = -4928.414063, position_y = -11906.749023, position_z = 14.310509, spawndist = 15, movementType = 1 WHERE guid = 60991;
UPDATE creature SET position_x = -5083.373535, position_y = -11743.529297, position_z = -4.182596, spawndist = 15, movementType = 1 WHERE guid = 60935;
UPDATE creature SET position_x = -5040.858398, position_y = -11516.927734, position_z = -3.185927, spawndist = 15, movementType = 1 WHERE guid = 60946;
UPDATE creature SET position_x = -4991.664063, position_y = -11561.056641, position_z = 2.474856, spawndist = 15, movementType = 1 WHERE guid = 60929;
-- Wrathscale Siren
UPDATE creature SET position_x = -4899.026855, position_y = -12169.821289, position_z = -1.874012, spawndist = 15, movementType = 1 WHERE guid = 61018;
UPDATE creature SET position_x = -4917.866699, position_y = -11855.131836, position_z = 15.216819, spawndist = 15, movementType = 1 WHERE guid = 61026;
UPDATE creature SET position_x = -5031.285645, position_y = -11625.187500, position_z = 2.559391, spawndist = 15, movementType = 1 WHERE guid = 61010;

-- Wrathscale Myrmidon
UPDATE creature SET position_x = -4874.818359, position_y = -12150.112305, position_z = 2.587753, spawndist = 10, movementType = 1 WHERE guid = 60986;
UPDATE creature SET position_x = -4916.873047, position_y = -12033.365234, position_z = 14.690356, spawndist = 15, movementType = 1 WHERE guid = 60994;
UPDATE creature SET position_x = -4943.998535, position_y = -12013.101563, position_z = 12.650027, spawndist = 15, movementType = 1 WHERE guid = 60984;
UPDATE creature SET position_x = -4916.369629, position_y = -11983.681641, position_z = 13.252672, spawndist = 15, movementType = 1 WHERE guid = 60958;
UPDATE creature SET position_x = -5072.139160, position_y = -11967.250977, position_z = -2.770162, spawndist = 15, movementType = 1 WHERE guid = 60981;
UPDATE creature SET position_x = -4917.866699, position_y = -11855.131836, position_z = 15.216819, spawndist = 15, movementType = 1 WHERE guid = 60982;
UPDATE creature SET position_x = -4983.550781, position_y = -11757.294922, position_z = 11.873091, spawndist = 10, movementType = 1 WHERE guid = 60980;
-- Skiterring Crawler
UPDATE creature SET position_x = -5014.608398, position_y = -11968.461914, position_z = 1.018158, spawndist = 15, movementType = 1 WHERE guid = 61849;
UPDATE creature SET position_x = -4896.372559, position_y = -11513.756836, position_z = 0.802678, spawndist = 15, movementType = 1 WHERE guid = 61749;
-- Moongraze Stag
UPDATE creature SET position_x = -4760.075195, position_y = -11486.473633, position_z = 24.051914, spawndist = 15, movementType = 1 WHERE guid = 61325;

-- Pools
-- Pool Templates -- Pool 1
DELETE FROM pool_template WHERE entry = 25516;
INSERT INTO pool_template (entry, max_limit, description) VALUES
(25516, 1, 'Wrathscale point - Wrathscale Naga/Wrathscale Siren - Pool 1');
-- Individual Creature Spawn Pools
DELETE FROM pool_creature WHERE pool_entry = 25516;
INSERT INTO pool_creature (guid, pool_entry, chance, description) VALUES
(60961, 25516, 0, 'Wrathscale point - Wrathscale Naga'),
(61018, 25516, 0, 'Wrathscale point - Wrathscale Siren');

-- Pool Templates -- Pool 2
DELETE FROM pool_template WHERE entry = 25517;
INSERT INTO pool_template (entry, max_limit, description) VALUES
(25517, 1, 'Wrathscale point - Wrathscale Myrmidon/Wrathscale Siren - Pool 2');
-- Individual Creature Spawn Pools
DELETE FROM pool_creature WHERE pool_entry = 25517;
INSERT INTO pool_creature (guid, pool_entry, chance, description) VALUES
(60982, 25517, 0, 'Wrathscale point - Wrathscale Myrmidon'),
(61026, 25517, 0, 'Wrathscale point - Wrathscale Siren');

