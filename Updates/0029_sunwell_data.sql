UPDATE `creature_template` SET `MovementType`=2 WHERE `entry` IN (25639,25644); -- Anchorite Elbadon, Neophyte Narama
UPDATE `creature_template` SET `GossipMenuId`=9286 WHERE `entry`=25632;
UPDATE `creature_template` SET `GossipMenuId`=9285 WHERE `entry`=25638;
UPDATE `creature_template` SET `ModelId2`=0 WHERE `Entry`=25638;

DELETE FROM `gossip_menu` WHERE `entry` IN (9285,9286,9287,9288,9289,9290,9293);
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (9285,12596),(9286,12597),(9287,12598),(9288,12599),(9289,12600),(9290,12601),(9293,12604);

DELETE FROM `gossip_menu_option` WHERE `menu_id` BETWEEN 9285 AND 9289;
INSERT INTO `gossip_menu_option` (`menu_id`,`id`,`option_icon`,`option_text`,`option_id`,`npc_option_npcflag`,`action_menu_id`) VALUES
(9285,0,0,'Give me a situation report, Captain.', 1,1,9287),
(9286,2,0,'What is the current state of the Sunwell''s Gates?', 1,1,9293),
(9287,0,0,'What went wrong?', 1,1,9288),
(9288,0,0,'Why did they stop?', 1,1,9289),
(9289,0,0,'Your insight is appreciated.', 1,1,9290);

DELETE FROM `npc_text` WHERE `ID` IN (12600,12601,12604);
INSERT INTO `npc_text` (`ID`,`text0_0`,`text0_1`,`lang0`,`prob0`,`em0_0`,`em0_1`) VALUES
(12600,'','I don''t know, but I''m glad they did. The respite has allowed Anchorite Elbadon to save many of the men and women under my command. I''ve sent a few of my stealthiest scouts forward, and they''ve reported back something interesting. Nearly all of the Sunblade Protectors are powered down! Kil''jaeden''s forces appear to be conserving their energy, and seem content to merely contain us with one active Protector. If you and your companions want to force your way inside, allow me to suggest a plan of attack.',0,1,0,396),
(12601,'','Take advantage of their deactivated Sunblade Protectors. If one of their Sunblade Scouts spot you, I''m sure the elf will try to reactivate a nearby Sunblade Protector. Kill him quickly to prevent this. With the blood elves eliminated, as long as you do not trigger the Protector''s proximity sensors you should be able to move past them without a fight. That will save you both time and resources.',0,1,0,396),
(12604,'All of the barriers blocking you from reaching the Sunwell have been destroyed. Enter the Sunwell and stop Kil''jaeden from entering this world!','',0,1,0,5);

DELETE FROM `spell_script_target` WHERE `entry` IN (46174,46219,46319);
INSERT INTO `spell_script_target` (`entry`,`type`,`targetEntry`,`inverseEffectMask`) VALUES 
(46174,1,25848,0),(46219,1,25592,0),(46319,1,25953,0);

DELETE FROM `dbscripts_on_creature_movement` WHERE `id` IN (1375);
INSERT INTO `dbscripts_on_creature_movement` (`id`, `delay`, `command`, `datalong`, `comments`) VALUES
(1375, 0, 1, 375, 'GENERIC EMOTE - EMOTE_STATE_READY2H');

