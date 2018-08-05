-- Fix UnitFlags for Illidan Stormrage spawned in quest 11108 and remove CREATURE_EXTRA_FLAG_INSTANCE_BIND (This is not the same Illidan that is spawned in Black Temple)
UPDATE creature_template SET UnitFlags=33600, ExtraFlags=0, SpeedWalk=2.5/2.5, SpeedRun=7/7 WHERE entry=23467; -- Illidan Stormrage

