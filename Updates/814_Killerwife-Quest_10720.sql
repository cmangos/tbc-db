-- ===================
-- Fixes by Killerwife
-- ===================
-- The smallest creatures quest script
-- http://www.wowhead.com/quest=10720/the-smallest-creatures

DELETE FROM spell_script_target WHERE entry=38629;
INSERT INTO spell_script_target VALUES(38629,1,22356,0);
INSERT INTO spell_script_target VALUES(38629,1,22367,0);
INSERT INTO spell_script_target VALUES(38629,1,22368,0);

UPDATE quest_template SET ReqSpellCast1=38629,ReqSpellCast2=38629,ReqSpellCast3=38629 WHERE entry=10720;
-- not 100% blizzlike because on retail it was handled using 2 scripted spells, to circumvent
-- the player MCing a creature (since credit is rewarded to player)
-- our code has this feature that rewards it directly to player when the ReqSpellCast is set
-- if you disagree with this fix let me know

