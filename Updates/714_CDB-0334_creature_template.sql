-- Removed wrong gossip from creature 5637 (Roetten Stonehammer) because he was
-- claiming that his Barren's wyverns were the fastest though he is a dwarf...
UPDATE `creature_template` SET `GossipMenuId` = 0, `NPCFlags` = 2 WHERE `entry` = 5637;

