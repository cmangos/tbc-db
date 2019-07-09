-- Supremus
UPDATE creature_template SET ExtraFlags=ExtraFlags|0x00000020 WHERE entry IN(22898);
UPDATE creature_template SET UnitFlags=32832 WHERE entry IN(22898);
UPDATE creature_template SET Faction=16,UnitFlags=33554432 WHERE entry IN(23085);
UPDATE creature_template SET Faction=1375,UnitFlags=33554432 WHERE entry IN(23095);
UPDATE creature_model_info SET bounding_radius=80,combat_reach=24 WHERE modelid IN(21145);

-- Shade
UPDATE creature_template SET SpeedWalk=2/2.5,SpeedRun=4/7 WHERE entry IN(22841);
UPDATE creature_template SET UnitFlags=33554688 WHERE entry IN(23351);
UPDATE creature_model_info SET bounding_radius=0.125,combat_reach=0.25 WHERE modelid IN(17188);

-- Teron
DELETE FROM creature_template_spells WHERE entry IN(23109);
INSERT INTO creature_template_spells(entry, spell1, spell2, spell3, spell4, spell5, spell6, spell7, spell8) VALUES
(23109,40325,0,40157,40175,40314,0,40322,0);
UPDATE creature_template SET SchoolImmuneMask=127 WHERE entry IN(23111);

-- Gurtogg
UPDATE creature_template SET UnitFlags=0x02000000 WHERE entry IN(23254);

-- Essences
DELETE FROM creature_loot_template WHERE entry IN(23420) AND item IN(29434); -- shouldnt drop BoJ
UPDATE creature_template SET UnitFlags=33554752 WHERE entry IN(22856);
UPDATE creature_template SET Faction=1849 WHERE entry IN(23418,23419,23420);
UPDATE creature_template SET ExtraFlags=ExtraFlags|0x00000020 WHERE entry IN(23418);
UPDATE creature_template SET DamageMultiplier=4 WHERE entry IN(23418);

-- Mother
UPDATE creature_template SET DamageMultiplier=54 WHERE entry IN(22947);
UPDATE creature_template SET Leash=150 WHERE entry IN(22947);
UPDATE creature_template SET Detection=35 WHERE entry IN(22947);
DELETE FROM spell_proc_event WHERE entry IN(40816);
INSERT INTO spell_proc_event(entry,cooldown) VALUES
(40816,9);

-- Council
UPDATE creature_template SET UnitFlags=33554496,MovementType=0 WHERE entry IN(23451);
UPDATE creature_model_info SET bounding_radius=0.625,combat_reach=1.25 WHERE modelid IN(23451);
UPDATE creature_template SET ExtraFlags=ExtraFlags|0x00000020 WHERE entry IN(22949);
UPDATE creature_template SET Detection=30 WHERE entry IN(22952,22951,22950,22949);
UPDATE creature_template SET MechanicImmuneMask=MechanicImmuneMask&~2048 WHERE entry IN(22952);

-- Illidan
UPDATE creature_template SET NpcFlags=1 WHERE entry IN(23089);
UPDATE creature_template SET UnitFlags=33554432 WHERE entry IN(23259);
UPDATE creature_template SET UnitFlags=256 WHERE entry IN(22996);
UPDATE creature_template SET DamageMultiplier=5 WHERE entry IN(23089);
UPDATE creature_template SET UnitFlags=32768 WHERE entry IN(23197);
UPDATE creature_template SET Faction=1849 WHERE entry IN(23336);
UPDATE creature_template SET ExtraFlags=ExtraFlags|0x00000020 WHERE entry IN(22997); -- flame of azzinoth should not crush
UPDATE creature_template SET SpeedWalk=4/2.5,SpeedRun=4/7 WHERE entry IN(23375);
UPDATE creature_model_info SET bounding_radius=0.75,combat_reach=0.55 WHERE modelid IN(21447);
UPDATE creature_template SET UnitFlags=33554688 WHERE entry IN(23304);
UPDATE gameobject_template SET flags=32, faction=1375,size=3 WHERE entry IN(185916);
UPDATE creature_template SET MovementType=2 WHERE entry IN(23070);
UPDATE creature_template SET UnitFlags=0x02000000|0x00000200,SpeedWalk=2.5/2.5,SpeedRun=6.94444/7 WHERE entry IN(23070);
UPDATE creature_template SET SpeedWalk=4/2.5,SpeedRun=4/7 WHERE entry IN(23375);
UPDATE gameobject_template SET faction=0 WHERE entry IN(185916); -- old is 1375, but prevents being used, confirmed for 3.0.9 but not earlier
DELETE FROM spell_script_target WHERE entry IN(40761);
INSERT INTO spell_script_target VALUES
(40761, 1, 22917, 0);
DELETE FROM spell_script_target WHERE entry IN(40704,40707,40708,40709,40710,40711,40712,40713);
INSERT INTO spell_script_target VALUES
('40704', '1', '23296', '0'), -- by 23292
('40707', '1', '23297', '0'), -- by 23293
('40708', '1', '23298', '0'), -- by 23294
('40709', '1', '23299', '0'), -- by 23295
('40710', '1', '23292', '0'), -- by 23296
('40711', '1', '23293', '0'), -- by 23297
('40712', '1', '23294', '0'), -- by 23298
('40713', '1', '23295', '0'); -- by 23299


