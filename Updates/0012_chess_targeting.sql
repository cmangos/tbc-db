-- Karazhan - Chess NPC Action - spell_script_target
--  wotlkmangos is missing all
 
-- All "Karazhan - Chess NPC Action" including serversides (partly missing/unused)
-- 32225 Karazhan - Chess NPC AI, Take action (melee)
-- 32226 Karazhan - Chess NPC AI, attack timer
-- 32227 Karazhan - Chess NPC Action: Melee Attack: Footman
-- 32228 Karazhan - Chess NPC Action: Melee Attack: Grunt
-- 32252 Karazhan - Chess NPC State, Moving
-- 37143 Karazhan - Chess NPC Action: Melee Attack: Conjured Water Elemental
-- 37220 Karazhan - Chess NPC Action: Melee Attack: Summoned Daemon
-- 37337 Karazhan - Chess NPC Action: Melee Attack: Orc Necrolyte
-- 37339 Karazhan - Chess NPC Action: Melee Attack: Orc Wolf
-- 37345 Karazhan - Chess NPC Action: Melee Attack: Orc Warlock
-- 37348 Karazhan - Chess NPC Action: Melee Attack: Warchief Blackhand
-- 37440 Karazhan - Chess NPC AI, Snapshot timer
-- 37534 Karazhan - Chess NPC Action: Grunt: Vicious Strike
-- 37653 Karazhan - Chess NPC Action: Footman: Heroic Blow
-- 37659 Karazhan - Chess NPC Action: Elemental: Geyser
-- 37677 Karazhan - Chess NPC Action: Daemon: Hellfire
-- 37680 Karazhan - Chess NPC Action: Stomp
-- 37684 Karazhan - Chess NPC Action: Ability - Holy Lance
-- 37687 Karazhan - Chess NPC Action: Ability - Shadow Spear
-- 37698 Karazhan - Chess NPC Action - Elemental Blast
-- 37701 Karazhan - Chess NPC Action - Sweep
-- 37702 Karazhan - Chess NPC Action - Cleave
-- 37708 Karazhan - Chess NPC Action- Bite
-- 37775 Karazhan - Chess NPC Action - Poison Cloud
-- 37783 Karazhan - Chess NPC Action - Heroism
-- 37785 Karazhan - Chess NPC Action - Bloodlust
-- 37824 Karazhan - Chess NPC Action - Shadow Mend
-- 37828 Karazhan - Chess NPC Action - Healing

DELETE FROM `spell_script_target` WHERE `entry` IN (37406,37427,37453,37498,37828,37459,37698,37465,37474,37471,32227,37142,
37143,37147,37149,37150,37413,37428,37824,37461,37454,37502,37469,37775,37476,37472,32228,37220,37337,37339,37345,37348);
INSERT INTO `spell_script_target` (`entry`, `type`, `targetEntry`, `inverseEffectMask`) VALUES
-- Human Footman (17211) - npc_human_footman
-- Conjured Water Elemental (21160) - npc_water_elemental
-- Human Charger (21664) - npc_human_charger
-- Human Cleric (21682) - npc_human_cleric
-- Human Conjurer (21683) - npc_human_conjurer
-- King Llane (21684) - npc_king_llane

-- Alliance creature_template_spells - Move,Change Facing,Spell1,Spell2
-- 17211 0 37146 30284 37406 37414 0 0 0 0 0 0
-- 21160 0 37151 30284 37427 37432 0 0 0 0 0 0
-- 21664 0 37144 30284 37453 37498 0 0 0 0 0 0
-- 21682 0 37152 30284 37455 37459 0 0 0 0 0 0 - Change 37455->37828?
-- 21683 0 37148 30284 37462 37465 0 0 0 0 0 0 - Change 37462->37698?
-- 21684 0 37153 30284 37474 37471 0 0 0 0 0 0

-- Heroic Blow
(37406, 1, 17469, 0), -- Orc Grunt (17469) - npc_orc_grunt
(37406, 1, 21726, 0), -- Summoned Daemon (21726) - npc_summoned_daemon
(37406, 1, 21747, 0), -- Orc Necrolyte (21747) - npc_orc_necrolyte
(37406, 1, 21748, 0), -- Orc Wolf (21748) - npc_orc_wolf
(37406, 1, 21750, 0), -- Orc Warlock (21750) - npc_orc_warlock
(37406, 1, 21752, 0), -- Warchief Blackhand (21752) - npc_warchief_blackhand
-- Geyser
(37427, 1, 17469, 0), -- Orc Grunt (17469) - npc_orc_grunt
(37427, 1, 21726, 0), -- Summoned Daemon (21726) - npc_summoned_daemon
(37427, 1, 21747, 0), -- Orc Necrolyte (21747) - npc_orc_necrolyte
(37427, 1, 21748, 0), -- Orc Wolf (21748) - npc_orc_wolf
(37427, 1, 21750, 0), -- Orc Warlock (21750) - npc_orc_warlock
(37427, 1, 21752, 0), -- Warchief Blackhand (21752) - npc_warchief_blackhand
-- Smash
(37453, 1, 17469, 0), -- Orc Grunt (17469) - npc_orc_grunt
(37453, 1, 21726, 0), -- Summoned Daemon (21726) - npc_summoned_daemon
(37453, 1, 21747, 0), -- Orc Necrolyte (21747) - npc_orc_necrolyte
(37453, 1, 21748, 0), -- Orc Wolf (21748) - npc_orc_wolf
(37453, 1, 21750, 0), -- Orc Warlock (21750) - npc_orc_warlock
(37453, 1, 21752, 0), -- Warchief Blackhand (21752) - npc_warchief_blackhand
-- Stomp
(37498, 1, 17469, 0), -- Orc Grunt (17469) - npc_orc_grunt
(37498, 1, 21726, 0), -- Summoned Daemon (21726) - npc_summoned_daemon
(37498, 1, 21747, 0), -- Orc Necrolyte (21747) - npc_orc_necrolyte
(37498, 1, 21748, 0), -- Orc Wolf (21748) - npc_orc_wolf
(37498, 1, 21750, 0), -- Orc Warlock (21750) - npc_orc_warlock
(37498, 1, 21752, 0), -- Warchief Blackhand (21752) - npc_warchief_blackhand

-- how to handle Healing 37455 - TARGET_UNIT, TARGET_NONE?
-- With Serverside equivalent for ss.37824 -> ss.37828 missing (Also: Mismatch RecoveryTime: 0 ms, CategoryRecoveryTime: 5000 ms -> RecoveryTime: 20000 ms)
-- Karazhan - Chess NPC Action - Healing
(37828, 1, 17211, 0), -- Human Footman (17211) - npc_human_footman
(37828, 1, 21160, 0), -- Conjured Water Elemental (21160) - npc_water_elemental
(37828, 1, 21664, 0), -- Human Charger (21664) - npc_human_charger
(37828, 1, 21682, 0), -- Human Cleric (21682) - npc_human_cleric
(37828, 1, 21683, 0), -- Human Conjurer (21683) - npc_human_conjurer
(37828, 1, 21684, 0), -- King Llane (21684) - npc_king_llane

-- Holy Lance
(37459, 1, 17469, 0), -- Orc Grunt (17469) - npc_orc_grunt
(37459, 1, 21726, 0), -- Summoned Daemon (21726) - npc_summoned_daemon
(37459, 1, 21747, 0), -- Orc Necrolyte (21747) - npc_orc_necrolyte
(37459, 1, 21748, 0), -- Orc Wolf (21748) - npc_orc_wolf
(37459, 1, 21750, 0), -- Orc Warlock (21750) - npc_orc_warlock
(37459, 1, 21752, 0), -- Warchief Blackhand (21752) - npc_warchief_blackhand

-- how to handle Elemental Blast 37462 - TARGET_UNIT, TARGET_NONE?
-- With 37698 Karazhan - Chess NPC Action - Elemental Blast
(37698, 1, 17469, 0), -- Orc Grunt (17469) - npc_orc_grunt
(37698, 1, 21726, 0), -- Summoned Daemon (21726) - npc_summoned_daemon
(37698, 1, 21747, 0), -- Orc Necrolyte (21747) - npc_orc_necrolyte
(37698, 1, 21748, 0), -- Orc Wolf (21748) - npc_orc_wolf
(37698, 1, 21750, 0), -- Orc Warlock (21750) - npc_orc_warlock
(37698, 1, 21752, 0), -- Warchief Blackhand (21752) - npc_warchief_blackhand

-- Rain of Fire
(37465, 1, 17469, 0), -- Orc Grunt (17469) - npc_orc_grunt
(37465, 1, 21726, 0), -- Summoned Daemon (21726) - npc_summoned_daemon
(37465, 1, 21747, 0), -- Orc Necrolyte (21747) - npc_orc_necrolyte
(37465, 1, 21748, 0), -- Orc Wolf (21748) - npc_orc_wolf
(37465, 1, 21750, 0), -- Orc Warlock (21750) - npc_orc_warlock
(37465, 1, 21752, 0), -- Warchief Blackhand (21752) - npc_warchief_blackhand
-- Sweep
(37474, 1, 17469, 0), -- Orc Grunt (17469) - npc_orc_grunt
(37474, 1, 21726, 0), -- Summoned Daemon (21726) - npc_summoned_daemon
(37474, 1, 21747, 0), -- Orc Necrolyte (21747) - npc_orc_necrolyte
(37474, 1, 21748, 0), -- Orc Wolf (21748) - npc_orc_wolf
(37474, 1, 21750, 0), -- Orc Warlock (21750) - npc_orc_warlock
(37474, 1, 21752, 0), -- Warchief Blackhand (21752) - npc_warchief_blackhand
-- Heroism
(37471, 1, 17211, 0), -- Human Footman (17211) - npc_human_footman
(37471, 1, 21160, 0), -- Conjured Water Elemental (21160) - npc_water_elemental
(37471, 1, 21664, 0), -- Human Charger (21664) - npc_human_charger
(37471, 1, 21682, 0), -- Human Cleric (21682) - npc_human_cleric
(37471, 1, 21683, 0), -- Human Conjurer (21683) - npc_human_conjurer
(37471, 1, 21684, 0), -- King Llane (21684) - npc_king_llane

-- Alliance Attack Spells

-- Karazhan - Chess NPC Action: Melee Attack: Footman
(32227, 1, 17469, 0),
(32227, 1, 21726, 0),
(32227, 1, 21747, 0),
(32227, 1, 21748, 0),
(32227, 1, 21750, 0),
(32227, 1, 21752, 0),
-- Karazhan - Chess NPC Action: Melee Attack: Conjured Water Elemental
(37142, 1, 17469, 0),
(37142, 1, 21726, 0),
(37142, 1, 21747, 0),
(37142, 1, 21748, 0),
(37142, 1, 21750, 0),
(37142, 1, 21752, 0),
-- Karazhan - Chess NPC Action: Melee Attack: Conjured Water Elemental
(37143, 1, 17469, 0),
(37143, 1, 21726, 0),
(37143, 1, 21747, 0),
(37143, 1, 21748, 0),
(37143, 1, 21750, 0),
(37143, 1, 21752, 0),
-- Karazhan - Chess NPC Action: Melee Attack: Human Cleric
(37147, 1, 17469, 0),
(37147, 1, 21726, 0),
(37147, 1, 21747, 0),
(37147, 1, 21748, 0),
(37147, 1, 21750, 0),
(37147, 1, 21752, 0),
-- Karazhan - Chess NPC Action: Melee Attack: Human Conjurer
(37149, 1, 17469, 0),
(37149, 1, 21726, 0),
(37149, 1, 21747, 0),
(37149, 1, 21748, 0),
(37149, 1, 21750, 0),
(37149, 1, 21752, 0),
-- Karazhan - Chess NPC Action: Melee Attack: King Llane
(37150, 1, 17469, 0),
(37150, 1, 21726, 0),
(37150, 1, 21747, 0),
(37150, 1, 21748, 0),
(37150, 1, 21750, 0),
(37150, 1, 21752, 0),

-- Orc Grunt (17469) - npc_orc_grunt
-- Summoned Daemon (21726) - npc_summoned_daemon
-- Orc Necrolyte (21747) - npc_orc_necrolyte
-- Orc Wolf (21748) - npc_orc_wolf
-- Orc Warlock (21750) - npc_orc_warlock
-- Warchief Blackhand (21752) - npc_warchief_blackhand

-- Horde creature_template_spells - Move,Change Facing,Spell1,Spell2
-- 17469 0 37146 30284 37413 37416 0 0 0 0 0 0
-- 21726 0 37151 30284 37428 37434 0 0 0 0 0 0
-- 21747 0 37152 30284 37456 37461 0 0 0 0 0 0 - Change 37456->37824?
-- 21748 0 37144 30284 37454 37502 0 0 0 0 0 0
-- 21750 0 37148 30284 37463 37469 0 0 0 0 0 0
-- 21752 0 37153 30284 37476 37472 0 0 0 0 0 0

-- Vicious Strike
(37413, 1, 17211, 0), -- Human Footman (17211) - npc_human_footman
(37413, 1, 21160, 0), -- Conjured Water Elemental (21160) - npc_water_elemental
(37413, 1, 21664, 0), -- Human Charger (21664) - npc_human_charger
(37413, 1, 21682, 0), -- Human Cleric (21682) - npc_human_cleric
(37413, 1, 21683, 0), -- Human Conjurer (21683) - npc_human_conjurer
(37413, 1, 21684, 0), -- King Llane (21684) - npc_king_llane
-- Hellfire
(37428, 1, 17211, 0), -- Human Footman (17211) - npc_human_footman
(37428, 1, 21160, 0), -- Conjured Water Elemental (21160) - npc_water_elemental
(37428, 1, 21664, 0), -- Human Charger (21664) - npc_human_charger
(37428, 1, 21682, 0), -- Human Cleric (21682) - npc_human_cleric
(37428, 1, 21683, 0), -- Human Conjurer (21683) - npc_human_conjurer
(37428, 1, 21684, 0), -- King Llane (21684) - npc_king_llane

-- how to handle Shadow Mend 37456 - TARGET_UNIT, TARGET_NONE
-- Fix missing script targets for 37456 Shadow Mend Action used by Orc Necrolyte (21747) - npc_orc_necrolyte
(37824, 1, 17469, 0), -- Orc Grunt (17469) - npc_orc_grunt
(37824, 1, 21726, 0), -- Summoned Daemon (21726) - npc_summoned_daemon
(37824, 1, 21747, 0), -- Orc Necrolyte (21747) - npc_orc_necrolyte
(37824, 1, 21748, 0), -- Orc Wolf (21748) - npc_orc_wolf
(37824, 1, 21750, 0), -- Orc Warlock (21750) - npc_orc_warlock
(37824, 1, 21752, 0), -- Warchief Blackhand (21752) - npc_warchief_blackhand

-- Shadow Spear
(37461, 1, 17211, 0), -- Human Footman (17211) - npc_human_footman
(37461, 1, 21160, 0), -- Conjured Water Elemental (21160) - npc_water_elemental
(37461, 1, 21664, 0), -- Human Charger (21664) - npc_human_charger
(37461, 1, 21682, 0), -- Human Cleric (21682) - npc_human_cleric
(37461, 1, 21683, 0), -- Human Conjurer (21683) - npc_human_conjurer
(37461, 1, 21684, 0), -- King Llane (21684) - npc_king_llane
-- Bite
(37454, 1, 17211, 0), -- Human Footman (17211) - npc_human_footman
(37454, 1, 21160, 0), -- Conjured Water Elemental (21160) - npc_water_elemental
(37454, 1, 21664, 0), -- Human Charger (21664) - npc_human_charger
(37454, 1, 21682, 0), -- Human Cleric (21682) - npc_human_cleric
(37454, 1, 21683, 0), -- Human Conjurer (21683) - npc_human_conjurer
(37454, 1, 21684, 0), -- King Llane (21684) - npc_king_llane
-- Howl
(37502, 1, 17211, 0), -- Human Footman (17211) - npc_human_footman
(37502, 1, 21160, 0), -- Conjured Water Elemental (21160) - npc_water_elemental
(37502, 1, 21664, 0), -- Human Charger (21664) - npc_human_charger
(37502, 1, 21682, 0), -- Human Cleric (21682) - npc_human_cleric
(37502, 1, 21683, 0), -- Human Conjurer (21683) - npc_human_conjurer
(37502, 1, 21684, 0), -- King Llane (21684) - npc_king_llane

-- how to handle Fireball 37463 - TARGET_UNIT, TARGET_NONE?

-- Fix Orc Warlock Poison Cloud targeting Orc units instead of Human units in Karazhan Chess Event
(37469, 1, 17211, 0), -- Human Footman (17211) - npc_human_footman
(37469, 1, 21160, 0), -- Conjured Water Elemental (21160) - npc_water_elemental
(37469, 1, 21664, 0), -- Human Charger (21664) - npc_human_charger
(37469, 1, 21682, 0), -- Human Cleric (21682) - npc_human_cleric
(37469, 1, 21683, 0), -- Human Conjurer (21683) - npc_human_conjurer
(37469, 1, 21684, 0), -- King Llane (21684) - npc_king_llane
-- Karazhan - Chess NPC Action - Poison Cloud targeting Orc units instead of Human units in Karazhan Chess Event
(37775, 1, 17211, 0), -- Human Footman (17211) - npc_human_footman
(37775, 1, 21160, 0), -- Conjured Water Elemental (21160) - npc_water_elemental
(37775, 1, 21664, 0), -- Human Charger (21664) - npc_human_charger
(37775, 1, 21682, 0), -- Human Cleric (21682) - npc_human_cleric
(37775, 1, 21683, 0), -- Human Conjurer (21683) - npc_human_conjurer
(37775, 1, 21684, 0), -- King Llane (21684) - npc_king_llane

-- Cleave
(37476, 1, 17211, 0), -- Human Footman (17211) - npc_human_footman
(37476, 1, 21160, 0), -- Conjured Water Elemental (21160) - npc_water_elemental
(37476, 1, 21664, 0), -- Human Charger (21664) - npc_human_charger
(37476, 1, 21682, 0), -- Human Cleric (21682) - npc_human_cleric
(37476, 1, 21683, 0), -- Human Conjurer (21683) - npc_human_conjurer
(37476, 1, 21684, 0), -- King Llane (21684) - npc_king_llane

-- Bloodlust
(37472, 1, 17469, 0), -- Orc Grunt (17469) - npc_orc_grunt
(37472, 1, 21726, 0), -- Summoned Daemon (21726) - npc_summoned_daemon
(37472, 1, 21747, 0), -- Orc Necrolyte (21747) - npc_orc_necrolyte
(37472, 1, 21748, 0), -- Orc Wolf (21748) - npc_orc_wolf
(37472, 1, 21750, 0), -- Orc Warlock (21750) - npc_orc_warlock
(37472, 1, 21752, 0), -- Warchief Blackhand (21752) - npc_warchief_blackhand

-- Horde Attack Spells

-- Karazhan - Chess NPC Action: Melee Attack: Grunt
(32228, 1, 17211, 0),
(32228, 1, 21160, 0),
(32228, 1, 21664, 0),
(32228, 1, 21682, 0),
(32228, 1, 21683, 0),
(32228, 1, 21684, 0),
-- Karazhan - Chess NPC Action: Melee Attack: Summoned Daemon
(37220, 1, 17211, 0),
(37220, 1, 21160, 0),
(37220, 1, 21664, 0),
(37220, 1, 21682, 0),
(37220, 1, 21683, 0),
(37220, 1, 21684, 0),
-- Karazhan - Chess NPC Action: Melee Attack: Orc Necrolyte
(37337, 1, 17211, 0),
(37337, 1, 21160, 0),
(37337, 1, 21664, 0),
(37337, 1, 21682, 0),
(37337, 1, 21683, 0),
(37337, 1, 21684, 0),
-- Karazhan - Chess NPC Action: Melee Attack: Orc Wolf
(37339, 1, 17211, 0),
(37339, 1, 21160, 0),
(37339, 1, 21664, 0),
(37339, 1, 21682, 0),
(37339, 1, 21683, 0),
(37339, 1, 21684, 0),
-- Karazhan - Chess NPC Action: Melee Attack: Orc Warlock
(37345, 1, 17211, 0),
(37345, 1, 21160, 0),
(37345, 1, 21664, 0),
(37345, 1, 21682, 0),
(37345, 1, 21683, 0),
(37345, 1, 21684, 0),
-- Karazhan - Chess NPC Action: Melee Attack: Warchief Blackhand
(37348, 1, 17211, 0),
(37348, 1, 21160, 0),
(37348, 1, 21664, 0),
(37348, 1, 21682, 0),
(37348, 1, 21683, 0),
(37348, 1, 21684, 0);

