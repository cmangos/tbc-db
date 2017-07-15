-- Insert Solid Chest Pools Eastern Kingdoms
-- Solid Chest (2850, 2852, 2855, 2857, 4149, 153451, 153453, 153454)
-- Xinito
 
-- Add pool templates for each zone
 
DELETE FROM `pool_template` WHERE `entry` IN (40003, 40004, 40005, 40006, 40007, 40008, 40009, 40010, 40011, 40012, 40013, 40014, 40015, 40016, 40017, 40018, 40019, 40020, 40021, 40022, 40023, 40024, 40025, 40026, 40027, 40028, 40029);
 
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES ('40003', '2', 'Redridge Mountains - Solid Chest Pool');
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES ('40004', '3', 'Duskwood - Solid Chest Pool');
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES ('40005', '3', 'Hillsbrad Foothills - Solid Chest Pool');
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES ('40006', '3', 'Wetlands - Solid Chest Pool');
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES ('40007', '3', 'Wetlands - Solid Chest Pool 2');
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES ('40008', '2', 'Duskwood - Solid Chest Pool 2');
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES ('40009', '3', 'Arathi Highlands - Solid Chest Pool');
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES ('40010', '2', 'Alterac Mountains - Solid Chest Pool');
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES ('40011', '3', 'Stranglethorn Vale - Solid Chest Pool');
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES ('40012', '3', 'Swamp of Sorrows - Solid Chest Pool');
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES ('40013', '2', 'Badlands - Solid Chest Pool');
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES ('40014', '3', 'Stranglethorn Vale - Solid Chest Pool 2');
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES ('40015', '2', 'Arathi Highlands - Solid Chest Pool 2');
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES ('40016', '2', 'Alterac Mountains - Solid Chest Pool 2');
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES ('40017', '3', 'Swamp of Sorrows - Solid Chest Pool 2');
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES ('40018', '1', 'Blasted Lands - Solid Chest Pool 2');
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES ('40019', '3', 'Searing Gorge - Solid Chest Pool');
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES ('40020', '3', 'Stranglethorn Vale - Solid Chest Pool 3');
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES ('40021', '2', 'The Hinterlands - Solid Chest Pool');
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES ('40022', '4', 'The Hinterlands - Solid Chest Pool 2');
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES ('40023', '3', 'Western Plaguelands - Solid Chest Pool');
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES ('40024', '3', 'Eastern Plaguelands - Solid Chest Pool');
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES ('40025', '2', 'Burning Steppes - Solid Chest Pool');
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES ('40026', '3', 'Stranglethorn Vale - Solid Chest Pool 4');
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES ('40027', '4', 'Redridge Mountains - Solid Chest Pool 2');
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES ('40028', '2', 'Wetlands - Solid Chest Pool 3');
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES ('40029', '3', 'Duskwood - Solid Chest Pool 3');
 
-- Add all gameobjects to correct pool
 
DELETE FROM `pool_gameobject` WHERE `pool_entry` IN (40003, 40004, 40005, 40006, 40007, 40008, 40009, 40010, 40011, 40012, 40013, 40014, 40015, 40016, 40017, 40018, 40019, 40020, 40021, 40022, 40023, 40024, 40025, 40026, 40027, 40028, 40029);
 
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (33193, 40010, 0, 'Alterac Mountains - Solid Chest Pool');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (33200, 40010, 0, 'Alterac Mountains - Solid Chest Pool');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (33206, 40010, 0, 'Alterac Mountains - Solid Chest Pool');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (33207, 40010, 0, 'Alterac Mountains - Solid Chest Pool');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (33208, 40010, 0, 'Alterac Mountains - Solid Chest Pool');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (33304, 40010, 0, 'Alterac Mountains - Solid Chest Pool');
 
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (55500, 40016, 0, 'Alterac Mountains - Solid Chest Pool 2');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (55501, 40016, 0, 'Alterac Mountains - Solid Chest Pool 2');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (55512, 40016, 0, 'Alterac Mountains - Solid Chest Pool 2');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (55759, 40016, 0, 'Alterac Mountains - Solid Chest Pool 2');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (55761, 40016, 0, 'Alterac Mountains - Solid Chest Pool 2');
 
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (16648, 40009, 0, 'Arathi Highlands - Solid Chest Pool');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (16789, 40009, 0, 'Arathi Highlands - Solid Chest Pool');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (16794, 40009, 0, 'Arathi Highlands - Solid Chest Pool');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (16946, 40009, 0, 'Arathi Highlands - Solid Chest Pool');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (16949, 40009, 0, 'Arathi Highlands - Solid Chest Pool');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (16950, 40009, 0, 'Arathi Highlands - Solid Chest Pool');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (16977, 40009, 0, 'Arathi Highlands - Solid Chest Pool');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (16978, 40009, 0, 'Arathi Highlands - Solid Chest Pool');
 
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (55514, 40015, 0, 'Arathi Highlands - Solid Chest Pool 2');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (55515, 40015, 0, 'Arathi Highlands - Solid Chest Pool 2');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (55518, 40015, 0, 'Arathi Highlands - Solid Chest Pool 2');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (55519, 40015, 0, 'Arathi Highlands - Solid Chest Pool 2');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (55520, 40015, 0, 'Arathi Highlands - Solid Chest Pool 2');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (55521, 40015, 0, 'Arathi Highlands - Solid Chest Pool 2');
 
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (11440, 40013, 0, 'Badlands - Solid Chest Pool');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (11479, 40013, 0, 'Badlands - Solid Chest Pool');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (11501, 40013, 0, 'Badlands - Solid Chest Pool');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (11503, 40013, 0, 'Badlands - Solid Chest Pool');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (55522, 40013, 0, 'Badlands - Solid Chest Pool');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (55523, 40013, 0, 'Badlands - Solid Chest Pool');
 
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (32134, 40018, 0, 'Blasted Lands - Solid Chest Pool');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (42439, 40018, 0, 'Blasted Lands - Solid Chest Pool');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (55563, 40018, 0, 'Blasted Lands - Solid Chest Pool');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (55567, 40018, 0, 'Blasted Lands - Solid Chest Pool');
 
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (6827, 40025, 0, 'Burning Steppes - Solid Chest Pool');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (6835, 40025, 0, 'Burning Steppes - Solid Chest Pool');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (6837, 40025, 0, 'Burning Steppes - Solid Chest Pool');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (6868, 40025, 0, 'Burning Steppes - Solid Chest Pool');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (6871, 40025, 0, 'Burning Steppes - Solid Chest Pool');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (55774, 40025, 0, 'Burning Steppes - Solid Chest Pool');
 
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (16983, 40004, 0, 'Duskwood - Solid Chest Pool');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (17033, 40004, 0, 'Duskwood - Solid Chest Pool');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (18565, 40004, 0, 'Duskwood - Solid Chest Pool');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (18572, 40004, 0, 'Duskwood - Solid Chest Pool');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (18577, 40004, 0, 'Duskwood - Solid Chest Pool');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (33475, 40004, 0, 'Duskwood - Solid Chest Pool');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (55475, 40004, 0, 'Duskwood - Solid Chest Pool');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (55483, 40004, 0, 'Duskwood - Solid Chest Pool');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (55756, 40004, 0, 'Duskwood - Solid Chest Pool');
 
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (15672, 40008, 0, 'Duskwood - Solid Chest Pool 2');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (16763, 40008, 0, 'Duskwood - Solid Chest Pool 2');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (16989, 40008, 0, 'Duskwood - Solid Chest Pool 2');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (17134, 40008, 0, 'Duskwood - Solid Chest Pool 2');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (18547, 40008, 0, 'Duskwood - Solid Chest Pool 2');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (18562, 40008, 0, 'Duskwood - Solid Chest Pool 2');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (33431, 40008, 0, 'Duskwood - Solid Chest Pool 2');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (33434, 40008, 0, 'Duskwood - Solid Chest Pool 2');
 
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (55487, 40029, 0, 'Duskwood - Solid Chest Pool 3');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (55488, 40029, 0, 'Duskwood - Solid Chest Pool 3');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (55489, 40029, 0, 'Duskwood - Solid Chest Pool 3');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (55491, 40029, 0, 'Duskwood - Solid Chest Pool 3');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (55492, 40029, 0, 'Duskwood - Solid Chest Pool 3');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (55493, 40029, 0, 'Duskwood - Solid Chest Pool 3');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (55494, 40029, 0, 'Duskwood - Solid Chest Pool 3');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (55495, 40029, 0, 'Duskwood - Solid Chest Pool 3');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (55496, 40029, 0, 'Duskwood - Solid Chest Pool 3');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (55498, 40029, 0, 'Duskwood - Solid Chest Pool 3');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (55777, 40029, 0, 'Duskwood - Solid Chest Pool 3');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (55781, 40029, 0, 'Duskwood - Solid Chest Pool 3');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (55782, 40029, 0, 'Duskwood - Solid Chest Pool 3');
 
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (45734, 40024, 0, 'Eastern Plaguelands - Solid Chest Pool');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (45735, 40024, 0, 'Eastern Plaguelands - Solid Chest Pool');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (45910, 40024, 0, 'Eastern Plaguelands - Solid Chest Pool');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (45915, 40024, 0, 'Eastern Plaguelands - Solid Chest Pool');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (45931, 40024, 0, 'Eastern Plaguelands - Solid Chest Pool');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (45933, 40024, 0, 'Eastern Plaguelands - Solid Chest Pool');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (45938, 40024, 0, 'Eastern Plaguelands - Solid Chest Pool');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (45949, 40024, 0, 'Eastern Plaguelands - Solid Chest Pool');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (45950, 40024, 0, 'Eastern Plaguelands - Solid Chest Pool');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (55578, 40024, 0, 'Eastern Plaguelands - Solid Chest Pool');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (55579, 40024, 0, 'Eastern Plaguelands - Solid Chest Pool');
 
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (29292, 40005, 0, 'Hillsbrad Foothills - Solid Chest Pool');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (29647, 40005, 0, 'Hillsbrad Foothills - Solid Chest Pool');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (29653, 40005, 0, 'Hillsbrad Foothills - Solid Chest Pool');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (30018, 40005, 0, 'Hillsbrad Foothills - Solid Chest Pool');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (30033, 40005, 0, 'Hillsbrad Foothills - Solid Chest Pool');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (55505, 40005, 0, 'Hillsbrad Foothills - Solid Chest Pool');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (55760, 40005, 0, 'Hillsbrad Foothills - Solid Chest Pool');
 
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (18583, 40003, 0, 'Redridge Mountains - Solid Chest Pool');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (18917, 40003, 0, 'Redridge Mountains - Solid Chest Pool');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (20765, 40003, 0, 'Redridge Mountains - Solid Chest Pool');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (20771, 40003, 0, 'Redridge Mountains - Solid Chest Pool');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (20793, 40003, 0, 'Redridge Mountains - Solid Chest Pool');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (29240, 40003, 0, 'Redridge Mountains - Solid Chest Pool');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (31132, 40003, 0, 'Redridge Mountains - Solid Chest Pool');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (42621, 40003, 0, 'Redridge Mountains - Solid Chest Pool');
 
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (55469, 40027, 0, 'Redridge Mountains - Solid Chest Pool 2');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (55470, 40027, 0, 'Redridge Mountains - Solid Chest Pool 2');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (55471, 40027, 0, 'Redridge Mountains - Solid Chest Pool 2');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (55472, 40027, 0, 'Redridge Mountains - Solid Chest Pool 2');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (55473, 40027, 0, 'Redridge Mountains - Solid Chest Pool 2');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (55474, 40027, 0, 'Redridge Mountains - Solid Chest Pool 2');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (55476, 40027, 0, 'Redridge Mountains - Solid Chest Pool 2');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (55477, 40027, 0, 'Redridge Mountains - Solid Chest Pool 2');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (55484, 40027, 0, 'Redridge Mountains - Solid Chest Pool 2');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (55485, 40027, 0, 'Redridge Mountains - Solid Chest Pool 2');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (55775, 40027, 0, 'Redridge Mountains - Solid Chest Pool 2');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (55776, 40027, 0, 'Redridge Mountains - Solid Chest Pool 2');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (55780, 40027, 0, 'Redridge Mountains - Solid Chest Pool 2');
 
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (10031, 40019, 0, 'Searing Gorge - Solid Chest Pool');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (10093, 40019, 0, 'Searing Gorge - Solid Chest Pool');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (10157, 40019, 0, 'Searing Gorge - Solid Chest Pool');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (10163, 40019, 0, 'Searing Gorge - Solid Chest Pool');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (10204, 40019, 0, 'Searing Gorge - Solid Chest Pool');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (55536, 40019, 0, 'Searing Gorge - Solid Chest Pool');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (55537, 40019, 0, 'Searing Gorge - Solid Chest Pool');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (55538, 40019, 0, 'Searing Gorge - Solid Chest Pool');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (55539, 40019, 0, 'Searing Gorge - Solid Chest Pool');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (55768, 40019, 0, 'Searing Gorge - Solid Chest Pool');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (55769, 40019, 0, 'Searing Gorge - Solid Chest Pool');
 
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (11691, 40011, 0, 'Stranglethorn Vale - Solid Chest Pool');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (11970, 40011, 0, 'Stranglethorn Vale - Solid Chest Pool');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (12048, 40011, 0, 'Stranglethorn Vale - Solid Chest Pool');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (12049, 40011, 0, 'Stranglethorn Vale - Solid Chest Pool');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (12054, 40011, 0, 'Stranglethorn Vale - Solid Chest Pool');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (12119, 40011, 0, 'Stranglethorn Vale - Solid Chest Pool');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (12169, 40011, 0, 'Stranglethorn Vale - Solid Chest Pool');
 
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (55502, 40014, 0, 'Stranglethorn Vale - Solid Chest Pool 2');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (55504, 40014, 0, 'Stranglethorn Vale - Solid Chest Pool 2');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (55506, 40014, 0, 'Stranglethorn Vale - Solid Chest Pool 2');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (55507, 40014, 0, 'Stranglethorn Vale - Solid Chest Pool 2');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (55510, 40014, 0, 'Stranglethorn Vale - Solid Chest Pool 2');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (55511, 40014, 0, 'Stranglethorn Vale - Solid Chest Pool 2');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (55513, 40014, 0, 'Stranglethorn Vale - Solid Chest Pool 2');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (55516, 40014, 0, 'Stranglethorn Vale - Solid Chest Pool 2');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (55517, 40014, 0, 'Stranglethorn Vale - Solid Chest Pool 2');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (55758, 40014, 0, 'Stranglethorn Vale - Solid Chest Pool 2');
 
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (11651, 40020, 0, 'Stranglethorn Vale - Solid Chest Pool 3');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (11676, 40020, 0, 'Stranglethorn Vale - Solid Chest Pool 3');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (11693, 40020, 0, 'Stranglethorn Vale - Solid Chest Pool 3');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (11695, 40020, 0, 'Stranglethorn Vale - Solid Chest Pool 3');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (11704, 40020, 0, 'Stranglethorn Vale - Solid Chest Pool 3');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (11806, 40020, 0, 'Stranglethorn Vale - Solid Chest Pool 3');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (12157, 40020, 0, 'Stranglethorn Vale - Solid Chest Pool 3');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (12185, 40020, 0, 'Stranglethorn Vale - Solid Chest Pool 3');
 
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (29256, 40026, 0, 'Stranglethorn Vale - Solid Chest Pool 4');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (55526, 40026, 0, 'Stranglethorn Vale - Solid Chest Pool 4');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (55528, 40026, 0, 'Stranglethorn Vale - Solid Chest Pool 4');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (55531, 40026, 0, 'Stranglethorn Vale - Solid Chest Pool 4');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (55532, 40026, 0, 'Stranglethorn Vale - Solid Chest Pool 4');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (55533, 40026, 0, 'Stranglethorn Vale - Solid Chest Pool 4');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (55534, 40026, 0, 'Stranglethorn Vale - Solid Chest Pool 4');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (55540, 40026, 0, 'Stranglethorn Vale - Solid Chest Pool 4');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (55764, 40026, 0, 'Stranglethorn Vale - Solid Chest Pool 4');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (55765, 40026, 0, 'Stranglethorn Vale - Solid Chest Pool 4');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (55766, 40026, 0, 'Stranglethorn Vale - Solid Chest Pool 4');
 
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (13978, 40012, 0, 'Swamp of Sorrows - Solid Chest Pool');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (13979, 40012, 0, 'Swamp of Sorrows - Solid Chest Pool');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (30992, 40012, 0, 'Swamp of Sorrows - Solid Chest Pool');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (31014, 40012, 0, 'Swamp of Sorrows - Solid Chest Pool');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (31016, 40012, 0, 'Swamp of Sorrows - Solid Chest Pool');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (31044, 40012, 0, 'Swamp of Sorrows - Solid Chest Pool');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (55527, 40012, 0, 'Swamp of Sorrows - Solid Chest Pool');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (55767, 40012, 0, 'Swamp of Sorrows - Solid Chest Pool');
 
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (31045, 40017, 0, 'Swamp of Sorrows - Solid Chest Pool 2');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (55508, 40017, 0, 'Swamp of Sorrows - Solid Chest Pool 2');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (55509, 40017, 0, 'Swamp of Sorrows - Solid Chest Pool 2');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (55529, 40017, 0, 'Swamp of Sorrows - Solid Chest Pool 2');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (55530, 40017, 0, 'Swamp of Sorrows - Solid Chest Pool 2');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (55762, 40017, 0, 'Swamp of Sorrows - Solid Chest Pool 2');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (55763, 40017, 0, 'Swamp of Sorrows - Solid Chest Pool 2');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (55770, 40017, 0, 'Swamp of Sorrows - Solid Chest Pool 2');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (55771, 40017, 0, 'Swamp of Sorrows - Solid Chest Pool 2');
 
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (46268, 40021, 0, 'The Hinterlands - Solid Chest Pool');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (46316, 40021, 0, 'The Hinterlands - Solid Chest Pool');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (46387, 40021, 0, 'The Hinterlands - Solid Chest Pool');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (55525, 40021, 0, 'The Hinterlands - Solid Chest Pool');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (55535, 40021, 0, 'The Hinterlands - Solid Chest Pool');
 
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (46292, 40022, 0, 'The Hinterlands - Solid Chest Pool 2');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (46345, 40022, 0, 'The Hinterlands - Solid Chest Pool 2');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (46346, 40022, 0, 'The Hinterlands - Solid Chest Pool 2');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (46370, 40022, 0, 'The Hinterlands - Solid Chest Pool 2');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (46430, 40022, 0, 'The Hinterlands - Solid Chest Pool 2');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (55561, 40022, 0, 'The Hinterlands - Solid Chest Pool 2');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (55562, 40022, 0, 'The Hinterlands - Solid Chest Pool 2');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (55564, 40022, 0, 'The Hinterlands - Solid Chest Pool 2');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (55565, 40022, 0, 'The Hinterlands - Solid Chest Pool 2');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (55566, 40022, 0, 'The Hinterlands - Solid Chest Pool 2');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (55569, 40022, 0, 'The Hinterlands - Solid Chest Pool 2');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (55570, 40022, 0, 'The Hinterlands - Solid Chest Pool 2');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (55571, 40022, 0, 'The Hinterlands - Solid Chest Pool 2');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (55572, 40022, 0, 'The Hinterlands - Solid Chest Pool 2');
 
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (45484, 40023, 0, 'Western Plaguelands - Solid Chest Pool');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (45485, 40023, 0, 'Western Plaguelands - Solid Chest Pool');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (45488, 40023, 0, 'Western Plaguelands - Solid Chest Pool');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (45492, 40023, 0, 'Western Plaguelands - Solid Chest Pool');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (45548, 40023, 0, 'Western Plaguelands - Solid Chest Pool');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (55573, 40023, 0, 'Western Plaguelands - Solid Chest Pool');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (55574, 40023, 0, 'Western Plaguelands - Solid Chest Pool');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (55575, 40023, 0, 'Western Plaguelands - Solid Chest Pool');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (55577, 40023, 0, 'Western Plaguelands - Solid Chest Pool');
 
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (15050, 40006, 0, 'Wetlands - Solid Chest Pool');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (15084, 40006, 0, 'Wetlands - Solid Chest Pool');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (15142, 40006, 0, 'Wetlands - Solid Chest Pool');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (15146, 40006, 0, 'Wetlands - Solid Chest Pool');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (15147, 40006, 0, 'Wetlands - Solid Chest Pool');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (15149, 40006, 0, 'Wetlands - Solid Chest Pool');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (15207, 40006, 0, 'Wetlands - Solid Chest Pool');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (15212, 40006, 0, 'Wetlands - Solid Chest Pool');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (15213, 40006, 0, 'Wetlands - Solid Chest Pool');
 
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (14653, 40007, 0, 'Wetlands - Solid Chest Pool 2');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (14660, 40007, 0, 'Wetlands - Solid Chest Pool 2');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (14861, 40007, 0, 'Wetlands - Solid Chest Pool 2');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (15098, 40007, 0, 'Wetlands - Solid Chest Pool 2');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (15153, 40007, 0, 'Wetlands - Solid Chest Pool 2');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (55490, 40007, 0, 'Wetlands - Solid Chest Pool 2');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (55497, 40007, 0, 'Wetlands - Solid Chest Pool 2');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (55499, 40007, 0, 'Wetlands - Solid Chest Pool 2');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (55757, 40007, 0, 'Wetlands - Solid Chest Pool 2');
 
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (55478, 40028, 0, 'Wetlands - Solid Chest Pool 3');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (55479, 40028, 0, 'Wetlands - Solid Chest Pool 3');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (55480, 40028, 0, 'Wetlands - Solid Chest Pool 3');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (55481, 40028, 0, 'Wetlands - Solid Chest Pool 3');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (55482, 40028, 0, 'Wetlands - Solid Chest Pool 3');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (55486, 40028, 0, 'Wetlands - Solid Chest Pool 3');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (56705, 40028, 0, 'Wetlands - Solid Chest Pool 3');


