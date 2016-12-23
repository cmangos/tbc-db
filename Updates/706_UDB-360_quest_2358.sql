-- q.2358 'Horns of Nez'ra'
UPDATE quest_template SET SpecialFlags = 0, OfferRewardText = 'To deny Ravenholdt the artifact, would be to deny one\'s own existence. Well done, $C. You may yet walk among the assassins of Ravenholdt.$B$BAs a young rogue adventuring in Darkshore, I discovered a tea that replenishes energy in combat. It has served me well throughout the years and now I pass on a taste of the thistle tea to you. Drink of it when you tire, $N, and fight with vigor once more!$B$B', RequestItemsText = 'Do you have the demon prince\'s horns?' WHERE entry = 2358;

-- Arantir must start/end this quest
DELETE FROM creature_questrelation WHERE id = 7009; 
INSERT INTO creature_questrelation (id, quest) VALUES
(7009, 2358);
DELETE FROM creature_involvedrelation WHERE id = 7009;
INSERT INTO creature_involvedrelation (id, quest) VALUES
(7009, 2358);


