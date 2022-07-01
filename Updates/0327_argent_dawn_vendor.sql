-- Add missing Mantles of the Dawn items to Argent Dawn Vendors after completing quest 5504
-- https://tbc.wowhead.com/item=18169/flame-mantle-of-the-dawn#comments:id=3166975
-- https://tbc.wowhead.com/quest=5504/mantles-of-the-dawn
-- 905	-2	903	904	0	0	0	(Quest ID 5504 Rewarded OR (Quest ID 5513 Rewarded OR Quest ID 5507 Rewarded))

-- https://tbc.wowhead.com/item=18182/chromatic-mantle-of-the-dawn
-- 910	-2	908	909	0	0	0	(Quest ID 5517 Rewarded OR (Quest ID 5524 Rewarded OR Quest ID 5521 Rewarded))
DELETE FROM `npc_vendor` WHERE `entry` IN (10857,11536) AND `item` IN (18169,18170,18171,18172,18173,18182); -- add to template used by all 3 npcs
DELETE FROM `npc_vendor_template` WHERE `entry` = 10 AND `item` IN (18169,18170,18171,18172,18173,18182);
INSERT INTO `npc_vendor_template` (`entry`, `item`, `condition_id`) VALUES
(10, 18169, 905),(10, 18170, 905),(10, 18171, 905),(10, 18172, 905),(10, 18173, 905),(10, 18182, 910);

