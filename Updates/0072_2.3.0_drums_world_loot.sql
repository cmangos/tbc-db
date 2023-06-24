-- delete i.29714 from 50501, removed i later tbc when the item was made available through faction purchase.
-- patch 2.3: Drums of Speed and Drums of Restoration are no longer world drop recipes, and can now be obtained from the Mag'har and Kurenai faction vendors with revered standing.
DELETE FROM `reference_loot_template` WHERE `item` IN (29714,29718) AND `entry` = 50501;

