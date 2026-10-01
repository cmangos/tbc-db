-- unguarded site GO spawns when whole group is wiped, done in core
DELETE FROM string_id WHERE Id IN(10002,10003) AND Name IN('THE_SUMMONING_CHAMBER_GUARD_GROUP','THE_SUMMONING_CHAMBER_UNGUARDED_GROUP');
INSERT INTO string_id(Id, Name) VALUES
(10002, 'THE_SUMMONING_CHAMBER_GUARD_GROUP'),
(10003, 'THE_SUMMONING_CHAMBER_UNGUARDED_GROUP');

DELETE FROM spawn_group WHERe Id IN(20001,20002);
INSERT INTO spawn_group(Id, Name, Type, MaxCount, WorldState, WorldStateExpression, Flags, StringId, RespawnOverrideMin, RespawnOverrideMax) VALUES
('20001', 'Shadowmoon Valley - Dark Conclave Ritualist guard group', '0', '0', '0', '0', '0', '10002', NULL, NULL),
('20002', 'Shadowmoon Valley - Unguarded Summoning Site group', '1', '0', '0', '0', '0', '10003', NULL, NULL);

DELETE FROM spawn_group_spawn WHERE Id IN(20001,20002);
INSERT INTO spawn_group_spawn(Id, Guid) VALUES
(20001, 77737),
(20001, 77738),
(20001, 77739),
(20001, 77740),
(20002, 99983);

UPDATE gameobject SET spawnMask=0 WHERE guid=99983; -- not spawned by default

