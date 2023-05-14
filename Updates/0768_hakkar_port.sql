ALTER TABLE db_version CHANGE COLUMN required_s2465_01_mangos_creature_equip_drop required_s2466_01_mangos_spell_list_conditions bit;

-- change of operation enum for CONDITION_WORLDSTATE to official enum
UPDATE conditions SET value2=5 WHERE type=42 AND value2=1;
UPDATE conditions SET value2=6 WHERE type=42 AND value2=2;
UPDATE conditions SET value2=1 WHERE type=42 AND value2=0;

ALTER TABLE creature_spell_targeting ADD COLUMN `UnitCondition` INT(11) NOT NULL DEFAULT -1 AFTER Param3;
ALTER TABLE creature_spell_list ADD COLUMN `CombatCondition` INT(11) NOT NULL DEFAULT -1 AFTER Flags;


UPDATE creature_spell_list SET CombatCondition=1007 WHERE Id IN(1483401) AND SpellId IN(24687); -- jeklik
UPDATE creature_spell_list SET CombatCondition=1006 WHERE Id IN(1483401) AND SpellId IN(24688); -- venoxis
UPDATE creature_spell_list SET CombatCondition=1008 WHERE Id IN(1483401) AND SpellId IN(24686); -- marli
UPDATE creature_spell_list SET CombatCondition=1009 WHERE Id IN(1483401) AND SpellId IN(24689); -- thekal
UPDATE creature_spell_list SET CombatCondition=1005 WHERE Id IN(1483401) AND SpellId IN(24690); -- arlokk


