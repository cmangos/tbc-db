-- Fix Murmur Stats Regen Issue (Should be at 40% Health At Start of Fight)
UPDATE creature_template SET RegenerateStats=0 WHERE entry IN (18708,20657);

-- Fix Void Portals
UPDATE creature_template SET UnitFlags=570458880 WHERE entry IN (19224,20663);

-- ===========================================
-- Murmur Stats Fixes and Spawn Heroic Version
-- ===========================================
UPDATE creature_template SET UnitFlags=32832 WHERE entry IN (18708,20657);


-- ================================================
-- Add Temp Pathing for Fel Overseer's (From Video) - Will Remake Better When Polishing Dungeon
-- ================================================
DELETE FROM creature_movement WHERE id IN (67086);
UPDATE creature SET MovementType=2 WHERE guid IN (67086);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation) VALUES (67086,1, -159.961563,-74.452034,8.073020, 100);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation) VALUES (67086,2, -153.548599,-73.574837,8.073020, 100);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation) VALUES (67086,3, -147.391800,-67.832253,8.073020, 100);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation) VALUES (67086,4, -145.278610,-61.784306,8.073020, 100);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation) VALUES (67086,5, -144.115082,-51.120453,8.073020, 100);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation) VALUES (67086,6, -144.915543,-62.157478,8.073020, 100);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation) VALUES (67086,7, -147.335999,-68.414108,8.073020, 100);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation) VALUES (67086,8, -153.788971,-74.193962,8.073020, 100);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation) VALUES (67086,9, -160.087494,-74.520798,8.073020, 100);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation) VALUES (67086,10, -167.844208,-65.886086,8.073020, 100);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation) VALUES (67086,11, -169.473984,-61.283710,8.073020, 100);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation) VALUES (67086,12, -169.301392,-50.314171,8.073020, 100);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation) VALUES (67086,13, -169.138077,-61.296001,8.073020, 100);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation) VALUES (67086,14, -167.464508,-66.364372,8.073020, 100);

DELETE FROM creature_movement WHERE id IN (67089);
UPDATE creature SET MovementType=2 WHERE guid IN (67089);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation) VALUES (67089,1, -132.861740,-59.373783,8.072599, 100);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation) VALUES (67089,2, -134.156799,-47.111328,8.072599, 100);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation) VALUES (67089,3, -134.558014,-27.862291,8.072599, 100);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation) VALUES (67089,4, -134.492203,-9.780718,8.072599, 100);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation) VALUES (67089,5, -138.314133,-13.652283,8.072599, 100);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation) VALUES (67089,6, -138.878876,-28.201607,8.072599, 100);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation) VALUES (67089,7, -138.812271,-48.508343,8.072599, 100);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation) VALUES (67089,8, -139.148102,-61.467995,8.072599, 100);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation) VALUES (67089,9, -136.609085,-68.804436,8.072599, 100);


DELETE FROM creature_movement WHERE id IN (67085);
UPDATE creature SET MovementType=2 WHERE guid IN (67085);
UPDATE creature SET position_x = '-179.455231', position_y = '-9.763985', position_z = '8.071588', orientation = '4.805073' WHERE guid = '67085';
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation) VALUES (67085,1, -179.594086,-22.336971,8.071589, 100);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation) VALUES (67085,2, -180.257782,-47.192112,8.071589, 100);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation) VALUES (67085,3, -180.663055,-62.369701,8.071589, 100);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation) VALUES (67085,4, -178.028214,-69.186279,8.071589, 100);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation) VALUES (67085,5, -175.103317,-63.598499,8.071766, 100);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation) VALUES (67085,6, -175.315323,-47.989403,8.071766, 100);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation) VALUES (67085,7, -175.333801,-26.896423,8.071766, 100);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation) VALUES (67085,8, -175.283493,-11.844251,8.071766, 100);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation) VALUES (67085,9, -178.942215,-8.408541,8.071766, 100);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation) VALUES (67085,10, -179.520996,-12.997610,8.071766, 100);

DELETE FROM creature WHERE guid=67087;
DELETE FROM creature_addon WHERE guid=67087;
DELETE FROM creature_movement WHERE id=67087;
DELETE FROM game_event_creature WHERE guid=67087;
DELETE FROM game_event_creature_data WHERE guid=67087;
DELETE FROM creature_battleground WHERE guid=67087;
DELETE FROM creature_linking WHERE guid=67087 OR master_guid=67087;





