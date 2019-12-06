-- Fix stats of NPC 12922 (Imp Minion) used as pet
-- based on pet_levelstats values
-- Thanks @canidae for pointing the error
UPDATE `creature_template` SET `DamageMultiplier`='1', `ArmorMultiplier`='0.75' WHERE `entry`='12922'; -- Imp Minion (0.36H)(0.33P)(0.7D)(1A) s.11939

