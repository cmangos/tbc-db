-- fix rogue d3 4 set having wrong flags
UPDATE `spell_affect` SET `SpellFamilyMask` = '34359869440' WHERE (`entry` = '37166') and (`effectId` = '0');