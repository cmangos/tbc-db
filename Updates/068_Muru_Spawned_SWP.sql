-- =================================
-- Spawn M'uru in SWP (Trinity Data) - Prior to 2.4 M'uru Was located beneath the Blood Knight headquarters in Silvermoon's Farstriders' Square (In 2.4 Moved into Sunwell Plateau)
-- =================================
DELETE FROM creature WHERE id IN (25741);
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values
('152571','25741','580','1','0','0','1816.25','625.484','69.6036','5.62435','604800','0','0','2701328','0','0','0');

