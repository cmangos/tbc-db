-- ================================================
-- Fix / Properly Implement "A Crazy Grab Bag" Loot
-- ================================================
DELETE FROM item_loot_template WHERE entry IN (15902);
insert into `item_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('15902','44000','100','0','-44000','1','0','A Crazy Grab Bag');

-- This Data Was Added Directly To File 121 (Master Reference Loot Table)
/*
DELETE FROM reference_loot_template WHERE entry IN (44000);
insert into `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('44000','10086','5','0','1','1','0','Gothic Plate Armor');
insert into `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('44000','7531','3','0','1','1','0','Cabalist Boots');
insert into `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('44000','7523','3','0','1','1','0','Gossamer Shoulderpads');
insert into `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('44000','7532','2','0','1','1','0','Cabalist Spaulders');
insert into `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('44000','7540','2','0','1','1','0','Champion\'s Helmet');
insert into `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('44000','7525','2','0','1','1','0','Gossamer Bracers');
insert into `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('44000','7332','2','0','1','1','0','Regal Armor');
insert into `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('44000','10127','2','0','1','1','0','Revenant Bracers');
insert into `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('44000','7528','1.7','0','1','1','0','Cabalist Leggings');
insert into `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('44000','10079','1.7','0','1','1','0','Lord\'s Cape');
insert into `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('44000','7530','1.5','0','1','1','0','Cabalist Gloves');
insert into `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('44000','7519','1.5','0','1','1','0','Gossamer Pants');
insert into `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('44000','10091','1.5','0','1','1','0','Gothic Plate Leggings');
insert into `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('44000','10205','1.5','0','1','1','0','Overlord\'s Gauntlets');
insert into `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('44000','9912','1.5','0','1','1','0','Royal Amice');
insert into `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('44000','9911','1.5','0','1','1','0','Royal Trousers');
insert into `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('44000','9936','1.3','0','1','1','0','Abjurer\'s Boots');
insert into `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('44000','9945','1.3','0','1','1','0','Abjurer\'s Sash');
insert into `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('44000','9951','1.3','0','1','1','0','Chieftain\'s Cloak');
insert into `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('44000','7520','1.3','0','1','1','0','Gossamer Headpiece');
insert into `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('44000','10092','1.3','0','1','1','0','Gothic Plate Spaulders');
insert into `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('44000','7477','1.3','0','1','1','0','Ranger Tunic');
insert into `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('44000','9913','1.3','0','1','1','0','Royal Gown');
insert into `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('44000','9962','1.3','0','1','1','0','Warmonger\'s Greaves');
insert into `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('44000','7529','1.1','0','1','1','0','Cabalist Helm');
insert into `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('44000','7522','1.1','0','1','1','0','Gossamer Boots');
insert into `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('44000','10087','1.1','0','1','1','0','Gothic Plate Gauntlets');
insert into `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('44000','10094','1.1','0','1','1','0','Gothic Plate Vambraces');
insert into `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('44000','10201','1.1','0','1','1','0','Overlord\'s Greaves');
insert into `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('44000','9960','1.1','0','1','1','0','Warmonger\'s Gauntlets');
insert into `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('44000','9938','0.9','0','1','1','0','Abjurer\'s Cloak');
insert into `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('44000','9928','0.9','0','1','1','0','Brigade Breastplate');
insert into `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('44000','7545','0.9','0','1','1','0','Champion\'s Bracers');
insert into `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('44000','7541','0.9','0','1','1','0','Champion\'s Gauntlets');
insert into `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('44000','7543','0.9','0','1','1','0','Champion\'s Pauldrons');
insert into `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('44000','9947','0.9','0','1','1','0','Chieftain\'s Belt');
insert into `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('44000','9948','0.9','0','1','1','0','Chieftain\'s Boots');
insert into `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('44000','9952','0.9','0','1','1','0','Chieftain\'s Gloves');
insert into `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('44000','7526','0.9','0','1','1','0','Gossamer Belt');
insert into `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('44000','7521','0.9','0','1','1','0','Gossamer Gloves');
insert into `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('44000','10088','0.9','0','1','1','0','Gothic Plate Girdle');
insert into `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('44000','7468','0.9','0','1','1','0','Regal Robe');
insert into `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('44000','10069','0.9','0','1','1','0','Righteous Bracers');
insert into `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('44000','10067','0.9','0','1','1','0','Righteous Waistguard');
insert into `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('44000','9922','0.9','0','1','1','0','Tracker\'s Leggings');
insert into `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('44000','9961','0.9','0','1','1','0','Warmonger\'s Belt');
insert into `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('44000','10076','0.7','0','1','1','0','Lord\'s Armguards');
insert into `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('44000','10206','0.7','0','1','1','0','Overlord\'s Girdle');
insert into `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('44000','9915','0.7','0','1','1','0','Royal Headband');
*/

