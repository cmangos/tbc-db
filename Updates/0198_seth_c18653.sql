-- Fix weird position for Seth
UPDATE creature SET position_x=-1609.1764, position_y=5299.9365, position_z=-38.582882, orientation=0.541052043437957763, MovementType=2 WHERE id=18653;

-- Add movement to Seth c.18653
DELETE FROM `creature_movement_template` WHERE `entry`=18653;
INSERT INTO `creature_movement_template` (`entry`,`point`,`position_x`,`position_y`,`position_z`,`waittime`,`script_id`,`orientation`) VALUES
(18653,1,-1609.1764,5299.9365,-38.582882,480000,0,0.541052043437957763),
(18653,2,-1616.1292,5301.4927,-40.20918,0,0,100),
(18653,3,-1618.9323,5305.5425,-40.20918,4000,1865301,100),
(18653,4,-1618.9323,5305.5425,-40.20918,3000,1865302,0.418879032135009765);

-- Add Dbscripts
DELETE FROM `dbscripts_on_creature_movement` WHERE `id` IN(1865301,1865302);
INSERT INTO `dbscripts_on_creature_movement` (`id`,`delay`,`priority`,`command`,`datalong`,`datalong2`,`datalong3`,`dataint`,`dataint2`,`dataint3`,`dataint4`,`buddy_entry`,`search_radius`,`data_flags`,`comments`,`x`,`y`,`z`,`o`) VALUES
(1865301,1000,0,0,0,0,0,2000001641,0,0,0,18652,20,0,'Zahlia - Don''t go too far away Seth.  You know mommy doesn''t like it when she can''t hear you.',0,0,0,0),
(1865302,1000,0,0,0,0,0,2000001642,0,0,0,0,0,0,'Seth - Coming, momma!',0,0,0,0);

-- Add texts
DELETE FROM `dbscript_string` WHERE `entry` BETWEEN 2000001641 AND 2000001642;
INSERT INTO `dbscript_string` (`entry`, `content_default`, `sound`, `type`, `language`, `emote`, `comment`, `broadcast_text_id`) VALUES 
(2000001641, 'Don''t go too far away Seth.  You know mommy doesn''t like it when she can''t hear you.', 0, 0, 0, 0, 'Zahlia (Entry: 18652)',15634),
(2000001642, 'Coming, momma!', 0, 0, 0, 0, 'Seth (Entry: 18653)',15635);

