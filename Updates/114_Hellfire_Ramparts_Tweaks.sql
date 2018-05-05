-- ===================================
-- Hellfire Citadel: Hellfire Ramparts
-- ===================================

-- Bonechewer Hungerer (17259 / 18053)
UPDATE creature_template SET MovementType=1, EquipmentTemplateId=5555 WHERE entry IN (18053);
UPDATE creature_template SET MechanicImmuneMask=536870912+65536+4096+2048+1024 WHERE entry IN (17259); -- Normal CC Mechanics (Normal Mode)
UPDATE creature_template SET MechanicImmuneMask=536870912+65536+4096+2048+1024+1 WHERE entry IN (18053); -- Normal CC Mechanics + Charm (Heroic Mode)

-- Bonechewer Ravener (17264 / 18054)
UPDATE creature_template SET MovementType=1, EquipmentTemplateId=5569 WHERE entry IN (18054);
UPDATE creature_template SET MechanicImmuneMask=4096 WHERE entry IN (17264);
UPDATE creature_template SET MechanicImmuneMask=4096+1024+1 WHERE entry IN (18054);

-- Bleeding Hollow Darkcaster (17269 / 18049)
UPDATE creature_template SET MovementType=1, EquipmentTemplateId=1280 WHERE entry IN (18049);

-- Bleeding Hollow Archer (17270 / 18048)
UPDATE creature_template SET MovementType=1, EquipmentTemplateId=1105 WHERE entry IN (18048);
UPDATE creature_template SET MechanicImmuneMask=536870912+65536+4096+2048+1024 WHERE entry IN (17270); -- Normal CC Mechanics (Normal Mode)
UPDATE creature_template SET MechanicImmuneMask=536870912+65536+4096+2048+1024+1 WHERE entry IN (18048); -- Normal CC Mechanics + Charm (Heroic Mode)

-- Bonechewer Destroyer (17271 / 18052)
UPDATE creature_template SET MovementType=1, EquipmentTemplateId=1429 WHERE entry IN (18052);
UPDATE creature_template SET MechanicImmuneMask=536870912+65536+4096+2048+1024 WHERE entry IN (17271); -- Normal CC Mechanics (Normal Mode)
UPDATE creature_template SET MechanicImmuneMask=536870912+65536+4096+2048+1024+1 WHERE entry IN (18052); -- Normal CC Mechanics + Charm (Heroic Mode)

-- Shattered Hand Warhound (17280 / 18059)
UPDATE creature_template SET MovementType=1 WHERE entry IN (18059);
DELETE FROM creature_linking_template WHERE entry IN (17280);
insert into `creature_linking_template` (`entry`, `map`, `master_entry`, `flag`, `search_range`) values('17280','543','17455','4352','50'); -- Shattered Hand Warhound will Despawn on Nearby Bonechewer Beastmaster Evade

-- Bonechewer Ripper (17281 / 18055) (MECHANIC_SAPPED+MECHANIC_DAZE+MECHANIC_FREEZE+MECHANIC_STUN+MECHANIC_HORROR+MECHANIC_POLYMORPH+MECHANIC_SNARE+MECHANIC_PACIFY+MECHANIC_SLEEP+MECHANIC_FEAR+MECHANIC_CONFUSED+MECHANIC_CHARM
UPDATE creature_template SET MovementType=1 WHERE entry IN (18055);
UPDATE creature_template SET MechanicImmuneMask=536870912+67108864+8388608+65536+4096+2048+1024+512+128+16+2+1 WHERE entry IN (17281,18055);

-- Watchkeeper Gargolmar (17306 / 18436)
UPDATE creature_template SET UnitFlags=64, SpeedRun=0.992063, PickpocketLootId=17306, MovementType=1 WHERE entry IN (18436);

-- Vazruden the Herald (17307 / 18435)
-- NONE

-- Omor the Unscarred (17308 / 18433)
UPDATE creature_template SET UnitFlags=64, MovementType=1 WHERE entry IN (18433);

-- Hellfire Watcher (17309 / 18058)
UPDATE creature_template SET MovementType=1, EquipmentTemplateId=1024 WHERE entry IN (18058);
DELETE FROM creature_linking WHERE guid IN (62088,62089);
DELETE FROM creature_linking_template WHERE entry IN (17309);
insert into `creature_linking_template` (`entry`, `map`, `master_entry`, `flag`, `search_range`) values('17309','543','17306','1671','0'); -- Hellfire Watcher Respawn on Watchkeeper Gargolmar Evade

-- Bonechewer Beastmaster (17455 / 18051) Heroic: (The Beastmasters are immune to Sheep)
UPDATE creature_template SET MovementType=1 WHERE entry IN (18051);
UPDATE creature_template SET MechanicImmuneMask=536870912+67108864+4096+2048+1024+16+2+1 WHERE entry IN (17455);
UPDATE creature_template SET MechanicImmuneMask=536870912+67108864+65536+4096+2048+1024+16+2+1 WHERE entry IN (18051);

-- Bleeding Hollow Scryer (17478 / 18050)
UPDATE creature_template SET MovementType=1 WHERE entry IN (18050);

-- Hellfire Sentry (17517 / 18057)
UPDATE creature_template SET MovementType=1, EquipmentTemplateId=1260 WHERE entry IN (18057);
DELETE FROM creature_linking WHERE guid IN (63011);
DELETE FROM creature_linking_template WHERE entry IN (17517);
insert into `creature_linking_template` (`entry`, `map`, `master_entry`, `flag`, `search_range`) values('17517','543','17536','133','0'); -- Hellfire Sentry Aggro on Nazan Aggro and Respawn on Nazan Respawn/Evade 

-- Nazan (17536 / 18432)
UPDATE creature_template SET SkinningLootID=70065, MovementType=2 WHERE entry IN (18432);

-- Vazruden (17537 / 18434)
UPDATE creature_template SET EquipmentTemplateId=2183 WHERE entry IN (18434);

-- Fiendish Hound (17540 / 18056)
UPDATE creature_template SET ExtraFlags=64, MovementType=1 WHERE entry IN (17540,18056);
DELETE FROM creature_linking_template WHERE entry IN (17540);
insert into `creature_linking_template` (`entry`, `map`, `master_entry`, `flag`, `search_range`) values('17540','543','17308','12304','0'); -- Fiendish Hound Despawns on Omor the Unscarred Death or Evade


-- Nazan Liquid Fire DBScripts
DELETE FROM dbscripts_on_spell WHERE id IN (34653,36920); 
-- Normal
insert into `dbscripts_on_spell` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) values('34653','0','15','31706','0','0','0','6','0','0','0','0','0','0','0','0','Nazan Normal Mode - Fireball Summons Liquid Fire');
-- Heroic
insert into `dbscripts_on_spell` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) values('36920','0','15','30928','0','0','0','6','0','0','0','0','0','0','0','0','Nazan Heroic Mode - Fireball Summons Liquid Fire');

-- Make patrol into dogs instead of orcs
UPDATE creature SET id='17455' WHERE guid='140289';
UPDATE creature SET id='17264' WHERE guid='86360';




