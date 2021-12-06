-- deprecated behaviour of dataint2 and 3 for spawn command moved to spawn data template in order to free command space
INSERT INTO creature_spawn_data_template(Entry,Faction)
VALUES(100,132);
UPDATE dbscripts_on_quest_end SET dataint4=100,dataint2=0 WHERE id IN(1371) AND command=10;
INSERT INTO creature_spawn_data_template(Entry,ModelId)
VALUES(10003,11686);
UPDATE dbscripts_on_event SET dataint4=10003,dataint3=0 WHERE id IN(14143) AND command=10;

