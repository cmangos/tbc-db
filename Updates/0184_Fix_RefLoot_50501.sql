-- Remove Profession Based Roll Conditions from Random Outland NON BOP RefLoot: NPC LOOT - Profession (-Design,-Formula,-Pattern,-Plans,-Recipe,-Schematic) - NPC Level 68+ Elite
UPDATE `reference_loot_template` SET `condition_id` = 0 WHERE `entry` = 50501 AND `item` != 24303; -- Pattern: Girdle of Ruination (Seems to be exception)

