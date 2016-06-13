-- Fixed stats of NPC 14564 (Terrordale Spirit) in Eastern Plaguelands
-- They were doing twice their expected damage output
UPDATE `creature_template` SET `DamageMultiplier`='1', `MeleeBaseAttackTime`='2000', `ArmorMultiplier`='1', `MaxLootGold`='305' WHERE `entry`='14564'; -- Terrordale Spirit (1.4D) (0.960169A) (1P)

