DELETE FROM gameobject_involvedrelation WHERE quest=8788;
INSERT INTO gameobject_involvedrelation (id, quest) VALUES
(180746, 8788);
DELETE FROM gameobject_questrelation WHERE quest=8788;
INSERT INTO gameobject_questrelation (id, quest) VALUES
(180746, 8788);

DELETE FROM item_loot_template WHERE entry IN (21270,21271);
INSERT INTO item_loot_template (entry, item, ChanceOrQuestChance, groupid, mincountOrRef, maxcount, condition_id, comments) VALUES
(21270, 21235, 100, 0, 5, 5, 0, 'Winter Veil Roast'),
(21271, 21241, 100, 0, 5, 5, 0, 'Winter Veil Eggnog');

-- Ensure Smokywood Pastures Gift Pack always contains something
UPDATE item_loot_template SET ChanceOrQuestChance=0, groupid=1 WHERE entry=17727;

-- the stipulation here is that q.8788 'A Gently Shaken Gift' is for mana users while q.8767 'A Gently Shaken Gift' is for non-mana users
UPDATE quest_template SET RequiredClasses=2+4+16+64+128+256+1024, MinLevel=0, OfferRewardText='This present looks like it has been shaken a few times. The tag on it reads:$B$BTo a very special $R $C.' WHERE entry=8788;
UPDATE quest_template SET RequiredClasses=1+8 WHERE entry=8767;


