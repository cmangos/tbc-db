-- https://github.com/cmangos/mangos-classic/commit/982b1d4fb5dc93d140d38cf43df1cb7fe34c1c2e#diff-99c9b26db56e3c5097b56b068441ea55e09a6b1af5d031e9107a741d9b83a390R44
-- not applied to tbcmangos, as pvpranks are no ore
-- INSERT INTO conditions(condition_entry, type, value1, value2, value3, value4, flags, comments) VALUES
-- (3018,11,0,5,0,0,2,'PvP Rank < 6'),
-- (3019,11,6,9,0,0,2,'PvP Rank >= 6 < 10'),
-- (3020,11,10,20,0,0,2,'PvP Rank >= 10'),
-- (3021,6,67,4,0,0,2,''),
-- (3022,6,469,4,0,0,2,''),
-- (3023,-1,3018,3021,0,0,0,''),
-- (3024,-1,3019,3021,0,0,0,''),
-- (3025,-1,3020,3021,0,0,0,''),
-- (3026,-1,3018,3022,0,0,0,''),
-- (3027,-1,3019,3022,0,0,0,''),
-- (3028,-1,3020,3022,0,0,0,'');

INSERT INTO reference_loot_template(entry, item, ChanceOrQuestChance, groupid, mincountOrRef, maxcount, condition_id, comments) VALUES
-- ('1', '17502', '75', '0', '1', '1', '3023', ''),
-- ('1', '17503', '75', '0', '1', '1', '3024', ''),
-- ('1', '17504', '75', '0', '1', '1', '3025', ''),
-- ('1', '17326', '75', '0', '1', '1', '3026', ''),
-- ('1', '17327', '75', '0', '1', '1', '3027', ''),
-- ('1', '17328', '75', '0', '1', '1', '3028', ''),
-- Removed in 2.0
-- https://www.wowhead.com/tbc/item=18206/dwarf-spine#comments:id=249256
-- https://www.wowhead.com/tbc/item=18207/orc-tooth#comments:id=69077
-- 293	14	1	0	0	0	0	Player RaceMask: 1
-- 294	14	2	0	0	0	0	Player RaceMask: 2
-- 295	14	4	0	0	0	0	Player RaceMask: 4
-- 296	14	8	0	0	0	0	Player RaceMask: 8
-- 297	14	16	0	0	0	0	Player RaceMask: 16
-- 298	14	32	0	0	0	0	Player RaceMask: 32
-- 299	14	64	0	0	0	0	Player RaceMask: 64
-- 300	14	128	0	0	0	0	Player RaceMask: 128
-- 301	14	512	0	0	0	0	Player RaceMask: 512
-- 302	14	1024	0	0	0	0	Player RaceMask: 1024
-- ('1', '18144', '75', '0', '1', '1', '293', 'Human Bone Chip'),
-- ('1', '18207', '75', '0', '1', '1', '294', 'Orc Tooth'),
-- ('1', '18206', '75', '0', '1', '1', '295', 'Dwarf Spine'),
-- ('1', '18142', '75', '0', '1', '1', '296', 'Severed Night Elf Head'),
-- ('1', '18147', '75', '0', '1', '1', '297', 'Forsaken Heart'),
-- ('1', '18145', '75', '0', '1', '1', '298', 'Tauren Hoof'),
-- ('1', '18143', '75', '0', '1', '1', '299', 'Tuft of Gnome Hair'),
-- ('1', '18146', '75', '0', '1', '1', '300', 'Darkspear Troll Mojo'),
-- 3	6	67	0	0	0	0	Horde Player
-- 4	6	469	0	0	0	0	Alliance Player
('1', '17422', '75', '0', '1', '20', '0', 'Armor Scraps'), -- used for npc upgrades
('1', '17306', '-100', '0', '1', '1', '4', 'Stormpike Soldier''s Blood'), -- used to summon faction boss
('1', '17423', '-100', '0', '1', '1', '3', 'Storm Crystal'); -- used to summon faction boss

INSERT INTO reference_loot_template_names(entry, name) VALUES (1,'Alterac Valley - Player Skinning loot');
UPDATE battleground_template SET PlayerSkinReflootId=1 WHERE Id IN(1);

