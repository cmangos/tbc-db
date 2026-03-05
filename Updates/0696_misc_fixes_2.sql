-- Fix Typo applying bad spell list for Cabal Shadow Priest 18637
-- https://github.com/cmangos/tbc-db/commit/a1a506929364ab4425ccf7499743986875f43389#diff-b64b5f6508fd61949c091e1ee6c7b3b24a8b06e6d3d5f993025c9e7bed0aac12R228
UPDATE `creature_template` SET `SpellList` = 1863701 WHERE `entry` = 18637;

