-- Fix data for Frostbite Invisible Stalker. 
-- Trigger used in Freezing Circle used by multiple Zangarmash mobs. Spawned by s.34778 which is triggered by s.34787
UPDATE creature_template SET UnitFlags=33554432, FactionAlliance=74, FactionHorde=74, MinLevel=71, MaxLevel=71, MovementType=0 WHERE entry=20061;

