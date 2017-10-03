-- Trial and Error q.10566
-- For some reason the quest relations for this quest were missing.

DELETE FROM `creature_questrelation` WHERE `id`=21496 AND `quest`=10566;
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES 
(21496, 10566);

DELETE FROM `creature_involvedrelation` WHERE `id`=21496 AND `quest`=10566;
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES 
(21496, 10566);

