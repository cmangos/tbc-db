-- Remove Mana Regeneration for Obsidian Eradicator 15262 & Obsidian Nullifier 15312
UPDATE `creature_template` SET `RegenerateStats` = 1 WHERE `entry` IN (15262, 15312); -- classic-db already has 15262

