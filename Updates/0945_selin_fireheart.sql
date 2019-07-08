-- do not regen mana
UPDATE `creature_template` SET `RegenerateStats` = 1 WHERE `Entry` in (25562,24723);

-- Target Selin, not crystal
UPDATE `spell_script_target` SET `targetEntry` = 24723 WHERE `entry` = 44320;


