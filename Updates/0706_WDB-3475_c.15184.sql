-- Cenarion Hold Infantry 15184
-- for some unknown reason with rangeweapon equip. offhand weapon will never show up (wotlk issue) ...
-- UPDATE creature_template SET EquipmentTemplateId = 968 WHERE `entry` = 15184; -- should be 963 (CDB & TDB - do not add this part)
-- 963 is what tbc have as 15184 wotlk really should think about using creature_template xD

-- 2 guards walk same path (only one req. + link)
UPDATE creature SET spawndist = 0, MovementType = 0 WHERE guid IN (42896);
DELETE FROM creature_movement WHERE id IN (42896);

-- link
DELETE FROM creature_linking WHERE master_guid IN (42895);
INSERT INTO creature_linking (guid,master_guid,flag)VALUES
(42896,42895,1+2+515);

