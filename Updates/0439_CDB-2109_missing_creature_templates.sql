-- Add missing creature template for NPCs 4098 (Galak Pack Runner), 4476 (Screaming Haunt) & 5348 (Dreamwatcher Forktongue)
-- These were present in patch 1.12 but not spawned in game.
-- Sources: WotLK DB
-- Proper damage values but possibly wrong multiplier as NPC were removed or never released in Classic
UPDATE `creature_template` SET `DamageMultiplier`='1', `MeleeBaseAttackTime`='2000' WHERE `entry`='4098'; -- Galak Pack Runner (0.8H)(1P)(1.15D)(1A)
UPDATE `creature_template` SET `DamageMultiplier`='1', `MeleeBaseAttackTime`='2000' WHERE `entry`='4476'; -- Screaming Haunt (1.3H)(1P)(1.7D)(1A)

