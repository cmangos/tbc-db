-- Fix spawning of Gurok the Usurper 
UPDATE gameobject_template SET size = '2' WHERE entry = '182183';

-- Reguid gameobjects and fix their spawn points
-- delete old spawns
SET @OGUID := 157030; -- gameobjects
DELETE FROM gameobject WHERE id = '182183' and guid IN (31670, 31671, 31672, 31673, 31674, 31677, 31678);
DELETE FROM gameobject WHERE id = '182182' and guid = '22661';
-- delete new used guids for safty (they are free)
DELETE FROM gameobject WHERE guid BETWEEN @OGUID+1 AND @OGUID+8;
INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`) VALUES 
-- Warmaul Skull despawns after 20 minutes
(@OGUID+1, 182183, 530, 1,  -874.77618408203125, 8692.4345703125, 251.572296142578125, 0.837757468223571777, 0, 0, 0.406736373901367187, 0.913545548915863037, -1200, -1200),
(@OGUID+2, 182183, 530, 1,  -882.16668701171875, 8686.5283203125, 251.572296142578125, 3.630291461944580078, 0, 0, -0.97029495239257812, 0.241925001144409179, -1200, -1200),
(@OGUID+3, 182183, 530, 1,  -883.70098876953125, 8694.2880859375, 251.572296142578125, 0.558503925800323486, 0, 0, 0.275636672973632812, 0.961261868476867675, -1200, -1200),
(@OGUID+4, 182183, 530, 1,  -878.137451171875, 8686.015625, 251.572296142578125, 5.672322273254394531, 0, 0, -0.3007049560546875, 0.953717231750488281, -1200, -1200),
(@OGUID+5, 182183, 530, 1,  -884.62261962890625, 8689.5234375, 251.572296142578125, 0.349065244197845458, 0, 0, 0.173647880554199218, 0.984807789325714111, -1200, -1200),
(@OGUID+6, 182183, 530, 1,  -875.27447509765625, 8688.5146484375, 251.572296142578125, 2.042035102844238281, 0, 0, 0.852640151977539062, 0.522498607635498046, -1200, -1200),
(@OGUID+7, 182183, 530, 1,  -878.8729248046875, 8696.0126953125, 251.572296142578125, 2.042035102844238281, 0, 0, 0.852640151977539062, 0.522498607635498046, -1200, -1200),
-- Earthen Brand
(@OGUID+8, 182182, 530, 1,  -879.739990234375, 8691.1142578125, 251.572296142578125, 3.45575571060180664, 0, 0, -0.98768806457519531, 0.156436234712600708, 180, 180);

-- Spell SendEvent
DELETE FROM dbscripts_on_event WHERE id = 11420;
INSERT INTO `dbscripts_on_event` (`id`, `delay`, `priority`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES
(11420, 0, 0, 9, @OGUID+1, 1200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Gurok the Usurper - Spawn Warmaul Skull'), -- 09:13:27.242
(11420, 0, 0, 9, @OGUID+2, 1200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Gurok the Usurper - Spawn Warmaul Skull'),
(11420, 0, 0, 9, @OGUID+3, 1200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Gurok the Usurper - Spawn Warmaul Skull'),
(11420, 0, 0, 9, @OGUID+4, 1200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Gurok the Usurper - Spawn Warmaul Skull'),
(11420, 0, 0, 9, @OGUID+5, 1200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Gurok the Usurper - Spawn Warmaul Skull'),
(11420, 0, 0, 9, @OGUID+6, 1200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Gurok the Usurper - Spawn Warmaul Skull'),
(11420, 0, 0, 9, @OGUID+7, 1200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Gurok the Usurper - Spawn Warmaul Skull'),
(11420, 6000, 0, 10, 18182, 1200000, 0, 0, 0, 0, 0, 0, 0, 0, -879.5234, 8689.484, 251.65562, 0.34899, 'Gurok the Usurper - Spawn Gurok'); -- 09:13:33.657

UPDATE creature_template SET MovementType = '1' WHERE entry = '18182';

-- Text should get yelled
UPDATE broadcast_text SET ChatTypeID = '1' WHERE Id = '14865';

-- SpellList for Gurok the Usurper
UPDATE creature_template SET SpellList = 1818201 WHERE entry=18182;

DELETE FROM creature_spell_list_entry WHERE Id = '1818201';
INSERT INTO creature_spell_list_entry(Id, Name, ChanceSupportAction, ChanceRangedAttack) VALUES
(1818201, 'Gurok the Usurper', 0, 0);

DELETE FROM creature_spell_list WHERE Id = '1818201';
INSERT INTO creature_spell_list(Id, Position, SpellId, Flags, CombatCondition, TargetId, ScriptId, Availability, Probability, InitialMin, InitialMax, RepeatMin, RepeatMax, Comments) VALUES
('1818201', '0', '32959', '0', '-1', '1', '0', '100', '0','11000','18000','11000','18000', 'Gurok the Usurper - Cast Knock Away - on current'),
('1818201', '1', '22127', '0', '-1', '1', '0', '100', '0','15000','21000','15000','21000', 'Gurok the Usurper - Cast Entangling Roots - on current'),
('1818201', '2', '23114', '0', '-1', '1', '0', '100', '0','6000','11000','12000','18000', 'Gurok the Usurper - Cast Earth Shock - on current');
