-- Blacksmithing
-- .setskill 164 -- SKILL_BLACKSMITHING .learn 29844 .learn 9787 .learn 17039 .learn 17040 .learn 17041 .add 28442
-- https://github.com/cmangos/wotlk-db/commit/398e988677fb65573cdd5598d99d4eb7f99a45b7
-- https://github.com/cmangos/wotlk-db/commit/ab072307947f3dde00553fd187d6bc544cbc6313
-- Cant get it to work with just npcflags = 1 or 3.

-- ======================

-- Weaponsmith

-- 7231	Kelgruk Bloodaxe	Weaponsmith Trainer
-- 7232	Borgus Steelhand	Weaponsmith Trainer
-- 11146	Ironus Coldsteel	Weaponsmith Trainer
-- 11178	Borgosh Corebender	Weaponsmith
-- 20124	Kradu Grimblade	Weaponsmith Trainer


-- list becomes available after player learn Basic Blacksmithing skill - confirmed
-- Kelgruk Bloodaxe 7231 - Horde
-- CCSDB TBC: 1, 65, 81
UPDATE `creature_template` SET `TrainerSpell` = 0, `NpcFlags` = `NpcFlags`|1+16, `TrainerTemplateId` = 134 WHERE `entry` = 7231; -- 9787 17 3002

-- Borgus Steelhand 7232 - Alliance
-- 9183_V3_0_3_9183\2008-12-16-23-52_9183_MIHASYA.sqlite -> npcflags = 1, CCSDB TBC: 1, 81
UPDATE `creature_template` SET `TrainerSpell` = 0, `NpcFlags` = `NpcFlags`|1+16, `TrainerTemplateId` = 134 WHERE `entry` = 7232; -- 9787 17 3002

-- Ironus Coldsteel 11146
-- 8125_V2_4_1_8125\2008-04-11-14-16_8125_MIHASYA.sqlite - [35] (168) UNIT_NPC_FLAGS: (3) Gossip, QuestGiver, CCSDB TBC: 3, 67
UPDATE `creature_template` SET `TrainerSpell` = 0, `NpcFlags` = `NpcFlags`|3+16, `TrainerTemplateId` = 134 WHERE `entry` = 11146; -- 9787 19 3002

-- Borgosh Corebender 11178, CCSDB TBC: 3, 67, 83
UPDATE `creature_template` SET `TrainerSpell` = 0, `NpcFlags` = `NpcFlags`|3+16, `TrainerTemplateId` = 134 WHERE `entry` = 11178; -- 9787 19 3002

-- TBC+
-- 8125_V2_4_1_8125\2008-04-10-18-54_8125_MIHASYA.sqlite - [90] (168) UNIT_NPC_FLAGS: (1) Gossip, CCSDB TBC: 1, 65, 81
UPDATE `creature_template` SET `TrainerSpell` = 0, `NpcFlags` = `NpcFlags`|1+16, `TrainerTemplateId` = 134 WHERE `entry` = 20124; -- 9787 17 3002

-- list becomes available after player learn Basic Blacksmithing skill - confirmed
-- Armorsmwith
-- 5164	Grumnus Steelshaper	Armorsmith Trainer
-- 7230	Shayis Steelfury	Armorsmith Trainer
-- 11177	Okothos Ironrager	Armorsmith
-- 20125	Zula Slagfury	Armorsmith Trainer
UPDATE `creature_template` SET `TrainerSpell` = 0, `NpcFlags` = `NpcFlags`|3+16, `TrainerTemplateId` = 133 WHERE `entry` = 5164; -- 9788 19 3001 - CCSDB TBC: 1, 67
UPDATE `creature_template` SET `TrainerSpell` = 0, `NpcFlags` = `NpcFlags`|1+16, `TrainerTemplateId` = 133 WHERE `entry` = 7230; -- 9788 17 3001 - CCSDB TBC: 1, 65, 81
UPDATE `creature_template` SET `TrainerSpell` = 0, `NpcFlags` = `NpcFlags`|3+16, `TrainerTemplateId` = 133 WHERE `entry` = 11177; -- 9788 19 3001 - CCSDB TBC: 3, 67, 83
UPDATE `creature_template` SET `TrainerSpell` = 0, `NpcFlags` = `NpcFlags`|1+16, `TrainerTemplateId` = 133 WHERE `entry` = 20125; -- 9788 17 3001 - CCSDB TBC: 1, 65, 81

-- Imindril Spearsong 29505 - WotLK ONLY
-- UPDATE `creature_template` SET `TrainerSpell` = 2018, `TrainerTemplateId` = 134 WHERE `entry` IN (29505);
-- Orland Schaeffer 29506 - WotLK ONLY
-- UPDATE `creature_template` SET `TrainerTemplateId` = 133 WHERE `entry` IN (29506);

-- ======================

-- 7231	Kelgruk Bloodaxe	1042
-- 7232	Borgus Steelhand	1041
-- 11146	Ironus Coldsteel	3201
-- 11178	Borgosh Corebender	3202
-- 20124	Kradu Grimblade	9131
-- 5164	Grumnus Steelshaper	597
UPDATE `gossip_menu` SET `condition_id` = 198 WHERE `entry` = 597 AND `text_id` = 1136; -- 10
-- 7230	Shayis Steelfury	1043
-- 20491	-1	20485	20488	0	0	0	(Has Skill ID 164, Minimum Skill Value 225 AND ((Quest ID 5284 Rewarded OR Quest ID 5283 Rewarded) OR (Quest ID 5302 Rewarded OR Quest ID 5301 Rewarded)))
-- https://www.wowhead.com/wotlk/quest=5301/the-art-of-the-armorsmith
-- https://www.wowhead.com/wotlk/quest=5302/the-way-of-the-weaponsmith
-- https://www.wowhead.com/wotlk/quest=5283/the-art-of-the-armorsmith
-- https://www.wowhead.com/wotlk/quest=5284/the-way-of-the-weaponsmith
-- 198	7	164	1	0	0	0	Has Skill ID 164, Minimum Skill Value 1
DELETE FROM `gossip_menu` WHERE `entry` = 1043 AND `text_id` = 1641;
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES (1043, 1641, 0, 20491);
-- 11177	Okothos Ironrager	3203
-- 20125	Zula Slagfury	9132

-- Ironus Coldsteel 11146
-- Has Skill ID 164, Minimum Skill Value 1 - 10 -> 198 (classic/tbc)
UPDATE gossip_menu_option SET option_text = 'I require training.', option_broadcast_text = 6499, condition_id = 198, `npc_option_npcflag` = 1 WHERE menu_id = 3201 AND id = 0;
-- Borgosh Corebender 11178 - gossip corrected 
UPDATE gossip_menu_option SET option_text = 'I require training.', option_broadcast_text = 6499, condition_id = 198, `npc_option_npcflag` = 1 WHERE menu_id = 3202 AND id = 0;
-- Grumnus Steelshaper 5164
UPDATE gossip_menu_option SET option_text = 'I require training.', option_broadcast_text = 6499, condition_id = 198, `npc_option_npcflag` = 1 WHERE menu_id = 597 AND id = 0;
-- Okothos Ironrager 11177
UPDATE gossip_menu_option SET option_text = 'I require training.', option_broadcast_text = 6499, condition_id = 198, `npc_option_npcflag` = 1 WHERE menu_id = 3203 AND id = 0;

-- Kradu Grimblade 20124 - TBC+
UPDATE gossip_menu_option SET option_text = 'I require training.', option_broadcast_text = 6499, condition_id = 198, `npc_option_npcflag` = 1 WHERE menu_id = 9131 AND id = 0;
UPDATE gossip_menu_option SET option_text = 'I wish to unlearn Weaponsmithing!', option_broadcast_text = 19007, action_menu_id = -1, action_script_id = 320101, box_money = 100000, box_text = 'Forgetting your Weaponsmithing skill is not something to do lightly.  If you choose to abandon it you will forget all recipes that require Weaponsmithing to create!', box_broadcast_text = 19008, condition_id = 20477 WHERE menu_id = 9131 AND id = 1;
-- Zula Slagfury 20125 - TBC+
UPDATE gossip_menu_option SET option_text = 'I require training.', option_broadcast_text = 6499, condition_id = 198, `npc_option_npcflag` = 1 WHERE menu_id = 9132 AND id = 0;

-- 20480	17	9788	0	0	0	0	Player Has Learned Spell: 9788
DELETE FROM gossip_menu_option WHERE menu_id = 9132 AND id = 1;
INSERT INTO gossip_menu_option (menu_id, id, option_icon, option_text, option_broadcast_text, option_id, npc_option_npcflag, action_menu_id, action_poi_id, action_script_id, box_coded, box_money, box_text, box_broadcast_text, condition_id) VALUES
(9132,1,0,'I wish to unlearn Armorsmithing!',19010,1,1,-1,0,59701,0,100000,'Forgetting your Armorsmithing skill is not something to do lightly.  If you choose to abandon it you will forget all recipes that require Armorsmithing to create!',19011,20480);

-- ======================
-- Weaponsmith 134
-- list updated
DELETE FROM npc_trainer WHERE entry IN (7231,7232,11178,11146,20124,29505);
DELETE FROM `npc_trainer_template` WHERE entry = 3002; -- remove old table
DELETE FROM `npc_trainer_template` WHERE entry IN (134); -- 134 - comes from sniff
INSERT INTO `npc_trainer_template` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`, `ReqAbility1`, `ReqAbility2`, `ReqAbility3`,`condition_id`) VALUES
(134,2020,10,0,0,0,NULL,NULL,NULL,0), -- makes Recipies submenu open
(134,10003,15000,164,235,0,NULL,NULL,NULL,0),
(134,10007,15000,164,245,0,NULL,NULL,NULL,0),
(134,10011,15000,164,250,0,NULL,NULL,NULL,0),
(134,10015,15000,164,260,0,NULL,NULL,NULL,0),
(134,34535,100000,164,350,0,17039,NULL,NULL,0), -- 17039
(134,34537,250000,164,375,0,17039,34535,NULL,0), -- 17039 34535
(134,34538,100000,164,350,0,17039,NULL,NULL,0), -- 17039
(134,34540,250000,164,375,0,17039,34538,NULL,0), -- 17039 34538
(134,34541,100000,164,350,0,17041,NULL,NULL,0), -- 17041
(134,34542,250000,164,375,0,17041,34541,NULL,0), -- 17041 34541
(134,34543,100000,164,350,0,17041,NULL,NULL,0), -- 17041
(134,34544,250000,164,375,0,17041,34543,NULL,0), -- 17041 34543
(134,34545,100000,164,350,0,17040,NULL,NULL,0), -- 17040
(134,34546,250000,164,375,0,17040,34545,NULL,0), -- 17040 34545
(134,34547,100000,164,350,0,17040,NULL,NULL,0), -- 17040
(134,34548,250000,164,375,0,17040,34547,NULL,0), -- 17040 34547
(134,36125,10000,164,260,0,9787,NULL,NULL,0), -- 9787
(134,36126,10000,164,260,0,9787,NULL,NULL,0), -- 9787
(134,36128,10000,164,260,0,9787,NULL,NULL,0), -- 9787
(134,36131,40000,164,330,0,17039,NULL,NULL,0), -- 17039
(134,36133,40000,164,330,0,17039,NULL,NULL,0), -- 17039
(134,36134,40000,164,330,0,17041,NULL,NULL,0), -- 17041
(134,36135,40000,164,330,0,17041,NULL,NULL,0), -- 17041
(134,36136,40000,164,330,0,17040,NULL,NULL,0), -- 17040
(134,36137,40000,164,330,0,17040,NULL,NULL,0), -- 17040
(134,36258,500000,164,375,0,17039,34537,NULL,0), -- 17039 34537
(134,36259,500000,164,375,0,17039,34540,NULL,0), -- 17039 34540
(134,36260,500000,164,375,0,17041,34542,NULL,0), -- 17041 34542
(134,36261,500000,164,375,0,17041,34544,NULL,0), -- 17041 34544
(134,36262,500000,164,375,0,17040,34546,NULL,0), -- 17040 34546
(134,36263,500000,164,375,0,17040,34548,NULL,0); -- 17040 34548
-- wotlk+
-- (134,55183,50000,164,415,0,9788,NULL,NULL,0), -- 9787
-- (134,55184,50000,164,415,0,9788,NULL,NULL,0), -- 9787
-- (134,55185,50000,164,415,0,9788,NULL,NULL,0); -- 9787


-- Armorsmwith 133
-- list updated
DELETE FROM npc_trainer WHERE entry IN (7230,5164,11177,20125,29506);
DELETE FROM `npc_trainer_template` WHERE entry = 3001; -- remove old table
DELETE FROM `npc_trainer_template` WHERE entry IN (133); -- 133 - comes from sniff
INSERT INTO `npc_trainer_template` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`, `ReqAbility1`, `ReqAbility2`, `ReqAbility3`,`condition_id`) VALUES
(133,2020,10,0,0,0,NULL,NULL,NULL,0), -- makes Recipies submenu open
(133,9954,10000,164,225,0,NULL,NULL,NULL,0),
(133,9974,10000,164,245,0,NULL,NULL,NULL,0),
(133,34533,100000,164,350,0,9788,NULL,NULL,0), -- 9788
(133,34529,100000,164,350,0,9788,NULL,NULL,0), -- 9788
(133,34530,250000,164,375,0,9788,34529,NULL,0), -- 9788 34529
(133,34534,250000,164,375,0,9788,34533,NULL,0), -- 9788 34533
(133,36122,10000,164,260,0,9788,NULL,NULL,0), -- 9788
(133,36124,10000,164,260,0,9788,NULL,NULL,0), -- 9788
(133,36129,40000,164,330,0,9788,NULL,NULL,0), -- 9788
(133,36130,40000,164,330,0,9788,NULL,NULL,0), -- 9788
(133,36256,500000,164,375,0,9788,34530,NULL,0), -- 9788 34530
(133,36257,500000,164,375,0,9788,34534,NULL,0); -- 9788 34534 
-- wotlk+
-- (133,55187,50000,164,415,0,9788,NULL,NULL,0), -- 9788
-- (133,55186,50000,164,415,0,9788,NULL,NULL,0); -- 9788

-- c. 11192,11191,11193
-- https://youtu.be/d_LrM4rNkvc?t=55
-- Changing Blacksmithing Specialization
-- To cost of changing a specialization is 100 Gold for level 70 players and 50 gold for level 60 players. To change your specialization, you must first talk to the trainer that originally taught your current specialization to unlearn it.
-- UPDATE `gossip_menu_option` SET `box_money` = 500000 WHERE `menu_id` IN (6089,6090,6091) AND `box_money` = 1000000;

-- 512	15	69	2	0	0	0	Player Level <= 69
-- 20468	17	17040	0	0	0	0	Player Has Learned Spell: 17040
-- 20469	17	17041	0	0	0	0	Player Has Learned Spell: 17041
-- 20470	17	17039	0	0	0	0	Player Has Learned Spell: 17039

