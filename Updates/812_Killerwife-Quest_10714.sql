-- ===================
-- Fixes by Killerwife
-- ===================
-- On spirits wings quest script
-- http://www.wowhead.com/quest=10714/on-spirits-wings

UPDATE creature_template SET ExtraFlags=2 WHERE entry=22023; -- make creature visible
UPDATE quest_template SET ReqSpellCast1=0 WHERE entry=10714; -- remove redundant entry

