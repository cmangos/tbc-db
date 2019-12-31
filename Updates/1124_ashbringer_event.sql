-- ------------------------------------
-- Corrupted Ashbringer Special Scripts
-- ------------------------------------

REPLACE INTO dbscript_random_templates (id, type, target_id, chance, comments) VALUES -- ToDo: Move to lower ID when exporting
(9000,0,-9001,0,'4295/4298/4301/4294/4300/4540/4302/4299 - Random Texts (Ashbringer Event - Scarlet Monastery)'),
(9000,0,-9002,0,'4295/4298/4301/4294/4300/4540/4302/4299 - Random Texts (Ashbringer Event - Scarlet Monastery)'),
(9000,0,-9003,0,'4295/4298/4301/4294/4300/4540/4302/4299 - Random Texts (Ashbringer Event - Scarlet Monastery)'),
(9000,0,-9004,0,'4295/4298/4301/4294/4300/4540/4302/4299 - Random Texts (Ashbringer Event - Scarlet Monastery)'),
(9000,0,-9005,0,'4295/4298/4301/4294/4300/4540/4302/4299 - Random Texts (Ashbringer Event - Scarlet Monastery)'),
(9000,0,-9006,0,'4295/4298/4301/4294/4300/4540/4302/4299 - Random Texts (Ashbringer Event - Scarlet Monastery)'),
(9000,0,-9007,0,'4295/4298/4301/4294/4300/4540/4302/4299 - Random Texts (Ashbringer Event - Scarlet Monastery)');

-- Player must have Corrupted Ashbringer equipped
DELETE FROM conditions WHERE condition_entry=9000; -- ToDo: Move to lower ID when exporting
INSERT INTO conditions (condition_entry, type, value1, value2, comments) VALUES
(9000,3,22691,1,'');

-- Add new effect to Ashbringer player aura
-- SPELL_EFFECT_APPLY_AURA, TARGET_SELF, SPELL_AURA_FORCE_REACTION, Scarlet Crusade, Friendly
-- inspired by same hack done here: https://github.com/hellground-tbc/core/commit/102c5a85573f944a9852e4ee4f411e1aed75a007
UPDATE spell_template SET Effect3=6, EffectImplicitTargetA3=1, EffectApplyAuraName3=139, EffectMiscValue3=56, EffectBaseDice3=4 WHERE id=28282;

UPDATE spell_template SET Attributes=320 WHERE id=28282; -- This makes Ashbringer passive aura icon invisible
UPDATE spell_template SET AttributesEx=32, AttributesEx3=131072 WHERE id=28441; -- AB Effect 000, critters/neutral no longer attack
-- Scarlet Crusade NPCs supposed to respond when hit by this?

-- Corrupted Ashbringer sounds (on hit?)
-- other players are supposed to hear this?
-- https://github.com/ientium/LightsHope-server/commit/90c1501c91b31d37b31fabeb3ad466274dd8e3ae

-- Scarlet Crusade NPC responses
DELETE FROM dbscripts_on_relay WHERE id=9000; -- ToDo: Move to lower ID when exporting
INSERT INTO dbscripts_on_relay (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
('9000', '0', '28', '0', '0', '0', '0', '0', '2', '0', '0', '0', '0', '0', '0', '0', '0', 'Scarlet Crusade NPC Ashbringer Event response - Stand'),
('9000', '0', '20', '0', '0', '0', '0', '0', '2', '0', '0', '0', '0', '0', '0', '0', '0', 'Scarlet Crusade NPC Ashbringer Event response - Set Movement to Idle'),
('9000', '1', '36', '0', '0', '0', '0', '0', '2', '0', '0', '0', '0', '0', '0', '0', '0', 'Scarlet Crusade NPC Ashbringer Event response - Set Facing to Player'),
('9000', '2', '28', '8', '0', '0', '0', '0', '2', '0', '0', '0', '0', '0', '0', '0', '0', 'Scarlet Crusade NPC Ashbringer Event response - Kneel');

-- Scarlet Commander Mograine
DELETE FROM dbscripts_on_relay WHERE id=9001; -- ToDo: Move to lower ID when exporting
INSERT INTO dbscripts_on_relay (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
('9001', '0', '28', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Scarlet Commander Mograine - Stand'),
('9001', '0', '36', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Scarlet Commander Mograine - Set Facing to Player'),
('9001', '2', '0', '0', '0', '0', '0', '0', '0', '2000005980', '0', '0', '0', '0', '0', '0', '0', 'Scarlet Commander Mograine - Say 1'),
('9001', '3', '28', '8', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Scarlet Commander Mograine - Kneel'),
('9001', '5', '10', '16440', '60000', '1', '0', '0', '8', '0', '0', '0', '0', '1065.130737', '1399.350586', '30.763723', '6.282961', 'Summon Highlord Mograine');

-- High Inquisitor Fairbanks
DELETE FROM dbscripts_on_relay WHERE id=9002; -- ToDo: Move to lower ID when exporting
INSERT INTO dbscripts_on_relay (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
('9002', '0', '15', '28443', '1', '0', '0', '0', '2', '0', '0', '0', '0', '0', '0', '0', '0', 'High Inquisitor Fairbanks - Cast Transform Ghost'),
('9002', '0', '36', '0', '0', '0', '0', '0', '2', '0', '0', '0', '0', '0', '0', '0', '0', 'High Inquisitor Fairbanks - Set Facing to Player'),
('9002', '2', '29', '1', '1', '0', '0', '0', '2', '0', '0', '0', '0', '0', '0', '0', '0', 'High Inquisitor Fairbanks - Add Gossip NpcFlag');

-- 16062 real boss
-- 28688 Mograine Cometh DND - transforms to 16440
UPDATE creature_template SET Name='Highlord Mograine', EquipmentTemplateId=0, MinLevel=63, MaxLevel=63, HealthMultiplier=160, MinLevelHealth=532960, MaxLevelHealth=532960, UnitFlags=768, Faction=35, MovementType=2 WHERE entry=16440;

DELETE FROM creature_movement_template WHERE entry=16440 AND pathId=1;
INSERT INTO creature_movement_template (entry, pathId, point, position_x, position_y, position_z, orientation, waittime, script_id, comment) VALUES
(16440, 1, 1, 1084.703857, 1399.461548, 30.30381, 100, 1000, 0, 'Highlord Mograine'),
(16440, 1, 2, 1103.323486, 1399.347778, 30.306072, 100, 0, 0, 'Highlord Mograine'),
(16440, 1, 3, 1137.175415, 1399.250854, 30.307892, 100, 0, 0, 'Highlord Mograine'),
(16440, 1, 4, 1145.000122, 1399.300293, 31.820765, 100, 0, 0, 'Highlord Mograine'),
(16440, 1, 5, 1148.536377, 1398.986938, 31.972290, 100, 1000, 1644001, 'Highlord Mograine');

DELETE FROM dbscripts_on_creature_movement WHERE id=1644001;
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
('1644001', '0', '20', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Highlord Mograine - Set Movement to Idle'),
('1644001', '1', '0', '0', '0', '0', '0', '0', '0', '2000005981', '0', '0', '0', '0', '0', '0', '0', 'Highlord Mograine - Ashbringer Event Say 1'),
('1644001', '3', '28', '0', '0', '0', '3976', '10', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Scarlet Commander Mograine - Stand'),
('1644001', '4', '0', '0', '0', '0', '3976', '10', '0', '2000005982', '0', '0', '0', '0', '0', '0', '0', 'Scarlet Commander Mograine - Ashbringer Event Say 2'),
('1644001', '4', '36', '0', '0', '0', '3976', '10', '2', '0', '0', '0', '0', '0', '0', '0', '0', 'Scarlet Commander Mograine - Face Highlord Mograine'),
('1644001', '8', '0', '0', '0', '0', '0', '0', '0', '2000005983', '0', '0', '0', '0', '0', '0', '0', 'Highlord Mograine - Ashbringer Event Say 2'),
('1644001', '8', '1', '6', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Highlord Mograine - Question Emote'),
('1644001', '12', '1', '25', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Highlord Mograine - Point Emote'),
('1644001', '16', '1', '15', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Highlord Mograine - Roar Emote'),
('1644001', '20', '0', '0', '0', '0', '3976', '10', '0', '2000005984', '0', '0', '0', '0', '0', '0', '0', 'Scarlet Commander Mograine - Ashbringer Event Say 3'),
('1644001', '23', '15', '28697', '0', '0', '3976', '10', '1', '0', '0', '0', '0', '0', '0', '0', '0', 'Highlord Mograine - Cast Forgiveness on Scarlet Commander Mograine'),
('1644001', '26', '0', '0', '0', '0', '0', '0', '0', '2000005985', '0', '0', '0', '0', '0', '0', '0', 'Highlord Mograine - Ashbringer Event Say 3');

DELETE FROM dbscript_string WHERE entry IN (2000005980,2000005981,2000005982,2000005983,2000005984,2000005985);
INSERT INTO dbscript_string (entry, content_default, sound, type, language, emote, comment) VALUES
(2000005980, 'You hold my father''s blade, $n. My soldiers are yours to control, my $g Lord:Lady;. Take them... Lead them... The impure must be purged. They must be cleansed of their taint.', 0, 0, 0, 1, 'Scarlet Commander Mograine - Ashbringer Event Say 1'),
(2000005981, 'Renault...', 0, 0, 0, 25, 'Highlord Mograine - Ashbringer Event Say 1'),
(2000005982, 'Father... But... How?', 0, 0, 0, 6, 'Scarlet Commander Mograine - Ashbringer Event Say 2'),
(2000005983, 'Did you think that your betrayal would be forgotten? Lost in the carefully planned cover up of my death? Blood of my blood, the blade felt your cruelty long after my heart had stopped beating. And in death, I knew what you had done. But now, the chains of Kel''Thuzad hold me no more. I come to serve justice. I AM ASHBRINGER.', 0, 0, 0, 6, 'Highlord Mograine - Ashbringer Event Say 2'),
(2000005984, 'Forgive me, father! Please...', 0, 0, 0, 20, 'Scarlet Commander Mograine - Ashbringer Event Say 3'),
(2000005985, 'You are forgiven...', 0, 0, 0, 0, 'Highlord Mograine - Ashbringer Event Say 3');

-- player must have Corrupted Ashbringer equipped to see 
DELETE FROM gossip_menu WHERE entry BETWEEN 30101 AND 30117;
INSERT INTO gossip_menu (entry, text_id, condition_id) VALUES
(30101, 30117, 0),
(30102, 30118, 0),
(30103, 30119, 0),
(30104, 30120, 0),
(30105, 30121, 0),
(30106, 30122, 0),
(30107, 30123, 0),
(30108, 30124, 0),
(30109, 30125, 0),
(30110, 30126, 0),
(30111, 30127, 0),
(30112, 30128, 0),
(30113, 30129, 0),
(30114, 30130, 0),
(30115, 30131, 0),
(30116, 30132, 0),
(30117, 30133, 0);

DELETE FROM gossip_menu_option where menu_id BETWEEN 30101 AND 30116;
INSERT INTO gossip_menu_option (menu_id, id, option_icon, option_text, option_id, npc_option_npcflag, action_menu_id, action_poi_id, action_script_id, box_coded, box_money, box_text, condition_id) VALUES
('30101', '0', '0', 'Curse? What\'s going on here, Fairbanks?',                                              '1', '1',                 '30102',         '0', '0', '0', '0', NULL, '9000'), -- Need Corrupted Ashbringer equipped to see the gossip menu options
('30102', '0', '0', 'Mograine?',                                                                             '1', '1',                 '30103',         '0', '0', '0', '0', NULL, '0'),
('30103', '0', '0', 'What do you mean?',                                                                     '1', '1',                 '30104',         '0', '0', '0', '0', NULL, '0'),
('30104', '0', '0', 'I still do not fully understand.',                                                      '1', '1',                 '30105',         '0', '0', '0', '0', NULL, '0'),
('30105', '0', '0', 'Incredible story. So how did he die?',                                                  '1', '1',                 '30106',         '0', '0', '0', '0', NULL, '0'),
('30106', '0', '0', 'You mean...',                                                                           '1', '1',                 '30107',         '0', '0', '0', '0', NULL, '0'),
('30107', '0', '0', 'How do you know all of this?',                                                          '1', '1',                 '30108',         '0', '0', '0', '0', NULL, '0'),
('30108', '0', '0', 'A thousand? For one man?',                                                              '1', '1',                 '30109',         '0', '0', '0', '0', NULL, '0'),
('30109', '0', '0', 'Yet? Yet what??',                                                                       '1', '1',                 '30110',         '0', '0', '0', '0', NULL, '0'),
('30110', '0', '0', 'And did he?',                                                                           '1', '1',                 '30111',         '0', '0', '0', '0', NULL, '0'),
('30111', '0', '0', 'Continue please, Fairbanks.',                                                           '1', '1',                 '30112',         '0', '0', '0', '0', NULL, '0'),
('30112', '0', '0', 'You mean...',                                                                           '1', '1',                 '30113',         '0', '0', '0', '0', NULL, '0'),
('30113', '0', '0', 'You were right, Fairbanks. That is tragic.',                                            '1', '1',                 '30114',         '0', '0', '0', '0', NULL, '0'),
('30114', '0', '0', 'And you did...',                                                                        '1', '1',                 '30115',         '0', '0', '0', '0', NULL, '0'),
('30115', '0', '0', 'You tell an incredible tale, Fairbanks. What of the blade? Is it beyond redemption?',   '1', '1',                 '30116',         '0', '0', '0', '0', NULL, '0'),
('30116', '0', '0', 'But his son is dead.',                                                                  '1', '1',                 '30117',         '0', '0', '0', '0', NULL, '0');

-- todo: emotes
DELETE FROM `npc_text` WHERE ID BETWEEN 30117 AND 30133;
INSERT INTO `npc_text` (`ID`, `text0_0`, `text0_1`, `lang0`, `prob0`, `em0_0`, `em0_1`, `em0_2`, `em0_3`, `em0_4`, `em0_5`, `text1_0`, `text1_1`, `lang1`, `prob1`, `em1_0`, `em1_1`, `em1_2`, `em1_3`, `em1_4`, 
`em1_5`, `text2_0`, `text2_1`, `lang2`, `prob2`, `em2_0`, `em2_1`, `em2_2`, `em2_3`, `em2_4`, `em2_5`, `text3_0`, `text3_1`, `lang3`, `prob3`, `em3_0`, `em3_1`, `em3_2`, `em3_3`, `em3_4`, `em3_5`, `text4_0`, 
`text4_1`, `lang4`, `prob4`, `em4_0`, `em4_1`, `em4_2`, `em4_3`, `em4_4`, `em4_5`, `text5_0`, `text5_1`, `lang5`, `prob5`, `em5_0`, `em5_1`, `em5_2`, `em5_3`, `em5_4`, `em5_5`, `text6_0`, `text6_1`, `lang6`,
 `prob6`, `em6_0`, `em6_1`, `em6_2`, `em6_3`, `em6_4`, `em6_5`, `text7_0`, `text7_1`, `lang7`, `prob7`, `em7_0`, `em7_1`, `em7_2`, `em7_3`, `em7_4`, `em7_5`) VALUES
(30117, 'At last, the curse is lifted. Thank you, hero.','', 0, 1, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0),
(30118, 'You mean, you don\'t know? The sword that you carry on your back - it is known as Ashbringer; named after its original owner.','', 0, 1, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0),
(30119, 'Aye, the Highlord Mograine: A founder of the original order of the Scarlet Crusade. A knight of unwavering faith and purity; Mograine would be betrayed by his own son and slain by Kel\'Thuzad\'s forces inside Stratholme. It is how I ended up here...','', 0, 1, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0),
(30120, 'It was High General Abbendis, High Inquisitor Isillien, and Highlord Mograine that formed the Crusade. In its infancy, the Crusade was a noble order. The madness and insane zealotry that you see now did not exist. It was not until the one known as the Grand Crusader appeared that the wheels of corruption were set in motion.','', 0, 1, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0),
(30121, 'The Highlord was the lynchpin of the Crusade. Aye, Mograine was called the Ashbringer because of his exploits versus the armies of the Lich King. With only blade and faith, Mograine would walk into whole battalions of undead and emerge unscathed - the ashes of his foes being the only indication that he had been there at all. Do you not understand? The very face of death feared him! It trembled in his presence!','', 0, 1, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0),
(30122, 'The only way a hero can die, $r: Through tragedy. The Grand Crusader struck a deal with Kel\'Thuzad himself! An ambush would be staged that would result in the death of Mograine. The type of betrayal that could only be a result of the actions of one\'s most trusted and loved companions.','', 0, 1, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0),
(30123, '<High Inquisitor Fairbanks nods.>$B$BAye, the lesser Mograine, the one known as the Scarlet Commander, through - what I suspect - the dealings of the Grand Crusader. He led his father to the ambush like a lamb to the slaughter.','', 0, 1, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0),
(30124, '<High Inquisitor Fairbanks lifts up his tabard revealing several gruesome scars.>$B$BBecause I was there... I was the Highlord\'s most trusted advisor. I should have known... I felt that something was amiss yet I allowed it to happen. Would you believe that there were a thousand or more Scourge?','', 0, 1, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0),
(30125, 'This was the Ashbringer, fool! As the Scourge began to materialize around us, Mograine\'s blade began to glow... to hum... the younger Mograine would take that as a sign to make his escape. They descended upon us with a hunger the likes of which I had never seen. Yet...','', 0, 1, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0),
(30126, 'It was not enough.$B$B<Fairbanks smirks briefly, lost in a memory.>$B$BA thousand came and a thousand died. By the Light! By the might of Mograine! He would smite them down as fast as they could come. Through the chaos, I noticed that the lesser Mograine was still there, off in the distance. I called to him, \"Help us, Renault! Help your father, boy!\"','', 0, 1, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0),
(30127, '<High Inquisitor Fairbanks shakes his head.>$B$BNo... He stood in the background, watching as the legion of undead descended upon us. Soon after, my powers were exhausted. I was the first to fall... Surely they would tear me limb from limb as I lay there unconscious; but they ignored me completely, focusing all of their attention on the Highlord. ','', 0, 1, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0),
(30128, 'It was all I could do to feign death as the corpses of the Scourge piled upon me. There was darkness and only the muffled sounds of the battle above me. The clashing of iron, the gnashing and grinding... gruesome, terrible sounds. And then there was silence. He called to me! \"Fairbanks! Fairbanks where are you? Talk to me Fairbanks!\" And then came the sound of incredulousness. The bite of betrayal, $r...','', 0, 1, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0),
(30129, 'The boy had picked up the Ashbringer and driven it through his father\'s heart as his back was turned. His last words will haunt me forever: \"What have you done, Renault? Why would you do this?\"','', 0, 1, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0),
(30130, 'The blade and Mograine were a singular entity. Do you understand? This act corrupted the blade and lead to Mograine\'s own corruption as a death knight of Kel\'Thuzad. I swore that if I lived, I would expose the perpetrators of this heinous crime. For two days I remained under the rot and contagion of Scourge - gathering as much strength as possible to escape the razed city.\n','', 0, 1, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0),
(30131, 'Aye, I did. Much to the dismay of the lesser Mograine, I made my way back to the Scarlet Monastery. I shouted and screamed. I told the tale to any that would listen. And I would be murdered in cold blood for my actions, dragged to this chamber - the dark secret of the order. But some did listen... some heard my words. Thus was born the Argent Dawn...','', 0, 1, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0),
(30132, 'I\'m afraid that the blade which you hold in your hands is beyond saving. The hatred runs too deep. But do not lose hope, $c. Where one chapter has ended, a new one begins.$B$BFind his son - a more devout and pious man you may never meet. It is rumored that he is able to build the Ashbringer anew, without requiring the old, tainted blade.','', 0, 1, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0),
(30133, '<High Inquisitor Fairbanks shakes his head.>$B$BNo, $r; only one of his sons is dead. The other lives...$B$B<High Inquisitor Fairbanks points to the sky.>$B$BThe Outland... Find him there... ','', 0, 1, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0);

UPDATE `creature_template` SET `GossipMenuId`='30101', `NpcFlags`=1 WHERE `entry`=16439;
UPDATE `creature_template` SET `GossipMenuId`=30101, `NpcFlags`=1 WHERE `entry`=4542;
