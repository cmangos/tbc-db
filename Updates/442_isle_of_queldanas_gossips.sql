UPDATE `creature_template` SET `gossipmenuid`=9050 WHERE `entry`=24975; -- Mar'nah
UPDATE `creature_template` SET `gossipmenuid`=9063 WHERE `entry`=25061; -- Harbinger Inuuro
UPDATE `creature_template` SET `gossipmenuid`=9064 WHERE `entry`=25057; -- Battlemage Arynna
UPDATE `creature_template` SET `gossipmenuid`=9087 WHERE `entry`=25046; -- Smith Hauthaa
UPDATE `creature_template` SET `gossipmenuid`=9127 WHERE `entry`=25069; -- Magister Llastar
UPDATE `creature_template` SET `gossipmenuid`=9115 WHERE `entry`=25112; -- Anchorite Ayuri
UPDATE `creature_template` SET `gossipmenuid`=9052 WHERE `entry`=24965; -- Vindicator Xayann
UPDATE `creature_template` SET `gossipmenuid`=9105 WHERE `entry`=25169; -- Archmage Ne'thul

DELETE FROM `gossip_menu` WHERE `entry` IN (9050,9063,9064,9087,9127,9115,9052);
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES
(9050,12237,0,0), -- Mar'nah: 24975
(9063,12256,0,0), -- Harbinger Inuuro: 25061
(9064,12258,0,0), -- Battlemage Arynna: 25057
(9087,12286,0,0), -- Smith Hauthaa: 25046
(9127,12340,0,0), -- Magister Llastar: 25069
(9115,12323,0,0), -- Anchorite Ayuri: 25112
(9052,12241,0,0); -- Vindicator Xayann: 24965

