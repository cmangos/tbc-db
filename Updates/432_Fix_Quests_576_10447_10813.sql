-- ===========================
-- Quest 576 "Keep An Eye Out" - Brutus Should Have 100% Quest Item Drop Rate
-- ===========================
UPDATE creature_loot_template SET ChanceOrQuestChance=-100 WHERE item=3897 AND entry=2551;

-- ============================
-- Quest 10447 "The Final Code" - Should Be 100% Quest Item Drop Rate
-- ============================
UPDATE creature_loot_template SET ChanceOrQuestChance=-100 WHERE item=29912 AND entry=18554;

-- =================================
-- Quest 10834 "Grillok "Darkeye"" - Should Be 100% Quest Item Drop Rate
-- =================================
UPDATE creature_loot_template SET ChanceOrQuestChance=-100 WHERE item=31529 AND entry=19457;






