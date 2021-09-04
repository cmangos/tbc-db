-- Correct UnitFlags & CorpseDecay for Ember of Al'ar 19551
-- .go c id 19514
UPDATE `creature_template` SET `UnitFlags` = 32768, `CorpseDecay` = 5 WHERE `entry` = 19551;

