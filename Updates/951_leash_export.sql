-- Shade of Aran
UPDATE creature_template SET Leash=60 WHERE entry IN (16524); -- Can Be Pulled Outside of Room

-- Leash Prince To His Room To Prevent Pulling Him Outside Of It
UPDATE creature_template SET Leash=100 WHERE entry IN (15690);

-- 2.1.2: Heroic Mode: Anzu, the Raven God may no longer be pulled far away from the location where he is summoned. 
UPDATE creature_template SET Leash=80 WHERE entry IN (23035);


