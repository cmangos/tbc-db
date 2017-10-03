UPDATE gossip_menu_option SET action_menu_id=-1, action_script_id=7426 WHERE menu_id=7426 AND id=0;

DELETE FROM dbscripts_on_gossip WHERE id=7426;
INSERT INTO dbscripts_on_gossip (id,delay,command,datalong,datalong2,data_flags,dataint,dataint2,dataint3,dataint4,x,y,z,o,comments) VALUES 
(7426,1,36,0,0,8,0,0,0,0,0,0,0,0,'face player'),
(7426,3,0,0,0,0,2000000305,0,0,0,0,0,0,0,'text emote'),
(7426,5,0,0,0,0,2000000306,0,0,0,0,0,0,0,'say 1'),
(7426,11,0,0,0,0,2000000307,0,0,0,0,0,0,0,'say 2'),
(7426,14,0,0,0,0,2000000308,0,0,0,0,0,0,0,'say 3'),
(7426,17,0,0,0,0,2000000309,0,0,0,0,0,0,0,'say 4'),
(7426,17,22,14,0x01,0,0,0,0,0,0,0,0,0,'change faction'),
(7426,18,26,0,0,0,0,0,0,0,0,0,0,0,'start attack');

DELETE FROM db_script_string WHERE entry BETWEEN 2000000305 AND 2000000309;
INSERT INTO db_script_string (entry,content_default, emote, type) VALUES
(2000000305,'%s laughs.',11, 2),
(2000000306,'Does it frighten you to know that there are those that would serve the Legion with such devotion as to remain unwavering citizens of your pointless civilizations until called upon?',6,0),
(2000000307,'Live in fear, die by the will of Kael\'thas... It\'s all the same.',1,0),
(2000000308,'And now, I cut you!',25,0),
(2000000309,'DIE!', 0,0);


