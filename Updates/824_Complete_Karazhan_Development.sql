-- ============================================================
-- ==========          Karazhan Development          ==========
-- ============================================================

-- ==========
-- MISC FIXES
-- ==========
-- Fix Side Door
DELETE FROM areatrigger_teleport WHERE id IN (4520);
insert into `areatrigger_teleport` (`id`, `name`, `required_level`, `required_item`, `required_item2`, `heroic_key`, `heroic_key2`, `required_quest_done`, `required_quest_done_heroic`, `target_map`, `target_position_x`, `target_position_y`, `target_position_z`, `target_orientation`) values('4520','Karazhan, Service (Exit)','0','0','0','0','0','0','0','0','-11034.8','-2003.8','92.98','0');

-- Fix Attumen the Huntsman
UPDATE creature_template SET FactionAlliance=16, FactionHorde=16 WHERE entry IN (16152);

-- Fix Kil'rek (Should Not Be able to Charm or Banish)
UPDATE creature_template SET MechanicImmuneMask=131073 WHERE entry IN (17229);

-- Fix Blizzard (Shade of Aran) - Should Be Unselectable and Ignore Aggro also Noticed Wrong Faction - SLOWED NPC DOWN 0.64 Speed Was Too Fast
UPDATE creature_template SET FactionAlliance=14, FactionHorde=14, UnitFlags=33554688, ExtraFlags=2, SpeedWalk=0.642857, SpeedRun=1.8, Expansion=1, MeleeBaseAttackTime=2000, RangedBaseAttackTime=2000 WHERE entry IN (17161);
-- Blizzard (Shade of Aran) (17161)
UPDATE `creature_template` SET `MinLevel` = '73', `MaxLevel` = '73', `HealthMultiplier` = '0.7', `PowerMultiplier` = '1', `DamageMultiplier` = '1.0', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '5312', `MaxLevelHealth` = '5312', `MinLevelMana` = '0', `MaxLevelMana` = '0', `MinMeleeDmg` = '283', `MaxMeleeDmg` = '402', `MinRangedDmg` = '246', `MaxRangedDmg` = '364', `MeleeAttackPower` = '320.0', `RangedAttackPower` = '58.0', `Armor` = '7684.0' WHERE `entry` = '17161';

-- Fix Shade of Aran Teleport
UPDATE spell_script_target SET targetEntry=17176 WHERE entry=29967 AND type=1 AND targetEntry=16524;
UPDATE creature_template SET UnitFlags=UnitFlags|33554432, ModelId2=1126, MeleeBaseAttackTime=2000, RangedBaseAttackTime=2000 WHERE entry BETWEEN 17168 AND 17175;
UPDATE creature_template SET UnitFlags=UnitFlags|33554688, ModelId2=1126 WHERE entry IN (17176);
UPDATE `creature_template` SET `MinLevel` = '70', `MaxLevel` = '70', `HealthMultiplier` = '0.7', `PowerMultiplier` = '1', `DamageMultiplier` = '1.0', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '2835', `MaxLevelHealth` = '2835', `MinLevelMana` = '0', `MaxLevelMana` = '0', `MinMeleeDmg` = '125', `MaxMeleeDmg` = '165', `MinRangedDmg` = '87', `MaxRangedDmg` = '128', `MeleeAttackPower` = '304.0', `RangedAttackPower` = '44.0', `Armor` = '6792.0' WHERE `entry` BETWEEN 17168 AND 17176;

-- Fix NPC Movement Speeds
UPDATE creature_template SET SpeedWalk=1, SpeedRun=1.42857 WHERE entry IN (15548); -- Spectral Stallion
UPDATE creature_template SET SpeedWalk=1, SpeedRun=1.14286 WHERE entry IN (15551); -- Spectral Stable Hand

-- Fix NPC Equipment
UPDATE creature_template SET EquipmentTemplateId=5389 WHERE entry IN (15551); -- Spectral Stable Hand
UPDATE creature_template SET EquipmentTemplateId=5340 WHERE entry IN (16389); -- Spectral Apprentice
UPDATE creature_template SET EquipmentTemplateId=5271 WHERE entry IN (16411); -- Spectral Chef
UPDATE creature_template SET EquipmentTemplateId=5414 WHERE entry IN (16412); -- Ghostly Baker
UPDATE creature_template SET EquipmentTemplateId=5352 WHERE entry IN (16414); -- Ghostly Steward

-- Add Missing Gossip
UPDATE creature_template SET GossipMenuId=8178 WHERE entry IN (16813);
UPDATE creature_template SET GossipMenuId=8176 WHERE entry IN (16814);
UPDATE creature_template SET GossipMenuId=8177 WHERE entry IN (16815);
DELETE FROM gossip_menu WHERE entry IN (8176,8177,8178);
insert into `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) values('8176','10124','0','0');
insert into `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) values('8177','10125','0','0');
insert into `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) values('8178','10126','0','0');

-- Fix Infernals at Price Encounter -- Infernal Target (17644)
UPDATE creature_template SET ModelId2=20577, ExtraFlags=128 WHERE entry IN (17644);
UPDATE `creature_template` SET `MinLevel` = '60', `MaxLevel` = '60', `HealthMultiplier` = '1.35', `PowerMultiplier` = '1', `DamageMultiplier` = '1.0', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '4120', `MaxLevelHealth` = '4120', `MinLevelMana` = '0', `MaxLevelMana` = '0', `MinMeleeDmg` = '104', `MaxMeleeDmg` = '138', `MinRangedDmg` = '72', `MaxRangedDmg` = '106', `MeleeAttackPower` = '252.0', `RangedAttackPower` = '26.0', `Armor` = '3791.0' WHERE `entry` = '17644';

-- Netherspite Improvements
UPDATE creature_model_info SET gender=0 WHERE modelid=15363;
DELETE FROM creature_template_addon WHERE entry IN (15689);
insert into `creature_template_addon` (`entry`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) values('15689','0','0','0','0','0','0',NULL);

-- Fix Netherspite Portals
UPDATE creature_template SET ModelID1=16946, UnitFlags=33554688, ExtraFlags=2, CreatureTypeFlags=4 WHERE entry IN (17367,17368,17369);
-- Nether Portal - Serenity (17367)
UPDATE `creature_template` SET `HealthMultiplier` = '0.007', `PowerMultiplier` = '1', `DamageMultiplier` = '1.0', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '1', `MaxLevelHealth` = '1', `MinLevelMana` = '0', `MaxLevelMana` = '0', `MinMeleeDmg` = '2', `MaxMeleeDmg` = '2', `MinRangedDmg` = '0', `MaxRangedDmg` = '0', `MeleeAttackPower` = '9.0', `RangedAttackPower` = '0.0', `Armor` = '15.0' WHERE `entry` = '17367';
-- Nether Portal - Dominance (17368)
UPDATE `creature_template` SET `HealthMultiplier` = '0.007', `PowerMultiplier` = '1', `DamageMultiplier` = '1.0', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '1', `MaxLevelHealth` = '1', `MinLevelMana` = '0', `MaxLevelMana` = '0', `MinMeleeDmg` = '2', `MaxMeleeDmg` = '2', `MinRangedDmg` = '0', `MaxRangedDmg` = '0', `MeleeAttackPower` = '9.0', `RangedAttackPower` = '0.0', `Armor` = '15.0' WHERE `entry` = '17368';
-- Nether Portal - Perseverence (17369)
UPDATE `creature_template` SET `HealthMultiplier` = '0.007', `PowerMultiplier` = '1', `DamageMultiplier` = '1.0', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '1', `MaxLevelHealth` = '1', `MinLevelMana` = '0', `MaxLevelMana` = '0', `MinMeleeDmg` = '2', `MaxMeleeDmg` = '2', `MinRangedDmg` = '0', `MaxRangedDmg` = '0', `MeleeAttackPower` = '9.0', `RangedAttackPower` = '0.0', `Armor` = '15.0' WHERE `entry` = '17369';

-- Remove Kil'rek Static Spawn
DELETE FROM creature WHERE guid=85371;
DELETE FROM creature_addon WHERE guid=85371;
DELETE FROM creature_movement WHERE id=85371;
DELETE FROM game_event_creature WHERE guid=85371;
DELETE FROM game_event_creature_data WHERE guid=85371;
DELETE FROM creature_battleground WHERE guid=85371;
DELETE FROM creature_linking WHERE guid=85371 OR master_guid=85371;

-- Remove Mini-Boss Static Spawns 
DELETE FROM creature WHERE id IN (16179,16180,16181);

-- Fix Ghostly Philanthropist Gold Drop Amount
UPDATE creature_template SET MinLootGold=110000, MaxLootGold=130000 WHERE entry IN (16470);


-- =============================================
-- Linking Wing Trash To The Boss For Respawning
-- =============================================
UPDATE creature SET SpawnTimeSecs=14400 WHERE id IN (16424,16425); -- General Guards

-- ----------------------------
-- Attumen the Huntsman (15550)
-- ----------------------------
DELETE FROM creature_linking_template WHERE master_entry IN (15550);
DELETE FROM creature_linking_template WHERE entry IN (15547,15548,15551);
insert into `creature_linking_template` (`entry`, `map`, `master_entry`, `flag`, `search_range`) values('15547','532','15550','1024','200');
insert into `creature_linking_template` (`entry`, `map`, `master_entry`, `flag`, `search_range`) values('15548','532','15550','1024','200');
insert into `creature_linking_template` (`entry`, `map`, `master_entry`, `flag`, `search_range`) values('15551','532','15550','1024','200');
UPDATE creature SET SpawnTimeSecs=14400 WHERE id IN (15547,15548,15551);

-- --------------
-- Moroes (15687)
-- --------------
DELETE FROM creature_linking_template WHERE entry IN (16389,16407,16409,16411,16412,16414,16415,16408,16406,16410);
insert into `creature_linking_template` (`entry`, `map`, `master_entry`, `flag`, `search_range`) values('16389','532','15687','1024','300');
insert into `creature_linking_template` (`entry`, `map`, `master_entry`, `flag`, `search_range`) values('16407','532','15687','1024','300');
insert into `creature_linking_template` (`entry`, `map`, `master_entry`, `flag`, `search_range`) values('16409','532','15687','1024','300');
insert into `creature_linking_template` (`entry`, `map`, `master_entry`, `flag`, `search_range`) values('16411','532','15687','1024','300');
insert into `creature_linking_template` (`entry`, `map`, `master_entry`, `flag`, `search_range`) values('16412','532','15687','1024','300');
insert into `creature_linking_template` (`entry`, `map`, `master_entry`, `flag`, `search_range`) values('16414','532','15687','1024','300');
insert into `creature_linking_template` (`entry`, `map`, `master_entry`, `flag`, `search_range`) values('16415','532','15687','1024','300');
insert into `creature_linking_template` (`entry`, `map`, `master_entry`, `flag`, `search_range`) values('16408','532','15687','1024','300');
insert into `creature_linking_template` (`entry`, `map`, `master_entry`, `flag`, `search_range`) values('16406','532','15687','1024','300');
insert into `creature_linking_template` (`entry`, `map`, `master_entry`, `flag`, `search_range`) values('16410','532','15687','1024','300');

UPDATE creature SET SpawnTimeSecs=14400 WHERE id IN (16389,16407,16409,16411,16412,16414,16415,16408,16406,16410);

-- ------------------------
-- Maiden of Virtue (16457)
-- ------------------------
DELETE FROM creature_linking_template WHERE entry IN (16459,16460,16461);
insert into `creature_linking_template` (`entry`, `map`, `master_entry`, `flag`, `search_range`) values('16459','532','16457','1024','300');
insert into `creature_linking_template` (`entry`, `map`, `master_entry`, `flag`, `search_range`) values('16460','532','16457','1024','300');
insert into `creature_linking_template` (`entry`, `map`, `master_entry`, `flag`, `search_range`) values('16461','532','16457','1024','300');
UPDATE creature SET SpawnTimeSecs=14400 WHERE id IN (16459,16460,16461);


-- ------------------------
-- OPERA HOUSE BOSSES
-- ------------------------
-- REQUIRED SD2 IMPLEMENTATION DUE TO SAME TRASH FOR DIFFERENT BOSSES


-- -------------------
-- The Curator (15691)
-- -------------------
DELETE FROM creature_linking_template WHERE entry IN (16485,16488,16492);
insert into `creature_linking_template` (`entry`, `map`, `master_entry`, `flag`, `search_range`) values('16485','532','15691','1024','300');
insert into `creature_linking_template` (`entry`, `map`, `master_entry`, `flag`, `search_range`) values('16488','532','15691','1024','300');
insert into `creature_linking_template` (`entry`, `map`, `master_entry`, `flag`, `search_range`) values('16492','532','15691','1024','300');
UPDATE creature SET SpawnTimeSecs=14400 WHERE id IN (16485,16488,16492);



-- =======================================
-- Widespread Model Fixes For Karazhan NPC
-- =======================================
-- Fix Wrong Models -- Phantom Guest
UPDATE creature_template SET ModelId1=16464, ModelId2=16465, ModelId3=16466, ModelId4=16467 WHERE entry IN (16409);
DELETE FROM creature_model_info WHERE ModelId IN (16464,16465,16466,16467); -- Phantom Guest
insert into `creature_model_info` (`modelid`, `bounding_radius`, `combat_reach`, `gender`, `modelid_other_gender`, `modelid_alternative`) values('16464','0.3519','1.725','0','16466','0');
insert into `creature_model_info` (`modelid`, `bounding_radius`, `combat_reach`, `gender`, `modelid_other_gender`, `modelid_alternative`) values('16465','0.3519','1.725','0','16467','0');
insert into `creature_model_info` (`modelid`, `bounding_radius`, `combat_reach`, `gender`, `modelid_other_gender`, `modelid_alternative`) values('16466','0.2392','1.725','1','16464','0');
insert into `creature_model_info` (`modelid`, `bounding_radius`, `combat_reach`, `gender`, `modelid_other_gender`, `modelid_alternative`) values('16467','0.2392','1.725','1','16465','0');

-- Fix Wrong Models -- Phantom Attendant
UPDATE creature_template SET ModelId1=16514, ModelId2=16515, ModelId3=16516, ModelId4=16517 WHERE entry IN (16406);
DELETE FROM creature_model_info WHERE ModelId IN (16514,16515,16516,16517); -- Phantom Attendant
insert into `creature_model_info` (`modelid`, `bounding_radius`, `combat_reach`, `gender`, `modelid_other_gender`, `modelid_alternative`) values('16514','0.306','1.5','0','16516','0');
insert into `creature_model_info` (`modelid`, `bounding_radius`, `combat_reach`, `gender`, `modelid_other_gender`, `modelid_alternative`) values('16515','0.306','1.5','0','16517','0');
insert into `creature_model_info` (`modelid`, `bounding_radius`, `combat_reach`, `gender`, `modelid_other_gender`, `modelid_alternative`) values('16516','0.208','1.5','1','16514','0');
insert into `creature_model_info` (`modelid`, `bounding_radius`, `combat_reach`, `gender`, `modelid_other_gender`, `modelid_alternative`) values('16517','0.208','1.5','1','16515','0');

-- Fix Wrong Models -- Spectral Retainer
UPDATE creature_template SET ModelId1=16509, ModelId2=16510, ModelId3=16511, ModelId4=16512 WHERE entry IN (16410);
DELETE FROM creature_model_info WHERE ModelId IN (16509,16510,16511,16512); -- Spectral Retainer
insert into `creature_model_info` (`modelid`, `bounding_radius`, `combat_reach`, `gender`, `modelid_other_gender`, `modelid_alternative`) values('16509','0.3519','1.725','0','16511','0');
insert into `creature_model_info` (`modelid`, `bounding_radius`, `combat_reach`, `gender`, `modelid_other_gender`, `modelid_alternative`) values('16510','0.3519','1.725','0','16512','0');
insert into `creature_model_info` (`modelid`, `bounding_radius`, `combat_reach`, `gender`, `modelid_other_gender`, `modelid_alternative`) values('16511','0.3519','1.725','1','16509','0');
insert into `creature_model_info` (`modelid`, `bounding_radius`, `combat_reach`, `gender`, `modelid_other_gender`, `modelid_alternative`) values('16512','0.3519','1.725','1','16510','0');

-- Fix Wrong Models -- Spectral Servant
UPDATE creature_template SET ModelId1=16485, ModelId2=16486, ModelId3=16487, ModelId4=16488 WHERE entry IN (16407);
DELETE FROM creature_model_info WHERE ModelId IN (16485,16486,16487,16488); -- Spectral Servant
insert into `creature_model_info` (`modelid`, `bounding_radius`, `combat_reach`, `gender`, `modelid_other_gender`, `modelid_alternative`) values('16485','0.3519','1.725','0','16487','0');
insert into `creature_model_info` (`modelid`, `bounding_radius`, `combat_reach`, `gender`, `modelid_other_gender`, `modelid_alternative`) values('16486','0.3519','1.725','0','16488','0');
insert into `creature_model_info` (`modelid`, `bounding_radius`, `combat_reach`, `gender`, `modelid_other_gender`, `modelid_alternative`) values('16487','0.2392','1.725','1','16485','0');
insert into `creature_model_info` (`modelid`, `bounding_radius`, `combat_reach`, `gender`, `modelid_other_gender`, `modelid_alternative`) values('16488','0.2392','1.725','1','16486','0');

-- Fix Wrong Models -- Phantom Valet
UPDATE creature_template SET ModelId1=16494, ModelId2=16495, ModelId3=16496, ModelId4=16497 WHERE entry IN (16408);
DELETE FROM creature_model_info WHERE ModelId IN (16494,16495,16496,16497); -- Phantom Valet
insert into `creature_model_info` (`modelid`, `bounding_radius`, `combat_reach`, `gender`, `modelid_other_gender`, `modelid_alternative`) values('16494','0.4131','2.025','0','16496','0');
insert into `creature_model_info` (`modelid`, `bounding_radius`, `combat_reach`, `gender`, `modelid_other_gender`, `modelid_alternative`) values('16495','0.3672','1.8','0','16497','0');
insert into `creature_model_info` (`modelid`, `bounding_radius`, `combat_reach`, `gender`, `modelid_other_gender`, `modelid_alternative`) values('16496','0.2808','2.025','1','16494','0');
insert into `creature_model_info` (`modelid`, `bounding_radius`, `combat_reach`, `gender`, `modelid_other_gender`, `modelid_alternative`) values('16497','0.2808','2.025','1','16495','0');

-- Fix Wrong Models -- Spectral Sentry
UPDATE creature_template SET ModelId1=16458, ModelId2=16459, ModelId3=16460, ModelId4=16461 WHERE entry IN (16424);
DELETE FROM creature_model_info WHERE ModelId IN (16458,16459,16460,16461); -- Spectral Sentry
insert into `creature_model_info` (`modelid`, `bounding_radius`, `combat_reach`, `gender`, `modelid_other_gender`, `modelid_alternative`) values('16458','0.3519','1.725','0','16460','0');
insert into `creature_model_info` (`modelid`, `bounding_radius`, `combat_reach`, `gender`, `modelid_other_gender`, `modelid_alternative`) values('16459','0.3519','1.725','0','16461','0');
insert into `creature_model_info` (`modelid`, `bounding_radius`, `combat_reach`, `gender`, `modelid_other_gender`, `modelid_alternative`) values('16460','0.2392','1.725','1','16458','0');
insert into `creature_model_info` (`modelid`, `bounding_radius`, `combat_reach`, `gender`, `modelid_other_gender`, `modelid_alternative`) values('16461','0.2392','1.725','1','16459','0');

-- Fix Wrong Models -- Phantom Guardsman
UPDATE creature_template SET ModelId1=16454, ModelId2=16455, ModelId3=16456, ModelId4=16457 WHERE entry IN (16425);
DELETE FROM creature_model_info WHERE ModelId IN (16454,16455,16456,16457); -- Phantom Guardsman
insert into `creature_model_info` (`modelid`, `bounding_radius`, `combat_reach`, `gender`, `modelid_other_gender`, `modelid_alternative`) values('16454','0.3519','1.725','0','16456','0');
insert into `creature_model_info` (`modelid`, `bounding_radius`, `combat_reach`, `gender`, `modelid_other_gender`, `modelid_alternative`) values('16455','0.3519','1.725','0','16457','0');
insert into `creature_model_info` (`modelid`, `bounding_radius`, `combat_reach`, `gender`, `modelid_other_gender`, `modelid_alternative`) values('16456','0.2392','1.725','1','16454','0');
insert into `creature_model_info` (`modelid`, `bounding_radius`, `combat_reach`, `gender`, `modelid_other_gender`, `modelid_alternative`) values('16457','0.2392','1.725','1','16455','0');

-- Fix Wrong Models -- Wanton Hostess
UPDATE creature_template SET ModelId1=16543, ModelId2=16544, ModelId3=16545, ModelId4=16546 WHERE entry IN (16459);
DELETE FROM creature_model_info WHERE ModelId IN (16543,16544,16545,16546); -- Wanton Hostess
insert into `creature_model_info` (`modelid`, `bounding_radius`, `combat_reach`, `gender`, `modelid_other_gender`, `modelid_alternative`) values('16543','0.44045','1.725','1','0','0');
insert into `creature_model_info` (`modelid`, `bounding_radius`, `combat_reach`, `gender`, `modelid_other_gender`, `modelid_alternative`) values('16544','0.44045','1.725','1','0','0');
insert into `creature_model_info` (`modelid`, `bounding_radius`, `combat_reach`, `gender`, `modelid_other_gender`, `modelid_alternative`) values('16545','0.44045','1.725','1','0','0');
insert into `creature_model_info` (`modelid`, `bounding_radius`, `combat_reach`, `gender`, `modelid_other_gender`, `modelid_alternative`) values('16546','0.44045','1.725','1','0','0');

-- Fix Wrong Models -- Concubine
UPDATE creature_template SET ModelId1=16551, ModelId2=16552, ModelId3=16553, ModelId4=16554 WHERE entry IN (16461);
DELETE FROM creature_model_info WHERE ModelId IN (16551,16552,16553,16554); -- Concubine
insert into `creature_model_info` (`modelid`, `bounding_radius`, `combat_reach`, `gender`, `modelid_other_gender`, `modelid_alternative`) values('16551','0.2392','1.725','1','0','0');
insert into `creature_model_info` (`modelid`, `bounding_radius`, `combat_reach`, `gender`, `modelid_other_gender`, `modelid_alternative`) values('16552','0.2392','1.725','1','0','0');
insert into `creature_model_info` (`modelid`, `bounding_radius`, `combat_reach`, `gender`, `modelid_other_gender`, `modelid_alternative`) values('16553','0.2392','1.725','1','0','0');
insert into `creature_model_info` (`modelid`, `bounding_radius`, `combat_reach`, `gender`, `modelid_other_gender`, `modelid_alternative`) values('16554','0.2392','1.725','1','0','0');

-- Fix Wrong Models -- Night Mistress
UPDATE creature_template SET ModelId1=16547, ModelId2=16548, ModelId3=16549, ModelId4=16550 WHERE entry IN (16460);
DELETE FROM creature_model_info WHERE ModelId IN (16547,16548,16549,16550); -- Night Mistress
insert into `creature_model_info` (`modelid`, `bounding_radius`, `combat_reach`, `gender`, `modelid_other_gender`, `modelid_alternative`) values('16547','0.208','1.5','1','0','0');
insert into `creature_model_info` (`modelid`, `bounding_radius`, `combat_reach`, `gender`, `modelid_other_gender`, `modelid_alternative`) values('16548','0.208','1.5','1','0','0');
insert into `creature_model_info` (`modelid`, `bounding_radius`, `combat_reach`, `gender`, `modelid_other_gender`, `modelid_alternative`) values('16549','0.208','1.5','1','0','0');
insert into `creature_model_info` (`modelid`, `bounding_radius`, `combat_reach`, `gender`, `modelid_other_gender`, `modelid_alternative`) values('16550','0.208','1.5','1','0','0');

-- Fix Wrong Models -- Ghostly Steward
UPDATE creature_template SET ModelId1=16535, ModelId2=16536, ModelId3=16537, ModelId4=16538 WHERE entry IN (16414);
DELETE FROM creature_model_info WHERE ModelId IN (16535,16536,16537,16538); -- Ghostly Steward
insert into `creature_model_info` (`modelid`, `bounding_radius`, `combat_reach`, `gender`, `modelid_other_gender`, `modelid_alternative`) values('16535','0.3978','1.95','0','16537','0');
insert into `creature_model_info` (`modelid`, `bounding_radius`, `combat_reach`, `gender`, `modelid_other_gender`, `modelid_alternative`) values('16536','0.3978','1.95','0','16538','0');
insert into `creature_model_info` (`modelid`, `bounding_radius`, `combat_reach`, `gender`, `modelid_other_gender`, `modelid_alternative`) values('16537','0.2704','1.95','1','16535','0');
insert into `creature_model_info` (`modelid`, `bounding_radius`, `combat_reach`, `gender`, `modelid_other_gender`, `modelid_alternative`) values('16538','0.2704','1.95','1','16536','0');

-- Fix Wrong Models -- Ghostly Baker
UPDATE creature_template SET ModelId1=16529, ModelId2=16530, ModelId3=16531, ModelId4=16532 WHERE entry IN (16412);
DELETE FROM creature_model_info WHERE ModelId IN (16529,16530,16531,16532); -- Ghostly Baker
insert into `creature_model_info` (`modelid`, `bounding_radius`, `combat_reach`, `gender`, `modelid_other_gender`, `modelid_alternative`) values('16529','0.3519','1.725','0','16531','0');
insert into `creature_model_info` (`modelid`, `bounding_radius`, `combat_reach`, `gender`, `modelid_other_gender`, `modelid_alternative`) values('16530','0.3519','1.725','0','16532','0');
insert into `creature_model_info` (`modelid`, `bounding_radius`, `combat_reach`, `gender`, `modelid_other_gender`, `modelid_alternative`) values('16531','0.2392','1.725','1','16529','0');
insert into `creature_model_info` (`modelid`, `bounding_radius`, `combat_reach`, `gender`, `modelid_other_gender`, `modelid_alternative`) values('16532','0.3519','1.725','1','16530','0');

-- Fix Wrong Models -- Spectral Chef
UPDATE creature_template SET ModelId1=16524, ModelId2=16525, ModelId3=16526, ModelId4=16527 WHERE entry IN (16411);
DELETE FROM creature_model_info WHERE ModelId IN (16524,16525,16526,16527); -- Spectral Chef
insert into `creature_model_info` (`modelid`, `bounding_radius`, `combat_reach`, `gender`, `modelid_other_gender`, `modelid_alternative`) values('16524','0.3519','1.725','0','16526','0');
insert into `creature_model_info` (`modelid`, `bounding_radius`, `combat_reach`, `gender`, `modelid_other_gender`, `modelid_alternative`) values('16525','0.3519','1.725','0','16527','0');
insert into `creature_model_info` (`modelid`, `bounding_radius`, `combat_reach`, `gender`, `modelid_other_gender`, `modelid_alternative`) values('16526','0.2392','1.725','1','16524','0');
insert into `creature_model_info` (`modelid`, `bounding_radius`, `combat_reach`, `gender`, `modelid_other_gender`, `modelid_alternative`) values('16527','0.3519','1.725','1','16525','0');

-- Fix Wrong Models -- Spectral Apprentice
UPDATE creature_template SET ModelId1=16417, ModelId2=16437, ModelId3=16440, ModelId4=16441 WHERE entry IN (16389);
DELETE FROM creature_model_info WHERE ModelId IN (16417,16437,16440,16441); -- Spectral Apprentice
insert into `creature_model_info` (`modelid`, `bounding_radius`, `combat_reach`, `gender`, `modelid_other_gender`, `modelid_alternative`) values('16417','0.3519','1.725','0','16440','0');
insert into `creature_model_info` (`modelid`, `bounding_radius`, `combat_reach`, `gender`, `modelid_other_gender`, `modelid_alternative`) values('16437','0.3519','1.725','0','16441','0');
insert into `creature_model_info` (`modelid`, `bounding_radius`, `combat_reach`, `gender`, `modelid_other_gender`, `modelid_alternative`) values('16440','0.2392','1.725','1','16417','0');
insert into `creature_model_info` (`modelid`, `bounding_radius`, `combat_reach`, `gender`, `modelid_other_gender`, `modelid_alternative`) values('16441','0.2392','1.725','1','16437','0');

-- Fix Wrong Models -- Spectral Stable Hand
UPDATE creature_template SET ModelId1=16397, ModelId2=16398, ModelId3=16399, ModelId4=16400 WHERE entry IN (15551);
DELETE FROM creature_model_info WHERE ModelId IN (16397,16398,16399,16400); -- Spectral Stable Hand
insert into `creature_model_info` (`modelid`, `bounding_radius`, `combat_reach`, `gender`, `modelid_other_gender`, `modelid_alternative`) values('16397','0.3519','1.725','0','16399','0');
insert into `creature_model_info` (`modelid`, `bounding_radius`, `combat_reach`, `gender`, `modelid_other_gender`, `modelid_alternative`) values('16398','0.3519','1.725','0','16400','0');
insert into `creature_model_info` (`modelid`, `bounding_radius`, `combat_reach`, `gender`, `modelid_other_gender`, `modelid_alternative`) values('16399','0.2392','1.725','1','16397','0');
insert into `creature_model_info` (`modelid`, `bounding_radius`, `combat_reach`, `gender`, `modelid_other_gender`, `modelid_alternative`) values('16400','0.2392','1.725','1','16398','0');

-- Fix Wrong Models -- Spectral Patron
UPDATE creature_template SET ModelId1=16555, ModelId2=16556, ModelId3=16557, ModelId4=16558 WHERE entry IN (16468);
DELETE FROM creature_model_info WHERE ModelId IN (16555,16556,16557,16558); -- Spectral Patron
insert into `creature_model_info` (`modelid`, `bounding_radius`, `combat_reach`, `gender`, `modelid_other_gender`, `modelid_alternative`) values('16555','0.3519','1.725','0','16557','0');
insert into `creature_model_info` (`modelid`, `bounding_radius`, `combat_reach`, `gender`, `modelid_other_gender`, `modelid_alternative`) values('16556','0.3519','1.725','0','16558','0');
insert into `creature_model_info` (`modelid`, `bounding_radius`, `combat_reach`, `gender`, `modelid_other_gender`, `modelid_alternative`) values('16557','0.2392','1.725','1','16555','0');
insert into `creature_model_info` (`modelid`, `bounding_radius`, `combat_reach`, `gender`, `modelid_other_gender`, `modelid_alternative`) values('16558','0.2392','1.725','1','16556','0');

-- Fix Wrong Models -- Spectral Performer
UPDATE creature_template SET ModelId1=16567, ModelId2=16568, ModelId3=16569, ModelId4=18979 WHERE entry IN (16473);
DELETE FROM creature_model_info WHERE ModelId IN (16567,16568,16569,18979); -- Spectral Performer
insert into `creature_model_info` (`modelid`, `bounding_radius`, `combat_reach`, `gender`, `modelid_other_gender`, `modelid_alternative`) values('16567','0.3519','1.725','0','16569','0');
insert into `creature_model_info` (`modelid`, `bounding_radius`, `combat_reach`, `gender`, `modelid_other_gender`, `modelid_alternative`) values('16568','0.3519','1.725','0','18979','0');
insert into `creature_model_info` (`modelid`, `bounding_radius`, `combat_reach`, `gender`, `modelid_other_gender`, `modelid_alternative`) values('16569','0.2392','1.725','1','16567','0');
insert into `creature_model_info` (`modelid`, `bounding_radius`, `combat_reach`, `gender`, `modelid_other_gender`, `modelid_alternative`) values('18979','0.2392','1.725','1','16568','0');

-- Fix Wrong Models -- Phantom Stagehand
UPDATE creature_template SET ModelId1=16563, ModelId2=16564, ModelId3=16565, ModelId4=16566 WHERE entry IN (16472);
DELETE FROM creature_model_info WHERE ModelId IN (16563,16564,16565,16566); -- Phantom Stagehand
insert into `creature_model_info` (`modelid`, `bounding_radius`, `combat_reach`, `gender`, `modelid_other_gender`, `modelid_alternative`) values('16563','0.3519','1.725','0','16565','0');
insert into `creature_model_info` (`modelid`, `bounding_radius`, `combat_reach`, `gender`, `modelid_other_gender`, `modelid_alternative`) values('16564','0.2392','1.725','0','16566','0');
insert into `creature_model_info` (`modelid`, `bounding_radius`, `combat_reach`, `gender`, `modelid_other_gender`, `modelid_alternative`) values('16565','0.2392','1.725','1','16563','0');
insert into `creature_model_info` (`modelid`, `bounding_radius`, `combat_reach`, `gender`, `modelid_other_gender`, `modelid_alternative`) values('16566','0.2392','1.725','1','16564','0');

-- Fix Wrong Models -- Ghostly Philanthropist
UPDATE creature_template SET ModelId1=16559, ModelId2=16560, ModelId3=16561, ModelId4=16562 WHERE entry IN (16470);
DELETE FROM creature_model_info WHERE ModelId IN (16559,16560,16561,16562); -- Ghostly Philanthropist
insert into `creature_model_info` (`modelid`, `bounding_radius`, `combat_reach`, `gender`, `modelid_other_gender`, `modelid_alternative`) values('16559','0.3519','1.725','0','16561','0');
insert into `creature_model_info` (`modelid`, `bounding_radius`, `combat_reach`, `gender`, `modelid_other_gender`, `modelid_alternative`) values('16560','0.3519','1.725','0','16562','0');
insert into `creature_model_info` (`modelid`, `bounding_radius`, `combat_reach`, `gender`, `modelid_other_gender`, `modelid_alternative`) values('16561','0.2392','1.725','1','16559','0');
insert into `creature_model_info` (`modelid`, `bounding_radius`, `combat_reach`, `gender`, `modelid_other_gender`, `modelid_alternative`) values('16562','0.2392','1.725','1','16560','0');


-- =======================================
-- Scripted Event Just Outside of Karazhan
-- =======================================
UPDATE creature_template SET MovementType=2 WHERE entry IN (17613);
UPDATE creature SET SpawnDist=0, MovementType=2 WHERE id IN (17613);
DELETE FROM creature_movement_template WHERE entry IN (17613);
insert into `creature_movement_template` (`entry`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('17613','1','-11127','-2008.77','47.4291','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement_template` (`entry`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('17613','2','-11126.1','-2008.21','47.3546','5000','1761302','0','0','0','0','0','0','0','0.623984','0','0'); -- Say and Points at Guy Sequenceat Guy
insert into `creature_movement_template` (`entry`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('17613','3','-11126.1','-2008.21','47.3546','2000','0','0','0','0','0','0','0','0','0.623984','0','0');
insert into `creature_movement_template` (`entry`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('17613','4','-11126.7','-2004.61','47.5918','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement_template` (`entry`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('17613','5','-11127.4','-2005.35','47.6565','0','0','0','0','0','0','0','0','0','4.295723','0','0');
insert into `creature_movement_template` (`entry`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('17613','6','-11127.76','-2006.436','47.62901','230000','1761306','0','0','0','0','0','0','0','4.295723','0','0');
insert into `creature_movement_template` (`entry`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('17613','7','-11126.1','-2008.8','47.3341','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement_template` (`entry`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('17613','8','-11122.1','-2014.27','47.0827','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement_template` (`entry`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('17613','9','-11118.1','-2018.79','47.0789','7000','0','2000000802','0','0','0','0','69','0','5.575922','0','0'); -- Text Emote and working
insert into `creature_movement_template` (`entry`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('17613','10','-11118.1','-2018.79','47.0789','10000','1761310','0','0','0','0','0','69','0','5.575922','0','0'); -- Say
insert into `creature_movement_template` (`entry`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('17613','11','-11118.1','-2018.79','47.0789','0','0','0','0','0','0','0','0','0','5.575922','0','0');
insert into `creature_movement_template` (`entry`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('17613','12','-11121.7','-2014.38','47.0856','0','0','0','0','0','0','0','0','0','0','0','0');


DELETE FROM dbscripts_on_creature_movement WHERE id IN (1761302,1761306,1761310);
insert into `dbscripts_on_creature_movement` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) values('1761302','0','0','0','0','18255','20','1','2000000800','0','0','0','0','0','0','0','Archmage Alturus Say to Apprentice Darius in Front of Karazhan');
insert into `dbscripts_on_creature_movement` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) values('1761302','5','0','0','0','18255','20','3','2000000801','0','0','0','0','0','0','0','Apprentice Darius Say to Archmage Alturus in Front of Karazhan');
insert into `dbscripts_on_creature_movement` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) values('1761302','5','1','0','0','18255','20','1','25','0','0','0','0','0','0','0','Archmage Alturus points at Apprentice Darius in Front of Karazhan');

insert into `dbscripts_on_creature_movement` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) values('1761306','5','0','0','0','18253','20','3','2000000805','0','0','0','0','0','0','0','Archmage Leryda Say to Archmage Alturus in Front of Karazhan');

insert into `dbscripts_on_creature_movement` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) values('1761310','0','0','0','0','18255','20','1','2000000803','0','0','0','0','0','0','0','Archmage Alturus Say to Apprentice Darius in Front of Karazhan');
insert into `dbscripts_on_creature_movement` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) values('1761310','12','0','0','0','18255','20','3','2000000804','0','0','0','0','0','0','0','Apprentice Darius Say to Archmage Alturus in Front of Karazhan');


DELETE FROM db_script_string WHERE entry IN (2000000800,2000000801,2000000802,2000000803,2000000804,2000000805);
insert into `db_script_string` (`entry`, `content_default`, `content_loc1`, `content_loc2`, `content_loc3`, `content_loc4`, `content_loc5`, `content_loc6`, `content_loc7`, `content_loc8`, `sound`, `type`, `language`, `emote`, `comment`) values('2000000800','I ought to give your head a good shake! I\'ve a feeling the ley-lines are clouding up your brain. No, Darius, what we need is a large depository of mineral-heavy water. Even faint arcane signals will accumulate in sulphur and lime.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0','0','0','1','Archmage Alturus in Front of Karazhan');
insert into `db_script_string` (`entry`, `content_default`, `content_loc1`, `content_loc2`, `content_loc3`, `content_loc4`, `content_loc5`, `content_loc6`, `content_loc7`, `content_loc8`, `sound`, `type`, `language`, `emote`, `comment`) values('2000000801','S-sorry, sir.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0','0','0','1','Apprentice Darius in Front of Karazhan');
insert into `db_script_string` (`entry`, `content_default`, `content_loc1`, `content_loc2`, `content_loc3`, `content_loc4`, `content_loc5`, `content_loc6`, `content_loc7`, `content_loc8`, `sound`, `type`, `language`, `emote`, `comment`) values('2000000802','Archmage Alturus begins to perform an arcane scrying.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0','2','0','0','Archmage Alturus Text Emote in Front of Karazhan');
insert into `db_script_string` (`entry`, `content_default`, `content_loc1`, `content_loc2`, `content_loc3`, `content_loc4`, `content_loc5`, `content_loc6`, `content_loc7`, `content_loc8`, `sound`, `type`, `language`, `emote`, `comment`) values('2000000803','Blasted scrying crystal! I\'m not getting anything over here.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0','0','0','0','Archmage Alturus Say to Apprentice Darius in Front of Karazhan');
insert into `db_script_string` (`entry`, `content_default`, `content_loc1`, `content_loc2`, `content_loc3`, `content_loc4`, `content_loc5`, `content_loc6`, `content_loc7`, `content_loc8`, `sound`, `type`, `language`, `emote`, `comment`) values('2000000804','S-sir... have you tried giving the crystal a good shake? It\'s possible that the ley-lines are clouding up the reading.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0','0','0','0','Apprentice Darius say to Archmage Alturus Say in Front of Karazhan');
insert into `db_script_string` (`entry`, `content_default`, `content_loc1`, `content_loc2`, `content_loc3`, `content_loc4`, `content_loc5`, `content_loc6`, `content_loc7`, `content_loc8`, `sound`, `type`, `language`, `emote`, `comment`) values('2000000805','Do not be so harsh on the child, Alturus. Remember that Cedric himself assigned him to you.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0','0','0','1','Apprentice Darius say to Archmage Alturus Say in Front of Karazhan');



-- =============================================
-- Fix Teleport Location Into Karazhan Main Door - Used Location From Video
-- =============================================
DELETE FROM areatrigger_teleport WHERE id IN (4131);
insert into `areatrigger_teleport` (`id`, `name`, `required_level`, `required_item`, `required_item2`, `heroic_key`, `heroic_key2`, `required_quest_done`, `required_quest_done_heroic`, `target_map`, `target_position_x`, `target_position_y`, `target_position_z`, `target_orientation`, `status`, `status_failed_text`, `condition_id`) values('4131','Karazhan, Main (Entrance)','70','0','0','0','0','0','0','532','-11101.827148','-1998.31189','49.8927','0.007069','0',NULL,'0');



-- ===================
-- Fix Berthold Gossip - SD2 Script Needs To Be Changed To Support Condition 18 CONDITION_INSTANCE_SCRIPT then this Condition needs to be changed to Support Check for Completed Encounter (Handled By Gossip DB Scripts)
-- ===================
-- UPDATE creature_template SET GossipMenuId=7139, ScriptName='' WHERE entry IN (16153);

-- DELETE FROM gossip_menu WHERE entry IN (7139,8167,8168,8169);
-- insert into `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) values('7139','8401','0','0');
-- insert into `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) values('7139','10741','0','509');
-- insert into `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) values('8167','10113','0','0');
-- insert into `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) values('8168','10114','0','0');
-- insert into `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) values('8169','10115','0','0');

-- DELETE FROM gossip_menu_option WHERE menu_id IN (7139);
-- insert into `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `action_script_id`, `box_coded`, `box_money`, `box_text`, `condition_id`) values
-- ('7139','0','0','What is this place?','1','1','8167','0','0','0','0',NULL,'0'),
-- ('7139','1','0','Where is Medivh?','1','1','8168','0','0','0','0',NULL,'0'),
-- ('7139','2','0','How do you navigate the tower?','1','1','8169','0','0','0','0',NULL,'0'),
-- ('7139','3','0','Teleport me to the Guardian\'s Library.','1','1','-1','0','7139','0','0',NULL,'509');

-- DELETE FROM dbscripts_on_gossip WHERE id IN (7139);
-- insert into `dbscripts_on_gossip` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) values
-- ('7139','0','15','39566','0','0','0','0','0','0','0','0','0','0','0','0','Cast Teleport to the Shade of Aran');

-- DELETE FROM conditions WHERE condition_entry IN (509);
-- insert into `conditions` (`condition_entry`, `type`, `value1`, `value2`) values('509','31','658','0');



-- =======================
-- Livery Stables Overhaul
-- =======================
-- REMOVED NPC FOR GUID REUSE
DELETE FROM creature WHERE guid=84979;
DELETE FROM creature_addon WHERE guid=84979;
DELETE FROM creature_movement WHERE id=84979;
DELETE FROM game_event_creature WHERE guid=84979;
DELETE FROM game_event_creature_data WHERE guid=84979;
DELETE FROM creature_battleground WHERE guid=84979;
DELETE FROM creature_linking WHERE guid=84979 OR master_guid=84979;
DELETE FROM creature WHERE guid=85055;
DELETE FROM creature_addon WHERE guid=85055;
DELETE FROM creature_movement WHERE id=85055;
DELETE FROM game_event_creature WHERE guid=85055;
DELETE FROM game_event_creature_data WHERE guid=85055;
DELETE FROM creature_battleground WHERE guid=85055;
DELETE FROM creature_linking WHERE guid=85055 OR master_guid=85055;
DELETE FROM creature WHERE guid=85347;
DELETE FROM creature_addon WHERE guid=85347;
DELETE FROM creature_movement WHERE id=85347;
DELETE FROM game_event_creature WHERE guid=85347;
DELETE FROM game_event_creature_data WHERE guid=85347;
DELETE FROM creature_battleground WHERE guid=85347;
DELETE FROM creature_linking WHERE guid=85347 OR master_guid=85347;
DELETE FROM creature WHERE guid=85344;
DELETE FROM creature_addon WHERE guid=85344;
DELETE FROM creature_movement WHERE id=85344;
DELETE FROM game_event_creature WHERE guid=85344;
DELETE FROM game_event_creature_data WHERE guid=85344;
DELETE FROM creature_battleground WHERE guid=85344;
DELETE FROM creature_linking WHERE guid=85344 OR master_guid=85344;
DELETE FROM creature WHERE guid=85343;
DELETE FROM creature_addon WHERE guid=85343;
DELETE FROM creature_movement WHERE id=85343;
DELETE FROM game_event_creature WHERE guid=85343;
DELETE FROM game_event_creature_data WHERE guid=85343;
DELETE FROM creature_battleground WHERE guid=85343;
DELETE FROM creature_linking WHERE guid=85343 OR master_guid=85343;
DELETE FROM creature WHERE guid=85350;
DELETE FROM creature_addon WHERE guid=85350;
DELETE FROM creature_movement WHERE id=85350;
DELETE FROM game_event_creature WHERE guid=85350;
DELETE FROM game_event_creature_data WHERE guid=85350;
DELETE FROM creature_battleground WHERE guid=85350;
DELETE FROM creature_linking WHERE guid=85350 OR master_guid=85350;
DELETE FROM creature WHERE guid=85348;
DELETE FROM creature_addon WHERE guid=85348;
DELETE FROM creature_movement WHERE id=85348;
DELETE FROM game_event_creature WHERE guid=85348;
DELETE FROM game_event_creature_data WHERE guid=85348;
DELETE FROM creature_battleground WHERE guid=85348;
DELETE FROM creature_linking WHERE guid=85348 OR master_guid=85348;
DELETE FROM creature WHERE guid=85349;
DELETE FROM creature_addon WHERE guid=85349;
DELETE FROM creature_movement WHERE id=85349;
DELETE FROM game_event_creature WHERE guid=85349;
DELETE FROM game_event_creature_data WHERE guid=85349;
DELETE FROM creature_battleground WHERE guid=85349;
DELETE FROM creature_linking WHERE guid=85349 OR master_guid=85349;



-- Fix 3 Horses
DELETE FROM creature WHERE guid=85351;
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('85351','15547','532','1','0','0','-11089.1','-1926.95','49.8903','0.115459','86400','0','0','64629','0','0','0');

UPDATE creature SET position_x = '-11107.132813', position_y = '-1938.802368', position_z = '49.888729', orientation = '2.887913' WHERE guid = '84978';
UPDATE creature SET position_x = '-11107.662109', position_y = '-1941.373169', position_z = '49.889050', orientation = '2.642082' WHERE guid = '85182';

DELETE FROM creature_linking WHERE master_guid IN (84978);
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('85182','84978','3');


-- Calliard with Correct Pathing - Need to add ACID Random Says
UPDATE creature SET position_x = '-11097.052734', position_y = '-1932.945190', position_z = '49.889278', orientation = '1.461623' WHERE guid = '56752';

UPDATE creature_template SET MovementType=2 WHERE entry IN (16159);
UPDATE creature SET SpawnDist=0, MovementType=2 WHERE guid IN (56752);
DELETE FROM creature_movement WHERE id IN (56752);
DELETE FROM creature_movement_template WHERE entry IN (16159);
insert into `creature_movement_template` (`entry`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('16159','1','-11096.7','-1928.49','49.8893','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement_template` (`entry`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('16159','2','-11097.4','-1933.38','49.8893','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement_template` (`entry`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('16159','3','-11103.4','-1941.87','49.8893','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement_template` (`entry`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('16159','4','-11108.1','-1946.38','49.8893','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement_template` (`entry`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('16159','5','-11115.9','-1948.88','49.8893','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement_template` (`entry`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('16159','6','-11121.9','-1949.24','49.8893','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement_template` (`entry`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('16159','7','-11126.8','-1949.37','49.8893','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement_template` (`entry`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('16159','8','-11135','-1946.71','49.884','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement_template` (`entry`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('16159','9','-11142.8','-1943.9','49.8914','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement_template` (`entry`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('16159','10','-11147.9','-1940.47','49.8914','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement_template` (`entry`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('16159','11','-11142.5','-1944.04','49.8914','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement_template` (`entry`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('16159','12','-11134.6','-1946.89','49.8832','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement_template` (`entry`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('16159','13','-11126.5','-1949.67','49.8904','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement_template` (`entry`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('16159','14','-11121.5','-1949.51','49.8904','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement_template` (`entry`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('16159','15','-11115.5','-1949.03','49.8889','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement_template` (`entry`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('16159','16','-11107.9','-1946.75','49.8889','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement_template` (`entry`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('16159','17','-11103','-1942.08','49.8891','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement_template` (`entry`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('16159','18','-11096.8','-1933.63','49.8892','0','0','0','0','0','0','0','0','0','0','0','0');



-- Next Group of Horses with a Stable Hand
UPDATE creature SET position_x = '-11133.196289', position_y = '-1963.428345', position_z = '49.884930', orientation = '4.354250' WHERE guid = '85083';
DELETE FROM creature_linking WHERE master_guid IN (85083);
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('84980','85083','3');

UPDATE creature SET SpawnDist=0, MovementType=2 WHERE guid IN (85080);
DELETE FROM creature_movement WHERE id IN (85080);
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('85080','1','-11136','-1961.4','49.8892','30000','0','0','0','0','0','0','69','0','5.865234','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('85080','2','-11144.1','-1959.7','49.8912','0','8508001','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('85080','3','-11152.3','-1957.81','49.8912','40000','0','0','0','0','0','0','69','0','3.113198','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('85080','4','-11144.2','-1959.84','49.8912','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('85080','5','-11136','-1961.4','49.8892','20000','0','0','0','0','0','0','69','0','5.865234','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('85080','6','-11144.1','-1959.7','49.8912','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('85080','7','-11152.3','-1957.81','49.8912','30000','0','0','0','0','0','0','69','0','3.113198','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('85080','8','-11144.2','-1959.84','49.8912','0','8508001','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('85080','9','-11136','-1961.4','49.8892','40000','0','0','0','0','0','0','69','0','5.865234','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('85080','10','-11144.1','-1959.7','49.8912','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('85080','11','-11152.3','-1957.81','49.8912','20000','0','0','0','0','0','0','69','0','3.113198','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('85080','12','-11144.2','-1959.84','49.8912','0','0','0','0','0','0','0','0','0','0','0','0');

DELETE FROM dbscripts_on_creature_movement WHERE id IN (8508001);
insert into `dbscripts_on_creature_movement` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) values('8508001','0','0','0','0','0','0','0','2000000806','2000000807','0','0','0','0','0','0','Spectral Stable Hand - Random Say');
insert into `dbscripts_on_creature_movement` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) values('8508001','6','0','0','0','16159','60','3','2000000808','2000000809','0','0','0','0','0','0','Calliard - Random Say');

DELETE FROM db_script_string WHERE entry IN (2000000806,2000000807,2000000808,2000000809);
insert into `db_script_string` (`entry`, `content_default`, `content_loc1`, `content_loc2`, `content_loc3`, `content_loc4`, `content_loc5`, `content_loc6`, `content_loc7`, `content_loc8`, `sound`, `type`, `language`, `emote`, `comment`) values('2000000806','<sigh> Seems like I\'ve been at this forever...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0','0','0','1','Spectral Stable Hand - Say 1');
insert into `db_script_string` (`entry`, `content_default`, `content_loc1`, `content_loc2`, `content_loc3`, `content_loc4`, `content_loc5`, `content_loc6`, `content_loc7`, `content_loc8`, `sound`, `type`, `language`, `emote`, `comment`) values('2000000807','Another day, another stable to muck out.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0','0','0','1','Spectral Stable Hand - Say 1');
insert into `db_script_string` (`entry`, `content_default`, `content_loc1`, `content_loc2`, `content_loc3`, `content_loc4`, `content_loc5`, `content_loc6`, `content_loc7`, `content_loc8`, `sound`, `type`, `language`, `emote`, `comment`) values('2000000808','Am I hearing things?',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0','0','0','1','Calliard - Say 1');
insert into `db_script_string` (`entry`, `content_default`, `content_loc1`, `content_loc2`, `content_loc3`, `content_loc4`, `content_loc5`, `content_loc6`, `content_loc7`, `content_loc8`, `sound`, `type`, `language`, `emote`, `comment`) values('2000000809','Who goes there?',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0','0','0','1','Calliard - Say 2');


-- Stable Hand and Spectral Stallion Pathing Together
DELETE FROM creature WHERE guid IN (101404,101405);
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('101404','15551','532','1','0','0','-11130.8','-1957.99','49.8888','0.117698','86400','0','0','33534','31550','0','2');
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('101405','15548','532','1','0','0','-11133.6','-1959.09','49.8873','6.26894','86400','0','0','45240','0','0','0');

DELETE FROM creature_addon WHERE guid IN (101404);
insert into `creature_addon` (`guid`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) values('101404','0','0','1','0','0','0',NULL);

DELETE FROM creature_linking WHERE master_guid IN (101404);
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('101405','101404','515');

DELETE FROM creature_movement WHERE id IN (101404);
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('101404','1','-11126.3','-1957.68','49.8889','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('101404','2','-11117.6','-1956.5','49.8889','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('101404','3','-11110.8','-1953.2','49.8875','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('101404','4','-11103.7','-1948.03','49.8818','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('101404','5','-11110.7','-1953.61','49.8872','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('101404','6','-11118.2','-1957.08','49.8867','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('101404','7','-11127.1','-1957.87','49.889','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('101404','8','-11132.7','-1958.22','49.8879','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('101404','9','-11139.3','-1959.97','49.8872','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('101404','10','-11146.4','-1956.93','49.8911','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('101404','11','-11152.7','-1949.94','49.8911','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('101404','12','-11154.6','-1939.97','49.8911','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('101404','13','-11153.2','-1934.92','49.889','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('101404','14','-11149.1','-1926.86','49.8859','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('101404','15','-11146.8','-1919.61','49.889','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('101404','16','-11141.7','-1913.86','49.889','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('101404','17','-11133','-1905.59','49.889','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('101404','18','-11141.6','-1913.93','49.8901','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('101404','19','-11146.9','-1920.1','49.8901','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('101404','20','-11148.9','-1927.68','49.8846','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('101404','21','-11153.6','-1935.44','49.8877','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('101404','22','-11155.1','-1941.44','49.8888','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('101404','23','-11152.2','-1951.02','49.8888','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('101404','24','-11146.2','-1957.34','49.8888','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('101404','25','-11138.6','-1960.31','49.888','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('101404','26','-11132','-1958.08','49.8879','0','0','0','0','0','0','0','0','0','0','0','0');


-- 2 Spectral Horses Together
DELETE FROM creature_linking WHERE master_guid IN (85001);
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('85181','85001','3');


-- Stable Hand and Spectral Stallion Standing Together
DELETE FROM creature_linking WHERE master_guid IN (85081);
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('85180','85081','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('85085','85081','3');


-- Spectral Stable Hand Pathing Between Horses
DELETE FROM creature_movement WHERE id IN (85085);
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('85085','1','-11147','-1929.18','49.8892','30000','8508001','0','0','0','0','0','69','0','6.1095','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('85085','2','-11164.5','-1938.01','49.8904','20000','0','0','0','0','0','0','69','0','1.569114','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('85085','3','-11147','-1929.18','49.8892','40000','0','0','0','0','0','0','69','0','6.1095','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('85085','4','-11164.5','-1938.01','49.8904','20000','0','0','0','0','0','0','69','0','1.569114','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('85085','5','-11147','-1929.18','49.8892','40000','0','0','0','0','0','0','69','0','6.1095','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('85085','6','-11164.5','-1938.01','49.8904','30000','8508001','0','0','0','0','0','69','0','1.569114','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('85085','7','-11147','-1929.18','49.8892','40000','0','0','0','0','0','0','69','0','6.1095','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('85085','8','-11164.5','-1938.01','49.8904','20000','0','0','0','0','0','0','69','0','1.569114','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('85085','9','-11147','-1929.18','49.8892','30000','0','0','0','0','0','0','69','0','6.1095','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('85085','10','-11164.5','-1938.01','49.8904','30000','0','0','0','0','0','0','69','0','1.569114','0','0');


-- Group of 2 Horses and 2 Stable Hands Before Midnight
DELETE FROM creature WHERE guid IN (101406,101407,101408,101409);
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('101406','15547','532','1','0','0','-11153.4','-1913.33','49.8889','0.568514','86400','0','0','64629','0','0','0');
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('101407','15551','532','1','0','0','-11151.372070','-1913.820679','49.890079','2.307501','86400','0','0','33534','31550','0','2');
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('101408','15547','532','1','0','0','-11147.4','-1913.5','49.8889','2.36864','86400','0','0','64629','0','0','0');
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('101409','15551','532','1','0','0','-11149.5','-1913.88','49.8889','0.687894','86400','0','0','33534','31550','0','0');


DELETE FROM creature_movement WHERE id IN (101407);
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('101407','1','-11147.4','-1913.5','49.8889','45000','8508001','0','0','0','0','0','0','0','2.36864','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('101407','2','-11147.4','-1913.5','49.8889','80000','0','0','0','0','0','0','0','0','2.36864','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('101407','3','-11147.4','-1913.5','49.8889','25000','8508001','0','0','0','0','0','0','0','2.36864','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('101407','4','-11147.4','-1913.5','49.8889','85000','0','0','0','0','0','0','0','0','2.36864','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('101407','5','-11147.4','-1913.5','49.8889','70000','8508001','0','0','0','0','0','0','0','2.36864','0','0');


-- Group of 3 Stable hands and 2 Horses Before Midnight
UPDATE creature SET position_x = '-11139.468750', position_y = '-1890.015137', position_z = '49.891010', orientation = '1.009123' WHERE guid = '85035';
UPDATE creature SET position_x = '-11135.121094', position_y = '-1890.339722', position_z = '49.888035', orientation = '2.200573' WHERE guid = '85036';
UPDATE creature SET position_x = '-11134.034180', position_y = '-1894.835327', position_z = '49.889801', orientation = '3.143836' WHERE guid = '84981';
UPDATE creature SET position_x = '-11141.928711', position_y = '-1893.276733', position_z = '49.889210', orientation = '2.380429' WHERE guid = '84974';
UPDATE creature SET position_x = '-11136.978516', position_y = '-1894.764526', position_z = '49.889843', orientation = '6.198248' WHERE guid = '84973';

DELETE FROM creature_linking WHERE master_guid IN (85035);
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('85036','85035','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('84981','85035','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('84974','85035','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('84973','85035','3');


-- Group of 5 NPC After Midnight
UPDATE creature SET position_x = '-11091.561523', position_y = '-1911.222046', position_z = '49.848724', orientation = '5.009161' WHERE guid = '85376';
UPDATE creature SET position_x = '-11096.168945', position_y = '-1904.782471', position_z = '49.861694', orientation = '1.849504' WHERE guid = '85377';
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('84979','16389','532','1','0','0','-11097.2','-1901.61','49.8417','5.02565','86400','0','0','41916','0','0','0');
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('85055','16407','532','1','0','0','-11099.2','-1898.3','49.8568','0.78686','86400','0','0','41916','0','0','2');
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('85347','16407','532','1','0','0','-11092.1','-1914.78','49.86','1.6241','86400','0','0','40566','0','0','2');

DELETE FROM creature_movement WHERE id IN (85055);
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('85055','1','-11099.2','-1898.3','49.8568','65000','0','0','0','0','0','0','0','0','0.78686','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('85055','2','-11099.2','-1898.3','49.8568','55000','8505501','0','0','0','0','0','0','0','0.78686','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('85055','3','-11099.2','-1898.3','49.8568','50000','0','0','0','0','0','0','0','0','0.78686','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('85055','4','-11099.2','-1898.3','49.8568','80000','8505501','0','0','0','0','0','0','0','0.78686','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('85055','5','-11099.2','-1898.3','49.8568','37000','0','0','0','0','0','0','0','0','0.78686','0','0');

DELETE FROM creature_movement WHERE id IN (85347);
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('85347','1','-11092.1','-1914.78','49.86','90000','0','0','0','0','0','0','0','0','1.6241','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('85347','2','-11092.1','-1914.78','49.86','60000','0','0','0','0','0','0','0','0','1.6241','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('85347','3','-11092.1','-1914.78','49.86','45000','8505501','0','0','0','0','0','0','0','1.6241','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('85347','4','-11092.1','-1914.78','49.86','90000','0','0','0','0','0','0','0','0','1.6241','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('85347','5','-11092.1','-1914.78','49.86','20000','8505501','0','0','0','0','0','0','0','1.6241','0','0');

DELETE FROM dbscripts_on_creature_movement WHERE id IN (8505501);
insert into `dbscripts_on_creature_movement` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) values('8505501','0','0','0','0','0','0','0','2000000810','2000000811','2000000812','0','0','0','0','0','Spectral Servant - Random Say');
insert into `dbscripts_on_creature_movement` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) values('8505501','6','0','0','0','16159','60','3','2000000808','2000000809','0','0','0','0','0','0','Calliard - Random Say');

DELETE FROM db_script_string WHERE entry IN (2000000810,2000000811,2000000812);
insert into `db_script_string` (`entry`, `content_default`, `content_loc1`, `content_loc2`, `content_loc3`, `content_loc4`, `content_loc5`, `content_loc6`, `content_loc7`, `content_loc8`, `sound`, `type`, `language`, `emote`, `comment`) values('2000000810','They\'ll never know we\'re missing.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0','0','0','1','Spectral Servant - Say 1');
insert into `db_script_string` (`entry`, `content_default`, `content_loc1`, `content_loc2`, `content_loc3`, `content_loc4`, `content_loc5`, `content_loc6`, `content_loc7`, `content_loc8`, `sound`, `type`, `language`, `emote`, `comment`) values('2000000811','The rest are fine without us.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0','0','0','1','Spectral Servant - Say 2');
insert into `db_script_string` (`entry`, `content_default`, `content_loc1`, `content_loc2`, `content_loc3`, `content_loc4`, `content_loc5`, `content_loc6`, `content_loc7`, `content_loc8`, `sound`, `type`, `language`, `emote`, `comment`) values('2000000812','If we dawdle much longer, there\'ll be hell to pay!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0','0','0','1','Spectral Servant - Say 3');


DELETE FROM creature_linking WHERE master_guid IN (85376);
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('85377','85376','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('84979','85376','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('85055','85376','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('85347','85376','3');

DELETE FROM creature_addon WHERE guid IN (85377,85376);
insert into `creature_addon` (`guid`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) values('85377','0','0','1','0','173','0',NULL);
insert into `creature_addon` (`guid`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) values('85376','0','0','1','0','173','0',NULL);


-- Fix Some Spectral Stable Hands To Carry Shovels instead of Pitch Forks
UPDATE creature SET equipment_id=5486 WHERE guid IN (84973,101409,85085,101404);


-- Last Group of 3 NPC on the Lower Floor (Stables)
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('85350','16389','532','1','0','0','-11125','-1896.74','49.8918','6.11585','86400','0','0','41916','0','0','2');
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('85348','16389','532','1','0','0','-11122.7','-1896.08','49.8902','3.48162','86400','0','0','41916','0','0','0');
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('85349','16389','532','1','0','0','-11121.6','-1890.82','49.8836','3.19338','86400','0','0','41916','0','0','2');

DELETE FROM creature_movement WHERE id IN (85349);
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('85349','1','-11121.6','-1890.82','49.8836','75000','0','0','0','0','0','0','0','0','3.19338','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('85349','2','-11121.6','-1890.82','49.8836','35000','8505501','0','0','0','0','0','0','0','3.19338','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('85349','3','-11121.6','-1890.82','49.8836','70000','0','0','0','0','0','0','0','0','3.19338','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('85349','4','-11121.6','-1890.82','49.8836','80000','8505501','0','0','0','0','0','0','0','3.19338','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('85349','5','-11121.6','-1890.82','49.8836','30000','0','0','0','0','0','0','0','0','3.19338','0','0');

DELETE FROM creature_movement WHERE id IN (85350);
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('85350','1','-11125','-1896.74','49.8918','45000','8505501','0','0','0','0','0','0','0','6.11585','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('85350','2','-11125','-1896.74','49.8918','45000','0','0','0','0','0','0','0','0','6.11585','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('85350','3','-11125','-1896.74','49.8918','90000','8505501','0','0','0','0','0','0','0','6.11585','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('85350','4','-11125','-1896.74','49.8918','80000','0','0','0','0','0','0','0','0','6.11585','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('85350','5','-11125','-1896.74','49.8918','65000','0','0','0','0','0','0','0','0','6.11585','0','0');

DELETE FROM creature_linking WHERE master_guid IN (85350);
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('85348','85350','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('85349','85350','3');



-- ========================================
-- Upstairs (Above Livery Stables) Overhaul
-- ========================================
-- 2 Guards at Top of Stairs
DELETE FROM creature WHERE guid IN (101410,101411);
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('101410','16424','532','1','0','0','-11163.8','-1919.95','74.4151','1.17335','86400','0','0','43086','0','0','0');
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('101411','16424','532','1','0','0','-11153.8','-1921.66','74.4261','1.66029','86400','0','0','43086','0','0','0');

DELETE FROM creature_linking WHERE master_guid IN (101410);
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('101411','101410','3');


-- Group of 3 in First Room
DELETE FROM creature WHERE guid IN (101412,101413,101414);
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('101412','16424','532','1','0','0','-11164.6','-1943.58','74.3947','5.764','86400','0','0','43086','0','0','2');
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('101413','16424','532','1','0','0','-11162.9','-1944.91','74.3967','2.24777','86400','0','0','43086','0','0','2');
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('101414','16425','532','1','0','0','-11162.9','-1942.08','74.4','4.50501','86400','0','0','30160','0','0','2');

DELETE FROM creature_movement WHERE id IN (101412);
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('101412','1','-11164.6','-1943.58','74.3947','12000','0','0','0','0','0','0','11','0','5.764','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('101412','2','-11164.6','-1943.58','74.3947','20000','0','0','0','0','0','0','1','0','5.764','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('101412','3','-11164.6','-1943.58','74.3947','15000','0','0','0','0','0','0','0','0','5.764','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('101412','4','-11164.6','-1943.58','74.3947','8000','0','0','0','0','0','0','1','0','5.764','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('101412','5','-11164.6','-1943.58','74.3947','15000','0','0','0','0','0','0','11','0','5.764','0','0');

DELETE FROM creature_movement WHERE id IN (101413);
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('101413','1','-11162.9','-1944.91','74.3967','5000','0','0','0','0','0','0','1','0','2.24777','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('101413','2','-11162.9','-1944.91','74.3967','15000','0','0','0','0','0','0','11','0','2.24777','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('101413','3','-11162.9','-1944.91','74.3967','25000','0','0','0','0','0','0','11','0','2.24777','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('101413','4','-11162.9','-1944.91','74.3967','18000','0','0','0','0','0','0','0','0','2.24777','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('101413','5','-11162.9','-1944.91','74.3967','30000','0','0','0','0','0','0','1','0','2.24777','0','0');

DELETE FROM creature_movement WHERE id IN (101414);
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('101414','1','-11162.9','-1942.08','74.4','18000','0','0','0','0','0','0','1','0','4.50501','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('101414','2','-11162.9','-1942.08','74.4','23000','0','0','0','0','0','0','1','0','4.50501','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('101414','3','-11162.9','-1942.08','74.4','9000','0','0','0','0','0','0','11','0','4.50501','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('101414','4','-11162.9','-1942.08','74.4','17000','0','0','0','0','0','0','1','0','4.50501','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('101414','5','-11162.9','-1942.08','74.4','24000','0','0','0','0','0','0','0','0','4.50501','0','0');

DELETE FROM creature_linking WHERE master_guid IN (101414);
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('101412','101414','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('101413','101414','3');

DELETE FROM creature_addon WHERE guid IN (101414);
insert into `creature_addon` (`guid`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) values('101414','0','0','0','0','0','0',NULL);


-- 2nd Group of 3 NPC in First Room
DELETE FROM creature WHERE guid IN (101415,101416,101417);
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('101415','16425','532','1','0','0','-11139.4','-1944.71','74.4052','5.33203','86400','0','0','30160','0','0','2');
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('101416','16424','532','1','0','0','-11137.9','-1946.9','74.4058','2.39386','86400','0','0','43086','0','0','2');
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('101417','16424','532','1','0','0','-11136.8','-1945.36','74.404','3.0371','86400','0','0','43086','0','0','2');

DELETE FROM creature_movement WHERE id IN (101415);
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('101415','1','-11139.4','-1944.71','74.4052','7000','0','0','0','0','0','0','11','0','5.33203','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('101415','2','-11139.4','-1944.71','74.4052','14000','0','0','0','0','0','0','1','0','5.33203','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('101415','3','-11139.4','-1944.71','74.4052','27000','0','0','0','0','0','0','0','0','5.33203','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('101415','4','-11139.4','-1944.71','74.4052','17000','0','0','0','0','0','0','1','0','5.33203','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('101415','5','-11139.4','-1944.71','74.4052','19000','0','0','0','0','0','0','11','0','5.33203','0','0');

DELETE FROM creature_movement WHERE id IN (101416);
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('101416','1','-11137.9','-1946.9','74.4058','11000','0','0','0','0','0','0','1','0','2.39386','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('101416','2','-11137.9','-1946.9','74.4058','18000','0','0','0','0','0','0','11','0','2.39386','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('101416','3','-11137.9','-1946.9','74.4058','20000','0','0','0','0','0','0','11','0','2.39386','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('101416','4','-11137.9','-1946.9','74.4058','18000','0','0','0','0','0','0','0','0','2.39386','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('101416','5','-11137.9','-1946.9','74.4058','16000','0','0','0','0','0','0','1','0','2.39386','0','0');

DELETE FROM creature_movement WHERE id IN (101417);
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('101417','1','-11136.8','-1945.36','74.404','18000','0','0','0','0','0','0','1','0','3.0371','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('101417','2','-11136.8','-1945.36','74.404','18000','0','0','0','0','0','0','1','0','3.0371','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('101417','3','-11136.8','-1945.36','74.404','24000','0','0','0','0','0','0','11','0','3.0371','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('101417','4','-11136.8','-1945.36','74.404','27000','0','0','0','0','0','0','1','0','3.0371','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('101417','5','-11136.8','-1945.36','74.404','12000','0','0','0','0','0','0','0','0','3.0371','0','0');

DELETE FROM creature_linking WHERE master_guid IN (101415);
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('101416','101415','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('101417','101415','3');


-- NPC Pathing Between 2 Groups in First Room
DELETE FROM creature WHERE guid IN (101418);
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('101418','16425','532','1','0','0','-11141.1','-1946.75','74.4089','0.124058','86400','0','0','30160','0','0','2');

DELETE FROM creature_movement WHERE id IN (101418);
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('101418','1','-11161.5','-1943.55','74.4007','20000','0','0','0','0','0','0','0','0','2.916932','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('101418','2','-11141.1','-1946.8','74.4094','20000','0','0','0','0','0','0','0','0','0.142119','0','0');


-- Guardsman and Sentry Pathing in Circle
DELETE FROM creature WHERE guid IN (101419,101420);
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('101419','16425','532','1','0','0','-11139.7','-1896.96','74.3801','3.76044','86400','0','0','30160','0','0','2');
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('101420','16424','532','1','0','0','-11138.6','-1895.47','74.382','3.72039','86400','0','0','43086','0','0','0');
UPDATE creature SET position_x = '-11139.469727', position_y = '-1896.216553', position_z = '74.382805', orientation = '3.604936' WHERE guid = '101420';

DELETE FROM creature_movement WHERE id IN (101419);
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('101419','1','-11146.7','-1901.95','74.3984','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('101419','2','-11150.2','-1905.7','74.3984','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('101419','3','-11156','-1912.03','74.3984','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('101419','4','-11158.6','-1918.91','74.4161','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('101419','5','-11159.8','-1928.74','74.4171','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('101419','6','-11157.6','-1939.25','74.4155','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('101419','7','-11152.7','-1947.97','74.4106','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('101419','8','-11146.8','-1953.86','74.4106','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('101419','9','-11140.5','-1957.11','74.4099','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('101419','10','-11133','-1958.33','74.4116','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('101419','11','-11122','-1959.35','74.4021','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('101419','12','-11113.1','-1956.19','74.3972','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('101419','13','-11098.4','-1944.14','74.4314','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('101419','14','-11092.3','-1934.64','74.4734','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('101419','15','-11092','-1926.03','74.413','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('101419','16','-11092.8','-1915.9','74.4084','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('101419','17','-11094.5','-1906.1','74.4087','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('101419','18','-11099.8','-1903.11','74.4146','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('101419','19','-11110','-1898.35','74.416','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('101419','20','-11124.6','-1891.45','74.4176','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('101419','21','-11129.6','-1891.72','74.414','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('101419','22','-11136.5','-1893.33','74.3863','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('101419','23','-11141.9','-1897.87','74.3827','0','0','0','0','0','0','0','0','0','0','0','0');

DELETE FROM creature_linking WHERE master_guid IN (101419);
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('101420','101419','515');


-- Group of 4 NPC in Circle Next Room Over
DELETE FROM creature WHERE guid IN (101421,101422,101423,101424);
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('101421','16425','532','1','0','0','-11116.1','-1944.85','74.3978','6.15513','86400','0','0','30160','0','0','2');
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('101422','16425','532','1','0','0','-11113.7','-1942.67','74.3978','4.57962','86400','0','0','30160','0','0','2');
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('101423','16424','532','1','0','0','-11112.3','-1945.03','74.3979','3.01668','86400','0','0','43086','0','0','2');
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('101424','16424','532','1','0','0','-11114.3','-1946.61','74.3982','1.32493','86400','0','0','43086','0','0','2');

DELETE FROM creature_movement WHERE id IN (101421);
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('101421','1','-11116.1','-1944.85','74.3978','12000','0','0','0','0','0','0','11','0','6.15513','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('101421','2','-11116.1','-1944.85','74.3978','20000','0','0','0','0','0','0','1','0','6.15513','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('101421','3','-11116.1','-1944.85','74.3978','15000','0','0','0','0','0','0','0','0','6.15513','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('101421','4','-11116.1','-1944.85','74.3978','8000','0','0','0','0','0','0','1','0','6.15513','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('101421','5','-11116.1','-1944.85','74.3978','15000','0','0','0','0','0','0','11','0','6.15513','0','0');

DELETE FROM creature_movement WHERE id IN (101422);
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('101422','1','-11113.7','-1942.67','74.3978','5000','0','0','0','0','0','0','1','0','4.57962','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('101422','2','-11113.7','-1942.67','74.3978','15000','0','0','0','0','0','0','11','0','4.57962','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('101422','3','-11113.7','-1942.67','74.3978','25000','0','0','0','0','0','0','11','0','4.57962','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('101422','4','-11113.7','-1942.67','74.3978','18000','0','0','0','0','0','0','0','0','4.57962','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('101422','5','-11113.7','-1942.67','74.3978','30000','0','0','0','0','0','0','1','0','4.57962','0','0');

DELETE FROM creature_movement WHERE id IN (101423);
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('101423','1','-11112.3','-1945.03','74.3979','18000','0','0','0','0','0','0','1','0','3.01668','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('101423','2','-11112.3','-1945.03','74.3979','23000','0','0','0','0','0','0','1','0','3.01668','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('101423','3','-11112.3','-1945.03','74.3979','9000','0','0','0','0','0','0','11','0','3.01668','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('101423','4','-11112.3','-1945.03','74.3979','17000','0','0','0','0','0','0','1','0','3.01668','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('101423','5','-11112.3','-1945.03','74.3979','24000','0','0','0','0','0','0','0','0','3.01668','0','0');

DELETE FROM creature_movement WHERE id IN (101424);
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('101424','1','-11114.3','-1946.61','74.3982','28000','0','0','0','0','0','0','11','0','1.32493','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('101424','2','-11114.3','-1946.61','74.3982','43000','0','0','0','0','0','0','1','0','1.32493','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('101424','3','-11114.3','-1946.61','74.3982','19000','0','0','0','0','0','0','11','0','1.32493','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('101424','4','-11114.3','-1946.61','74.3982','12000','0','0','0','0','0','0','1','0','1.32493','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('101424','5','-11114.3','-1946.61','74.3982','44000','0','0','0','0','0','0','1','0','1.32493','0','0');

DELETE FROM creature_linking WHERE master_guid IN (101421);
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('101422','101421','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('101423','101421','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('101424','101421','3');


-- Group of 2 NPC Practice Fighting
DELETE FROM creature WHERE guid IN (101425,101426);
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('101425','16425','532','1','0','0','-11102.2','-1913.86','74.4072','6.28158','86400','0','0','30160','0','0','2');
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('101426','16424','532','1','0','0','-11100','-1914.4','74.4094','2.76378','86400','0','0','43086','0','0','2');

DELETE FROM creature_movement WHERE id IN (101425);
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('101425','1','-11102.2','-1913.86','74.4072','2000','0','0','0','0','0','0','36','0','6.28158','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('101425','2','-11102.2','-1913.86','74.4072','2000','0','0','0','0','0','0','43','0','6.28158','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('101425','3','-11102.2','-1913.86','74.4072','2000','0','0','0','0','0','0','36','0','6.28158','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('101425','4','-11102.2','-1913.86','74.4072','2000','0','0','0','0','0','0','43','0','6.28158','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('101425','5','-11102.2','-1913.86','74.4072','6000','0','0','0','0','0','0','0','0','6.28158','0','0');

DELETE FROM creature_movement WHERE id IN (101426);
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('101426','1','-11100','-1914.4','74.4094','2000','0','0','0','0','0','0','43','0','2.76378','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('101426','2','-11100','-1914.4','74.4094','2000','0','0','0','0','0','0','36','0','2.76378','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('101426','3','-11100','-1914.4','74.4094','2000','0','0','0','0','0','0','43','0','2.76378','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('101426','4','-11100','-1914.4','74.4094','2000','0','0','0','0','0','0','36','0','2.76378','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('101426','5','-11100','-1914.4','74.4094','6000','0','0','0','0','0','0','0','0','2.76378','0','0');

DELETE FROM creature_linking WHERE master_guid IN (101425);
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('101426','101425','3');


-- Group of 2 NPC Practice Fighting
DELETE FROM creature WHERE guid IN (101427,101428);
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('101427','16425','532','1','0','0','-11096.1','-1910.71','74.4159','2.90751','86400','0','0','30160','0','0','2');
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('101428','16424','532','1','0','0','-11098.7','-1909.84','74.4159','5.93993','86400','0','0','43086','0','0','2');

DELETE FROM creature_movement WHERE id IN (101427);
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('101427','1','-11096.1','-1910.71','74.4159','6000','0','0','0','0','0','0','0','0','2.90751','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('101427','2','-11096.1','-1910.71','74.4159','2000','0','0','0','0','0','0','36','0','2.90751','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('101427','3','-11096.1','-1910.71','74.4159','2000','0','0','0','0','0','0','43','0','2.90751','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('101427','4','-11096.1','-1910.71','74.4159','2000','0','0','0','0','0','0','36','0','2.90751','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('101427','5','-11096.1','-1910.71','74.4159','2000','0','0','0','0','0','0','43','0','2.90751','0','0');

DELETE FROM creature_movement WHERE id IN (101428);
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('101428','1','-11098.7','-1909.84','74.4159','6000','0','0','0','0','0','0','0','0','5.93993','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('101428','2','-11098.7','-1909.84','74.4159','2000','0','0','0','0','0','0','43','0','5.93993','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('101428','3','-11098.7','-1909.84','74.4159','2000','0','0','0','0','0','0','36','0','5.93993','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('101428','4','-11098.7','-1909.84','74.4159','2000','0','0','0','0','0','0','43','0','5.93993','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('101428','5','-11098.7','-1909.84','74.4159','2000','0','0','0','0','0','0','36','0','5.93993','0','0');

DELETE FROM creature_linking WHERE master_guid IN (101427);
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('101428','101427','3');


-- Group of 2 NPC Practice Fighting
DELETE FROM creature WHERE guid IN (101429,101430);
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('101429','16424','532','1','0','0','-11109','-1906.77','74.4063','2.02237','86400','0','0','43086','0','0','2');
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('101430','16425','532','1','0','0','-11109.9','-1904.45','74.4079','5.0328','86400','0','0','30160','0','0','2');

DELETE FROM creature_movement WHERE id IN (101429);
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('101429','1','-11109','-1906.77','74.4063','4000','0','0','0','0','0','0','0','0','2.02237','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('101429','2','-11109','-1906.77','74.4063','2000','0','0','0','0','0','0','36','0','2.02237','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('101429','3','-11109','-1906.77','74.4063','2000','0','0','0','0','0','0','43','0','2.02237','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('101429','4','-11109','-1906.77','74.4063','2000','0','0','0','0','0','0','36','0','2.02237','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('101429','5','-11109','-1906.77','74.4063','2000','0','0','0','0','0','0','43','0','2.02237','0','0');

DELETE FROM creature_movement WHERE id IN (101430);
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('101430','1','-11109.9','-1904.45','74.4079','4000','0','0','0','0','0','0','0','0','5.0328','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('101430','2','-11109.9','-1904.45','74.4079','2000','0','0','0','0','0','0','43','0','5.0328','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('101430','3','-11109.9','-1904.45','74.4079','2000','0','0','0','0','0','0','36','0','5.0328','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('101430','4','-11109.9','-1904.45','74.4079','2000','0','0','0','0','0','0','43','0','5.0328','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('101430','5','-11109.9','-1904.45','74.4079','2000','0','0','0','0','0','0','36','0','5.0328','0','0');

DELETE FROM creature_linking WHERE master_guid IN (101429);
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('101430','101429','3');


-- Group of 2 NPC Practice Fighting
DELETE FROM creature WHERE guid IN (101431,101432);
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('101431','16425','532','1','0','0','-11115','-1902.87','74.4053','0.643215','86400','0','0','30160','0','0','2');
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('101432','16424','532','1','0','0','-11113.3','-1901.62','74.4082','3.63087','86400','0','0','43086','0','0','2');

DELETE FROM creature_movement WHERE id IN (101431);
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('101431','1','-11115','-1902.87','74.4053','2000','0','0','0','0','0','0','36','0','0.643215','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('101431','2','-11115','-1902.87','74.4053','2000','0','0','0','0','0','0','43','0','0.643215','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('101431','3','-11115','-1902.87','74.4053','8000','0','0','0','0','0','0','0','0','0.643215','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('101431','4','-11115','-1902.87','74.4053','2000','0','0','0','0','0','0','36','0','0.643215','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('101431','5','-11115','-1902.87','74.4053','2000','0','0','0','0','0','0','43','0','0.643215','0','0');

DELETE FROM creature_movement WHERE id IN (101432);
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('101432','1','-11113.3','-1901.62','74.4082','2000','0','0','0','0','0','0','43','0','3.63087','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('101432','2','-11113.3','-1901.62','74.4082','2000','0','0','0','0','0','0','36','0','3.63087','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('101432','3','-11113.3','-1901.62','74.4082','8000','0','0','0','0','0','0','0','0','3.63087','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('101432','4','-11113.3','-1901.62','74.4082','2000','0','0','0','0','0','0','43','0','3.63087','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('101432','5','-11113.3','-1901.62','74.4082','2000','0','0','0','0','0','0','36','0','3.63087','0','0');

DELETE FROM creature_linking WHERE master_guid IN (101431);
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('101432','101431','3');


-- Group of 2 NPC Practice Fighting
DELETE FROM creature WHERE guid IN (101433,101434);
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('101433','16425','532','1','0','0','-11109','-1890.41','74.4053','3.08895','86400','0','0','30160','0','0','2');
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('101434','16424','532','1','0','0','-11110.9','-1890.26','74.4071','0.157841','86400','0','0','43086','0','0','2');

DELETE FROM creature_movement WHERE id IN (101433);
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('101433','1','-11109','-1890.41','74.4053','2000','0','0','0','0','0','0','36','0','3.08895','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('101433','2','-11109','-1890.41','74.4053','2000','0','0','0','0','0','0','43','0','3.08895','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('101433','3','-11109','-1890.41','74.4053','6000','0','0','0','0','0','0','0','0','3.08895','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('101433','4','-11109','-1890.41','74.4053','2000','0','0','0','0','0','0','36','0','3.08895','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('101433','5','-11109','-1890.41','74.4053','2000','0','0','0','0','0','0','43','0','3.08895','0','0');

DELETE FROM creature_movement WHERE id IN (101434);
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('101434','1','-11110.9','-1890.26','74.4071','2000','0','0','0','0','0','0','43','0','0.157841','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('101434','2','-11110.9','-1890.26','74.4071','2000','0','0','0','0','0','0','36','0','0.157841','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('101434','3','-11110.9','-1890.26','74.4071','6000','0','0','0','0','0','0','0','0','0.157841','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('101434','4','-11110.9','-1890.26','74.4071','2000','0','0','0','0','0','0','43','0','0.157841','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('101434','5','-11110.9','-1890.26','74.4071','2000','0','0','0','0','0','0','36','0','0.157841','0','0');

DELETE FROM creature_linking WHERE master_guid IN (101433);
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('101434','101433','3');


-- Group of 2 NPC Practice Fighting
DELETE FROM creature WHERE guid IN (101435,101436);
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('101435','16424','532','1','0','0','-11105.9','-1891.95','74.4042','5.53075','86400','0','0','43086','0','0','2');
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('101436','16425','532','1','0','0','-11104.2','-1893.5','74.4051','2.27056','86400','0','0','30160','0','0','2');

DELETE FROM creature_movement WHERE id IN (101435);
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('101435','1','-11105.9','-1891.95','74.4042','2000','0','0','0','0','0','0','36','0','5.53075','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('101435','2','-11105.9','-1891.95','74.4042','2000','0','0','0','0','0','0','43','0','5.53075','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('101435','3','-11105.9','-1891.95','74.4042','4000','0','0','0','0','0','0','0','0','5.53075','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('101435','4','-11105.9','-1891.95','74.4042','2000','0','0','0','0','0','0','36','0','5.53075','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('101435','5','-11105.9','-1891.95','74.4042','2000','0','0','0','0','0','0','43','0','5.53075','0','0');

DELETE FROM creature_movement WHERE id IN (101436);
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('101436','1','-11104.2','-1893.5','74.4051','2000','0','0','0','0','0','0','43','0','2.27056','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('101436','2','-11104.2','-1893.5','74.4051','2000','0','0','0','0','0','0','36','0','2.27056','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('101436','3','-11104.2','-1893.5','74.4051','4000','0','0','0','0','0','0','0','0','2.27056','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('101436','4','-11104.2','-1893.5','74.4051','2000','0','0','0','0','0','0','43','0','2.27056','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('101436','5','-11104.2','-1893.5','74.4051','2000','0','0','0','0','0','0','36','0','2.27056','0','0');

DELETE FROM creature_linking WHERE master_guid IN (101435);
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('101436','101435','3');


-- Sentry Pathing Around NPC Practice Fighting
DELETE FROM creature WHERE guid IN (101437);
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('101437','16424','532','1','0','0','-11088.3','-1911.64','74.4004','2.67191','86400','0','0','43086','0','0','2');

DELETE FROM creature_movement WHERE id IN (101437);
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('101437','1','-11095.1','-1902.28','74.4031','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('101437','2','-11100.3','-1897.5','74.4044','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('101437','3','-11112.6','-1892.07','74.4123','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('101437','4','-11115.2','-1886.89','74.4026','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('101437','5','-11119.4','-1886.49','74.4027','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('101437','6','-11125.6','-1883.15','74.3978','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('101437','7','-11127.3','-1887.61','74.4084','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('101437','8','-11123.9','-1901.43','74.4104','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('101437','9','-11113.5','-1898.91','74.4095','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('101437','10','-11107.6','-1902.64','74.4109','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('101437','11','-11105.3','-1908.1','74.4094','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('101437','12','-11105.7','-1915.44','74.4027','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('101437','13','-11102.8','-1919.4','74.4012','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('101437','14','-11085.3','-1919.29','74.3988','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('101437','15','-11088.5','-1911.15','74.3992','0','0','0','0','0','0','0','0','0','0','0','0');


-- Bennett
UPDATE creature SET position_x = '-11091.975586', position_y = '-1896.073120', position_z = '74.388451', orientation = '3.930908', SpawnDist=0, MovementType=2 WHERE guid = '57036';
UPDATE creature_template SET MovementType=2 WHERE entry IN (16426);

DELETE FROM creature_movement_template WHERE entry IN (16426);
insert into `creature_movement_template` (`entry`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('16426','1','-11091.975586','-1896.073120','74.388451','5000','1642601','0','0','0','0','0','0','0','3.930908','0','0');
insert into `creature_movement_template` (`entry`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('16426','2','-11095.7','-1897.08','74.3966','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement_template` (`entry`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('16426','3','-11099','-1895.49','74.3992','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement_template` (`entry`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('16426','4','-11102','-1891.24','74.3971','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement_template` (`entry`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('16426','5','-11108.3','-1888.04','74.3977','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement_template` (`entry`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('16426','6','-11113.8','-1887.94','74.4033','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement_template` (`entry`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('16426','7','-11115.7','-1893.45','74.416','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement_template` (`entry`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('16426','8','-11114.7','-1899.59','74.4094','15000','1642607','0','0','0','0','0','0','0','4.803489','0','0');
insert into `creature_movement_template` (`entry`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('16426','9','-11109.8','-1900.17','74.4126','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement_template` (`entry`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('16426','10','-11106.3','-1904.36','74.4126','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement_template` (`entry`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('16426','11','-11101.3','-1910.24','74.4111','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement_template` (`entry`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('16426','12','-11101.2','-1911.98','74.4111','15000','1642611','0','0','0','0','0','0','0','4.516818','0','0');
insert into `creature_movement_template` (`entry`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('16426','13','-11095','-1913.93','74.4122','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement_template` (`entry`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('16426','14','-11091.2','-1912.05','74.407','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement_template` (`entry`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('16426','15','-11092.3','-1905.26','74.4039','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement_template` (`entry`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('16426','16','-11096.7','-1901.01','74.4042','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement_template` (`entry`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('16426','17','-11095.4','-1897.23','74.3962','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement_template` (`entry`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('16426','18','-11091.975586','-1896.073120','74.388451','35000','0','0','0','0','0','0','0','0','3.930908','0','0');

DELETE FROM dbscripts_on_creature_movement WHERE id IN (1642601);
insert into `dbscripts_on_creature_movement` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) values('1642601','0','31','16424','50','0','0','8','0','0','0','0','0','0','0','0','Terminate Script If Spectral Sentry Found in Range');
insert into `dbscripts_on_creature_movement` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) values('1642601','1','20','0','0','0','0','0','0','0','0','0','0','0','0','0','Set Movement To Idle');

DELETE FROM dbscripts_on_creature_movement WHERE id IN (1642607);
insert into `dbscripts_on_creature_movement` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) values('1642607','0','31','16424','6','0','0','0','-15000','0','0','0','0','0','0','0','Terminate Script If No Spectral Sentry Found in Range');
insert into `dbscripts_on_creature_movement` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) values('1642607','1','0','0','0','0','0','0','2000000813','0','0','0','0','0','0','0','Bennett Say');
insert into `dbscripts_on_creature_movement` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) values('1642607','1','32','0','0','16424','6','7','1','0','0','0','0','0','0','0','Spectral Sentry - Pause Waypoints');
insert into `dbscripts_on_creature_movement` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) values('1642607','1','32','0','0','16425','6','7','1','0','0','0','0','0','0','0','Phantom Guardsman - Pause Waypoints');
insert into `dbscripts_on_creature_movement` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) values('1642607','3','3','0','0','16424','6','3','0','0','0','0','0','0','0','2.211673','Spectral Sentry - Face Bennett');
insert into `dbscripts_on_creature_movement` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) values('1642607','3','3','0','0','16425','6','3','0','0','0','0','0','0','0','2.211673','Phantom Guardsman - Face Bennett');
insert into `dbscripts_on_creature_movement` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) values('1642607','4','1','0','0','0','0','0','5','0','0','0','0','0','0','0','Bennett Emote');
insert into `dbscripts_on_creature_movement` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) values('1642607','8','0','0','0','16424','6','3','2000000814','0','0','0','0','0','0','0','Spectral Sentry Say');
insert into `dbscripts_on_creature_movement` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) values('1642607','8','0','0','0','16425','6','3','2000000814','0','0','0','0','0','0','0','Phantom Guardsman Say');
insert into `dbscripts_on_creature_movement` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) values('1642607','10','32','0','0','16424','6','7','0','0','0','0','0','0','0','0','Spectral Sentry - Resume Waypoints');
insert into `dbscripts_on_creature_movement` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) values('1642607','10','32','0','0','16425','6','7','0','0','0','0','0','0','0','0','Phantom Guardsman - Resume Waypoints');

DELETE FROM dbscripts_on_creature_movement WHERE id IN (1642611);
insert into `dbscripts_on_creature_movement` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) values('1642611','0','31','16424','6','0','0','0','-15000','0','0','0','0','0','0','0','Terminate Script If No Spectral Sentry Found in Range');
insert into `dbscripts_on_creature_movement` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) values('1642611','1','0','0','0','0','0','0','2000000813','0','0','0','0','0','0','0','Bennett Say');
insert into `dbscripts_on_creature_movement` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) values('1642611','1','32','0','0','16424','6','7','1','0','0','0','0','0','0','0','Spectral Sentry - Pause Waypoints');
insert into `dbscripts_on_creature_movement` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) values('1642611','1','32','0','0','16425','6','7','1','0','0','0','0','0','0','0','Phantom Guardsman - Pause Waypoints');
insert into `dbscripts_on_creature_movement` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) values('1642611','3','3','0','0','16424','6','3','0','0','0','0','0','0','0','1.288043','Spectral Sentry - Face Bennett');
insert into `dbscripts_on_creature_movement` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) values('1642611','3','3','0','0','16425','6','3','0','0','0','0','0','0','0','1.288043','Phantom Guardsman - Face Bennett');
insert into `dbscripts_on_creature_movement` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) values('1642611','4','1','0','0','0','0','0','5','0','0','0','0','0','0','0','Bennett Emote');
insert into `dbscripts_on_creature_movement` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) values('1642611','8','0','0','0','16424','6','3','2000000814','0','0','0','0','0','0','0','Spectral Sentry Say');
insert into `dbscripts_on_creature_movement` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) values('1642611','8','0','0','0','16425','6','3','2000000814','0','0','0','0','0','0','0','Phantom Guardsman Say');
insert into `dbscripts_on_creature_movement` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) values('1642611','10','32','0','0','16424','6','7','0','0','0','0','0','0','0','0','Spectral Sentry - Resume Waypoints');
insert into `dbscripts_on_creature_movement` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) values('1642611','10','32','0','0','16425','6','7','0','0','0','0','0','0','0','0','Phantom Guardsman - Resume Waypoints');

DELETE FROM db_script_string WHERE entry IN (2000000813,2000000814);
insert into `db_script_string` (`entry`, `content_default`, `content_loc1`, `content_loc2`, `content_loc3`, `content_loc4`, `content_loc5`, `content_loc6`, `content_loc7`, `content_loc8`, `sound`, `type`, `language`, `emote`, `comment`) values('2000000813','You had better straighten up, or you\'ll answer to me!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0','0','0','5','Bennett');
insert into `db_script_string` (`entry`, `content_default`, `content_loc1`, `content_loc2`, `content_loc3`, `content_loc4`, `content_loc5`, `content_loc6`, `content_loc7`, `content_loc8`, `sound`, `type`, `language`, `emote`, `comment`) values('2000000814','Yes. sir!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0','0','0','66','Spectral Sentry or Phantom Guardsman');


-- ================
-- Kitchen Overhaul
-- ================
-- 2 Spectral Chefs and Baker in Corner
UPDATE creature SET position_x = '-11057.853516', position_y = '-1920.440674', position_z = '77.268204', orientation = '4.332270' WHERE guid = '135298';

DELETE FROM creature_addon WHERE guid IN (135293,135294);
insert into `creature_addon` (`guid`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) values('135293','0','0','0','0','173','0',NULL);
insert into `creature_addon` (`guid`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) values('135294','0','0','0','0','173','0',NULL);

DELETE FROM creature_linking WHERE master_guid IN (135298);
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('135293','135298','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('135294','135298','3');


-- Group of 2 Ghostly Stewards
DELETE FROM creature WHERE guid IN (101438,101439); 
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('101438','16414','532','1','0','0','-11059.6','-1939.27','77.2682','1.7436','86400','0','0','40213','0','0','2');
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('101439','16414','532','1','0','0','-11060.8','-1936.58','77.2682','5.37606','86400','0','0','40213','0','0','2');

DELETE FROM creature_movement WHERE id IN (101438);
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('101438','1','-11059.6','-1939.27','77.2682','2000','0','0','0','0','0','0','1','0','1.7436','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('101438','2','-11059.6','-1939.27','77.2682','2000','0','0','0','0','0','0','6','0','1.7436','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('101438','3','-11059.6','-1939.27','77.2682','10000','0','0','0','0','0','0','0','0','1.7436','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('101438','4','-11059.6','-1939.27','77.2682','2000','0','0','0','0','0','0','11','0','1.7436','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('101438','5','-11059.6','-1939.27','77.2682','6000','0','0','0','0','0','0','0','0','1.7436','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('101438','6','-11059.6','-1939.27','77.2682','10000','0','0','0','0','0','0','1','0','1.7436','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('101438','7','-11059.6','-1939.27','77.2682','5000','0','0','0','0','0','0','0','0','1.7436','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('101438','8','-11059.6','-1939.27','77.2682','3000','0','0','0','0','0','0','25','0','6.2816','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('101438','9','-11059.6','-1939.27','77.2682','9000','0','0','0','0','0','0','1','0','1.7436','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('101438','10','-11059.6','-1939.27','77.2682','10000','0','0','0','0','0','0','5','0','1.7436','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('101438','11','-11059.6','-1939.27','77.2682','8000','0','0','0','0','0','0','1','0','1.7436','0','0');

DELETE FROM creature_movement WHERE id IN (101439);
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('101439','1','-11060.8','-1936.58','77.2682','2000','0','0','0','0','0','0','0','0','5.37606','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('101439','2','-11060.8','-1936.58','77.2682','2000','0','0','0','0','0','0','11','0','5.37606','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('101439','3','-11060.8','-1936.58','77.2682','2000','0','0','0','0','0','0','25','0','0.2985','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('101439','4','-11060.8','-1936.58','77.2682','10000','0','0','0','0','0','0','1','0','5.37606','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('101439','5','-11060.8','-1936.58','77.2682','2000','0','0','0','0','0','0','0','0','5.37606','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('101439','6','-11060.8','-1936.58','77.2682','6000','0','0','0','0','0','0','11','0','5.37606','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('101439','7','-11060.8','-1936.58','77.2682','10000','0','0','0','0','0','0','0','0','5.37606','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('101439','8','-11060.8','-1936.58','77.2682','5000','0','0','0','0','0','0','6','0','5.37606','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('101439','9','-11060.8','-1936.58','77.2682','8000','0','0','0','0','0','0','0','0','5.37606','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('101439','10','-11060.8','-1936.58','77.2682','10000','0','0','0','0','0','0','11','0','5.37606','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('101439','11','-11060.8','-1936.58','77.2682','5000','0','0','0','0','0','0','1','0','5.37606','0','0');

DELETE FROM creature_linking WHERE master_guid IN (101438);
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('101439','101438','3');


-- Group of 2 Bakers and a Chef
UPDATE creature SET id=16412, Curhealth=44000 WHERE guid IN (135290);

DELETE FROM creature_linking WHERE master_guid IN (135291);
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('135290','135291','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('135295','135291','3');


-- Group of 2 Stewards
DELETE FROM creature WHERE guid IN (101440,101441); 
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('101440','16414','532','1','0','0','-11062','-1992.07','77.267','5.80332','86400','0','0','40213','0','0','0');
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('101441','16414','532','1','0','0','-11059.2','-1991.94','77.267','2.65544','86400','0','0','40213','0','0','0');

DELETE FROM creature_linking WHERE master_guid IN (101440);
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('101441','101440','3');


-- 2 Skeletons at back of Kitchen
DELETE FROM creature WHERE guid IN (81434,81433); 
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('81433','16415','532','1','0','0','-11072.2','-2007.96','77.3515','0.034907','43200','0','0','43086','0','0','2');
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('81434','16415','532','1','0','0','-11069.2','-2007.05','77.3515','4.7822','43200','0','0','43086','0','0','2');

DELETE FROM creature_movement WHERE id IN (81434);
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('81433','1','-11072.2','-2007.96','77.3515','2000','0','0','0','0','0','0','1','0','0.034907','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('81433','2','-11072.2','-2007.96','77.3515','8000','0','0','0','0','0','0','0','0','0.034907','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('81433','3','-11072.2','-2007.96','77.3515','6000','0','0','0','0','0','0','1','0','0.034907','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('81433','4','-11072.2','-2007.96','77.3515','10000','0','0','0','0','0','0','0','0','0.034907','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('81433','5','-11072.2','-2007.96','77.3515','7000','0','0','0','0','0','0','1','0','0.034907','0','0');

DELETE FROM creature_movement WHERE id IN (81433);
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('81434','1','-11069.2','-2007.05','77.3515','5000','0','0','0','0','0','0','0','0','4.7822','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('81434','2','-11069.2','-2007.05','77.3515','2000','0','0','0','0','0','0','1','0','4.7822','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('81434','3','-11069.2','-2007.05','77.3515','8000','0','0','0','0','0','0','0','0','4.7822','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('81434','4','-11069.2','-2007.05','77.3515','10000','0','0','0','0','0','0','1','0','4.7822','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('81434','5','-11069.2','-2007.05','77.3515','6000','0','0','0','0','0','0','1','0','4.7822','0','0');

DELETE FROM creature_linking WHERE master_guid IN (81433);
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('81434','81433','3');


-- Group of 3 NPC at the Fire Pit
DELETE FROM creature_linking WHERE master_guid IN (135292);
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('135296','135292','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('135297','135292','3');


-- 2 Skeletons at Front of Kitchen
DELETE FROM creature WHERE guid IN (101442,101443); 
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('101442','16415','532','1','0','0','-11044.6','-1946.25','77.2668','1.12313','86400','0','0','43086','0','0','2');
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('101443','16415','532','1','0','0','-11044.2','-1943.41','77.2668','5.45617','86400','0','0','43086','0','0','2');

DELETE FROM creature_movement WHERE id IN (101442);
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('101442','1','-11044.6','-1946.25','77.2668','2000','0','0','0','0','0','0','1','0','1.12313','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('101442','2','-11044.6','-1946.25','77.2668','8000','0','0','0','0','0','0','0','0','1.12313','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('101442','3','-11044.6','-1946.25','77.2668','6000','0','0','0','0','0','0','1','0','1.12313','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('101442','4','-11044.6','-1946.25','77.2668','10000','0','0','0','0','0','0','0','0','1.12313','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('101442','5','-11044.6','-1946.25','77.2668','7000','0','0','0','0','0','0','1','0','1.12313','0','0');

DELETE FROM creature_movement WHERE id IN (101443);
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('101443','1','-11044.2','-1943.41','77.2668','5000','0','0','0','0','0','0','0','0','5.45617','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('101443','2','-11044.2','-1943.41','77.2668','2000','0','0','0','0','0','0','1','0','5.45617','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('101443','3','-11044.2','-1943.41','77.2668','8000','0','0','0','0','0','0','0','0','5.45617','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('101443','4','-11044.2','-1943.41','77.2668','10000','0','0','0','0','0','0','1','0','5.45617','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('101443','5','-11044.2','-1943.41','77.2668','6000','0','0','0','0','0','0','1','0','5.45617','0','0');

DELETE FROM creature_linking WHERE master_guid IN (101442);
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('101443','101442','3');


-- Spectral Servant Pathing In The Kitchen
DELETE FROM creature WHERE guid IN (101444); 
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('101444','16407','532','1','0','0','-11047.6','-1921.25','77.2686','3.53822','86400','0','0','41916','0','0','2');

DELETE FROM creature_movement WHERE id IN (101444);
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('101444','1','-11052.7','-1923.2','77.2686','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('101444','2','-11060.8','-1924.69','77.2686','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('101444','3','-11066.5','-1934.07','77.2686','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('101444','4','-11067.9','-1944.23','77.2686','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('101444','5','-11066.4','-1960.82','77.2686','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('101444','6','-11066.1','-1973.73','77.2686','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('101444','7','-11067.5','-1986.12','77.2686','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('101444','8','-11073.9','-1993.72','77.2686','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('101444','9','-11069.7','-2001.22','77.2686','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('101444','10','-11065.4','-2006.88','77.2686','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('101444','11','-11057.7','-2006.96','77.2686','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('101444','12','-11053.8','-2001.26','77.2686','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('101444','13','-11052.5','-1992.84','77.2686','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('101444','14','-11055','-1986.18','77.2686','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('101444','15','-11053.2','-1969.57','77.2686','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('101444','16','-11048.8','-1959.82','77.2686','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('101444','17','-11048.9','-1952.02','77.2686','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('101444','18','-11050.9','-1945.56','77.2686','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('101444','19','-11046.4','-1935.58','77.2686','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('101444','20','-11044.2','-1927.46','77.2686','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('101444','21','-11046.6','-1921.64','77.2686','0','0','0','0','0','0','0','0','0','0','0','0');


-- Skeletal Waiter Pathing into Banquet Room
DELETE FROM creature WHERE guid IN (101445); 
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('101445','16415','532','1','0','0','-11051.2','-1973.9','77.2686','1.41373','86400','0','0','43086','0','0','2');

DELETE FROM creature_movement WHERE id IN (101445);
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('101445','1','-11050.1','-1964.98','77.2686','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('101445','2','-11049.3','-1951.52','77.2686','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('101445','3','-11046','-1935.37','77.2686','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('101445','4','-11041.1','-1923.9','77.2686','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('101445','5','-11033.8','-1925.05','77.6977','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('101445','6','-11023.2','-1926.2','78.868','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('101445','7','-11008.8','-1916.06','78.868','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('101445','8','-10995.4','-1906.58','78.8288','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('101445','9','-10984.7','-1899.06','78.8703','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('101445','10','-10982.9','-1880.25','81.7295','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('101445','11','-10983.7','-1891.07','81.7295','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('101445','12','-10984.4','-1899.61','78.8744','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('101445','13','-10995.4','-1906.9','78.8343','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('101445','14','-11009.7','-1906.17','78.8626','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('101445','15','-11019.2','-1914.48','78.8676','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('101445','16','-11021.9','-1924.98','78.8676','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('101445','17','-11028.6','-1923.71','78.8676','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('101445','18','-11038.2','-1922.71','77.2687','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('101445','19','-11043.1','-1925.17','77.2687','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('101445','20','-11048.8','-1934.9','77.2687','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('101445','21','-11050.3','-1952.57','77.2687','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('101445','22','-11051.6','-1966.38','77.2687','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('101445','23','-11052.1','-1974.13','77.2687','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('101445','24','-11046.3','-1975.25','77.2687','6000','0','0','0','0','0','0','69','0','6.170101','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('101445','25','-11051.8','-1971.04','77.2687','0','0','0','0','0','0','0','0','0','0','0','0');


-- Skeletal Waiter Pathing into Banquet Room
DELETE FROM creature WHERE guid IN (101446); 
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('101446','16415','532','1','0','0','-11024.8','-1926.2','78.8669','6.13634','86400','0','0','43086','0','0','2');

DELETE FROM creature_movement WHERE id IN (101446);
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('101446','1','-11009.4','-1927.91','78.8675','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('101446','2','-11002.4','-1933.29','78.8675','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('101446','3','-10987','-1934.73','78.8675','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('101446','4','-10965.9','-1937.04','78.8675','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('101446','5','-10961','-1929.86','78.8675','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('101446','6','-10965','-1919.92','78.8675','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('101446','7','-10979.7','-1917.72','78.8675','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('101446','8','-11005','-1915.37','78.8675','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('101446','9','-11015.4','-1926.26','78.8684','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('101446','10','-11028.1','-1923.68','78.8684','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('101446','11','-11039.5','-1922.52','77.2689','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('101446','12','-11067','-1928.65','77.2689','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('101446','13','-11038.5','-1925.01','77.2681','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('101446','14','-11024.8','-1926.17','78.868','0','0','0','0','0','0','0','0','0','0','0','0');


-- Skeletal Waiter Pathing in Banqet Room
DELETE FROM creature WHERE guid IN (101447); 
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('101447','16415','532','1','0','0','-10965.9','-1915.76','78.868','6.22023','86400','0','0','43086','0','0','2');

DELETE FROM creature_movement WHERE id IN (101447);
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('101447','1','-10962.2','-1916.14','78.868','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('101447','2','-10953.1','-1908.28','78.868','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('101447','3','-10951.4','-1897.45','78.868','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('101447','4','-10956.5','-1892.02','78.868','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('101447','5','-10969.1','-1890.72','78.9152','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('101447','6','-10975.2','-1895.62','78.9286','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('101447','7','-10977.1','-1901.37','78.9024','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('101447','8','-10978','-1908.45','78.8739','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('101447','9','-10983.2','-1910.87','78.8683','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('101447','10','-11001.3','-1908.76','78.8683','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('101447','11','-11011.5','-1907.9','78.8683','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('101447','12','-11016.9','-1913.21','78.8683','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('101447','13','-11018.4','-1921.73','78.8683','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('101447','14','-11023.8','-1924.1','78.8683','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('101447','15','-11035.9','-1922.8','77.2691','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('101447','16','-11040.6','-1922.57','77.2691','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('101447','17','-11066.6','-1928.79','77.2691','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('101447','18','-11043.7','-1923.93','77.2691','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('101447','19','-11036.4','-1924.98','77.2691','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('101447','20','-11026.1','-1926.09','78.8683','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('101447','21','-11016.6','-1919.04','78.8683','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('101447','22','-11015.1','-1914.17','78.8683','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('101447','23','-11010.2','-1910.78','78.8683','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('101447','24','-10994','-1912.68','78.8683','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('101447','25','-10977.6','-1914.55','78.8683','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('101447','26','-10967.9','-1915.67','78.8683','0','0','0','0','0','0','0','0','0','0','0','0');



-- =====================
-- Banquet Hall Overhaul
-- =====================
-- 2 Ghostly Stewards Near Kitchen Door
UPDATE creature SET position_x = '-11023.373047', position_y = '-1907.824341', position_z = '78.868858', orientation = '6.151244' WHERE guid = '85136';
UPDATE creature SET position_x = '-11022.783203', position_y = '-1898.420288', position_z = '78.868889', orientation = '6.144958' WHERE guid = '85135';

DELETE FROM creature_linking WHERE master_guid IN (85135);
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('85136','85135','3');


-- Left Front Table
UPDATE creature SET position_x = '-11002.371094', position_y = '-1903.227661', position_z = '78.868843', orientation = '4.402947' WHERE guid = '85142';
UPDATE creature SET position_x = '-10999.276367', position_y = '-1902.086304', position_z = '78.868843', orientation = '1.572247' WHERE guid = '85147';
UPDATE creature SET position_x = '-10996.548828', position_y = '-1899.036255', position_z = '78.868843', orientation = '2.467601' WHERE guid = '85139';
UPDATE creature SET position_x = '-10997.504883', position_y = '-1893.079224', position_z = '78.868843', orientation = '3.564018' WHERE guid = '85140';
UPDATE creature SET position_x = '-10999.690430', position_y = '-1891.609863', position_z = '78.868843', orientation = '4.995015' WHERE guid = '85141';
UPDATE creature SET position_x = '-11010.270508', position_y = '-1890.228516', position_z = '78.868843', orientation = '3.527890' WHERE guid = '85143';
UPDATE creature SET position_x = '-11015.586914', position_y = '-1894.676392', position_z = '78.868843', orientation = '5.573853' WHERE guid = '85144';
UPDATE creature SET position_x = '-11015.403320', position_y = '-1898.137695', position_z = '78.868843', orientation = '0.350956' WHERE guid = '85145';
UPDATE creature SET position_x = '-11011.929688', position_y = '-1901.030762', position_z = '78.868843', orientation = '0.386298' WHERE guid = '85146';

DELETE FROM creature_addon WHERE guid IN (85142,85147,85139,85140,85141,85143,85144,85145,85146);
insert into `creature_addon` (`guid`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) values('85142','0','5','1','0','0','0',NULL);
insert into `creature_addon` (`guid`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) values('85147','0','5','1','0','0','0',NULL);
insert into `creature_addon` (`guid`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) values('85139','0','5','1','0','0','0',NULL);
insert into `creature_addon` (`guid`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) values('85140','0','5','1','0','0','0',NULL);
insert into `creature_addon` (`guid`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) values('85141','0','5','1','0','0','0',NULL);
insert into `creature_addon` (`guid`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) values('85143','0','5','1','0','0','0',NULL);
insert into `creature_addon` (`guid`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) values('85144','0','5','1','0','0','0',NULL);
insert into `creature_addon` (`guid`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) values('85145','0','5','1','0','0','0',NULL);
insert into `creature_addon` (`guid`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) values('85146','0','5','1','0','0','0',NULL);

DELETE FROM creature_linking WHERE master_guid IN (85139);
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('85145','85139','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('85144','85139','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('85143','85139','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('85141','85139','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('85140','85139','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('85147','85139','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('85142','85139','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('85146','85139','3');


-- Right Side Large Table (Outside of Table)
UPDATE creature SET position_x = '-11004.618164', position_y = '-1928.498413', position_z = '78.868843', orientation = '0.353312' WHERE guid = '85152';
UPDATE creature SET position_x = '-10999.198242', position_y = '-1930.435669', position_z = '78.868843', orientation = '1.280868' WHERE guid = '85153';
UPDATE creature SET position_x = '-10996.279297', position_y = '-1930.851563', position_z = '78.868843', orientation = '2.129883' WHERE guid = '85154';
UPDATE creature SET position_x = '-10993.697266', position_y = '-1931.136963', position_z = '78.868843', orientation = '1.863634' WHERE guid = '85155';
UPDATE creature SET position_x = '-10986.405273', position_y = '-1932.067139', position_z = '78.868843', orientation = '1.061742' WHERE guid = '85151';
UPDATE creature SET position_x = '-10982.397461', position_y = '-1932.365479', position_z = '78.868843', orientation = '1.865205' WHERE guid = '85156';
UPDATE creature SET position_x = '-10976.945313', position_y = '-1933.427734', position_z = '78.868843', orientation = '2.152661' WHERE guid = '85162';
UPDATE creature SET position_x = '-10972.363281', position_y = '-1933.303589', position_z = '78.868843', orientation = '0.809629' WHERE guid = '85163';

DELETE FROM creature_addon WHERE guid IN (85152,85153,85154,85155,85151,85156,85162,85163);
insert into `creature_addon` (`guid`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) values('85152','0','5','1','0','0','0',NULL);
insert into `creature_addon` (`guid`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) values('85153','0','5','1','0','0','0',NULL);
insert into `creature_addon` (`guid`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) values('85154','0','5','1','0','0','0',NULL);
insert into `creature_addon` (`guid`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) values('85155','0','5','1','0','0','0',NULL);
insert into `creature_addon` (`guid`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) values('85151','0','5','1','0','0','0',NULL);
insert into `creature_addon` (`guid`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) values('85156','0','5','1','0','0','0',NULL);
insert into `creature_addon` (`guid`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) values('85162','0','5','1','0','0','0',NULL);
insert into `creature_addon` (`guid`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) values('85163','0','5','1','0','0','0',NULL);

DELETE FROM creature_linking WHERE master_guid IN (85152);
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('85153','85152','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('85154','85152','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('85155','85152','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('85151','85152','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('85156','85152','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('85162','85152','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('85163','85152','3');


-- Right Side Large Table (Inside of Table)
UPDATE creature SET position_x = '-10998.954102', position_y = '-1917.690063', position_z = '78.868843', orientation = '2.370216' WHERE guid = '85150';
UPDATE creature SET position_x = '-10992.429688', position_y = '-1918.945557', position_z = '78.868843', orientation = '4.043898' WHERE guid = '85149';
UPDATE creature SET position_x = '-10982.832031', position_y = '-1920.737549', position_z = '78.868843', orientation = '4.620378' WHERE guid = '85148';
UPDATE creature SET position_x = '-10979.695313', position_y = '-1920.426758', position_z = '78.868843', orientation = '4.460157' WHERE guid = '85157';
UPDATE creature SET position_x = '-10976.250977', position_y = '-1920.457031', position_z = '78.868843', orientation = '5.051563' WHERE guid = '85158';
UPDATE creature SET position_x = '-10973.418945', position_y = '-1921.373291', position_z = '78.868843', orientation = '4.151496' WHERE guid = '85159';
UPDATE creature SET position_x = '-10969.459961', position_y = '-1921.085938', position_z = '78.868843', orientation = '1.601310' WHERE guid = '85160';
UPDATE creature SET position_x = '-10985.871094', position_y = '-1919.734375', position_z = '78.868843', orientation = '0.523738' WHERE guid = '85161';

DELETE FROM creature_addon WHERE guid IN (85150,85149,85148,85157,85158,85159,85160,85161);
insert into `creature_addon` (`guid`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) values('85150','0','5','1','0','0','0',NULL);
insert into `creature_addon` (`guid`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) values('85149','0','5','1','0','0','0',NULL);
insert into `creature_addon` (`guid`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) values('85148','0','5','1','0','0','0',NULL);
insert into `creature_addon` (`guid`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) values('85157','0','5','1','0','0','0',NULL);
insert into `creature_addon` (`guid`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) values('85158','0','5','1','0','0','0',NULL);
insert into `creature_addon` (`guid`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) values('85159','0','5','1','0','0','0',NULL);
insert into `creature_addon` (`guid`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) values('85160','0','5','1','0','0','0',NULL);
insert into `creature_addon` (`guid`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) values('85161','0','5','1','0','0','0',NULL);

DELETE FROM creature_linking WHERE master_guid IN (85150);
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('85149','85150','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('85148','85150','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('85157','85150','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('85158','85150','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('85159','85150','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('85160','85150','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('85161','85150','3');


-- Far Left Table
UPDATE creature SET position_x = '-10964.947266', position_y = '-1906.849854', position_z = '78.868843', orientation = '0.187592' WHERE guid = '85166';
UPDATE creature SET position_x = '-10958.422852', position_y = '-1907.067017', position_z = '78.868843', orientation = '1.814152' WHERE guid = '85167';
UPDATE creature SET position_x = '-10954.342773', position_y = '-1902.870605', position_z = '78.868843', orientation = '3.022881' WHERE guid = '85168';
UPDATE creature SET position_x = '-10955.696289', position_y = '-1898.391357', position_z = '78.868843', orientation = '3.622925' WHERE guid = '85169';
UPDATE creature SET position_x = '-10959.342773', position_y = '-1896.124512', position_z = '78.868843', orientation = '4.282660' WHERE guid = '85170';
UPDATE creature SET position_x = '-10963.912109', position_y = '-1894.709351', position_z = '78.868843', orientation = '4.622737' WHERE guid = '85171';
UPDATE creature SET position_x = '-10969.381836', position_y = '-1894.126099', position_z = '78.868843', orientation = '3.973998' WHERE guid = '85172';
UPDATE creature SET position_x = '-10972.436523', position_y = '-1896.743042', position_z = '78.868843', orientation = '5.455259' WHERE guid = '85173';
UPDATE creature SET position_x = '-10974.376953', position_y = '-1902.316895', position_z = '78.868843', orientation = '0.731089' WHERE guid = '85174';

DELETE FROM creature_addon WHERE guid IN (85166,85167,85168,85169,85170,85171,85172,85173,85174);
insert into `creature_addon` (`guid`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) values('85166','0','5','1','0','0','0',NULL);
insert into `creature_addon` (`guid`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) values('85167','0','5','1','0','0','0',NULL);
insert into `creature_addon` (`guid`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) values('85168','0','5','1','0','0','0',NULL);
insert into `creature_addon` (`guid`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) values('85169','0','5','1','0','0','0',NULL);
insert into `creature_addon` (`guid`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) values('85170','0','5','1','0','0','0',NULL);
insert into `creature_addon` (`guid`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) values('85171','0','5','1','0','0','0',NULL);
insert into `creature_addon` (`guid`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) values('85172','0','5','1','0','0','0',NULL);
insert into `creature_addon` (`guid`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) values('85173','0','5','1','0','0','0',NULL);
insert into `creature_addon` (`guid`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) values('85174','0','5','1','0','0','0',NULL);

DELETE FROM creature_linking WHERE master_guid IN (85166);
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('85167','85166','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('85168','85166','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('85169','85166','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('85170','85166','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('85171','85166','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('85172','85166','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('85173','85166','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('85174','85166','3');


-- 2 Ghostly Stewards Far End
DELETE FROM creature_linking WHERE master_guid IN (85164);
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('85165','85164','3');


-- Moroes and Adds OOC Scripting
DELETE FROM creature WHERE guid IN (81435);
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('81435','15687','532','1','0','0','-10982.7','-1877.93','81.8119','4.62512','604800','0','0','386988','0','0','2');

UPDATE creature_template SET MovementType=2 WHERE entry IN (15687);
DELETE FROM creature_movement_template WHERE entry IN (15687);
insert into `creature_movement_template` (`entry`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('15687','1','-10982.7','-1877.93','81.8119','30000','1568701','0','0','0','0','0','0','0','4.62512','0','0');
insert into `creature_movement_template` (`entry`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('15687','2','-10982.7','-1877.93','81.8119','30000','1568702','0','0','0','0','0','0','0','4.62512','0','0');
insert into `creature_movement_template` (`entry`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('15687','3','-10982.7','-1877.93','81.8119','30000','1568703','0','0','0','0','0','0','0','4.62512','0','0');
insert into `creature_movement_template` (`entry`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('15687','4','-10982.7','-1877.93','81.8119','30000','1568704','0','0','0','0','0','0','0','4.62512','0','0');
insert into `creature_movement_template` (`entry`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('15687','5','-10982.7','-1877.93','81.8119','30000','1568705','0','0','0','0','0','0','0','4.62512','0','0');
insert into `creature_movement_template` (`entry`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('15687','6','-10982.7','-1877.93','81.8119','30000','1568706','0','0','0','0','0','0','0','4.62512','0','0');

DELETE FROM dbscripts_on_creature_movement WHERE id IN (1568701);
insert into `dbscripts_on_creature_movement` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) values('1568701','0','31','17007','30','0','0','0','-25000','0','0','0','0','0','0','0','Terminate Script If Lady Keira Berrybuck Is Not Found in Range');
insert into `dbscripts_on_creature_movement` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) values('1568701','1','0','0','0','17007','30','3','2000000815','2000000816','0','0','0','0','0','0','Lady Keira Berrybuck Random Say');
insert into `dbscripts_on_creature_movement` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) values('1568701','6','0','0','0','17007','30','1','2000000818','2000000819','2000000820','0','0','0','0','0','Moroes Random Say');

DELETE FROM dbscripts_on_creature_movement WHERE id IN (1568702);
insert into `dbscripts_on_creature_movement` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) values('1568702','0','31','19872','30','0','0','0','-25000','0','0','0','0','0','0','0','Terminate Script If Lady Catriona Von\'Indi Is Not Found in Range');
insert into `dbscripts_on_creature_movement` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) values('1568702','1','0','0','0','19872','30','3','2000000815','2000000816','0','0','0','0','0','0','Lady Catriona Von\'Indi Random Say');
insert into `dbscripts_on_creature_movement` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) values('1568702','6','0','0','0','19872','30','1','2000000818','2000000819','2000000820','0','0','0','0','0','Moroes Random Say');

DELETE FROM dbscripts_on_creature_movement WHERE id IN (1568703);
insert into `dbscripts_on_creature_movement` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) values('1568703','0','31','19873','30','0','0','0','-25000','0','0','0','0','0','0','0','Terminate Script If Lord Crispin Ference Is Not Found in Range');
insert into `dbscripts_on_creature_movement` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) values('1568703','1','0','0','0','19873','30','3','2000000815','2000000816','0','0','0','0','0','0','Lord Crispin Ference Random Say');
insert into `dbscripts_on_creature_movement` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) values('1568703','6','0','0','0','19873','30','1','2000000818','2000000819','2000000820','0','0','0','0','0','Moroes Random Say');

DELETE FROM dbscripts_on_creature_movement WHERE id IN (1568704);
insert into `dbscripts_on_creature_movement` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) values('1568704','0','31','19874','30','0','0','0','-25000','0','0','0','0','0','0','0','Terminate Script If Baron Rafe Dreuger Is Not Found in Range');
insert into `dbscripts_on_creature_movement` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) values('1568704','1','0','0','0','19874','30','3','2000000815','2000000816','0','0','0','0','0','0','Baron Rafe Dreuger Random Say');
insert into `dbscripts_on_creature_movement` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) values('1568704','6','0','0','0','19874','30','1','2000000818','2000000819','2000000820','0','0','0','0','0','Moroes Random Say');

DELETE FROM dbscripts_on_creature_movement WHERE id IN (1568705);
insert into `dbscripts_on_creature_movement` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) values('1568705','0','31','19875','30','0','0','0','-25000','0','0','0','0','0','0','0','Terminate Script If Baroness Dorothea Millstipe Is Not Found in Range');
insert into `dbscripts_on_creature_movement` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) values('1568705','1','0','0','0','19875','30','3','2000000815','2000000816','0','0','0','0','0','0','Baroness Dorothea Millstipe Random Say');
insert into `dbscripts_on_creature_movement` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) values('1568705','6','0','0','0','19875','30','1','2000000818','2000000819','2000000820','0','0','0','0','0','Moroes Random Say');

DELETE FROM dbscripts_on_creature_movement WHERE id IN (1568706);
insert into `dbscripts_on_creature_movement` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) values('1568706','0','31','19876','30','0','0','0','-25000','0','0','0','0','0','0','0','Terminate Script If Lord Robin Daris Is Not Found in Range');
insert into `dbscripts_on_creature_movement` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) values('1568706','1','0','0','0','19876','30','3','2000000815','2000000816','0','0','0','0','0','0','Lord Robin Daris Random Say');
insert into `dbscripts_on_creature_movement` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) values('1568706','6','0','0','0','19876','30','1','2000000818','2000000819','2000000820','0','0','0','0','0','Moroes Random Say');


DELETE FROM db_script_string WHERE entry IN (2000000815,2000000816,2000000817,2000000818,2000000819,2000000820);
insert into `db_script_string` (`entry`, `content_default`, `content_loc1`, `content_loc2`, `content_loc3`, `content_loc4`, `content_loc5`, `content_loc6`, `content_loc7`, `content_loc8`, `sound`, `type`, `language`, `emote`, `comment`) values('2000000815','Where is the master?',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0','0','0','1','Moroes Adds Random Say 1');
insert into `db_script_string` (`entry`, `content_default`, `content_loc1`, `content_loc2`, `content_loc3`, `content_loc4`, `content_loc5`, `content_loc6`, `content_loc7`, `content_loc8`, `sound`, `type`, `language`, `emote`, `comment`) values('2000000816','Why can we not talk to the master?',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0','0','0','1','Moroes Adds Random Say 2');
-- insert into `db_script_string` (`entry`, `content_default`, `content_loc1`, `content_loc2`, `content_loc3`, `content_loc4`, `content_loc5`, `content_loc6`, `content_loc7`, `content_loc8`, `sound`, `type`, `language`, `emote`, `comment`) values('2000000817','Why can we not talk to the master?',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0','0','0','1','Moroes Adds Random Say 2');
insert into `db_script_string` (`entry`, `content_default`, `content_loc1`, `content_loc2`, `content_loc3`, `content_loc4`, `content_loc5`, `content_loc6`, `content_loc7`, `content_loc8`, `sound`, `type`, `language`, `emote`, `comment`) values('2000000818','The Master is deep in study.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0','0','0','1','Moroes Random Say 1');
insert into `db_script_string` (`entry`, `content_default`, `content_loc1`, `content_loc2`, `content_loc3`, `content_loc4`, `content_loc5`, `content_loc6`, `content_loc7`, `content_loc8`, `sound`, `type`, `language`, `emote`, `comment`) values('2000000819','The Master will return from Stormwind soon...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0','0','0','1','Moroes Random Say 2');
insert into `db_script_string` (`entry`, `content_default`, `content_loc1`, `content_loc2`, `content_loc3`, `content_loc4`, `content_loc5`, `content_loc6`, `content_loc7`, `content_loc8`, `sound`, `type`, `language`, `emote`, `comment`) values('2000000820','The Master is meeting with his apprentice.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0','0','0','1','Moroes Random Say 3');


/*
-- Moroes Is Only One Spawned

-- NEW SD2 SPAWN LOCATIONS FOR MOROES ADDS (MOROES.CPP)
{
    { -10987.086f, -1884.002f, 81.73f, 1.352331f},
    { -10989.889f, -1882.592f, 81.73f, 0.932928f},
    { -10979.159f, -1885.326f, 81.73f, 2.017563f},
    { -10976.789f, -1883.946f, 81.73f, 2.328581f}
};

*/


-- =================
-- Ballroom Overhaul
-- =================
-- Phantom Valets Around The Edges of The Room
DELETE FROM creature WHERE guid IN (101448); 
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('101448','16408','532','1','0','0','-10943.237305','-1967.448486','79.972893','3.028381','86400','0','0','66420','0','0','0');
UPDATE creature SET position_x = '-10968.882813', position_y = '-1954.760010', position_z = '79.972893', orientation = '4.697351' WHERE guid = '85038';


-- Group of 8 NPC Dancing
UPDATE creature SET id=16409 WHERE guid IN (85133);
UPDATE creature SET position_x = '-10972.880859', position_y = '-1969.204712', position_z = '79.972908', orientation = '3.646854' WHERE guid = '85126';

DELETE FROM creature_addon WHERE guid IN (85128,85126,85133,85134,85132,85131,85130,85129);
insert into `creature_addon` (`guid`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) values('85128','0','0','1','0','400','0',NULL);
insert into `creature_addon` (`guid`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) values('85126','0','0','1','0','400','0',NULL);
insert into `creature_addon` (`guid`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) values('85133','0','0','1','0','400','0',NULL);
insert into `creature_addon` (`guid`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) values('85134','0','0','1','0','400','0',NULL);
insert into `creature_addon` (`guid`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) values('85132','0','0','1','0','400','0',NULL);
insert into `creature_addon` (`guid`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) values('85131','0','0','1','0','400','0',NULL);
insert into `creature_addon` (`guid`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) values('85130','0','0','1','0','400','0',NULL);
insert into `creature_addon` (`guid`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) values('85129','0','0','1','0','400','0',NULL);

DELETE FROM creature_linking WHERE master_guid IN (85128);
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('85126','85128','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('85133','85128','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('85134','85128','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('85132','85128','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('85131','85128','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('85130','85128','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('85129','85128','3');


-- Group of 5 NPC
UPDATE creature SET id=16409 WHERE guid IN (85118);
UPDATE creature SET position_x = '-10954.488281', position_y = '-1969.656372', position_z = '79.972900', orientation = '3.752095' WHERE guid = '85175';
UPDATE creature SET position_x = '-10953.604492', position_y = '-1972.798340', position_z = '79.972916', orientation = '2.454614' WHERE guid = '85176';
UPDATE creature SET position_x = '-10956.055664', position_y = '-1973.714233', position_z = '79.972900', orientation = '1.355844' WHERE guid = '85120';
UPDATE creature SET position_x = '-10958.341797', position_y = '-1971.827515', position_z = '79.972916', orientation = '0.305763' WHERE guid = '85119';
UPDATE creature SET position_x = '-10957.346680', position_y = '-1969.019409', position_z = '79.972916', orientation = '5.619767' WHERE guid = '85118';

DELETE FROM creature_linking WHERE master_guid IN (85175);
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('85176','85175','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('85120','85175','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('85119','85175','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('85118','85175','3');


-- Group of 8 NPC Dancing
UPDATE creature SET id=16409 WHERE guid IN (85115,85109);
UPDATE creature SET position_x = '-10960.707031', position_y = '-1993.469971', position_z = '79.972923', orientation = '1.450099' WHERE guid = '85112';
UPDATE creature SET position_x = '-10964.108398', position_y = '-1992.474487', position_z = '79.972923', orientation = '0.795076' WHERE guid = '85113';
UPDATE creature SET position_x = '-10965.107422', position_y = '-1988.443237', position_z = '79.972923', orientation = '6.136569' WHERE guid = '85114';
UPDATE creature SET position_x = '-10964.145508', position_y = '-1984.236572', position_z = '79.972923', orientation = '5.576581' WHERE guid = '85115';

DELETE FROM creature_addon WHERE guid IN (85115,85116,85117,85109,85110,85112,85113,85114);
insert into `creature_addon` (`guid`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) values('85115','0','0','1','0','400','0',NULL);
insert into `creature_addon` (`guid`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) values('85116','0','0','1','0','400','0',NULL);
insert into `creature_addon` (`guid`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) values('85117','0','0','1','0','400','0',NULL);
insert into `creature_addon` (`guid`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) values('85109','0','0','1','0','400','0',NULL);
insert into `creature_addon` (`guid`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) values('85110','0','0','1','0','400','0',NULL);
insert into `creature_addon` (`guid`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) values('85112','0','0','1','0','400','0',NULL);
insert into `creature_addon` (`guid`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) values('85113','0','0','1','0','400','0',NULL);
insert into `creature_addon` (`guid`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) values('85114','0','0','1','0','400','0',NULL);

DELETE FROM creature_linking WHERE master_guid IN (85115);
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('85116','85115','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('85117','85115','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('85109','85115','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('85110','85115','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('85112','85115','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('85113','85115','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('85114','85115','3');


-- Group of 5 NPC
UPDATE creature SET id=16409 WHERE guid IN (85098);
UPDATE creature SET position_x = '-10970.291992', position_y = '-2009.393799', position_z = '79.972908', orientation = '3.350769' WHERE guid = '85098';
UPDATE creature SET position_x = '-10972.224609', position_y = '-2008.220459', position_z = '79.972923', orientation = '4.528864' WHERE guid = '85099';
UPDATE creature SET position_x = '-10974.040039', position_y = '-2009.331299', position_z = '79.972900', orientation = '5.914307' WHERE guid = '85095';
UPDATE creature SET position_x = '-10973.098633', position_y = '-2011.285767', position_z = '79.972923', orientation = '0.862626' WHERE guid = '85096';
UPDATE creature SET position_x = '-10971.153320', position_y = '-2011.125854', position_z = '79.972923', orientation = '1.699075' WHERE guid = '85097';

DELETE FROM creature_linking WHERE master_guid IN (85098);
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('85099','85098','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('85095','85098','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('85096','85098','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('85097','85098','3');


-- Group of 8 NPC Dancing
UPDATE creature SET id=16409 WHERE guid IN (85102);
UPDATE creature SET position_x = '-10975.318359', position_y = '-1987.924805', position_z = '79.972916', orientation = '4.516303' WHERE guid = '85105';
UPDATE creature SET position_x = '-10978.803711', position_y = '-1987.545776', position_z = '79.972916', orientation = '5.157188' WHERE guid = '85107';
UPDATE creature SET position_x = '-10979.209961', position_y = '-1997.021973', position_z = '79.972916', orientation = '0.967089' WHERE guid = '85101';
UPDATE creature SET position_x = '-10972.911133', position_y = '-1995.234619', position_z = '79.972900', orientation = '2.563021' WHERE guid = '85103';
UPDATE creature SET position_x = '-10981.047852', position_y = '-1990.312012', position_z = '79.972923', orientation = '5.897823' WHERE guid = '85108';

DELETE FROM creature_addon WHERE guid IN (85103,85104,85105,85107,85108,85100,85101,85102);
insert into `creature_addon` (`guid`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) values('85103','0','0','1','0','400','0',NULL);
insert into `creature_addon` (`guid`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) values('85104','0','0','1','0','400','0',NULL);
insert into `creature_addon` (`guid`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) values('85105','0','0','1','0','400','0',NULL);
insert into `creature_addon` (`guid`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) values('85107','0','0','1','0','400','0',NULL);
insert into `creature_addon` (`guid`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) values('85108','0','0','1','0','400','0',NULL);
insert into `creature_addon` (`guid`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) values('85100','0','0','1','0','400','0',NULL);
insert into `creature_addon` (`guid`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) values('85101','0','0','1','0','400','0',NULL);
insert into `creature_addon` (`guid`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) values('85102','0','0','1','0','400','0',NULL);

DELETE FROM creature_linking WHERE master_guid IN (85103);
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('85104','85103','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('85105','85103','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('85107','85103','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('85108','85103','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('85100','85103','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('85101','85103','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('85102','85103','3');


-- Group of 8 NPC Dancing
DELETE FROM creature WHERE guid IN (101449,101450,101451,101452,101453,101454,101455,101456);
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('101449','16409','532','1','0','0','-10980.5','-2015.18','79.9729','4.36001','86400','0','0','7824','15775','0','0');
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('101450','16409','532','1','0','0','-10983.6','-2014.81','79.9729','4.94435','86400','0','0','7824','15775','0','0');
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('101451','16409','532','1','0','0','-10986.4','-2016.75','79.9729','6.17664','86400','0','0','7824','15775','0','0');
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('101452','16409','532','1','0','0','-10987.2','-2020.82','79.9729','0.535914','86400','0','0','7824','15775','0','0');
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('101453','16409','532','1','0','0','-10984.1','-2023.8','79.9729','1.46347','86400','0','0','7824','15775','0','0');
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('101454','16409','532','1','0','0','-10980','-2024.24','79.9729','2.37767','86400','0','0','7824','15775','0','0');
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('101455','16409','532','1','0','0','-10976.5','-2020.93','79.9729','3.04369','86400','0','0','7824','15775','0','0');
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('101456','16409','532','1','0','0','-10978.3','-2016.76','79.9729','3.86992','86400','0','0','7824','15775','0','0');

DELETE FROM creature_addon WHERE guid IN (101449,101450,101451,101452,101453,101454,101455,101456);
insert into `creature_addon` (`guid`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) values('101449','0','0','1','0','400','0',NULL);
insert into `creature_addon` (`guid`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) values('101450','0','0','1','0','400','0',NULL);
insert into `creature_addon` (`guid`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) values('101451','0','0','1','0','400','0',NULL);
insert into `creature_addon` (`guid`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) values('101452','0','0','1','0','400','0',NULL);
insert into `creature_addon` (`guid`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) values('101453','0','0','1','0','400','0',NULL);
insert into `creature_addon` (`guid`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) values('101454','0','0','1','0','400','0',NULL);
insert into `creature_addon` (`guid`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) values('101455','0','0','1','0','400','0',NULL);
insert into `creature_addon` (`guid`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) values('101456','0','0','1','0','400','0',NULL);

DELETE FROM creature_linking WHERE master_guid IN (101449);
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('101450','101449','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('101451','101449','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('101452','101449','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('101453','101449','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('101454','101449','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('101455','101449','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('101456','101449','3');


-- Group of 8 NPC Dancing
UPDATE creature SET id=16409 WHERE guid IN (85092,85124);
UPDATE creature SET position_x = '-10962.088867', position_y = '-2020.578369', position_z = '79.972939', orientation = '5.311913' WHERE guid = '85093';
UPDATE creature SET position_x = '-10965.172852', position_y = '-2022.770142', position_z = '79.972946', orientation = '5.952013' WHERE guid = '85123';
UPDATE creature SET position_x = '-10964.020508', position_y = '-2027.237427', position_z = '79.973015', orientation = '0.514707' WHERE guid = '85124';
UPDATE creature SET position_x = '-10961.132813', position_y = '-2028.784058', position_z = '79.973022', orientation = '1.261621' WHERE guid = '85177';
UPDATE creature SET position_x = '-10958.614258', position_y = '-2029.184937', position_z = '79.973038', orientation = '1.982617' WHERE guid = '85089';
UPDATE creature SET position_x = '-10956.237305', position_y = '-2026.407349', position_z = '79.973045', orientation = '2.909387' WHERE guid = '85090';
UPDATE creature SET position_x = '-10955.901367', position_y = '-2022.422241', position_z = '79.972984', orientation = '3.478796' WHERE guid = '85091';
UPDATE creature SET position_x = '-10959.121094', position_y = '-2020.665405', position_z = '79.973015', orientation = '4.429916' WHERE guid = '85092';

DELETE FROM creature_addon WHERE guid IN (85093,85123,85124,85177,85089,85090,85091,85092);
insert into `creature_addon` (`guid`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) values('85093','0','0','1','0','400','0',NULL);
insert into `creature_addon` (`guid`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) values('85123','0','0','1','0','400','0',NULL);
insert into `creature_addon` (`guid`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) values('85124','0','0','1','0','400','0',NULL);
insert into `creature_addon` (`guid`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) values('85177','0','0','1','0','400','0',NULL);
insert into `creature_addon` (`guid`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) values('85089','0','0','1','0','400','0',NULL);
insert into `creature_addon` (`guid`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) values('85090','0','0','1','0','400','0',NULL);
insert into `creature_addon` (`guid`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) values('85091','0','0','1','0','400','0',NULL);
insert into `creature_addon` (`guid`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) values('85092','0','0','1','0','400','0',NULL);

DELETE FROM creature_linking WHERE master_guid IN (85093);
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('85123','85093','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('85124','85093','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('85177','85093','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('85089','85093','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('85090','85093','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('85091','85093','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('85092','85093','3');


-- NPC Sitting Around The Outside Edge of Ballroom
DELETE FROM creature WHERE guid IN (101457,101458,101459);
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('101457','16409','532','1','0','0','-10985.7','-2034.15','79.974213','1.74442','86400','0','0','7824','15775','0','0');
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('101458','16409','532','1','0','0','-10945.8','-1995.78','79.974213','3.22725','86400','0','0','7824','15775','0','0');
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('101459','16409','532','1','0','0','-10949.7','-2030.72','79.974213','3.03875','86400','0','0','7824','15775','0','0');

DELETE FROM creature_addon WHERE guid IN (101457,101458,101459);
insert into `creature_addon` (`guid`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) values('101457','0','5','1','0','0','0',NULL);
insert into `creature_addon` (`guid`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) values('101458','0','5','1','0','0','0',NULL);
insert into `creature_addon` (`guid`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) values('101459','0','5','1','0','0','0',NULL);



-- ==========================
-- Upstairs Ballroom Overhaul
-- ==========================
-- Deleted NPC 
DELETE FROM creature WHERE guid=85127;
DELETE FROM creature_addon WHERE guid=85127;
DELETE FROM creature_movement WHERE id=85127;
DELETE FROM game_event_creature WHERE guid=85127;
DELETE FROM game_event_creature_data WHERE guid=85127;
DELETE FROM creature_battleground WHERE guid=85127;
DELETE FROM creature_linking WHERE guid=85127 OR master_guid=85127;
DELETE FROM creature WHERE guid=85121;
DELETE FROM creature_addon WHERE guid=85121;
DELETE FROM creature_movement WHERE id=85121;
DELETE FROM game_event_creature WHERE guid=85121;
DELETE FROM game_event_creature_data WHERE guid=85121;
DELETE FROM creature_battleground WHERE guid=85121;
DELETE FROM creature_linking WHERE guid=85121 OR master_guid=85121;
DELETE FROM creature WHERE guid=85122;
DELETE FROM creature_addon WHERE guid=85122;
DELETE FROM creature_movement WHERE id=85122;
DELETE FROM game_event_creature WHERE guid=85122;
DELETE FROM game_event_creature_data WHERE guid=85122;
DELETE FROM creature_battleground WHERE guid=85122;
DELETE FROM creature_linking WHERE guid=85122 OR master_guid=85122;
DELETE FROM creature WHERE guid=85111;
DELETE FROM creature_addon WHERE guid=85111;
DELETE FROM creature_movement WHERE id=85111;
DELETE FROM game_event_creature WHERE guid=85111;
DELETE FROM game_event_creature_data WHERE guid=85111;
DELETE FROM creature_battleground WHERE guid=85111;
DELETE FROM creature_linking WHERE guid=85111 OR master_guid=85111;
DELETE FROM creature WHERE guid=85106;
DELETE FROM creature_addon WHERE guid=85106;
DELETE FROM creature_movement WHERE id=85106;
DELETE FROM game_event_creature WHERE guid=85106;
DELETE FROM game_event_creature_data WHERE guid=85106;
DELETE FROM creature_battleground WHERE guid=85106;
DELETE FROM creature_linking WHERE guid=85106 OR master_guid=85106;
DELETE FROM creature WHERE guid=85094;
DELETE FROM creature_addon WHERE guid=85094;
DELETE FROM creature_movement WHERE id=85094;
DELETE FROM game_event_creature WHERE guid=85094;
DELETE FROM game_event_creature_data WHERE guid=85094;
DELETE FROM creature_battleground WHERE guid=85094;
DELETE FROM creature_linking WHERE guid=85094 OR master_guid=85094;
DELETE FROM creature WHERE guid=85020;
DELETE FROM creature_addon WHERE guid=85020;
DELETE FROM creature_movement WHERE id=85020;
DELETE FROM game_event_creature WHERE guid=85020;
DELETE FROM game_event_creature_data WHERE guid=85020;
DELETE FROM creature_battleground WHERE guid=85020;
DELETE FROM creature_linking WHERE guid=85020 OR master_guid=85020;
DELETE FROM creature WHERE guid=85189;
DELETE FROM creature_addon WHERE guid=85189;
DELETE FROM creature_movement WHERE id=85189;
DELETE FROM game_event_creature WHERE guid=85189;
DELETE FROM game_event_creature_data WHERE guid=85189;
DELETE FROM creature_battleground WHERE guid=85189;
DELETE FROM creature_linking WHERE guid=85189 OR master_guid=85189;
DELETE FROM creature WHERE guid=85191;
DELETE FROM creature_addon WHERE guid=85191;
DELETE FROM creature_movement WHERE id=85191;
DELETE FROM game_event_creature WHERE guid=85191;
DELETE FROM game_event_creature_data WHERE guid=85191;
DELETE FROM creature_battleground WHERE guid=85191;
DELETE FROM creature_linking WHERE guid=85191 OR master_guid=85191;
DELETE FROM creature WHERE guid=85200;
DELETE FROM creature_addon WHERE guid=85200;
DELETE FROM creature_movement WHERE id=85200;
DELETE FROM game_event_creature WHERE guid=85200;
DELETE FROM game_event_creature_data WHERE guid=85200;
DELETE FROM creature_battleground WHERE guid=85200;
DELETE FROM creature_linking WHERE guid=85200 OR master_guid=85200;
DELETE FROM creature WHERE guid=85199;
DELETE FROM creature_addon WHERE guid=85199;
DELETE FROM creature_movement WHERE id=85199;
DELETE FROM game_event_creature WHERE guid=85199;
DELETE FROM game_event_creature_data WHERE guid=85199;
DELETE FROM creature_battleground WHERE guid=85199;
DELETE FROM creature_linking WHERE guid=85199 OR master_guid=85199;
DELETE FROM creature WHERE guid=85201;
DELETE FROM creature_addon WHERE guid=85201;
DELETE FROM creature_movement WHERE id=85201;
DELETE FROM game_event_creature WHERE guid=85201;
DELETE FROM game_event_creature_data WHERE guid=85201;
DELETE FROM creature_battleground WHERE guid=85201;
DELETE FROM creature_linking WHERE guid=85201 OR master_guid=85201;
DELETE FROM creature WHERE guid=85202;
DELETE FROM creature_addon WHERE guid=85202;
DELETE FROM creature_movement WHERE id=85202;
DELETE FROM game_event_creature WHERE guid=85202;
DELETE FROM game_event_creature_data WHERE guid=85202;
DELETE FROM creature_battleground WHERE guid=85202;
DELETE FROM creature_linking WHERE guid=85202 OR master_guid=85202;
DELETE FROM creature WHERE guid=85198;
DELETE FROM creature_addon WHERE guid=85198;
DELETE FROM creature_movement WHERE id=85198;
DELETE FROM game_event_creature WHERE guid=85198;
DELETE FROM game_event_creature_data WHERE guid=85198;
DELETE FROM creature_battleground WHERE guid=85198;
DELETE FROM creature_linking WHERE guid=85198 OR master_guid=85198;
DELETE FROM creature WHERE guid=85194;
DELETE FROM creature_addon WHERE guid=85194;
DELETE FROM creature_movement WHERE id=85194;
DELETE FROM game_event_creature WHERE guid=85194;
DELETE FROM game_event_creature_data WHERE guid=85194;
DELETE FROM creature_battleground WHERE guid=85194;
DELETE FROM creature_linking WHERE guid=85194 OR master_guid=85194;
DELETE FROM creature WHERE guid=85195;
DELETE FROM creature_addon WHERE guid=85195;
DELETE FROM creature_movement WHERE id=85195;
DELETE FROM game_event_creature WHERE guid=85195;
DELETE FROM game_event_creature_data WHERE guid=85195;
DELETE FROM creature_battleground WHERE guid=85195;
DELETE FROM creature_linking WHERE guid=85195 OR master_guid=85195;
DELETE FROM creature WHERE guid=85196;
DELETE FROM creature_addon WHERE guid=85196;
DELETE FROM creature_movement WHERE id=85196;
DELETE FROM game_event_creature WHERE guid=85196;
DELETE FROM game_event_creature_data WHERE guid=85196;
DELETE FROM creature_battleground WHERE guid=85196;
DELETE FROM creature_linking WHERE guid=85196 OR master_guid=85196;
DELETE FROM creature WHERE guid=85197;
DELETE FROM creature_addon WHERE guid=85197;
DELETE FROM creature_movement WHERE id=85197;
DELETE FROM game_event_creature WHERE guid=85197;
DELETE FROM game_event_creature_data WHERE guid=85197;
DELETE FROM creature_battleground WHERE guid=85197;
DELETE FROM creature_linking WHERE guid=85197 OR master_guid=85197;
DELETE FROM creature WHERE guid=85193;
DELETE FROM creature_addon WHERE guid=85193;
DELETE FROM creature_movement WHERE id=85193;
DELETE FROM game_event_creature WHERE guid=85193;
DELETE FROM game_event_creature_data WHERE guid=85193;
DELETE FROM creature_battleground WHERE guid=85193;
DELETE FROM creature_linking WHERE guid=85193 OR master_guid=85193;
DELETE FROM creature WHERE guid=85205;
DELETE FROM creature_addon WHERE guid=85205;
DELETE FROM creature_movement WHERE id=85205;
DELETE FROM game_event_creature WHERE guid=85205;
DELETE FROM game_event_creature_data WHERE guid=85205;
DELETE FROM creature_battleground WHERE guid=85205;
DELETE FROM creature_linking WHERE guid=85205 OR master_guid=85205;
DELETE FROM creature WHERE guid=85207;
DELETE FROM creature_addon WHERE guid=85207;
DELETE FROM creature_movement WHERE id=85207;
DELETE FROM game_event_creature WHERE guid=85207;
DELETE FROM game_event_creature_data WHERE guid=85207;
DELETE FROM creature_battleground WHERE guid=85207;
DELETE FROM creature_linking WHERE guid=85207 OR master_guid=85207;
DELETE FROM creature WHERE guid=85210;
DELETE FROM creature_addon WHERE guid=85210;
DELETE FROM creature_movement WHERE id=85210;
DELETE FROM game_event_creature WHERE guid=85210;
DELETE FROM game_event_creature_data WHERE guid=85210;
DELETE FROM creature_battleground WHERE guid=85210;
DELETE FROM creature_linking WHERE guid=85210 OR master_guid=85210;
DELETE FROM creature WHERE guid=85053;
DELETE FROM creature_addon WHERE guid=85053;
DELETE FROM creature_movement WHERE id=85053;
DELETE FROM game_event_creature WHERE guid=85053;
DELETE FROM game_event_creature_data WHERE guid=85053;
DELETE FROM creature_battleground WHERE guid=85053;
DELETE FROM creature_linking WHERE guid=85053 OR master_guid=85053;
DELETE FROM creature WHERE guid=85007;
DELETE FROM creature_addon WHERE guid=85007;
DELETE FROM creature_movement WHERE id=85007;
DELETE FROM game_event_creature WHERE guid=85007;
DELETE FROM game_event_creature_data WHERE guid=85007;
DELETE FROM creature_battleground WHERE guid=85007;
DELETE FROM creature_linking WHERE guid=85007 OR master_guid=85007;
DELETE FROM creature WHERE guid=85047;
DELETE FROM creature_addon WHERE guid=85047;
DELETE FROM creature_movement WHERE id=85047;
DELETE FROM game_event_creature WHERE guid=85047;
DELETE FROM game_event_creature_data WHERE guid=85047;
DELETE FROM creature_battleground WHERE guid=85047;
DELETE FROM creature_linking WHERE guid=85047 OR master_guid=85047;
DELETE FROM creature WHERE guid=85006;
DELETE FROM creature_addon WHERE guid=85006;
DELETE FROM creature_movement WHERE id=85006;
DELETE FROM game_event_creature WHERE guid=85006;
DELETE FROM game_event_creature_data WHERE guid=85006;
DELETE FROM creature_battleground WHERE guid=85006;
DELETE FROM creature_linking WHERE guid=85006 OR master_guid=85006;
DELETE FROM creature WHERE guid=85039;
DELETE FROM creature_addon WHERE guid=85039;
DELETE FROM creature_movement WHERE id=85039;
DELETE FROM game_event_creature WHERE guid=85039;
DELETE FROM game_event_creature_data WHERE guid=85039;
DELETE FROM creature_battleground WHERE guid=85039;
DELETE FROM creature_linking WHERE guid=85039 OR master_guid=85039;
DELETE FROM creature WHERE guid=85018;
DELETE FROM creature_addon WHERE guid=85018;
DELETE FROM creature_movement WHERE id=85018;
DELETE FROM game_event_creature WHERE guid=85018;
DELETE FROM game_event_creature_data WHERE guid=85018;
DELETE FROM creature_battleground WHERE guid=85018;
DELETE FROM creature_linking WHERE guid=85018 OR master_guid=85018;
DELETE FROM creature WHERE guid=85052;
DELETE FROM creature_addon WHERE guid=85052;
DELETE FROM creature_movement WHERE id=85052;
DELETE FROM game_event_creature WHERE guid=85052;
DELETE FROM game_event_creature_data WHERE guid=85052;
DELETE FROM creature_battleground WHERE guid=85052;
DELETE FROM creature_linking WHERE guid=85052 OR master_guid=85052;
DELETE FROM creature WHERE guid=85019;
DELETE FROM creature_addon WHERE guid=85019;
DELETE FROM creature_movement WHERE id=85019;
DELETE FROM game_event_creature WHERE guid=85019;
DELETE FROM game_event_creature_data WHERE guid=85019;
DELETE FROM creature_battleground WHERE guid=85019;
DELETE FROM creature_linking WHERE guid=85019 OR master_guid=85019;
DELETE FROM creature WHERE guid=85054;
DELETE FROM creature_addon WHERE guid=85054;
DELETE FROM creature_movement WHERE id=85054;
DELETE FROM game_event_creature WHERE guid=85054;
DELETE FROM game_event_creature_data WHERE guid=85054;
DELETE FROM creature_battleground WHERE guid=85054;
DELETE FROM creature_linking WHERE guid=85054 OR master_guid=85054;
DELETE FROM creature WHERE guid=85008;
DELETE FROM creature_addon WHERE guid=85008;
DELETE FROM creature_movement WHERE id=85008;
DELETE FROM game_event_creature WHERE guid=85008;
DELETE FROM game_event_creature_data WHERE guid=85008;
DELETE FROM creature_battleground WHERE guid=85008;
DELETE FROM creature_linking WHERE guid=85008 OR master_guid=85008;
DELETE FROM creature WHERE guid=85003;
DELETE FROM creature_addon WHERE guid=85003;
DELETE FROM creature_movement WHERE id=85003;
DELETE FROM game_event_creature WHERE guid=85003;
DELETE FROM game_event_creature_data WHERE guid=85003;
DELETE FROM creature_battleground WHERE guid=85003;
DELETE FROM creature_linking WHERE guid=85003 OR master_guid=85003;
DELETE FROM creature WHERE guid=85005;
DELETE FROM creature_addon WHERE guid=85005;
DELETE FROM creature_movement WHERE id=85005;
DELETE FROM game_event_creature WHERE guid=85005;
DELETE FROM game_event_creature_data WHERE guid=85005;
DELETE FROM creature_battleground WHERE guid=85005;
DELETE FROM creature_linking WHERE guid=85005 OR master_guid=85005;


DELETE FROM creature WHERE guid=85004;
DELETE FROM creature_addon WHERE guid=85004;
DELETE FROM creature_movement WHERE id=85004;
DELETE FROM game_event_creature WHERE guid=85004;
DELETE FROM game_event_creature_data WHERE guid=85004;
DELETE FROM creature_battleground WHERE guid=85004;
DELETE FROM creature_linking WHERE guid=85004 OR master_guid=85004;
DELETE FROM creature WHERE guid=84986;
DELETE FROM creature_addon WHERE guid=84986;
DELETE FROM creature_movement WHERE id=84986;
DELETE FROM game_event_creature WHERE guid=84986;
DELETE FROM game_event_creature_data WHERE guid=84986;
DELETE FROM creature_battleground WHERE guid=84986;
DELETE FROM creature_linking WHERE guid=84986 OR master_guid=84986;
DELETE FROM creature WHERE guid=85009;
DELETE FROM creature_addon WHERE guid=85009;
DELETE FROM creature_movement WHERE id=85009;
DELETE FROM game_event_creature WHERE guid=85009;
DELETE FROM game_event_creature_data WHERE guid=85009;
DELETE FROM creature_battleground WHERE guid=85009;
DELETE FROM creature_linking WHERE guid=85009 OR master_guid=85009;
DELETE FROM creature WHERE guid=85043;
DELETE FROM creature_addon WHERE guid=85043;
DELETE FROM creature_movement WHERE id=85043;
DELETE FROM game_event_creature WHERE guid=85043;
DELETE FROM game_event_creature_data WHERE guid=85043;
DELETE FROM creature_battleground WHERE guid=85043;
DELETE FROM creature_linking WHERE guid=85043 OR master_guid=85043;
DELETE FROM creature WHERE guid=85042;
DELETE FROM creature_addon WHERE guid=85042;
DELETE FROM creature_movement WHERE id=85042;
DELETE FROM game_event_creature WHERE guid=85042;
DELETE FROM game_event_creature_data WHERE guid=85042;
DELETE FROM creature_battleground WHERE guid=85042;
DELETE FROM creature_linking WHERE guid=85042 OR master_guid=85042;
DELETE FROM creature WHERE guid=57051;
DELETE FROM creature_addon WHERE guid=57051;
DELETE FROM creature_movement WHERE id=57051;
DELETE FROM game_event_creature WHERE guid=57051;
DELETE FROM game_event_creature_data WHERE guid=57051;
DELETE FROM creature_battleground WHERE guid=57051;
DELETE FROM creature_linking WHERE guid=57051 OR master_guid=57051;
DELETE FROM creature WHERE guid=57070;
DELETE FROM creature_addon WHERE guid=57070;
DELETE FROM creature_movement WHERE id=57070;
DELETE FROM game_event_creature WHERE guid=57070;
DELETE FROM game_event_creature_data WHERE guid=57070;
DELETE FROM creature_battleground WHERE guid=57070;
DELETE FROM creature_linking WHERE guid=57070 OR master_guid=57070;
DELETE FROM creature WHERE guid=57059;
DELETE FROM creature_addon WHERE guid=57059;
DELETE FROM creature_movement WHERE id=57059;
DELETE FROM game_event_creature WHERE guid=57059;
DELETE FROM game_event_creature_data WHERE guid=57059;
DELETE FROM creature_battleground WHERE guid=57059;
DELETE FROM creature_linking WHERE guid=57059 OR master_guid=57059;






-- Spectral Servant Pathing Down The Stairs
UPDATE creature SET position_x = '-10917.510742', position_y = '-2004.839844', position_z = '92.182434', orientation = '4.581106' WHERE guid = '85024';

DELETE FROM creature_movement WHERE id IN (85024);
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('85024','1','-10919.5','-2021.17','92.1844','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('85024','2','-10921.8','-2041.82','86.0719','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('85024','3','-10924.8','-2043.54','86.072','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('85024','4','-10936.5','-2042.3','86.0729','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('85024','5','-10938.3','-2039.02','86.0714','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('85024','6','-10935.8','-2018.83','79.9744','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('85024','7','-10947','-2017.47','79.9744','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('85024','8','-10935.5','-2018.97','79.9744','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('85024','9','-10938.1','-2039.26','86.0706','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('85024','10','-10936.3','-2042.56','86.071','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('85024','11','-10924.6','-2043.78','86.0727','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('85024','12','-10921.2','-2042.01','86.0712','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('85024','13','-10919','-2021.42','92.1838','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('85024','14','-10917','-2001.99','92.1825','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('85024','15','-10913.8','-1999.84','92.1832','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('85024','16','-10910.6','-2000.19','92.1832','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('85024','17','-10906.8','-1994.91','92.1842','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('85024','18','-10904.8','-1972.5','92.1845','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('85024','19','-10903','-1954.15','92.1857','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('85024','20','-10901.4','-1935.77','92.185','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('85024','21','-10900','-1921.7','92.1832','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('85024','22','-10901.6','-1936.23','92.1847','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('85024','23','-10902.9','-1955.29','92.186','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('85024','24','-10904.7','-1972.81','92.1851','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('85024','25','-10906.8','-1995.33','92.1851','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('85024','26','-10910.4','-2000.62','92.1851','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('85024','27','-10913.7','-1999.91','92.1835','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('85024','28','-10916.8','-2002.2','92.1835','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('85024','29','-10917.7','-2005.19','92.1835','0','0','0','0','0','0','0','0','0','0','0','0');


-- Another Pathing Spectral Servant
UPDATE creature SET position_x = '-10923.925781', position_y = '-1999.406494', position_z = '92.183105', orientation = '0.349380' WHERE guid = '85002';

DELETE FROM creature_movement WHERE id IN (85002);
-- TO BE DETERMINED ONCE NPC ARE PLACED PROPERLY


-- Group of Phantom Guests At Top Of Stairs
UPDATE creature SET position_x = '-10923.367188', position_y = '-1988.834961', position_z = '92.183266', orientation = '0.665895' WHERE guid = '85190';
UPDATE creature SET position_x = '-10919.356445', position_y = '-1989.522949', position_z = '92.183685', orientation = '1.980652' WHERE guid = '85184';
UPDATE creature SET position_x = '-10920.101563', position_y = '-1987.097290', position_z = '92.183784', orientation = '5.034281' WHERE guid = '85188';
UPDATE creature SET position_x = '-10918.582031', position_y = '-1987.803101', position_z = '92.183784', orientation = '3.486261' WHERE guid = '85183';
UPDATE creature SET position_x = '-10918.819336', position_y = '-1982.604736', position_z = '92.183807', orientation = '5.092400' WHERE guid = '85187';
UPDATE creature SET position_x = '-10917.853516', position_y = '-1985.044189', position_z = '92.183846', orientation = '1.946094' WHERE guid = '85186';
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('85127','16409','532','1','0','0','-10914.3','-1988.4','92.1838','1.56518','86400','0','0','7824','15775','0','0');
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('85121','16409','532','1','0','0','-10912.3','-1984.93','92.1839','4.53241','86400','0','0','7824','15775','0','0');
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('85122','16409','532','1','0','0','-10910.9','-1985.87','92.184','3.31426','86400','0','0','7824','15775','0','0');

DELETE FROM creature_linking WHERE master_guid IN (85190);
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('85184','85190','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('85188','85190','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('85183','85190','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('85187','85190','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('85186','85190','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('85127','85190','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('85121','85190','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('85122','85190','3');


-- Group of Spectral and Phantom Attendants
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('85111','16410','532','1','0','0','-10929.7','-1963.39','92.1806','4.64001','86400','0','0','59040','0','0','2');
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('85106','16406','532','1','0','0','-10927.6','-1966.12','92.1806','2.95926','86400','0','0','24124','16155','0','2');
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('85094','16406','532','1','0','0','-10932.3','-1965.46','92.181','6.20138','86400','0','0','24124','16155','0','2');
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('85020','16406','532','1','0','0','-10931.9','-1968.7','92.1811','0.747578','86400','0','0','24124','16155','0','2');
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('85189','16406','532','1','0','0','-10928.8','-1968.82','92.1811','1.80001','86400','0','0','24124','16155','0','2');

DELETE FROM creature_movement WHERE id IN (85111);
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('85111','1','-10929.7','-1963.39','92.1806','12000','0','0','0','0','0','0','1','0','4.64001','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('85111','2','-10929.7','-1963.39','92.1806','18000','0','0','0','0','0','0','0','0','4.64001','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('85111','3','-10929.7','-1963.39','92.1806','16000','0','0','0','0','0','0','11','0','4.64001','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('85111','4','-10929.7','-1963.39','92.1806','20000','0','0','0','0','0','0','0','0','4.64001','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('85111','5','-10929.7','-1963.39','92.1806','14000','0','0','0','0','0','0','1','0','4.64001','0','0');

DELETE FROM creature_movement WHERE id IN (85106);
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('85106','1','-10927.6','-1966.12','92.1806','5000','0','0','0','0','0','0','0','0','2.95926','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('85106','2','-10927.6','-1966.12','92.1806','2000','0','0','0','0','0','0','1','0','2.95926','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('85106','3','-10927.6','-1966.12','92.1806','8000','0','0','0','0','0','0','0','0','2.95926','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('85106','4','-10927.6','-1966.12','92.1806','10000','0','0','0','0','0','0','1','0','2.95926','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('85106','5','-10927.6','-1966.12','92.1806','6000','0','0','0','0','0','0','1','0','2.95926','0','0');

DELETE FROM creature_movement WHERE id IN (85094);
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('85094','1','-10932.3','-1965.46','92.181','16000','0','0','0','0','0','0','11','0','6.20138','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('85094','2','-10932.3','-1965.46','92.181','28000','0','0','0','0','0','0','0','0','6.20138','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('85094','3','-10932.3','-1965.46','92.181','16000','0','0','0','0','0','0','1','0','6.20138','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('85094','4','-10932.3','-1965.46','92.181','28000','0','0','0','0','0','0','0','0','6.20138','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('85094','5','-10932.3','-1965.46','92.181','16000','0','0','0','0','0','0','1','0','6.20138','0','0');

DELETE FROM creature_movement WHERE id IN (85020);
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('85020','1','-10931.9','-1968.7','92.1811','10000','0','0','0','0','0','0','0','0','0.747578','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('85020','2','-10931.9','-1968.7','92.1811','22000','0','0','0','0','0','0','1','0','0.747578','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('85020','3','-10931.9','-1968.7','92.1811','18000','0','0','0','0','0','0','0','0','0.747578','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('85020','4','-10931.9','-1968.7','92.1811','17000','0','0','0','0','0','0','1','0','0.747578','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('85020','5','-10931.9','-1968.7','92.1811','16000','0','0','0','0','0','0','1','0','0.747578','0','0');

DELETE FROM creature_movement WHERE id IN (85189);
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('85189','1','-10928.8','-1968.82','92.1811','19000','0','0','0','0','0','0','0','0','1.80001','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('85189','2','-10928.8','-1968.82','92.1811','11000','0','0','0','0','0','0','1','0','1.80001','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('85189','3','-10928.8','-1968.82','92.1811','8000','0','0','0','0','0','0','0','0','1.80001','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('85189','4','-10928.8','-1968.82','92.1811','170000','0','0','0','0','0','0','11','0','1.80001','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('85189','5','-10928.8','-1968.82','92.1811','26000','0','0','0','0','0','0','1','0','1.80001','0','0');

DELETE FROM creature_linking WHERE master_guid IN (85111);
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('85106','85111','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('85094','85111','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('85020','85111','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('85189','85111','3');


-- Group of 9 Phantom NPC Standing Around
UPDATE creature SET position_x = '-10923.384766', position_y = '-1956.831055', position_z = '92.179558', orientation = '0.787633' WHERE guid = '85204';
UPDATE creature SET position_x = '-10918.524414', position_y = '-1957.938721', position_z = '92.178551', orientation = '2.807678' WHERE guid = '85203';
UPDATE creature SET position_x = '-10915.750000', position_y = '-1955.788940', position_z = '92.183098', orientation = '1.016969' WHERE guid = '85211';
UPDATE creature SET position_x = '-10913.146484', position_y = '-1953.309326', position_z = '92.183342', orientation = '3.045654' WHERE guid = '85209';
UPDATE creature SET position_x = '-10915.825195', position_y = '-1951.720703', position_z = '92.186569', orientation = '5.027999' WHERE guid = '85208';
UPDATE creature SET position_x = '-10919.162109', position_y = '-1951.305420', position_z = '92.185585', orientation = '3.053507' WHERE guid = '85206';
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('85191','16409','532','1','0','0','-10920.1','-1954.14','92.1827','5.0712','86400','0','0','7824','15775','0','0');
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('85200','16409','532','1','0','0','-10924','-1953.91','92.1827','5.93513','86400','0','0','7824','15775','0','0');
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('85199','16409','532','1','0','0','-10921.7','-1949.52','92.1858','4.6408','86400','0','0','7824','15775','0','0');

DELETE FROM creature_linking WHERE master_guid IN (85204);
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('85203','85204','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('85211','85204','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('85209','85204','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('85208','85204','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('85206','85204','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('85191','85204','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('85200','85204','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('85199','85204','3');


-- Rear Most Group of 5 Spectral and Phantom Attendants
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('85201','16406','532','1','0','0','-10939.6','-1931.85','93.8202','5.61548','86400','0','0','24124','16155','0','2');
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('85202','16406','532','1','0','0','-10939.7','-1935.19','93.8202','0.742083','86400','0','0','24124','16155','0','2');
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('85198','16406','532','1','0','0','-10937.2','-1935.93','93.8208','1.40967','86400','0','0','24124','16155','0','2');
UPDATE creature SET position_x = '-10935.454102', position_y = '-1933.440430', position_z = '93.820992', orientation = '2.958475', MovementType = '2' WHERE guid = '84977';
UPDATE creature SET position_x = '-10936.587891', position_y = '-1930.861816', position_z = '93.821724', orientation = '4.180555', MovementType = '2' WHERE guid = '85030';
-- Fixes to Position
UPDATE creature SET position_x = '-10937.251953', position_y = '-1931.252808', position_z = '93.821762', orientation = '4.119299' WHERE guid = '85030';
UPDATE creature SET position_x = '-10938.944336', position_y = '-1934.287598', position_z = '93.820633', orientation = '0.746015' WHERE guid = '85202';
UPDATE creature SET position_x = '-10937.079102', position_y = '-1935.341675', position_z = '93.819687', orientation = '1.776458' WHERE guid = '85198';
UPDATE creature SET position_x = '-10940.652344', position_y = '-1931.135742', position_z = '93.819939', orientation = '5.558934' WHERE guid = '85201';

DELETE FROM creature_movement WHERE id IN (85201);
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('85201','1','-10939.6','-1931.85','93.8202','11000','0','0','0','0','0','0','1','0','5.61548','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('85201','2','-10939.6','-1931.85','93.8202','18000','0','0','0','0','0','0','0','0','5.61548','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('85201','3','-10939.6','-1931.85','93.8202','19000','0','0','0','0','0','0','11','0','5.61548','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('85201','4','-10939.6','-1931.85','93.8202','20000','0','0','0','0','0','0','0','0','5.61548','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('85201','5','-10939.6','-1931.85','93.8202','14000','0','0','0','0','0','0','1','0','5.61548','0','0');

DELETE FROM creature_movement WHERE id IN (85202);
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('85202','1','-10939.7','-1935.19','93.8202','5000','0','0','0','0','0','0','0','0','0.742083','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('85202','2','-10939.7','-1935.19','93.8202','2000','0','0','0','0','0','0','1','0','0.742083','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('85202','3','-10939.7','-1935.19','93.8202','13000','0','0','0','0','0','0','0','0','0.742083','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('85202','4','-10939.7','-1935.19','93.8202','10000','0','0','0','0','0','0','1','0','0.742083','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('85202','5','-10939.7','-1935.19','93.8202','6000','0','0','0','0','0','0','1','0','0.742083','0','0');

DELETE FROM creature_movement WHERE id IN (85198);
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('85198','1','-10937.2','-1935.93','93.8208','16000','0','0','0','0','0','0','11','0','1.40967','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('85198','2','-10937.2','-1935.93','93.8208','28000','0','0','0','0','0','0','0','0','1.40967','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('85198','3','-10937.2','-1935.93','93.8208','14000','0','0','0','0','0','0','1','0','1.40967','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('85198','4','-10937.2','-1935.93','93.8208','28000','0','0','0','0','0','0','0','0','1.40967','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('85198','5','-10937.2','-1935.93','93.8208','16000','0','0','0','0','0','0','1','0','1.40967','0','0');

DELETE FROM creature_movement WHERE id IN (84977);
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('84977','1','-10935.5','-1933.44','93.821','21000','0','0','0','0','0','0','0','0','2.95848','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('84977','2','-10935.5','-1933.44','93.821','22000','0','0','0','0','0','0','1','0','2.95848','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('84977','3','-10935.5','-1933.44','93.821','18000','0','0','0','0','0','0','1','0','2.95848','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('84977','4','-10935.5','-1933.44','93.821','19000','0','0','0','0','0','0','11','0','2.95848','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('84977','5','-10935.5','-1933.44','93.821','16000','0','0','0','0','0','0','1','0','2.95848','0','0');

DELETE FROM creature_movement WHERE id IN (85030);
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('85030','1','-10936.6','-1930.86','93.8217','19000','0','0','0','0','0','0','0','0','4.18055','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('85030','2','-10936.6','-1930.86','93.8217','11000','0','0','0','0','0','0','1','0','4.18055','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('85030','3','-10936.6','-1930.86','93.8217','8000','0','0','0','0','0','0','0','0','4.18055','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('85030','4','-10936.6','-1930.86','93.8217','170000','0','0','0','0','0','0','11','0','4.18055','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('85030','5','-10936.6','-1930.86','93.8217','26000','0','0','0','0','0','0','1','0','4.18055','0','0');

DELETE FROM creature_linking WHERE master_guid IN (85201);
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('85202','85201','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('85198','85201','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('84977','85201','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('85030','85201','3');


-- Phantom Guests Along Balcony Edge (Only Top of Stairs Area)
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('85194','16409','532','1','0','0','-10945.5','-1895.81','93.824707','1.27145','86400','0','0','7824','15775','0','0');
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('85195','16409','532','1','0','0','-10946.9','-1912','93.824707','2.52808','86400','0','0','7824','15775','0','0');
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('85196','16409','532','1','0','0','-10947.1','-1909.22','93.824707','3.72267','86400','0','0','7824','15775','0','0');
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('85197','16409','532','1','0','0','-10945.1','-1969.73','93.824707','2.23513','86400','0','0','7824','15775','0','0');
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('85193','16409','532','1','0','0','-10947','-1989.32','93.824707','4.85836','86400','0','0','7824','15775','0','0');
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('85205','16409','532','1','0','0','-10947','-1992.2','93.824707','1.18505','86400','0','0','7824','15775','0','0');
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('85207','16409','532','1','0','0','-10949.6','-2013.04','93.824707','3.25771','86400','0','0','7824','15775','0','0');
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('85210','16409','532','1','0','0','-10950.8','-2018.6','93.824707','4.21354','86400','0','0','7824','15775','0','0');

DELETE FROM creature_addon WHERE guid IN (85194,85195,85196,85197,85193,85205,85207,85210);
insert into `creature_addon` (`guid`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) values('85194','0','5','1','0','0','0',NULL);
insert into `creature_addon` (`guid`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) values('85195','0','5','1','0','0','0',NULL);
insert into `creature_addon` (`guid`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) values('85196','0','5','1','0','0','0',NULL);
insert into `creature_addon` (`guid`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) values('85197','0','5','1','0','0','0',NULL);
insert into `creature_addon` (`guid`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) values('85193','0','5','1','0','0','0',NULL);
insert into `creature_addon` (`guid`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) values('85205','0','5','1','0','0','0',NULL);
insert into `creature_addon` (`guid`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) values('85207','0','5','1','0','0','0',NULL);
insert into `creature_addon` (`guid`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) values('85210','0','5','1','0','0','0',NULL);

DELETE FROM creature_linking WHERE master_guid IN (85195);
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('85196','85195','3');

DELETE FROM creature_linking WHERE master_guid IN (85207);
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('85210','85207','3');


-- More Phantom Guests Sitting Around Upper Floor Ledge
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('85054','16409','532','1','0','0','-10965.4','-2035.1','93.824707','1.96417','86400','0','0','7824','15775','0','0');
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('85008','16409','532','1','0','0','-10992.3','-2005.72','93.824707','5.98777','86400','0','0','7824','15775','0','0');
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('85005','16409','532','1','0','0','-11014.7','-1939.96','93.824707','2.56579','86400','0','0','7824','15775','0','0');

DELETE FROM creature_addon WHERE guid IN (85054,85008,85005);
insert into `creature_addon` (`guid`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) values('85054','0','5','1','0','0','0',NULL);
insert into `creature_addon` (`guid`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) values('85008','0','5','1','0','0','0',NULL);
insert into `creature_addon` (`guid`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) values('85005','0','5','1','0','0','0',NULL);


-- Spectral Servant Pathing Along Edge All The Way Around
UPDATE creature SET position_x = '-10946.081055', position_y = '-2007.330444', position_z = '93.824371', orientation = '1.448168', MovementType = '2' WHERE guid = '85002';

DELETE FROM creature_movement WHERE id IN (85002);
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('85002','1','-10941.9','-1978.09','93.8236','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('85002','2','-10939','-1954.13','93.8236','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('85002','3','-10938.2','-1942.83','93.8205','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('85002','4','-10945.5','-1935.71','93.82','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('85002','5','-10940.4','-1891.35','93.82','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('85002','6','-10945','-1935.82','93.82','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('85002','7','-10937.5','-1942.77','93.8207','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('85002','8','-10938.6','-1954.52','93.8223','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('85002','9','-10941.6','-1978.45','93.8226','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('85002','10','-10946.1','-2006.96','93.8226','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('85002','11','-10949.6','-2039.12','93.8226','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('85002','12','-10954.7','-2040.14','93.8226','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('85002','13','-10998.2','-2034.44','93.8234','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('85002','14','-10998.4','-2029.78','93.8234','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('85002','15','-10993.6','-1989.05','93.8313','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('85002','16','-11003.2','-1981.86','93.8317','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('85002','17','-11009.3','-1974.32','93.8335','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('85002','18','-11007.9','-1970.34','93.8335','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('85002','19','-10999.9','-1965.14','93.8335','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('85002','20','-10990.1','-1961.81','93.8329','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('85002','21','-10989.2','-1949.38','93.8248','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('85002','22','-10992.5','-1949.49','93.8262','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('85002','23','-10993.9','-1959.77','93.8234','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('85002','24','-11016.6','-1957.03','93.8255','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('85002','25','-11015.3','-1944.18','93.8248','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('85002','26','-11019.1','-1943.93','93.8271','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('85002','27','-11021.2','-1969.24','93.8254','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('85002','28','-11022.3','-1982.36','93.8275','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('85002','29','-10998.4','-1985.08','93.8311','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('85002','30','-10993','-1989.32','93.8314','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('85002','31','-10998.7','-2030.45','93.8236','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('85002','32','-10997.8','-2034.55','93.8236','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('85002','33','-10953','-2039.67','93.8233','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('85002','34','-10949','-2037.4','93.8233','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('85002','35','-10945.8','-2009.24','93.8233','0','0','0','0','0','0','0','0','0','0','0','0');


-- Spectral Servant Pathing The Far Side
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('85003','16407','532','1','0','0','-10940.9','-2007.76','93.8233','4.56542','86400','0','0','40566','0','0','2');

DELETE FROM creature_movement WHERE id IN (85003);
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('85003','1','-10944.9','-2042.26','93.8233','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('85003','2','-10949','-2043.57','93.8233','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('85003','3','-11000.9','-2037.29','93.8234','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('85003','4','-11001.8','-2032.61','93.8234','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('85003','5','-10996.7','-1991','93.8254','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('85003','6','-11000.3','-1987.36','93.8265','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('85003','7','-11019.9','-1984.66','93.8286','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('85003','8','-11023.4','-1979.58','93.8272','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('85003','9','-11021','-1963.89','93.8261','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('85003','10','-11023.2','-1979.81','93.827','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('85003','11','-11019.4','-1985.35','93.8288','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('85003','12','-10999.8','-1987.79','93.8288','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('85003','13','-10996.1','-1991.7','93.8267','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('85003','14','-11001.5','-2032.91','93.8233','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('85003','15','-10997.4','-2038.48','93.8233','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('85003','16','-10948.7','-2043.93','93.8234','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('85003','17','-10944.7','-2040.24','93.8234','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('85003','18','-10940.8','-2005.73','93.8234','0','0','0','0','0','0','0','0','0','0','0','0');


-- Ebonlocke (Data Backported From UDB 4.3.4 Sniff Data)
UPDATE creature_template SET GossipMenuId=8175 WHERE entry IN (16806);

DELETE FROM gossip_menu WHERE entry IN (8175);
insert into `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) values('8175','10123','0','0');

DELETE FROM npc_text WHERE id IN (10123);
insert into `npc_text` (`ID`, `text0_0`, `text0_1`, `lang0`, `prob0`, `em0_0`, `em0_1`, `em0_2`, `em0_3`, `em0_4`, `em0_5`, `text1_0`, `text1_1`, `lang1`, `prob1`, `em1_0`, `em1_1`, `em1_2`, `em1_3`, `em1_4`, `em1_5`, `text2_0`, `text2_1`, `lang2`, `prob2`, `em2_0`, `em2_1`, `em2_2`, `em2_3`, `em2_4`, `em2_5`, `text3_0`, `text3_1`, `lang3`, `prob3`, `em3_0`, `em3_1`, `em3_2`, `em3_3`, `em3_4`, `em3_5`, `text4_0`, `text4_1`, `lang4`, `prob4`, `em4_0`, `em4_1`, `em4_2`, `em4_3`, `em4_4`, `em4_5`, `text5_0`, `text5_1`, `lang5`, `prob5`, `em5_0`, `em5_1`, `em5_2`, `em5_3`, `em5_4`, `em5_5`, `text6_0`, `text6_1`, `lang6`, `prob6`, `em6_0`, `em6_1`, `em6_2`, `em6_3`, `em6_4`, `em6_5`, `text7_0`, `text7_1`, `lang7`, `prob7`, `em7_0`, `em7_1`, `em7_2`, `em7_3`, `em7_4`, `em7_5`) values('10123','This party is pointless. Those foolish nobles will never get to see Medivh. Can\'t they see this? I should have just stayed in Darkshire with my family instead of wasting my time here.','','0','1','1','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0');




-- =======================
-- Guest Chambers Overhaul
-- =======================
-- 2 Phantom Guardsman Along Wall
DELETE FROM creature_linking WHERE master_guid IN (57030);
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('57031','57030','3');


-- 2 Phantom Guardsman by Statues
DELETE FROM creature_linking WHERE master_guid IN (57032);
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('57035','57032','3');


-- Group of 4 NPC in Hallway
DELETE FROM creature_linking WHERE master_guid IN (57068);
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('57074','57068','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('57050','57068','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('57057','57068','3');


-- 2 Pathing Spectral Sentries in Hallway
UPDATE creature SET SpawnDist=0, MovementType=2 WHERE guid IN (57028);
UPDATE creature SET SpawnDist=0, MovementType=0 WHERE guid IN (57029);
UPDATE creature SET position_x = '-10875.659180', position_y = '-1973.648438', position_z = '92.172157', orientation = '4.546555' WHERE guid = '57029';
UPDATE creature SET position_x = '-10877.576172', position_y = '-1973.369385', position_z = '92.172157', orientation = '4.581897' WHERE guid = '57028';

DELETE FROM creature_movement WHERE id IN (57028);
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('57028','1','-10878.9','-1979.7','92.1722','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('57028','2','-10881.7','-1994.58','92.1724','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('57028','3','-10886.1','-2007.44','92.1736','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('57028','4','-10893','-2026.14','92.1736','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('57028','5','-10895.8','-2033.46','92.1736','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('57028','6','-10902.4','-2047.18','92.1736','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('57028','7','-10907.8','-2056.71','92.1718','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('57028','8','-10914.9','-2067.97','92.1718','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('57028','9','-10910.8','-2064.34','92.1718','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('57028','10','-10904.2','-2053.52','92.1718','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('57028','11','-10899.1','-2044.32','92.172','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('57028','12','-10893.6','-2032.75','92.1735','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('57028','13','-10890.1','-2022.88','92.1736','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('57028','14','-10884.4','-2007.2','92.1736','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('57028','15','-10880.2','-1995.82','92.1736','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('57028','16','-10877.4','-1982.46','92.172','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('57028','17','-10875.8','-1969.99','92.172','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('57028','18','-10874.7','-1956.86','92.1659','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('57028','19','-10876.4','-1962.09','92.1662','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('57028','20','-10878.1','-1973.58','92.1705','0','0','0','0','0','0','0','0','0','0','0','0');

DELETE FROM creature_linking WHERE master_guid IN (57028);
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('57029','57028','515');


-- Pathing Concubine and Hostess in Hallway
UPDATE creature SET SpawnDist=0, MovementType=2 WHERE guid IN (57075);
UPDATE creature SET position_x = '-10877.645508', position_y = '-2019.309448', position_z = '92.173325', orientation = '5.953989', spawntimesecs = '86400' WHERE guid = '57075';
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('85053','16460','532','1','0','0','-10877.1','-2017.91','92.1733','5.96891','86400','0','0','45952','16155','0','0');

DELETE FROM creature_movement WHERE id IN (57075);
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('57075','1','-10864','-2024.6','92.1733','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('57075','2','-10850.8','-2028.87','92.1733','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('57075','3','-10844.6','-2031.06','90.9263','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('57075','4','-10850.9','-2027.18','92.1753','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('57075','5','-10863.9','-2023.09','92.1753','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('57075','6','-10878.5','-2017.45','92.1753','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('57075','7','-10887.3','-2021.99','92.1753','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('57075','8','-10891.7','-2029.94','92.1753','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('57075','9','-10895.5','-2038.29','92.1753','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('57075','10','-10902','-2051.27','92.1723','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('57075','11','-10908.9','-2062.9','92.1723','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('57075','12','-10899.7','-2069.48','92.1723','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('57075','13','-10888.4','-2077.46','92.1646','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('57075','14','-10876.3','-2086.04','90.4968','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('57075','15','-10861','-2095.83','90.4968','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('57075','16','-10864.8','-2090.72','90.4968','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('57075','17','-10875.2','-2084.16','90.4968','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('57075','18','-10884','-2078.08','92.1638','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('57075','19','-10896.6','-2069.5','92.1704','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('57075','20','-10905.7','-2063.45','92.1704','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('57075','21','-10904.8','-2060.19','92.1704','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('57075','22','-10899','-2051.44','92.1707','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('57075','23','-10892.4','-2037.66','92.1726','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('57075','24','-10888.5','-2028.83','92.1733','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('57075','25','-10884','-2017.45','92.1733','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('57075','26','-10878','-2019.43','92.1733','0','0','0','0','0','0','0','0','0','0','0','0');

DELETE FROM creature_linking WHERE master_guid IN (57075);
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('85053','57075','515');

-- 2 Phantom Guardsman Before Boss
DELETE FROM creature_linking WHERE master_guid IN (57033);
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('57034','57033','3');

-- =========================
-- First Room Guest Chambers
-- =========================
-- First Group of 4 NPC
UPDATE creature SET position_x = '-10849.012695', position_y = '-1986.926392', position_z = '92.159866', orientation = '1.878560' WHERE guid = '57063';
UPDATE creature SET position_x = '-10852.875977', position_y = '-1986.960938', position_z = '92.159866', orientation = '1.629588' WHERE guid = '57071';
UPDATE creature SET position_x = '-10854.589844', position_y = '-1983.880737', position_z = '92.159866', orientation = '5.609200' WHERE guid = '57046';
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('85019','16460','532','1','0','0','-10847.5','-1983.31','92.1599','3.80435','86400','0','0','45952','16155','0','0');

DELETE FROM creature_linking WHERE master_guid IN (85019);
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('57063','85019','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('57071','85019','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('57046','85019','3');


-- Second Group of 4 NPC
UPDATE creature SET position_x = '-10826.367188', position_y = '-1999.760864', position_z = '92.159866', orientation = '4.910195' WHERE guid = '57065';
UPDATE creature SET position_x = '-10825.465820', position_y = '-2002.589233', position_z = '92.159866', orientation = '2.267332' WHERE guid = '57078';
UPDATE creature SET position_x = '-10828.727539', position_y = '-2005.137939', position_z = '92.159866', orientation = '3.922167' WHERE guid = '57047';

DELETE FROM creature_linking WHERE master_guid IN (57056);
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('57065','57056','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('57078','57056','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('57047','57056','3');


-- Last Group of 4 NPC
DELETE FROM creature_linking WHERE master_guid IN (57056);
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('57065','57056','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('57078','57056','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('57047','57056','3');

-- ==========================
-- Middle Room Guest Chambers
-- ==========================
-- Group of 2 on Right and 2 on Left
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('85007','16460','532','1','0','0','-10857.8','-2032.5','92.1737','3.04802','86400','0','0','45952','16155','0','0');
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('85047','16461','532','1','0','0','-10855.5','-2020.53','92.1737','6.13856','86400','0','0','57448','0','0','0');

DELETE FROM creature_linking WHERE master_guid IN (85007);
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('57052','85007','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('57045','85007','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('85047','85007','3');


-- Group of 4 At Back of Room
UPDATE creature SET position_x = '-10833.185547', position_y = '-2030.669678', position_z = '90.925308', orientation = '2.894872' WHERE guid = '57076';
UPDATE creature SET position_x = '-10833.787109', position_y = '-2038.310913', position_z = '90.925163', orientation = '2.923150' WHERE guid = '57064';
UPDATE creature SET position_x = '-10836.819336', position_y = '-2038.300171', position_z = '90.926163', orientation = '2.272054' WHERE guid = '57054';
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('85006','16460','532','1','0','0','-10835','-2028.11','90.9254','3.5923','86400','0','0','45952','16155','0','0');

DELETE FROM creature_linking WHERE master_guid IN (57048);
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('57066','57048','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('57079','57048','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('57080','57048','3');


-- =======================
-- Far Room Guest Chambers
-- =======================
-- First Group of 4 NPC
UPDATE creature SET position_x = '-10884.039063', position_y = '-2070.789307', position_z = '92.163498', orientation = '2.566574' WHERE guid = '57058';
UPDATE creature SET position_x = '-10890.773438', position_y = '-2082.757080', position_z = '92.162498', orientation = '2.545368' WHERE guid = '57043';
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('85039','16461','532','1','0','0','-10893.3','-2081.22','92.1628','0.357248','86400','0','0','57448','0','0','0');

DELETE FROM creature_linking WHERE master_guid IN (85039);
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('57058','85039','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('57043','85039','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('57069','85039','3');


-- Second Group of 4 NPC
UPDATE creature SET position_x = '-10869.279297', position_y = '-2077.712402', position_z = '90.496231', orientation = '4.665941' WHERE guid = '57044';
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('85018','16461','532','1','0','0','-10871','-2080.72','90.4962','0.0705771','86400','0','0','57448','0','0','0');

DELETE FROM creature_linking WHERE master_guid IN (85018);
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('57044','85018','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('57077','85018','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('57062','85018','3');


-- Rear Group of 4 NPC
UPDATE creature SET position_x = '-10851.793945', position_y = '-2107.612549', position_z = '92.162239', orientation = '1.926474' WHERE guid = '57067';
UPDATE creature SET position_x = '-10851.685547', position_y = '-2099.718018', position_z = '92.162239', orientation = '4.768827' WHERE guid = '57049';
UPDATE creature SET position_x = '-10854.175781', position_y = '-2101.416260', position_z = '92.162239', orientation = '0.109060' WHERE guid = '57073';
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('85052','16461','532','1','0','0','-10845','-2099.72','92.1622','2.67888','86400','0','0','57448','0','0','0');

DELETE FROM creature_linking WHERE master_guid IN (85052);
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('57067','85052','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('57049','85052','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('57073','85052','3');


-- =================
-- Servants Quarters
-- =================
-- Deleted NPC
DELETE FROM creature WHERE guid=56845;
DELETE FROM creature_addon WHERE guid=56845;
DELETE FROM creature_movement WHERE id=56845;
DELETE FROM game_event_creature WHERE guid=56845;
DELETE FROM game_event_creature_data WHERE guid=56845;
DELETE FROM creature_battleground WHERE guid=56845;
DELETE FROM creature_linking WHERE guid=56845 OR master_guid=56845;
DELETE FROM creature WHERE guid=56858;
DELETE FROM creature_addon WHERE guid=56858;
DELETE FROM creature_movement WHERE id=56858;
DELETE FROM game_event_creature WHERE guid=56858;
DELETE FROM game_event_creature_data WHERE guid=56858;
DELETE FROM creature_battleground WHERE guid=56858;
DELETE FROM creature_linking WHERE guid=56858 OR master_guid=56858;
DELETE FROM creature WHERE guid=56835;
DELETE FROM creature_addon WHERE guid=56835;
DELETE FROM creature_movement WHERE id=56835;
DELETE FROM game_event_creature WHERE guid=56835;
DELETE FROM game_event_creature_data WHERE guid=56835;
DELETE FROM creature_battleground WHERE guid=56835;
DELETE FROM creature_linking WHERE guid=56835 OR master_guid=56835;
DELETE FROM creature WHERE guid=56834;
DELETE FROM creature_addon WHERE guid=56834;
DELETE FROM creature_movement WHERE id=56834;
DELETE FROM game_event_creature WHERE guid=56834;
DELETE FROM game_event_creature_data WHERE guid=56834;
DELETE FROM creature_battleground WHERE guid=56834;
DELETE FROM creature_linking WHERE guid=56834 OR master_guid=56834;
DELETE FROM creature WHERE guid=56846;
DELETE FROM creature_addon WHERE guid=56846;
DELETE FROM creature_movement WHERE id=56846;
DELETE FROM game_event_creature WHERE guid=56846;
DELETE FROM game_event_creature_data WHERE guid=56846;
DELETE FROM creature_battleground WHERE guid=56846;
DELETE FROM creature_linking WHERE guid=56846 OR master_guid=56846;
DELETE FROM creature WHERE guid=56852;
DELETE FROM creature_addon WHERE guid=56852;
DELETE FROM creature_movement WHERE id=56852;
DELETE FROM game_event_creature WHERE guid=56852;
DELETE FROM game_event_creature_data WHERE guid=56852;
DELETE FROM creature_battleground WHERE guid=56852;
DELETE FROM creature_linking WHERE guid=56852 OR master_guid=56852;
DELETE FROM creature WHERE guid=57061;
DELETE FROM creature_addon WHERE guid=57061;
DELETE FROM creature_movement WHERE id=57061;
DELETE FROM game_event_creature WHERE guid=57061;
DELETE FROM game_event_creature_data WHERE guid=57061;
DELETE FROM creature_battleground WHERE guid=57061;
DELETE FROM creature_linking WHERE guid=57061 OR master_guid=57061;
DELETE FROM creature WHERE guid=57072;
DELETE FROM creature_addon WHERE guid=57072;
DELETE FROM creature_movement WHERE id=57072;
DELETE FROM game_event_creature WHERE guid=57072;
DELETE FROM game_event_creature_data WHERE guid=57072;
DELETE FROM creature_battleground WHERE guid=57072;
DELETE FROM creature_linking WHERE guid=57072 OR master_guid=57072;
DELETE FROM creature WHERE guid=57060;
DELETE FROM creature_addon WHERE guid=57060;
DELETE FROM creature_movement WHERE id=57060;
DELETE FROM game_event_creature WHERE guid=57060;
DELETE FROM game_event_creature_data WHERE guid=57060;
DELETE FROM creature_battleground WHERE guid=57060;
DELETE FROM creature_linking WHERE guid=57060 OR master_guid=57060;
DELETE FROM creature WHERE guid=56818;
DELETE FROM creature_addon WHERE guid=56818;
DELETE FROM creature_movement WHERE id=56818;
DELETE FROM game_event_creature WHERE guid=56818;
DELETE FROM game_event_creature_data WHERE guid=56818;
DELETE FROM creature_battleground WHERE guid=56818;
DELETE FROM creature_linking WHERE guid=56818 OR master_guid=56818;
DELETE FROM creature WHERE guid=56823;
DELETE FROM creature_addon WHERE guid=56823;
DELETE FROM creature_movement WHERE id=56823;
DELETE FROM game_event_creature WHERE guid=56823;
DELETE FROM game_event_creature_data WHERE guid=56823;
DELETE FROM creature_battleground WHERE guid=56823;
DELETE FROM creature_linking WHERE guid=56823 OR master_guid=56823;
DELETE FROM creature WHERE guid=56814;
DELETE FROM creature_addon WHERE guid=56814;
DELETE FROM creature_movement WHERE id=56814;
DELETE FROM game_event_creature WHERE guid=56814;
DELETE FROM game_event_creature_data WHERE guid=56814;
DELETE FROM creature_battleground WHERE guid=56814;
DELETE FROM creature_linking WHERE guid=56814 OR master_guid=56814;
DELETE FROM creature WHERE guid=57042;
DELETE FROM creature_addon WHERE guid=57042;
DELETE FROM creature_movement WHERE id=57042;
DELETE FROM game_event_creature WHERE guid=57042;
DELETE FROM game_event_creature_data WHERE guid=57042;
DELETE FROM creature_battleground WHERE guid=57042;
DELETE FROM creature_linking WHERE guid=57042 OR master_guid=57042;
DELETE FROM creature WHERE guid=56813;
DELETE FROM creature_addon WHERE guid=56813;
DELETE FROM creature_movement WHERE id=56813;
DELETE FROM game_event_creature WHERE guid=56813;
DELETE FROM game_event_creature_data WHERE guid=56813;
DELETE FROM creature_battleground WHERE guid=56813;
DELETE FROM creature_linking WHERE guid=56813 OR master_guid=56813;
DELETE FROM creature WHERE guid=57055;
DELETE FROM creature_addon WHERE guid=57055;
DELETE FROM creature_movement WHERE id=57055;
DELETE FROM game_event_creature WHERE guid=57055;
DELETE FROM game_event_creature_data WHERE guid=57055;
DELETE FROM creature_battleground WHERE guid=57055;
DELETE FROM creature_linking WHERE guid=57055 OR master_guid=57055;


DELETE FROM creature WHERE guid=56811;
DELETE FROM creature_addon WHERE guid=56811;
DELETE FROM creature_movement WHERE id=56811;
DELETE FROM game_event_creature WHERE guid=56811;
DELETE FROM game_event_creature_data WHERE guid=56811;
DELETE FROM creature_battleground WHERE guid=56811;
DELETE FROM creature_linking WHERE guid=56811 OR master_guid=56811;



-- Group of 5 Bats at Bottom of Stairs
UPDATE creature SET position_x = '-10931.853516', position_y = '-1946.729736', position_z = '49.453575', orientation = '5.980714' WHERE guid = '56828';
UPDATE creature SET position_x = '-10913.767578', position_y = '-1950.076294', position_z = '49.479755', orientation = '6.254033' WHERE guid = '56838';
UPDATE creature SET position_x = '-10925.215820', position_y = '-1958.773071', position_z = '49.478214', orientation = '4.421698' WHERE guid = '56841';
UPDATE creature SET position_x = '-10920.545898', position_y = '-1971.939209', position_z = '49.474373', orientation = '1.855018' WHERE guid = '56833';

DELETE FROM creature_linking WHERE master_guid IN (56841);
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('56828','56841','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('56838','56841','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('56833','56841','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('56827','56841','3');


-- Next Section
UPDATE creature SET position_x = '-10933.038086', position_y = '-1982.568359', position_z = '49.523109', orientation = '4.706800' WHERE guid = '56844';
UPDATE creature SET position_x = '-10935.017578', position_y = '-1999.501587', position_z = '49.474789', orientation = '4.857597' WHERE guid = '56840';
UPDATE creature SET position_x = '-10930.900391', position_y = '-1995.752441', position_z = '49.476761', orientation = '0.335273' WHERE guid = '56842';
UPDATE creature SET position_x = '-10939.059570', position_y = '-1993.738892', position_z = '49.484951', orientation = '5.328056' WHERE guid = '56826';
UPDATE creature SET position_x = '-10920.554688', position_y = '-2015.300781', position_z = '49.475456', orientation = '2.485701' WHERE guid = '56837';

DELETE FROM creature_linking WHERE master_guid IN (56840);
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('56829','56840','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('56837','56840','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('56832','56840','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('56826','56840','3');


-- Far Room
UPDATE creature SET position_x = '-10943.738281', position_y = '-2044.687378', position_z = '49.474285', orientation = '0.292089' WHERE guid = '56830';

DELETE FROM creature_linking WHERE master_guid IN (56843);
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('56836','56843','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('56830','56843','3');


-- Shadikith Room
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('56845','16174','532','1','0','0','-10892.6','-2007.23','49.4749','3.09675','86400','7','0','57448','0','0','1');
UPDATE creature SET position_x = '-10892.360352', position_y = '-1998.703613', position_z = '49.474930', orientation = '3.765126' WHERE guid = '56839';
UPDATE creature SET position_x = '-10896.994141', position_y = '-2013.631836', position_z = '49.474930', orientation = '0.208844' WHERE guid = '56831';

DELETE FROM creature_linking WHERE master_guid IN (56845);
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('56839','56845','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('56831','56845','3');


-- Next Section Right Side Group
UPDATE creature SET position_x = '-10900.501953', position_y = '-2033.605469', position_z = '49.474930', orientation = '2.147205' WHERE guid = '56857';

DELETE FROM creature_linking WHERE master_guid IN (56857);
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('56853','56857','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('56847','56857','3');


-- Next Section Left Side Group
UPDATE creature SET position_x = '-10877.738281', position_y = '-2030.212646', position_z = '49.474930', orientation = '2.964020' WHERE guid = '56861';

DELETE FROM creature_linking WHERE master_guid IN (56856);
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('56861','56856','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('56851','56856','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('56859','56856','3');


-- Further Section Right Side
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('56858','16178','532','1','0','0','-10905.4','-2051.97','49.4749','0.0337038','86400','5','0','24451','0','0','1');
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('56835','16177','532','1','0','0','-10907.6','-2054.33','49.4749','0.0219235','86400','5','0','50267','0','0','1');
UPDATE creature SET position_x = '-10905.111328', position_y = '-2057.756592', position_z = '49.474899', orientation = '0.038415' WHERE guid = '56848';
UPDATE creature SET position_x = '-10906.515625', position_y = '-2047.927124', position_z = '49.474899', orientation = '5.189057' WHERE guid = '56860';

DELETE FROM creature_linking WHERE master_guid IN (56858);
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('56835','56858','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('56848','56858','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('56860','56858','3');


-- Further Section Left Side
DELETE FROM creature_linking WHERE master_guid IN (56854);
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('56850','56854','3');


-- End of Hall
UPDATE creature SET position_x = '-10899.609375', position_y = '-2085.817871', position_z = '49.474899', orientation = '1.441926' WHERE guid = '84987'; -- Mini-Boss

UPDATE creature SET position_x = '-10902.107422', position_y = '-2074.040283', position_z = '49.474899', orientation = '1.317048' WHERE guid = '56849';

DELETE FROM creature_linking WHERE master_guid IN (56855);
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('56849','56855','3');


-- 2 Phase Hounds Pathing in Hall
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('56834','16178','532','1','0','0','-10896.9','-2067.24','49.4749','1.39481','86400','0','0','24451','0','0','0');
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('56846','16178','532','1','0','0','-10895.4','-2067.46','49.4749','1.44507','86400','0','0','24451','0','0','2');

DELETE FROM creature_movement WHERE id IN (56846);
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('56846','1','-10890.5','-2041.62','49.4749','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('56846','2','-10887.9','-2018.66','49.4749','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('56846','3','-10905.9','-2004.69','49.4749','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('56846','4','-10887.4','-2018.75','49.4749','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('56846','5','-10890.3','-2042.18','49.4749','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('56846','6','-10894.4','-2067.36','49.4749','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('56846','7','-10898.9','-2080.08','49.4749','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('56846','8','-10895.6','-2066.25','49.4749','0','0','0','0','0','0','0','0','0','0','0','0');

DELETE FROM creature_linking WHERE master_guid IN (56846);
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('56834','56846','515');


-- Group of 4 Spiders
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('56852','16170','532','1','0','0','-10958.8','-1976.58','46.2374','2.56349','86400','3','0','20958','0','0','1');
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('57061','16170','532','1','0','0','-10959.1','-1970.04','46.0078','1.62101','86400','3','0','20958','0','0','1');

DELETE FROM creature_linking WHERE master_guid IN (56817);
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('56824','56817','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('56852','56817','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('57061','56817','3');


-- Group of 4 Spiders
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('57072','16170','532','1','0','0','-10985.9','-1940.7','47.1631','2.08832','86400','3','0','20958','0','0','1');
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('57060','16170','532','1','0','0','-10982.4','-1936.61','47.4328','2.4661','86400','3','0','20958','0','0','1');

DELETE FROM creature_linking WHERE master_guid IN (56815);
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('56816','56815','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('57072','56815','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('57060','56815','3');


-- Group of 3 Spiders
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('56818','16170','532','1','0','0','-10991.3','-2011.02','46.0208','4.61024','86400','3','0','20958','0','0','1');
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('56823','16170','532','1','0','0','-10996.6','-2008.55','46.0208','3.83662','86400','3','0','20958','0','0','1');

DELETE FROM creature_linking WHERE master_guid IN (56822);
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('56818','56822','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('56823','56822','3');


-- Pathing Coldmist Stalker
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('56814','16170','532','1','0','0','-10984.5','-1956.05','46.0463','4.91184','86400','0','0','20958','0','0','2');

DELETE FROM creature_movement WHERE id IN (56814);
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('56814','1','-10987.6','-1941.79','47.4489','30000','0','0','0','0','0','0','0','0','5.70','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('56814','2','-10983.4','-1968.25','45.8071','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('56814','3','-10989','-2016.58','45.4387','30000','0','0','0','0','0','0','0','0','1.66','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('56814','4','-10983.3','-1968.52','45.8041','0','0','0','0','0','0','0','0','0','0','0','0');


-- Pathing Coldmist Stalker
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('57042','16170','532','1','0','0','-10987','-1984.03','45.845','0.226152','86400','0','0','20958','0','0','2');

DELETE FROM creature_movement WHERE id IN (57042);
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('57042','1','-10972.3','-1976.69','45.6218','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('57042','2','-10962.2','-1977.47','46.0023','30000','0','0','0','0','0','0','0','0','3.19','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('57042','3','-10972.3','-1976.72','45.622','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('57042','4','-10991.8','-1985.86','45.9367','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('57042','5','-11002.7','-1984.18','47.9988','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('57042','6','-11008.1','-1983.58','48.528','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('57042','7','-11011.1','-1989.4','48.528','30000','0','0','0','0','0','0','0','0','2.90','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('57042','8','-11007.7','-1983.18','48.528','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('57042','9','-11001.8','-1984.78','47.9133','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('57042','10','-10991.3','-1985.95','45.9295','0','0','0','0','0','0','0','0','0','0','0','0');


-- Coldmist Widow Pathing
UPDATE creature SET SpawnDist=0, MovementType=2 WHERE guid IN (56825);

DELETE FROM creature_movement WHERE id IN (56825);
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('56825','1','-10954.7','-1957.12','46.0198','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('56825','2','-10935.9','-1958.35','49.4753','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('56825','3','-10954.4','-1957.12','46.0206','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('56825','4','-10979','-1955.32','46.073','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('56825','5','-10984.4','-1959.96','46.0528','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('56825','6','-10988.4','-1974.44','45.8945','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('56825','7','-10996.2','-1973.62','46.0204','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('56825','8','-11005.6','-1971.85','48.5265','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('56825','9','-11010.8','-1972.5','48.5265','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('56825','10','-11028.9','-1993.95','48.5265','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('56825','11','-11044.3','-1992.01','49.9127','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('56825','12','-11028.5','-1994.22','48.5284','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('56825','13','-11010.5','-1972.82','48.5284','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('56825','14','-11004.6','-1972.46','48.5284','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('56825','15','-10987.5','-1974.74','45.8735','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('56825','16','-10984','-1960.05','46.0532','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('56825','17','-10978.4','-1955.46','46.0747','0','0','0','0','0','0','0','0','0','0','0','0');


-- Group of 3 Spiders
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('56813','16170','532','1','0','0','-11015.6','-1997.34','49.8968','6.13317','86400','3','0','20958','0','0','1');
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('57055','16170','532','1','0','0','-11011.3','-1994.28','51.0733','1.19772','86400','3','0','20958','0','0','1');

DELETE FROM creature_linking WHERE master_guid IN (56820);
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('56813','56820','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('57055','56820','3');


-- Group of 4 Spiders
UPDATE creature SET position_x = '-11019.284180', position_y = '-1966.566772', position_z = '48.528931', orientation = '2.451221' WHERE guid = '56807';
UPDATE creature SET position_x = '-11025.802734', position_y = '-1969.265503', position_z = '48.528931', orientation = '2.752028' WHERE guid = '56808';
UPDATE creature SET position_x = '-11019.785156', position_y = '-1968.758179', position_z = '48.528931', orientation = '2.690767' WHERE guid = '56812';
UPDATE creature SET position_x = '-11022.495117', position_y = '-1971.342896', position_z = '48.528931', orientation = '3.750270' WHERE guid = '56821';

DELETE FROM creature_linking WHERE master_guid IN (56821);
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('56812','56821','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('56808','56821','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('56807','56821','3');


-- Last Group of 3 Spiders
UPDATE creature SET position_x = '-11047.104492', position_y = '-2006.427856', position_z = '49.897408', orientation = '5.385470' WHERE guid = '56810';
UPDATE creature SET position_x = '-11041.803711', position_y = '-2002.195068', position_z = '49.911282', orientation = '4.715525' WHERE guid = '56809';
UPDATE creature SET position_x = '-11044.677734', position_y = '-2004.179932', position_z = '49.911282', orientation = '2.550967' WHERE guid = '56819';

DELETE FROM creature_linking WHERE master_guid IN (56819);
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('56810','56819','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('56809','56819','3');


-- Fix Hastings Gossip
DELETE FROM gossip_menu_option WHERE menu_id IN (7143,8172);
insert into `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `action_script_id`, `box_coded`, `box_money`, `box_text`, `condition_id`) values('7143','0','0','Help you with what situation?','1','1','8172','0','0','0','0',NULL,'0');
insert into `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `action_script_id`, `box_coded`, `box_money`, `box_text`, `condition_id`) values('8172','0','0','Big ones?','1','1','8171','0','0','0','0',NULL,'0');


-- ====================
-- Opera House Overhaul
-- ====================
-- Deleted NPC
DELETE FROM creature WHERE guid=85233;
DELETE FROM creature_addon WHERE guid=85233;
DELETE FROM creature_movement WHERE id=85233;
DELETE FROM game_event_creature WHERE guid=85233;
DELETE FROM game_event_creature_data WHERE guid=85233;
DELETE FROM creature_battleground WHERE guid=85233;
DELETE FROM creature_linking WHERE guid=85233 OR master_guid=85233;
DELETE FROM creature WHERE guid=85231;
DELETE FROM creature_addon WHERE guid=85231;
DELETE FROM creature_movement WHERE id=85231;
DELETE FROM game_event_creature WHERE guid=85231;
DELETE FROM game_event_creature_data WHERE guid=85231;
DELETE FROM creature_battleground WHERE guid=85231;
DELETE FROM creature_linking WHERE guid=85231 OR master_guid=85231;
DELETE FROM creature WHERE guid=85227;
DELETE FROM creature_addon WHERE guid=85227;
DELETE FROM creature_movement WHERE id=85227;
DELETE FROM game_event_creature WHERE guid=85227;
DELETE FROM game_event_creature_data WHERE guid=85227;
DELETE FROM creature_battleground WHERE guid=85227;
DELETE FROM creature_linking WHERE guid=85227 OR master_guid=85227;


DELETE FROM creature WHERE guid=85230;
DELETE FROM creature_addon WHERE guid=85230;
DELETE FROM creature_movement WHERE id=85230;
DELETE FROM game_event_creature WHERE guid=85230;
DELETE FROM game_event_creature_data WHERE guid=85230;
DELETE FROM creature_battleground WHERE guid=85230;
DELETE FROM creature_linking WHERE guid=85230 OR master_guid=85230;
DELETE FROM creature WHERE guid=85232;
DELETE FROM creature_addon WHERE guid=85232;
DELETE FROM creature_movement WHERE id=85232;
DELETE FROM game_event_creature WHERE guid=85232;
DELETE FROM game_event_creature_data WHERE guid=85232;
DELETE FROM creature_battleground WHERE guid=85232;
DELETE FROM creature_linking WHERE guid=85232 OR master_guid=85232;
DELETE FROM creature WHERE guid=85226;
DELETE FROM creature_addon WHERE guid=85226;
DELETE FROM creature_movement WHERE id=85226;
DELETE FROM game_event_creature WHERE guid=85226;
DELETE FROM game_event_creature_data WHERE guid=85226;
DELETE FROM creature_battleground WHERE guid=85226;
DELETE FROM creature_linking WHERE guid=85226 OR master_guid=85226;
DELETE FROM creature WHERE guid=57103;
DELETE FROM creature_addon WHERE guid=57103;
DELETE FROM creature_movement WHERE id=57103;
DELETE FROM game_event_creature WHERE guid=57103;
DELETE FROM game_event_creature_data WHERE guid=57103;
DELETE FROM creature_battleground WHERE guid=57103;
DELETE FROM creature_linking WHERE guid=57103 OR master_guid=57103;
DELETE FROM creature WHERE guid=85228;
DELETE FROM creature_addon WHERE guid=85228;
DELETE FROM creature_movement WHERE id=85228;
DELETE FROM game_event_creature WHERE guid=85228;
DELETE FROM game_event_creature_data WHERE guid=85228;
DELETE FROM creature_battleground WHERE guid=85228;
DELETE FROM creature_linking WHERE guid=85228 OR master_guid=85228;
DELETE FROM creature WHERE guid=85229;
DELETE FROM creature_addon WHERE guid=85229;
DELETE FROM creature_movement WHERE id=85229;
DELETE FROM game_event_creature WHERE guid=85229;
DELETE FROM game_event_creature_data WHERE guid=85229;
DELETE FROM creature_battleground WHERE guid=85229;
DELETE FROM creature_linking WHERE guid=85229 OR master_guid=85229;
DELETE FROM creature WHERE guid=85225;
DELETE FROM creature_addon WHERE guid=85225;
DELETE FROM creature_movement WHERE id=85225;
DELETE FROM game_event_creature WHERE guid=85225;
DELETE FROM game_event_creature_data WHERE guid=85225;
DELETE FROM creature_battleground WHERE guid=85225;
DELETE FROM creature_linking WHERE guid=85225 OR master_guid=85225;
DELETE FROM creature WHERE guid=85220;
DELETE FROM creature_addon WHERE guid=85220;
DELETE FROM creature_movement WHERE id=85220;
DELETE FROM game_event_creature WHERE guid=85220;
DELETE FROM game_event_creature_data WHERE guid=85220;
DELETE FROM creature_battleground WHERE guid=85220;
DELETE FROM creature_linking WHERE guid=85220 OR master_guid=85220;
DELETE FROM creature WHERE guid=85224;
DELETE FROM creature_addon WHERE guid=85224;
DELETE FROM creature_movement WHERE id=85224;
DELETE FROM game_event_creature WHERE guid=85224;
DELETE FROM game_event_creature_data WHERE guid=85224;
DELETE FROM creature_battleground WHERE guid=85224;
DELETE FROM creature_linking WHERE guid=85224 OR master_guid=85224;
DELETE FROM creature WHERE guid=57119;
DELETE FROM creature_addon WHERE guid=57119;
DELETE FROM creature_movement WHERE id=57119;
DELETE FROM game_event_creature WHERE guid=57119;
DELETE FROM game_event_creature_data WHERE guid=57119;
DELETE FROM creature_battleground WHERE guid=57119;
DELETE FROM creature_linking WHERE guid=57119 OR master_guid=57119;
DELETE FROM creature WHERE guid=85223;
DELETE FROM creature_addon WHERE guid=85223;
DELETE FROM creature_movement WHERE id=85223;
DELETE FROM game_event_creature WHERE guid=85223;
DELETE FROM game_event_creature_data WHERE guid=85223;
DELETE FROM creature_battleground WHERE guid=85223;
DELETE FROM creature_linking WHERE guid=85223 OR master_guid=85223;
DELETE FROM creature WHERE guid=57122;
DELETE FROM creature_addon WHERE guid=57122;
DELETE FROM creature_movement WHERE id=57122;
DELETE FROM game_event_creature WHERE guid=57122;
DELETE FROM game_event_creature_data WHERE guid=57122;
DELETE FROM creature_battleground WHERE guid=57122;
DELETE FROM creature_linking WHERE guid=57122 OR master_guid=57122;
DELETE FROM creature WHERE guid=85222;
DELETE FROM creature_addon WHERE guid=85222;
DELETE FROM creature_movement WHERE id=85222;
DELETE FROM game_event_creature WHERE guid=85222;
DELETE FROM game_event_creature_data WHERE guid=85222;
DELETE FROM creature_battleground WHERE guid=85222;
DELETE FROM creature_linking WHERE guid=85222 OR master_guid=85222;
DELETE FROM creature WHERE guid=85221;
DELETE FROM creature_addon WHERE guid=85221;
DELETE FROM creature_movement WHERE id=85221;
DELETE FROM game_event_creature WHERE guid=85221;
DELETE FROM game_event_creature_data WHERE guid=85221;
DELETE FROM creature_battleground WHERE guid=85221;
DELETE FROM creature_linking WHERE guid=85221 OR master_guid=85221;
DELETE FROM creature WHERE guid=85236;
DELETE FROM creature_addon WHERE guid=85236;
DELETE FROM creature_movement WHERE id=85236;
DELETE FROM game_event_creature WHERE guid=85236;
DELETE FROM game_event_creature_data WHERE guid=85236;
DELETE FROM creature_battleground WHERE guid=85236;
DELETE FROM creature_linking WHERE guid=85236 OR master_guid=85236;
DELETE FROM creature WHERE guid=85212;
DELETE FROM creature_addon WHERE guid=85212;
DELETE FROM creature_movement WHERE id=85212;
DELETE FROM game_event_creature WHERE guid=85212;
DELETE FROM game_event_creature_data WHERE guid=85212;
DELETE FROM creature_battleground WHERE guid=85212;
DELETE FROM creature_linking WHERE guid=85212 OR master_guid=85212;
DELETE FROM creature WHERE guid=57124;
DELETE FROM creature_addon WHERE guid=57124;
DELETE FROM creature_movement WHERE id=57124;
DELETE FROM game_event_creature WHERE guid=57124;
DELETE FROM game_event_creature_data WHERE guid=57124;
DELETE FROM creature_battleground WHERE guid=57124;
DELETE FROM creature_linking WHERE guid=57124 OR master_guid=57124;
DELETE FROM creature WHERE guid=84988;
DELETE FROM creature_addon WHERE guid=84988;
DELETE FROM creature_movement WHERE id=84988;
DELETE FROM game_event_creature WHERE guid=84988;
DELETE FROM game_event_creature_data WHERE guid=84988;
DELETE FROM creature_battleground WHERE guid=84988;
DELETE FROM creature_linking WHERE guid=84988 OR master_guid=84988;
DELETE FROM creature WHERE guid=85045;
DELETE FROM creature_addon WHERE guid=85045;
DELETE FROM creature_movement WHERE id=85045;
DELETE FROM game_event_creature WHERE guid=85045;
DELETE FROM game_event_creature_data WHERE guid=85045;
DELETE FROM creature_battleground WHERE guid=85045;
DELETE FROM creature_linking WHERE guid=85045 OR master_guid=85045;
DELETE FROM creature WHERE guid=85213;
DELETE FROM creature_addon WHERE guid=85213;
DELETE FROM creature_movement WHERE id=85213;
DELETE FROM game_event_creature WHERE guid=85213;
DELETE FROM game_event_creature_data WHERE guid=85213;
DELETE FROM creature_battleground WHERE guid=85213;
DELETE FROM creature_linking WHERE guid=85213 OR master_guid=85213;
DELETE FROM creature WHERE guid=85037;
DELETE FROM creature_addon WHERE guid=85037;
DELETE FROM creature_movement WHERE id=85037;
DELETE FROM game_event_creature WHERE guid=85037;
DELETE FROM game_event_creature_data WHERE guid=85037;
DELETE FROM creature_battleground WHERE guid=85037;
DELETE FROM creature_linking WHERE guid=85037 OR master_guid=85037;
DELETE FROM creature WHERE guid=85214;
DELETE FROM creature_addon WHERE guid=85214;
DELETE FROM creature_movement WHERE id=85214;
DELETE FROM game_event_creature WHERE guid=85214;
DELETE FROM game_event_creature_data WHERE guid=85214;
DELETE FROM creature_battleground WHERE guid=85214;
DELETE FROM creature_linking WHERE guid=85214 OR master_guid=85214;
DELETE FROM creature WHERE guid=57111;
DELETE FROM creature_addon WHERE guid=57111;
DELETE FROM creature_movement WHERE id=57111;
DELETE FROM game_event_creature WHERE guid=57111;
DELETE FROM game_event_creature_data WHERE guid=57111;
DELETE FROM creature_battleground WHERE guid=57111;
DELETE FROM creature_linking WHERE guid=57111 OR master_guid=57111;
DELETE FROM creature WHERE guid=85215;
DELETE FROM creature_addon WHERE guid=85215;
DELETE FROM creature_movement WHERE id=85215;
DELETE FROM game_event_creature WHERE guid=85215;
DELETE FROM game_event_creature_data WHERE guid=85215;
DELETE FROM creature_battleground WHERE guid=85215;
DELETE FROM creature_linking WHERE guid=85215 OR master_guid=85215;
DELETE FROM creature WHERE guid=85217;
DELETE FROM creature_addon WHERE guid=85217;
DELETE FROM creature_movement WHERE id=85217;
DELETE FROM game_event_creature WHERE guid=85217;
DELETE FROM game_event_creature_data WHERE guid=85217;
DELETE FROM creature_battleground WHERE guid=85217;
DELETE FROM creature_linking WHERE guid=85217 OR master_guid=85217;
DELETE FROM creature WHERE guid=85216;
DELETE FROM creature_addon WHERE guid=85216;
DELETE FROM creature_movement WHERE id=85216;
DELETE FROM game_event_creature WHERE guid=85216;
DELETE FROM game_event_creature_data WHERE guid=85216;
DELETE FROM creature_battleground WHERE guid=85216;
DELETE FROM creature_linking WHERE guid=85216 OR master_guid=85216;
DELETE FROM creature WHERE guid=85218;
DELETE FROM creature_addon WHERE guid=85218;
DELETE FROM creature_movement WHERE id=85218;
DELETE FROM game_event_creature WHERE guid=85218;
DELETE FROM game_event_creature_data WHERE guid=85218;
DELETE FROM creature_battleground WHERE guid=85218;
DELETE FROM creature_linking WHERE guid=85218 OR master_guid=85218;
DELETE FROM creature WHERE guid=85237;
DELETE FROM creature_addon WHERE guid=85237;
DELETE FROM creature_movement WHERE id=85237;
DELETE FROM game_event_creature WHERE guid=85237;
DELETE FROM game_event_creature_data WHERE guid=85237;
DELETE FROM creature_battleground WHERE guid=85237;
DELETE FROM creature_linking WHERE guid=85237 OR master_guid=85237;
DELETE FROM creature WHERE guid=85234;
DELETE FROM creature_addon WHERE guid=85234;
DELETE FROM creature_movement WHERE id=85234;
DELETE FROM game_event_creature WHERE guid=85234;
DELETE FROM game_event_creature_data WHERE guid=85234;
DELETE FROM creature_battleground WHERE guid=85234;
DELETE FROM creature_linking WHERE guid=85234 OR master_guid=85234;
DELETE FROM creature WHERE guid=85235;
DELETE FROM creature_addon WHERE guid=85235;
DELETE FROM creature_movement WHERE id=85235;
DELETE FROM game_event_creature WHERE guid=85235;
DELETE FROM game_event_creature_data WHERE guid=85235;
DELETE FROM creature_battleground WHERE guid=85235;
DELETE FROM creature_linking WHERE guid=85235 OR master_guid=85235;
DELETE FROM creature WHERE guid=85219;
DELETE FROM creature_addon WHERE guid=85219;
DELETE FROM creature_movement WHERE id=85219;
DELETE FROM game_event_creature WHERE guid=85219;
DELETE FROM game_event_creature_data WHERE guid=85219;
DELETE FROM creature_battleground WHERE guid=85219;
DELETE FROM creature_linking WHERE guid=85219 OR master_guid=85219;

-- 2 Skeletal Ushers
DELETE FROM creature_linking WHERE master_guid IN (57157);
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('57158','57157','3');

-- 2 Skeleton Ushers
DELETE FROM creature_linking WHERE master_guid IN (57156);
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('57159','57156','3');

-- Pathing Skeleton Usher
UPDATE creature SET SpawnDist=0, MovementType=2 WHERE guid IN (57155);

DELETE FROM creature_movement WHERE id IN (57155);
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('57155','1','-10865.9','-1859.89','96.6303','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('57155','2','-10877.7','-1871.75','97.16','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('57155','3','-10888.7','-1878.31','97.1788','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('57155','4','-10898.5','-1879.55','94.8503','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('57155','5','-10915.9','-1877.27','94.8488','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('57155','6','-10926.8','-1872.62','97.4014','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('57155','7','-10937.3','-1859.07','96.9942','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('57155','8','-10944.2','-1841.12','96.1318','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('57155','9','-10945.8','-1830.42','95.6658','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('57155','10','-10943.4','-1801.48','94.3943','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('57155','11','-10945.5','-1830.51','95.6694','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('57155','12','-10943.9','-1841.91','96.1664','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('57155','13','-10937.2','-1859.83','97.0086','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('57155','14','-10925.9','-1873.82','97.4417','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('57155','15','-10915','-1877.7','94.849','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('57155','16','-10897.8','-1879.96','94.8462','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('57155','17','-10887.8','-1878.65','97.3837','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('57155','18','-10877','-1871.93','97.1545','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('57155','19','-10865','-1860.02','96.6151','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('57155','20','-10857.7','-1844.82','95.8523','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('57155','21','-10854.8','-1833.31','95.374','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('57155','22','-10852.2','-1811.45','94.323','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('57155','23','-10856','-1835.57','95.4789','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('57155','24','-10861.1','-1849.54','96.0882','0','0','0','0','0','0','0','0','0','0','0','0');


-- Right-Rear Spectral Patron Group
DELETE FROM creature_linking WHERE master_guid IN (57093);
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('57094','57093','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('57136','57093','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('57105','57093','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('57104','57093','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('57102','57093','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('57101','57093','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('57116','57093','3');


-- Right Front Spectral Patron Group
DELETE FROM creature_linking WHERE master_guid IN (57099);
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('57100','57099','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('57114','57099','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('57115','57099','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('57121','57099','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('57140','57099','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('57139','57099','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('57120','57099','3');


-- Left-Rear Spectral Patron Group
DELETE FROM creature_linking WHERE master_guid IN (57095);
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('57097','57095','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('57134','57095','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('57096','57095','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('57112','57095','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('57109','57095','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('57113','57095','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('57110','57095','3');


-- Left Front Spectral Patron Group
DELETE FROM creature_linking WHERE master_guid IN (57108);
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('57107','57108','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('57106','57108','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('57126','57108','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('57128','57108','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('57125','57108','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('57123','57108','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('57138','57108','3');


-- Fix Sebastian Gossip (Missing Data)
UPDATE creature_template SET GossipMenuId=8174 WHERE entry IN (16811);

DELETE FROM gossip_menu WHERE entry IN (8174);
insert into `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) values('8174','10122','0','0');

DELETE FROM npc_text WHERE id IN (10122);
insert into `npc_text` (`ID`, `text0_0`, `text0_1`, `lang0`, `prob0`, `em0_0`, `em0_1`, `em0_2`, `em0_3`, `em0_4`, `em0_5`, `text1_0`, `text1_1`, `lang1`, `prob1`, `em1_0`, `em1_1`, `em1_2`, `em1_3`, `em1_4`, `em1_5`, `text2_0`, `text2_1`, `lang2`, `prob2`, `em2_0`, `em2_1`, `em2_2`, `em2_3`, `em2_4`, `em2_5`, `text3_0`, `text3_1`, `lang3`, `prob3`, `em3_0`, `em3_1`, `em3_2`, `em3_3`, `em3_4`, `em3_5`, `text4_0`, `text4_1`, `lang4`, `prob4`, `em4_0`, `em4_1`, `em4_2`, `em4_3`, `em4_4`, `em4_5`, `text5_0`, `text5_1`, `lang5`, `prob5`, `em5_0`, `em5_1`, `em5_2`, `em5_3`, `em5_4`, `em5_5`, `text6_0`, `text6_1`, `lang6`, `prob6`, `em6_0`, `em6_1`, `em6_2`, `em6_3`, `em6_4`, `em6_5`, `text7_0`, `text7_1`, `lang7`, `prob7`, `em7_0`, `em7_1`, `em7_2`, `em7_3`, `em7_4`, `em7_5`) values('10122','Greetings! Behold one of the finest musical instruments in all of Lordaeron. It\'s a true honor to perform for the Master and all his guests. Take a seat in the audience, I hear a show is starting soon.','','0','1','1','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0');


-- 2 Spectral Performers Back-Stage
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('85233','16473','532','1','0','0','-10890.5','-1738.73','90.5533','4.53786','14400','0','0','40214','0','0','0');
insert into `creature_addon` (`guid`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) values('85233','0','8','1','0','0','0',NULL);

DELETE FROM creature_linking WHERE master_guid IN (57167);
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('85233','57167','3');


-- 2 Spectral Performers Back-Stage
DELETE FROM creature_linking WHERE master_guid IN (57171);
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('57172','57171','3');


-- Pathing Phantom Stagehand
UPDATE creature SET MovementType=2 WHERE guid IN (57164);

DELETE FROM creature_movement WHERE id IN (57164);
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('57164','1','-10861.9','-1748.85','89.4881','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('57164','2','-10857.3','-1744.91','89.4902','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('57164','3','-10856.5','-1739.71','90.4698','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('57164','4','-10858.6','-1729.95','90.4683','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('57164','5','-10863.9','-1733.45','90.4701','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('57164','6','-10898.8','-1729.58','90.4697','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('57164','7','-10863.3','-1733.78','90.4704','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('57164','8','-10858.2','-1729.86','90.4671','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('57164','9','-10856.1','-1740.41','90.4688','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('57164','10','-10857.2','-1745.18','89.4894','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('57164','11','-10862.1','-1749.41','89.4881','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('57164','12','-10862.6','-1752.14','89.4798','0','0','0','0','0','0','0','0','0','0','0','0');


-- Group of 2 Spectral Performers Back-Stage
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('85231','16473','532','1','0','0','-10854.4','-1748.07','89.4742','0.911856','86400','0','0','57448','0','0','0');

DELETE FROM creature_linking WHERE master_guid IN (57166);
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('85231','57166','3');


-- 2 Spectral Performers Back-Stage
DELETE FROM creature_linking WHERE master_guid IN (57169);
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('57170','57169','3');


-- Stationary Phantom Stagehand Upstairs
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('85227','16472','532','1','0','0','-10839','-1717.77','96.1958','1.16083','86400','0','0','45240','0','0','0');


-- Pathing Phantom Stagehand Upstairs
UPDATE creature SET MovementType=2 WHERE guid IN (57162);

DELETE FROM creature_movement WHERE id IN (57162);
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('57162','1','-10844.2','-1740.08','96.1494','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('57162','2','-10842.4','-1727.83','96.2236','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('57162','3','-10841.1','-1718.59','96.1961','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('57162','4','-10839.9','-1715.83','96.1961','20000','0','0','0','0','0','0','0','0','0.52','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('57162','5','-10840.9','-1718.93','96.1961','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('57162','6','-10842.3','-1728.75','96.2484','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('57162','7','-10844.5','-1744.1','94.4577','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('57162','8','-10844.1','-1750.57','94.4427','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('57162','9','-10845.5','-1760.39','97.6679','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('57162','10','-10848.4','-1779.67','97.6679','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('57162','11','-10846.5','-1781.69','97.6679','20000','0','0','0','0','0','0','0','0','5.323','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('57162','12','-10848.2','-1779.54','97.6679','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('57162','13','-10845.5','-1758.39','97.546','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('57162','14','-10844','-1749.79','94.4427','0','0','0','0','0','0','0','0','0','0','0','0');


-- Pathing Phantom Stagehand Upstairs to Back-Stage
UPDATE creature SET MovementType=2 WHERE guid IN (57165);

DELETE FROM creature_movement WHERE id IN (57165);
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('57165','1','-10846','-1739.05','96.2012','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('57165','2','-10849.1','-1755.69','94.4463','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('57165','3','-10860.5','-1753.58','89.471','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('57165','4','-10859.5','-1748.2','89.4777','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('57165','5','-10857.1','-1745.18','89.4889','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('57165','6','-10856.2','-1735.53','90.468','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('57165','7','-10873.1','-1732.49','90.4686','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('57165','8','-10882.6','-1722.88','90.4688','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('57165','9','-10882.3','-1719.77','90.4688','15000','0','0','0','0','0','0','0','0','1.74','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('57165','10','-10882.5','-1723.45','90.4688','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('57165','11','-10872.7','-1732.8','90.4689','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('57165','12','-10861.3','-1733.87','90.4701','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('57165','13','-10855.4','-1735.83','90.4671','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('57165','14','-10857.2','-1745.44','89.4881','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('57165','15','-10859.6','-1748.69','89.4771','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('57165','16','-10860.3','-1754','89.4732','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('57165','17','-10849.5','-1755.59','94.4471','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('57165','18','-10848','-1750.51','94.4553','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('57165','19','-10845.6','-1746.09','94.456','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('57165','20','-10845.3','-1738.75','96.2052','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('57165','21','-10843.8','-1724.91','96.1957','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('57165','22','-10841.2','-1714.61','96.1957','15000','0','0','0','0','0','0','0','0','0.748','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('57165','23','-10843.7','-1724.27','96.1957','0','0','0','0','0','0','0','0','0','0','0','0');


-- NPC DELETED
DELETE FROM creature WHERE guid=57082;
DELETE FROM creature_addon WHERE guid=57082;
DELETE FROM creature_movement WHERE id=57082;
DELETE FROM game_event_creature WHERE guid=57082;
DELETE FROM game_event_creature_data WHERE guid=57082;
DELETE FROM creature_battleground WHERE guid=57082;
DELETE FROM creature_linking WHERE guid=57082 OR master_guid=57082;
DELETE FROM creature WHERE guid=57081;
DELETE FROM creature_addon WHERE guid=57081;
DELETE FROM creature_movement WHERE id=57081;
DELETE FROM game_event_creature WHERE guid=57081;
DELETE FROM game_event_creature_data WHERE guid=57081;
DELETE FROM creature_battleground WHERE guid=57081;
DELETE FROM creature_linking WHERE guid=57081 OR master_guid=57081;
DELETE FROM creature WHERE guid=57143;
DELETE FROM creature_addon WHERE guid=57143;
DELETE FROM creature_movement WHERE id=57143;
DELETE FROM game_event_creature WHERE guid=57143;
DELETE FROM game_event_creature_data WHERE guid=57143;
DELETE FROM creature_battleground WHERE guid=57143;
DELETE FROM creature_linking WHERE guid=57143 OR master_guid=57143;
DELETE FROM creature WHERE guid=57087;
DELETE FROM creature_addon WHERE guid=57087;
DELETE FROM creature_movement WHERE id=57087;
DELETE FROM game_event_creature WHERE guid=57087;
DELETE FROM game_event_creature_data WHERE guid=57087;
DELETE FROM creature_battleground WHERE guid=57087;
DELETE FROM creature_linking WHERE guid=57087 OR master_guid=57087;
DELETE FROM creature WHERE guid=57135;
DELETE FROM creature_addon WHERE guid=57135;
DELETE FROM creature_movement WHERE id=57135;
DELETE FROM game_event_creature WHERE guid=57135;
DELETE FROM game_event_creature_data WHERE guid=57135;
DELETE FROM creature_battleground WHERE guid=57135;
DELETE FROM creature_linking WHERE guid=57135 OR master_guid=57135;
DELETE FROM creature WHERE guid=57152;
DELETE FROM creature_addon WHERE guid=57152;
DELETE FROM creature_movement WHERE id=57152;
DELETE FROM game_event_creature WHERE guid=57152;
DELETE FROM game_event_creature_data WHERE guid=57152;
DELETE FROM creature_battleground WHERE guid=57152;
DELETE FROM creature_linking WHERE guid=57152 OR master_guid=57152;
DELETE FROM creature WHERE guid=57148;
DELETE FROM creature_addon WHERE guid=57148;
DELETE FROM creature_movement WHERE id=57148;
DELETE FROM game_event_creature WHERE guid=57148;
DELETE FROM game_event_creature_data WHERE guid=57148;
DELETE FROM creature_battleground WHERE guid=57148;
DELETE FROM creature_linking WHERE guid=57148 OR master_guid=57148;
DELETE FROM creature WHERE guid=57147;
DELETE FROM creature_addon WHERE guid=57147;
DELETE FROM creature_movement WHERE id=57147;
DELETE FROM game_event_creature WHERE guid=57147;
DELETE FROM game_event_creature_data WHERE guid=57147;
DELETE FROM creature_battleground WHERE guid=57147;
DELETE FROM creature_linking WHERE guid=57147 OR master_guid=57147;


DELETE FROM creature WHERE guid=57117;
DELETE FROM creature_addon WHERE guid=57117;
DELETE FROM creature_movement WHERE id=57117;
DELETE FROM game_event_creature WHERE guid=57117;
DELETE FROM game_event_creature_data WHERE guid=57117;
DELETE FROM creature_battleground WHERE guid=57117;
DELETE FROM creature_linking WHERE guid=57117 OR master_guid=57117;
DELETE FROM creature WHERE guid=57092;
DELETE FROM creature_addon WHERE guid=57092;
DELETE FROM creature_movement WHERE id=57092;
DELETE FROM game_event_creature WHERE guid=57092;
DELETE FROM game_event_creature_data WHERE guid=57092;
DELETE FROM creature_battleground WHERE guid=57092;
DELETE FROM creature_linking WHERE guid=57092 OR master_guid=57092;
DELETE FROM creature WHERE guid=57151;
DELETE FROM creature_addon WHERE guid=57151;
DELETE FROM creature_movement WHERE id=57151;
DELETE FROM game_event_creature WHERE guid=57151;
DELETE FROM game_event_creature_data WHERE guid=57151;
DELETE FROM creature_battleground WHERE guid=57151;
DELETE FROM creature_linking WHERE guid=57151 OR master_guid=57151;
DELETE FROM creature WHERE guid=57132;
DELETE FROM creature_addon WHERE guid=57132;
DELETE FROM creature_movement WHERE id=57132;
DELETE FROM game_event_creature WHERE guid=57132;
DELETE FROM game_event_creature_data WHERE guid=57132;
DELETE FROM creature_battleground WHERE guid=57132;
DELETE FROM creature_linking WHERE guid=57132 OR master_guid=57132;
DELETE FROM creature WHERE guid=57089;
DELETE FROM creature_addon WHERE guid=57089;
DELETE FROM creature_movement WHERE id=57089;
DELETE FROM game_event_creature WHERE guid=57089;
DELETE FROM game_event_creature_data WHERE guid=57089;
DELETE FROM creature_battleground WHERE guid=57089;
DELETE FROM creature_linking WHERE guid=57089 OR master_guid=57089;
DELETE FROM creature WHERE guid=57146;
DELETE FROM creature_addon WHERE guid=57146;
DELETE FROM creature_movement WHERE id=57146;
DELETE FROM game_event_creature WHERE guid=57146;
DELETE FROM game_event_creature_data WHERE guid=57146;
DELETE FROM creature_battleground WHERE guid=57146;
DELETE FROM creature_linking WHERE guid=57146 OR master_guid=57146;


-- Group of 6 NPC in Upper Opera House
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('57082','16470','532','1','0','0','-10939.5','-1867.81','110.517','2.99554','86400','0','0','33056','16545','0','0');
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('57081','16470','532','1','0','0','-10935.7','-1875.29','110.518','1.23389','86400','0','0','33056','16545','0','0');

DELETE FROM creature_linking WHERE master_guid IN (57082);
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('57081','57082','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('57129','57082','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('57083','57082','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('57088','57082','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('57131','57082','3');


-- Group of 6 NPC in Upper Opera House
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('57143','16468','532','1','0','0','-10884.3','-1873.26','110.517','0.901676','86400','0','0','13972','0','0','0');

DELETE FROM creature_linking WHERE master_guid IN (57143);
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('57085','57143','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('57084','57143','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('57149','57143','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('57086','57143','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('57142','57143','3');


-- 3 NPC Pathing in Upper Opera House
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('57087','16470','532','1','0','0','-10946.6','-1810.09','107.664','4.59462','86400','0','0','33056','16545','0','2');
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('57135','16468','532','1','0','0','-10946.4','-1807.77','107.664','4.59462','86400','0','0','13972','0','0','0');
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('57152','16468','532','1','0','0','-10944.8','-1809.73','107.664','4.68965','86400','0','0','13972','0','0','0');

DELETE FROM creature_linking WHERE master_guid IN (57087);
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('57135','57087','515');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('57152','57087','515');

DELETE FROM creature_movement WHERE id IN (57087);
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('57087','1','-10948.3','-1824.69','109.262','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('57087','2','-10946.3','-1846','109.262','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('57087','3','-10938.9','-1862.23','110.517','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('57087','4','-10928.1','-1874.46','110.517','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('57087','5','-10916.9','-1879.99','111.398','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('57087','6','-10893.5','-1882.83','111.398','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('57087','7','-10881.1','-1879.37','110.517','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('57087','8','-10869.3','-1868.39','110.517','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('57087','9','-10860.8','-1853.93','109.263','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('57087','10','-10855.5','-1836.76','109.263','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('57087','11','-10852.3','-1813.64','107.664','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('57087','12','-10855.1','-1832.07','109.263','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('57087','13','-10862.1','-1852.07','109.263','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('57087','14','-10872.5','-1867.94','110.516','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('57087','15','-10884.3','-1877.68','110.516','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('57087','16','-10897.5','-1880.44','111.395','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('57087','17','-10917.8','-1877.28','111.395','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('57087','18','-10926.8','-1871.01','110.517','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('57087','19','-10937','-1859.16','110.517','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('57087','20','-10944.1','-1844.2','109.262','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('57087','21','-10945.8','-1829.83','109.262','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('57087','22','-10944.9','-1807.53','107.664','0','0','0','0','0','0','0','0','0','0','0','0');


-- Group of 3 NPC at Top of Opera House
DELETE FROM creature_linking WHERE master_guid IN (57154);
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('57118','57154','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('57141','57154','3');


-- Group of 3 NPC at Top of Opera House
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('57148','16468','532','1','0','0','-10885.3','-1863.41','124.537','2.06014','86400','0','0','13972','0','0','0');

DELETE FROM creature_addon WHERE guid IN (57148);
insert into `creature_addon` (`guid`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) values('57148','0','5','1','16','0','0',NULL);

DELETE FROM creature_linking WHERE master_guid IN (57148);
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('57091','57148','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('57145','57148','3');


-- Group of 3 NPC at Top of Opera House
UPDATE creature SET position_x = '-10919.666016', position_y = '-1861.373779', position_z = '124.558037', orientation = '0.779940' WHERE guid = '57144';

DELETE FROM creature_linking WHERE master_guid IN (57144);
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('57090','57144','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('57133','57144','3');


-- Group of 3 NPC at Top of Opera House
DELETE FROM creature_linking WHERE master_guid IN (57153);
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('57127','57153','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('57137','57153','3');


-- Group of 3 Pathing Top of Opera House
UPDATE creature SET SpawnDist=0, MovementType=2 WHERE guid IN (57150);
UPDATE creature SET SpawnDist=0, MovementType=0 WHERE guid IN (57130);
UPDATE creature SET position_x = '-10906.981445', position_y = '-1880.038818', position_z = '125.418869', orientation = '2.807054', SpawnDist = '0', MovementType = '0' WHERE guid = '57098';

DELETE FROM creature_linking WHERE master_guid IN (57150);
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('57130','57150','515');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('57098','57150','515');

DELETE FROM creature_movement WHERE id IN (57150);
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('57150','1','-10920.7','-1876.48','125.425','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('57150','2','-10930.6','-1871.89','124.559','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('57150','3','-10937.9','-1859.6','124.559','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('57150','4','-10944.6','-1847.56','123.304','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('57150','5','-10945.9','-1834.07','123.304','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('57150','6','-10943.5','-1802.8','121.705','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('57150','7','-10946.1','-1829.07','123.304','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('57150','8','-10943.2','-1849.35','123.749','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('57150','9','-10937.7','-1861.77','124.559','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('57150','10','-10928.3','-1872.33','124.559','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('57150','11','-10919.2','-1878.01','125.422','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('57150','12','-10894.6','-1881.75','125.419','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('57150','13','-10881.1','-1877.94','124.559','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('57150','14','-10867.2','-1865.99','124.559','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('57150','15','-10858.9','-1852.72','123.304','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('57150','16','-10854.2','-1839.68','123.304','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('57150','17','-10851.5','-1811.74','121.703','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('57150','18','-10854.7','-1820.73','121.704','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('57150','19','-10856.7','-1835.42','123.304','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('57150','20','-10862.4','-1852.07','123.304','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('57150','21','-10867.4','-1862.19','124.558','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('57150','22','-10879.6','-1873.37','124.558','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('57150','23','-10892.6','-1879.28','125.424','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('57150','24','-10906.3','-1878.73','125.419','0','0','0','0','0','0','0','0','0','0','0','0');



-- ==========================
-- The Broken Stairs Overhaul
-- ==========================
-- Deleted NPC
DELETE FROM creature WHERE guid=57183;
DELETE FROM creature_addon WHERE guid=57183;
DELETE FROM creature_movement WHERE id=57183;
DELETE FROM game_event_creature WHERE guid=57183;
DELETE FROM game_event_creature_data WHERE guid=57183;
DELETE FROM creature_battleground WHERE guid=57183;
DELETE FROM creature_linking WHERE guid=57183 OR master_guid=57183;
DELETE FROM creature WHERE guid=57181;
DELETE FROM creature_addon WHERE guid=57181;
DELETE FROM creature_movement WHERE id=57181;
DELETE FROM game_event_creature WHERE guid=57181;
DELETE FROM game_event_creature_data WHERE guid=57181;
DELETE FROM creature_battleground WHERE guid=57181;
DELETE FROM creature_linking WHERE guid=57181 OR master_guid=57181;
DELETE FROM creature WHERE guid=57177;
DELETE FROM creature_addon WHERE guid=57177;
DELETE FROM creature_movement WHERE id=57177;
DELETE FROM game_event_creature WHERE guid=57177;
DELETE FROM game_event_creature_data WHERE guid=57177;
DELETE FROM creature_battleground WHERE guid=57177;
DELETE FROM creature_linking WHERE guid=57177 OR master_guid=57177;
DELETE FROM creature WHERE guid=57186;
DELETE FROM creature_addon WHERE guid=57186;
DELETE FROM creature_movement WHERE id=57186;
DELETE FROM game_event_creature WHERE guid=57186;
DELETE FROM game_event_creature_data WHERE guid=57186;
DELETE FROM creature_battleground WHERE guid=57186;
DELETE FROM creature_linking WHERE guid=57186 OR master_guid=57186;
DELETE FROM creature WHERE guid=57182;
DELETE FROM creature_addon WHERE guid=57182;
DELETE FROM creature_movement WHERE id=57182;
DELETE FROM game_event_creature WHERE guid=57182;
DELETE FROM game_event_creature_data WHERE guid=57182;
DELETE FROM creature_battleground WHERE guid=57182;
DELETE FROM creature_linking WHERE guid=57182 OR master_guid=57182;
DELETE FROM creature WHERE guid=57187;
DELETE FROM creature_addon WHERE guid=57187;
DELETE FROM creature_movement WHERE id=57187;
DELETE FROM game_event_creature WHERE guid=57187;
DELETE FROM game_event_creature_data WHERE guid=57187;
DELETE FROM creature_battleground WHERE guid=57187;
DELETE FROM creature_linking WHERE guid=57187 OR master_guid=57187;


-- Add Missing Ghastly Haunt
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('57183','16481','532','1','0','0','-11062.1','-2014.99','96.9886','1.73657','86400','6','0','73800','0','0','1');


-- Add Missing Trapped Soul
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('57181','16482','532','1','0','0','-11050.2','-1950.5','96.4721','2.42536','86400','6','0','41321','33090','0','1');


-- Add Missing Ghastly Haunt
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('57177','16481','532','1','0','0','-11063.5','-2035.54','115.17','4.74447','86400','6','0','73800','0','0','1');


-- Add Missing Ghastly Haunt
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('57186','16481','532','1','0','0','-11047.2','-1976.11','143.079','0.37844','86400','6','0','73800','0','0','1');


-- ======================
-- The Menagerie Overhaul
-- ======================
-- 2 Arcane Watchmen
DELETE FROM creature_linking WHERE master_guid IN (85238);
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('85034','85238','3');


-- Arcane Anomaly Group 1
UPDATE creature SET position_x = '-11044.634766', position_y = '-1815.092041', position_z = '165.765076', orientation = '0.735018', SpawnDist = '5', MovementType = '1' WHERE guid = '57208';

DELETE FROM creature_linking WHERE master_guid IN (57208);
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('85243','57208','515');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('85242','57208','515');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('85241','57208','515');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('85240','57208','515');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('85239','57208','515');


-- Arcane Anomaly Group 2
UPDATE creature SET position_x = '-11069.856445', position_y = '-1804.266479', position_z = '165.765076', orientation = '4.875639' WHERE guid = '85258';
UPDATE creature SET position_x = '-11067.203125', position_y = '-1802.927124', position_z = '165.765076', orientation = '5.900584' WHERE guid = '85257';
UPDATE creature SET position_x = '-11065.375977', position_y = '-1803.231934', position_z = '165.765076', orientation = '6.131133' WHERE guid = '85256';
UPDATE creature SET position_x = '-11063.411133', position_y = '-1803.533081', position_z = '165.765076', orientation = '5.713301' WHERE guid = '85254';
UPDATE creature SET position_x = '-11072.239258', position_y = '-1810.679321', position_z = '165.765076', orientation = '0.133830' WHERE guid = '85255';

DELETE FROM creature_linking WHERE master_guid IN (57209);
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('85254','57209','515');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('85255','57209','515');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('85256','57209','515');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('85257','57209','515');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('85258','57209','515');


-- Arcane Anomaly Group 3
DELETE FROM creature_linking WHERE master_guid IN (57211);
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('85244','57211','515');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('85245','57211','515');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('85246','57211','515');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('85247','57211','515');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('85248','57211','515');


-- Arcane Anomaly Group 4
UPDATE creature SET position_x = '-11098.793945', position_y = '-1842.137451', position_z = '165.765076', orientation = '3.760012' WHERE guid = '85253';
UPDATE creature SET position_x = '-11101.278320', position_y = '-1840.513184', position_z = '165.765076', orientation = '4.375764' WHERE guid = '85252';
UPDATE creature SET position_x = '-11104.376953', position_y = '-1839.775513', position_z = '165.765076', orientation = '4.742546' WHERE guid = '85251';
UPDATE creature SET position_x = '-11102.689453', position_y = '-1843.879517', position_z = '165.765823', orientation = '3.557379' WHERE guid = '85250';
UPDATE creature SET position_x = '-11098.070313', position_y = '-1844.602051', position_z = '165.765823', orientation = '3.072003' WHERE guid = '85249';

DELETE FROM creature_linking WHERE master_guid IN (57210);
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('85249','57210','515');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('85250','57210','515');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('85251','57210','515');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('85252','57210','515');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('85253','57210','515');


-- Arcane Anomaly Group 5
DELETE FROM creature_linking WHERE master_guid IN (57207);
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('85259','57207','515');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('85260','57207','515');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('85261','57207','515');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('85262','57207','515');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('85263','57207','515');


-- Arcane Anomaly Group 6
DELETE FROM creature_linking WHERE master_guid IN (57206);
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('85264','57206','515');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('85265','57206','515');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('85266','57206','515');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('85267','57206','515');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('85268','57206','515');


-- ===========================
-- Guardian's Library Overhaul
-- ===========================
-- Deleted NPC
DELETE FROM creature WHERE guid=85293;
DELETE FROM creature_addon WHERE guid=85293;
DELETE FROM creature_movement WHERE id=85293;
DELETE FROM game_event_creature WHERE guid=85293;
DELETE FROM game_event_creature_data WHERE guid=85293;
DELETE FROM creature_battleground WHERE guid=85293;
DELETE FROM creature_linking WHERE guid=85293 OR master_guid=85293;
DELETE FROM creature WHERE guid=85062;
DELETE FROM creature_addon WHERE guid=85062;
DELETE FROM creature_movement WHERE id=85062;
DELETE FROM game_event_creature WHERE guid=85062;
DELETE FROM game_event_creature_data WHERE guid=85062;
DELETE FROM creature_battleground WHERE guid=85062;
DELETE FROM creature_linking WHERE guid=85062 OR master_guid=85062;
DELETE FROM creature WHERE guid=85061;
DELETE FROM creature_addon WHERE guid=85061;
DELETE FROM creature_movement WHERE id=85061;
DELETE FROM game_event_creature WHERE guid=85061;
DELETE FROM game_event_creature_data WHERE guid=85061;
DELETE FROM creature_battleground WHERE guid=85061;
DELETE FROM creature_linking WHERE guid=85061 OR master_guid=85061;
DELETE FROM creature WHERE guid=85280;
DELETE FROM creature_addon WHERE guid=85280;
DELETE FROM creature_movement WHERE id=85280;
DELETE FROM game_event_creature WHERE guid=85280;
DELETE FROM game_event_creature_data WHERE guid=85280;
DELETE FROM creature_battleground WHERE guid=85280;
DELETE FROM creature_linking WHERE guid=85280 OR master_guid=85280;
DELETE FROM creature WHERE guid=85297;
DELETE FROM creature_addon WHERE guid=85297;
DELETE FROM creature_movement WHERE id=85297;
DELETE FROM game_event_creature WHERE guid=85297;
DELETE FROM game_event_creature_data WHERE guid=85297;
DELETE FROM creature_battleground WHERE guid=85297;
DELETE FROM creature_linking WHERE guid=85297 OR master_guid=85297;
DELETE FROM creature WHERE guid=85289;
DELETE FROM creature_addon WHERE guid=85289;
DELETE FROM creature_movement WHERE id=85289;
DELETE FROM game_event_creature WHERE guid=85289;
DELETE FROM game_event_creature_data WHERE guid=85289;
DELETE FROM creature_battleground WHERE guid=85289;
DELETE FROM creature_linking WHERE guid=85289 OR master_guid=85289;
DELETE FROM creature WHERE guid=85287;
DELETE FROM creature_addon WHERE guid=85287;
DELETE FROM creature_movement WHERE id=85287;
DELETE FROM game_event_creature WHERE guid=85287;
DELETE FROM game_event_creature_data WHERE guid=85287;
DELETE FROM creature_battleground WHERE guid=85287;
DELETE FROM creature_linking WHERE guid=85287 OR master_guid=85287;
DELETE FROM creature WHERE guid=85305;
DELETE FROM creature_addon WHERE guid=85305;
DELETE FROM creature_movement WHERE id=85305;
DELETE FROM game_event_creature WHERE guid=85305;
DELETE FROM game_event_creature_data WHERE guid=85305;
DELETE FROM creature_battleground WHERE guid=85305;
DELETE FROM creature_linking WHERE guid=85305 OR master_guid=85305;



-- 2 Arcane Watchmen
DELETE FROM creature_linking WHERE master_guid IN (85269);
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('85270','85269','3');


-- Pathing Arcane Protector Down The Ramp
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('57182','16504','532','1','0','0','-11218','-1892.16','151.661','3.6011','86400','0','0','118080','0','0','2');

DELETE FROM creature_movement WHERE id IN (57182);
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('57182','1','-11231.8','-1900.95','145.87','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('57182','2','-11248.4','-1896.78','140.123','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('57182','3','-11262.1','-1880.44','135.936','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('57182','4','-11259.1','-1874.63','135.926','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('57182','5','-11246.6','-1865.02','136.009','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('57182','6','-11239','-1874.89','136.015','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('57182','7','-11246.3','-1865.11','136.01','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('57182','8','-11258.8','-1874.89','135.928','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('57182','9','-11261.9','-1880.76','135.937','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('57182','10','-11248','-1897.07','140.302','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('57182','11','-11231.5','-1901.35','145.99','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('57182','12','-11212.9','-1889.02','152.054','0','0','0','0','0','0','0','0','0','0','0','0');


-- Mana Feeder Group
UPDATE creature SET position_x = '-11232.000977', position_y = '-1835.479248', position_z = '136.022995', orientation = '1.924269' WHERE guid = '85296';
UPDATE creature SET position_x = '-11234.467773', position_y = '-1837.039551', position_z = '136.022995', orientation = '2.448915' WHERE guid = '85294';

DELETE FROM creature_linking WHERE master_guid IN (85294);
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('85295','85294','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('85296','85294','3');


-- Chaotic Sentiance Group
DELETE FROM creature_linking WHERE master_guid IN (85310);
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('85307','85310','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('85308','85310','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('85309','85310','3');


-- Mana Feeder Group
DELETE FROM creature_linking WHERE master_guid IN (85282);
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('85283','85282','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('85284','85282','3');


-- Chaotic Sentiance Group
UPDATE creature SET position_x = '-11160.652344', position_y = '-1798.340210', position_z = '136.010193', orientation = '4.046421' WHERE guid = '84975';
UPDATE creature SET position_x = '-11152.633789', position_y = '-1790.107056', position_z = '136.000809', orientation = '1.034414' WHERE guid = '85279';
UPDATE creature SET position_x = '-11154.464844', position_y = '-1805.915039', position_z = '136.022095', orientation = '2.810988' WHERE guid = '85276';
UPDATE creature SET position_x = '-11140.568359', position_y = '-1796.566528', position_z = '136.022369', orientation = '0.979440' WHERE guid = '85278';

DELETE FROM creature_linking WHERE master_guid IN (84975);
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('85276','84975','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('85278','84975','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('85279','84975','3');


-- Wravien (Fix Position)
UPDATE creature SET position_x = '-11182.093750', position_y = '-1800.561890', position_z = '136.022675', orientation = '0.170479' WHERE guid = '46851';


-- Chaotic Sentiance Group
UPDATE creature SET position_x = '-11197.921875', position_y = '-1783.473877', position_z = '136.008759', orientation = '3.772316' WHERE guid = '85301';
UPDATE creature SET position_x = '-11194.601563', position_y = '-1790.034424', position_z = '136.012115', orientation = '4.018867' WHERE guid = '85302';
UPDATE creature SET position_x = '-11199.205078', position_y = '-1779.692505', position_z = '136.012070', orientation = '3.861066' WHERE guid = '85304';
UPDATE creature SET position_x = '-11201.690430', position_y = '-1790.991089', position_z = '136.022766', orientation = '3.738544' WHERE guid = '85303';

DELETE FROM creature_linking WHERE master_guid IN (85301);
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('85302','85301','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('85303','85301','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('85304','85301','3');


-- Mana Feeder Group
UPDATE creature SET position_x = '-11249.611328', position_y = '-1793.283691', position_z = '135.711914', orientation = '5.330545' WHERE guid = '85299';
UPDATE creature SET position_x = '-11249.989258', position_y = '-1800.986450', position_z = '135.747101', orientation = '4.151662' WHERE guid = '85298';
UPDATE creature SET position_x = '-11255.490234', position_y = '-1804.530884', position_z = '135.684113', orientation = '3.911330' WHERE guid = '85300';

DELETE FROM creature_linking WHERE master_guid IN (85298);
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('85299','85298','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('85300','85298','3');


-- Mana Feeder Group
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('85293','16491','532','1','0','0','-11217.6','-1769.87','135.995','4.30089','86400','5','0','13972','0','0','1');
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('85062','16491','532','1','0','0','-11222.1','-1765.86','135.98','3.58225','86400','5','0','13972','0','0','1');
UPDATE creature SET position_x = '-11216.056641', position_y = '-1773.543457', position_z = '135.988281', orientation = '3.776171' WHERE guid = '85293';
UPDATE creature SET position_x = '-11214.235352', position_y = '-1760.617432', position_z = '136.000443', orientation = '3.893981' WHERE guid = '85292';

DELETE FROM creature_linking WHERE master_guid IN (85292);
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('85293','85292','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('85062','85292','3');


-- Mana Feeder Group
UPDATE creature SET position_x = '-11235.547852', position_y = '-1751.331543', position_z = '135.979462', orientation = '2.657839' WHERE guid = '85291';
UPDATE creature SET position_x = '-11243.198242', position_y = '-1753.554932', position_z = '135.956070', orientation = '4.204289' WHERE guid = '85306';
UPDATE creature SET position_x = '-11247.422852', position_y = '-1746.507935', position_z = '135.980225', orientation = '4.589134' WHERE guid = '85290';

DELETE FROM creature_linking WHERE master_guid IN (85291);
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('85306','85291','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('85290','85291','3');


-- Group of 4 NPC Near Back
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('57187','16489','532','1','0','0','-11210.7','-1729.92','136.022','4.50816','86400','5','0','55888','0','0','1');
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('85061','16491','532','1','0','0','-11208.5','-1721.65','136.022','4.28197','86400','5','0','13972','0','0','1');
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('85280','16491','532','1','0','0','-11201.8','-1724.36','136.022','0.186117','86400','5','0','13972','0','0','1');
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('85297','16491','532','1','0','0','-11203.1','-1734.98','136.022','3.52327','86400','5','0','13972','0','0','1');

DELETE FROM creature_linking WHERE master_guid IN (57187);
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('85061','57187','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('85280','57187','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('85297','57187','3');


-- Group of 3 NPC at Very Back of Room
UPDATE creature SET position_x = '-11287.690430', position_y = '-1727.157715', position_z = '136.032211', orientation = '5.235435' WHERE guid = '85288';
UPDATE creature SET position_x = '-11280.664063', position_y = '-1727.228516', position_z = '136.028946', orientation = '5.499329' WHERE guid = '85281';
UPDATE creature SET position_x = '-11278.031250', position_y = '-1715.141357', position_z = '136.027405', orientation = '5.364240' WHERE guid = '85285';
UPDATE creature SET position_x = '-11271.230469', position_y = '-1714.818726', position_z = '136.022263', orientation = '5.717669' WHERE guid = '85286';

DELETE FROM creature_linking WHERE master_guid IN (85288);
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('85281','85288','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('85285','85288','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('85286','85288','3');


-- Pathing Arcane Protector
UPDATE creature SET id = '16504', position_x = '-11244.341797', position_y = '-1799.895630', position_z = '135.796600', orientation = '4.183000' WHERE guid = '85271';

DELETE FROM creature_movement WHERE id IN (85271);
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('85271','1','-11251.4','-1817.7','135.816','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('85271','2','-11268.2','-1836.84','135.762','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('85271','3','-11261.2','-1847.36','135.978','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('85271','4','-11264.2','-1862.18','135.827','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('85271','5','-11273.4','-1870.83','135.972','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('85271','6','-11263.8','-1862.24','135.83','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('85271','7','-11260.8','-1846.81','135.986','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('85271','8','-11268','-1836.53','135.763','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('85271','9','-11250.9','-1816.64','135.816','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('85271','10','-11244.6','-1801.06','135.803','0','0','0','0','0','0','0','0','0','0','0','0');


-- Pathing Arcane Protector
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('85289','16504','532','1','0','0','-11252.1','-1829.53','135.919','0.667895','86400','0','0','88560','0','0','2');

DELETE FROM creature_movement WHERE id IN (85289);
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('85289','1','-11238.3','-1817.63','136.004','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('85289','2','-11217.6','-1801.54','136.022','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('85289','3','-11202.9','-1789.49','136.022','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('85289','4','-11175.4','-1821.66','136.022','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('85289','5','-11202.9','-1789.49','136.022','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('85289','6','-11216.9','-1801.61','136.022','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('85289','7','-11238.4','-1818.21','136.009','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('85289','8','-11252.9','-1830.34','135.917','0','0','0','0','0','0','0','0','0','0','0','0');


-- Psthing Arcane Protector
UPDATE creature SET id = '16504', position_x = '-11171.025391', position_y = '-1847.829956', position_z = '136.023636', orientation = '2.268541' WHERE guid = '85277';

DELETE FROM creature_movement WHERE id IN (85277);
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('85277','1','-11194.1','-1821.54','136.024','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('85277','2','-11215.5','-1822','136.024','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('85277','3','-11239.6','-1839.72','136.024','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('85277','4','-11245.6','-1857.72','136.022','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('85277','5','-11241.4','-1835.27','136.023','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('85277','6','-11224.3','-1823.27','136.023','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('85277','7','-11200.6','-1820.74','136.023','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('85277','8','-11190.8','-1824.72','136.023','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('85277','9','-11170.9','-1848.01','136.023','0','0','0','0','0','0','0','0','0','0','0','0');


-- Pathing Arcane Protector
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('85287','16504','532','1','0','0','-11201.4','-1739.98','136.022','3.65713','86400','0','0','88560','0','0','2');

DELETE FROM creature_movement WHERE id IN (85287);
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('85287','1','-11219.1','-1752.89','136.007','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('85287','2','-11238.2','-1764.89','135.817','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('85287','3','-11268.9','-1726.28','136.019','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('85287','4','-11236.7','-1765.4','135.829','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('85287','5','-11198.4','-1738.05','136.022','0','0','0','0','0','0','0','0','0','0','0','0');


-- Pathing Arcane Protector
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('85305','16504','532','1','0','0','-11283.4','-1757.41','135.79','0.715817','86400','0','0','88560','0','0','2');

DELETE FROM creature_movement WHERE id IN (85305);
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('85305','1','-11266.3','-1745.74','135.928','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('85305','2','-11247.9','-1770.72','135.736','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('85305','3','-11249','-1792.63','135.723','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('85305','4','-11247.5','-1770.95','135.74','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('85305','5','-11267.4','-1745.98','135.925','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('85305','6','-11283.6','-1757.37','135.791','0','0','0','0','0','0','0','0','0','0','0','0');


-- Pathing Arcane Protector

DELETE FROM creature_movement WHERE id IN (85311);

insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('85311','1','-11279.7','-1806.4','148.078','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('85311','2','-11290.3','-1822.48','153.007','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('85311','3','-11322.5','-1849.88','164.839','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('85311','4','-11358.7','-1881.45','171.358','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('85311','5','-11322','-1850.02','164.726','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('85311','6','-11290.2','-1823.18','153.166','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('85311','7','-11280','-1807.5','148.394','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('85311','8','-11275.1','-1789.34','142.365','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('85311','9','-11274.3','-1773.43','136.5','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('85311','10','-11282.3','-1750.99','135.87','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('85311','11','-11299.9','-1733.62','136.038','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('85311','12','-11281.7','-1751.06','135.868','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('85311','13','-11274.2','-1769.19','135.596','0','0','0','0','0','0','0','0','0','0','0','0');


-- Magical Horror Group 1
UPDATE creature SET position_x = '-11333.709961', position_y = '-1756.708740', position_z = '179.734741', orientation = '4.512882', SpawnDist=5, MovementType=1 WHERE guid = '85275';
UPDATE creature SET position_x = '-11330.786133', position_y = '-1756.854858', position_z = '179.734741', orientation = '4.697451' WHERE guid = '85086';
UPDATE creature SET position_x = '-11337.336914', position_y = '-1757.359497', position_z = '179.734741', orientation = '4.772850' WHERE guid = '85056';

DELETE FROM creature_linking WHERE master_guid IN (85275);
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('85086','85275','515');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('85056','85275','515');


-- Magical Horror Group 2
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('57147','16530','532','1','0','0','-11327.7','-1779.36','179.735','3.70471','86400','3','0','41916','0','0','1');
UPDATE creature SET position_x = '-11329.605469', position_y = '-1785.696289', position_z = '179.734741', orientation = '3.509146', SpawnDist=3, MovementType=1 WHERE guid = '85274';
UPDATE creature SET position_x = '-11334.383789', position_y = '-1777.292358', position_z = '179.734741', orientation = '3.359921', SpawnDist=3, MovementType=1 WHERE guid = '85272';

DELETE FROM creature_linking WHERE master_guid IN (85273);
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('57147','85273','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('85274','85273','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('85272','85273','3');



UPDATE creature SET position_x = '-11332.838867', position_y = '-1807.928833', position_z = '179.734741', orientation = '2.473994', SpawnDist=5, MovementType=1 WHERE guid = '85060';
UPDATE creature SET position_x = '-11334.092773', position_y = '-1811.082031', position_z = '179.734741', orientation = '2.730819' WHERE guid = '85079';
UPDATE creature SET position_x = '-11333.132813', position_y = '-1805.044556', position_z = '179.734741', orientation = '2.757523' WHERE guid = '85059';

DELETE FROM creature_linking WHERE master_guid IN (85060);
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('85079','85060','515');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('85059','85060','515');


-- Magical Horror Group 4
UPDATE creature SET position_x = '-11310.212891', position_y = '-1766.926514', position_z = '179.735001', orientation = '3.665446' WHERE guid = '85064';
UPDATE creature SET position_x = '-11309.282227', position_y = '-1769.562988', position_z = '179.735001', orientation = '3.579053' WHERE guid = '85087';
UPDATE creature SET position_x = '-11314.263672', position_y = '-1764.082031', position_z = '179.735001', orientation = '4.095060' WHERE guid = '85086';

DELETE FROM creature_linking WHERE master_guid IN (85064);
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('85087','85064','515');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('85086','85064','515');


-- Deleted NPC
DELETE FROM creature WHERE guid=85073;
DELETE FROM creature_addon WHERE guid=85073;
DELETE FROM creature_movement WHERE id=85073;
DELETE FROM game_event_creature WHERE guid=85073;
DELETE FROM game_event_creature_data WHERE guid=85073;
DELETE FROM creature_battleground WHERE guid=85073;
DELETE FROM creature_linking WHERE guid=85073 OR master_guid=85073;
DELETE FROM creature WHERE guid=85071;
DELETE FROM creature_addon WHERE guid=85071;
DELETE FROM creature_movement WHERE id=85071;
DELETE FROM game_event_creature WHERE guid=85071;
DELETE FROM game_event_creature_data WHERE guid=85071;
DELETE FROM creature_battleground WHERE guid=85071;
DELETE FROM creature_linking WHERE guid=85071 OR master_guid=85071;
DELETE FROM creature WHERE guid=85072;
DELETE FROM creature_addon WHERE guid=85072;
DELETE FROM creature_movement WHERE id=85072;
DELETE FROM game_event_creature WHERE guid=85072;
DELETE FROM game_event_creature_data WHERE guid=85072;
DELETE FROM creature_battleground WHERE guid=85072;
DELETE FROM creature_linking WHERE guid=85072 OR master_guid=85072;
DELETE FROM creature WHERE guid=85070;
DELETE FROM creature_addon WHERE guid=85070;
DELETE FROM creature_movement WHERE id=85070;
DELETE FROM game_event_creature WHERE guid=85070;
DELETE FROM game_event_creature_data WHERE guid=85070;
DELETE FROM creature_battleground WHERE guid=85070;
DELETE FROM creature_linking WHERE guid=85070 OR master_guid=85070;
DELETE FROM creature WHERE guid=85021;
DELETE FROM creature_addon WHERE guid=85021;
DELETE FROM creature_movement WHERE id=85021;
DELETE FROM game_event_creature WHERE guid=85021;
DELETE FROM game_event_creature_data WHERE guid=85021;
DELETE FROM creature_battleground WHERE guid=85021;
DELETE FROM creature_linking WHERE guid=85021 OR master_guid=85021;
DELETE FROM creature WHERE guid=85314;
DELETE FROM creature_addon WHERE guid=85314;
DELETE FROM creature_movement WHERE id=85314;
DELETE FROM game_event_creature WHERE guid=85314;
DELETE FROM game_event_creature_data WHERE guid=85314;
DELETE FROM creature_battleground WHERE guid=85314;
DELETE FROM creature_linking WHERE guid=85314 OR master_guid=85314;
DELETE FROM creature WHERE guid=85315;
DELETE FROM creature_addon WHERE guid=85315;
DELETE FROM creature_movement WHERE id=85315;
DELETE FROM game_event_creature WHERE guid=85315;
DELETE FROM game_event_creature_data WHERE guid=85315;
DELETE FROM creature_battleground WHERE guid=85315;
DELETE FROM creature_linking WHERE guid=85315 OR master_guid=85315;
DELETE FROM creature WHERE guid=85317;
DELETE FROM creature_addon WHERE guid=85317;
DELETE FROM creature_movement WHERE id=85317;
DELETE FROM game_event_creature WHERE guid=85317;
DELETE FROM game_event_creature_data WHERE guid=85317;
DELETE FROM creature_battleground WHERE guid=85317;
DELETE FROM creature_linking WHERE guid=85317 OR master_guid=85317;
DELETE FROM creature WHERE guid=85316;
DELETE FROM creature_addon WHERE guid=85316;
DELETE FROM creature_movement WHERE id=85316;
DELETE FROM game_event_creature WHERE guid=85316;
DELETE FROM game_event_creature_data WHERE guid=85316;
DELETE FROM creature_battleground WHERE guid=85316;
DELETE FROM creature_linking WHERE guid=85316 OR master_guid=85316;
DELETE FROM creature WHERE guid=85319;
DELETE FROM creature_addon WHERE guid=85319;
DELETE FROM creature_movement WHERE id=85319;
DELETE FROM game_event_creature WHERE guid=85319;
DELETE FROM game_event_creature_data WHERE guid=85319;
DELETE FROM creature_battleground WHERE guid=85319;
DELETE FROM creature_linking WHERE guid=85319 OR master_guid=85319;
DELETE FROM creature WHERE guid=85318;
DELETE FROM creature_addon WHERE guid=85318;
DELETE FROM creature_movement WHERE id=85318;
DELETE FROM game_event_creature WHERE guid=85318;
DELETE FROM game_event_creature_data WHERE guid=85318;
DELETE FROM creature_battleground WHERE guid=85318;
DELETE FROM creature_linking WHERE guid=85318 OR master_guid=85318;
DELETE FROM creature WHERE guid=85321;
DELETE FROM creature_addon WHERE guid=85321;
DELETE FROM creature_movement WHERE id=85321;
DELETE FROM game_event_creature WHERE guid=85321;
DELETE FROM game_event_creature_data WHERE guid=85321;
DELETE FROM creature_battleground WHERE guid=85321;
DELETE FROM creature_linking WHERE guid=85321 OR master_guid=85321;
DELETE FROM creature WHERE guid=85322;
DELETE FROM creature_addon WHERE guid=85322;
DELETE FROM creature_movement WHERE id=85322;
DELETE FROM game_event_creature WHERE guid=85322;
DELETE FROM game_event_creature_data WHERE guid=85322;
DELETE FROM creature_battleground WHERE guid=85322;
DELETE FROM creature_linking WHERE guid=85322 OR master_guid=85322;
DELETE FROM creature WHERE guid=85323;
DELETE FROM creature_addon WHERE guid=85323;
DELETE FROM creature_movement WHERE id=85323;
DELETE FROM game_event_creature WHERE guid=85323;
DELETE FROM game_event_creature_data WHERE guid=85323;
DELETE FROM creature_battleground WHERE guid=85323;
DELETE FROM creature_linking WHERE guid=85323 OR master_guid=85323;
DELETE FROM creature WHERE guid=85327;
DELETE FROM creature_addon WHERE guid=85327;
DELETE FROM creature_movement WHERE id=85327;
DELETE FROM game_event_creature WHERE guid=85327;
DELETE FROM game_event_creature_data WHERE guid=85327;
DELETE FROM creature_battleground WHERE guid=85327;
DELETE FROM creature_linking WHERE guid=85327 OR master_guid=85327;
DELETE FROM creature WHERE guid=85324;
DELETE FROM creature_addon WHERE guid=85324;
DELETE FROM creature_movement WHERE id=85324;
DELETE FROM game_event_creature WHERE guid=85324;
DELETE FROM game_event_creature_data WHERE guid=85324;
DELETE FROM creature_battleground WHERE guid=85324;
DELETE FROM creature_linking WHERE guid=85324 OR master_guid=85324;
DELETE FROM creature WHERE guid=85325;
DELETE FROM creature_addon WHERE guid=85325;
DELETE FROM creature_movement WHERE id=85325;
DELETE FROM game_event_creature WHERE guid=85325;
DELETE FROM game_event_creature_data WHERE guid=85325;
DELETE FROM creature_battleground WHERE guid=85325;
DELETE FROM creature_linking WHERE guid=85325 OR master_guid=85325;
DELETE FROM creature WHERE guid=85331;
DELETE FROM creature_addon WHERE guid=85331;
DELETE FROM creature_movement WHERE id=85331;
DELETE FROM game_event_creature WHERE guid=85331;
DELETE FROM game_event_creature_data WHERE guid=85331;
DELETE FROM creature_battleground WHERE guid=85331;
DELETE FROM creature_linking WHERE guid=85331 OR master_guid=85331;
DELETE FROM creature WHERE guid=85332;
DELETE FROM creature_addon WHERE guid=85332;
DELETE FROM creature_movement WHERE id=85332;
DELETE FROM game_event_creature WHERE guid=85332;
DELETE FROM game_event_creature_data WHERE guid=85332;
DELETE FROM creature_battleground WHERE guid=85332;
DELETE FROM creature_linking WHERE guid=85332 OR master_guid=85332;
DELETE FROM creature WHERE guid=85333;
DELETE FROM creature_addon WHERE guid=85333;
DELETE FROM creature_movement WHERE id=85333;
DELETE FROM game_event_creature WHERE guid=85333;
DELETE FROM game_event_creature_data WHERE guid=85333;
DELETE FROM creature_battleground WHERE guid=85333;
DELETE FROM creature_linking WHERE guid=85333 OR master_guid=85333;


DELETE FROM creature WHERE guid=85339;
DELETE FROM creature_addon WHERE guid=85339;
DELETE FROM creature_movement WHERE id=85339;
DELETE FROM game_event_creature WHERE guid=85339;
DELETE FROM game_event_creature_data WHERE guid=85339;
DELETE FROM creature_battleground WHERE guid=85339;
DELETE FROM creature_linking WHERE guid=85339 OR master_guid=85339;
DELETE FROM creature WHERE guid=85342;
DELETE FROM creature_addon WHERE guid=85342;
DELETE FROM creature_movement WHERE id=85342;
DELETE FROM game_event_creature WHERE guid=85342;
DELETE FROM game_event_creature_data WHERE guid=85342;
DELETE FROM creature_battleground WHERE guid=85342;
DELETE FROM creature_linking WHERE guid=85342 OR master_guid=85342;
DELETE FROM creature WHERE guid=85340;
DELETE FROM creature_addon WHERE guid=85340;
DELETE FROM creature_movement WHERE id=85340;
DELETE FROM game_event_creature WHERE guid=85340;
DELETE FROM game_event_creature_data WHERE guid=85340;
DELETE FROM creature_battleground WHERE guid=85340;
DELETE FROM creature_linking WHERE guid=85340 OR master_guid=85340;
DELETE FROM creature WHERE guid=84994;
DELETE FROM creature_addon WHERE guid=84994;
DELETE FROM creature_movement WHERE id=84994;
DELETE FROM game_event_creature WHERE guid=84994;
DELETE FROM game_event_creature_data WHERE guid=84994;
DELETE FROM creature_battleground WHERE guid=84994;
DELETE FROM creature_linking WHERE guid=84994 OR master_guid=84994;
DELETE FROM creature WHERE guid=85364;
DELETE FROM creature_addon WHERE guid=85364;
DELETE FROM creature_movement WHERE id=85364;
DELETE FROM game_event_creature WHERE guid=85364;
DELETE FROM game_event_creature_data WHERE guid=85364;
DELETE FROM creature_battleground WHERE guid=85364;
DELETE FROM creature_linking WHERE guid=85364 OR master_guid=85364;
DELETE FROM creature WHERE guid=85359;
DELETE FROM creature_addon WHERE guid=85359;
DELETE FROM creature_movement WHERE id=85359;
DELETE FROM game_event_creature WHERE guid=85359;
DELETE FROM game_event_creature_data WHERE guid=85359;
DELETE FROM creature_battleground WHERE guid=85359;
DELETE FROM creature_linking WHERE guid=85359 OR master_guid=85359;
DELETE FROM creature WHERE guid=85358;
DELETE FROM creature_addon WHERE guid=85358;
DELETE FROM creature_movement WHERE id=85358;
DELETE FROM game_event_creature WHERE guid=85358;
DELETE FROM game_event_creature_data WHERE guid=85358;
DELETE FROM creature_battleground WHERE guid=85358;
DELETE FROM creature_linking WHERE guid=85358 OR master_guid=85358;
DELETE FROM creature WHERE guid=85357;
DELETE FROM creature_addon WHERE guid=85357;
DELETE FROM creature_movement WHERE id=85357;
DELETE FROM game_event_creature WHERE guid=85357;
DELETE FROM game_event_creature_data WHERE guid=85357;
DELETE FROM creature_battleground WHERE guid=85357;
DELETE FROM creature_linking WHERE guid=85357 OR master_guid=85357;
DELETE FROM creature WHERE guid=85356;
DELETE FROM creature_addon WHERE guid=85356;
DELETE FROM creature_movement WHERE id=85356;
DELETE FROM game_event_creature WHERE guid=85356;
DELETE FROM game_event_creature_data WHERE guid=85356;
DELETE FROM creature_battleground WHERE guid=85356;
DELETE FROM creature_linking WHERE guid=85356 OR master_guid=85356;
DELETE FROM creature WHERE guid=85046;
DELETE FROM creature_addon WHERE guid=85046;
DELETE FROM creature_movement WHERE id=85046;
DELETE FROM game_event_creature WHERE guid=85046;
DELETE FROM game_event_creature_data WHERE guid=85046;
DELETE FROM creature_battleground WHERE guid=85046;
DELETE FROM creature_linking WHERE guid=85046 OR master_guid=85046;
DELETE FROM creature WHERE guid=85354;
DELETE FROM creature_addon WHERE guid=85354;
DELETE FROM creature_movement WHERE id=85354;
DELETE FROM game_event_creature WHERE guid=85354;
DELETE FROM game_event_creature_data WHERE guid=85354;
DELETE FROM creature_battleground WHERE guid=85354;
DELETE FROM creature_linking WHERE guid=85354 OR master_guid=85354;
DELETE FROM creature WHERE guid=85355;
DELETE FROM creature_addon WHERE guid=85355;
DELETE FROM creature_movement WHERE id=85355;
DELETE FROM game_event_creature WHERE guid=85355;
DELETE FROM game_event_creature_data WHERE guid=85355;
DELETE FROM creature_battleground WHERE guid=85355;
DELETE FROM creature_linking WHERE guid=85355 OR master_guid=85355;
DELETE FROM creature WHERE guid=85353;
DELETE FROM creature_addon WHERE guid=85353;
DELETE FROM creature_movement WHERE id=85353;
DELETE FROM game_event_creature WHERE guid=85353;
DELETE FROM game_event_creature_data WHERE guid=85353;
DELETE FROM creature_battleground WHERE guid=85353;
DELETE FROM creature_linking WHERE guid=85353 OR master_guid=85353;


-- Spell Shade Group
UPDATE creature SET position_x = '-11236.476563', position_y = '-1692.716064', position_z = '210.879852', orientation = '4.074645', SpawnDist=8, MovementType=1 WHERE guid = '85057';
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('85073','16525','532','1','0','0','-11222.7','-1697.5','210.88','0.969964','86400','8','0','43086','0','0','1');
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('85071','16525','532','1','0','0','-11238.1','-1704.61','210.88','3.59477','86400','8','0','43086','0','0','1');
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('85072','16525','532','1','0','0','-11227.5','-1716.57','210.903','2.01062','86400','8','0','43086','0','0','1');

DELETE FROM creature_linking WHERE master_guid IN (85057);
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('85073','85057','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('85071','85057','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('85072','85057','3');


-- Shadow Pillagers and Homunculus
UPDATE creature SET position_x = '-11166.626953', position_y = '-1756.805542', position_z = '201.269196', orientation = '2.189691' WHERE guid = '85069';
UPDATE creature SET position_x = '-11158.256836', position_y = '-1767.608765', position_z = '201.310623', orientation = '5.351702' WHERE guid = '85313';
UPDATE creature SET position_x = '-11170.844727', position_y = '-1789.161743', position_z = '201.165268', orientation = '4.588294' WHERE guid = '85063';
UPDATE creature SET position_x = '-11169.932617', position_y = '-1780.965088', position_z = '201.229065', orientation = '2.192831', SpawnDist=7, MovementType=1 WHERE guid = '85041';
UPDATE creature SET position_x = '-11168.457031', position_y = '-1771.923950', position_z = '201.227386', orientation = '2.265088', SpawnDist=7, MovementType=1 WHERE guid = '85058';
UPDATE creature SET position_x = '-11165.384766', position_y = '-1765.125732', position_z = '201.292419', orientation = '2.534479', SpawnDist=7, MovementType=1 WHERE guid = '85066';

DELETE FROM creature_linking WHERE master_guid IN (85069);
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('85313','85069','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('85063','85069','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('85063','85069','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('85058','85069','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('85066','85069','3');


-- Group of Spellshades
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('85070','16525','532','1','0','0','-11240.7','-1831.95','223.943','5.07368','86400','8','0','43086','0','0','1');
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('85021','16525','532','1','0','0','-11229.1','-1842.68','223.943','5.51664','86400','8','0','43086','0','0','1');
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('85314','16525','532','1','0','0','-11239.4','-1818.61','223.943','5.47973','86400','8','0','43086','0','0','1');
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('85315','16525','532','1','0','0','-11222.1','-1830.24','223.943','5.84808','86400','8','0','43086','0','0','1');

DELETE FROM creature_linking WHERE master_guid IN (85070);
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('85021','85070','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('85314','85070','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('85315','85070','3');


-- Shade of Aran
UPDATE creature SET SpawnDist=9, MovementType=1 WHERE guid IN (57440);


-- Blizzard Movement (Shade of Aran)
UPDATE creature SET position_x = '-11173.654297', position_y = '-1901.118408', position_z = '232.009003', orientation = '2.162093' WHERE guid = '135127';
DELETE FROM creature_movement_template WHERE entry IN (17161);
insert into `creature_movement_template` (`entry`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('17161','1','-11173.7','-1901.06','232.009','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement_template` (`entry`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('17161','2','-11163.5','-1897.31','232.009','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement_template` (`entry`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('17161','3','-11154.1','-1903.53','232.009','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement_template` (`entry`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('17161','4','-11150.5','-1913.51','232.009','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement_template` (`entry`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('17161','5','-11156.5','-1922.95','232.009','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement_template` (`entry`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('17161','6','-11166.9','-1926.54','232.009','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement_template` (`entry`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('17161','7','-11175.9','-1920.6','232.009','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement_template` (`entry`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('17161','8','-11179.4','-1910.72','232.009','0','0','0','0','0','0','0','0','0','0','0','0');


-- Sorcerus Shade Group 1
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('85317','16525','532','1','0','0','-11274.5','-1923.04','240.47','3.52488','86400','9','0','43086','0','0','1');
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('85316','16525','532','1','0','0','-11279.7','-1933.79','240.47','4.59459','86400','9','0','43086','0','0','1');
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('85319','16525','532','1','0','0','-11279','-1947.02','240.47','1.17183','86400','9','0','43086','0','0','1');

DELETE FROM creature_linking WHERE master_guid IN (85320);
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('85317','85320','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('85316','85320','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('85319','85320','3');


-- Sorcerus Shade Group 2
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('85318','16525','532','1','0','0','-11291.6','-1903.28','240.47','4.25216','86400','9','0','43086','0','0','1');
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('85321','16525','532','1','0','0','-11313.9','-1907.27','240.47','3.07406','86400','9','0','43086','0','0','1');
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('85322','16525','532','1','0','0','-11306.6','-1886.81','240.47','0.828609','86400','9','0','43086','0','0','1');

DELETE FROM creature_linking WHERE master_guid IN (85326);
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('85318','85326','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('85321','85326','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('85322','85326','3');


-- Sorcerus Shade Group 3
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('85323','16525','532','1','0','0','-11395.9','-1841.41','260.63','5.81746','86400','5','0','43086','0','0','1');
UPDATE creature SET position_x = '-11372.583008', position_y = '-1836.173584', position_z = '260.676361', orientation = '3.036364', SpawnDist=5, MovementType=1 WHERE guid = '85365';
UPDATE creature SET position_x = '-11381.167969', position_y = '-1823.546509', position_z = '260.811920', orientation = '3.674108', SpawnDist=5, MovementType=1 WHERE guid = '85366';
UPDATE creature SET position_x = '-11388.054688', position_y = '-1834.442871', position_z = '260.772552', orientation = '5.609331', SpawnDist=3, MovementType=1 WHERE guid = '85367';

DELETE FROM creature_linking WHERE master_guid IN (85367);
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('85323','85367','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('85365','85367','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('85366','85367','3');


-- Room of Ethereal Thiefs
UPDATE creature SET position_x = '-11358.259766', position_y = '-1770.919800', position_z = '265.162994', orientation = '2.675870' WHERE guid = '85336';
UPDATE creature SET position_x = '-11347.771484', position_y = '-1757.506714', position_z = '265.162994', orientation = '1.969797' WHERE guid = '85335';
UPDATE creature SET position_x = '-11335.573242', position_y = '-1761.611450', position_z = '265.162994', orientation = '1.108999' WHERE guid = '85334';
UPDATE creature SET position_x = '-11336.349609', position_y = '-1761.056274', position_z = '265.162994', orientation = '1.072084' WHERE guid = '85334';
UPDATE creature SET position_x = '-11354.003906', position_y = '-1765.124146', position_z = '265.162994', orientation = '2.573767' WHERE guid = '85335';
UPDATE creature SET position_x = '-11357.740234', position_y = '-1778.249512', position_z = '265.162994', orientation = '2.756765' WHERE guid = '85336';

DELETE FROM creature_movement WHERE id IN (85328,85329,85330,85334,85335,85336);

insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('85334','1','-11337.8','-1813.55','265.165','11000','0','0','0','0','0','0','0','0','4.675490','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('85334','2','-11336.5','-1761.56','265.165','9000','0','0','0','0','0','0','0','0','0.999828','0','0');

insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('85335','1','-11306','-1801.12','265.165','10000','0','0','0','0','0','0','0','0','5.617188','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('85335','2','-11356.2','-1763.85','265.165','11000','0','0','0','0','0','0','0','0','2.585550','0','0');

insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('85336','1','-11305.4','-1793.21','265.165','9000','0','0','0','0','0','0','0','0','6.007532','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('85336','2','-11358.1','-1778.39','265.165','10000','0','0','0','0','0','0','0','0','2.869082','0','0');

insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('85330','1','-11348.4','-1758.04','265.165','11000','0','0','0','0','0','0','0','0','2.275321','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('85330','2','-11311.3','-1804.54','265.165','11000','0','0','0','0','0','0','0','0','5.573992','0','0');

insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('85329','1','-11343.5','-1754.66','265.165','8000','0','0','0','0','0','0','0','0','1.964306','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('85329','2','-11322.6','-1810.8','265.165','8000','0','0','0','0','0','0','0','0','5.055631','0','0');

insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('85328','1','-11327.5','-1755.55','265.165','9000','0','0','0','0','0','0','0','0','1.578678','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('85328','2','-11330.7','-1812','265.165','9000','0','0','0','0','0','0','0','0','4.666862','0','0');


-- Ethereal Spellfiltchers
UPDATE creature SET position_x = '-11211.073242', position_y = '-1707.394043', position_z = '240.978180', orientation = '6.152843' WHERE guid = '85337';
UPDATE creature SET position_x = '-11224.330078', position_y = '-1686.729736', position_z = '240.978180', orientation = '2.162236' WHERE guid = '85338';


-- Ethereal Spellfiltcher
UPDATE creature SET position_x = '-11178.170898', position_y = '-1778.495972', position_z = '251.170471', orientation = '4.413971' WHERE guid = '85341';


-- Ythyar
UPDATE creature SET position_x = '-11153.946289', position_y = '-1849.224365', position_z = '238.166595', orientation = '3.868120' WHERE guid = '84990';


-- Echo of Medivh
UPDATE creature SET position_x = '-11099.796875', position_y = '-1852.390259', position_z = '221.069550', orientation = '5.523856', SpawnDist=3, MovementType=1 WHERE guid = '135827';


-- Fleshbeasts
UPDATE creature SET position_x = '-11021.179688', position_y = '-1938.612061', position_z = '232.256866', orientation = '2.414953', SpawnDist=3, MovementType=1 WHERE guid = '85361';
UPDATE creature SET position_x = '-11034.416992', position_y = '-1949.413208', position_z = '232.256866', orientation = '2.182475', SpawnDist=3, MovementType=1 WHERE guid = '85362';

UPDATE creature SET position_x = '-11057.508789', position_y = '-1969.095215', position_z = '232.239807', orientation = '0.792347', SpawnDist=3, MovementType=1 WHERE guid = '85360';
UPDATE creature SET position_x = '-11074.339844', position_y = '-1963.097534', position_z = '232.248123', orientation = '0.227645', SpawnDist=3, MovementType=1 WHERE guid = '85363';

-- Greater Fleshbeast
UPDATE creature SET SpawnDist=0, MovementType=2 WHERE guid IN (135864);
DELETE FROM creature_movement WHERE id IN (135864);
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('135864','1','-10999.8','-1896.92','239.343','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('135864','2','-11000','-1908.12','235.22','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('135864','3','-11005.3','-1914.9','232.257','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('135864','4','-11018','-1925','232.257','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('135864','5','-11028.2','-1928.3','232.257','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('135864','6','-11043.5','-1940.4','232.257','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('135864','7','-11047.6','-1948.36','232.257','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('135864','8','-11063.1','-1959.92','232.257','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('135864','9','-11073.4','-1974.69','232.117','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('135864','10','-11062.8','-1959.76','232.256','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('135864','11','-11047.4','-1948.28','232.256','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('135864','12','-11043.1','-1940.65','232.256','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('135864','13','-11027.5','-1928.56','232.256','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('135864','14','-11017.1','-1925.06','232.256','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('135864','15','-11004.9','-1915.22','232.256','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('135864','16','-10999.3','-1907.93','235.366','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('135864','17','-10999.7','-1897.02','239.29','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('135864','18','-11011.9','-1880.69','245.986','0','0','0','0','0','0','0','0','0','0','0','0');


-- Fleshbeasts
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('85327','16595','532','1','0','0','-11017.1','-1944.49','247.772','1.96887','86400','3','0','51660','0','0','1');
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('85324','16595','532','1','0','0','-11015.4','-1915.67','247.772','4.27952','86400','3','0','51660','0','0','1');

DELETE FROM creature_linking WHERE master_guid IN (85327);
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('85324','85327','3');


-- Fleshbeasts Behind Midivh's Chamber
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('85325','16595','532','1','0','0','-11053.9','-1891.48','245.984','1.82829','86400','3','0','51660','0','0','1');
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('85331','16595','532','1','0','0','-11056.1','-1877.16','245.983','3.26557','86400','3','0','51660','0','0','1');

DELETE FROM creature_linking WHERE master_guid IN (85325);
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('85331','85325','3');


-- Fleshbeasts Behind Midivh's Chamber
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('85332','16595','532','1','0','0','-11031.5','-1866.41','245.984','2.27125','86400','3','0','51660','0','0','1');
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('85333','16595','532','1','0','0','-11021.4','-1858.12','245.984','5.39007','86400','3','0','51660','0','0','1');

DELETE FROM creature_linking WHERE master_guid IN (85332);
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('85333','85332','3');


-- Pathing Greater Fleshbeast
UPDATE creature SET SpawnDist=0, MovementType=2 WHERE guid IN (135864);
DELETE FROM creature_movement WHERE id IN (135862);
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('135862','1','-11064.8','-1943.53','264.698','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('135862','2','-11055.5','-1943.21','264.698','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('135862','3','-11051','-1948.71','264.698','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('135862','4','-11051.8','-1958.12','264.698','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('135862','5','-11059.5','-1961.58','264.698','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('135862','6','-11069','-1959.22','264.698','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('135862','7','-11080.3','-1968.33','262.655','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('135862','8','-11068.7','-1959.46','264.698','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('135862','9','-11058.9','-1962.19','264.698','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('135862','10','-11051.4','-1957.99','264.698','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('135862','11','-11050.5','-1948.56','264.698','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('135862','12','-11055.7','-1943.02','264.698','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('135862','13','-11065.1','-1943.68','264.698','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('135862','14','-11069.7','-1950.12','264.698','0','0','0','0','0','0','0','0','0','0','0','0');


-- Skeletal Gryphons
UPDATE creature SET SpawnDist=20, MovementType=1 WHERE id IN (17660);


-- Greater Fleshbeast in Top of Tower
UPDATE creature SET SpawnDist=5, MovementType=1 WHERE guid IN (135865);


-- Prince Malchezaar Pathing
UPDATE creature SET SpawnDist=0, MovementType=2 WHERE guid IN (56325);
UPDATE creature_template SET MovementType=2 WHERE entry IN (15690);
DELETE FROM creature_movement_template WHERE entry IN (15690);
insert into `creature_movement_template` (`entry`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('15690','1','-10920.6','-1985.05','275.605','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement_template` (`entry`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('15690','2','-10936.8','-1958.72','275.349','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement_template` (`entry`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('15690','3','-10961.3','-1945.57','275.119','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement_template` (`entry`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('15690','4','-10936.8','-1959.34','275.352','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement_template` (`entry`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('15690','5','-10921.7','-1987.22','275.611','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement_template` (`entry`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('15690','6','-10926.2','-2011.05','275.74','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement_template` (`entry`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('15690','7','-10948.9','-2023.28','275.576','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement_template` (`entry`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('15690','8','-10966.6','-2022.58','275.275','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement_template` (`entry`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('15690','9','-10948.3','-2023.49','275.584','0','0','0','0','0','0','0','0','0','0','0','0');
insert into `creature_movement_template` (`entry`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values('15690','10','-10933.5','-2017.54','275.742','0','0','0','0','0','0','0','0','0','0','0','0');










