-- Fixes for q.11026/q.11051 Banish the Demons/Banish More Demons

DELETE FROM `creature_template_addon` WHERE `entry`=23327;
INSERT INTO `creature_template_addon` (`entry`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) VALUES 
(23327, 0, 0, 1, 16, 0, 0, '40857');

DELETE FROM `creature_template_addon` WHERE `entry`=23322;
INSERT INTO `creature_template_addon` (`entry`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) VALUES 
(23322, 0, 0, 1, 16, 0, 0, '40849');

-- Banishment
DELETE FROM spell_script_target WHERE entry=40825;
INSERT INTO spell_script_target (entry,type,targetEntry,inverseEffectMask) VALUES
(40825,1,22195,0), -- Wrath Speaker
(40825,1,22291,0), -- Furnace Guard
(40825,1,20557,0), -- Wrath Hound
(40825,1,22204,0), -- Fear Fiend
(40825,1,19973,0); -- Abyssal Flamebringer

-- Banish the Demons: Banishment Beam Periodic Aura Effect
DELETE FROM spell_script_target WHERE entry=40830;
INSERT INTO spell_script_target (entry,type,targetEntry,inverseEffectMask) VALUES
(40830,1,22195,0), -- Wrath Speaker
(40830,1,22291,0), -- Furnace Guard
(40830,1,20557,0), -- Wrath Hound
(40830,1,22204,0), -- Fear Fiend
(40830,1,19973,0); -- Abyssal Flamebringer

-- Banish the Demons: Cast Kill Credit on Master
DELETE FROM spell_script_target WHERE entry=40828;
INSERT INTO spell_script_target (entry,type,targetEntry,inverseEffectMask) VALUES
(40828,1,23327,0); -- Banishing Crystal Bunny 02

-- Restrict Summon Banishing Portal to Forge Camp: Terror and Forge Camp: Wrath
DELETE FROM spell_area WHERE spell IN (40817);
INSERT INTO spell_area (spell, area, quest_start, quest_start_active, quest_end, condition_id, aura_spell, racemask, gender, autocast) VALUES
(40817, 3784, 0, 0, 0, 0, 0, 0, 2, 0),
(40817, 3785, 0, 0, 0, 0, 0, 0, 2, 0);
