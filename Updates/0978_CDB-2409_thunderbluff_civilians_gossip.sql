-- Adding Game event entries

INSERT INTO `game_event_creature_data` (`guid`, `entry_id`, `modelid`, `equipment_id`, `spell_start`, `spell_end`, `event`) VALUES
-- Vendors
(26576, 0, 0, 0, 27654, 0, 8), -- Pakwa
(26573, 0, 0, 0, 27654, 0, 8), -- Kuruk
(26575, 0, 0, 0, 27654, 0, 8), -- Shadi Mistrunner
(26617, 0, 0, 0, 27654, 0, 8), -- Jyn Stonehoof
(26569, 0, 0, 0, 27654, 0, 8), -- Elki
(26565, 0, 0, 0, 27654, 0, 8), -- Hewa
(26572, 0, 0, 0, 27654, 0, 8), -- Chepi
(26622, 0, 0, 0, 27654, 0, 8), -- Fyr Mistrunner
(26621, 0, 0, 0, 27654, 0, 8), -- Kurm Stonehoof
(26619, 0, 0, 0, 27654, 0, 8), -- Taur Stonehoof
(26635, 0, 0, 0, 27654, 0, 8), -- Tand
(26629, 0, 0, 0, 27654, 0, 8), -- Mani Winterhoof
(26631, 0, 0, 0, 27654, 0, 8), -- Nata Dawnstrider
(26624, 0, 0, 0, 27654, 0, 8), -- Mahu
(24710, 0, 0, 0, 27654, 0, 8), -- Tagain
(24712, 0, 0, 0, 27654, 0, 8), -- Fela
(24711, 0, 0, 0, 27654, 0, 8), -- Grod
(26634, 0, 0, 0, 27654, 0, 8), -- Kuna Thunderhorn
(26636, 0, 0, 0, 27654, 0, 8), -- Nan Mistrunner
(26633, 0, 0, 0, 27654, 0, 8), -- Nida Winterhoof
(26641, 0, 0, 0, 27654, 0, 8), -- Sunn Ragetotem
(26648, 0, 0, 0, 27654, 0, 8), -- Kaga Mistrunner
(26653, 0, 0, 0, 27654, 0, 8), -- Sewa Mistrunner
(26637, 0, 0, 0, 27654, 0, 8), -- Hogor Thunderhoof
(26638, 0, 0, 0, 27654, 0, 8), -- Delgo Ragetotem
(26639, 0, 0, 0, 27654, 0, 8), -- Etu Ragetotem
(26642, 0, 0, 0, 27654, 0, 8), -- Ohanko
(26640, 0, 0, 0, 27654, 0, 8), -- Kard Ragetotem
(26645, 0, 0, 0, 27654, 0, 8), -- Sura Wildmane
(26650, 0, 0, 0, 27654, 0, 8), -- Naal Mistrunner
-- Questgivers
(24933, 0, 0, 0, 27654, 0, 8), -- Sage Truthseeker
(24778, 0, 0, 0, 27654, 0, 8), -- Auld Stonespire
(26574, 0, 0, 0, 27654, 0, 8), -- Eyahn Eagletalon
(24678, 0, 0, 0, 27654, 0, 8), -- Orm Stonehoof
(26777, 0, 0, 0, 27654, 0, 8), -- Veren Tallstrider
(24790, 0, 0, 0, 27654, 0, 8), -- Zangen Stonehoof
(26567, 0, 0, 0, 27654, 0, 8), -- Clarice Foster
(24707, 0, 0, 0, 27654, 0, 8), -- Xanis Flameweaver
(24934, 0, 0, 0, 27654, 0, 8), -- Nara Wildmane
-- Non Questgiver/Vendors
(26646, 0, 0, 0, 27654, 0, 8), -- Tah Winterhoof
(26792, 0, 0, 0, 27654, 0, 8), -- Pawe Mistrunner
(26754, 0, 0, 0, 27654, 0, 8); -- Sheza Wildmane

-- Adding/Removing Gossip Options
-- Vendors
-- Pakwa
UPDATE creature_template SET GossipMenuId=12856 WHERE Entry=8364;  

-- Kuruk
UPDATE creature_template SET GossipMenuId=12857 WHERE Entry=8362; 

-- Shadi Mistrunner
UPDATE creature_template SET GossipMenuId=12856 WHERE Entry=8363;

-- Jyn Stonehoof
UPDATE creature_template SET GossipMenuId=12856 WHERE Entry=2997;

-- Elki
UPDATE creature_template SET GossipMenuId=12857 WHERE Entry=8360; 

-- Hewa
UPDATE creature_template SET GossipMenuId=12857 WHERE Entry=8358;

-- Chepi
UPDATE creature_template SET GossipMenuId=12856 WHERE Entry=8361;

-- Fyr Mistrunner
UPDATE creature_template SET GossipMenuId=12856 WHERE Entry=3003;

-- Kurm Stonehoof
UPDATE creature_template SET GossipMenuId=12857 WHERE Entry=3002;

-- Taur Stonehoof
UPDATE creature_template SET GossipMenuId=12857 WHERE Entry=2999;

-- Tand
UPDATE creature_template SET GossipMenuId=12857 WHERE Entry=3016;

-- Mani Winterhoof
UPDATE creature_template SET GossipMenuId=12856 WHERE Entry=3010;

-- Nata Dawnstrider
UPDATE creature_template SET GossipMenuId=12856 WHERE Entry=3012;

-- Mahu
UPDATE creature_template SET GossipMenuId=12857 WHERE Entry=3005;

-- Tagain
UPDATE creature_template SET GossipMenuId=12856 WHERE Entry=3092;

-- Fela
UPDATE creature_template SET GossipMenuId=12856 WHERE Entry=3095;

-- Grod
UPDATE creature_template SET GossipMenuId=12857 WHERE Entry=3093;

-- Kuna Thinderhorn
UPDATE creature_template SET GossipMenuId=12856 WHERE Entry=3015;

-- Nan Mistrunner
UPDATE creature_template SET GossipMenuId=12856 WHERE Entry=3017;

-- Nida Winterhoof
UPDATE creature_template SET GossipMenuId=12856 WHERE Entry=3014;

-- Sunn Ragetotem
UPDATE creature_template SET GossipMenuId=12856 WHERE Entry=3022;

-- Kaga Mistrunner
UPDATE creature_template SET GossipMenuId=12856 WHERE Entry=3025;

-- Sewa Mistrunner
UPDATE creature_template SET GossipMenuId=12856 WHERE Entry=3029;

-- Hogor Thunderhoof
UPDATE creature_template SET GossipMenuId=12857 WHERE Entry=3018;

-- Delgo Ragetotem
UPDATE creature_template SET GossipMenuId=12857 WHERE Entry=3019;

-- Etu Ragetotem
UPDATE creature_template SET GossipMenuId=12857 WHERE Entry=3020;

-- Ohanko
UPDATE creature_template SET GossipMenuId=12857 WHERE Entry=8398;

-- Kard Ragetotem
UPDATE creature_template SET GossipMenuId=12857 WHERE Entry=3021;

-- Sura Wildmane
UPDATE creature_template SET GossipMenuId=12856 WHERE Entry=3023;

-- Naal Mistrunner
UPDATE creature_template SET GossipMenuId=12857 WHERE Entry=3027;

-- Questgivers
-- Sage Truthseeker
UPDATE creature_template SET GossipMenuId=12857 WHERE Entry=3978;

-- Auld Stonespire
UPDATE creature_template SET GossipMenuId=12857 WHERE Entry=4451;

-- Eyahn Eagletalon
UPDATE creature_template SET GossipMenuId=12857 WHERE Entry=2987;

-- Orm Stonehoof
UPDATE creature_template SET GossipMenuId=12857 WHERE Entry=6410;

-- Veren Tallstrider
UPDATE creature_template SET GossipMenuId=12857 WHERE Entry=3050;

-- Zangen Stonehoof
UPDATE creature_template SET GossipMenuId=12857 WHERE Entry=4721;

-- Clarice Foster
UPDATE creature_template SET GossipMenuId=12858 WHERE Entry=5543;

-- Xanis Flameweaver
UPDATE creature_template SET GossipMenuId=12857 WHERE Entry=5906;

-- Nara Wildmane
UPDATE creature_template SET GossipMenuId=12856 WHERE Entry=5770;

-- Non Questgiver/Vendors
-- Tah Winterhoof
UPDATE creature_template SET GossipMenuId=12857 WHERE Entry=3024;

-- Pawe Mistrunner
UPDATE creature_template SET GossipMenuId=12856 WHERE Entry=3447;

-- Sheza Wildmane
UPDATE creature_template SET GossipMenuId=12856 WHERE Entry=3037;

-- Ahanu, Thrumn, Krumn, Apothecary Zamrah, Saern Priderunner, Bluff Runner Windstrider(specific gossip), Magatha, Cor and Gorm Grimtotem, Hamuul Runetotem, Rahauro, Kon Yelloweyes + Melor Stonehoof + Henen Ragetotem + Mosarn(faction 83)


