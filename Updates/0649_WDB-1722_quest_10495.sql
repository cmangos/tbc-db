-- Mokvar missing quest added
-- part of Dungeon Set 1
-- align with wotlk-db data
-- Mokvar 16012
-- Deliana 16013
-- Anthion Harmon 16016
DELETE FROM creature_involvedrelation WHERE id = 16012 AND quest IN (10495,10497,10499);
DELETE FROM creature_involvedrelation WHERE id = 16013 AND quest IN (10496,10498);
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES
(16012, 10495), -- Bring a Lightforge Belt and a set of Lightforge Gauntlets to Mokvar in Orgrimmar.
(16012, 10497), -- Return to Mokvar in Orgimmar with a set of Lightforge Boots, Lightforge Legplates and Lightforge Spaulders.
(16012, 10499), -- Give Mokvar your Lightforge Helm and Lightforge Breastplate.
(16013, 10496), -- Return to Deliana in Ironforge with a set of Boots of Elements, a Kilt of Elements and Pauldrons of Elements.
(16013, 10498); -- Give Deliana your Coif of Elements and Vest of Elements.

DELETE FROM creature_questrelation WHERE id = 16012 AND quest IN (10495,10499);
DELETE FROM creature_questrelation WHERE id = 16013 AND quest = 10498;
DELETE FROM creature_questrelation WHERE id = 16016 AND quest IN (10496,10497);
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES
(16012, 10495),
(16012, 10499),
(16013, 10498),
(16016, 10496), -- Start: Anthion Harmon
(16016, 10497); -- Start: Anthion Harmon

