-- ---------------------------------------------------------
-- CompleteScript for quest The Secret Compromised q.10944
-- ---------------------------------------------------------

-- Quest template
UPDATE quest_template SET CompleteScript=10944 WHERE entry=10944;

-- Seer Olum c.22820
UPDATE creature_template SET SpeedWalk=2.5/2.5, SpeedRun=6.94444/7, UnitFlags=512 WHERE entry=22820;

-- Olum's Spirit c.22870
UPDATE creature_template SET SpeedWalk=0.5/2.5, SpeedRun=0.5/7, UnitFlags=33555200, MovementType=2, InhabitType=7 WHERE entry=22870;

-- Used by: Olum's Spirit c.22870
UPDATE creature_model_info SET bounding_radius=1.2 WHERE modelid=21123;

-- Addon for Olum's Spirit c.22870
DELETE FROM `creature_template_addon` WHERE `entry`=22870;
INSERT INTO `creature_template_addon` (`entry`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) VALUES 
(22870, 0, 0, 1, 16, 0, 0, '36545 36550');

-- Illidan's Presence c.22865
UPDATE creature_template SET SpeedRun=7/7, UnitFlags=33554752 WHERE entry=22865;

-- Illidan's Presence c.22865
DELETE FROM `creature_template_addon` WHERE `entry`=22865;
INSERT INTO `creature_template_addon` (`entry`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) VALUES 
(22865, 0, 0, 1, 16, 0, 0, '37816');

-- Olum's Sacrifice s.39552 target
DELETE FROM spell_script_target WHERE entry=39552;
INSERT INTO spell_script_target (entry,type,targetEntry,inverseEffectMask) VALUES
(39552,1,22820,0);

-- Olum''s Spirit
DELETE FROM creature_movement_template WHERE entry=22870 AND pathId=0;
INSERT INTO `creature_movement_template` (`entry`,`pathId`,`point`,`position_x`,`position_y`,`position_z`,`waittime`,`script_id`,`orientation`) VALUES
(22870,0,1,-3721.043,1032.0703,57.038933,0,0,100),
(22870,0,2,-3719.4136,1032.1066,58.927586,0,0,100),
(22870,0,3,-3718.9402,1032.773,63.844257,1000,1,100);

-- Seer Olum
DELETE FROM `creature_movement_template` WHERE `entry`=22820 AND pathId=1;
INSERT INTO `creature_movement_template` (`entry`,`pathId`,`point`,`position_x`,`position_y`,`position_z`,`waittime`,`script_id`,`orientation`) VALUES
(22820,1,1,-3723.654,1032.8693,55.958088,0,0,100),
(22820,1,2,-3721.3906,1031.8082,55.95844,1000,7,100);

DELETE FROM `dbscripts_on_quest_end` WHERE `id` IN(10944);
INSERT INTO `dbscripts_on_quest_end` (`id`,`delay`,`priority`,`command`,`datalong`,`datalong2`,`datalong3`,`dataint`,`dataint2`,`dataint3`,`dataint4`,`buddy_entry`,`search_radius`,`data_flags`,`comments`,`x`,`y`,`z`,`o`) VALUES
(10944,0,0,31,21768,20,0,0,0,0,0,0,0,8,'Akama - Terminate Script if Vagath already spawned (Both events should not run simultaneously)',0,0,0,0),
(10944,0,1,21,1,0,0,0,0,0,0,0,0,0,'Akama - Set Active object on',0,0,0,0),
(10944,0,1,32,1,0,0,0,0,0,0,21699,20,0,'Maiev - Pause Waypoints',0,0,0,0),
(10944,0,1,10,22820,166516,0,0,0,0,0,0,0,0,'Akama - Spawn Seer Olum',-3726.361,1040.7139,56.039852,5.846852779388427734), -- 906ms
(10944,0,2,29,3,2,0,0,0,0,0,22820,20,0,'Seer Olum - Remove NPCFlags 3 (Same npc is spawned as questgiver in SSC, so need to remove NPCFlags here)',0,0,0,0), -- 906ms
(10944,531,0,29,1,2,0,0,0,0,0,0,0,0,'Akama - Remove NPCFlag 1',0,0,0,0),
(10944,531,0,5,209,1,0,0,0,0,0,0,0,0,'Akama - Sheathe Weapons',0,0,0,0),
(10944,2140,0,20,2,1,0,0,0,0,0,22820,20,0,'Seer Olum - Start moving on PathId 1',0,0,0,0),
(10944,2140,0,0,0,0,0,2000001621,0,0,0,22820,20,0,'Seer Olum - Akama, my friend!  Have you been informed?  I was found out by Vashj''s followers.  Our secret is in peril!',0,0,0,0),
(10944,11593,0,0,0,0,0,2000001622,0,0,0,0,0,0,'Akama - Olum... old friend.  It is good to see that you are safe.',0,0,0,0),
(10944,21343,0,0,0,0,0,2000001623,0,0,0,22820,10,0,'Seer Olum - Illidan is looking for me.  I am not safe here... none of us are.',0,0,0,0),
(10944,28609,0,0,0,0,0,2000001624,0,0,0,0,0,0,'Akama - Illidan will become suspicious... that much is for certain.  We will deal with it as we always do.',0,0,0,0),
(10944,38343,0,0,0,0,0,2000001625,0,0,0,22820,10,0,'Seer Olum - Illidan will find me and when he does... he will pry the Ashtongue secret from me - such is the power of the Betrayer!  No... there is only one way.  My usefulness to the cause has come to an end. I must venture into the spirit world!',0,0,0,0),
(10944,45484,0,1,1,0,0,0,0,0,0,22820,10,0,'Seer Olum - OneShotTalk',0,0,0,0),
(10944,63828,0,0,0,0,0,2000001626,0,0,0,0,0,0,'Akama - You cannot... be serious, Olum.  Your sacrifice has already been too great.',0,0,0,0),
(10944,73562,0,0,0,0,0,2000001627,0,0,0,22820,10,0,'Seer Olum - My decision is final.  I will not be dissuaded.  I have devoted my life to our plan.  To jeopardize it now would betray all who have died for the cause long before me.',0,0,0,0),
(10944,80734,0,1,1,0,0,0,0,0,0,22820,10,0,'Seer Olum - OneShotTalk',0,0,0,0),
(10944,86937,0,0,0,0,0,2000001628,0,0,0,0,0,0,'Akama - It appears your mind is set then.  We will guide you to the spirit world with as much kindness as we can.',0,0,0,0),
(10944,100343,0,0,0,0,0,2000001629,0,0,0,22820,10,0,'Seer Olum - I thank you, Akama.  You honor me by allowing me this moment, surrounded by my brothers.  Farewell, friend.  Guide our people well.',0,0,0,0),
(10944,106281,0,1,1,0,0,0,0,0,0,22820,10,0,'Seer Olum - OneShotTalk',0,0,0,0),
(10944,109922,0,3,0,0,0,0,0,0,0,0,0,0,'Akama - Move',-3718.6228,1030.651,55.958855,100),
(10944,111953,0,15,39552,0,0,0,0,0,0,0,0,0,'Akama - Cast Olum''s Sacrifice',0,0,0,0),
(10944,112109,0,45,10165,0,0,0,0,0,0,21701,75730,16,'Ashtongue Deathsworn - Face Seer Olum',0,0,0,0),
(10944,112109,0,45,10165,0,0,0,0,0,0,21701,75729,16,'Ashtongue Deathsworn - Face Seer Olum',0,0,0,0),
(10944,112359,1,28,8,0,0,0,0,0,0,21701,75730,16,'Ashtongue Deathsworn - UNIT_STAND_STATE_KNEEL',0,0,0,0),
(10944,112359,1,28,8,0,0,0,0,0,0,21701,75729,16,'Ashtongue Deathsworn - UNIT_STAND_STATE_KNEEL',0,0,0,0),
(10944,118047,0,28,7,0,0,0,0,0,0,22820,5,0,'Seer Olum - UNIT_STAND_STATE_DEAD',0,0,0,0),
(10944,118422,0,10,22870,300000,0,0,0,0,0,0,0,0,'Akama - Spawn Olum''s Spirit',-3720.8591,1032.0737,57.247444,0.014412877149879932),
(10944,120859,0,36,1,0,0,0,0,0,0,21701,75730,16,'Ashtongue Deathsworn - Reset Facing',0,0,0,0),
(10944,120859,0,36,1,0,0,0,0,0,0,21701,75729,16,'Ashtongue Deathsworn - Reset Facing',0,0,0,0),
(10944,120859,0,28,0,0,0,0,0,0,0,21701,75730,16,'Ashtongue Deathsworn - UNIT_STAND_STATE_STAND',0,0,0,0),
(10944,120859,0,28,0,0,0,0,0,0,0,21701,75729,16,'Ashtongue Deathsworn - UNIT_STAND_STATE_STAND',0,0,0,0),
(10944,125843,0,0,0,0,0,2000001630,0,0,0,0,0,0,'Akama - Farewell, dear friend. We shall meet you in the next world when our duties in this one are fulfilled.',0,0,0,0),
(10944,139062,0,3,0,0,0,0,0,0,0,0,0,0,'Akama - Move',-3714.558,1028.9514,55.95947,2.775073528289794921),
(10944,141078,0,36,1,0,0,0,0,0,0,0,0,0,'Akama - Reset Facing',0,0,0,0),
(10944,146359,0,28,8,0,0,0,0,0,0,0,0,0,'Akama - UNIT_STAND_STATE_KNEEL',0,0,0,0),
(10944,146515,0,0,0,0,0,2000001631,0,0,0,0,0,0,'Akama - Master!  We''ve found the traitor who escaped Vashj!  His body lies in front of me... lifeless!',0,0,0,0),
(10944,146703,0,10,22865,86359,0,0,0,0,0,0,0,0,'Akama - Spawn Illidan''s Presence',-3721.8667,1029.5006,56.03928,0.03490658476948738),
(10944,155000,0,0,0,0,0,2000001632,0,0,0,22865,10,0,'Illidan''s Presence - You disappoint me, Akama.  I wanted to question the treacherous worm myself!  I''m beginning to question your allegiance, Broken.',0,0,0,0),
(10944,160890,0,1,5,0,0,0,0,0,0,22865,10,0,'Illidan''s Presence - OneShotExclamation',0,0,0,0),
(10944,169453,0,28,0,0,0,0,0,0,0,0,0,0,'Akama - UNIT_STAND_STATE_STAND',0,0,0,0),
(10944,169578,0,0,0,0,0,2000001633,0,0,0,0,0,0,'Akama - But, sire!  You have misjudged my actions... I do have knowledge of someone close to you who plans to betray you.  It is that dog, Kael''thas!  He has allied with Kil''jaeden and intends to replace you as Lord of Outland!',0,0,0,0),
(10944,170656,0,1,20,0,0,0,0,0,0,0,0,0,'Akama - OneShotBeg',0,0,0,0),
(10944,177937,0,1,1,0,0,0,0,0,0,0,0,0,'Akama - OneShotTalk',0,0,0,0),
(10944,186562,0,0,0,0,0,2000001634,0,0,0,22865,10,0,'I do not sense lies in your voice, Akama.  That Kael''thas would betray me does not come as a big surprise - I''m not as oblivious as some would think. That one of your own was involved with him puts your loyalties into question.',0,0,0,0),
(10944,192515,0,1,1,0,0,0,0,0,0,22865,10,0,'Illidan''s Presence - OneShotTalk',0,0,0,0),
(10944,209687,0,0,0,0,0,2000001635,0,0,0,22865,10,0,'Send your Ashtongue into Tempest Keep and slay his most prized possession, the phoenix known as Al''ar.  I must know that you''re not on his side.  Do not think of betraying me, Broken.  We both know who owns your soul!',0,0,0,0),
(10944,215625,0,1,53,0,0,0,0,0,0,22865,10,0,'Illidan''s Presence - OneShotBattleRoar',0,0,0,0),
(10944,220093,0,40,0,0,0,0,0,0,0,185520,10,1,'Akama - Despawn Fel Fire',0,0,0,0),
(10944,231437,0,29,1,1,0,0,0,0,0,0,0,0,'Akama - Readd NPCFlag 1',0,0,0,0),
(10944,231437,0,4,209,1,0,0,0,0,0,0,0,0,'Akama - Unsheathe Weapons',0,0,0,0),
(10944,231562,0,0,0,0,0,2000001636,0,0,0,0,0,0,'Akama - It will be done, my lord!',0,0,0,0),
(10944,231562,0,32,0,0,0,0,0,0,0,21699,20,0,'Maiev - Resume Waypoints',0,0,0,0),
(10944,231562,1,21,0,0,0,0,0,0,0,0,0,0,'Akama - Set Active object off',0,0,0,0);

DELETE FROM `dbscripts_on_relay` WHERE `id` IN(10165) AND command=36;
INSERT INTO `dbscripts_on_relay` (`id`,`delay`,`priority`,`command`,`datalong`,`datalong2`,`datalong3`,`dataint`,`dataint2`,`dataint3`,`dataint4`,`buddy_entry`,`search_radius`,`data_flags`,`comments`,`x`,`y`,`z`,`o`) VALUES
(10165,0,0,36,0,0,0,0,0,0,0,22820,20,1,'Ashtongue Deathsworn - Face Seer Olum',0,0,0,0);

DELETE FROM `dbscript_string` WHERE `entry` BETWEEN 2000001621 AND 2000001636;
INSERT INTO `dbscript_string` (`entry`, `content_default`, `sound`, `type`, `language`, `emote`, `comment`, `broadcast_text_id`) VALUES 
(2000001621, 'Akama, my friend!  Have you been informed?  I was found out by Vashj''s followers.  Our secret is in peril!', 11611, 0, 0, 0, 'Seer Olum (Entry: 22820)',20498),
(2000001622, 'Olum... old friend.  It is good to see that you are safe.', 11600, 0, 0, 6, 'Akama (Entry: 21700)',20490),
(2000001623, 'Illidan is looking for me.  I am not safe here... none of us are.', 11612, 0, 0, 1, 'Seer Olum (Entry: 22820)',20502),
(2000001624, 'Illidan will become suspicious... that much is for certain.  We will deal with it as we always do.', 11601, 0, 0, 0, 'Akama (Entry: 21700)',20491),
(2000001625, 'Illidan will find me and when he does... he will pry the Ashtongue secret from me - such is the power of the Betrayer!  No... there is only one way.  My usefulness to the cause has come to an end. I must venture into the spirit world!', 11613, 0, 0, 6, 'Seer Olum (Entry: 22820)',20499),
(2000001626, 'You cannot... be serious, Olum.  Your sacrifice has already been too great.', 11602, 0, 0, 274, 'Akama (Entry 21700)',20492),
(2000001627, 'My decision is final.  I will not be dissuaded.  I have devoted my life to our plan.  To jeopardize it now would betray all who have died for the cause long before me.', 11614, 0, 0, 274, 'Seer Olum (Entry: 22820)',20500),
(2000001628, 'It appears your mind is set then.  We will guide you to the spirit world with as much kindness as we can.', 11603, 0, 0, 396, 'Akama (Entry: 21700)',20493),
(2000001629, 'I thank you, Akama.  You honor me by allowing me this moment, surrounded by my brothers.  Farewell, friend.  Guide our people well.', 11615, 0, 0, 2, 'Seer Olum (Entry: 22820)',20501),
(2000001630, 'Farewell, dear friend. We shall meet you in the next world when our duties in this one are fulfilled.', 11604, 0, 0, 0, 'Akama (Entry: 21700)',20494),
(2000001631, 'Master!  We''ve found the traitor who escaped Vashj!  His body lies in front of me... lifeless!', 11605, 0, 0, 0, 'Akama (Entry: 21700)',20495),
(2000001632, 'You disappoint me, Akama.  I wanted to question the treacherous worm myself!  I''m beginning to question your allegiance, Broken.', 11608, 0, 0, 1, 'Illidan''s Presence (Entry: 22865)',20628),
(2000001633, 'But, sire!  You have misjudged my actions... I do have knowledge of someone close to you who plans to betray you.  It is that dog, Kael''thas!  He has allied with Kil''jaeden and intends to replace you as Lord of Outland!', 11606, 0, 0, 0, 'Akama (Entry: 21700)',20496),
(2000001634, 'I do not sense lies in your voice, Akama.  That Kael''thas would betray me does not come as a big surprise - I''m not as oblivious as some would think. That one of your own was involved with him puts your loyalties into question.', 11609, 0, 0, 5, 'Illidan''s Presence (Entry: 22865)',20629),
(2000001635, 'Send your Ashtongue into Tempest Keep and slay his most prized possession, the phoenix known as Al''ar.  I must know that you''re not on his side.  Do not think of betraying me, Broken.  We both know who owns your soul!', 11610, 0, 0, 1, 'Illidan''s Presence (Entry: 22865)',20630),
(2000001636, 'It will be done, my lord!', 11607, 0, 0, 66, 'Akama (Entry: 21700)',0);

