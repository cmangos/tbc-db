-- q.5122 'The Medallion of Faith'
-- q. must be Repeatable
UPDATE quest_template SET SpecialFlags = 1 WHERE entry = 5122;

-- Malor's Strongbox
-- item must be droped anytime not only with q. (quest cannot be obtained without item anyway :))
-- Also flag 4 must be removed
UPDATE gameobject_loot_template SET ChanceOrQuestChance = 100 WHERE entry = 13580 and item = 12845;
UPDATE gameobject_template SET flags = 0 WHERE entry = 176112;


