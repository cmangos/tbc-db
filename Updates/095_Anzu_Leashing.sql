-- 2.1.2: Heroic Mode: Anzu, the Raven God may no longer be pulled far away from the location where he is summoned. 
UPDATE creature_template SET Leash=80 WHERE entry IN (23035);

