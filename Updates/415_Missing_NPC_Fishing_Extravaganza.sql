-- ==================================================================================
-- Riggle Bassbait <Fishmaster> - Now Shows Up For Fishing Extravaganza Turn-In Event - UDB Backport Data
-- ==================================================================================
DELETE FROM `creature` WHERE `guid`=105970;
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('105970','15077','0','1','0','13','-14439.3','475.42','15.892','3.68503','300','0','0','2215','0','0','0');

DELETE FROM `game_event_creature` WHERE `guid`=105970;
insert into `game_event_creature` (`guid`, `event`) values('105970','36');


