-- Prevent Mana Regeneration OOC for Marshfang Ripper 18130 & Marshfang Slicer 18131
UPDATE `creature_template` SET `RegenerateStats` = '1' WHERE `entry` IN (18130,18131);

