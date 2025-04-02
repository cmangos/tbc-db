-- peacebloom
DELETE a FROM gameobject a WHERE Id IN(1618,3724) AND NOT EXISTS (SELECT guid FROM spawn_group_spawn b WHERE b.guid=a.guid) AND map IN(0,1);
-- silverleaf
DELETE a FROM gameobject a WHERE Id IN(1617,3725) AND NOT EXISTS (SELECT guid FROM spawn_group_spawn b WHERE b.guid=a.guid) AND map IN(0,1);
-- earthroot
DELETE a FROM gameobject a WHERE Id IN(1619,3726) AND NOT EXISTS (SELECT guid FROM spawn_group_spawn b WHERE b.guid=a.guid) AND map IN(0,1);
-- mageroyal
DELETE a FROM gameobject a WHERE Id IN(1620,3727) AND NOT EXISTS (SELECT guid FROM spawn_group_spawn b WHERE b.guid=a.guid) AND map IN(0,1);
-- briarthorn
DELETE a FROM gameobject a WHERE Id IN(1621,3729) AND NOT EXISTS (SELECT guid FROM spawn_group_spawn b WHERE b.guid=a.guid) AND map IN(0,1);
-- stranglekelp
DELETE a FROM gameobject a WHERE Id IN(2045) AND NOT EXISTS (SELECT guid FROM spawn_group_spawn b WHERE b.guid=a.guid) AND map IN(0,1);
-- bruiseweed
DELETE a FROM gameobject a WHERE Id IN(1622,3730) AND NOT EXISTS (SELECT guid FROM spawn_group_spawn b WHERE b.guid=a.guid) AND map IN(0,1);
-- wild steelbloom
DELETE a FROM gameobject a WHERE Id IN(1623) AND NOT EXISTS (SELECT guid FROM spawn_group_spawn b WHERE b.guid=a.guid) AND map IN(0,1);
-- grave moss
DELETE a FROM gameobject a WHERE Id IN(1628) AND NOT EXISTS (SELECT guid FROM spawn_group_spawn b WHERE b.guid=a.guid) AND map IN(0,1);
-- kingsblood
DELETE a FROM gameobject a WHERE Id IN(1624) AND NOT EXISTS (SELECT guid FROM spawn_group_spawn b WHERE b.guid=a.guid) AND map IN(0,1);
-- liferoot
DELETE a FROM gameobject a WHERE Id IN(2041) AND NOT EXISTS (SELECT guid FROM spawn_group_spawn b WHERE b.guid=a.guid) AND map IN(0,1);
-- fadeleaf
DELETE a FROM gameobject a WHERE Id IN(2042) AND NOT EXISTS (SELECT guid FROM spawn_group_spawn b WHERE b.guid=a.guid) AND map IN(0,1);
-- goldthorn
DELETE a FROM gameobject a WHERE Id IN(2046) AND NOT EXISTS (SELECT guid FROM spawn_group_spawn b WHERE b.guid=a.guid) AND map IN(0,1);
-- khadgars whisker
DELETE a FROM gameobject a WHERE Id IN(2043) AND NOT EXISTS (SELECT guid FROM spawn_group_spawn b WHERE b.guid=a.guid) AND map IN(0,1);
-- wintersbite
DELETE a FROM gameobject a WHERE Id IN(2044) AND NOT EXISTS (SELECT guid FROM spawn_group_spawn b WHERE b.guid=a.guid) AND map IN(0,1);
-- firebloom
DELETE a FROM gameobject a WHERE Id IN(2866) AND NOT EXISTS (SELECT guid FROM spawn_group_spawn b WHERE b.guid=a.guid) AND map IN(0,1);
-- purple lotus
DELETE a FROM gameobject a WHERE Id IN(142140) AND NOT EXISTS (SELECT guid FROM spawn_group_spawn b WHERE b.guid=a.guid) AND map IN(0,1);
-- arthas tears
DELETE a FROM gameobject a WHERE Id IN(142141,176642) AND NOT EXISTS (SELECT guid FROM spawn_group_spawn b WHERE b.guid=a.guid) AND map IN(0,1);
-- sungrass
DELETE a FROM gameobject a WHERE Id IN(142142,176636) AND NOT EXISTS (SELECT guid FROM spawn_group_spawn b WHERE b.guid=a.guid) AND map IN(0,1);
-- blindweed
DELETE a FROM gameobject a WHERE Id IN(142143) AND NOT EXISTS (SELECT guid FROM spawn_group_spawn b WHERE b.guid=a.guid) AND map IN(0,1);
-- ghost mushroom
DELETE a FROM gameobject a WHERE Id IN(142144) AND NOT EXISTS (SELECT guid FROM spawn_group_spawn b WHERE b.guid=a.guid) AND map IN(0,1);
-- gromsblood
DELETE a FROM gameobject a WHERE Id IN(142145,176637) AND NOT EXISTS (SELECT guid FROM spawn_group_spawn b WHERE b.guid=a.guid) AND map IN(0,1);
-- golden sansam
DELETE a FROM gameobject a WHERE Id IN(176583,176638) AND NOT EXISTS (SELECT guid FROM spawn_group_spawn b WHERE b.guid=a.guid) AND map IN(0,1);
-- dreamfoil
DELETE a FROM gameobject a WHERE Id IN(176584,176639) AND NOT EXISTS (SELECT guid FROM spawn_group_spawn b WHERE b.guid=a.guid) AND map IN(0,1);
-- mountain silversage
DELETE a FROM gameobject a WHERE Id IN(176586,176640) AND NOT EXISTS (SELECT guid FROM spawn_group_spawn b WHERE b.guid=a.guid) AND map IN(0,1);
-- plaguebloom
DELETE a FROM gameobject a WHERE Id IN(176587,176641) AND NOT EXISTS (SELECT guid FROM spawn_group_spawn b WHERE b.guid=a.guid) AND map IN(0,1);
-- icecap
DELETE a FROM gameobject a WHERE Id IN(176588) AND NOT EXISTS (SELECT guid FROM spawn_group_spawn b WHERE b.guid=a.guid) AND map IN(0,1);
-- black lotus
DELETE a FROM gameobject a WHERE Id IN(176589) AND NOT EXISTS (SELECT guid FROM spawn_group_spawn b WHERE b.guid=a.guid) AND map IN(0,1);



