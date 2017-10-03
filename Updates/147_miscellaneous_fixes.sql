UPDATE `creature_template` SET `GossipMenuId` = 8542 WHERE `entry` = 22427; -- give zarehvi proper gossip menu id

UPDATE creature_template SET ExtraFlags= ExtraFlags&~128,MovementType=0 WHERE entry=22423; -- make evergrove druid not invisible


