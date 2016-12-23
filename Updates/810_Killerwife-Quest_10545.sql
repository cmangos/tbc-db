-- ===================
-- Fixes by Killerwife
-- ===================
-- Bladespire Kegger quest script fix cleanup
-- http://www.wowhead.com/quest=10545/bladespire-kegger

UPDATE quest_template SET ReqSpellCast1=0 WHERE entry=10545; -- obsolete entry for casting a spell that should not be present

-- gist diff https://gist.github.com/killerwife/3b4f9d5135ad3c2e727f

