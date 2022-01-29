-- Building - Remove CREATURE_EXTRA_FLAG_INVISIBLE and UNIT_FLAG_NOT_SELECTABLE, now better handled in core
-- We don't actually know with 100% certainty what flags/stats/auras this creature has since it's invisible to player and doesn't appear much in sniffs
UPDATE `creature_template` SET `UnitFlags`=0, `ExtraFlags`=0 WHERE `Entry`=18304;


