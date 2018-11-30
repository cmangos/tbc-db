-- Fix damage stats of NPCs outside Scarlet Monastery: they were elite back in Classic
UPDATE `creature_template` SET `ArmorMultiplier`='1' WHERE `entry`='4280'; -- Scarlet Preserver (1.05H)(1P)(1D)(0.986056A)
UPDATE `creature_template` SET `ArmorMultiplier`='1' WHERE `entry`='4281'; -- Scarlet Scout (1.05H)(1P)(1D)(0.985833A)
UPDATE `creature_template` SET `DamageMultiplier`='1', `ArmorMultiplier`='1' WHERE `entry`='4282'; -- Scarlet Magician (1.05H)(1P)(1.15D)(0.986239A)
UPDATE `creature_template` SET `ArmorMultiplier`='1' WHERE `entry`='4284'; -- Scarlet Augur (1.1H)(2P)(1D)(0.986447A)
UPDATE `creature_template` SET `ArmorMultiplier`='1' WHERE `entry`='4285'; -- Scarlet Disciple (1.1H)(2P)(1D)(0.987415A)

