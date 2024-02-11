-- add emotes for texts used by Chef Jessen 20378
UPDATE broadcast_text SET EmoteID1=5 WHERE Id=18140;
UPDATE broadcast_text SET EmoteID1=22 WHERE Id IN (18141,18143);
UPDATE broadcast_text SET EmoteID1=25 WHERE Id=18142;
UPDATE broadcast_text SET EmoteID1=15 WHERE Id=18144;

-- Mograine's Stronbox
UPDATE `gameobject_template` SET `faction`=114 WHERE `entry`=184308;

-- add emotes/types for texts used during Southshore Inn RP
UPDATE broadcast_text SET EmoteID1=1 WHERE Id IN (18084,18085,18087,18088,18091,18093,18096,18099,18100,18101,18103,18107,18121,18125,18129);
UPDATE broadcast_text SET ChatTypeID=2 WHERE Id IN (18086,18090,18092,18102,18106,18113,18127);
UPDATE broadcast_text SET EmoteID1=274 WHERE Id=18089;
UPDATE broadcast_text SET EmoteID1=6 WHERE Id IN (18094,18095);
UPDATE broadcast_text SET EmoteID1=25, ChatTypeID=2 WHERE Id IN (18097,18124);
UPDATE broadcast_text SET EmoteID1=25 WHERE Id IN (18098,18126);
UPDATE broadcast_text SET EmoteID1=5 WHERE Id IN (18104,18112,18118,18123);
UPDATE broadcast_text SET EmoteID1=6, EmoteID2=6, EmoteDelay2=3000 WHERE Id=18108;
UPDATE broadcast_text SET EmoteID1=25, EmoteID2=6, EmoteDelay2=3000 WHERE Id IN (18109,18117);
UPDATE broadcast_text SET EmoteID1=1, EmoteID2=6, EmoteDelay2=3000 WHERE Id=18110;
UPDATE broadcast_text SET EmoteID1=5, EmoteID2=25, EmoteDelay2=2000 WHERE Id=18122;
UPDATE broadcast_text SET EmoteID1=66 WHERE Id=18130;

UPDATE `creature_template` SET `UnitFlags`=33555200 WHERE `Entry`=20391; -- Event Generator Old Hillsbrad

-- Light Crystal
UPDATE `gameobject_template` SET `size`=0.05 WHERE `Entry`=184307;
