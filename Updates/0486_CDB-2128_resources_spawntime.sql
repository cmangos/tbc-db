-- Fix spawn time of mineral and herbal resources
-- based on https://github.com/cmangos/tbc-db/commit/7c15b357b6108310d1ac479edb6864f27ea4c346
UPDATE `gameobject` SET `spawntimesecsmin` = 45, `spawntimesecsmax` = 90 WHERE `id` IN (
1731, -- Copper Vein
1732, -- Tin Vein
1733, -- Silver Vein
1734, -- Gold Vein
2040, -- Mithril Deposit
2047, -- Truesilver Deposit
2054, -- Tin Vein
2055, -- Copper Vein
103711, -- Tin Vein
105569, -- Silver Vein
150079, -- Mithril Deposit
150080, -- Gold Vein
150081, -- Truesilver Deposit
150082 -- Small Thorium Vein
) AND `map` IN (0,1,530); -- all pooled all good

