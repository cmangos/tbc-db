-- ===================
-- Fixes by Killerwife
-- ===================
-- Skettis Offensive quest script fix
-- http://www.wowhead.com/quest=10879/the-skettis-offensive

UPDATE quest_template SET ReqCreatureOrGOCount1=0,ReqCreatureOrGOCount2=0,ReqCreatureOrGOId1=0,ReqCreatureOrGOId2=0,SpecialFlags=3 WHERE entry=10879;
-- remove wrong finish quest on kills requirements, and set quest to complete at event end

-- DELETE FROM script_texts WHERE entry=-1999926;
-- INSERT INTO script_texts(entry,content_default,comment) VALUES('-1999926','The Avatar of Terokk has been defeated! Death to Terokk! Death to Skettis!','Defender Grashna on Avatar of Terokk death');


