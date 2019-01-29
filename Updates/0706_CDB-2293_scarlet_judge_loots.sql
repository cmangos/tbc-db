-- Add name to reference_loot_template 34003 used by world bosses
DELETE FROM reference_loot_template_names WHERE entry=34003;
INSERT INTO reference_loot_template_names (entry, name) VALUES
(34003, 'NPC LOOT (Green NPC Loot) - Classic World bosses and dragons');
-- Populate comments for related loot tables
UPDATE creature_loot_template SET comments='NPC LOOT (Green NPC Loot) - Classic World bosses and dragons' WHERE `mincountOrRef` = -34003;

-- Add reference_loot_template for NPC 1837 (Scarlet Judge)
-- It is probably used by other high level NPCs
DELETE FROM reference_loot_template WHERE entry=34010;
INSERT INTO reference_loot_template (entry, chanceorquestchance, groupid, item, comments) VALUES
(34010, 0, 1, 10136, 'High Councillor\'s Bracers'),
(34010, 0, 1, 10137, 'High Councillor\'s Boots'),
(34010, 0, 1, 10141, 'High Councillor\'s Pants'),
(34010, 0, 1, 10144, 'High Councillor\'s Sash'),
(34010, 0, 1, 10145, 'Mighty Girdle'),
(34010, 0, 1, 10147, 'Mighty Armsplints'),
(34010, 0, 1, 10154, 'Mercurial Girdle'),
(34010, 0, 1, 10155, 'Mercurial Greaves'),
(34010, 0, 1, 10156, 'Mercurial Bracers'),
(34010, 0, 1, 10159, 'Mercurial Cloak'),
(34010, 0, 1, 10161, 'Mercurial Gauntlets'),
(34010, 0, 1, 10163, 'Mercurial Pauldrons'),
(34010, 0, 1, 10222, 'Nightshade Boots'),
(34010, 0, 1, 10225, 'Nightshade Gloves'),
(34010, 0, 1, 10226, 'Nightshade Helmet'),
(34010, 0, 1, 10228, 'Nightshade Spaulders'),
(34010, 0, 1, 10230, 'Engraved Breastplate'),
(34010, 0, 1, 10247, 'Master\'s Boots'),
(34010, 0, 1, 10249, 'Master\'s Cloak'),
(34010, 0, 1, 10253, 'Master\'s Mantle'),
(34010, 0, 1, 10255, 'Master\'s Belt'),
(34010, 0, 1, 10256, 'Adventurer\'s Bracers'),
(34010, 0, 1, 10258, 'Adventurer\'s Cape'),
(34010, 0, 1, 10267, 'Masterwork Cape'),
(34010, 0, 1, 10270, 'Masterwork Boots'),
(34010, 0, 1, 10275, 'Emerald Breastplate'),
(34010, 0, 1, 10373, 'Imbued Plate Leggings'),
(34010, 0, 1, 10376, 'Commander\'s Boots'),
(34010, 0, 1, 10377, 'Commander\'s Vambraces'),
(34010, 0, 1, 10380, 'Commander\'s Gauntlets'),
(34010, 0, 1, 10381, 'Commander\'s Girdle'),
(34010, 0, 1, 10382, 'Commander\'s Leggings'),
(34010, 0, 1, 10391, 'Hyperion Vambraces');

