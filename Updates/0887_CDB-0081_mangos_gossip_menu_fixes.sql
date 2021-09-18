-- Adds missing gossip menu directing players to the right weapon master when asking where to train
-- Source: https://wowwiki-archive.fandom.com/wiki/Weapon_master?oldid=1587940

-- Adds the correct gossip_menu id to each of the weapon masters
-- Horde Weapon Masters
UPDATE creature_template SET gossipmenuid=5221 WHERE entry=11868; -- Sayoc
UPDATE creature_template SET gossipmenuid=5263 WHERE entry=2704;  -- Hanashi
UPDATE creature_template SET gossipmenuid=5266 WHERE entry=11869; -- Ansekhwa
UPDATE creature_template SET gossipmenuid=5269 WHERE entry=11870; -- Archibald
UPDATE creature_template SET gossipmenuid=8612, `npcflags` = `npcflags`|1 WHERE entry=16621; -- Ileda (Bloodelf) (TDB)
UPDATE creature_template SET gossipmenuid=7337 WHERE entry=17005; -- Duelist Larenis <Weapon Master> (WDB)

-- Alliance Weapon Masters
UPDATE creature_template SET gossipmenuid=5271 WHERE entry=11867; -- Woo Ping
UPDATE creature_template SET gossipmenuid=5273 WHERE entry=11866; -- Ilyenia
UPDATE creature_template SET gossipmenuid=5275 WHERE entry=11865; -- Buliwyf
UPDATE creature_template SET gossipmenuid=5277 WHERE entry=13084; -- Bixi
UPDATE creature_template SET gossipmenuid=8591 WHERE entry=16773; -- Handiir (Draenei) (TDB)

-- weapon masters when asking where to train in other weapons
DELETE FROM `gossip_menu` WHERE `entry` IN (5272,5274,5276,7337);
DELETE FROM `gossip_menu` WHERE `text_id` NOT IN (10752,10769) AND `text_id` BETWEEN 10748 AND 10790;
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES
(5272, 6292, 0, 0), -- Ilyenia 11866
(5274, 6294, 0, 0), -- Buliwyf 11865
(5276, 6296, 0, 0), -- Bixi 13084
-- wdb
-- Alliance
(8572, 10748, 0, 0), -- bow : alliance -> Ilyenia, not strictly bixi
(8573, 10749, 0, 0), -- dagger : Buliwyf -> Bixi, Woo Ping
(8574, 10750, 0, 0), -- fist weapons: alliance -> Ilyenia & Buliwyf
(8575, 10751, 0, 0), -- gun: alliance -> Buliwyf
(8576, 10753, 0, 0), -- crossbow : Ilyenia -> Bixi
(8577, 10754, 0, 0), -- 2h Axe: alliance -> Buliwyf
(8578, 10755, 0, 0), -- Mace: alliance -> Handiir and Buliwyf
(8579, 10756, 0, 0), -- polearm: alliance -> Woo Ping
(8580, 10757, 0, 0), -- staves : anyone -> Woo Ping, Ilyenia
(8581, 10758, 0, 0), -- sword : anyone -> Handiir and Woo Ping
(8582, 10759, 0, 0), -- thrown: anyone -> Ilyenia Moonfire and Bixi Wobblebonk
(8583, 10760, 0, 0), -- bow : Buliwyf -> Ilyenia
(8584, 10761, 0, 0), -- crossbow : Buliwyf -> Bixi
(8585, 10762, 0, 0), -- thrown : Buliwyf -> Bixi, Ilyenia
(8586, 10763, 0, 0), -- axe : Bixi -> Buliwylf
(8587, 10764, 0, 0), -- fist : Bixi -> Buliwylf
(8588, 10765, 0, 0), -- gun : Bixi -> Buliwylf
(8589, 10766, 0, 0), -- mace : Bixi -> Buliwylf
(8591, 10767, 0, 0), -- Handiir 16773
(8590, 10768, 0, 0), -- Handiir 16773
-- Horde
(8592, 10770, 0, 0), -- 2h Axe: horde -> Hanashi and Sayoc
(8593, 10771, 0, 0), -- bow: horde -> Sayoc and Hanashi, Ileda
(8594, 10772, 0, 0), -- crossbow: horde -> Archibald
(8595, 10773, 0, 0), -- dagger: horde -> Archibald, Sayoc and Ileda
(8596, 10774, 0, 0), -- Fist: horde -> Sayoc
(8597, 10775, 0, 0), -- gun: horde -> Ansekhwa
(8598, 10776, 0, 0), -- mace: horde -> Ansekhwa
(8599, 10777, 0, 0), -- polearm: horde -> Archibald & Ileda
(8600, 10778, 0, 0), -- staves: horde -> Hanashi, Ansekhwa
(8601, 10779, 0, 0), -- 2h sword: horde -> Ileda, Archibald
(8602, 10780, 0, 0), -- thrown: horde -> Sayoc and Hanashi, Ileda
(8603, 10781, 0, 0), -- crossbow: Hanashi -> Archibald
(8604, 10782, 0, 0), -- daggers: Hanashi -> Sayoc Ileda
(8605, 10783, 0, 0), -- fist: Hanashi -> Sayoc
(8606, 10784, 0, 0), -- gun: Hanashi -> Ansekhwa
(8607, 10785, 0, 0), -- mace: Hanashi -> Ansekhwa
(8608, 10786, 0, 0), -- polarm: Hanashi -> Archibald Ileda
(8609, 10787, 0, 0), -- 2h sword: Hanashi -> Ileda Archibald
(8610, 10788, 0, 0), -- staves: Sayoc -> Hanashi here or Ansekhwa

(8612, 10789, 0, 0), -- Ileda 16621
(8611, 10790, 0, 0), -- Ileda 16621
(7337, 8724, 0, 0), -- Duelist Larenis 17005
(7336, 10790, 0, 0); -- Duelist Larenis 17005 - guessed

-- Adds specific submenu for each of the three weapon masters
DELETE FROM `gossip_menu_option` WHERE `menu_id` IN (5263,5262,5221,5222,5266,5265,5269,5268,7337,7336,8612,8611,5271,5270,5273,5272,5277,5276,5275,5274,8591,8590);
INSERT INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `option_broadcast_text`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `action_script_id`, `box_coded`, `box_money`, `box_text`, `box_broadcast_text`, `condition_id`) VALUES
-- =====
-- Horde
-- =====

-- Hanashi 2704 (5263)
(5263, 0, 3, 'I\'d like some weapon training', 8811, 5, 16, 0, 0, 0, 0, 0, '', 0, 0),
(5263, 1, 0, 'What can other weapon masters teach?', 8812, 1, 1, 5262, 0, 0, 0, 0, '', 0, 0),

(5262, 0, 0, 'Sword', 20589, 1, 1, 8609, 0, 0, 0, 0, '', 0, 0),
(5262, 1, 0, 'Mace', 20586, 1, 1, 8607, 0, 0, 0, 0, '', 0, 0),
(5262, 2, 0, 'Polearm', 20587, 1, 1, 8608, 0, 0, 0, 0, '', 0, 0),
(5262, 3, 0, 'Dagger', 20583, 1, 1, 8604, 0, 0, 0, 0, '', 0, 0),
(5262, 4, 0, 'Fist Weapon', 20584, 1, 1, 8605, 0, 0, 0, 0, '', 0, 0),
(5262, 5, 0, 'Gun', 20585, 1, 1, 8606, 0, 0, 0, 0, '', 0, 0),
(5262, 6, 0, 'Crossbow', 20582, 1, 1, 8603, 0, 0, 0, 0, '', 0, 0),

-- Sayoc 11868 (5221)
(5221, 0, 3, 'I\'d like some weapon training', 8811, 5, 16, 0, 0, 0, 0, 0, '', 0, 0),
(5221, 1, 0, 'What can other weapon masters teach?', 8812, 1, 1, 5222, 0, 0, 0, 0, '', 0, 0),

(5222, 0, 0, 'Sword', 0, 1, 1, 8601, 0, 0, 0, 0, '', 0, 0),
(5222, 1, 0, 'Mace', 0, 1, 1, 8598, 0, 0, 0, 0, '', 0, 0),
(5222, 2, 0, 'Staff', 0, 1, 1, 8610, 0, 0, 0, 0, '', 0, 0),
(5222, 3, 0, 'Polearm', 0, 1, 1, 8599, 0, 0, 0, 0, '', 0, 0),
(5222, 4, 0, 'Gun', 0, 1, 1, 8597, 0, 0, 0, 0, '', 0, 0),
(5222, 5, 0, 'Crossbow', 0, 1, 1, 8594, 0, 0, 0, 0, '', 0, 0),

-- Ansekhwa 11869 (5266)
(5266, 0, 3, 'I\'d like some weapon training', 8811, 5, 16, 0, 0, 0, 0, 0, '', 0, 0),
(5266, 1, 0, 'What can other weapon masters teach?', 8812, 1, 1, 5265, 0, 0, 0, 0, '', 0, 0),

(5265, 0, 0, 'Sword', 20589, 1, 1, 8601, 0, 0, 0, 0, '', 0, 0),
(5265, 1, 0, 'Axe', 20580, 1, 1, 8592, 0, 0, 0, 0, '', 0, 0),
(5265, 2, 0, 'Polearm', 20587, 1, 1, 8599, 0, 0, 0, 0, '', 0, 0),
(5265, 3, 0, 'Dagger', 20583, 1, 1, 8595, 0, 0, 0, 0, '', 0, 0),
(5265, 4, 0, 'Fist Weapon', 20584, 1, 1, 8596, 0, 0, 0, 0, '', 0, 0),
(5265, 5, 0, 'Bow', 20581, 1, 1, 8593, 0, 0, 0, 0, '', 0, 0),
(5265, 6, 0, 'Crossbow', 20582, 1, 1, 8594, 0, 0, 0, 0, '', 0, 0),
(5265, 7, 0, 'Thrown', 20590, 1, 1, 8602, 0, 0, 0, 0, '', 0, 0),

-- Archibald 11870 (5269)
(5269, 0, 3, 'I\'d like some weapon training', 8811, 5, 16, 0, 0, 0, 0, 0, '', 0, 0),
(5269, 1, 0, 'What can other weapon masters teach?', 8812, 1, 1, 5268, 0, 0, 0, 0, '', 0, 0),

(5268, 0, 0, 'Mace', 20586, 1, 1, 8598, 0, 0, 0, 0, '', 0, 0),
(5268, 1, 0, 'Axe', 20580, 1, 1, 8592, 0, 0, 0, 0, '', 0, 0),
(5268, 2, 0, 'Staff', 20588, 1, 1, 8600, 0, 0, 0, 0, '', 0, 0),
(5268, 3, 0, 'Fist Weapon', 20584, 1, 1, 8596, 0, 0, 0, 0, '', 0, 0),
(5268, 4, 0, 'Bow', 20581, 1, 1, 8593, 0, 0, 0, 0, '', 0, 0),
(5268, 5, 0, 'Gun', 20585, 1, 1, 8597, 0, 0, 0, 0, '', 0, 0),
(5268, 6, 0, 'Thrown', 20590, 1, 1, 8602, 0, 0, 0, 0, '', 0, 0),

-- Duelist Larenis 17005 (7337)
(7337, 0, 3, 'Show me what you know, Larenis.', 13168, 5, 16, 0, 0, 0, 0, 0, '', 0, 0),
(7337, 1, 0, 'What can other weapon masters teach?', 8812, 1, 1, 7336, 0, 0, 0, 0, '', 0, 0),

(7336, 0, 0, 'Mace', 20586, 1, 1, 8598, 0, 0, 0, 0, '', 0, 0),
(7336, 1, 0, 'Axe', 20580, 1, 1, 8592, 0, 0, 0, 0, '', 0, 0),
(7336, 2, 0, 'Staff', 20588, 1, 1, 8600, 0, 0, 0, 0, '', 0, 0),
(7336, 3, 0, 'Fist Weapon', 20584, 1, 1, 8596, 0, 0, 0, 0, '', 0, 0),
(7336, 4, 0, 'Gun', 20585, 1, 1, 8597, 0, 0, 0, 0, '', 0, 0),
(7336, 5, 0, 'Crossbow', 20582, 1, 1, 8594, 0, 0, 0, 0, '', 0, 0),
(7336, 6, 0, 'Thrown', 20590, 1, 1, 8602, 0, 0, 0, 0, '', 0, 0),

-- Ileda 16621 (8612)
(8612, 0, 3, 'I\'d like some weapon training', 8811, 5, 16, 0, 0, 0, 0, 0, '', 0, 0),
(8612, 1, 0, 'What can other weapon masters teach?', 8812, 1, 1, 8611, 0, 0, 0, 0, '', 0, 0),

(8611, 0, 0, 'Mace', 20586, 1, 1, 8598, 0, 0, 0, 0, '', 0, 0),
(8611, 1, 0, 'Axe', 20580, 1, 1, 8592, 0, 0, 0, 0, '', 0, 0),
(8611, 2, 0, 'Staff', 20588, 1, 1, 8600, 0, 0, 0, 0, '', 0, 0),
(8611, 3, 0, 'Fist Weapon', 20584, 1, 1, 8596, 0, 0, 0, 0, '', 0, 0),
(8611, 4, 0, 'Gun', 20585, 1, 1, 8597, 0, 0, 0, 0, '', 0, 0),
(8611, 5, 0, 'Crossbow', 20582, 1, 1, 8594, 0, 0, 0, 0, '', 0, 0),

-- ========
-- Alliance
-- ========

-- Woo Ping 11867 (5271)
(5271, 0, 3, 'I\'d like some weapon training', 8811, 5, 16, 0, 0, 0, 0, 0, '', 0, 0),
(5271, 1, 0, 'What can other weapon masters teach?', 8812, 1, 1, 5270, 0, 0, 0, 0, '', 0, 0),

(5270, 0, 0, 'Mace', 20586, 1, 1, 8578, 0, 0, 0, 0, '', 0, 0),
(5270, 1, 0, 'Axe', 20580, 1, 1, 8577, 0, 0, 0, 0, '', 0, 0),
(5270, 2, 0, 'Fist Weapon', 20584, 1, 1, 8574, 0, 0, 0, 0, '', 0, 0),
(5270, 3, 0, 'Bow', 20581, 1, 1, 8572, 0, 0, 0, 0, '', 0, 0),
(5270, 4, 0, 'Gun', 20585, 1, 1, 8575, 0, 0, 0, 0, '', 0, 0),
(5270, 5, 0, 'Thrown', 20590, 1, 1, 8582, 0, 0, 0, 0, '', 0, 0),

-- Ilyenia Moonfire 11866 (5273)
(5273, 0, 3, 'I\'d like some weapon training', 8811, 5, 16, 0, 0, 0, 0, 0, '', 0, 0),
(5273, 1, 0, 'What can other weapon masters teach?', 8812, 1, 1, 5272, 0, 0, 0, 0, '', 0, 0),

(5272, 0, 0, 'Sword', 20589, 1, 1, 8581, 0, 0, 0, 0, '', 0, 0),
(5272, 1, 0, 'Mace', 20586, 1, 1, 8578, 0, 0, 0, 0, '', 0, 0),
(5272, 2, 0, 'Axe', 20580, 1, 1, 8577, 0, 0, 0, 0, '', 0, 0),
(5272, 3, 0, 'Polearm', 20587, 1, 1, 8579, 0, 0, 0, 0, '', 0, 0),
(5272, 4, 0, 'Gun', 20585, 1, 1, 8575, 0, 0, 0, 0, '', 0, 0),
(5272, 5, 0, 'Crossbow', 20582, 1, 1, 8576, 0, 0, 0, 0, '', 0, 0),

-- Bixi Wobblebonk 13084 (5277)
(5277, 0, 3, 'I\'d like some weapon training', 8811, 5, 16, 0, 0, 0, 0, 0, '', 0, 0),
(5277, 1, 0, 'What can other weapon masters teach?', 8812, 1, 1, 5276, 0, 0, 0, 0, '', 0, 0),

(5276, 0, 0, 'Sword', 20589, 1, 1, 8581, 0, 0, 0, 0, '', 0, 0),
(5276, 1, 0, 'Mace', 20586, 1, 1, 8589, 0, 0, 0, 0, '', 0, 0),
(5276, 2, 0, 'Axe', 20580, 1, 1, 8586, 0, 0, 0, 0, '', 0, 0),
(5276, 3, 0, 'Staff', 20588, 1, 1, 8580, 0, 0, 0, 0, '', 0, 0),
(5276, 4, 0, 'Polearm', 20587, 1, 1, 8579, 0, 0, 0, 0, '', 0, 0),
(5276, 5, 0, 'Fist Weapon', 20584, 1, 1, 8587, 0, 0, 0, 0, '', 0, 0),
(5276, 6, 0, 'Bow', 20581, 1, 1, 8572, 0, 0, 0, 0, '', 0, 0),
(5276, 7, 0, 'Gun', 20585, 1, 1, 8588, 0, 0, 0, 0, '', 0, 0),

-- Buliwyf Stonehand 11865 (5275)
(5275, 0, 3, 'I\'d like some weapon training', 8811, 5, 16, 0, 0, 0, 0, 0, '', 0, 0),
(5275, 1, 0, 'What can other weapon masters teach?', 8812, 1, 1, 5274, 0, 0, 0, 0, '', 0, 0),

(5274, 0, 0, 'Sword', 20589, 1, 1, 8581, 0, 0, 0, 0, '', 0, 0),
(5274, 1, 0, 'Staff', 20588, 1, 1, 8580, 0, 0, 0, 0, '', 0, 0),
(5274, 2, 0, 'Polearm', 20587, 1, 1, 8579, 0, 0, 0, 0, '', 0, 0),
(5274, 3, 0, 'Dagger', 20583, 1, 1, 8573, 0, 0, 0, 0, '', 0, 0),
(5274, 4, 0, 'Bow', 20581, 1, 1, 8583, 0, 0, 0, 0, '', 0, 0),
(5274, 5, 0, 'Crossbow', 20582, 1, 1, 8584, 0, 0, 0, 0, '', 0, 0),
(5274, 6, 0, 'Thrown', 20590, 1, 1, 8585, 0, 0, 0, 0, '', 0, 0),

-- Handiir 16773 (8591)
(8591, 0, 3, 'I\'d like some weapon training', 8811, 5, 16, 0, 0, 0, 0, 0, '', 0, 0),
(8591, 1, 0, 'What can other weapon masters teach?', 8812, 1, 1, 8590, 0, 0, 0, 0, '', 0, 0),

(8590, 0, 0, 'Axe', 20580, 1, 1, 8577, 0, 0, 0, 0, '', 0, 0),
(8590, 1, 0, 'Staff', 20588, 1, 1, 8580, 0, 0, 0, 0, '', 0, 0),
(8590, 2, 0, 'Polearm', 20587, 1, 1, 8579, 0, 0, 0, 0, '', 0, 0),
(8590, 3, 0, 'Fist Weapon', 20584, 1, 1, 8574, 0, 0, 0, 0, '', 0, 0),
(8590, 4, 0, 'Bow', 20581, 1, 1, 8572, 0, 0, 0, 0, '', 0, 0),
(8590, 5, 0, 'Gun', 20585, 1, 1, 8575, 0, 0, 0, 0, '', 0, 0),
(8590, 6, 0, 'Thrown', 20590, 1, 1, 8582, 0, 0, 0, 0, '', 0, 0);

-- who can what
-- Sword (1H)(2H)
-- Mace (1H)(2H)
-- Axe (1H)(2H)
-- Staff (2H)
-- Polearm (2H)
-- Dagger (1H)
-- Fist Weapon
-- Bow
-- Gun
-- Crossbow
-- Thrown

-- Add missing texts, update text that had no text
-- 10748	BCT 20546 	Ilyenia Moonfire, the night elf weapon master who resides at the Warrior's Terrace in Darnassus, can train you in the use of bows. -> BCT 20546
-- 10749	BCT 20551	Bixi Wobblebonk in this very shop can train ye in daggers. If ye're still looking abroad, anyone else - Woo Ping in Stormwind, Handiir in the Exodar, and Ilyenia Moonfire in Darnassus - can show ye a thing or two. Me, I was never one fer knife fights.
-- 10750	BCT 20552	Ilyenia Moonfire, the night elf weapon master on the Warrior's Terrace in Darnassus, or Buliwyf, the dwarf weapon master within the Timberline Arms in Ironforge, can train you in the use of fist weapons.
/*BCT 20554*/	UPDATE npc_text SET text0_0='Buliwyf, the dwarf weapon master within the Timberline Arms in Ironforge, can train you in the use of guns.', text0_1='Buliwyf, the dwarf weapon master within the Timberline Arms in Ironforge, can train you in the use of guns.' WHERE id=10751; -- Missing US text
REPLACE INTO npc_text VALUES (10753, 'The gnome weapon master Bixi can train you in crossbows. She\'s found in the Timberline Arms in Ironforge.', 'The gnome weapon master Bixi can train you in crossbows. She\'s found in the Timberline Arms in Ironforge.', 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0);
-- 10754	BCT 20569	The dwarven weapon master Buliwyf can train you in both one and two-handed axes. He's found in the Timberline Arms in Ironforge.
-- 10755	BCT 20574	Both Handiir and Buliwyf can show you how to swing a mace properly, no matter the size. You can find Buliwyf within the Timberline Arms in Ironforge. Handiir spends his days in the Exodar, training draenei on the Trader's Tier.
-- 10756	BCT	20576	Woo Ping is the master of polearms. He trains his students at Weller's Arsenal in Stormwind.
-- 10757	BCT 20577	Staves are taught by both Woo Ping, the master found at Weller's Arsenal in Stormwind, and Ilyenia Moonfire, who trains the night elves on the Warrior's Terrace in Darnassus.
-- 10758	BCT 20578	There are two masters of the sword: Handiir and Woo Ping. The former can be found in the Trader's Tier of the Exodar, and the latter in Weller's Arsenal within Stormwind.
-- 10759	BCT 20579	Both Ilyenia Moonfire on the Warrior's Terrace of Darnassus and Bixi Wobblebonk of the Timberline Arms in Ironforge can show you how to use throwing weapons properly.
-- 10760	BCT 20546	Ilyenia Moonfire, the night elf weapon master who resides at the Warrior's Terrace in Darnassus, can show ye how to use a bow.
-- 10761	BCT 20572	My plucky companion Bixi Wobblebonk here can train ye in crossbows. If ye're looking for other trainers, though, ye might want to try Ilyenia Moonfire on the Warrior's Terrace in Darnassus, or maybe the draenei weapon master, Handiir, in the Trader's Tier within the Exodar.
-- 10762	BCT 20592	Bixi here can teach ye how to lob throwin' weapons.  If Darnassus is more yer speed, talk to Ilyenia Moonfire on the Warrior's Terrace there.
/*BCT 20570*/	REPLACE INTO npc_text VALUES (10763, 'Buliwyf can teach you how to use axes! He\'s around this shop somewhere.', 'Buliwyf can teach you how to use axes! He\'s around this shop somewhere.', 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0);
/*BCT 20571*/	REPLACE INTO npc_text VALUES (10764, 'Buliwyf, in this very shop can train you in the use of fist weapons. If his training techniques aren\'t your style, I hear the night elf weapon master in Darnassus, Ilyenia Moonfire, knows her way around the weapon too! She\'s up on the Warrior\'s Terrace there.', 'Buliwyf, in this very shop can train you in the use of fist weapons. If his training techniques aren\'t your style, I hear the night elf weapon master in Darnassus, Ilyenia Moonfire, knows her way around the weapon too! She\'s up on the Warrior\'s Terrace there.', 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0);
/*BCT 20555*/	REPLACE INTO npc_text VALUES (10765, 'Guns are a specialty of Buliwyf\'s! He\'s around this shop somewhere.', 'Guns are a specialty of Buliwyf\'s! He\'s around this shop somewhere.', 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0);
-- 10766	BCT 20575	Maces are a specialty of Buliwyf's! He's around this shop somewhere, grousing. If his training techniques aren't your style, I hear the draenei weapon master in the Exodar, Handiir, knows his way around the weapon too! He's up on the Trader's Tier there.
-- 10767	BCT 20594	If you seek training in weapons, I can provide.
-- 10768	BCT 20595	Ah, you wish to train abroad? I will direct you. Tell me which weapon has sparked your interest.
-- 10770	BCT 20606	Both Hanashi and Sayoc can train you in the use of one and two-handed axes. They can be found in the Valley of Honor in Orgrimmar.
-- 10771	BCT 20608	The weapon masters in the Valley of Honor within Orgrimmar, Sayoc and Hanashi, can teach you how to shoot a bow. Ileda, the weapon master of Silvermoon found in Farstrider Square, is also an expert.
-- 10772	BCT 20609	Archibald is the master of the crossbow. He's the weapon master of the Undercity, located in the War Quarter.
-- 10773	BCT 20610	Dagger instruction can be sought from three weapon masters: Archibald in the War Quarter of the Undercity, Sayoc within the Valley of Honor in Orgrimmar, and Ileda in Silvermoon's Farstrider Square.
-- 10774	BCT 20612	Fist weapons are taught by Sayoc, the orc weapon master in Orgrimmar. He spends his days in the Valley of Honor.
-- 10775	BCT 20614	Our gunnery instructor is Ansekhwa, the tauren weapon master on the lower central rise of Thunder Bluff.
-- 10776	BCT 20615	Maces are taught by Ansekhwa, found on the lower central rise of Thunder Bluff.
-- 10777	BCT 20616	The Forsaken weapon master Archibald knows his way around the polearm. He trains others in the War Quarter of the Undercity. Ileda, the blood elf weapon master within Farstrider Square in Silvermoon, can show you the proper techniques also.
-- 10778	BCT 20617	Staves are taught by Hanashi, the troll weapon master in Orgrimmar's Valley of Honor, and Ansekhwa, the tauren weapon master who trains on the lower central rise of Thunder Bluff.
-- 10779	BCT 20619	Ileda of the blood elves, found within Farstrider Square of Silvermoon, trains her students in both one and two-handed swords. Archibald, Undercity's weapon master, can also train you; he is in the War Quarter.
-- 10780	BCT 20620	Sayoc and Hanashi, Orgrimmar's weapon masters, are true artisans of the thrown weapon. They train willing students in the Valley of Honor. For pure finesse in the art, however, Ileda of Silvermoon's Farstrider Square cannot be beaten.
-- 10781	BCT 20621	Archibald da master of da crossbow. He da weapon master of da Undercity, located in da War Quarter.
-- 10782	BCT 20611	Sayoc, da ugly orc here, teach you daggers. You want teaching in other places, you talk to Ileda in da Farstrider Square of Silvermoon or Archibald in the War Quarter of Undercity, hokay?
-- 10783	BCT 20613	You want to punch things, yah? Talk to Sayoc right here. He teach you.
-- 10784	BCT 20622	Our gunnery instructor, he Ansekhwa, da tauren weapon master on da lower central rise of Thunder Bluff.
-- 10785	BCT 20623	Maces, they taught by Ansekhwa, found on da lower central rise of Thunder Bluff.
-- 10786	BCT 20624	Da Forsaken weapon master Archibald know his way 'round da polearm. He train others in da War Quarter of da Undercity. Ileda, da blood elf weapon master in Farstrider Square in Silvermoon, show you da right techniques too, mon.
-- 10787	BCT 20625	Ileda of da blood elves, in Farstrider Square of Silvermoon, train her students in both one and two-handed swords. Archibald, da Undercity's weapon master, also train you, mon. He in da War Quarter.
-- 10788	BCT 20618	Hanashi here knows staves. If you want a sturdier instructor, go to Thunder Bluff. Ansekhwa will teach you on the lower central rise there.
/*10789	BCT 20627*/	UPDATE npc_text SET text0_0=text0_1 WHERE `id` = 10789; --  If you haven't come to train, step back and leave me to my work.
/*10790	BCT 20626*/	UPDATE npc_text SET text0_0=text0_1 WHERE `id` = 10790; -- I can't see why you want to learn something else... but I suppose I can point you in the right direction. What training are you after, specifically?

