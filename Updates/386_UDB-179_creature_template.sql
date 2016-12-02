-- Silvermoon City
-- Magister Astalor Bloodsworn
UPDATE creature_template SET GossipMenuId = 9142 WHERE Entry = 17718;
DELETE FROM gossip_menu WHERE entry = 9142; 
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(9142, 12370, 0, 0);

-- Lord Solanar Bloodwrath
UPDATE creature_template SET MinLevel = 70, MaxLevel = 70, FactionAlliance = 1604, FactionHorde = 1604, NpcFlags = 2, UnitFlags = 0, UnitClass = 2, Expansion = 1, MinLevelHealth = 5589, MaxLevelHealth = 5589, MinLevelMana = 3155, MaxLevelMana = 3155,
MinMeleeDmg = 242, MaxMeleeDmg = 362, MinRangedDmg = 194, MaxRangedDmg = 290, Armor = 6673, MeleeAttackPower = 91,  RangedAttackPower = 73, MeleeBaseAttackTime = 2000,  RangedBaseAttackTime = 2000, EquipmentTemplateId = 612 WHERE Entry = 25223;

-- Lord Solanar Bloodwrath (25223)
UPDATE `creature_template` SET `HealthMultiplier` = '1.0', `PowerMultiplier` = '1.0', `DamageMultiplier` = '1.0', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '5589', `MaxLevelHealth` = '5589', `MinLevelMana` = '3155', `MaxLevelMana` = '3155', `MinMeleeDmg` = '234', `MaxMeleeDmg` = '331', `MinRangedDmg` = '198', `MaxRangedDmg` = '295', `MeleeAttackPower` = '286.0', `RangedAttackPower` = '33.0', `Armor` = '5474.0' WHERE `entry` = '25223';

UPDATE creature SET curhealth = 5589, curmana = 3155 WHERE guid = 96977;


