-- peacebloom
DELETE a FROM gameobject a WHERE Id IN(1618,3724) AND NOT EXISTS (SELECT guid FROM spawn_group_spawn b WHERE b.guid=a.guid);
-- silverleaf
DELETE a FROM gameobject a WHERE Id IN(1617,3725) AND NOT EXISTS (SELECT guid FROM spawn_group_spawn b WHERE b.guid=a.guid);
-- earthroot
DELETE a FROM gameobject a WHERE Id IN(1619,3726) AND NOT EXISTS (SELECT guid FROM spawn_group_spawn b WHERE b.guid=a.guid);
-- mageroyal
DELETE a FROM gameobject a WHERE Id IN(1620,3727) AND NOT EXISTS (SELECT guid FROM spawn_group_spawn b WHERE b.guid=a.guid);
-- briarthorn
DELETE a FROM gameobject a WHERE Id IN(1621,3729) AND NOT EXISTS (SELECT guid FROM spawn_group_spawn b WHERE b.guid=a.guid);
-- stranglekelp
DELETE a FROM gameobject a WHERE Id IN(2045) AND NOT EXISTS (SELECT guid FROM spawn_group_spawn b WHERE b.guid=a.guid);
-- bruiseweed
DELETE a FROM gameobject a WHERE Id IN(1622,3730) AND NOT EXISTS (SELECT guid FROM spawn_group_spawn b WHERE b.guid=a.guid);
-- wild steelbloom
DELETE a FROM gameobject a WHERE Id IN(1623) AND NOT EXISTS (SELECT guid FROM spawn_group_spawn b WHERE b.guid=a.guid);
-- grave moss
DELETE a FROM gameobject a WHERE Id IN(1628) AND NOT EXISTS (SELECT guid FROM spawn_group_spawn b WHERE b.guid=a.guid);
-- kingsblood
DELETE a FROM gameobject a WHERE Id IN(1624) AND NOT EXISTS (SELECT guid FROM spawn_group_spawn b WHERE b.guid=a.guid);
-- liferoot
DELETE a FROM gameobject a WHERE Id IN(2041) AND NOT EXISTS (SELECT guid FROM spawn_group_spawn b WHERE b.guid=a.guid);
-- fadeleaf
DELETE a FROM gameobject a WHERE Id IN(2042) AND NOT EXISTS (SELECT guid FROM spawn_group_spawn b WHERE b.guid=a.guid);
-- goldthorn
DELETE a FROM gameobject a WHERE Id IN(2046) AND NOT EXISTS (SELECT guid FROM spawn_group_spawn b WHERE b.guid=a.guid);
/*
-- khadgars whisker
DELETE a FROM gameobject a WHERE Id IN(2043) AND NOT EXISTS (SELECT guid FROM spawn_group_spawn b WHERE b.guid=a.guid);
-- wintersbite
DELETE a FROM gameobject a WHERE Id IN(2044) AND NOT EXISTS (SELECT guid FROM spawn_group_spawn b WHERE b.guid=a.guid);
-- firebloom
DELETE a FROM gameobject a WHERE Id IN(2866) AND NOT EXISTS (SELECT guid FROM spawn_group_spawn b WHERE b.guid=a.guid);
-- purple lotus
DELETE a FROM gameobject a WHERE Id IN(142140) AND NOT EXISTS (SELECT guid FROM spawn_group_spawn b WHERE b.guid=a.guid);
-- arthas tears
DELETE a FROM gameobject a WHERE Id IN(142141,176642) AND NOT EXISTS (SELECT guid FROM spawn_group_spawn b WHERE b.guid=a.guid);
-- sungrass
DELETE a FROM gameobject a WHERE Id IN(142142,176636) AND NOT EXISTS (SELECT guid FROM spawn_group_spawn b WHERE b.guid=a.guid);
-- blindweed
DELETE a FROM gameobject a WHERE Id IN(142143) AND NOT EXISTS (SELECT guid FROM spawn_group_spawn b WHERE b.guid=a.guid);
-- ghost mushroom
DELETE a FROM gameobject a WHERE Id IN(142144) AND NOT EXISTS (SELECT guid FROM spawn_group_spawn b WHERE b.guid=a.guid);
-- gromsblood
DELETE a FROM gameobject a WHERE Id IN(142145,176637) AND NOT EXISTS (SELECT guid FROM spawn_group_spawn b WHERE b.guid=a.guid);
-- golden sansam
DELETE a FROM gameobject a WHERE Id IN(176583,176638) AND NOT EXISTS (SELECT guid FROM spawn_group_spawn b WHERE b.guid=a.guid);
-- dreamfoil
DELETE a FROM gameobject a WHERE Id IN(176584,176639) AND NOT EXISTS (SELECT guid FROM spawn_group_spawn b WHERE b.guid=a.guid);
-- mountain silversage
DELETE a FROM gameobject a WHERE Id IN(176586,176640) AND NOT EXISTS (SELECT guid FROM spawn_group_spawn b WHERE b.guid=a.guid);
-- plaguebloom
DELETE a FROM gameobject a WHERE Id IN(176587,176641) AND NOT EXISTS (SELECT guid FROM spawn_group_spawn b WHERE b.guid=a.guid);
-- icecap
DELETE a FROM gameobject a WHERE Id IN(176588) AND NOT EXISTS (SELECT guid FROM spawn_group_spawn b WHERE b.guid=a.guid);
-- black lotus
DELETE a FROM gameobject a WHERE Id IN(176589) AND NOT EXISTS (SELECT guid FROM spawn_group_spawn b WHERE b.guid=a.guid);
*/


