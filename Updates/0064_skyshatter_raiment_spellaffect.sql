-- Correct spell_affect mask for Improved Chain Heal 38435
-- https://www.wowhead.com/item-set=683/skyshatter-raiment
UPDATE spell_affect SET SpellFamilyMask = 256 WHERE entry = 38435;

