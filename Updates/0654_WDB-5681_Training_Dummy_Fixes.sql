-- Training Dummy - Fixes
-- aggro fix for all in capitals

-- Advanced Training Dummy 24792
-- Grandmaster's Training Dummy 31144
-- Heroic Training Dummy 31146
-- Expert's Training Dummy 32666
-- Master's Training Dummy 32667
UPDATE creature_template SET StaticFlags1 = 34603278, StaticFlags2 = 1077936160, StaticFlags3 = 8421376 WHERE Entry IN (24792,31144,31146,32666,32667);

