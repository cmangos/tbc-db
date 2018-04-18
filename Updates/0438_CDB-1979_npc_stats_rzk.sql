-- Fixed stats from some NPCs in Razorfen Kraul
UPDATE `creature_template` SET `MaxLevel`='27' WHERE `entry`='4623'; -- Quilguard Champion (3H)(1P)(1.7D)(1A)
UPDATE `creature_template` SET `DamageMultiplier`='1.7', `MeleeBaseAttackTime`='2000' WHERE `entry`='4842'; -- Earthcaller Halmgar (3.5H)(1P)(2.5D)(1A)
UPDATE `creature_template` SET `ArmorMultiplier`='1' WHERE `entry`='6035'; -- Razorfen Stalker (3H)(1P)(1.7D)(0.99246A)

