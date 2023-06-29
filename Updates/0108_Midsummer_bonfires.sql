-- Midsummer festival fixes
-- Alliance Bonfire [quest assignment fixes]
DELETE FROM `gameobject_questrelation` WHERE `id` IN (187914,187928,187932,187938);
DELETE FROM `gameobject_involvedrelation` WHERE `id` IN (187914,187928,187932,187938);
INSERT INTO `gameobject_questrelation` (`id`, `quest`) VALUES (187914, 11732); -- Alliance Bonfire - Arathi Highlands q.11732
INSERT INTO `gameobject_involvedrelation` (`id`, `quest`) VALUES (187914, 11732);
UPDATE quest_template SET OfferRewardText = 'Desecrate the Alliance''s Arathi Highlands bonfire!' WHERE entry = 11732;
UPDATE `quest_template` SET `RequiredRaces` = 690 WHERE `entry` = 11732;

DELETE FROM `gameobject_questrelation` WHERE `id` = 187564 AND `quest` = 11745; -- Westfall Alliance Bonfire q.11581
DELETE FROM `gameobject_involvedrelation` WHERE `id` = 187564 AND `quest` = 11745;
DELETE FROM `gameobject_questrelation` WHERE `id` = 187564 AND `quest` = 11749;
DELETE FROM `gameobject_involvedrelation` WHERE `id` = 187564 AND `quest` = 11749;

INSERT INTO `gameobject_questrelation` (`id`, `quest`) VALUES (187928, 11745); -- goldshire
INSERT INTO `gameobject_involvedrelation` (`id`, `quest`) VALUES (187928, 11745);

INSERT INTO `gameobject_questrelation` (`id`, `quest`) VALUES (187932, 11749); -- Loch Modan
INSERT INTO `gameobject_involvedrelation` (`id`, `quest`) VALUES (187932, 11749);

INSERT INTO `gameobject_questrelation` (`id`, `quest`) VALUES (187938, 11755); -- Hinterlands (Aerie Peak)
INSERT INTO `gameobject_involvedrelation` (`id`, `quest`) VALUES (187938, 11755);

-- Horde Bonfire [quest assignment fixes]
DELETE FROM `gameobject_questrelation` WHERE `id` = 187559 AND `quest` = 11732; -- Horde Bonfire - Silverpine Forest q.11580 for alliance
DELETE FROM `gameobject_involvedrelation` WHERE `id` = 187559 AND `quest` = 11732;
DELETE FROM `gameobject_questrelation` WHERE `id` = 187559 AND `quest` = 11755;
DELETE FROM `gameobject_involvedrelation` WHERE `id` = 187559 AND `quest` = 11755;
DELETE FROM `gameobject_questrelation` WHERE `id` = 187559 AND `quest` = 11766;
DELETE FROM `gameobject_involvedrelation` WHERE `id` = 187559 AND `quest` = 11766;
DELETE FROM `gameobject_questrelation` WHERE `id` = 187559 AND `quest` = 11786;
DELETE FROM `gameobject_involvedrelation` WHERE `id` = 187559 AND `quest` = 11786;

DELETE FROM `gameobject_involvedrelation` WHERE `id` = 187974 AND `quest` = 11786; -- Horde Bonfire - Tirisfal Glades
INSERT INTO `gameobject_involvedrelation` (`id`, `quest`) VALUES (187974, 11786);

