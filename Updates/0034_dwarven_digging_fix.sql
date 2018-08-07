-- https://github.com/cmangos/issues/issues/1663 - resolves
-- sets source count enough so that it does not impair quest progress
UPDATE quest_template SET ReqSourceCount1=5 WHERE entry IN(746);


