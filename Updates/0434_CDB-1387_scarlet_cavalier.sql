-- Fixed damage stats of NPC 1836 (Scarlet Cavalier) and NPC 1842 (Taelan Fordring) in Western Plaguelands
-- Removed wrong civilian flag for NPC 1842 (Taelan Fordring)
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2400', `ArmorMultiplier`='1' WHERE `entry`='1836'; -- Scarlet Cavalier (1.7D) (0.99214A) (1P)
UPDATE `creature_template` SET `CreatureTypeFlags`='4' WHERE `entry`='1842'; -- Highlord Taelan Fordring (5D) (1A) (2P)

