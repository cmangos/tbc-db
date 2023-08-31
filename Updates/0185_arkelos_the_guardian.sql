-- Questend Script for Ar'kelos the Guardian Quest - 10176
DELETE FROM `dbscripts_on_quest_end` WHERE id = '10176';
INSERT INTO dbscripts_on_quest_end(id, delay, priority, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, datafloat, x, y, z, o, speed, condition_id, comments) VALUES
(10176,0,0,21,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Archmage Vargoth - Set Active'),
(10176,0,1,29,3,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Archmage Vargoth - Remove NPCFlags'),
(10176,0,2,0,0,0,0,0,0,0,17524,0,0,0,0,0,0,0,0,0,0,'Archmage Vargoth - Say Text'), 
(10176,3000,0,15,30416,0,0,0,0,4,0,0,0,0,0,0,0,0,0,0,0,'Archmage Vargoth - Cast Visual'), 
(10176,4000,0,10,19916,13000,0,0,0,0,0,0,0,0,0,2240.2253, 2234.1865, 136.19032, 0.71558,0,0,'Archmage Vargoth - Spawn Archmage\'s Ritual Crystal'), 
(10176,4000,1,10,19916,13000,0,0,0,0,0,0,0,0,0,2248.5305, 2239.8777, 136.5948, 5.602,0,0,'Archmage Vargoth - Spawn Archmage\'s Ritual Crystal'), 
(10176,4000,2,10,19916,13000,0,0,0,0,0,0,0,0,0,2236.6987, 2224.657, 136.41919, 5.6374,0,0,'Archmage Vargoth - Spawn Archmage\'s Ritual Crystal'), 
(10176,4000,3,10,19924,13000,0,0,0,0,0,0,0,0,0,2248.510986328125, 2239.90576171875, 136.592132568359375, 5.044001579284667968,0,0,'Archmage Vargoth - Invis Ritual Crystal'),
(10176,4000,4,10,19924,13000,0,0,0,0,0,0,0,0,0,2236.65966796875, 2224.678955078125, 136.4153594970703125, 5.218534469604492187,0,0,'Archmage Vargoth - Invis Ritual Crystal'),
(10176,4000,5,10,19924,13000,0,0,0,0,0,0,0,0,0,2240.181396484375, 2234.1982421875, 136.186431884765625, 0.104719758033752441,0,0,'Archmage Vargoth - Invis Ritual Crystal'), 
(10176,8000,0,15,34679,0,0,0,0,4,0,0,0,0,0,0,0,0,0,0,0,'Archmage Vargoth - Cast Visual'),
(10176,16000,0,15,34725,0,0,19924,10,519,0,0,0,0,0,0,0,0,0,0,0,'Invis Ritual Crystal - Cast Shadow Nova'),  
(10176,18000,0,15,13360,0,0,0,0,4,0,0,0,0,0,0,0,0,0,0,0,'Archmage Vargoth - Cast Visual'),
(10176,18000,0,1,64,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Archmage Vargoth - Emote'), 
(10176,21000,0,0,0,0,0,0,0,0,17526,0,0,0,0,0,0,0,0,0,0,'Archmage Vargoth - Say Text'), 
(10176,25000,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Archmage Vargoth - Emote'),
(10176,27000,0,0,0,0,0,0,0,0,17535,0,0,0,0,0,0,0,0,0,0,'Archmage Vargoth - Say Text'), 
(10176,27000,1,21,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Archmage Vargoth - Remove Active'),
(10176,27000,2,29,3,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Archmage Vargoth - Add NPCFlags');

UPDATE quest_template SET CompleteScript= 10176 WHERE entry= 10176;

-- Archmage Ritual Crystal and Invis Ritual Crystal shouldnt move and have UnitFlags:
-- UNIT_FIELD_FLAGS = 33555200 [IMMUNE_TO_PC, IMMUNE_TO_NPC, NOT_SELECTABLE]
UPDATE creature_template SET UnitFlags = 33555200, MovementType = 0 WHERE entry IN (19916, 19924);