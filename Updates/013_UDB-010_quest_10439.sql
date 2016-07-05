-- ###########
-- Quest 10439
-- ###########

-- db text
SET @DB_STRING_ENTRY:=2000005780;
DELETE FROM db_script_string WHERE entry BETWEEN @DB_STRING_ENTRY AND @DB_STRING_ENTRY+4;
INSERT INTO db_script_string (entry,content_default,sound,type,language,emote,comment) VALUES
(@DB_STRING_ENTRY+0,'You heard the fleshling! MOVE OUT!',0,0,0,1,'Captain Saeed - say quest start'),
(@DB_STRING_ENTRY+1,'Tell me when you are ready, $N. We will attack on your command.',0,0,0,0,'Captain Saeed - say attack prepare'),
(@DB_STRING_ENTRY+2,'It\'s now or never, soldiers! Let\'s do this! For K\'aresh! For the Protectorate!',0,0,0,0,'Captain Saeed - say attack start'),
(@DB_STRING_ENTRY+3,'The time for your destruction has finally come, Dimensius!',0,0,0,0,'Captain Saeed - say taunt dimensius'),
(@DB_STRING_ENTRY+4,'We won. Dimensius no more. Report this proffesor Dabiri.',0,0,0,0,'Captain Saeed - say quest complete');

-- conditions
SET @CONDITION_ENTRY:=969;
DELETE FROM conditions WHERE condition_entry BETWEEN @CONDITION_ENTRY AND @CONDITION_ENTRY+3;
INSERT INTO conditions (condition_entry,type,value1,value2) VALUES
(@CONDITION_ENTRY+0,9,10439,0),
(@CONDITION_ENTRY+1,-1,@CONDITION_ENTRY+0,462),
(@CONDITION_ENTRY+2,33,36,0),
(@CONDITION_ENTRY+3,-1,@CONDITION_ENTRY+0,@CONDITION_ENTRY+2);

-- Required UDB Change (Entry 719 in UDB is 462 in TBC-DB)


-- gossip
UPDATE creature_template SET GossipMenuId=8228 WHERE entry=20985;
DELETE FROM gossip_menu WHERE entry=8228;
INSERT INTO gossip_menu (entry,text_id,script_id,condition_id) VALUES
(8228,10229,0,0),
(8228,10232,0,@CONDITION_ENTRY+3);
-- gossip options
DELETE FROM gossip_menu_option WHERE menu_id=8228;
INSERT INTO gossip_menu_option (menu_id,id,option_icon,option_text,option_id,npc_option_npcflag,action_menu_id,action_poi_id,action_script_id,box_coded,box_money,box_text,condition_id) VALUES
(8228,0,0,'I am that fleshling, Saeed. Let\'s go!',1,1,-1,0,822801,0,0,'',@CONDITION_ENTRY+1),
(8228,1,0,'I am ready! Let\'s finish Dimensius!',1,1,-1,0,822802,0,0,'',@CONDITION_ENTRY+3); -- ToDo: text needs to be checked

-- gossip script on event start
DELETE FROM dbscripts_on_gossip WHERE id=822801;
INSERT INTO dbscripts_on_gossip (id,delay,command,datalong,datalong2,dataint,comments) VALUES 
(822801,0,0,0,0,@DB_STRING_ENTRY,'Captain Saeed - say quest start'),
(822801,0,8,0,0,0,'Captain Saeed - kill credit'),
(822801,0,22,495,1,0,'Captain Saeed - set temp faction'),
(822801,3,1,15,0,0,'Captain Saeed - handle emote'),
(822801,3,35,5,25,0,'Captain Saeed - send event custom A'),
(822801,0,29,1,2,0,'Captain Saeed - remove Gossip Flag'),
(822801,9,25,1,0,0,'Captain Saeed - set Run = true'),
(822801,10,32,0,0,0,'Captain Saeed - resume WP movement');
-- gossip script on attack start
DELETE FROM dbscripts_on_gossip WHERE id=822802;
INSERT INTO dbscripts_on_gossip (id,delay,command,datalong,datalong2,dataint,comments) VALUES 
(822802,0,0,1,0,@DB_STRING_ENTRY+2,'Captain Saeed - say attack start'),
(822802,0,29,1,2,0,'Captain Saeed - remove Gossip Flag'),
(822802,3,32,0,0,0,'Captain Saeed - resume WP movement');

-- creature linking
DELETE FROM creature_linking_template WHERE entry IN (20984,21783,21805,21780);
INSERT INTO creature_linking_template (entry,map,master_entry,flag,search_range) VALUES
(20984,530,20985,8705,60),
(21783,530,20985,8705,60),
(21805,530,20985,8705,60),
(21780,530,19554,4112,60);

-- creature movement
DELETE FROM creature_movement_template WHERE entry=20985;
INSERT INTO creature_movement_template (entry,point,position_x,position_y,position_z,waittime,script_id,orientation) VALUES
(20985, 1, 4264.29, 2102.70, 140.839, 1000, 2098501, 6.108), 
(20985, 2, 4257.76, 2099.95, 143.481, 0, 0, 0),
(20985, 3, 4249.97, 2105.68, 144.083, 0, 0, 0),
(20985, 4, 4246.45, 2111.34, 144.552, 0, 0, 0),
(20985, 5, 4244.12, 2117.80, 145.031, 0, 0, 0),
(20985, 6, 4233.49, 2118.49, 149.540, 0, 0, 0),
(20985, 7, 4221.95, 2117.72, 153.124, 0, 0, 0),
(20985, 8, 4209.70, 2114.40, 155.606, 0, 0, 0),
(20985, 9, 4204.60, 2110.80, 160.063, 0, 0, 0),
(20985, 10, 4180.80, 2081.76, 161.666, 0, 0, 0),
(20985, 11, 4174.75, 2070.90, 164.385, 0, 0, 0),
(20985, 12, 4174.37, 2058.48, 169.121, 0, 0, 0),
(20985, 13, 4178.27, 2051.20, 172.750, 0, 0, 0),
(20985, 14, 4182.15, 2044.52, 176.056, 0, 0, 0),
(20985, 15, 4185.74, 2035.18, 179.999, 0, 0, 0),
(20985, 16, 4186.65, 2023.36, 184.971, 0, 0, 0),
(20985, 17, 4185.54, 2014.54, 189.862, 0, 0, 0),
(20985, 18, 4182.17, 2006.35, 195.371, 0, 0, 0),
(20985, 19, 4177.94, 1999.77, 200.164, 0, 0, 0),
(20985, 20, 4173.38, 1994.37, 203.833, 0, 0, 0),
(20985, 21, 4168.69, 1989.66, 206.921, 0, 0, 0),
(20985, 22, 4162.75, 1984.90, 209.942, 0, 0, 0),
(20985, 23, 4157.40, 1981.32, 212.398, 0, 0, 0),
(20985, 24, 4150.51, 1977.62, 215.067, 0, 0, 0),
(20985, 25, 4144.56, 1974.64, 217.155, 0, 0, 0),
(20985, 26, 4134.58, 1969.06, 220.354, 0, 0, 0),
(20985, 27, 4117.35, 1985.00, 223.929, 0, 0, 0),
(20985, 28, 4110.04, 1994.40, 226.897, 0, 0, 0),
(20985, 29, 4104.33, 2005.52, 229.987, 0, 0, 0),
(20985, 30, 4097.22, 2020.26, 234.464, 0, 0, 0),
(20985, 31, 4083.09, 2037.36, 240.329, 0, 0, 0),
(20985, 32, 4070.09, 2051.12, 246.065, 0, 0, 0),
(20985, 33, 4057.96, 2062.31, 250.666, 0, 0, 0),
(20985, 34, 4034.90, 2077.34, 254.478, 0, 0, 0),
(20985, 35, 4002.98, 2097.80, 254.212, 0, 0, 0),
(20985, 36, 3992.89, 2088.86, 254.330, 1000, 2098536, 4.073),
(20985, 37, 3989.38, 2083.54, 256.337, 0, 0, 0),
(20985, 38, 3984.63, 2077.76, 256.405, 0, 0, 0),
(20985, 39, 3978.75, 2066.79, 256.405, 0, 0, 0),
(20985, 40, 3959.94, 2039.18, 257.630, 0, 0, 0),
(20985, 41, 3955.86, 2030.96, 257.812, 1000, 2098541, 4.133);

-- Movement scripts
-- Workaround required because of evade mechanics
UPDATE creature SET MovementType=2 WHERE guid=73766;
DELETE FROM dbscripts_on_creature_movement WHERE id=2098501;
INSERT INTO dbscripts_on_creature_movement (id,delay,command,datalong,datalong2,dataint,comments) VALUES
(2098501,0,32,1,0,0,'Captain Saeed - pause WP Movement');
-- Attack prepare script
DELETE FROM dbscripts_on_creature_movement WHERE id=2098536;
INSERT INTO dbscripts_on_creature_movement (id,delay,command,datalong,datalong2,dataint,comments) VALUES
(2098536,0,32,1,0,0,'Captain Saeed - pause WP Movement'),
(2098536,0,29,1,1,0,'Captain Saeed - add Gossip Flag'),
(2098536,0,0,0,0,@DB_STRING_ENTRY+1,'Captain Saeed - say attack prepare');
-- Attack start script
DELETE FROM dbscripts_on_creature_movement WHERE id=2098541;
INSERT INTO dbscripts_on_creature_movement (id,delay,command,datalong,datalong2,buddy_entry,search_radius,data_flags,dataint,comments) VALUES
(2098541,0,0,0,0,0,0,0,@DB_STRING_ENTRY+3,'Captain Saeed - say taunt dimensius'),
(2098541,0,32,1,0,0,0,0,0,'Captain Saeed - pause WP Movement'),
(2098541,3,23,0,0,19554,40,0,0,'Dimensius the All-Devouring - demorph to original form'),
(2098541,6,35,6,40,0,0,0,0,'Captain Saeed - send event custom B'),
(2098541,7,26,0,0,19554,40,1,0,'Captain Saeed - attack Dimensius the All-Devouring');

-- Dimensius death script
DELETE FROM dbscripts_on_creature_death WHERE id=19554;
INSERT INTO dbscripts_on_creature_death (id,delay,command,datalong,datalong2,buddy_entry,search_radius,data_flags,dataint,comments) VALUES
(19554,0,0,0,0,20985,50,0,@DB_STRING_ENTRY+4,'Captain Saeed - say quest complete'),
(19554,10,18,0,0,20985,50,7,0,'Captain Saeed - despawn self');


