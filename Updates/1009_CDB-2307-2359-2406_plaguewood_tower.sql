-- Add PvP event for capturing Plaguewood Tower in Eastern Plaguelands
-- Event doesnt start on Tower Capture?

-- Spawn William Kielar at the tower entrance
-- Adds script spawning NPCs when capturing Eastwall tower in Eastern Plaguelands
DELETE FROM dbscripts_on_event WHERE id IN (10691, 10692, 10700, 10701);
INSERT INTO dbscripts_on_event (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(10691, 0, 10, 17635, 0, 0, 0, 8, 0, 0, 0, 0, 2526.22, -4758.52, 101.056, 2.17, 'Alliance Eastwall Tower capture - summon Lordaeron Commander'),
(10691, 1, 10, 17647, 0, 0, 0, 8, 0, 0, 0, 0, 2522.43, -4767.05, 102.552, 2.17, 'Alliance Eastwall Tower capture - summon Lordaeron Soldier'),
(10691, 2, 10, 17647, 0, 0, 0, 8, 0, 0, 0, 0, 2535.06, -4757.15, 102.219, 2.17, 'Alliance Eastwall Tower capture - summon Lordaeron Soldier'),
(10691, 3, 10, 17647, 0, 0, 0, 8, 0, 0, 0, 0, 2526.3, -4764.44, 102.36, 2.17, 'Alliance Eastwall Tower capture - summon Lordaeron Soldier'),
(10691, 4, 10, 17647, 0, 0, 0, 8, 0, 0, 0, 0, 2532.45, -4760.14, 102.408, 2.17, 'Alliance Eastwall Tower capture - summon Lordaeron Soldier'),
(10692, 0, 10, 17995, 0, 0, 0, 8, 0, 0, 0, 0, 2526.22, -4758.52, 101.056, 2.17, 'Horde Eastwall Tower capture - summon Lordaeron Veteran'),
(10692, 1, 10, 17996, 0, 0, 0, 8, 0, 0, 0, 0, 2532.45, -4760.14, 102.408, 2.17, 'Horde Eastwall Tower capture - summon Lordaeron Fighter'),
(10692, 2, 10, 17996, 0, 0, 0, 8, 0, 0, 0, 0, 2535.06, -4757.15, 102.219, 2.17, 'Horde Eastwall Tower capture - summon Lordaeron Fighter'),
(10692, 3, 10, 17996, 0, 0, 0, 8, 0, 0, 0, 0, 2522.43, -4767.05, 102.552, 2.17, 'Horde Eastwall Tower capture - summon Lordaeron Fighter'),
(10692, 4, 10, 17996, 0, 0, 0, 8, 0, 0, 0, 0, 2526.3, -4764.44, 102.36, 2.17, 'Horde Eastwall Tower capture - summon Lordaeron Fighter'),
-- https://github.com/cmangos/classic-db/commit/f2fcd32170c41e8f4deffb4918de0bf036289d14#r34553101
(10700, 0, 10, 17209, 0, 0, 0, 8, 0, 0, 0, 0, 2987.5, -3049.11, 120.126, 5.75959, 'Horde Plaguewood Tower progress event - summon William Kielar'),
(10701, 0, 10, 17209, 0, 0, 0, 8, 0, 0, 0, 0, 2987.5, -3049.11, 120.126, 5.75959, 'Alliance Plaguewood Tower progress event - summon William Kielar');

-- Fix movement and aura for NPC 17209 (William Kielar)
UPDATE creature_template SET MovementType=0 WHERE Entry=17209;
UPDATE creature_template_addon SET auras='' WHERE Entry=17209; -- Auras and Faction handled in Core

-- Add missing visual auras by addons
DELETE FROM creature_template_addon WHERE entry IN (17635, 17647, 17995, 17996);
INSERT INTO creature_template_addon (entry, mount, bytes1, b2_0_sheath, b2_1_flags, emote, moveflags, auras) VALUES
(17635, 0, 0, 1, 16, 0, 0, '17327'),
(17647, 0, 0, 1, 16, 0, 0, '17327'),
(17995, 0, 0, 1, 16, 0, 0, '31309'),
(17996, 0, 0, 1, 16, 0, 0, '31309');

-- Adds scripts associated with movements for creatures 17635 (Lordaeron Commander) and 17995 (Lordaeron Veteran)
DELETE FROM dbscripts_on_creature_movement WHERE id IN (1763501, 1799501, 1763502, 1764701, 1799601);
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES 
(1763501, 4, 24, 2410, 0, 0, 0, 8, 0, 0, 0, 0, 0, 0, 0, 0, 'Lordaeron Commander/Soldier - mount'), -- 5528
(1799501, 4, 24, 5228, 0, 0, 0, 8, 0, 0, 0, 0, 0, 0, 0, 0, 'Lordaeron Veteran/Fighter - mount'), -- 5228

(1763502, 0, 20, 1, 5, 0, 0, 0, 8, 0, 0, 0, 0, 0, 0, 0, 'Lordaeron Commander/Veteran - Set movement to random'),
(1763502, 0, 24, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Lordaeron Commander/Veteran - Unmount'),

(1764701, 0, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Lordaeron Soldier - Set movement to random'),
(1764701, 0, 24, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Lordaeron Soldier - Unmount'),
(1764701, 1, 37, 10, 2, 17635, 30, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Lordaeron Soldier - move towards Lordaeron Commander'),

(1799601, 0, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Lordaeron Fighter - Set movement to random'),
(1799601, 0, 24, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Lordaeron Fighter - Unmount'),
(1799601, 1, 37, 10, 2, 17995, 30, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Lordaeron Fighter - move towards Lordaeron Veteran');

-- Add movements to Alliance and Horde NPCS
UPDATE creature_template SET MovementType=2 WHERE Entry IN (17635, 17647, 17995, 17996);
DELETE FROM creature_movement_template WHERE entry IN (17635, 17647, 17995, 17996);
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, waittime, script_id) VALUES
-- Lordaeron Commander
(17635, 1, 2532.85, -4764.92, 103.617, 0, 1763501),
(17635, 2, 2501.35, -4725.99, 90.974, 0, 0),
(17635, 3, 2491.21, -4693.16, 82.363, 0, 0),
(17635, 4, 2493.06, -4655.49, 75.194, 0, 0),
(17635, 5, 2562.23, -4646.4, 79.003, 0, 0),
(17635, 6, 2699.75, -4567.38, 87.46, 0, 0),
(17635, 7, 2757.27, -4527.59, 89.08, 0, 0),
(17635, 8, 2850.87, -4417.56, 89.421, 0, 0),
(17635, 9, 2888.34, -4328.49, 90.562, 0, 0),
(17635, 10, 2913.27, -4167.14, 93.919, 0, 0),
(17635, 11, 3035.66, -4260.18, 96.141, 0, 0),
(17635, 12, 3088.54, -4250.21, 97.769, 0, 0),
(17635, 13, 3147.3, -4318.8, 130.41, 0, 0),
(17635, 14, 3163.51, -4341.18, 135.287, 0, 1763502), -- Stop, unmount and idle
(17635, 15, 3163.51, -4341.18, 135.287, 0, 0),
-- Lordaeron Soldier
(17647, 1, 2532.85, -4764.92, 103.617, 0, 1763501),
(17647, 2, 2501.35, -4725.99, 90.974, 0, 0),
(17647, 3, 2491.21, -4693.16, 82.363, 0, 0),
(17647, 4, 2493.06, -4655.49, 75.194, 0, 0),
(17647, 5, 2562.23, -4646.4, 79.003, 0, 0),
(17647, 6, 2699.75, -4567.38, 87.46, 0, 0),
(17647, 7, 2757.27, -4527.59, 89.08, 0, 0),
(17647, 8, 2850.87, -4417.56, 89.421, 0, 0),
(17647, 9, 2888.34, -4328.49, 90.562, 0, 0),
(17647, 10, 2913.27, -4167.14, 93.919, 0, 0),
(17647, 11, 3035.66, -4260.18, 96.141, 0, 0),
(17647, 12, 3088.54, -4250.21, 97.769, 0, 0),
(17647, 13, 3147.3, -4318.8, 130.41, 0, 0),
(17647, 14, 3163.51, -4332.65, 135.287, 0, 1764701), -- Stop, unmount and idle
(17647, 15, 3163.51, -4332.65, 135.287, 0, 0),
-- Lordaeron Veteran
(17995, 1, 2532.85, -4764.92, 103.617, 0, 1799501),
(17995, 2, 2501.35, -4725.99, 90.974, 0, 0),
(17995, 3, 2491.21, -4693.16, 82.363, 0, 0),
(17995, 4, 2493.06, -4655.49, 75.194, 0, 0),
(17995, 5, 2562.23, -4646.4, 79.003, 0, 0),
(17995, 6, 2699.75, -4567.38, 87.46, 0, 0),
(17995, 7, 2757.27, -4527.59, 89.08, 0, 0),
(17995, 8, 2850.87, -4417.56, 89.421, 0, 0),
(17995, 9, 2888.34, -4328.49, 90.562, 0, 0),
(17995, 10, 2913.27, -4167.14, 93.919, 0, 0),
(17995, 11, 3035.66, -4260.18, 96.141, 0, 0),
(17995, 12, 3088.54, -4250.21, 97.769, 0, 0),
(17995, 13, 3147.3, -4318.8, 130.41, 0, 0),
(17995, 14, 3163.51, -4341.18, 135.287, 0, 1763502), -- Stop, unmount and idle
(17995, 15, 3163.51, -4341.18, 135.287, 0, 0),
-- Lordaeron Fighter
(17996, 1, 2532.85, -4764.92, 103.617, 0, 1799501),
(17996, 2, 2501.35, -4725.99, 90.974, 0, 0),
(17996, 3, 2491.21, -4693.16, 82.363, 0, 0),
(17996, 4, 2493.06, -4655.49, 75.194, 0, 0),
(17996, 5, 2562.23, -4646.4, 79.003, 0, 0),
(17996, 6, 2699.75, -4567.38, 87.46, 0, 0),
(17996, 7, 2757.27, -4527.59, 89.08, 0, 0),
(17996, 8, 2850.87, -4417.56, 89.421, 0, 0),
(17996, 9, 2888.34, -4328.49, 90.562, 0, 0),
(17996, 10, 2913.27, -4167.14, 93.919, 0, 0),
(17996, 11, 3035.66, -4260.18, 96.141, 0, 0),
(17996, 12, 3088.54, -4250.21, 97.769, 0, 0),
(17996, 13, 3147.3, -4318.8, 130.41, 0, 0),
(17996, 14, 3163.51, -4332.65, 135.287, 0, 1799601), -- Stop, unmount and idle
(17996, 15, 3163.51, -4332.65, 135.287, 0, 0);

