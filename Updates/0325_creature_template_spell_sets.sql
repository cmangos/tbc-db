DELETE FROM creature_ai_scripts WHERE creature_id=18794;
INSERT INTO `creature_ai_scripts` (`id`,`creature_id`,`event_type`,`event_inverse_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`event_param6`,`action1_type`,`action1_param1`,`action1_param2`,`action1_param3`,`action2_type`,`action2_param1`,`action2_param2`,`action2_param3`,`action3_type`,`action3_param1`,`action3_param2`,`action3_param3`,`comment`) VALUES
('1879401','18794','11','0','100','0','0','0','0','0','0','0','57','2','20','0','31','1','4','0','0','0','0','0','Cabal Ritualist - Enable Range Mode and Random Phase on Spawn'),
('1879402','18794','1','0','100','6','1000','1000','0','0','0','0','11','32958','0','0','35','1','0','0','0','0','0','0','Cabal Ritualist - Cast Crystal Channel and Set Instance Data64 (SD2) OOC'),
('1879403','18794','4','0','10','0','0','0','0','0','0','0','54','0','0','10034','0','0','0','0','0','0','0','0','Cabal Ritualist - Random Say on Aggro'),
('1879404','18794','4','0','100','0','0','0','0','0','0','0','28','0','32958','0','52','3','0','0','0','0','0','0','Cabal Ritualist - Remove Crystal Channel Aura and Interrupt Channelling on Aggro'),
('1879405','18794','2','0','100','1024','15','0','0','0','0','0','25','0','0','0','1','-47','0','0','0','0','0','0','Cabal Ritualist - Flee at 15% HP'),
('1879406','18794','15','0','100','1025','0','30','5000','10000','0','0','11','17201','12','0','0','0','0','0','0','0','0','0','Cabal Ritualist - Cast Dispel Magic on Friendly CC'),

-- Frost Nova (10 yd radius)
-- Frostbolt (40 yd range)
-- equipment template 2277
-- 12421 Monster - Staff, White Jeweled x1
('1804607','18794','29','29','100','0','1000','1000','0','0','0','0','53','1879401','0','0','60','1','0','0','0','0','0','0','Cabal Ritualist - Start Relay Script and Set Spell Set 1 (Phase 1)'),
('1879408','18794','32','29','100','1027','0','8','12100','16900','0','0','11','15532','17','1024','0','0','0','0','0','0','0','0','Cabal Ritualist (Normal) - Cast Frost Nova in Range (Phase 1)'),
('1879409','18794','32','29','100','1029','0','8','12100','16900','0','0','11','15063','17','1024','0','0','0','0','0','0','0','0','Cabal Ritualist (Heroic) - Cast Frost Nova in Range (Phase 1)'),
('1879410','18794','0','29','100','1027','0','0','3400','4500','0','0','11','15497','1','256','0','0','0','0','0','0','0','0','Cabal Ritualist (Normal) - Cast Frostbolt (Phase 1)'),
('1879411','18794','0','29','100','1029','0','0','3400','4500','0','0','11','12675','1','256','0','0','0','0','0','0','0','0','Cabal Ritualist (Heroic) - Cast Frostbolt (Phase 1)'),

-- Addle Humanoid (20 yd range)
-- Arcane Missiles (30 yd range)
-- equipment template 11881
-- 14618 Monster - Staff, Jeweled Red Staff Low Red Flame x1
('1804612','18794','29','27','100','0','1000','1000','0','0','0','0','53','1879402','0','0','60','2','0','0','0','0','0','0','Cabal Ritualist - Start Relay Script and Set Spell Set 2 (Phase 2)'),
('1879413','18794','0','27','100','1025','2400','14300','5200','21700','0','0','11','33487','4','512','0','0','0','0','0','0','0','0','Cabal Ritualist - Cast Addle Humanoid (Phase 2)'),
('1879414','18794','0','27','100','1027','0','0','4800','7600','0','0','11','33832','1','256','0','0','0','0','0','0','0','0','Cabal Ritualist (Normal) - Cast Arcane Missiles (Phase 2)'),
('1879415','18794','0','27','100','1029','0','0','4800','7600','0','0','11','38263','1','256','0','0','0','0','0','0','0','0','Cabal Ritualist (Heroic) - Cast Arcane Missiles (Phase 2)'),

-- Fire Blast (20 yd range)
-- Flame Buffet (20 yd range)
-- equipment template 7623
-- 13718 Monster - Sword, Horde Jagged Red x1
('1804616','18794','29','23','100','0','1000','1000','0','0','0','0','53','1879403','0','0','60','3','0','0','0','0','0','0','Cabal Ritualist - Start Relay Script and Set Spell Set 3 (Phase 3)'),
('1879417','18794','0','23','100','1027','6100','20200','8400','22900','0','0','11','20795','1','0','0','0','0','0','0','0','0','0','Cabal Ritualist (Normal) - Cast Fire Blast (Phase 3)'),
('1879418','18794','0','23','100','1029','6100','20200','8400','22900','0','0','11','14145','1','0','0','0','0','0','0','0','0','0','Cabal Ritualist (Heroic) - Cast Fire Blast (Phase 3)'),
('1879419','18794','0','23','100','1025','3600','6200','4800','11200','0','0','11','9574','1','256','0','0','0','0','0','0','0','0','Cabal Ritualist - Cast Flame Buffet (Phase 3)'),

-- equipment template 15084
-- 19980 Monster - Dagger, Ornate Spikey Base Red x2
-- no equipment or spell set swap is intentional here (default equipment/spells)
('1879420','18794','0','15','100','1024','0','0','0','0','0','0','57','0','0','0','11','18943','0','34','0','0','0','0','Cabal Ritualist - Enable Melee Mode and Cast Double Attack (Phase 4)'),
('1879421','18794','9','15','100','1025','0','5','12100','19300','0','0','11','12540','9','0','0','0','0','0','0','0','0','0','Cabal Ritualist - Cast Gouge (Phase 4)');

-- set them to use one of these templates by default
UPDATE creature_template SET EquipmentTemplateId=15084 WHERE entry=18794;

DELETE FROM dbscripts_on_relay WHERE id BETWEEN 1879401 AND 1879403;
INSERT INTO dbscripts_on_relay (id, delay, priority, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1879401, 0, 0, 42, 0, 0, 0, 0, 0, 0, 12421, 0, 0, 0, 0, 0, 0, 0, 'Cabal Ritualist - Equip Staff 1'),
(1879402, 0, 0, 42, 0, 0, 0, 0, 0, 0, 14618, 0, 0, 0, 0, 0, 0, 0, 'Cabal Ritualist - Equip Staff 2'),
(1879403, 0, 0, 42, 0, 0, 0, 0, 0, 0, 13718, 0, 0, 0, 0, 0, 0, 0, 'Cabal Ritualist - Equip Sword');
-- (1879404, 0, 0, 42, 0, 0, 0, 0, 0, 0, 19980, 19980, 0, 0, 0, 0, 0, 0, 'Cabal Ritualist - Equip Dagger x2');

-- Cabal Ritualist special case - 4 possible templates
DELETE FROM creature_template_spells WHERE entry=18794;
INSERT INTO creature_template_spells (entry, setId, spell1, spell2, spell3, spell4, spell5, spell6, spell7, spell8) VALUES
(18794, 0, 2, 0, 0, 0, 12540, 0, 0, 0),
(18794, 1, 2, 0, 0, 9574, 20795, 0, 0, 0),
(18794, 2, 2, 0, 0, 15497, 15532, 0, 0, 0),
(18794, 3, 2, 0, 0, 33487, 33832, 0, 0, 0);
DELETE FROM creature_cooldowns WHERE entry=18794;
INSERT INTO creature_cooldowns (Entry, SpellId, CooldownMin, CooldownMax) VALUES
(18794, 9574, 3872, 6613),
(18794, 12540, 12132, 14812),
(18794, 15532, 13237, 18536),
(18794, 20795, 8135, 12351),
(18794, 33487, 2164, 4928);


