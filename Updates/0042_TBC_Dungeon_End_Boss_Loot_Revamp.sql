-- ==================================
-- TBC Dungeon Boss Loot Tables which have potential of dublicate item drop, or are just wrong
-- ==================================

-- Omor the Unscarred - Heroic
DELETE FROM `creature_loot_template` WHERE entry=18433 AND `item` IN (40029,40033);
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
('18433','40029','100','0','-40029','1','0','Hellfire Citadel: Hellfire Ramparts (Boss Loot) - Omor the Unscarred (Heroic) - Rare Items (Group 1)'),
('18433','40033','100','0','-40033','1','0','Hellfire Citadel: Hellfire Ramparts (Boss Loot) - Omor the Unscarred (Heroic) - Rare Items (Group 2)');

DELETE FROM `reference_loot_template` WHERE `entry` IN (40029,40033);
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(40029, 27462, 0, 1, 1, 1, 0, 'Crimson Bracers of Gloom'),
(40029, 27466, 0, 1, 1, 1, 0, 'Headdress of Alacrity'),
(40029, 27467, 0, 1, 1, 1, 0, 'Silent-Strider Kneeboots'),
(40029, 27478, 0, 1, 1, 1, 0, 'Girdle of the Blasted Reaches'),
(40029, 27539, 0, 1, 1, 1, 0, 'Justice Bearer\'s Pauldrons'),
(40029, 27906, 0, 1, 1, 1, 0, 'Crimsonforge Breastplate'),
(40033, 27464, 0, 1, 1, 1, 0, 'Omor\'s Unyielding Will'),
(40033, 27895, 0, 1, 1, 1, 0, 'Band of Many Prisms'),
(40033, 27477, 0, 1, 1, 1, 0, 'Faol\'s Signet of Cleansing'),
(40033, 27463, 0, 1, 1, 1, 0, 'Terror Flame Dagger'),
(40033, 27476, 0, 1, 1, 1, 0, 'Truncheon of Five Hells'),
(40033, 27465, 0, 1, 1, 1, 0, 'Mana-Etched Gloves');

UPDATE `reference_loot_template_names` SET `name` = 'Hellfire Citadel: Hellfire Ramparts (Boss Loot) - Omor the Unscarred (Heroic) - Rare Items (Group 2)' WHERE `entry` = 40033;
DELETE FROM `reference_loot_template_names` WHERE `entry` = 40029;
INSERT INTO `reference_loot_template_names` (`entry`, `name`) VALUES
(40029, 'Hellfire Citadel: Hellfire Ramparts (Boss Loot) - Omor the Unscarred (Heroic) - Rare Items (Group 1)');

-- Vazruden and Nazan (Reinforced Fel Iron Chest) - Normal/Heroic - 21762/21764  
DELETE FROM `gameobject_loot_template` WHERE entry IN (21762,21764) AND `item` IN (40034,40035,40038,40039);
INSERT INTO `gameobject_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
('21762','40034','100','1','-40034','1','0','Hellfire Citadel: Hellfire Ramparts (Boss Loot) - Vazruden and Nazan (Normal) - Rare Items (Group 1)'),
('21762','40038','100','1','-40038','1','0','Hellfire Citadel: Hellfire Ramparts (Boss Loot) - Vazruden and Nazan (Normal) - Rare Items (Group 2)'),
('21764','40035','100','1','-40035','1','0','Hellfire Citadel: Hellfire Ramparts (Boss Loot) - Vazruden and Nazan (Heroic) - Rare Items (Group 1)'),
('21764','40039','100','1','-40039','1','0','Hellfire Citadel: Hellfire Ramparts (Boss Loot) - Vazruden and Nazan (Heroic) - Rare Items (Group 2)');

DELETE FROM `reference_loot_template` WHERE `entry` IN (40034,40035,40038,40039);
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(40034, 24044, 0, 1, 1, 1, 0, 'Hellreaver'),
(40034, 24045, 0, 1, 1, 1, 0, 'Band of Renewal'),
(40034, 24151, 0, 1, 1, 1, 0, 'Mok\'Nathal Clan Ring'),
(40034, 24154, 0, 1, 1, 1, 0, 'Witching Band'),
(40034, 24155, 0, 1, 1, 1, 0, 'Ursol\'s Claw'),
(40038, 24046, 0, 1, 1, 1, 0, 'Kilt of Rolling Thunders'),
(40038, 24063, 0, 1, 1, 1, 0, 'Shifting Sash of Midnight'),
(40038, 24064, 0, 1, 1, 1, 0, 'Ironsole Clompers'),
(40038, 24083, 0, 1, 1, 1, 0, 'Lifegiver Britches'),
(40038, 24150, 0, 1, 1, 1, 0, 'Mok\'Nathal Wildercloak'),
(40035, 27453, 0, 1, 1, 1, 0, 'Averinn\'s Ring of Slaying'),
(40035, 27460, 0, 1, 1, 1, 0, 'Reavers\' Ring'),
(40035, 27455, 0, 1, 1, 1, 0, 'Irondrake Faceguard'),
(40035, 27459, 0, 1, 1, 1, 0, 'Vambraces of Daring'),
(40035, 27457, 0, 1, 1, 1, 0, 'Life Bearer\'s Gauntlets'),
(40039, 27452, 0, 1, 1, 1, 0, 'Light Scribe Bands'),
(40039, 27454, 0, 1, 1, 1, 0, 'Volcanic Pauldrons'),
(40039, 27458, 0, 1, 1, 1, 0, 'Oceansong Kilt'),
(40039, 27461, 0, 1, 1, 1, 0, 'Chestguard of the Prowler'),
(40039, 27456, 0, 1, 1, 1, 0, 'Raiments of Nature\'s Breath');

UPDATE `reference_loot_template_names` SET `name` = 'Hellfire Citadel: Hellfire Ramparts (Boss Loot) - Vazruden and Nazan (Normal) - Rare Items (Group 1)' WHERE `entry` = 40034;
UPDATE `reference_loot_template_names` SET `name` = 'Hellfire Citadel: Hellfire Ramparts (Boss Loot) - Vazruden and Nazan (Heroic) - Rare Items (Group 1)' WHERE `entry` = 40035;
DELETE FROM `reference_loot_template_names` WHERE `entry` IN (40038,40039);
INSERT INTO `reference_loot_template_names` (`entry`, `name`) VALUES
(40038, 'Hellfire Citadel: Hellfire Ramparts (Boss Loot) - Vazruden and Nazan (Normal) - Rare Items (Group 2)'),
(40039, 'Hellfire Citadel: Hellfire Ramparts (Boss Loot) - Vazruden and Nazan (Heroic) - Rare Items (Group 2)');

-- Keli'dan the Breaker - Heroic
DELETE FROM `creature_loot_template` WHERE entry=18607 AND `item` IN (40045,40048);
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
('18607','40045','100','0','-40045','1','0','Hellfire Citadel: The Blood Furnace (Boss Loot) - Keli\'dan the Breaker (Heroic) - Rare Items (Group 1)'),
('18607','40048','100','0','-40048','1','0','Hellfire Citadel: The Blood Furnace (Boss Loot) - Keli\'dan the Breaker (Heroic) - Rare Items (Group 2)');

DELETE FROM `reference_loot_template` WHERE `entry` IN (40045,40048);
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(40045, 27506, 0, 1, 1, 1, 0, 'Robe of Effervescent Light'),
(40045, 27514, 0, 1, 1, 1, 0, 'Leggings of the Unrepentant'),
(40045, 27522, 0, 1, 1, 1, 0, 'World\'s End Bracers'),
(40045, 27494, 0, 1, 1, 1, 0, 'Emerald Eye Bracer'),
(40045, 27505, 0, 1, 1, 1, 0, 'Ruby Helm of the Just'),
(40045, 27788, 0, 1, 1, 1, 0, 'Bloodsworn Warboots'),
(40048, 27495, 0, 1, 1, 1, 0, 'Soldier\'s Dog Tags'),
(40048, 27497, 0, 1, 1, 1, 0, 'Doomplate Gauntlets'),
(40048, 27507, 0, 1, 1, 1, 0, 'Adamantine Repeater'),
(40048, 27512, 0, 1, 1, 1, 0, 'The Willbreaker'),
(40048, 28121, 0, 1, 1, 1, 0, 'Icon of Unyielding Courage'),
(40048, 28264, 0, 1, 1, 1, 0, 'Wastewalker Tunic');

UPDATE `reference_loot_template_names` SET `name` = 'Hellfire Citadel: The Blood Furnace (Boss Loot) - Keli\'dan the Breaker (Heroic) - Rare Items (Group 1)' WHERE `entry` = 40045;
DELETE FROM `reference_loot_template_names` WHERE `entry` = 40048;
INSERT INTO `reference_loot_template_names` (`entry`, `name`) VALUES (40048, 'Hellfire Citadel: The Blood Furnace (Boss Loot) - Keli\'dan the Breaker (Heroic) - Rare Items (Group 2)');

-- Warchief Kargath Bladefist - Normal
DELETE FROM `creature_loot_template` WHERE entry=16808 AND `item` IN (40053,40049);
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
('16808','40053','100','0','-40053','1','0','Hellfire Citadel: The Shattered Halls (Boss Loot) - Warchief Kargath Bladefist (Normal and Heroic) - Rare Items (Group 1)'),
('16808','40049','100','0','-40049','1','0','Hellfire Citadel: The Shattered Halls (Boss Loot) - Warchief Kargath Bladefist (Normal and Heroic) - Rare Items (Group 2)');

-- Warchief Kargath Bladefist - Heroic
DELETE FROM `creature_loot_template` WHERE entry=20597 AND `item` IN (40053,40049);
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
('20597','40053','100','0','-40053','1','0','Hellfire Citadel: The Shattered Halls (Boss Loot) - Warchief Kargath Bladefist (Normal and Heroic) - Rare Items (Group 1)'),
('20597','40049','100','0','-40049','1','0','Hellfire Citadel: The Shattered Halls (Boss Loot) - Warchief Kargath Bladefist (Normal and Heroic) - Rare Items (Group 2)');

DELETE FROM `reference_loot_template` WHERE `entry` IN (40053,40049);
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(40053, 27527, 0, 1, 1, 1, 0, 'Greaves of the Shatterer'),
(40053, 27529, 0, 1, 1, 1, 0, 'Figurine of the Colossus'),
(40053, 27534, 0, 1, 1, 1, 0, 'Hortus\' Seal of Brilliance'),
(40053, 27533, 0, 1, 1, 1, 0, 'Demonblood Eviscerator'),
(40053, 27538, 0, 1, 1, 1, 0, 'Lightsworn Hammer'),
(40053, 27540, 0, 1, 1, 1, 0, 'Nexus Torch'),
(40049, 27474, 0, 1, 1, 1, 0, 'Beast Lord Handguards'),
(40049, 27528, 0, 1, 1, 1, 0, 'Gauntlets of Desolation'),
(40049, 27531, 0, 1, 1, 1, 0, 'Wastewalker Gloves'),
(40049, 27535, 0, 1, 1, 1, 0, 'Gauntlets of the Righteous'),
(40049, 27536, 0, 1, 1, 1, 0, 'Hallowed Handwraps'),
(40049, 27537, 0, 1, 1, 1, 0, 'Gloves of Oblivion');

UPDATE `reference_loot_template_names` SET `name` = 'Hellfire Citadel: The Shattered Halls (Boss Loot) - Warchief Kargath Bladefist (Normal and Heroic) - Rare Items (Group 1)' WHERE `entry` = 40053;
DELETE FROM `reference_loot_template_names` WHERE `entry` = 40049;
INSERT INTO `reference_loot_template_names` (`entry`, `name`) VALUES (40049, 'Hellfire Citadel: The Shattered Halls (Boss Loot) - Warchief Kargath Bladefist (Normal and Heroic) - Rare Items (Group 2)');

-- Quagmirran - Heroic
DELETE FROM `creature_loot_template` WHERE entry=19894 AND `item` IN (40005,40008);
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
('19894','40005','100','0','-40005','1','0','Coilfang Reservoir: The Slave Pens (Boss Loot) - Quagmirran (Heroic) - Rare Items (Group 1)'),
('19894','40008','100','0','-40008','1','0','Coilfang Reservoir: The Slave Pens (Boss Loot) - Quagmirran (Heroic) - Rare Items (Group 2)');

DELETE FROM `reference_loot_template` WHERE `entry` IN (40005,40008);
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(40005, 27672, 0, 1, 1, 1, 0, 'Girdle of the Immovable'),
(40005, 27712, 0, 1, 1, 1, 0, 'Shackles of Quagmirran'),
(40005, 27742, 0, 1, 1, 1, 0, 'Mage-Fury Girdle'),
(40005, 27796, 0, 1, 1, 1, 0, 'Mana-Etched Spaulders'),
(40005, 27800, 0, 1, 1, 1, 0, 'Earthsoul Britches'),
(40005, 28337, 0, 1, 1, 1, 0, 'Breastplate of Righteous Fury'),
(40008, 27673, 0, 1, 1, 1, 0, 'Phosphorescent Blade'),
(40008, 27683, 0, 1, 1, 1, 0, 'Quagmirran\'s Eye'),
(40008, 27713, 0, 1, 1, 1, 0, 'Pauldrons of Desolation'),
(40008, 27714, 0, 1, 1, 1, 0, 'Swamplight Lantern'),
(40008, 27740, 0, 1, 1, 1, 0, 'Band of Ursol'),
(40008, 27741, 0, 1, 1, 1, 0, 'Bleeding Hollow Warhammer');

UPDATE `reference_loot_template_names` SET `name` = 'Coilfang Reservoir: The Slave Pens (Boss Loot) - Quagmirran (Heroic) - Rare Items (Group 1)' WHERE `entry` = 40005;
DELETE FROM `reference_loot_template_names` WHERE `entry` = 40008;
INSERT INTO `reference_loot_template_names` (`entry`, `name`) VALUES (40008, 'Coilfang Reservoir: The Slave Pens (Boss Loot) - Quagmirran (Heroic) - Rare Items (Group 2)');

-- The Black Stalker - Heroic
DELETE FROM `creature_loot_template` WHERE entry=20184 AND `item` IN (40009,40017);
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
('20184','40017','100','0','-40017','1','0','Coilfang Reservoir: The Underbog (Boss Loot) - The Black Stalker (Heroic) - Rare Items (Group 1)'),
('20184','40009','100','0','-40009','1','0','Coilfang Reservoir: The Underbog (Boss Loot) - The Black Stalker (Heroic) - Rare Items (Group 2)');

DELETE FROM `reference_loot_template` WHERE `entry` IN (40009,40017);
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(40009, 27768, 0, 1, 1, 1, 0, 'Oracle Belt of Timeless Mystery'),
(40009, 27773, 0, 1, 1, 1, 0, 'Barbaric Legstraps'),
(40009, 27779, 0, 1, 1, 1, 0, 'Bone Chain Necklace'),
(40009, 27781, 0, 1, 1, 1, 0, 'Demonfang Ritual Helm'),
(40009, 27907, 0, 1, 1, 1, 0, 'Mana-Etched Pantaloons'),
(40009, 27938, 0, 1, 1, 1, 0, 'Savage Mask of the Lynx Lord'),
(40017, 27780, 0, 1, 1, 1, 0, 'Ring of Fabled Hope'),
(40017, 27896, 0, 1, 1, 1, 0, 'Alembic of Infernal Power'),
(40017, 27770, 0, 1, 1, 1, 0, 'Argussian Compass'),
(40017, 27771, 0, 1, 1, 1, 0, 'Doomplate Shoulderguards'),
(40017, 27769, 0, 1, 1, 1, 0, 'Endbringer'),
(40017, 27772, 0, 1, 1, 1, 0, 'Stormshield of Renewal');

UPDATE `reference_loot_template_names` SET `name` = 'Coilfang Reservoir: The Underbog (Boss Loot) - The Black Stalker (Heroic) - Rare Items (Group 1)' WHERE `entry` = 40017;
DELETE FROM `reference_loot_template_names` WHERE `entry` = 40009;
INSERT INTO `reference_loot_template_names` (`entry`, `name`) VALUES (40009, 'Coilfang Reservoir: The Underbog (Boss Loot) - The Black Stalker (Heroic) - Rare Items (Group 2)');

-- Warlord Kalithresh - Normal
DELETE FROM `creature_loot_template` WHERE entry=17798 AND `item` IN (40022,40025);
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
('17798','40022','100','0','-40022','1','0','Coilfang Reservoir: The Steamvault (Boss Loot) - Warlord Kalithresh (Normal and Heroic) - Rare Items (Group 1)'),
('17798','40025','100','0','-40025','1','0','Coilfang Reservoir: The Steamvault (Boss Loot) - Warlord Kalithresh (Normal and Heroic) - Rare Items (Group 2)');

-- Warlord Kalithresh - Heroic
DELETE FROM `creature_loot_template` WHERE entry=20633 AND `item` IN (40022,40025);
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
('20633','40022','100','0','-40022','1','0','Coilfang Reservoir: The Steamvault (Boss Loot) - Warlord Kalithresh (Normal and Heroic) - Rare Items (Group 1)'),
('20633','40025','100','0','-40025','1','0','Coilfang Reservoir: The Steamvault (Boss Loot) - Warlord Kalithresh (Normal and Heroic) - Rare Items (Group 2)');

DELETE FROM `reference_loot_template` WHERE `entry` IN (40022,40025);
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(40022, 27795, 0, 1, 1, 1, 0, 'Sash of Serpentra'),
(40022, 27799, 0, 1, 1, 1, 0, 'Vermillion Robes of the Dominant'),
(40022, 27737, 0, 1, 1, 1, 0, 'Moonglade Shoulders'),
(40022, 27738, 0, 1, 1, 1, 0, 'Incanter\'s Pauldrons'),
(40022, 27801, 0, 1, 1, 1, 0, 'Beast Lord Mantle'),
(40022, 27805, 0, 1, 1, 1, 0, 'Ring of the Silver Hand'),
(40025, 27475, 0, 1, 1, 1, 0, 'Gauntlets of the Bold'),
(40025, 27510, 0, 1, 1, 1, 0, 'Tidefury Gauntlets'),
(40025, 27804, 0, 1, 1, 1, 0, 'Devilshark Cape'),
(40025, 27806, 0, 1, 1, 1, 0, 'Fathomheart Gauntlets'),
(40025, 27874, 0, 1, 1, 1, 0, 'Beast Lord Leggings'),
(40025, 28203, 0, 1, 1, 1, 0, 'Breastplate of the Righteous');

UPDATE `reference_loot_template_names` SET `name` = 'Coilfang Reservoir: The Steamvault (Boss Loot) - Warlord Kalithresh (Normal and Heroic) - Rare Items (Group 1)' WHERE `entry` = 40022;
DELETE FROM `reference_loot_template_names` WHERE `entry` = 40025;
INSERT INTO `reference_loot_template_names` (`entry`, `name`) VALUES (40025, 'Coilfang Reservoir: The Steamvault (Boss Loot) - Warlord Kalithresh (Normal and Heroic) - Rare Items (Group 2)');

-- Exarch Maladaar - Normal
DELETE FROM `creature_loot_template` WHERE entry=18373;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
('18373', '21877', '90', '0', '2', '3', '0', 'Netherweave Cloth'),
('18373','27855','2','0','1','1','0','Mag\'har Grainbread'),
('18373','27860','1','0','1','1','0','Purified Draenic Water'),
('18373','22829','0.5','0','1','1','0','Super Healing Potion'),
('18373','22832','0.3','0','1','1','0','Super Mana Potion'),
('18373','31952','0.3','0','1','1','0','Khorium Lockbox'),
('18373','28558','100','0','1','1','206','Spirit Shard'),
('18373','21525','10','0','1','1','238','Green Winter Hat'),
('18373','40122','100','0','-40122','1','0','Auchindoun: Auchenai Crypts (Boss Loot) - Exarch Maladaar (Normal) - Rare Items');

-- Exarch Maladaar - Heroic
DELETE FROM `creature_loot_template` WHERE entry=20306;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
('20306', '21877', '90', '0', '2', '3', '0', 'Netherweave Cloth'),
('20306','27855','4','0','1','1','0','Mag\'har Grainbread'),
('20306','27860','2','0','1','1','0','Purified Draenic Water'),
('20306','28558','100','0','1','1','206','Spirit Shard'),
('20306','29434','100','0','1','1','0','Badge of Justice'),
('20306','23572','100','0','1','1','0','Primal Nether'),
('20306','22829','1.2','0','1','1','0','Super Healing Potion'),
('20306','22832','0.4','0','1','1','0','Super Mana Potion'),
('20306','31952','0.3','0','1','1','0','Khorium Lockbox'),
('20306','21525','10','0','1','1','238','Green Winter Hat'),
('20306','33836','-100','0','1','1','0','The Exarch\'s Soul Gem'),
('20306','49000','2','0','-49000','1','0','Darkmoon Cards - Ace Cards'),
('20306','40123','100','0','-40123','1','0','Auchindoun: Auchenai Crypts (Boss Loot) - Exarch Maladaar (Heroic) - Rare Items'), -- Second Rare Item from Avatar of the Martyred
('20306','40124','100','0','-40124','1','0','Auchindoun: Auchenai Crypts (Boss Loot) - Exarch Maladaar (Heroic) - Epic Items'),
('20306','40125','30','0','-40125','1','0','Auchindoun: Auchenai Crypts Heroic Epic Gems');

DELETE FROM `creature_loot_template` WHERE entry=18478;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES (18478, 21877, 90, 0, 1, 1, 0, 'Netherweave Cloth');

DELETE FROM `creature_loot_template` WHERE entry=20303;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES (20303, 41000, 100, 0, -41000, 1, 0, 'NPC LOOT - Auchindoun: Auchenai Crypts - Avatar of the Martyred - Heroic Loot');

-- Nexus-Prince Shaffar - Heroic
DELETE FROM `creature_loot_template` WHERE entry=20266 AND `item` IN (40116,40119);
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
('20266','40116','100','0','-40116','1','0','Auchindoun: Mana-Tombs (Boss Loot) - Nexus-Prince Shaffar (Heroic) - Rare Items (Group 1)'),
('20266','40119','100','0','-40119','1','0','Auchindoun: Mana-Tombs (Boss Loot) - Nexus-Prince Shaffar (Heroic) - Rare Items (Group 2)');

DELETE FROM `reference_loot_template` WHERE `entry` IN (40116,40119);
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(40116, 27798, 0, 1, 1, 1, 0, 'Gauntlets of Vindication'),
(40116, 27827, 0, 1, 1, 1, 0, 'Lucid Dream Bracers'),
(40116, 27831, 0, 1, 1, 1, 0, 'Mantle of the Unforgiven'),
(40116, 27835, 0, 1, 1, 1, 0, 'Stillwater Girdle'),
(40116, 27843, 0, 1, 1, 1, 0, 'Glyph-Lined Sash'),
(40116, 27844, 0, 1, 1, 1, 0, 'Pauldrons of Swift Retribution'),
(40119, 27837, 0, 1, 1, 1, 0, 'Wastewalker Leggings'),
(40119, 27828, 0, 1, 1, 1, 0, 'Warp-Scarab Brooch'),
(40119, 28400, 0, 1, 1, 1, 0, 'Warp-Storm Warblade'),
(40119, 27829, 0, 1, 1, 1, 0, 'Axe of the Nexus-Kings'),
(40119, 27840, 0, 1, 1, 1, 0, 'Scepter of Sha\'tar'),
(40119, 27842, 0, 1, 1, 1, 0, 'Grand Scepter of the Nexus-Kings');

UPDATE `reference_loot_template_names` SET `name` = 'Auchindoun: Mana-Tombs (Boss Loot) - Nexus-Prince Shaffar (Heroic) - Rare Items (Group 1)' WHERE `entry` = 40116;
DELETE FROM `reference_loot_template_names` WHERE `entry` = 40119;
INSERT INTO `reference_loot_template_names` (`entry`, `name`) VALUES (40119, 'Auchindoun: Mana-Tombs (Boss Loot) - Nexus-Prince Shaffar (Heroic) - Rare Items (Group 2)');

-- Talon King Ikiss - Normal
DELETE FROM `creature_loot_template` WHERE entry=18473 AND `item` IN (40132,40135);
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
('18473','40132','100','0','-40132','1','0','Auchindoun: Sethekk Halls (Boss Loot) - Talon King Ikiss (Normal and Heroic) - Rare Items (Group 1)'),
('18473','40135','100','0','-40135','1','0','Auchindoun: Sethekk Halls (Boss Loot) - Talon King Ikiss (Normal and Heroic) - Rare Items (Group 2)');

-- Talon King Ikiss - Heroic
DELETE FROM `creature_loot_template` WHERE entry=20706 AND `item` IN (40132,40135);
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
('20706','40132','100','0','-40132','1','0','Auchindoun: Sethekk Halls (Boss Loot) - Talon King Ikiss (Normal and Heroic) - Rare Items (Group 1)'),
('20706','40135','100','0','-40135','1','0','Auchindoun: Sethekk Halls (Boss Loot) - Talon King Ikiss (Normal and Heroic) - Rare Items (Group 2)');

DELETE FROM `reference_loot_template` WHERE `entry` IN (40132,40135);
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(40132, 27925, 0, 1, 1, 1, 0, 'Ravenclaw Band'),
(40132, 27946, 0, 1, 1, 1, 0, 'Avian Cloak of Feathers'),
(40132, 27980, 0, 1, 1, 1, 0, 'Terokk\'s Nightmace'),
(40132, 27981, 0, 1, 1, 1, 0, 'Sethekk Oracle Cloak'),
(40132, 27985, 0, 1, 1, 1, 0, 'Deathforge Girdle'),
(40132, 27986, 0, 1, 1, 1, 0, 'Crow Wing Reaper'),
(40135, 27948, 0, 1, 1, 1, 0, 'Trousers of Oblivion'),
(40135, 27838, 0, 1, 1, 1, 0, 'Incanter\'s Trousers'),
(40135, 27875, 0, 1, 1, 1, 0, 'Hallowed Trousers'),
(40135, 27776, 0, 1, 1, 1, 0, 'Shoulderpads of Assassination'),
(40135, 27936, 0, 1, 1, 1, 0, 'Greaves of Desolation');

UPDATE `reference_loot_template_names` SET `name` = 'Auchindoun: Sethekk Halls (Boss Loot) - Talon King Ikiss (Normal and Heroic) - Rare Items (Group 1)' WHERE `entry` = 40132;
DELETE FROM `reference_loot_template_names` WHERE `entry` = 40135;
INSERT INTO `reference_loot_template_names` (`entry`, `name`) VALUES (40135, 'Auchindoun: Sethekk Halls (Boss Loot) - Talon King Ikiss (Normal and Heroic) - Rare Items (Group 2)');

-- Murmur - Normal
DELETE FROM `creature_loot_template` WHERE entry=18708 AND `item` IN (40143,40146);
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
('18708','40143','100','0','-40143','1','0','Auchindoun: Shadow Labyrinth (Boss Loot) - Murmur (Normal and Heroic) - Rare Items (Group 1)'),
('18708','40146','100','0','-40146','1','0','Auchindoun: Shadow Labyrinth (Boss Loot) - Murmur (Normal and Heroic) - Rare Items (Group 2)');

-- Murmur - Heroic
DELETE FROM `creature_loot_template` WHERE entry=20657 AND `item` IN (40143,40146);
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
('20657','40143','100','0','-40143','1','0','Auchindoun: Shadow Labyrinth (Boss Loot) - Murmur (Normal and Heroic) - Rare Items (Group 1)'),
('20657','40146','100','0','-40146','1','0','Auchindoun: Shadow Labyrinth (Boss Loot) - Murmur (Normal and Heroic) - Rare Items (Group 2)');

DELETE FROM `reference_loot_template` WHERE `entry` IN (40143,40146);
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(40143, 27902, 0, 1, 1, 1, 0, 'Silent Slippers of Meditation'),
(40143, 27903, 0, 1, 1, 1, 0, 'Sonic Spear'),
(40143, 27905, 0, 1, 1, 1, 0, 'Greatsword of Horrid Dreams'),
(40143, 27910, 0, 1, 1, 1, 0, 'Silvermoon Crest Shield'),
(40143, 27912, 0, 1, 1, 1, 0, 'Harness of the Deep Currents'),
(40143, 27913, 0, 1, 1, 1, 0, 'Whispering Blade of Slaying'),
(40146, 27778, 0, 1, 1, 1, 0, 'Spaulders of Oblivion'),
(40146, 28232, 0, 1, 1, 1, 0, 'Robe of Oblivion'),
(40146, 28230, 0, 1, 1, 1, 0, 'Hallowed Garments'),
(40146, 27908, 0, 1, 1, 1, 0, 'Leggings of Assassination'),
(40146, 27909, 0, 1, 1, 1, 0, 'Tidefury Kilt'),
(40146, 27803, 0, 1, 1, 1, 0, 'Shoulderguards of the Bold');

UPDATE `reference_loot_template_names` SET `name` = 'Auchindoun: Shadow Labyrinth (Boss Loot) - Murmur (Normal and Heroic) - Rare Items (Group 1)' WHERE `entry` = 40143;
DELETE FROM `reference_loot_template_names` WHERE `entry` = 40146;
INSERT INTO `reference_loot_template_names` (`entry`, `name`) VALUES (40146, 'Auchindoun: Shadow Labyrinth (Boss Loot) - Murmur (Normal and Heroic) - Rare Items (Group 2)');

-- Epoch Hunter - Heroic
DELETE FROM `creature_loot_template` WHERE entry=20531 AND `item` IN (40095,40098);
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
('20531','40095','100','0','-40095','1','0','Caverns of Time: Old Hillsbrad Foothills (Boss Loot) - Epoch Hunter (Heroic) - Rare Items (Group 1)'),
('20531','40098','100','0','-40098','1','0','Caverns of Time: Old Hillsbrad Foothills (Boss Loot) - Epoch Hunter (Heroic) - Rare Items (Group 2)');

DELETE FROM `reference_loot_template` WHERE `entry` IN (40095,40098);
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(40095, 27904, 0, 1, 1, 1, 0, 'Resounding Ring of Glory'),
(40095, 28222, 0, 1, 1, 1, 0, 'Reaver of the Infinites'),
(40095, 28223, 0, 1, 1, 1, 0, 'Arcanist\'s Stone'),
(40095, 28226, 0, 1, 1, 1, 0, 'Timeslicer'),
(40095, 28227, 0, 1, 1, 1, 0, 'Sparking Arcanite Ring'),
(40095, 28344, 0, 1, 1, 1, 0, 'Wyrmfury Pauldrons'),
(40098, 28191, 0, 1, 1, 1, 0, 'Mana-Etched Vestments'),
(40098, 28224, 0, 1, 1, 1, 0, 'Wastewalker Helm'),
(40098, 28401, 0, 1, 1, 1, 0, 'Hauberk of Desolation'),
(40098, 28225, 0, 1, 1, 1, 0, 'Doomplate Warhelm'),
(40098, 27911, 0, 1, 1, 1, 0, 'Epoch\'s Whispering Cinch'),
(40098, 28233, 0, 1, 1, 1, 0, 'Necklace of Resplendent Hope');

UPDATE `reference_loot_template_names` SET `name` = 'Caverns of Time: Old Hillsbrad Foothills (Boss Loot) - Epoch Hunter (Heroic) - Rare Items (Group 1)' WHERE `entry` = 40095;
DELETE FROM `reference_loot_template_names` WHERE `entry` = 40098;
INSERT INTO `reference_loot_template_names` (`entry`, `name`) VALUES (40098, 'Caverns of Time: Old Hillsbrad Foothills (Boss Loot) - Epoch Hunter (Heroic) - Rare Items (Group 2)');

-- Aeonus - Normal
DELETE FROM `creature_loot_template` WHERE entry=17881 AND `item` IN (40102,40105);
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
('17881','40102','100','0','-40102','1','0','Caverns of Time: The Black Morass (Boss Loot) - Aeonus (Normal and Heroic) - Rare Items (Group 1)'),
('17881','40105','100','0','-40105','1','0','Caverns of Time: The Black Morass (Boss Loot) - Aeonus (Normal and Heroic) - Rare Items (Group 2)');

-- Aeonus - Heroic
DELETE FROM `creature_loot_template` WHERE entry=20737 AND `item` IN (40102,40105);
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
('20737','40102','100','0','-40102','1','0','Caverns of Time: The Black Morass (Boss Loot) - Aeonus (Normal and Heroic) - Rare Items (Group 1)'),
('20737','40105','100','0','-40105','1','0','Caverns of Time: The Black Morass (Boss Loot) - Aeonus (Normal and Heroic) - Rare Items (Group 2)');

DELETE FROM `reference_loot_template` WHERE `entry` IN (40102,40105);
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(40102, 28188, 0, 1, 1, 1, 0, 'Bloodfire Greatstaff'),
(40102, 28189, 0, 1, 1, 1, 0, 'Latro\'s Shifting Sword'),
(40102, 28190, 0, 1, 1, 1, 0, 'Scarab of the Infinite Cycle'),
(40102, 28194, 0, 1, 1, 1, 0, 'Primal Surge Bracers'),
(40102, 28206, 0, 1, 1, 1, 0, 'Cowl of the Guiltless'),
(40102, 28207, 0, 1, 1, 1, 0, 'Pauldrons of the Crimson Flight'),
(40105, 28193, 0, 1, 1, 1, 0, 'Mana-Etched Crown'),
(40105, 27509, 0, 1, 1, 1, 0, 'Handgrips of Assassination'),
(40105, 27873, 0, 1, 1, 1, 0, 'Moonglade Pants'),
(40105, 28192, 0, 1, 1, 1, 0, 'Helm of Desolation'),
(40105, 27977, 0, 1, 1, 1, 0, 'Legplates of the Bold'),
(40105, 27839, 0, 1, 1, 1, 0, 'Legplates of the Righteous');

UPDATE `reference_loot_template_names` SET `name` = 'Caverns of Time: The Black Morass (Boss Loot) - Aeonus (Normal and Heroic) - Rare Items (Group 1)' WHERE `entry` = 40102;
DELETE FROM `reference_loot_template_names` WHERE `entry` = 40105;
INSERT INTO `reference_loot_template_names` (`entry`, `name`) VALUES (40105, 'Caverns of Time: The Black Morass (Boss Loot) - Aeonus (Normal and Heroic) - Rare Items (Group 2)');

-- Pathaleon the Calculator - Normal
DELETE FROM `creature_loot_template` WHERE entry=19220 AND `item` IN (40062,40065);
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
('19220','40062','100','0','-40062','1','0','Tempest Keep: The Mechanar (Boss Loot) - Pathaleon the Calculator (Normal and Heroic) - Rare Items (Group 1)'),
('19220','40065','100','0','-40065','1','0','Tempest Keep: The Mechanar (Boss Loot) - Pathaleon the Calculator (Normal and Heroic) - Rare Items (Group 2)');

-- Pathaleon the Calculator - Heroic
DELETE FROM `creature_loot_template` WHERE entry=21537 AND `item` IN (21907,40062,40065);
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
('21537','21907','5','0','1','1','201','Pattern: Arcanoweave Robe'),
('21537','40062','100','0','-40062','1','0','Tempest Keep: The Mechanar (Boss Loot) - Pathaleon the Calculator (Normal and Heroic) - Rare Items (Group 1)'),
('21537','40065','100','0','-40065','1','0','Tempest Keep: The Mechanar (Boss Loot) - Pathaleon the Calculator (Normal and Heroic) - Rare Items (Group 2)');

DELETE FROM `reference_loot_template` WHERE `entry` IN (40062,40065);
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(40062, 27899, 0, 1, 1, 1, 0, 'Mana Wrath'),
(40062, 28265, 0, 1, 1, 1, 0, 'Dath\'Remar\'s Ring of Defense'),
(40062, 28266, 0, 1, 1, 1, 0, 'Molten Earth Kilt'),
(40062, 28267, 0, 1, 1, 1, 0, 'Edge of the Cosmos'),
(40062, 28269, 0, 1, 1, 1, 0, 'Baba\'s Cloak of Arcanistry'),
(40062, 28288, 0, 1, 1, 1, 0, 'Abacus of Violent Odds'),
(40065, 28278, 0, 1, 1, 1, 0, 'Incanter\'s Cowl'),
(40065, 28202, 0, 1, 1, 1, 0, 'Moonglade Robe'),
(40065, 28204, 0, 1, 1, 1, 0, 'Tunic of Assassination'),
(40065, 28275, 0, 1, 1, 1, 0, 'Beast Lord Helm'),
(40065, 28285, 0, 1, 1, 1, 0, 'Helm of the Righteous'),
(40065, 28286, 0, 1, 1, 1, 0, 'Telescopic Sharprifle');

UPDATE `reference_loot_template_names` SET `name` = 'Tempest Keep: The Mechanar (Boss Loot) - Pathaleon the Calculator (Normal and Heroic) - Rare Items (Group 1)' WHERE `entry` = 40062;
DELETE FROM `reference_loot_template_names` WHERE `entry` = 40065;
INSERT INTO `reference_loot_template_names` (`entry`, `name`) VALUES (40065, 'Tempest Keep: The Mechanar (Boss Loot) - Pathaleon the Calculator (Normal and Heroic) - Rare Items (Group 2)');

-- Warp Splinter - Normal
DELETE FROM `creature_loot_template` WHERE entry=17977 AND `item` IN (40074,40077);
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
('17977','40074','100','0','-40074','1','0','Tempest Keep: The Botanica (Boss Loot) - Warp Splinter (Normal and Heroic) - Rare Items (Group 1)'),
('17977','40077','100','0','-40077','1','0','Tempest Keep: The Botanica (Boss Loot) - Warp Splinter (Normal and Heroic) - Rare Items (Group 2)');

-- Warp Splinter - Heroic
DELETE FROM `creature_loot_template` WHERE entry=21582 AND `item` IN (40074,40077);
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
('21582','40074','100','0','-40074','1','0','Tempest Keep: The Botanica (Boss Loot) - Warp Splinter (Normal and Heroic) - Rare Items (Group 1)'),
('21582','40077','100','0','-40077','1','0','Tempest Keep: The Botanica (Boss Loot) - Warp Splinter (Normal and Heroic) - Rare Items (Group 2)');

DELETE FROM `reference_loot_template` WHERE `entry` IN (40074,40077);
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(40074, 28341, 0, 1, 1, 1, 0, 'Warpstaff of Arcanum'),
(40074, 28342, 0, 1, 1, 1, 0, 'Warp Infused Drape'),
(40074, 28345, 0, 1, 1, 1, 0, 'Warp Splinter\'s Thorn'),
(40074, 28347, 0, 1, 1, 1, 0, 'Warpscale Leggings'),
(40074, 28367, 0, 1, 1, 1, 0, 'Greatsword of Forlorn Visions'),
(40074, 28371, 0, 1, 1, 1, 0, 'Netherfury Cape'),
(40077, 28229, 0, 1, 1, 1, 0, 'Incanter\'s Robe'),
(40077, 28348, 0, 1, 1, 1, 0, 'Moonglade Cowl'),
(40077, 28349, 0, 1, 1, 1, 0, 'Tidefury Helm'),
(40077, 28228, 0, 1, 1, 1, 0, 'Beast Lord Cuirass'),
(40077, 28350, 0, 1, 1, 1, 0, 'Warhelm of the Bold'),
(40077, 28343, 0, 1, 1, 1, 0, 'Jagged Bark Pendant'),
(40077, 28370, 0, 1, 1, 1, 0, 'Bangle of Endless Blessings');

UPDATE `reference_loot_template_names` SET `name` = 'Tempest Keep: The Botanica (Boss Loot) - Warp Splinter (Normal and Heroic) - Rare Items (Group 1)' WHERE `entry` = 40074;
DELETE FROM `reference_loot_template_names` WHERE `entry` = 40077;
INSERT INTO `reference_loot_template_names` (`entry`, `name`) VALUES (40077, 'Tempest Keep: The Botanica (Boss Loot) - Warp Splinter (Normal and Heroic) - Rare Items (Group 2)');

-- Harbinger Skyriss - Normal
DELETE FROM `creature_loot_template` WHERE entry=20912 AND `item` IN (40083,40086);
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
('20912','40083','100','0','-40083','1','0','Tempest Keep: The Arcatraz (Boss Loot) - Harbinger Skyriss (Normal and Heroic) - Rare Items (Group 1)'),
('20912','40086','100','0','-40086','1','0','Tempest Keep: The Arcatraz (Boss Loot) - Harbinger Skyriss (Normal and Heroic) - Rare Items (Group 2)');

-- Harbinger Skyriss - Heroic
DELETE FROM `creature_loot_template` WHERE entry=21599 AND `item` IN (40083,40086);
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
('21599','40083','100','0','-40083','1','0','Tempest Keep: The Arcatraz (Boss Loot) - Harbinger Skyriss (Normal and Heroic) - Rare Items (Group 1)'),
('21599','40086','100','0','-40086','1','0','Tempest Keep: The Arcatraz (Boss Loot) - Harbinger Skyriss (Normal and Heroic) - Rare Items (Group 2)');

DELETE FROM `reference_loot_template` WHERE `entry` IN (40083,40086);
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(40083, 28406, 0, 1, 1, 1, 0, 'Sigil-Laced Boots'),
(40083, 28407, 0, 1, 1, 1, 0, 'Elementium Band of the Sentry'),
(40083, 28412, 0, 1, 1, 1, 0, 'Lamp of Peaceful Radiance'),
(40083, 28416, 0, 1, 1, 1, 0, 'Hungering Spineripper'),
(40083, 28418, 0, 1, 1, 1, 0, 'Shiffar\'s Nexus-Horn'),
(40083, 28419, 0, 1, 1, 1, 0, 'Choker of Fluid Thought'),
(40086, 28413, 0, 1, 1, 1, 0, 'Hallowed Crown'),
(40086, 28415, 0, 1, 1, 1, 0, 'Hood of Oblivion'),
(40086, 28414, 0, 1, 1, 1, 0, 'Helm of Assassination'),
(40086, 28231, 0, 1, 1, 1, 0, 'Tidefury Chestpiece'),
(40086, 28403, 0, 1, 1, 1, 0, 'Doomplate Chestguard'),
(40086, 28205, 0, 1, 1, 1, 0, 'Breastplate of the Bold');

UPDATE `reference_loot_template_names` SET `name` = 'Tempest Keep: The Arcatraz (Boss Loot) - Harbinger Skyriss (Normal and Heroic) - Rare Items (Group 1)' WHERE `entry` = 40083;
DELETE FROM `reference_loot_template_names` WHERE `entry` = 40086;
INSERT INTO `reference_loot_template_names` (`entry`, `name`) VALUES (40086, 'Tempest Keep: The Arcatraz (Boss Loot) - Harbinger Skyriss (Normal and Heroic) - Rare Items (Group 2)');

-- Kael'thas Sunstrider - Normal
DELETE FROM `creature_loot_template` WHERE entry=24664;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
('24664','34157','-100','0','1','1','0','Head of Kael\'thas'),
('24664','35516','2','0','1','1','497','Sun Touched Satchel'),
('24664','35504','8','0','1','1','0','Phoenix Hatchling'),
('24664','40156','100','0','-40156','1','0','Magisters Terrace (Boss Loot) - Kael\'thas Sunstrider (Normal) - Rare Items'),
('24664','40157','100','0','-40157','1','0','Magisters Terrace (Boss Loot) - Kael\'thas Sunstrider (Normal) - Epic Items'),
('24664','40160','5','0','-40160','1','0','Magisters Terrace (Boss Loot) - Kael\'thas Sunstrider - BoP Recipes');

-- Kael'thas Sunstrider - Heroic
DELETE FROM `creature_loot_template` WHERE entry=24857;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUE
('24857','34157','-100','0','1','1','0','Head of Kael\'thas'),
('24857','34160','-100','0','1','1','0','The Signet Ring of Prince Kael\'thas'),
('24857','29434','100','0','1','1','0','Badge of Justice'),
('24857','23572','100','0','1','1','0','Primal Nether'),
('24857','35516','2','0','1','1','497','Sun Touched Satchel'),
('24857','35275','3','0','1','1','0','Orb of the Sin\'dorei'),
('24857','35504','8','0','1','1','0','Phoenix Hatchling'),
('24857','35513','4','0','1','1','0','Swift White Hawkstrider'),
('24857','40158','100','1','-40158','1','0','Magisters Terrace (Boss Loot) - Kael\'thas Sunstrider (Heroic) - Epic Items (Group 1)'),
('24857','40159','100','1','-40159','1','0','Magisters Terrace (Boss Loot) - Kael\'thas Sunstrider (Heroic) - Epic Items (Group 2)'),
('24857','40160','5','0','-40160','1','0','Magisters Terrace (Boss Loot) - Kael\'thas Sunstrider - BoP Recipes');

DELETE FROM `reference_loot_template` WHERE `entry` IN (40158,40159,40160);
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUE
(40158, 34609, 0, 1, 1, 1, 0, 'Quickening Blade of the Prince'),
(40158, 34611, 0, 1, 1, 1, 0, 'Cudgel of Consecration'),
(40158, 34616, 0, 1, 1, 1, 0, 'Breeching Comet'),
(40158, 34612, 0, 1, 1, 1, 0, 'Greaves of the Penitent Knight'),
(40159, 34610, 0, 1, 1, 1, 0, 'Scarlet Sin\'dorei Robes'),
(40159, 34613, 0, 1, 1, 1, 0, 'Shoulderpads of the Silvermoon Retainer'),
(40159, 34614, 0, 1, 1, 1, 0, 'Tunic of the Ranger Lord'),
(40159, 34615, 0, 1, 1, 1, 0, 'Netherforce Chestplate'),
(40160, 35294, 0, 1, 1, 1, 198, 'Recipe: Elixir of Empowerment'),
(40160, 35295, 0, 1, 1, 1, 198, 'Recipe: Haste Potion'),
(40160, 35297, 0, 1, 1, 1, 203, 'Formula: Enchant Boots - Boar\'s Speed'),
(40160, 35298, 0, 1, 1, 1, 203, 'Formula: Enchant Boots - Vitality'),
(40160, 35299, 0, 1, 1, 1, 203, 'Formula: Enchant Boots - Cat\'s Swiftness'),
(40160, 35300, 0, 1, 1, 1, 199, 'Pattern: Windstrike Gloves'),
(40160, 35301, 0, 1, 1, 1, 199, 'Pattern: Netherdrake Gloves'),
(40160, 35302, 0, 1, 1, 1, 199, 'Pattern: Cobrascale Gloves'),
(40160, 35303, 0, 1, 1, 1, 199, 'Pattern: Gloves of the Living Touch'),
(40160, 35304, 0, 1, 1, 1, 204, 'Design: Solid Star of Elune'),
(40160, 35305, 0, 1, 1, 1, 204, 'Design: Runed Living Ruby'),
(40160, 35306, 0, 1, 1, 1, 204, 'Design: Bright Living Ruby'),
(40160, 35307, 0, 1, 1, 1, 204, 'Design: Rigid Dawnstone'),
(40160, 35308, 0, 1, 1, 1, 201, 'Pattern: Unyielding Bracers'),
(40160, 35309, 0, 1, 1, 1, 201, 'Pattern: Unyielding Girdle'),
(40160, 35310, 0, 1, 1, 1, 202, 'Schematic: Healing Potion Injector'),
(40160, 35311, 0, 1, 1, 1, 202, 'Schematic: Mana Potion Injector');

UPDATE `reference_loot_template_names` SET `name` = 'Magisters Terrace (Boss Loot) - Kael\'thas Sunstrider (Heroic) - Epic Items (Group 1)' WHERE `entry` = 40158;
UPDATE `reference_loot_template_names` SET `name` = 'Magisters Terrace (Boss Loot) - Kael\'thas Sunstrider (Heroic) - Epic Items (Group 2)' WHERE `entry` = 40159;
DELETE FROM `reference_loot_template_names` WHERE `entry` = 40160;
INSERT INTO `reference_loot_template_names` (`entry`, `name`) VALUES (40160, 'Magisters Terrace (Boss Loot) - Kael\'thas Sunstrider - BoP Recipes');

