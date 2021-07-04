-- Poison should not benefit from Spell Damage, only + Nature Damage in TBC
-- https://wowwiki.fandom.com/wiki/Deadly_Poison
-- Patch 3.0.2 (14-Oct-2008): Damaging poisons now scale with attack power.
-- https://github.com/FeenixServerProject/Archangel_2.4.3_Bugtracker/issues/3753
-- https://www.wowhead.com/forums&topic=16706/super-poisons#p146520
-- https://github.com/TrinityCore/TrinityCore/commit/40309110acae2e621db67dc221fb03a145cf84a0#diff-e7df91a40fdbda0a780786e0f2c21c5651556c5d3a951b61ee0aef65cf84a12cR26
DELETE FROM `spell_bonus_data` WHERE `entry` IN (2818,8680,13218,26688);
INSERT INTO `spell_bonus_data` (`entry`, `direct_bonus`, `dot_bonus`, `ap_bonus`, `ap_dot_bonus`, `comments`) VALUES
(2818, 0, 0, 0, 0, 'Rogue - Deadly Poison (Rank 1)'), -- missing
(8680, 0, 0, 0, 0, 'Rogue - Instant Poison (Rank 1)'), -- rename
(13218, 0, 0, 0, 0, 'Rogue - Wound Poison (Rank 1)'), -- missing
(26688, 0, 0, 0, 0, 'Rogue - Anesthetic Poison (Rank 1)'); -- rename

