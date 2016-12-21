-- =================================
-- Fix Herb Vendor in Stormwind City
-- =================================
UPDATE npc_vendor SET MaxCount=3, Incrtime=7200 WHERE entry=1313 AND item=765; -- Silverleaf
UPDATE npc_vendor SET MaxCount=1, Incrtime=7200 WHERE entry=1313 AND item=3357; -- Liferoot
UPDATE npc_vendor SET MaxCount=3, Incrtime=7200 WHERE entry=1313 AND item=2447; -- Peacebloom

