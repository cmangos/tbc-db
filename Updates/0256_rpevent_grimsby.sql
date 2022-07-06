-- Update RP Event for Mordant Grimbsby
SET @PATH := 23843;
DELETE FROM creature_movement_template WHERE `Entry` = @PATH;
INSERT INTO `creature_movement_template` (`Entry`, `PathId`, `Point`, `PositionX`, `PositionY`, `PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES 
(@PATH,0,1,-2948.3582,-3893.1711,35.094315,100,260000,0), -- 260000
(@PATH,0,2,-2956.8352,-3885.0703,33.218407,100,0,0),
(@PATH,0,3,-2955.9211,-3883.433,32.98708,100,1000,0),
(@PATH,0,4,-2955.9211,-3883.433,32.98708,5.7421, 45000,2384301),
(@PATH,0,5,-2948.0425,-3893.423,35.094315,100,0,0); -- down from 11 points

DELETE FROM `dbscripts_on_creature_movement` WHERE `id` = 2384301; -- npc flags removed
INSERT INTO `dbscripts_on_creature_movement` (`id`, `delay`, `priority`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `dataint`, `dataint2`,`x`, `y`, `z`, `comments`) VALUES 
('2384301', '1000', '0', '1', '381', '0', '0','0', '0', '0', '0', '0','0','Mordant Grimsby - Emote Loot'),
('2384301', '1000', '1', '9', '90623', '37', '0','0', '0', '0', '0', '0','0','Mordant Grimsby - Respawn Object'),
('2384301', '3000', '0', '1', '1', '0', '0','0', '0', '0', '0', '0','0','Mordant Grimsby - Emote Talk'),
('2384301', '3000', '1', '0', '0', '0', '0','0', '22348', '0', '0', '0','0','Mordant Grimsby - Talk'),
('2384301', '9000', '0', '1', '25', '0', '0','0', '0', '0', '0', '0','0','Mordant Grimsby - Emote point'),
('2384301', '10000', '0', '0', '0', '0', '0','0', '22349', '0', '0', '0','0','Mordant Grimsby - Talk'),
('2384301', '16000', '0', '0', '0', '0', '0','0', '22350', '0', '0', '0','0','Mordant Grimsby - Talk'),
('2384301', '19000', '0', '0', '0', '0', '4792','10', '22351', '0', '0', '0','0','Swamp Eye Jarl - Talk'),
('2384301', '24000', '0', '1', '1', '0', '0','0', '0', '0', '0', '0','0','Mordant Grimsby - Emote Talk'),
('2384301', '25000', '0', '0', '0', '0', '0','0', '22352', '0', '0', '0','0','Mordant Grimsby - Talk'),
('2384301', '29000', '0', '0', '0', '0', '4792','10', '22353', '0', '0', '0','0','Swamp Eye Jarl - Talk'),
('2384301', '34000', '0', '1', '5', '0', '0','0', '0', '0', '0', '0','0','Mordant Grimsby - Emote Exclamation'),
('2384301', '34000', '0', '0', '0', '0', '0','0', '22354', '0', '0', '0','0','Mordant Grimsby - Talk'),
('2384301', '40000', '0', '1', '381', '0', '0','0', '0', '0', '0', '0','0','Mordant Grimsby - Emote Loot');

-- Delete not used dbscripts (he isnt removing flags for event)
DELETE FROM dbscripts_on_creature_movement WHERE id = 2384302; -- main script
DELETE FROM dbscripts_on_creature_movement WHERE id = 2384303; -- npc flags readded after its done, resolved by setting InteractionPauseTimer to 0.

UPDATE `creature_template` SET `InteractionPauseTimer` = 0 WHERE `Entry` = '23843';

