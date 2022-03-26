DELETE FROM `creature_spawn_data_template` WHERE `Entry`=5;
INSERT INTO `creature_spawn_data_template` (`Entry`, `NpcFlags`) VALUES
(5, 128);
DELETE FROM `creature_spawn_data` WHERE `Guid`=67872;
INSERT INTO `creature_spawn_data` (`Guid`, `Id`) VALUES
(67872, 5);

DELETE FROM `npc_gossip` WHERE `npc_guid`=67872;

