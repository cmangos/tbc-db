-- Laden Stilwell - Shadowfang Keep

UPDATE `creature_template` SET `GossipMenuId`=7482 WHERE `entry`=17822;

DELETE FROM `gossip_menu` WHERE `entry` IN (7482, 7483);
INSERT INTO `gossip_menu` (`entry`, `text_id`) VALUES
(7482, 9067),
(7483, 9068);

DELETE FROM `npc_text` WHERE `ID`=9068;
INSERT INTO `npc_text` (`ID`, `text0_0`, `text0_1`, `lang0`, `prob0`, `em0_0`) VALUES
(9068, 'How did you learn about the ore? Not even the Baron knew...$B$BTake the cursed things. They''ve brought me nothing but misfortune anyway. I hid them in the stables just off the courtyard.$B$B<A low growl begins to emanate from the back of Landen''s throat.>', '', 0, 1, 20);

DELETE FROM `gossip_menu_option` WHERE `menu_id`=7482;
INSERT INTO `gossip_menu_option` (`menu_id`,`id`,`option_icon`,`option_text`,`option_id`,`npc_option_npcflag`,`action_menu_id`,`action_poi_id`,`box_coded`,`box_money`,`box_text`,`condition_id`,`action_script_id`) VALUES
(7482,0,0,'Listen to me, human. I care nothing for your plight, but you have something I require. Tell me where to find the bloodforged ingots.',1,1,7483,0,0,0,'',10100,1782201);

DELETE FROM `conditions` WHERE `condition_entry`=10100;
INSERT INTO `conditions` (`condition_entry`,`type`,`value1`,`value2`,`comments`) VALUES
(10100,9,9692,0,'gossip option on Landen Stilwell requires The Path of the Adept taken');

DELETE FROM dbscripts_on_gossip WHERE id=1782201;
INSERT INTO dbscripts_on_gossip (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
('1782201', '25', '15', '31310', '0', '0', '0', '0', '4', '0', '0', '0', '0', '0', '0', '0', '0', 'Landen Stilwell - cast Landen Stilwell Transform'),
('1782201', '25', '22', '14', '0', '0', '0', '0', '4', '0', '0', '0', '0', '0', '0', '0', '0', 'Landen Stilwell - change faction'),
('1782201', '27', '26', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Landen Stilwell - start attack');


