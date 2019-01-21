-- Remove Darkmoon Cards 2-4 from "normal or wrong" creature_loot_template entrys
DELETE FROM `creature_loot_template` WHERE `item` IN (31885,31888,31889,31895,31899,31900,31904,31908,31909,31913,31917,31918,49002) AND `entry` IN (
23264, -- Overmine Flayer
23285, -- Nethermine Burster
23188, -- Dragonmaw Transporter
23008, -- Ethereum Jailor
23324, -- Crazed Murkblood Miner
23305, -- Crazed Murkblood Foreman
18207, -- Murkblood Scavenger
23169, -- Nethermine Flayer
23311 -- Disobedient Dragonmaw Peon
);

INSERT INTO creature_loot_template (entry, item, ChanceOrQuestChance, groupid, mincountOrRef, maxcount, condition_id, comments) VALUES
(23188, 49002, 0.1, 0, -49002, 1, 0, 'Darkmoon Cards (Blessings, Storms, Furies, Lunacy 2-4) - Not In Dungeons and Raids'), -- Dragonmaw Transporter
(23324, 49002, 0.1, 0, -49002, 1, 0, 'Darkmoon Cards (Blessings, Storms, Furies, Lunacy 2-4) - Not In Dungeons and Raids'); -- Crazed Murkblood Miner

