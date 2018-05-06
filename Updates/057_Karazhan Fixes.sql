-- ========================================
-- Various Karazhan Fixess and Improvements
-- ========================================
-- Roar (17546)
UPDATE creature_template SET ExtraFlags=256, MechanicImmuneMask=1+2+4+8+32+64+128+256+512+1024+2048+4096+8192+65536+131072+524288+2097152+4194304+33554432+536870912 WHERE entry IN (17546);

-- Dorothee (17535)
UPDATE creature_template SET ExtraFlags=769 WHERE entry IN (17535);

-- The Big Bad Wolf (17521)
UPDATE creature_template SET ExtraFlags=769 WHERE entry IN (17521);


