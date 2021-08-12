-- correct data for invisible triggers for quest
UPDATE creature_template SET UnitFlags=33554432 WHERE entry IN(23813); -- Zul'Aman - Dragonhawk God Invisman
UPDATE creature_template SET UnitFlags=33554432 WHERE entry IN(23814); -- Zul'Aman - Eagle God Invisman
UPDATE creature_template SET UnitFlags=33554432 WHERE entry IN(23815); -- Zul'Aman - Lynx God Invisman

-- akilzon eagles
UPDATE creature_template SET Faction=1890,SpeedWalk=2.5/2.5,SpeedRun=10/7 WHERE entrY IN(24858); -- Soaring Eagle 24858

-- invisible trigger on akilzon
UPDATE creature_template SET UnitFlags=33554688 WHERE entry IN(24551); -- Eagle Event Deactivation Trigger

-- corrupted lightning totem spell cooldown
DELETE FROM creature_cooldowns WHERE entry IN(24224) AND spellId IN(43301);
INSERT INTO creature_cooldowns VALUES
(24224,43301,1500,4000);

-- nalorakk bear model data
UPDATE creature_model_info SET bounding_radius=2.444,combat_reach=6 WHERE modelid IN(21736);

-- nalorakk wave mobs
-- Amani'shi Tribesman 23582
-- Amani'shi Axe Thrower 23542
-- Amani'shi Warbringer 23580
-- Amani'shi Medicine Man 23581
UPDATE creature_template SET Detection=30 WHERE entry IN(23582,23542,23580,23581);

-- janalai
DELETE FROM creature_template_addon WHERE entry IN(23578);

-- hatcher immunities
UPDATE creature_template SET MechanicImmuneMask=MechanicImmuneMask|(16+4096+65536) WHERE entry IN(23818,24504);

-- Malacrass data fixes
UPDATE creature_template SET Faction=1890 WHERE entry IN(24241,24244,24243,24246,24240,24242,24245,24247);
DELETE FROM creature WHERE id IN(24239); -- dynamically spawned (removed in instance file)
-- done dynamically in script
UPDATE creature_template SET MechanicImmuneMask=MechanicImmuneMask&~4 WHERE entry IN(24239);

-- Correct Detection for Malacrass & Adds
-- https://youtu.be/7hq5qyyIEgo?t=12
-- https://youtu.be/Jwrp2w2-dIw?t=10
UPDATE `creature_template` SET `Detection` = 45 WHERE `entry` BETWEEN 24240 AND 24247;
UPDATE `creature_template` SET `Detection` = 45 WHERE `entry` = 24239;

-- zuljin
UPDATE creature_template SET MinLevel=70,MaxLevel=70 WHERE entry IN(24187);
UPDATE creature_template SET UnitFlags=33587200 WHERE entry IN(24136);
UPDATE creature_template SET UnitFlags=33536 WHERE entry IN(23878,23879,23880,23877);
UPDATE creature_template SET EquipmentTemplateId=23863 WHERE entry IN(23863);
DELETE FROM creature_equip_template WHERE entry IN(23863);
INSERT INTO creature_equip_template(entry, equipentry1, equipentry2, equipentry3) VALUES
(23863, 33975, 0, 0);

-- Handled in spell_template for i.33930,33931,33932,33933
DELETE FROM `spell_area` WHERE `spell` IN (43816,43818,43820,43822);

