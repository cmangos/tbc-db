-- Quest series Necklace recovery (Uldaman)
-- Quest Translating the Journal
DELETE FROM dbscripts_on_quest_end WHERE id = '2338';
INSERT INTO `dbscripts_on_quest_end` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`,`x`, `y`, `z`, `o`, `comments`) VALUES 
('2338 ', '0', '29', '2', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Translating the Journal: Jarkal Mossmeld - Toggle NPC Flags'),
('2338 ', '0', '21', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Translating the Journal: Jarkal Mossmeld - Set ActiveObject'),
('2338 ', '0', '3', '0', '0', '0', '0', '0', '0', '0', '0', '-6658.7236','-2158.72','245.35074', '0', 'Translating the Journal: Jarkal Mossmeld - Move'),
('2338 ', '0', '0', '0', '0', '0', '0', '3082', '0', '0', '0', '0', '0', '0', '0', 'Translating the Journal: Jarkal Mossmeld - Say Text'),
('2338 ', '8000', '3', '0', '0', '0', '0', '0', '0', '0', '0', '-6673.226','-2180.4727','243.9145', '0', 'Translating the Journal: Jarkal Mossmeld - Move'),
('2338 ', '17000', '3', '0', '0', '0', '0', '0', '0', '0', '0', '-6679.262','-2170.4294','244.22798', '0', 'Translating the Journal: Jarkal Mossmeld - Move'),
('2338 ', '25000', '28', '8', '0', '0', '0', '0', '0', '0', '0', '0','0','0', '0', 'Translating the Journal: Jarkal Mossmeld - EmoteState Kneel'),
('2338 ', '25000', '0', '0', '0', '0', '0', '3084', '0', '0', '0', '0','0','0', '0', 'Translating the Journal: Jarkal Mossmeld - Say Text'),
('2338 ', '28000', '28', '0', '0', '0', '0', '0', '0', '0', '0', '0','0','0', '0', 'Translating the Journal: Jarkal Mossmeld - EmoteState Stand'),
('2338 ', '28000', '25', '1', '0', '0', '0', '0', '0', '0', '0', '0','0','0', '0', 'Translating the Journal: Jarkal Mossmeld - Set Run'),
('2338 ', '29000', '3', '0', '0', '0', '0', '0', '0', '0', '0', '-6653.346','-2139.3271','251.90773', '0', 'Translating the Journal: Jarkal Mossmeld - Move'),
('2338 ', '34000', '25', '0', '0', '0', '0', '0', '0', '0', '0', '0','0','0', '0', 'Translating the Journal: Jarkal Mossmeld - Set Walk'),
('2338 ', '35000', '3', '0', '0', '0', '0', '0', '0', '0', '0', '-6653.346','-2139.3271','251.90773', '0', 'Translating the Journal: Jarkal Mossmeld - Move'),
('2338 ', '37000', '3', '0', '0', '0', '0', '0', '0', '0', '0', '0','0','0', '5.4803338', 'Translating the Journal: Jarkal Mossmeld - Set Orientation'),
('2338 ', '40000', '15', '9744', '0', '0', '4', '0', '0', '0', '0', '0','0','0', '0', 'Translating the Journal: Jarkal Mossmeld - Cast Spell'),
('2338 ', '45000', '0', '0', '0', '0', '0', '3085', '0', '0', '0', '0','0','0', '0', 'Translating the Journal: Jarkal Mossmeld - Say Text'),
('2338 ', '47000', '29', '2', '2', '0', '0', '0', '0', '0', '0', '0','0','0', '0', 'Translating the Journal: Jarkal Mossmeld - Toggle NPC Flags'),
('2338 ', '47000', '21', '0', '0', '0', '0', '0', '0', '0', '0', '0','0','0', '0', 'Translating the Journal: Jarkal Mossmeld - Remove ActiveObject');

UPDATE `quest_template` SET `CompleteScript`=2338 WHERE `entry`=2338;
UPDATE `creature_template` SET `SpeedWalk`='1.15' WHERE (`Entry`='6868');

-- Quest Find the Gems and Power Source
DELETE FROM dbscripts_on_quest_end WHERE id = '2339';
INSERT INTO `dbscripts_on_quest_end` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`,`x`, `y`, `z`, `o`, `comments`) VALUES 
('2339 ', '0', '29', '2', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Find the Gems and Power Source: Jarkal Mossmeld - Toggle NPC Flags'),
('2339 ', '0', '21', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Find the Gems and Power Source: Jarkal Mossmeld - Set ActiveObject'),
('2339 ', '0', '0', '0', '0', '0', '0', '3083', '0', '0', '0', '0', '0', '0', '0', 'Find the Gems and Power Source: Jarkal Mossmeld - Say Text'),
('2339 ', '2000', '15', '9744', '0', '0', '4', '0', '0', '0', '0', '0', '0', '0', '0', 'Find the Gems and Power Source: Jarkal Mossmeld - Cast Spell'),
('2339 ', '10000', '0', '0', '0', '0', '0', '3091', '0', '0', '0', '0', '0', '0', '0', 'Find the Gems and Power Source: Jarkal Mossmeld - Say Text'),
('2339 ', '12000', '29', '2', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Find the Gems and Power Source: Jarkal Mossmeld - Toggle NPC Flags'),
('2339 ', '12000', '21', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Find the Gems and Power Source: Jarkal Mossmeld - Remove ActiveObject');

UPDATE `quest_template` SET `CompleteScript`=2339 WHERE `entry`=2339;

-- Deliver the Gems
DELETE FROM dbscripts_on_quest_end WHERE id = '2340';
INSERT INTO `dbscripts_on_quest_end` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `dataint`, `dataint2`, `dataint3`, `dataint4`,`x`, `y`, `z`, `o`, `comments`) VALUES 
('2340 ', '1000', '31', '6987', '10', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Deliver the Gems:Abort Script if Malton Droffers is Not Spawned'),
('2340 ', '9000', '1', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Deliver the Gems: Dran Droffers - Emote ONESHOT_TALK'),
('2340 ', '9000', '0', '0', '0', '0', '0', '3077', '0', '0', '0', '0', '0', '0', '0', 'Deliver the Gems: Dran Droffers - Say Text'),
('2340 ', '12000', '1', '6', '0', '6987', '10', '0', '0', '0', '0', '0', '0', '0', '0', 'Deliver the Gems: Malton Droffers - Emote ONESHOT_QUESTION'),
('2340 ', '12000', '0', '0', '0', '6987', '10', '3078', '0', '0', '0', '0', '0', '0', '0', 'Deliver the Gems: Malton Droffers - Say Text'),
('2340 ', '15000', '1', '25', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Deliver the Gems: Dran Droffers - Emote ONESHOT_POINT'),
('2340 ', '15000', '0', '0', '0', '0', '0', '3080', '0', '0', '0', '0', '0', '0', '0', 'Deliver the Gems: Dran Droffers - Say Text'),
('2340 ', '18000', '1', '4', '0', '6987', '10', '0', '0', '0', '0', '0', '0', '0', '0', 'Deliver the Gems: Malton Droffers - Emote ONESHOT_CHEER'),
('2340 ', '18000', '0', '0', '0', '6987', '10', '3079', '0', '0', '0', '0', '0', '0', '0', 'Deliver the Gems: Malton Droffers - Say Text'),
('2340 ', '21000', '1', '15', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Deliver the Gems: Dran Droffers - Emote ONESHOT_ROAR'),
('2340 ', '21000', '0', '0', '0', '0', '0', '3081', '0', '0', '0', '0', '0', '0', '0', 'Deliver the Gems: Dran Droffers - Say Text');

UPDATE `quest_template` SET `CompleteScript`=2340 WHERE `entry`=2340;

-- This should be Yelled
UPDATE `broadcast_text` SET `ChatTypeID`='1' WHERE (`Id`='3081');