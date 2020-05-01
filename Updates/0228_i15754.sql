-- Fix data for Pattern: Warbear Woolies i.15754 and remove Tribal Leatherworking requirement that was removed in 2.0.6
-- https://classic.wowhead.com/item=15754/pattern-warbear-woolies#comments:id=2700410
UPDATE item_template SET requiredspell=0, spellid_1=483, spellid_2=19080, spelltrigger_2=6, Material=-1, BagFamily=8 WHERE entry=15754;

