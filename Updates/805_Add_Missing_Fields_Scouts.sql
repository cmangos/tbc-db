-- Add Missing Zangarmarsh Field Scouts
DELETE FROM creature WHERE guid IN (107775,107776);
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('107775','18564','530','1','0','0','283.941','7815.65','27.1572','0.559242','300','0','0','5914','0','0','0');
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('107776','18581','530','1','0','0','375.797','6230.68','22.7942','0.143877','300','0','0','5914','0','0','0');


