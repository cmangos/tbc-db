-- Fixed elemental damage and immunities
-- Contributes to https://github.com/classicdb/database/issues/258 and https://github.com/classicdb/database/issues/227
 
-- Onyxia, Ragnaros, Son of Flame: immune to fire
UPDATE creature_template SET SchoolImmuneMask = 4 WHERE Entry IN (10184, 11502, 12143);


