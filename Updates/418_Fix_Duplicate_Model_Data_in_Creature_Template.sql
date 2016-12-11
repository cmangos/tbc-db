-- =================================================================
-- Remove Duplicate Model Data in Creature_Template Wasting DB Space
-- =================================================================
UPDATE creature_template SET ModelId2=0 WHERE ModelId2=ModelId1;
UPDATE creature_template SET ModelId3=0 WHERE ModelId3=ModelId1;
UPDATE creature_template SET ModelId4=0 WHERE ModelId4=ModelId1;

UPDATE creature_template SET ModelId2=ModelId3 WHERE ModelId2=0 AND ModelId3!=0;
UPDATE creature_template SET ModelId3=ModelId4 WHERE ModelId3=0 AND ModelId4!=0;

UPDATE creature_template SET ModelId2=0 WHERE ModelId1=ModelId2;

UPDATE creature_template SET ModelId3=0 WHERE ModelId1=ModelId3;
UPDATE creature_template SET ModelId3=0 WHERE ModelId2=ModelId3;

UPDATE creature_template SET ModelId4=0 WHERE ModelId1=ModelId4;
UPDATE creature_template SET ModelId4=0 WHERE ModelId2=ModelId4;
UPDATE creature_template SET ModelId4=0 WHERE ModelId3=ModelId4;



