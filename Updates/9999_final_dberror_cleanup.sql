-- Creature (Entry: 18726, class 1) has different `unit_class` in heroic mode (Entry: 20307, class 2).
UPDATE creature_template SET UnitClass=2 WHERE entry=18726; -- Flying Raging Soul

-- Creature (GUID: 48962) does not exist but has a record in `creature_addon`
DELETE FROM creature_addon WHERE guid=48962;

-- `creature_linking` has a non existing slave (guid: 84098, master_guid 84097), skipped
-- `creature_linking` has a non existing slave (guid: 86069, master_guid 86872), skipped
-- `creature_linking` has a non existing slave (guid: 86086, master_guid 86872), skipped
DELETE FROM creature_linking WHERE guid IN(84098);
UPDATE creature_linking SET guid=150053 WHERE guid=86069 AND master_guid=86872;
UPDATE creature_linking SET guid=150052 WHERE guid=86086 AND master_guid=86872;

-- Table `npc_gossip` have nonexistent creature (GUID: 24440) entry, ignore.
DELETE FROM npc_gossip WHERE npc_guid=24440;

-- Table creature_movement contain path for creature guid 3246, but this creature guid does not exist. Skipping.
-- Table creature_movement contain path for creature guid 3565, but this creature guid does not exist. Skipping.
-- Table creature_movement contain path for creature guid 3570, but this creature guid does not exist. Skipping.
-- Table creature_movement contain path for creature guid 3574, but this creature guid does not exist. Skipping.
DELETE FROM creature_movement WHERE id IN(3246,3565,3570,3574);

-- Table `dbscripts_on_creature_movement` contain unused script, id 4.
-- Table `dbscripts_on_creature_movement` contain unused script, id 8.
-- Table `dbscripts_on_creature_movement` contain unused script, id 13.
-- Table `dbscripts_on_creature_movement` contain unused script, id 14.
-- Table `dbscripts_on_creature_movement` contain unused script, id 15.
-- Table `dbscripts_on_creature_movement` contain unused script, id 16.
-- Table `dbscripts_on_creature_movement` contain unused script, id 1010.
-- Readd these if ever needed in the future
DELETE FROM dbscripts_on_creature_movement WHERE id IN(4,8,13,14,15,16,1010);
