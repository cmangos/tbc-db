-- Heroic OHF Thrall should not hit for 1 damage, evidence shows he can deal more than 1 damage, and normal mode does more than 1 damage
-- Appears it would be closer to 700-900 against Epoch Hunter, this is 330-850 as variance is unknown
UPDATE `creature_template` SET `DamageMultiplier` = '4.00578' WHERE (`Entry` = '20548');