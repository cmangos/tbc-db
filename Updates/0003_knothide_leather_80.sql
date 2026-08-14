-- Improve SkinningLootId for Knothide Leather = 80%
-- Knothide Leather Scraps (2-3) 20%, Nether Residue 25% (will often times not show due to quest)
-- https://www.wowhead.com/tbc/item=21887/knothide-leather#skinned-from - 80%
UPDATE `creature_template` SET `SkinningLootId` = 70068 WHERE `entry` IN (
21956, -- https://www.wowhead.com/tbc/npc=21956/rema#skinning
20610, -- https://www.wowhead.com/tbc/npc=20610/talbuk-doe#skinning
18105, -- https://www.wowhead.com/tbc/npc=18105/ghazan#skinning
20168, -- Ghaz'an (1)
20773, -- https://www.wowhead.com/tbc/npc=20773/barbscale-crocolisk#skinning
21033, -- https://www.wowhead.com/tbc/npc=21033/bladewing-bloodletter#skinning
21195, -- https://www.wowhead.com/tbc/npc=21195/domesticated-felboar#skinning
21124, -- https://www.wowhead.com/tbc/npc=21124/felsworn-daggermaw#skinning
18171, -- https://www.wowhead.com/tbc/npc=18171/infinite-defiler#skinning
20532, -- Infinite Defiler (1)
-- 18982, -- https://www.wowhead.com/tbc/npc=18982/sable-jaguar#skinning - reworked
-- 18094, -- https://www.wowhead.com/tbc/npc=18094/tarren-mill-lookout#skinning - Transform
21387, -- https://www.wowhead.com/tbc/npc=21387/wyrmcult-blackwhelp#skinning - apply new template
18096, -- https://www.wowhead.com/tbc/npc=18096/epoch-hunter#skinning
20531, -- Epoch Hunter (1)
20330, -- https://www.wowhead.com/tbc/npc=20330/bloodmaul-battle-worg#skinning
19428, -- https://www.wowhead.com/tbc/npc=19428/cobalt-serpent#skinning
20688, -- Cobalt Serpent (1)
20751, -- https://www.wowhead.com/tbc/npc=20751/daggermaw-lashtail#skinning
-- 17952, -- https://www.wowhead.com/tbc/npc=17952/darkwater-crocolisk#skinning - reworked
21878, -- https://www.wowhead.com/tbc/npc=21878/felboar#skinning
21408, -- https://www.wowhead.com/tbc/npc=21408/felfire-diemetradon#skinning
20713, -- https://www.wowhead.com/tbc/npc=20713/fey-drake#skinning
21462, -- https://www.wowhead.com/tbc/npc=21462/greater-felfire-diemetradon#skinning
21022, -- https://www.wowhead.com/tbc/npc=21022/grovestalker-lynx#skinning
22807, -- https://www.wowhead.com/tbc/npc=22807/lost-torranche#skinning
21901, -- https://www.wowhead.com/tbc/npc=21901/netherskate#skinning
18879, -- https://www.wowhead.com/tbc/npc=18879/phase-hunter#skinning
24922, -- https://www.wowhead.com/tbc/npc=24922/razorthorn-ravager#skinning
20671, -- https://www.wowhead.com/tbc/npc=20671/ripfang-lynx#skinning
21864, -- https://www.wowhead.com/tbc/npc=21864/scorchshell-pincer#skinning
17130, -- https://www.wowhead.com/tbc/npc=17130/talbuk-stag#skinning
17131, -- https://www.wowhead.com/tbc/npc=17131/talbuk-thorngrazer#skinning
20777, -- https://www.wowhead.com/tbc/npc=20777/talbuk-sire#skinning
-- 18092, -- https://www.wowhead.com/tbc/npc=18092/tarren-mill-guardsman#skinning - Transform
20748, -- https://www.wowhead.com/tbc/npc=20748/thunderlord-dire-wolf#skinning
18334, -- https://www.wowhead.com/tbc/npc=18334/wild-elekk#skinning
20728, -- https://www.wowhead.com/tbc/npc=20728/bladespire-raptor#skinning
18289, -- https://www.wowhead.com/tbc/npc=18289/bull-elekk#skinning
18172, -- https://www.wowhead.com/tbc/npc=18172/infinite-saboteur#skinning
20533, -- Infinite Saboteur (1)
18880, -- https://www.wowhead.com/tbc/npc=18880/nether-ray#skinning
20634, -- https://www.wowhead.com/tbc/npc=20634/scythetooth-raptor#skinning
-- 18093, -- https://www.wowhead.com/tbc/npc=18093/tarren-mill-protector#skinning - Transform
21879, -- https://www.wowhead.com/tbc/npc=21879/vilewing-chimaera#skinning
21897, -- https://www.wowhead.com/tbc/npc=21897/felspine-the-greater#skinning
18170, -- https://www.wowhead.com/tbc/npc=18170/infinite-slayer#skinning
20534, -- Infinite Slayer (1)
22052, -- https://www.wowhead.com/tbc/npc=22052/daggermaw-blackhide#skinning
18290, -- https://www.wowhead.com/tbc/npc=18290/tusker#skinning
-- 23834, -- https://www.wowhead.com/tbc/npc=23834/amani-dragonhawk#skinning - different
20775, -- https://www.wowhead.com/tbc/npc=20775/markaru#skinning - apply new template
-- Remaining mobs that had 70063, but dont exist (anymore)
17144, -- Goretooth	70063
18226, -- Talbuk Patriarch	70063
19595, -- Drained Phase Hunter	70063
20932, -- Nuramoc	70063
22257 -- Deathlash Stinger	70063
);

DELETE FROM `skinning_loot_template` WHERE `entry` IN (70063,21387,20775,70068);
INSERT INTO `skinning_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(70068, 21887, 80, 1, 1, 1, 0, 'Knothide Leather'),
(70068, 25649, 20, 1, 1, 3, 0, 'Knothide Leather Scraps'),
(70068, 35229, -25, 0, 1, 1, 0, 'Nether Residue');

