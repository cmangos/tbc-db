-- Fix UnitFlags for trigger NPCs involved in q.10859 and q.10674
UPDATE creature_template SET SpeedWalk=2.5/2.5, SpeedRun=7/7, UnitFlags=33555200 WHERE entry=22333; -- Orb Collecting Totem
UPDATE creature_template SET SpeedWalk=2.5/2.5, SpeedRun=8/7, UnitFlags=33554432 WHERE entry=21926; -- Multi-Spectrum Light Trap Bunny

