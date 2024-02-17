-- add emotes for texts used by Chef Jessen 20378
UPDATE broadcast_text SET EmoteID1=5 WHERE Id=18140;
UPDATE broadcast_text SET EmoteID1=22 WHERE Id IN (18141,18143);
UPDATE broadcast_text SET EmoteID1=25 WHERE Id=18142;
UPDATE broadcast_text SET EmoteID1=15 WHERE Id=18144;

-- Mograine's Stronbox
UPDATE `gameobject_template` SET `faction`=114 WHERE `entry`=184308;

-- add emotes/types for texts used during Southshore Inn RP
UPDATE broadcast_text SET EmoteID1=1 WHERE Id IN (18084,18085,18087,18088,18091,18093,18096,18099,18100,18101,18103,18107,18110,18121,18125,18129);
UPDATE broadcast_text SET ChatTypeID=2 WHERE Id IN (18086,18090,18092,18102,18106,18113,18127);
UPDATE broadcast_text SET EmoteID1=274 WHERE Id=18089;
UPDATE broadcast_text SET EmoteID1=6 WHERE Id IN (18094,18095,18108);
UPDATE broadcast_text SET EmoteID1=25, ChatTypeID=2 WHERE Id IN (18097,18124);
UPDATE broadcast_text SET EmoteID1=25 WHERE Id IN (18098,18109,18117,18126);
UPDATE broadcast_text SET EmoteID1=5 WHERE Id IN (18104,18112,18118,18122,18123);
UPDATE broadcast_text SET EmoteID1=66 WHERE Id=18130;

UPDATE `creature_template` SET `UnitFlags`=33555200 WHERE `Entry`=20391; -- Event Generator Old Hillsbrad

-- Light Crystal
UPDATE `gameobject_template` SET `size`=0.05 WHERE `Entry`=184307;
-- Dark Crystal
UPDATE `gameobject_template` SET `size`=0.5 WHERE `Entry`=184306;

-- texts for Frances Lin <Barmaid>
UPDATE broadcast_text SET EmoteID1=1 WHERE Id IN (18157,18158,18159);

-- Magistrate Henry Maleb, Chef Jessen, Frances Lin
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `Entry` IN (20373,20378,20401);

-- texts for Hillsbrad Citizen
UPDATE broadcast_text SET EmoteID1=1 WHERE Id BETWEEN 18201 AND 18209;
-- Hillsbrad Citizen
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `Entry` IN (20426,20428,20429,20430);

-- Sally Whitemane, Renault Mograine, and Little Jimmy Vishas
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `Entry` IN (20357,20358,20359);
UPDATE broadcast_text SET ChatTypeID=2 WHERE Id IN (18022,18024,18028);

-- Herod the Bully
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `Entry`=20360;

-- Hillsbrad Farmer
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `Entry`=20433;

-- Lordaeron Sentry, Lordaeron Watchman
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `Entry` IN (17815,17814);

-- Locked Chest
UPDATE `gameobject_template` SET `flags`=2 WHERE `entry`=184304;

-- Chef Jessen should not stop moving when you open his vendor window
UPDATE `creature_template` SET `InteractionPauseTimer`=0 WHERE `Entry`=20378;

-- Captain Edward Hanes, Captain Sanders
UPDATE `creature_template` SET `SpeedWalk`=1, `EquipmentTemplateId`=1229 WHERE `Entry` IN (20400,20351); -- UNIT_VIRTUAL_ITEM_SLOT_ID: 2704
UPDATE broadcast_text SET EmoteID1=1 WHERE Id IN (18064,18065,18066,18070,18074,18077,18078,18079,18081,18082,18083);
UPDATE broadcast_text SET EmoteID1=5 WHERE Id IN (18067,18072,18073);
UPDATE broadcast_text SET EmoteID1=273 WHERE Id=18068;
UPDATE broadcast_text SET EmoteID1=25 WHERE Id IN (18069,18071);
UPDATE broadcast_text SET EmoteID1=6 WHERE Id=18075;
UPDATE broadcast_text SET ChatTypeID=2 WHERE Id IN (18076,18080);

-- Caretaker Smithers
UPDATE broadcast_text SET ChatTypeID=2 WHERE Id IN (17997,17998,17999,18011);
UPDATE broadcast_text SET EmoteID1=1 WHERE Id IN (18009,18012);
UPDATE `creature_equip_template` SET `equipentry1`=1485, `SpeedWalk`=1 WHERE `entry`=20363; -- original: 1117 (fishing rod?)
