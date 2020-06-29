-- Small improvements for quest 2501 (Badlands Reagent Run II):
-- Fix item 7866 (Empty Thaumaturgy Vessel) not disappearing on use
-- Prevent internal spell from being displayed as reward
-- Thanks @canidae for reporting, this closes https://github.com/cmangos/issues/issues/2212
-- .go c id 1470
-- .learn 28596
-- .setskill 171 210
-- .go c id 2726
-- issue: consumed on spell start not channel end, consumed when used on same npc twice but does not yield quest item then
UPDATE quest_template SET RewSpell=0 WHERE entry=2501;
UPDATE item_template SET spellcharges_1=1 WHERE entry=7866;
