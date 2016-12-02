-- =================================================================================================
-- =====     COMPLETE REVAMP AND FIXING OF HEROIC TRASH NPC AND LOOT FOR EVERY TBC DUNGEON     =====
-- =================================================================================================


-- ==================================
-- Coilfang Reservoir: The Slave Pens
-- ==================================
-- Bogstrok 17816 / 19884
UPDATE creature_template SET UnitFlags=1 WHERE entry IN (17816,19884);
UPDATE creature_template SET LootId=17816, PickpocketLootId=17816 WHERE entry IN (17816,19884);
-- Bogstrok (17816)
UPDATE `creature_template` SET `HealthMultiplier` = '2.9', `PowerMultiplier` = '0', `DamageMultiplier` = '4.0', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '15489', `MaxLevelHealth` = '15489', `MinLevelMana` = '0', `MaxLevelMana` = '0', `MinMeleeDmg` = '689', `MaxMeleeDmg` = '959', `MinRangedDmg` = '557', `MaxRangedDmg` = '826', `MeleeAttackPower` = '262.0', `RangedAttackPower` = '30.0', `Armor` = '4391.0' WHERE `entry` = '17816';
-- Bogstrok (1) (19884)
UPDATE `creature_template` SET `HealthMultiplier` = '3.645', `PowerMultiplier` = '0', `DamageMultiplier` = '10.0', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '25463', `MaxLevelHealth` = '25463', `MinLevelMana` = '0', `MaxLevelMana` = '0', `MinMeleeDmg` = '2777', `MaxMeleeDmg` = '3927', `MinRangedDmg` = '2153', `MaxRangedDmg` = '3199', `MeleeAttackPower` = '304.0', `RangedAttackPower` = '44.0', `Armor` = '6792' WHERE `entry` = '19884';


-- Coilfang Champion 17957 / 19885
UPDATE creature_template SET UnitFlags=1 WHERE entry IN (17957,19885);
UPDATE creature_template SET LootId=17957, PickpocketLootId=17957 WHERE entry IN (17957,19885);
-- Coilfang Champion (17957)
UPDATE `creature_template` SET `HealthMultiplier` = '2.9', `PowerMultiplier` = '0', `DamageMultiplier` = '4.0', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '16028', `MaxLevelHealth` = '16028', `MinLevelMana` = '0', `MaxLevelMana` = '0', `MinMeleeDmg` = '725', `MaxMeleeDmg` = '1010', `MinRangedDmg` = '590', `MaxRangedDmg` = '876', `MeleeAttackPower` = '268.0', `RangedAttackPower` = '32.0', `Armor` = '4691.0' WHERE `entry` = '17957';
-- Coilfang Champion (1) (19885)
UPDATE `creature_template` SET `HealthMultiplier` = '3.915', `PowerMultiplier` = '0', `DamageMultiplier` = '10.0', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '28114', `MaxLevelHealth` = '28114', `MinLevelMana` = '0', `MaxLevelMana` = '0', `MinMeleeDmg` = '2567', `MaxMeleeDmg` = '3631', `MinRangedDmg` = '2196', `MaxRangedDmg` = '3259', `MeleeAttackPower` = '308.0', `RangedAttackPower` = '48.0', `Armor` = '7089.0' WHERE `entry` = '19885';


-- Coilfang Collaborator 17962 / 19903
UPDATE creature_template SET UnitFlags=1 WHERE entry IN (17962,19903);
UPDATE creature_template SET LootId=17962, PickpocketLootId=17962 WHERE entry IN (17962,19903);
-- Coilfang Collaborator (17962)
UPDATE `creature_template` SET `HealthMultiplier` = '2.9', `PowerMultiplier` = '0', `DamageMultiplier` = '4.0', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '15489', `MaxLevelHealth` = '15489', `MinLevelMana` = '0', `MaxLevelMana` = '0', `MinMeleeDmg` = '414', `MaxMeleeDmg` = '575', `MinRangedDmg` = '557', `MaxRangedDmg` = '826', `MeleeAttackPower` = '262.0', `RangedAttackPower` = '30.0', `Armor` = '4391.0' WHERE `entry` = '17962';
-- Coilfang Collaborator (1) (19903)
UPDATE `creature_template` SET `HealthMultiplier` = '3.915', `PowerMultiplier` = '0', `DamageMultiplier` = '10.0', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '27350', `MaxLevelHealth` = '27350', `MinLevelMana` = '0', `MaxLevelMana` = '0', `MinMeleeDmg` = '1515', `MaxMeleeDmg` = '2142', `MinRangedDmg` = '2153', `MaxRangedDmg` = '3199', `MeleeAttackPower` = '304.0', `RangedAttackPower` = '44.0', `Armor` = '6792.0' WHERE `entry` = '19903';


-- Coilfang Defender 17958 / 19886
UPDATE creature_template SET UnitFlags=1 WHERE entry IN (17958,19886);
UPDATE creature_template SET LootId=17958, PickpocketLootId=17958 WHERE entry IN (17958,19886);
-- Coilfang Defender (17958)
UPDATE `creature_template` SET `HealthMultiplier` = '2.9', `PowerMultiplier` = '0', `DamageMultiplier` = '4.0', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '16028', `MaxLevelHealth` = '16028', `MinLevelMana` = '0', `MaxLevelMana` = '0', `MinMeleeDmg` = '725', `MaxMeleeDmg` = '1010', `MinRangedDmg` = '590', `MaxRangedDmg` = '876', `MeleeAttackPower` = '268.0', `RangedAttackPower` = '32.0', `Armor` = '4691.0' WHERE `entry` = '17958';
-- Coilfang Defender (1) (19886)
UPDATE `creature_template` SET `HealthMultiplier` = '3.915', `PowerMultiplier` = '0', `DamageMultiplier` = '10.0', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '28114', `MaxLevelHealth` = '28114', `MinLevelMana` = '0', `MaxLevelMana` = '0', `MinMeleeDmg` = '2567', `MaxMeleeDmg` = '3631', `MinRangedDmg` = '2196', `MaxRangedDmg` = '3259', `MeleeAttackPower` = '308.0', `RangedAttackPower` = '48.0', `Armor` = '7089.0' WHERE `entry` = '19886';


-- Coilfang Enchantress 17961 / 19887
UPDATE creature_template SET UnitFlags=1 WHERE entry IN (17961,19887);
UPDATE creature_template SET LootId=17961, PickpocketLootId=17961 WHERE entry IN (17961,19887);
-- Coilfang Enchantress (17961)
UPDATE `creature_template` SET `HealthMultiplier` = '2.9', `PowerMultiplier` = '1.0', `DamageMultiplier` = '4.0', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '12395', `MaxLevelHealth` = '12395', `MinLevelMana` = '2568', `MaxLevelMana` = '2568', `MinMeleeDmg` = '640', `MaxMeleeDmg` = '890', `MinRangedDmg` = '515', `MaxRangedDmg` = '764', `MeleeAttackPower` = '246.0', `RangedAttackPower` = '26.0', `Armor` = '3555.0' WHERE `entry` = '17961';
-- Coilfang Enchantress (1) (19887)
UPDATE `creature_template` SET `HealthMultiplier` = '3.915', `PowerMultiplier` = '1.0', `DamageMultiplier` = '10.0', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '21881', `MaxLevelHealth` = '21881', `MinLevelMana` = '3155', `MaxLevelMana` = '3155', `MinMeleeDmg` = '2343', `MaxMeleeDmg` = '3311', `MinRangedDmg` = '1982', `MaxRangedDmg` = '2949', `MeleeAttackPower` = '286.0', `RangedAttackPower` = '33.0', `Armor` = '5474.0' WHERE `entry` = '19887';


-- Coilfang Observer 17938 / 19888
UPDATE creature_template SET UnitFlags=1 WHERE entry IN (17938,19888);
UPDATE creature_template SET LootId=17938, PickpocketLootId=17938 WHERE entry IN (17938,19888);
-- Coilfang Observer (17938)
UPDATE `creature_template` SET `HealthMultiplier` = '2.9', `PowerMultiplier` = '1.0', `DamageMultiplier` = '4.0', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '12395', `MaxLevelHealth` = '12395', `MinLevelMana` = '2568', `MaxLevelMana` = '2568', `MinMeleeDmg` = '640', `MaxMeleeDmg` = '890', `MinRangedDmg` = '515', `MaxRangedDmg` = '764', `MeleeAttackPower` = '246.0', `RangedAttackPower` = '26.0', `Armor` = '3555.0' WHERE `entry` = '17938';
-- Coilfang Observer (1) (19888)
UPDATE `creature_template` SET `HealthMultiplier` = '3.915', `PowerMultiplier` = '1.0', `DamageMultiplier` = '10.0', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '21881', `MaxLevelHealth` = '21881', `MinLevelMana` = '3155', `MaxLevelMana` = '3155', `MinMeleeDmg` = '2343', `MaxMeleeDmg` = '3311', `MinRangedDmg` = '1982', `MaxRangedDmg` = '2949', `MeleeAttackPower` = '286.0', `RangedAttackPower` = '33.0', `Armor` = '5474.0' WHERE `entry` = '19888';


-- Coilfang Ray 21128 / 21841
-- Coilfang Ray (21128)
UPDATE `creature_template` SET `HealthMultiplier` = '2.9', `PowerMultiplier` = '0', `DamageMultiplier` = '3.6', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '16574', `MaxLevelHealth` = '16574', `MinLevelMana` = '0', `MaxLevelMana` = '0', `MinMeleeDmg` = '687', `MaxMeleeDmg` = '960', `MinRangedDmg` = '564', `MaxRangedDmg` = '837', `MeleeAttackPower` = '272.0', `RangedAttackPower` = '33.0', `Armor` = '4991.0' WHERE `entry` = '21128';
-- Coilfang Ray (1) (21841)
UPDATE `creature_template` SET `HealthMultiplier` = '3.915', `PowerMultiplier` = '0', `DamageMultiplier` = '7.0', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0265', `MinLevelHealth` = '27350', `MaxLevelHealth` = '27350', `MinLevelMana` = '0', `MaxLevelMana` = '0', `MinMeleeDmg` = '1767', `MaxMeleeDmg` = '2499', `MinRangedDmg` = '1507', `MaxRangedDmg` = '2239', `MeleeAttackPower` = '304.0', `RangedAttackPower` = '44.0', `Armor` = '6972.0' WHERE `entry` = '21841';


-- Coilfang Scale-Healer 21126 / 21842
UPDATE creature_template SET LootId=21126, PickpocketLootId=21126 WHERE entry IN (21126,21842);
-- Coilfang Scale-Healer (21126)
UPDATE `creature_template` SET `HealthMultiplier` = '2.9', `PowerMultiplier` = '1.0', `DamageMultiplier` = '4.0', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '12395', `MaxLevelHealth` = '12824', `MinLevelMana` = '2568', `MaxLevelMana` = '2620', `MinMeleeDmg` = '640', `MaxMeleeDmg` = '937', `MinRangedDmg` = '515', `MaxRangedDmg` = '809', `MeleeAttackPower` = '252.0', `RangedAttackPower` = '27.0', `Armor` = '3795' WHERE `entry` = '21126';
-- Coilfang Scale-Healer (1) (21842)
UPDATE `creature_template` SET `HealthMultiplier` = '3.915', `PowerMultiplier` = '1.0', `DamageMultiplier` = '10.0', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '21881', `MaxLevelHealth` = '21881', `MinLevelMana` = '3155', `MaxLevelMana` = '3155', `MinMeleeDmg` = '2343', `MaxMeleeDmg` = '3311', `MinRangedDmg` = '1982', `MaxRangedDmg` = '2949', `MeleeAttackPower` = '286.0', `RangedAttackPower` = '33.0', `Armor` = '5474.0' WHERE `entry` = '21842';


-- Coilfang Slavehandler 17959 / 19889
UPDATE creature_template SET UnitFlags=1 WHERE entry IN (17959,19889);
UPDATE creature_template SET LootId=17959, PickpocketLootId=17959 WHERE entry IN (17959,19889);
-- Coilfang Slavehandler (17959)
UPDATE `creature_template` SET `HealthMultiplier` = '3.0', `PowerMultiplier` = '0', `DamageMultiplier` = '4.2', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '16023', `MaxLevelHealth` = '16581', `MinLevelMana` = '0', `MaxLevelMana` = '0', `MinMeleeDmg` = '724', `MaxMeleeDmg` = '1061', `MinRangedDmg` = '585', `MaxRangedDmg` = '919', `MeleeAttackPower` = '268.0', `RangedAttackPower` = '32.0', `Armor` = '4691' WHERE `entry` = '17959';
-- Coilfang Slavehandler (1) (19889)
UPDATE `creature_template` SET `HealthMultiplier` = '4.05', `PowerMultiplier` = '0', `DamageMultiplier` = '10.5', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '28293', `MaxLevelHealth` = '29083', `MinLevelMana` = '0', `MaxLevelMana` = '0', `MinMeleeDmg` = '2651', `MaxMeleeDmg` = '3812', `MinRangedDmg` = '2261', `MaxRangedDmg` = '3422', `MeleeAttackPower` = '308.0', `RangedAttackPower` = '48.0', `Armor` = '7089.0' WHERE `entry` = '19889';


-- Coilfang Soothsayer 17960 / 19890
UPDATE creature_template SET UnitFlags=1 WHERE entry IN (17960,19890);
UPDATE creature_template SET LootId=17960, PickpocketLootId=17960 WHERE entry IN (17960,19890);
-- Coilfang Soothsayer (17960)
UPDATE `creature_template` SET `HealthMultiplier` = '2.9', `PowerMultiplier` = '1.0', `DamageMultiplier` = '4.0', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '10843', `MaxLevelHealth` = '10843', `MinLevelMana` = '6015', `MaxLevelMana` = '6015', `MinMeleeDmg` = '524', `MaxMeleeDmg` = '754', `MinRangedDmg` = '472', `MaxRangedDmg` = '702', `MeleeAttackPower` = '116.0', `RangedAttackPower` = '25.0', `Armor` = '2223.0' WHERE `entry` = '17960';
-- Coilfang Soothsayer (1) (19890)
UPDATE `creature_template` SET `HealthMultiplier` = '3.915', `PowerMultiplier` = '1.0', `DamageMultiplier` = '10.0', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '19144', `MaxLevelHealth` = '19144', `MinLevelMana` = '7196', `MaxLevelMana` = '7196', `MinMeleeDmg` = '1960', `MaxMeleeDmg` = '2843', `MinRangedDmg` = '1807', `MaxRangedDmg` = '2690', `MeleeAttackPower` = '135.0', `RangedAttackPower` = '28.0', `Armor` = '3427.0' WHERE `entry` = '19890';


-- Coilfang Technician 17940 / 19891
UPDATE creature_template SET UnitFlags=1 WHERE entry IN (17940,19891);
UPDATE creature_template SET LootId=17940, PickpocketLootId=17940 WHERE entry IN (17940,19891);
-- Coilfang Technician (17940)
UPDATE `creature_template` SET `HealthMultiplier` = '2.9', `PowerMultiplier` = '1.0', `DamageMultiplier` = '4.0', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '12824', `MaxLevelHealth` = '12824', `MinLevelMana` = '2620', `MaxLevelMana` = '2620', `MinMeleeDmg` = '673', `MaxMeleeDmg` = '937', `MinRangedDmg` = '544', `MaxRangedDmg` = '809', `MeleeAttackPower` = '252.0', `RangedAttackPower` = '27.0', `Armor` = '3795.0' WHERE `entry` = '17940';
-- Coilfang Technician (1) (19891)
UPDATE `creature_template` SET `HealthMultiplier` = '3.915', `PowerMultiplier` = '10.0', `DamageMultiplier` = '10.0', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '21881', `MaxLevelHealth` = '22488', `MinLevelMana` = '31550', `MaxLevelMana` = '32310', `MinMeleeDmg` = '2343', `MaxMeleeDmg` = '3366', `MinRangedDmg` = '1982', `MaxRangedDmg` = '3005', `MeleeAttackPower` = '290.0', `RangedAttackPower` = '37.0', `Armor` = '5714.0' WHERE `entry` = '19891';


-- Coilfang Tempest 21127 / 21843
UPDATE creature_template SET LootId=21127, PickpocketLootId=21127 WHERE entry IN (21127,21843);
-- Coilfang Tempest (21127)
UPDATE `creature_template` SET `HealthMultiplier` = '2.9', `PowerMultiplier` = '0', `DamageMultiplier` = '4.0', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '16028', `MaxLevelHealth` = '16028', `MinLevelMana` = '0', `MaxLevelMana` = '0', `MinMeleeDmg` = '725', `MaxMeleeDmg` = '1010', `MinRangedDmg` = '590', `MaxRangedDmg` = '876', `MeleeAttackPower` = '268.0', `RangedAttackPower` = '32.0', `Armor` = '4691.0' WHERE `entry` = '21127';
-- Coilfang Tempest (1) (21843)
UPDATE `creature_template` SET `HealthMultiplier` = '3.915', `PowerMultiplier` = '0', `DamageMultiplier` = '10.0', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '27350', `MaxLevelHealth` = '27350', `MinLevelMana` = '0', `MaxLevelMana` = '0', `MinMeleeDmg` = '2525', `MaxMeleeDmg` = '3570', `MinRangedDmg` = '2153', `MaxRangedDmg` = '3199', `MeleeAttackPower` = '304.0', `RangedAttackPower` = '44.0', `Armor` = '6792.0' WHERE `entry` = '21843';


-- Greater Bogstrok 17817 / 19892
UPDATE creature_template SET UnitFlags=1 WHERE entry IN (17817,19892);
UPDATE creature_template SET LootId=17817, PickpocketLootId=17817 WHERE entry IN (17817,19892);
-- Greater Bogstrok (17817)
UPDATE `creature_template` SET `HealthMultiplier` = '2.9', `PowerMultiplier` = '0', `DamageMultiplier` = '4.0', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '15489', `MaxLevelHealth` = '15489', `MinLevelMana` = '0', `MaxLevelMana` = '0', `MinMeleeDmg` = '689', `MaxMeleeDmg` = '959', `MinRangedDmg` = '557', `MaxRangedDmg` = '826', `MeleeAttackPower` = '262.0', `RangedAttackPower` = '30.0', `Armor` = '4391.0' WHERE `entry` = '17817';
-- Greater Bogstrok (1) (19892)
UPDATE `creature_template` SET `HealthMultiplier` = '3.915', `PowerMultiplier` = '0', `DamageMultiplier` = '20.0', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '27350', `MaxLevelHealth` = '27350', `MinLevelMana` = '0', `MaxLevelMana` = '0', `MinMeleeDmg` = '4797', `MaxMeleeDmg` = '6783', `MinRangedDmg` = '4307', `MaxRangedDmg` = '6397', `MeleeAttackPower` = '304.0', `RangedAttackPower` = '44.0', `Armor` = '6792.0' WHERE `entry` = '19892';


-- Wastewalker Slave 17963 / 19902
UPDATE creature_template SET UnitFlags=1 WHERE entry IN (17963,19902);
UPDATE creature_template SET LootId=17963 WHERE entry IN (17963,19902);
-- Wastewalker Slave (17963)
UPDATE `creature_template` SET `HealthMultiplier` = '1.0', `PowerMultiplier` = '1.0', `DamageMultiplier` = '2.8', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '3739', `MaxLevelHealth` = '3870', `MinLevelMana` = '6015', `MaxLevelMana` = '6156', `MinMeleeDmg` = '367', `MaxMeleeDmg` = '556', `MinRangedDmg` = '331', `MaxRangedDmg` = '519', `MeleeAttackPower` = '119.0', `RangedAttackPower` = '26.0', `Armor` = '2374.0' WHERE `entry` = '17963';
-- Wastewalker Slave (1) (19902)
UPDATE `creature_template` SET `HealthMultiplier` = '1.35', `PowerMultiplier` = '1.0', `DamageMultiplier` = '7.0', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '6602', `MaxLevelHealth` = '6786', `MinLevelMana` = '7196', `MaxLevelMana` = '7332', `MinMeleeDmg` = '1372', `MaxMeleeDmg` = '2077', `MinRangedDmg` = '1265', `MaxRangedDmg` = '1971', `MeleeAttackPower` = '137.0', `RangedAttackPower` = '31.0', `Armor` = '3577.0' WHERE `entry` = '19902';


-- Wastewalker Worker 17964 / 19904
UPDATE creature_template SET UnitFlags=1 WHERE entry IN (17964,19904);
UPDATE creature_template SET LootId=17964 WHERE entry IN (17964,19904);
-- Wastewalker Worker (17964)
UPDATE `creature_template` SET `HealthMultiplier` = '1.0', `PowerMultiplier` = '0', `DamageMultiplier` = '3.6', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '5341', `MaxLevelHealth` = '5527', `MinLevelMana` = '0', `MaxLevelMana` = '0', `MinMeleeDmg` = '372', `MaxMeleeDmg` = '546', `MinRangedDmg` = '501', `MaxRangedDmg` = '788', `MeleeAttackPower` = '268.0', `RangedAttackPower` = '32.0', `Armor` = '4691.0' WHERE `entry` = '17964';
-- Wastewalker Worker (1) (19904)
UPDATE `creature_template` SET `HealthMultiplier` = '1.35', `PowerMultiplier` = '0', `DamageMultiplier` = '9.0', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '9431', `MaxLevelHealth` = '9694', `MinLevelMana` = '0', `MaxLevelMana` = '0', `MinMeleeDmg` = '1363', `MaxMeleeDmg` = '1961', `MinRangedDmg` = '1938', `MaxRangedDmg` = '2933', `MeleeAttackPower` = '308.0', `RangedAttackPower` = '48.0', `Armor` = '7089.0' WHERE `entry` = '19904';



-- ================================
-- Coilfang Reservoir: The Underbog
-- ================================
-- Bog Giant 17723 / 20164
UPDATE creature_template SET LootId=17723, SkinningLootId=80001 WHERE entry IN (17723,20164);
-- Bog Giant (17723)
UPDATE `creature_template` SET `HealthMultiplier` = '6.6', `PowerMultiplier` = '0', `DamageMultiplier` = '7.21', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '36478', `MaxLevelHealth` = '36478', `MinLevelMana` = '0', `MaxLevelMana` = '0', `MinMeleeDmg` = '1307', `MaxMeleeDmg` = '1822', `MinRangedDmg` = '1032', `MaxRangedDmg` = '1532', `MeleeAttackPower` = '268.0', `RangedAttackPower` = '32.0', `Armor` = '4691.0' WHERE `entry` = '17723';
-- Bog Giant (1) (20164)
UPDATE `creature_template` SET `HealthMultiplier` = '8.91', `PowerMultiplier` = '0', `DamageMultiplier` = '20.0', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '62245', `MaxLevelHealth` = '62245', `MinLevelMana` = '0', `MaxLevelMana` = '0', `MinMeleeDmg` = '4544', `MaxMeleeDmg` = '6426', `MinRangedDmg` = '4307', `MaxRangedDmg` = '6397', `MeleeAttackPower` = '304.0', `RangedAttackPower` = '44.0', `Armor` = '6792.0' WHERE `entry` = '20164';


-- Claw 17827 / 20165
-- Claw (17827)
UPDATE `creature_template` SET `HealthMultiplier` = '9.0', `PowerMultiplier` = '0', `DamageMultiplier` = '1.0', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.567', `MinLevelHealth` = '53226', `MaxLevelHealth` = '53226', `MinLevelMana` = '0', `MaxLevelMana` = '0', `MinMeleeDmg` = '401', `MaxMeleeDmg` = '562', `MinRangedDmg` = '166', `MaxRangedDmg` = '246', `MeleeAttackPower` = '278.0', `RangedAttackPower` = '35.0', `Armor` = '8291.0' WHERE `entry` = '17827';
-- Claw (1) (20165)
UPDATE `creature_template` SET `HealthMultiplier` = '12.15', `PowerMultiplier` = '0', `DamageMultiplier` = '2.5', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.567', `MinLevelHealth` = '89667', `MaxLevelHealth` = '89667', `MinLevelMana` = '0', `MaxLevelMana` = '0', `MinMeleeDmg` = '1305', `MaxMeleeDmg` = '1845', `MinRangedDmg` = '559', `MaxRangedDmg` = '829', `MeleeAttackPower` = '314.0', `RangedAttackPower` = '53.0', `Armor` = '11575' WHERE `entry` = '20165';


-- Fen Ray 17731 / 20173
UPDATE creature_template SET UnitFlags=1 WHERE entry IN (17731,20173);
UPDATE creature_template SET LootId=17731, SkinningLootId=70065 WHERE entry IN (17731,20173);
-- Fen Ray (17731)
UPDATE `creature_template` SET `HealthMultiplier` = '2.9', `PowerMultiplier` = '0', `DamageMultiplier` = '3.6', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '16574', `MaxLevelHealth` = '16574', `MinLevelMana` = '0', `MaxLevelMana` = '0', `MinMeleeDmg` = '687', `MaxMeleeDmg` = '960', `MinRangedDmg` = '564', `MaxRangedDmg` = '837', `MeleeAttackPower` = '272.0', `RangedAttackPower` = '33.0', `Armor` = '4991.0' WHERE `entry` = '17731';
-- Fen Ray (1) (20173)
UPDATE `creature_template` SET `HealthMultiplier` = '3.915', `PowerMultiplier` = '0', `DamageMultiplier` = '9.0', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '28114', `MaxLevelHealth` = '28114', `MinLevelMana` = '0', `MaxLevelMana` = '0', `MinMeleeDmg` = '2310', `MaxMeleeDmg` = '3268', `MinRangedDmg` = '1976', `MaxRangedDmg` = '2933', `MeleeAttackPower` = '308.0', `RangedAttackPower` = '48.0', `Armor` = '7089.0' WHERE `entry` = '20173';


-- Lykul Stinger 19632 / 20174
UPDATE creature_template SET LootId=19632 WHERE entry IN (19632,20174);
-- Lykul Stinger (19632)
UPDATE `creature_template` SET `HealthMultiplier` = '2.9', `PowerMultiplier` = '0', `DamageMultiplier` = '3.6', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '16574', `MaxLevelHealth` = '16574', `MinLevelMana` = '0', `MaxLevelMana` = '0', `MinMeleeDmg` = '687', `MaxMeleeDmg` = '960', `MinRangedDmg` = '564', `MaxRangedDmg` = '837', `MeleeAttackPower` = '272.0', `RangedAttackPower` = '33.0', `Armor` = '4991.0' WHERE `entry` = '19632';
-- Lykul Stinger (1) (20174)
UPDATE `creature_template` SET `HealthMultiplier` = '5.5', `PowerMultiplier` = '0', `DamageMultiplier` = '9.0', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '39496', `MaxLevelHealth` = '39496', `MinLevelMana` = '0', `MaxLevelMana` = '0', `MinMeleeDmg` = '2310', `MaxMeleeDmg` = '3268', `MinRangedDmg` = '1976', `MaxRangedDmg` = '2933', `MeleeAttackPower` = '308.0', `RangedAttackPower` = '48.0', `Armor` = '7089.0' WHERE `entry` = '20174';


-- Lykul Wasp 17732 / 20175
UPDATE creature_template SET ModelId1=18722, ModelId2=0, ModelId3=19401, ModelId4=0 WHERE entry IN (17732,20175);
UPDATE creature_template SET LootId=17732 WHERE entry IN (17732,20175);
-- Lykul Wasp (17732)
UPDATE `creature_template` SET `HealthMultiplier` = '2.9', `PowerMultiplier` = '0', `DamageMultiplier` = '3.6', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '16028', `MaxLevelHealth` = '16028', `MinLevelMana` = '0', `MaxLevelMana` = '0', `MinMeleeDmg` = '652', `MaxMeleeDmg` = '909', `MinRangedDmg` = '531', `MaxRangedDmg` = '788', `MeleeAttackPower` = '268.0', `RangedAttackPower` = '32.0', `Armor` = '4691.0' WHERE `entry` = '17732';
-- Lykul Wasp (1) (20175)
UPDATE `creature_template` SET `HealthMultiplier` = '2.9', `PowerMultiplier` = '0', `DamageMultiplier` = '9.0', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '20259', `MaxLevelHealth` = '20259', `MinLevelMana` = '0', `MaxLevelMana` = '0', `MinMeleeDmg` = '2272', `MaxMeleeDmg` = '3213', `MinRangedDmg` = '1938', `MaxRangedDmg` = '2879', `MeleeAttackPower` = '304.0', `RangedAttackPower` = '44.0', `Armor` = '6792.0' WHERE `entry` = '20175';


-- Murkblood Healer 17730 / 20177
UPDATE creature_template SET LootId=17730, PickpocketLootId=17730 WHERE entry IN (17730,20177);
-- Murkblood Healer (17730)
UPDATE `creature_template` SET `HealthMultiplier` = '2.9', `PowerMultiplier` = '5.0', `DamageMultiplier` = '4.0', `DamageVariance` = '1.0', `ArmorMultiplier` = '0.7365', `MinLevelHealth` = '12824', `MaxLevelHealth` = '13259', `MinLevelMana` = '13100', `MaxLevelMana` = '13525', `MinMeleeDmg` = '673', `MaxMeleeDmg` = '989', `MinRangedDmg` = '544', `MaxRangedDmg` = '859', `MeleeAttackPower` = '256.0', `RangedAttackPower` = '28.0', `Armor` = '3036' WHERE `entry` = '17730';
-- Murkblood Healer (1) (20177)
UPDATE `creature_template` SET `MinLevel` = '71', `HealthMultiplier` = '3.915', `PowerMultiplier` = '5.0', `DamageMultiplier` = '5.0', `DamageVariance` = '1.0', `ArmorMultiplier` = '0.825', `MinLevelHealth` = '22488', `MaxLevelHealth` = '22488', `MinLevelMana` = '16155', `MaxLevelMana` = '16155', `MinMeleeDmg` = '1191', `MaxMeleeDmg` = '1683', `MinRangedDmg` = '1010', `MaxRangedDmg` = '1502', `MeleeAttackPower` = '290.0', `RangedAttackPower` = '37.0', `Armor` = '4714' WHERE `entry` = '20177';


-- Murkblood Oracle 17771 / 20179
UPDATE creature_template SET LootId=17771, PickpocketLootId=17771 WHERE entry IN (17771,20179);
-- Murkblood Oracle (17771)
UPDATE `creature_template` SET `HealthMultiplier` = '2.9', `PowerMultiplier` = '5.0', `DamageMultiplier` = '4.0', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '12824', `MaxLevelHealth` = '13259', `MinLevelMana` = '13100', `MaxLevelMana` = '13525', `MinMeleeDmg` = '673', `MaxMeleeDmg` = '989', `MinRangedDmg` = '544', `MaxRangedDmg` = '859', `MeleeAttackPower` = '256.0', `RangedAttackPower` = '28.0', `Armor` = '4036.0' WHERE `entry` = '17771';
-- Murkblood Oracle (1) (20179)
UPDATE `creature_template` SET `HealthMultiplier` = '3.915', `PowerMultiplier` = '5.0', `DamageMultiplier` = '4.0', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '21881', `MaxLevelHealth` = '22488', `MinLevelMana` = '15775', `MaxLevelMana` = '16155', `MinMeleeDmg` = '937', `MaxMeleeDmg` = '1346', `MinRangedDmg` = '793', `MaxRangedDmg` = '1202', `MeleeAttackPower` = '290.0', `RangedAttackPower` = '37.0', `Armor` = '5714.0' WHERE `entry` = '20179';


-- Murkblood Spearman 17729 / 20180
UPDATE creature_template SET LootId=17729, PickpocketLootId=17729 WHERE entry IN (17729,20180);
-- Murkblood Spearman (17729)
UPDATE `creature_template` SET `HealthMultiplier` = '2.9', `PowerMultiplier` = '1.0', `DamageMultiplier` = '4.0', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '12824', `MaxLevelHealth` = '13259', `MinLevelMana` = '2620', `MaxLevelMana` = '2705', `MinMeleeDmg` = '673', `MaxMeleeDmg` = '989', `MinRangedDmg` = '544', `MaxRangedDmg` = '859', `MeleeAttackPower` = '256.0', `RangedAttackPower` = '28.0', `Armor` = '4036.0' WHERE `entry` = '17729';
-- Murkblood Spearman (1) (20180)
UPDATE `creature_template` SET `HealthMultiplier` = '3.915', `PowerMultiplier` = '1.0', `DamageMultiplier` = '5.0', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '21881', `MaxLevelHealth` = '22488', `MinLevelMana` = '3155', `MaxLevelMana` = '3231', `MinMeleeDmg` = '1172', `MaxMeleeDmg` = '1683', `MinRangedDmg` = '991', `MaxRangedDmg` = '1502', `MeleeAttackPower` = '290.0', `RangedAttackPower` = '37.0', `Armor` = '5714.0' WHERE `entry` = '20180';


-- Murkblood Tribesman 17728 / 20181
UPDATE creature_template SET LootId=17728, PickpocketLootId=17728 WHERE entry IN (17728,20181);
-- Murkblood Tribesman (17728)
UPDATE `creature_template` SET `HealthMultiplier` = '2.9', `PowerMultiplier` = '0', `DamageMultiplier` = '4.0', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '16028', `MaxLevelHealth` = '16574', `MinLevelMana` = '0', `MaxLevelMana` = '0', `MinMeleeDmg` = '725', `MaxMeleeDmg` = '1067', `MinRangedDmg` = '590', `MaxRangedDmg` = '930', `MeleeAttackPower` = '272.0', `RangedAttackPower` = '33.0', `Armor` = '4991.0' WHERE `entry` = '17728';
-- Murkblood Tribesman (1) (20181)
UPDATE `creature_template` SET `HealthMultiplier` = '3.915', `PowerMultiplier` = '0', `DamageMultiplier` = '8.0', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '27350', `MaxLevelHealth` = '28114', `MinLevelMana` = '0', `MaxLevelMana` = '0', `MinMeleeDmg` = '2020', `MaxMeleeDmg` = '2905', `MinRangedDmg` = '1723', `MaxRangedDmg` = '2607', `MeleeAttackPower` = '308.0', `RangedAttackPower` = '48.0', `Armor` = '7089.0' WHERE `entry` = '20181';


-- Spore Strider 22299 / 22300
-- Spore Strider (22299)
UPDATE `creature_template` SET `HealthMultiplier` = '1.0', `PowerMultiplier` = '5.0', `DamageMultiplier` = '1.0', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '5589', `MaxLevelHealth` = '5589', `MinLevelMana` = '15775', `MaxLevelMana` = '15775', `MinMeleeDmg` = '234', `MaxMeleeDmg` = '331', `MinRangedDmg` = '198', `MaxRangedDmg` = '295', `MeleeAttackPower` = '286.0', `RangedAttackPower` = '33.0', `Armor` = '5474.0' WHERE `entry` = '22299';
-- Spore Strider (1) (22300)
UPDATE `creature_template` SET `HealthMultiplier` = '1.25', `PowerMultiplier` = '15.0', `DamageMultiplier` = '2.5', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '6986', `MaxLevelHealth` = '6986', `MinLevelMana` = '47325', `MaxLevelMana` = '47325', `MinMeleeDmg` = '586', `MaxMeleeDmg` = '828', `MinRangedDmg` = '495', `MaxRangedDmg` = '737', `MeleeAttackPower` = '286.0', `RangedAttackPower` = '33.0', `Armor` = '5474.0' WHERE `entry` = '22300';


-- Underbat 17724 / 20185
UPDATE creature_template SET LootId=17724, SkinningLootId=70065 WHERE entry IN (17724,20185);
-- Underbat (17724)
UPDATE `creature_template` SET `HealthMultiplier` = '2.9', `PowerMultiplier` = '0', `DamageMultiplier` = '4.0', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '15489', `MaxLevelHealth` = '16028', `MinLevelMana` = '0', `MaxLevelMana` = '0', `MinMeleeDmg` = '689', `MaxMeleeDmg` = '1010', `MinRangedDmg` = '557', `MaxRangedDmg` = '876', `MeleeAttackPower` = '268.0', `RangedAttackPower` = '32.0', `Armor` = '4691.0' WHERE `entry` = '17724';
-- Underbat (1) (20185)
UPDATE `creature_template` SET `HealthMultiplier` = '3.915', `PowerMultiplier` = '0', `DamageMultiplier` = '20.0', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '27350', `MaxLevelHealth` = '27350', `MinLevelMana` = '0', `MaxLevelMana` = '0', `MinMeleeDmg` = '5050', `MaxMeleeDmg` = '7140', `MinRangedDmg` = '4307', `MaxRangedDmg` = '6397', `MeleeAttackPower` = '304.0', `RangedAttackPower` = '44.0', `Armor` = '6792.0' WHERE `entry` = '20185';


-- Underbog Frenzy 20465 / 21943
UPDATE creature_template SET FactionAlliance=1878, FactionHorde=1878 WHERE entry IN (20465,21943);
-- Underbog Frenzy (20465)
UPDATE `creature_template` SET `HealthMultiplier` = '6.0', `PowerMultiplier` = '0', `DamageMultiplier` = '10.0', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '19422', `MaxLevelHealth` = '19986', `MinLevelMana` = '0', `MaxLevelMana` = '0', `MinMeleeDmg` = '647', `MaxMeleeDmg` = '876', `MinRangedDmg` = '748', `MaxRangedDmg` = '1123', `MeleeAttackPower` = '268.0', `RangedAttackPower` = '32.0', `Armor` = '4691' WHERE `entry` = '20465';
-- Underbog Frenzy (1) (21943)
UPDATE `creature_template` SET `Expansion` = '0', `HealthMultiplier` = '8.1', `PowerMultiplier` = '0', `DamageMultiplier` = '20.0', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '32806', `MaxLevelHealth` = '32806', `MinLevelMana` = '0', `MaxLevelMana` = '0', `MinMeleeDmg` = '1495', `MaxMeleeDmg` = '1982', `MinRangedDmg` = '1749', `MaxRangedDmg` = '2560', `MeleeAttackPower` = '304.0', `RangedAttackPower` = '44.0', `Armor` = '6792.0' WHERE `entry` = '21943';


-- Underbog Lord 17734 / 20187
UPDATE creature_template SET LootId=17734, SkinningLootId=80001 WHERE entry IN (17734,20187);
-- Underbog Lord (17734)
UPDATE `creature_template` SET `HealthMultiplier` = '8.0', `PowerMultiplier` = '0', `DamageMultiplier` = '8.0', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '45720', `MaxLevelHealth` = '45720', `MinLevelMana` = '0', `MaxLevelMana` = '0', `MinMeleeDmg` = '1907', `MaxMeleeDmg` = '2667', `MinRangedDmg` = '1253', `MaxRangedDmg` = '1860', `MeleeAttackPower` = '272.0', `RangedAttackPower` = '33.0', `Armor` = '4991.0' WHERE `entry` = '17734';
-- Underbog Lord (1) (20187)
UPDATE `creature_template` SET `HealthMultiplier` = '10.0', `PowerMultiplier` = '0', `DamageMultiplier` = '20.0', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '71810', `MaxLevelHealth` = '71810', `MinLevelMana` = '0', `MaxLevelMana` = '0', `MinMeleeDmg` = '6418', `MaxMeleeDmg` = '9077', `MinRangedDmg` = '4391', `MaxRangedDmg` = '6519', `MeleeAttackPower` = '308.0', `RangedAttackPower` = '48.0', `Armor` = '7089.0' WHERE `entry` = '20187';


-- Underbog Lurker 17725 / 20188
UPDATE creature_template SET UnitFlags=1, MeleeBaseAttackTime=2500, RangedBaseAttackTime=2000 WHERE entry IN (17725,20188);
UPDATE creature_template SET LootId=17725, SkinningLootId=80001 WHERE entry IN (17725,20188);
-- Underbog Lurker (17725)
UPDATE `creature_template` SET `HealthMultiplier` = '2.9', `PowerMultiplier` = '0', `DamageMultiplier` = '4.0', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '15489', `MaxLevelHealth` = '16028', `MinLevelMana` = '0', `MaxLevelMana` = '0', `MinMeleeDmg` = '862', `MaxMeleeDmg` = '1263', `MinRangedDmg` = '557', `MaxRangedDmg` = '876', `MeleeAttackPower` = '268.0', `RangedAttackPower` = '32.0', `Armor` = '4691.0' WHERE `entry` = '17725';
-- Underbog Lurker (1) (20188)
UPDATE `creature_template` SET `HealthMultiplier` = '3.915', `PowerMultiplier` = '0', `DamageMultiplier` = '20.0', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '26469', `MaxLevelHealth` = '27350', `MinLevelMana` = '0', `MaxLevelMana` = '0', `MinMeleeDmg` = '6041', `MaxMeleeDmg` = '8925', `MinRangedDmg` = '4104', `MaxRangedDmg` = '6397', `MeleeAttackPower` = '304.0', `RangedAttackPower` = '44.0', `Armor` = '6792.0' WHERE `entry` = '20188';


-- Underbog Mushroom 17990 / 20189
-- Underbog Mushroom (17990)
UPDATE `creature_template` SET `HealthMultiplier` = '6.0', `PowerMultiplier` = '0', `DamageMultiplier` = '1.0', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '35484', `MaxLevelHealth` = '35484', `MinLevelMana` = '0', `MaxLevelMana` = '0', `MinMeleeDmg` = '200', `MaxMeleeDmg` = '281', `MinRangedDmg` = '166', `MaxRangedDmg` = '246', `MeleeAttackPower` = '278.0', `RangedAttackPower` = '35.0', `Armor` = '5291.0' WHERE `entry` = '17990';
-- Underbog Mushroom (1) (20189)
UPDATE `creature_template` SET `HealthMultiplier` = '8.1', `PowerMultiplier` = '0', `DamageMultiplier` = '2.5', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '59778', `MaxLevelHealth` = '59778', `MinLevelMana` = '0', `MaxLevelMana` = '0', `MinMeleeDmg` = '652', `MaxMeleeDmg` = '923', `MinRangedDmg` = '559', `MaxRangedDmg` = '829', `MeleeAttackPower` = '314.0', `RangedAttackPower` = '53.0', `Armor` = '7387.0' WHERE `entry` = '20189';


-- Underbog Shambler 17871 / 20190
UPDATE creature_template SET UnitFlags=1 WHERE entry IN (17871,20190);
UPDATE creature_template SET LootId=17871, SkinningLootId=80001 WHERE entry IN (17871,20190);
-- Underbog Shambler (17871)
UPDATE `creature_template` SET `HealthMultiplier` = '2.9', `PowerMultiplier` = '2.0', `DamageMultiplier` = '3.6', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '12395', `MaxLevelHealth` = '12824', `MinLevelMana` = '5136', `MaxLevelMana` = '5240', `MinMeleeDmg` = '720', `MaxMeleeDmg` = '1055', `MinRangedDmg` = '463', `MaxRangedDmg` = '728', `MeleeAttackPower` = '252.0', `RangedAttackPower` = '27.0', `Armor` = '3795.0' WHERE `entry` = '17871';
-- Underbog Shambler (1) (20190)
UPDATE `creature_template` SET `HealthMultiplier` = '3.9', `PowerMultiplier` = '2.0', `DamageMultiplier` = '8.0', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.25', `MinLevelHealth` = '21797', `MaxLevelHealth` = '21797', `MinLevelMana` = '6310', `MaxLevelMana` = '6310', `MinMeleeDmg` = '2343', `MaxMeleeDmg` = '3311', `MinRangedDmg` = '1585', `MaxRangedDmg` = '2359', `MeleeAttackPower` = '286.0', `RangedAttackPower` = '33.0', `Armor` = '6843.0' WHERE `entry` = '20190';


-- Wrathfin Myrmidon 17726 / 20191
UPDATE creature_template SET LootId=17726, PickpocketLootId=17726 WHERE entry IN (17726,20191);
-- Wrathfin Myrmidon (17726)
UPDATE `creature_template` SET `HealthMultiplier` = '2.9', `PowerMultiplier` = '0', `DamageMultiplier` = '4.0', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '16574', `MaxLevelHealth` = '16574', `MinLevelMana` = '0', `MaxLevelMana` = '0', `MinMeleeDmg` = '763', `MaxMeleeDmg` = '1067', `MinRangedDmg` = '626', `MaxRangedDmg` = '930', `MeleeAttackPower` = '272.0', `RangedAttackPower` = '33.0', `Armor` = '4991.0' WHERE `entry` = '17726';
-- Wrathfin Myrmidon (1) (20191)
UPDATE `creature_template` SET `HealthMultiplier` = '3.915', `PowerMultiplier` = '0', `DamageMultiplier` = '17.0', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '28114', `MaxLevelHealth` = '28114', `MinLevelMana` = '0', `MaxLevelMana` = '0', `MinMeleeDmg` = '4364', `MaxMeleeDmg` = '6172', `MinRangedDmg` = '3733', `MaxRangedDmg` = '5541', `MeleeAttackPower` = '308.0', `RangedAttackPower` = '48.0', `Armor` = '7089.0' WHERE `entry` = '20191';


-- Wrathfin Sentry 17727 / 20192
UPDATE creature_template SET LootId=17727, PickpocketLootId=17727 WHERE entry IN (17727,20192);
-- Wrathfin Sentry (17727)
UPDATE `creature_template` SET `HealthMultiplier` = '2.9', `PowerMultiplier` = '0', `DamageMultiplier` = '4.0', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '16574', `MaxLevelHealth` = '16574', `MinLevelMana` = '0', `MaxLevelMana` = '0', `MinMeleeDmg` = '763', `MaxMeleeDmg` = '1067', `MinRangedDmg` = '626', `MaxRangedDmg` = '930', `MeleeAttackPower` = '272.0', `RangedAttackPower` = '33.0', `Armor` = '4991.0' WHERE `entry` = '17727';
-- Wrathfin Sentry (1) (20192)
UPDATE `creature_template` SET `HealthMultiplier` = '3.915', `PowerMultiplier` = '0', `DamageMultiplier` = '17.0', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '28114', `MaxLevelHealth` = '28114', `MinLevelMana` = '0', `MaxLevelMana` = '0', `MinMeleeDmg` = '4364', `MaxMeleeDmg` = '6172', `MinRangedDmg` = '3733', `MaxRangedDmg` = '5541', `MeleeAttackPower` = '308.0', `RangedAttackPower` = '48.0', `Armor` = '7089.0' WHERE `entry` = '20192';


-- Wrathfin Warrior 17735 / 20193
UPDATE creature_template SET LootId=17735, PickpocketLootId=17735 WHERE entry IN (17735,20193);
-- Wrathfin Warrior (17735)
UPDATE `creature_template` SET `HealthMultiplier` = '2.9', `PowerMultiplier` = '0', `DamageMultiplier` = '4.0', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '16574', `MaxLevelHealth` = '16574', `MinLevelMana` = '0', `MaxLevelMana` = '0', `MinMeleeDmg` = '763', `MaxMeleeDmg` = '1067', `MinRangedDmg` = '626', `MaxRangedDmg` = '930', `MeleeAttackPower` = '272.0', `RangedAttackPower` = '33.0', `Armor` = '4991.0' WHERE `entry` = '17735';
-- Wrathfin Warrior (1) (20193)
UPDATE `creature_template` SET `HealthMultiplier` = '3.915', `PowerMultiplier` = '0', `DamageMultiplier` = '17.0', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '28114', `MaxLevelHealth` = '28114', `MinLevelMana` = '0', `MaxLevelMana` = '0', `MinMeleeDmg` = '4364', `MaxMeleeDmg` = '6172', `MinRangedDmg` = '3733', `MaxRangedDmg` = '5541', `MeleeAttackPower` = '308.0', `RangedAttackPower` = '48.0', `Armor` = '7089.0' WHERE `entry` = '20193';



-- ==================================
-- Coilfang Reservoir: The Steamvault
-- ==================================
-- Bog Overlord 21694 / 21914
UPDATE creature_template SET LootId=21694, SkinningLootId=80001 WHERE entry IN (21694,21914);
-- Bog Overlord (21694)
UPDATE `creature_template` SET `HealthMultiplier` = '6.5', `PowerMultiplier` = '0', `DamageMultiplier` = '13.0', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '45409', `MaxLevelHealth` = '45409', `MinLevelMana` = '0', `MaxLevelMana` = '0', `MinMeleeDmg` = '3282', `MaxMeleeDmg` = '4641', `MinRangedDmg` = '2799', `MaxRangedDmg` = '4158', `MeleeAttackPower` = '304.0', `RangedAttackPower` = '44.0', `Armor` = '6792.0' WHERE `entry` = '21694';
-- Bog Overlord (1) (21914)
UPDATE `creature_template` SET `HealthMultiplier` = '8.775', `PowerMultiplier` = '0', `DamageMultiplier` = '30.0', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '61302', `MaxLevelHealth` = '61302', `MinLevelMana` = '0', `MaxLevelMana` = '0', `MinMeleeDmg` = '7069', `MaxMeleeDmg` = '9996', `MinRangedDmg` = '2799', `MaxRangedDmg` = '4158', `MeleeAttackPower` = '304.0', `RangedAttackPower` = '44.0', `Armor` = '6792.0' WHERE `entry` = '21914';


-- Coilfang Engineer 17721 / 20620
UPDATE creature_template SET LootId=17721, PickpocketLootId=17721 WHERE entry IN (17721,20620);
-- Coilfang Engineer (17721)
UPDATE `creature_template` SET `HealthMultiplier` = '2.9', `PowerMultiplier` = '0', `DamageMultiplier` = '4.66', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '20259', `MaxLevelHealth` = '20259', `MinLevelMana` = '0', `MaxLevelMana` = '0', `MinMeleeDmg` = '1177', `MaxMeleeDmg` = '1664', `MinRangedDmg` = '1012', `MaxRangedDmg` = '1503', `MeleeAttackPower` = '304.0', `RangedAttackPower` = '44.0', `Armor` = '6792.0' WHERE `entry` = '17721';
-- Coilfang Engineer (1) (20620)
UPDATE `creature_template` SET `HealthMultiplier` = '3.915', `PowerMultiplier` = '0', `DamageMultiplier` = '11.5', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '27350', `MaxLevelHealth` = '27350', `MinLevelMana` = '0', `MaxLevelMana` = '0', `MinMeleeDmg` = '2904', `MaxMeleeDmg` = '4106', `MinRangedDmg` = '2476', `MaxRangedDmg` = '3678', `MeleeAttackPower` = '304.0', `RangedAttackPower` = '44.0', `Armor` = '6792.0' WHERE `entry` = '20620';


-- Coilfang Leper 21338 / 21915
UPDATE creature_template SET LootId=21338 WHERE entry IN (21338,21915);
-- Coilfang Leper (21338)
UPDATE `creature_template` SET `HealthMultiplier` = '1.0', `PowerMultiplier` = '1.0', `DamageMultiplier` = '1.75', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '5589', `MaxLevelHealth` = '5589', `MinLevelMana` = '3155', `MaxLevelMana` = '3155', `MinMeleeDmg` = '410', `MaxMeleeDmg` = '579', `MinRangedDmg` = '357', `MaxRangedDmg` = '531', `MeleeAttackPower` = '286.0', `RangedAttackPower` = '33.0', `Armor` = '5474.0' WHERE `entry` = '21338';
-- Coilfang Leper (1) (21915)
UPDATE `creature_template` SET `HealthMultiplier` = '1.1', `PowerMultiplier` = '1.0', `DamageMultiplier` = '3.5', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '6148', `MaxLevelHealth` = '6148', `MinLevelMana` = '3155', `MaxLevelMana` = '3155', `MinMeleeDmg` = '820', `MaxMeleeDmg` = '1159', `MinRangedDmg` = '694', `MaxRangedDmg` = '1032', `MeleeAttackPower` = '286.0', `RangedAttackPower` = '33.0', `Armor` = '5474.0' WHERE `entry` = '21915';


-- Coilfang Myrmidon 17800 / 20621
UPDATE creature_template SET LootId=17800, PickpocketLootId=17800 WHERE entry IN (17800,20621);
-- Coilfang Myrmidon (17800)
UPDATE `creature_template` SET `HealthMultiplier` = '2.9', `PowerMultiplier` = '0', `DamageMultiplier` = '4.66', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '20259', `MaxLevelHealth` = '20259', `MinLevelMana` = '0', `MaxLevelMana` = '0', `MinMeleeDmg` = '1177', `MaxMeleeDmg` = '1664', `MinRangedDmg` = '1012', `MaxRangedDmg` = '1503', `MeleeAttackPower` = '304.0', `RangedAttackPower` = '44.0', `Armor` = '6792.0' WHERE `entry` = '17800';
-- Coilfang Myrmidon (1) (20621)
UPDATE `creature_template` SET `HealthMultiplier` = '3.915', `PowerMultiplier` = '0', `DamageMultiplier` = '11.5', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '27350', `MaxLevelHealth` = '27350', `MinLevelMana` = '0', `MaxLevelMana` = '0', `MinMeleeDmg` = '2904', `MaxMeleeDmg` = '4106', `MinRangedDmg` = '2476', `MaxRangedDmg` = '3678', `MeleeAttackPower` = '304.0', `RangedAttackPower` = '44.0', `Armor` = '6792.0' WHERE `entry` = '20621';


-- Coilfang Oracle 17803 / 20622
UPDATE creature_template SET LootId=17803, PickpocketLootId=17803 WHERE entry IN (17803,20622);
-- Coilfang Oracle (17803)
UPDATE `creature_template` SET `HealthMultiplier` = '2.9', `PowerMultiplier` = '5.0', `DamageMultiplier` = '4.66', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '16208', `MaxLevelHealth` = '16208', `MinLevelMana` = '15775', `MaxLevelMana` = '15775', `MinMeleeDmg` = '1092', `MaxMeleeDmg` = '1543', `MinRangedDmg` = '931', `MaxRangedDmg` = '1386', `MeleeAttackPower` = '286.0', `RangedAttackPower` = '33.0', `Armor` = '5474.0' WHERE `entry` = '17803';
-- Coilfang Oracle (1) (20622)
UPDATE `creature_template` SET `HealthMultiplier` = '3.915', `PowerMultiplier` = '5.0', `DamageMultiplier` = '11.5', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '21881', `MaxLevelHealth` = '21881', `MinLevelMana` = '15775', `MaxLevelMana` = '15775', `MinMeleeDmg` = '2695', `MaxMeleeDmg` = '3807', `MinRangedDmg` = '2279', `MaxRangedDmg` = '3392', `MeleeAttackPower` = '286.0', `RangedAttackPower` = '33.0', `Armor` = '5474.0' WHERE `entry` = '20622';


-- Coilfang Siren 17801 / 20623
UPDATE creature_template SET LootId=17801, PickpocketLootId=17801 WHERE entry IN (17801,20623);
-- Coilfang Siren (17801)
UPDATE `creature_template` SET `HealthMultiplier` = '2.9', `PowerMultiplier` = '5.0', `DamageMultiplier` = '4.66', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '16208', `MaxLevelHealth` = '16208', `MinLevelMana` = '15775', `MaxLevelMana` = '15775', `MinMeleeDmg` = '1092', `MaxMeleeDmg` = '1543', `MinRangedDmg` = '931', `MaxRangedDmg` = '1386', `MeleeAttackPower` = '286.0', `RangedAttackPower` = '33.0', `Armor` = '5474.0' WHERE `entry` = '17801';
-- Coilfang Siren (1) (20623)
UPDATE `creature_template` SET `HealthMultiplier` = '3.915', `PowerMultiplier` = '5.0', `DamageMultiplier` = '11.5', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '21881', `MaxLevelHealth` = '21881', `MinLevelMana` = '15775', `MaxLevelMana` = '15775', `MinMeleeDmg` = '2695', `MaxMeleeDmg` = '3807', `MinRangedDmg` = '2279', `MaxRangedDmg` = '3392', `MeleeAttackPower` = '286.0', `RangedAttackPower` = '33.0', `Armor` = '5474.0' WHERE `entry` = '20623';


-- Coilfang Slavemaster 17805 / 20624
UPDATE creature_template SET LootId=17805, PickpocketLootId=17805 WHERE entry IN (17805,20624);
-- Coilfang Slavemaster (17805)
UPDATE `creature_template` SET `HealthMultiplier` = '2.9', `PowerMultiplier` = '0', `DamageMultiplier` = '4.66', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '20259', `MaxLevelHealth` = '20259', `MinLevelMana` = '0', `MaxLevelMana` = '0', `MinMeleeDmg` = '1177', `MaxMeleeDmg` = '1664', `MinRangedDmg` = '1012', `MaxRangedDmg` = '1503', `MeleeAttackPower` = '304.0', `RangedAttackPower` = '44.0', `Armor` = '6792.0' WHERE `entry` = '17805';
-- Coilfang Slavemaster (1) (20624)
UPDATE `creature_template` SET `HealthMultiplier` = '3.915', `PowerMultiplier` = '0', `DamageMultiplier` = '11.5', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '27350', `MaxLevelHealth` = '27350', `MinLevelMana` = '0', `MaxLevelMana` = '0', `MinMeleeDmg` = '2904', `MaxMeleeDmg` = '4106', `MinRangedDmg` = '2476', `MaxRangedDmg` = '3678', `MeleeAttackPower` = '304.0', `RangedAttackPower` = '44.0', `Armor` = '6792.0' WHERE `entry` = '20624';


-- Coilfang Sorceress 17722 / 20625
UPDATE creature_template SET LootId=17722, PickpocketLootId=17722 WHERE entry IN (17722,20625);
-- Coilfang Sorceress (17722)
UPDATE `creature_template` SET `HealthMultiplier` = '4.0', `PowerMultiplier` = '5.0', `DamageMultiplier` = '4.66', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '22356', `MaxLevelHealth` = '22356', `MinLevelMana` = '15775', `MaxLevelMana` = '15775', `MinMeleeDmg` = '1092', `MaxMeleeDmg` = '1543', `MinRangedDmg` = '931', `MaxRangedDmg` = '1386', `MeleeAttackPower` = '286.0', `RangedAttackPower` = '33.0', `Armor` = '5474.0' WHERE `entry` = '17722';
-- Coilfang Sorceress (1) (20625)
UPDATE `creature_template` SET `HealthMultiplier` = '5.4', `PowerMultiplier` = '5.0', `DamageMultiplier` = '11.5', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '30181', `MaxLevelHealth` = '30181', `MinLevelMana` = '15775', `MaxLevelMana` = '15775', `MinMeleeDmg` = '2695', `MaxMeleeDmg` = '3807', `MinRangedDmg` = '2279', `MaxRangedDmg` = '3392', `MeleeAttackPower` = '286.0', `RangedAttackPower` = '33.0', `Armor` = '5474.0' WHERE `entry` = '20625';


-- Coilfang Warrior 17802 / 20626
UPDATE creature_template SET LootId=17802, PickpocketLootId=17802 WHERE entry IN (17802,20626);
-- Coilfang Warrior (17802)
UPDATE `creature_template` SET `HealthMultiplier` = '2.9', `PowerMultiplier` = '0', `DamageMultiplier` = '4.66', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '20259', `MaxLevelHealth` = '20259', `MinLevelMana` = '0', `MaxLevelMana` = '0', `MinMeleeDmg` = '1177', `MaxMeleeDmg` = '1664', `MinRangedDmg` = '1012', `MaxRangedDmg` = '1503', `MeleeAttackPower` = '304.0', `RangedAttackPower` = '44.0', `Armor` = '6792.0' WHERE `entry` = '17802';
-- Coilfang Warrior (1) (20626)
UPDATE `creature_template` SET `HealthMultiplier` = '3.915', `PowerMultiplier` = '0', `DamageMultiplier` = '11.5', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '27350', `MaxLevelHealth` = '27350', `MinLevelMana` = '0', `MaxLevelMana` = '0', `MinMeleeDmg` = '2904', `MaxMeleeDmg` = '4106', `MinRangedDmg` = '2476', `MaxRangedDmg` = '3678', `MeleeAttackPower` = '304.0', `RangedAttackPower` = '44.0', `Armor` = '6792.0' WHERE `entry` = '20626';


-- Coilfang Water Elemental 17917 / 20627
UPDATE creature_template SET LootId=17917 WHERE entry IN (17917,20627);
-- Coilfang Water Elemental (17917)
UPDATE `creature_template` SET `HealthMultiplier` = '3.0', `PowerMultiplier` = '1.0', `DamageMultiplier` = '1.5', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '16767', `MaxLevelHealth` = '16767', `MinLevelMana` = '3155', `MaxLevelMana` = '3155', `MinMeleeDmg` = '351', `MaxMeleeDmg` = '497', `MinRangedDmg` = '297', `MaxRangedDmg` = '442', `MeleeAttackPower` = '286.0', `RangedAttackPower` = '33.0', `Armor` = '5474.0' WHERE `entry` = '17917';
-- Coilfang Water Elemental (1) (20627)
UPDATE `creature_template` SET `HealthMultiplier` = '4.05', `PowerMultiplier` = '1.0', `DamageMultiplier` = '12.0', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '22635', `MaxLevelHealth` = '22635', `MinLevelMana` = '3155', `MaxLevelMana` = '3155', `MinMeleeDmg` = '2812', `MaxMeleeDmg` = '3973', `MinRangedDmg` = '2378', `MaxRangedDmg` = '3539', `MeleeAttackPower` = '286.0', `RangedAttackPower` = '33.0', `Armor` = '5474.0' WHERE `entry` = '20627';


-- Dreghood Slave 17799 / 20628 - (OFFICIAL DATA HEROIC DAMAGE EXAMPLE IN CASE OTHER NPC ARE OVER POWERED AT 11.5 DAMAGE MULTIPLIER)
UPDATE creature_template SET LootId=17799, PickpocketLootId=17799 WHERE entry IN (17799,20628);
-- Dreghood Slave (17799)
UPDATE `creature_template` SET `HealthMultiplier` = '2.9', `PowerMultiplier` = '0', `DamageMultiplier` = '4.66', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '20259', `MaxLevelHealth` = '20259', `MinLevelMana` = '0', `MaxLevelMana` = '0', `MinMeleeDmg` = '706', `MaxMeleeDmg` = '999', `MinRangedDmg` = '1012', `MaxRangedDmg` = '1503', `MeleeAttackPower` = '304.0', `RangedAttackPower` = '44.0', `Armor` = '6792.0' WHERE `entry` = '17799';
-- Dreghood Slave (1) (20628)
UPDATE `creature_template` SET `HealthMultiplier` = '3.915', `PowerMultiplier` = '0', `DamageMultiplier` = '7.0', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '27350', `MaxLevelHealth` = '27350', `MinLevelMana` = '0', `MaxLevelMana` = '0', `MinMeleeDmg` = '984', `MaxMeleeDmg` = '1392', `MinRangedDmg` = '3015', `MaxRangedDmg` = '4478', `MeleeAttackPower` = '304.0', `RangedAttackPower` = '44.0', `Armor` = '6792.0' WHERE `entry` = '20628';


-- Steam Surger 21696 / 21916
UPDATE creature_template SET LootId=21696 WHERE entry IN (21696,21916);
-- Steam Surger (21696)
UPDATE `creature_template` SET `HealthMultiplier` = '0.5', `PowerMultiplier` = '1.0', `DamageMultiplier` = '1.5', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '2795', `MaxLevelHealth` = '2795', `MinLevelMana` = '3155', `MaxLevelMana` = '3155', `MinMeleeDmg` = '351', `MaxMeleeDmg` = '497', `MinRangedDmg` = '297', `MaxRangedDmg` = '442', `MeleeAttackPower` = '286.0', `RangedAttackPower` = '33.0', `Armor` = '5474.0' WHERE `entry` = '21696';
-- Steam Surger (1) (21916)
UPDATE `creature_template` SET `HealthMultiplier` = '0.675', `PowerMultiplier` = '1.0', `DamageMultiplier` = '4.0', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '3773', `MaxLevelHealth` = '3773', `MinLevelMana` = '3155', `MaxLevelMana` = '3155', `MinMeleeDmg` = '937', `MaxMeleeDmg` = '1324', `MinRangedDmg` = '793', `MaxRangedDmg` = '1180', `MeleeAttackPower` = '286.0', `RangedAttackPower` = '33.0', `Armor` = '5474.0' WHERE `entry` = '21916';


-- Steamrigger Mechanic 17951 / 20632 - No Work Required
-- Steamrigger Mechanic (17951)
UPDATE `creature_template` SET `HealthMultiplier` = '1.0', `PowerMultiplier` = '1.0', `DamageMultiplier` = '1.3', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '5589', `MaxLevelHealth` = '5589', `MinLevelMana` = '3155', `MaxLevelMana` = '3155', `MinMeleeDmg` = '305', `MaxMeleeDmg` = '430', `MinRangedDmg` = '258', `MaxRangedDmg` = '383', `MeleeAttackPower` = '286.0', `RangedAttackPower` = '33.0', `Armor` = '5474.0' WHERE `entry` = '17951';
-- Steamrigger Mechanic (1) (20632)
UPDATE `creature_template` SET `HealthMultiplier` = '2.1', `PowerMultiplier` = '1.0', `DamageMultiplier` = '5.0', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '11737', `MaxLevelHealth` = '11737', `MinLevelMana` = '3155', `MaxLevelMana` = '3155', `MinMeleeDmg` = '1172', `MaxMeleeDmg` = '1655', `MinRangedDmg` = '991', `MaxRangedDmg` = '1475', `MeleeAttackPower` = '286.0', `RangedAttackPower` = '33.0', `Armor` = '5474.0' WHERE `entry` = '20632';


-- Tidal Surger 21695 / 21917
UPDATE creature_template SET LootId=21695 WHERE entry IN (21695,21917);
-- Tidal Surger (21695)
UPDATE `creature_template` SET `HealthMultiplier` = '6.0', `PowerMultiplier` = '1.0', `DamageMultiplier` = '5.5', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '33534', `MaxLevelHealth` = '33534', `MinLevelMana` = '3155', `MaxLevelMana` = '3155', `MinMeleeDmg` = '1289', `MaxMeleeDmg` = '1821', `MinRangedDmg` = '1090', `MaxRangedDmg` = '1622', `MeleeAttackPower` = '286.0', `RangedAttackPower` = '33.0', `Armor` = '5474.0' WHERE `entry` = '21695';
-- Tidal Surger (1) (21917)
UPDATE `creature_template` SET `HealthMultiplier` = '8.1', `PowerMultiplier` = '1.0', `DamageMultiplier` = '12.0', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '45271', `MaxLevelHealth` = '45271', `MinLevelMana` = '3155', `MaxLevelMana` = '3155', `MinMeleeDmg` = '2812', `MaxMeleeDmg` = '3973', `MinRangedDmg` = '2378', `MaxRangedDmg` = '3539', `MeleeAttackPower` = '286.0', `RangedAttackPower` = '33.0', `Armor` = '5474.0' WHERE `entry` = '21917';



-- ===================================
-- Hellfire Citadel: Hellfire Ramparts
-- ===================================
-- Bleeding Hollow Archer 17270 / 18048 -- Recalculate Heroic Damage Data
UPDATE creature_template SET UnitFlags=32832 WHERE entry IN (17270,18048);
UPDATE creature_template SET LootId=17270, PickpocketLootId=17270 WHERE entry IN (17270,18048);
-- Bleeding Hollow Archer (17270)
UPDATE `creature_template` SET `HealthMultiplier` = '2.9', `PowerMultiplier` = '1.0', `DamageMultiplier` = '4.0', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '11554', `MaxLevelHealth` = '11965', `MinLevelMana` = '2434', `MaxLevelMana` = '2486', `MinMeleeDmg` = '346', `MaxMeleeDmg` = '504', `MinRangedDmg` = '454', `MaxRangedDmg` = '714', `MeleeAttackPower` = '244.0', `RangedAttackPower` = '25.0', `Armor` = '3316.0' WHERE `entry` = '17270';
-- Bleeding Hollow Archer (1) (18048)
UPDATE `creature_template` SET `HealthMultiplier` = '3.915', `PowerMultiplier` = '1.0', `DamageMultiplier` = '10.0', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '21881', `MaxLevelHealth` = '22488', `MinLevelMana` = '3155', `MaxLevelMana` = '3231', `MinMeleeDmg` = '1406', `MaxMeleeDmg` = '2020', `MinRangedDmg` = '1982', `MaxRangedDmg` = '3005', `MeleeAttackPower` = '290.0', `RangedAttackPower` = '37.0', `Armor` = '5714.0' WHERE `entry` = '18048';


-- Bleeding Hollow Darkcaster 17269 / 18049 -- Recalculate Heroic Damage Data (IF FOUND TO BE OVERPOWERED ORIGINAL POSSIBLE DAMAGE MULTIPLIER WAS 5X)
UPDATE creature_template SET UnitFlags=32832 WHERE entry IN (17269,18049);
UPDATE creature_template SET LootId=17269, PickpocketLootId=17269 WHERE entry IN (17269,18049);
-- Bleeding Hollow Darkcaster (17269)
UPDATE `creature_template` SET `HealthMultiplier` = '2.9', `PowerMultiplier` = '1.0', `DamageMultiplier` = '4.0', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '10104', `MaxLevelHealth` = '10472', `MinLevelMana` = '5751', `MaxLevelMana` = '5875', `MinMeleeDmg` = '467', `MaxMeleeDmg` = '707', `MinRangedDmg` = '417', `MaxRangedDmg` = '656', `MeleeAttackPower` = '115.0', `RangedAttackPower` = '25.0', `Armor` = '2073.0' WHERE `entry` = '17269';
-- Bleeding Hollow Darkcaster (1) (18049)
UPDATE `creature_template` SET `HealthMultiplier` = '3.915', `PowerMultiplier` = '1.0', `DamageMultiplier` = '10.0', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '19144', `MaxLevelHealth` = '19681', `MinLevelMana` = '7196', `MaxLevelMana` = '7332', `MinMeleeDmg` = '1960', `MaxMeleeDmg` = '2968', `MinRangedDmg` = '1807', `MaxRangedDmg` = '2816', `MeleeAttackPower` = '137.0', `RangedAttackPower` = '31.0', `Armor` = '3577.0' WHERE `entry` = '18049';


-- Bleeding Hollow Scryer 17478 / 18050 -- Recalculate Heroic Damage Data (Both Normal and Heroic Damage just looks not right)
UPDATE creature_template SET UnitFlags=1 WHERE entry IN (17478,18050);
UPDATE creature_template SET LootId=17478, PickpocketLootId=17478 WHERE entry IN (17478,18050);
-- Bleeding Hollow Scryer (17478)
UPDATE `creature_template` SET `HealthMultiplier` = '2.9', `PowerMultiplier` = '1.0', `DamageMultiplier` = '8.0', `DamageVariance` = '0.5', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '10104', `MaxLevelHealth` = '10472', `MinLevelMana` = '5751', `MaxLevelMana` = '5875', `MinMeleeDmg` = '318', `MaxMeleeDmg` = '463', `MinRangedDmg` = '432', `MaxRangedDmg` = '670', `MeleeAttackPower` = '115.0', `RangedAttackPower` = '25.0', `Armor` = '2073.0' WHERE `entry` = '17478';
-- Bleeding Hollow Scryer (1) (18050)
UPDATE `creature_template` SET `HealthMultiplier` = '2.5', `PowerMultiplier` = '1.0', `DamageMultiplier` = '8.0', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '12225', `MaxLevelHealth` = '12568', `MinLevelMana` = '7196', `MaxLevelMana` = '7332', `MinMeleeDmg` = '941', `MaxMeleeDmg` = '1425', `MinRangedDmg` = '1445', `MaxRangedDmg` = '2253', `MeleeAttackPower` = '137.0', `RangedAttackPower` = '31.0', `Armor` = '3577.0' WHERE `entry` = '18050';


-- Bonechewer Beastmaster 17455 / 18051 -- Recalculate Heroic Damage Data
UPDATE creature_template SET UnitFlags=1 WHERE entry IN (17455,18051);
UPDATE creature_template SET LootId=17455, PickpocketLootId=17455 WHERE entry IN (17455,18051);
-- Bonechewer Beastmaster (17455)
UPDATE `creature_template` SET `HealthMultiplier` = '2.9', `PowerMultiplier` = '0', `DamageMultiplier` = '4.0', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '14439', `MaxLevelHealth` = '14439', `MinLevelMana` = '0', `MaxLevelMana` = '0', `MinMeleeDmg` = '343', `MaxMeleeDmg` = '471', `MinRangedDmg` = '443', `MaxRangedDmg` = '657', `MeleeAttackPower` = '252.0', `RangedAttackPower` = '26.0', `Armor` = '3791.0' WHERE `entry` = '17455';
-- Bonechewer Beastmaster (1) (18051)
UPDATE `creature_template` SET `HealthMultiplier` = '4.0', `PowerMultiplier` = '0', `DamageMultiplier` = '10.0', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '27944', `MaxLevelHealth` = '27944', `MinLevelMana` = '0', `MaxLevelMana` = '0', `MinMeleeDmg` = '1817', `MaxMeleeDmg` = '2570', `MinRangedDmg` = '3445', `MaxRangedDmg` = '5118', `MeleeAttackPower` = '304.0', `RangedAttackPower` = '44.0', `Armor` = '6792.0' WHERE `entry` = '18051';


-- Bonechewer Destroyer 17271 / 18052 -- Recalculate Heroic Damage Data
UPDATE creature_template SET UnitFlags=32832 WHERE entry IN (17271,18052);
UPDATE creature_template SET LootId=17271, PickpocketLootId=17271 WHERE entry IN (17271,18052);
-- Bonechewer Destroyer (17271)
UPDATE `creature_template` SET `HealthMultiplier` = '2.9', `PowerMultiplier` = '0', `DamageMultiplier` = '4.33', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '14439', `MaxLevelHealth` = '14958', `MinLevelMana` = '0', `MaxLevelMana` = '0', `MinMeleeDmg` = '619', `MaxMeleeDmg` = '955', `MinRangedDmg` = '476', `MaxRangedDmg` = '808', `MeleeAttackPower` = '258.0', `RangedAttackPower` = '28.0', `Armor` = '4091.0' WHERE `entry` = '17271';
-- Bonechewer Destroyer (1) (18052)
UPDATE `creature_template` SET `HealthMultiplier` = '3.915', `PowerMultiplier` = '0', `DamageMultiplier` = '12.0', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '27350', `MaxLevelHealth` = '28114', `MinLevelMana` = '0', `MaxLevelMana` = '0', `MinMeleeDmg` = '3030', `MaxMeleeDmg` = '4357', `MinRangedDmg` = '2584', `MaxRangedDmg` = '3911', `MeleeAttackPower` = '308.0', `RangedAttackPower` = '48.0', `Armor` = '7089.0' WHERE `entry` = '18052';


-- Bonechewer Hungerer 17259 / 18053 -- Recalculate Heroic Damage Data
UPDATE creature_template SET UnitFlags=32832 WHERE entry IN (17259,18053);
UPDATE creature_template SET LootId=17259, PickpocketLootId=17259 WHERE entry IN (17259,18053);
-- Bonechewer Destroyer (17271)
UPDATE `creature_template` SET `HealthMultiplier` = '2.9', `PowerMultiplier` = '0', `DamageMultiplier` = '4.33', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '14439', `MaxLevelHealth` = '14958', `MinLevelMana` = '0', `MaxLevelMana` = '0', `MinMeleeDmg` = '619', `MaxMeleeDmg` = '955', `MinRangedDmg` = '476', `MaxRangedDmg` = '808', `MeleeAttackPower` = '258.0', `RangedAttackPower` = '28.0', `Armor` = '4091.0' WHERE `entry` = '17271';
-- Bonechewer Hungerer (1) (18053)
UPDATE `creature_template` SET `HealthMultiplier` = '3.915', `PowerMultiplier` = '0', `DamageMultiplier` = '16.0', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '27350', `MaxLevelHealth` = '28114', `MinLevelMana` = '0', `MaxLevelMana` = '0', `MinMeleeDmg` = '2424', `MaxMeleeDmg` = '3485', `MinRangedDmg` = '3445', `MaxRangedDmg` = '5215', `MeleeAttackPower` = '308.0', `RangedAttackPower` = '48.0', `Armor` = '7089.0' WHERE `entry` = '18053';


-- Bonechewer Ravener 17264 / 18054 -- Recalculate Heroic Damage Data
UPDATE creature_template SET UnitFlags=32832, MeleeBaseAttackTime=1200, RangedBaseAttackTime=2000 WHERE entry IN (17264,18054);
UPDATE creature_template SET LootId=17264, PickpocketLootId=17264 WHERE entry IN (17264,18054);
-- Bonechewer Ravener (17264)
UPDATE `creature_template` SET `HealthMultiplier` = '2.9', `PowerMultiplier` = '0', `DamageMultiplier` = '4.0', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '14439', `MaxLevelHealth` = '14958', `MinLevelMana` = '0', `MaxLevelMana` = '0', `MinMeleeDmg` = '343', `MaxMeleeDmg` = '530', `MinRangedDmg` = '443', `MaxRangedDmg` = '751', `MeleeAttackPower` = '258.0', `RangedAttackPower` = '28.0', `Armor` = '4091.0' WHERE `entry` = '17264';
-- Bonechewer Ravener (1) (18054)
UPDATE `creature_template` SET `HealthMultiplier` = '3.915', `PowerMultiplier` = '0', `DamageMultiplier` = '12.0', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '27350', `MaxLevelHealth` = '28114', `MinLevelMana` = '0', `MaxLevelMana` = '0', `MinMeleeDmg` = '1818', `MaxMeleeDmg` = '2614', `MinRangedDmg` = '2584', `MaxRangedDmg` = '3911', `MeleeAttackPower` = '308.0', `RangedAttackPower` = '48.0', `Armor` = '7089.0' WHERE `entry` = '18054';


-- Bonechewer Ripper 17281 / 18055 -- Recalculate Heroic Damage Data
UPDATE creature_template SET UnitFlags=1 WHERE entry IN (17281,18055);
UPDATE creature_template SET LootId=17281, PickpocketLootId=17281 WHERE entry IN (17281,18055);
-- Bonechewer Ravener (17264)
UPDATE `creature_template` SET `HealthMultiplier` = '2.9', `PowerMultiplier` = '0', `DamageMultiplier` = '4.0', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '14439', `MaxLevelHealth` = '14958', `MinLevelMana` = '0', `MaxLevelMana` = '0', `MinMeleeDmg` = '343', `MaxMeleeDmg` = '530', `MinRangedDmg` = '443', `MaxRangedDmg` = '751', `MeleeAttackPower` = '258.0', `RangedAttackPower` = '28.0', `Armor` = '4091.0' WHERE `entry` = '17264';
-- Bonechewer Ripper (1) (18055)
UPDATE `creature_template` SET `HealthMultiplier` = '8.0', `PowerMultiplier` = '0', `DamageMultiplier` = '16.0', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '57448', `MaxLevelHealth` = '57448', `MinLevelMana` = '0', `MaxLevelMana` = '0', `MinMeleeDmg` = '2464', `MaxMeleeDmg` = '3485', `MinRangedDmg` = '3513', `MaxRangedDmg` = '5215', `MeleeAttackPower` = '308.0', `RangedAttackPower` = '48.0', `Armor` = '7089.0' WHERE `entry` = '18055';


-- Fiendish Hound 17540 / 18056 -- NO LOOT -- Recalculate Heroic Damage Data (Heroic Damage is really screwed up)
UPDATE creature_template SET MeleeBaseAttackTime=1400, RangedBaseAttackTime=1900 WHERE entry IN (17540,18056);
-- Fiendish Hound (17540)
UPDATE `creature_template` SET `HealthMultiplier` = '0.55', `PowerMultiplier` = '1.0', `DamageMultiplier` = '1.43', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '2191', `MaxLevelHealth` = '2191', `MinLevelMana` = '2434', `MaxLevelMana` = '2434', `MinMeleeDmg` = '144', `MaxMeleeDmg` = '199', `MinRangedDmg` = '167', `MaxRangedDmg` = '248', `MeleeAttackPower` = '238.0', `RangedAttackPower` = '24.0', `Armor` = '3075.0' WHERE `entry` = '17540';
-- Fiendish Hound (1) (18056)
UPDATE `creature_template` SET `HealthMultiplier` = '1.7', `PowerMultiplier` = '1.0', `DamageMultiplier` = '3.5', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '9501', `MaxLevelHealth` = '9501', `MinLevelMana` = '3155', `MaxLevelMana` = '3155', `MinMeleeDmg` = '574', `MaxMeleeDmg` = '811', `MinRangedDmg` = '659', `MaxRangedDmg` = '981', `MeleeAttackPower` = '286.0', `RangedAttackPower` = '33.0', `Armor` = '5474.0' WHERE `entry` = '18056';


-- Hellfire Sentry 17517 / 18057 -- Recalculate Heroic Damage Data (CHECK NORMAL MODE DAMAGE - MIGHT NEED SMALL TWEAK)
UPDATE creature_template SET UnitFlags=32832 WHERE entry IN (17517,18057);
UPDATE creature_template SET LootId=17517, PickpocketLootId=17517 WHERE entry IN (17517,18057);
-- Hellfire Sentry (17517)
UPDATE `creature_template` SET `HealthMultiplier` = '3.5', `PowerMultiplier` = '0', `DamageMultiplier` = '6.0', `DamageVariance` = '0.96', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '9744', `MaxLevelHealth` = '13962', `MinLevelMana` = '0', `MaxLevelMana` = '0', `MinMeleeDmg` = '326', `MaxMeleeDmg` = '514', `MinRangedDmg` = '389', `MaxRangedDmg` = '716', `MeleeAttackPower` = '242.0', `RangedAttackPower` = '25.0', `Armor` = '3435.0' WHERE `entry` = '17517';
-- Hellfire Sentry (1) (18057)
UPDATE `creature_template` SET `MaxLevel` = '70', `HealthMultiplier` = '4.725', `PowerMultiplier` = '0', `DamageMultiplier` = '6.45', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '31946', `MaxLevelHealth` = '33009', `MinLevelMana` = '0', `MaxLevelMana` = '0', `MinMeleeDmg` = '935', `MaxMeleeDmg` = '1381', `MinRangedDmg` = '1436', `MaxRangedDmg` = '2239', `MeleeAttackPower` = '304.0', `RangedAttackPower` = '44.0', `Armor` = '6792' WHERE `entry` = '18057';


-- Hellfire Watcher 17309 / 18058 -- Recalculate Heroic Damage Data
UPDATE creature_template SET UnitFlags=64 WHERE entry IN (17309,18058);
UPDATE creature_template SET LootId=17309, PickpocketLootId=17309 WHERE entry IN (17309,18058);
-- Hellfire Watcher (17309)
UPDATE `creature_template` SET `HealthMultiplier` = '3.5', `PowerMultiplier` = '1.0', `DamageMultiplier` = '4.3', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '10147', `MaxLevelHealth` = '10147', `MinLevelMana` = '5598', `MaxLevelMana` = '5598', `MinMeleeDmg` = '281', `MaxMeleeDmg` = '401', `MinRangedDmg` = '416', `MaxRangedDmg` = '616', `MeleeAttackPower` = '110.0', `RangedAttackPower` = '25.0', `Armor` = '1770.0' WHERE `entry` = '17309';
-- Hellfire Watcher (1) (18058)
UPDATE `creature_template` SET `HealthMultiplier` = '4.725', `PowerMultiplier` = '1.0', `DamageMultiplier` = '7.0', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '22363', `MaxLevelHealth` = '22363', `MinLevelMana` = '7031', `MaxLevelMana` = '7031', `MinMeleeDmg` = '788', `MaxMeleeDmg` = '1142', `MinRangedDmg` = '1208', `MaxRangedDmg` = '1798', `MeleeAttackPower` = '133.0', `RangedAttackPower` = '28.0', `Armor` = '3277.0' WHERE `entry` = '18058';


-- Shattered Hand Warhound 17280 / 18059 -- Recalculate Heroic Damage Data
UPDATE creature_template SET LootId=17280, SkinningLootId=70062 WHERE entry IN (17280,18059);
-- Shattered Hand Warhound (17280)
UPDATE `creature_template` SET `HealthMultiplier` = '1.0', `PowerMultiplier` = '0', `DamageMultiplier` = '1.0', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '4142', `MaxLevelHealth` = '4142', `MinLevelMana` = '0', `MaxLevelMana` = '0', `MinMeleeDmg` = '91', `MaxMeleeDmg` = '124', `MinRangedDmg` = '90', `MaxRangedDmg` = '133', `MeleeAttackPower` = '248.0', `RangedAttackPower` = '25.0', `Armor` = '3489.0' WHERE `entry` = '17280';
-- Shattered Hand Warhound (1) (18059)
UPDATE `creature_template` SET `HealthMultiplier` = '1.35', `PowerMultiplier` = '0', `DamageMultiplier` = '2.5', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '9127', `MaxLevelHealth` = '9127', `MinLevelMana` = '0', `MaxLevelMana` = '0', `MinMeleeDmg` = '453', `MaxMeleeDmg` = '640', `MinRangedDmg` = '513', `MaxRangedDmg` = '762', `MeleeAttackPower` = '298.0', `RangedAttackPower` = '43.0', `Armor` = '6492.0' WHERE `entry` = '18059';



-- ===================================
-- Hellfire Citadel: The Blood Furnace
-- ===================================
-- Fel Orc Neophyte 17429 / 18603
UPDATE creature_template SET UnitFlags=1 WHERE entry IN (17429,18603);
UPDATE creature_template SET LootId=17429, PickpocketLootId=17429 WHERE entry IN (17429,18603);
-- Fel Orc Neophyte (17429)
UPDATE `creature_template` SET `HealthMultiplier` = '2.0', `PowerMultiplier` = '0', `DamageMultiplier` = '3.1', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '10682', `MaxLevelHealth` = '10682', `MinLevelMana` = '0', `MaxLevelMana` = '0', `MinMeleeDmg` = '347', `MaxMeleeDmg` = '483', `MinRangedDmg` = '431', `MaxRangedDmg` = '641', `MeleeAttackPower` = '262.0', `RangedAttackPower` = '30.0', `Armor` = '4391.0' WHERE `entry` = '17429';
-- Fel Orc Neophyte (1) (18603)
UPDATE `creature_template` SET `HealthMultiplier` = '2.7', `PowerMultiplier` = '0', `DamageMultiplier` = '8.0', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '19389', `MaxLevelHealth` = '19389', `MinLevelMana` = '0', `MaxLevelMana` = '0', `MinMeleeDmg` = '1335', `MaxMeleeDmg` = '1888', `MinRangedDmg` = '1757', `MaxRangedDmg` = '2607', `MeleeAttackPower` = '308.0', `RangedAttackPower` = '48.0', `Armor` = '7089.0' WHERE `entry` = '18603';


-- Felguard Annihilator 17400 / 18604
UPDATE creature_template SET UnitFlags=1 WHERE entry IN (17400,18604);
UPDATE creature_template SET LootId=17400 WHERE entry IN (17400,18604);
-- Felguard Annihilator (17400)
UPDATE `creature_template` SET `HealthMultiplier` = '2.9', `PowerMultiplier` = '0', `DamageMultiplier` = '4.0', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '15489', `MaxLevelHealth` = '15489', `MinLevelMana` = '0', `MaxLevelMana` = '0', `MinMeleeDmg` = '826', `MaxMeleeDmg` = '1150', `MinRangedDmg` = '557', `MaxRangedDmg` = '826', `MeleeAttackPower` = '262.0', `RangedAttackPower` = '30.0', `Armor` = '4391.0' WHERE `entry` = '17400';
-- Felguard Annihilator (1) (18604)
UPDATE `creature_template` SET `HealthMultiplier` = '3.915', `PowerMultiplier` = '0', `DamageMultiplier` = '10.0', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '28114', `MaxLevelHealth` = '28114', `MinLevelMana` = '0', `MaxLevelMana` = '0', `MinMeleeDmg` = '3081', `MaxMeleeDmg` = '4357', `MinRangedDmg` = '2196', `MaxRangedDmg` = '3259', `MeleeAttackPower` = '308.0', `RangedAttackPower` = '48.0', `Armor` = '7089.0' WHERE `entry` = '18604';


-- Felguard Brute 18894 / 21645
UPDATE creature_template SET UnitFlags=1 WHERE entry IN (18894,21645);
UPDATE creature_template SET LootId=18894 WHERE entry IN (18894,21645);
-- Felguard Brute (18894)
UPDATE `creature_template` SET `HealthMultiplier` = '2.9', `PowerMultiplier` = '0', `DamageMultiplier` = '4.0', `DamageVariance` = '1.0', `ArmorMultiplier` = '0.8', `MinLevelHealth` = '14958', `MaxLevelHealth` = '14958', `MinLevelMana` = '0', `MaxLevelMana` = '0', `MinMeleeDmg` = '638', `MaxMeleeDmg` = '883', `MinRangedDmg` = '506', `MaxRangedDmg` = '751', `MeleeAttackPower` = '258.0', `RangedAttackPower` = '28.0', `Armor` = '3273.0' WHERE `entry` = '18894';
-- Felguard Brute (1) (21645)
UPDATE `creature_template` SET `HealthMultiplier` = '3.915', `PowerMultiplier` = '0', `DamageMultiplier` = '10.0', `DamageVariance` = '1.0', `ArmorMultiplier` = '0.8', `MinLevelHealth` = '27350', `MaxLevelHealth` = '27350', `MinLevelMana` = '0', `MaxLevelMana` = '0', `MinMeleeDmg` = '2525', `MaxMeleeDmg` = '3570', `MinRangedDmg` = '2153', `MaxRangedDmg` = '3199', `MeleeAttackPower` = '304.0', `RangedAttackPower` = '44.0', `Armor` = '5434.0' WHERE `entry` = '21645';


-- Felhound Manastalker 17401 / 18605
UPDATE creature_template SET MeleeBaseAttackTime=2000, RangedBaseAttackTime=2000 WHERE entry IN (17401,18605);
UPDATE creature_template SET LootId=17401 WHERE entry IN (17401,18605);
-- Felhound Manastalker (17401)
UPDATE `creature_template` SET `HealthMultiplier` = '1.0', `PowerMultiplier` = '1.0', `DamageMultiplier` = '5.5', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '3984', `MaxLevelHealth` = '4126', `MinLevelMana` = '2434', `MaxLevelMana` = '2486', `MinMeleeDmg` = '792', `MaxMeleeDmg` = '1154', `MinRangedDmg` = '624', `MaxRangedDmg` = '982', `MeleeAttackPower` = '244.0', `RangedAttackPower` = '25.0', `Armor` = '3316.0' WHERE `entry` = '17401';
-- Felhound Manastalker (1) (18605)
UPDATE `creature_template` SET `HealthMultiplier` = '1.35', `PowerMultiplier` = '1.0', `DamageMultiplier` = '8.0', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '7545', `MaxLevelHealth` = '7545', `MinLevelMana` = '3155', `MaxLevelMana` = '3155', `MinMeleeDmg` = '1875', `MaxMeleeDmg` = '2649', `MinRangedDmg` = '1585', `MaxRangedDmg` = '2359', `MeleeAttackPower` = '286.0', `RangedAttackPower` = '33.0', `Armor` = '5474.0' WHERE `entry` = '18605';


-- Hellfire Familiar 19016 / 21646
-- Hellfire Familiar (19016)
UPDATE `creature_template` SET `HealthMultiplier` = '1.0', `PowerMultiplier` = '4.0', `DamageMultiplier` = '1.25', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '4126', `MaxLevelHealth` = '4126', `MinLevelMana` = '9944', `MaxLevelMana` = '9944', `MinMeleeDmg` = '189', `MaxMeleeDmg` = '262', `MinRangedDmg` = '150', `MaxRangedDmg` = '223', `MeleeAttackPower` = '244.0', `RangedAttackPower` = '25.0', `Armor` = '3316.0' WHERE `entry` = '19016';
-- Hellfire Familiar (1) (21646)
UPDATE `creature_template` SET `HealthMultiplier` = '1.35', `PowerMultiplier` = '4.0', `DamageMultiplier` = '1.25', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '7545', `MaxLevelHealth` = '7545', `MinLevelMana` = '12620', `MaxLevelMana` = '12620', `MinMeleeDmg` = '292', `MaxMeleeDmg` = '413', `MinRangedDmg` = '595', `MaxRangedDmg` = '885', `MeleeAttackPower` = '286.0', `RangedAttackPower` = '33.0', `Armor` = '5474.0' WHERE `entry` = '21646';


-- Hellfire Imp 17477 / 18606
UPDATE creature_template SET UnitFlags=32768 WHERE entry IN (17477,18606);
-- Hellfire Imp (17477)
UPDATE `creature_template` SET `HealthMultiplier` = '1.0', `PowerMultiplier` = '4.0', `DamageMultiplier` = '6.0', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '4126', `MaxLevelHealth` = '4126', `MinLevelMana` = '9944', `MaxLevelMana` = '9944', `MinMeleeDmg` = '909', `MaxMeleeDmg` = '1259', `MinRangedDmg` = '721', `MaxRangedDmg` = '1071', `MeleeAttackPower` = '244.0', `RangedAttackPower` = '25.0', `Armor` = '3316.0' WHERE `entry` = '17477';
-- Hellfire Imp (1) (18606)
UPDATE `creature_template` SET `HealthMultiplier` = '1.35', `PowerMultiplier` = '4.0', `DamageMultiplier` = '6.0', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '7545', `MaxLevelHealth` = '7545', `MinLevelMana` = '12620', `MaxLevelMana` = '12620', `MinMeleeDmg` = '1406', `MaxMeleeDmg` = '1986', `MinRangedDmg` = '1189', `MaxRangedDmg` = '1770', `MeleeAttackPower` = '286.0', `RangedAttackPower` = '33.0', `Armor` = '5474.0' WHERE `entry` = '18606';


-- Laughing Skull Enforcer 17370 / 18608
UPDATE creature_template SET UnitFlags=32832 WHERE entry IN (17370,18608);
UPDATE creature_template SET LootId=17370, PickpocketLootId=17370 WHERE entry IN (17370,18608);
-- Laughing Skull Enforcer (17370)
UPDATE `creature_template` SET `HealthMultiplier` = '2.9', `PowerMultiplier` = '0', `DamageMultiplier` = '10.0', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '14958', `MaxLevelHealth` = '14958', `MinLevelMana` = '0', `MaxLevelMana` = '0', `MinMeleeDmg` = '1594', `MaxMeleeDmg` = '2207', `MinRangedDmg` = '1265', `MaxRangedDmg` = '1878', `MeleeAttackPower` = '258.0', `RangedAttackPower` = '28.0', `Armor` = '4091.0' WHERE `entry` = '17370';
-- Laughing Skull Enforcer (1) (18608)
UPDATE `creature_template` SET `HealthMultiplier` = '3.915', `PowerMultiplier` = '0', `DamageMultiplier` = '14.0', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '27350', `MaxLevelHealth` = '27350', `MinLevelMana` = '0', `MaxLevelMana` = '0', `MinMeleeDmg` = '3535', `MaxMeleeDmg` = '4998', `MinRangedDmg` = '3015', `MaxRangedDmg` = '4478', `MeleeAttackPower` = '304.0', `RangedAttackPower` = '44.0', `Armor` = '6792.0' WHERE `entry` = '18608';


-- Laughing Skull Legionnaire 17626 / 18609
UPDATE creature_template SET UnitFlags=1 WHERE entry IN (17626,18609);
UPDATE creature_template SET LootId=17626, PickpocketLootId=17626 WHERE entry IN (17626,18609);
-- Laughing Skull Legionnaire (17626)
UPDATE `creature_template` SET `HealthMultiplier` = '2.9', `PowerMultiplier` = '0', `DamageMultiplier` = '4.0', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '14958', `MaxLevelHealth` = '14958', `MinLevelMana` = '0', `MaxLevelMana` = '0', `MinMeleeDmg` = '638', `MaxMeleeDmg` = '883', `MinRangedDmg` = '506', `MaxRangedDmg` = '751', `MeleeAttackPower` = '258.0', `RangedAttackPower` = '28.0', `Armor` = '4091.0' WHERE `entry` = '17626';
-- Laughing Skull Legionnaire (1) (18609)
UPDATE `creature_template` SET `HealthMultiplier` = '3.915', `PowerMultiplier` = '0', `DamageMultiplier` = '12.0', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '27350', `MaxLevelHealth` = '27350', `MinLevelMana` = '0', `MaxLevelMana` = '0', `MinMeleeDmg` = '3030', `MaxMeleeDmg` = '4284', `MinRangedDmg` = '2584', `MaxRangedDmg` = '3838', `MeleeAttackPower` = '304.0', `RangedAttackPower` = '44.0', `Armor` = '6792.0' WHERE `entry` = '18609';


-- Laughing Skull Rogue 17491 / 18610
UPDATE creature_template SET UnitFlags=1 WHERE entry IN (17491,18610);
UPDATE creature_template SET LootId=17491, PickpocketLootId=17491 WHERE entry IN (17491,18610);
-- Laughing Skull Rogue (17491)
UPDATE `creature_template` SET `HealthMultiplier` = '1.45', `PowerMultiplier` = '0', `DamageMultiplier` = '4.0', `DamageVariance` = '1.0', `ArmorMultiplier` = '0.809338', `MinLevelHealth` = '7479', `MaxLevelHealth` = '7479', `MinLevelMana` = '0', `MaxLevelMana` = '0', `MinMeleeDmg` = '510', `MaxMeleeDmg` = '706', `MinRangedDmg` = '506', `MaxRangedDmg` = '751', `MeleeAttackPower` = '258.0', `RangedAttackPower` = '28.0', `Armor` = '3311.0' WHERE `entry` = '17491';
-- Laughing Skull Rogue (1) (18610)
UPDATE `creature_template` SET `HealthMultiplier` = '1.9575', `PowerMultiplier` = '0', `DamageMultiplier` = '13.0', `DamageVariance` = '1.0', `ArmorMultiplier` = '0.809338', `MinLevelHealth` = '13675', `MaxLevelHealth` = '13675', `MinLevelMana` = '0', `MaxLevelMana` = '0', `MinMeleeDmg` = '2626', `MaxMeleeDmg` = '3713', `MinRangedDmg` = '2799', `MaxRangedDmg` = '4158', `MeleeAttackPower` = '304.0', `RangedAttackPower` = '44.0', `Armor` = '5497.0' WHERE `entry` = '18610';


-- Laughing Skull Warden 17624 / 18611
UPDATE creature_template SET UnitFlags=1 WHERE entry IN (17624,18611);
UPDATE creature_template SET LootId=17624, PickpocketLootId=17624 WHERE entry IN (17624,18611);
-- Laughing Skull Warden (17624)
UPDATE `creature_template` SET `HealthMultiplier` = '3.0', `PowerMultiplier` = '0', `DamageMultiplier` = '4.215', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '16023', `MaxLevelHealth` = '16023', `MinLevelMana` = '0', `MaxLevelMana` = '0', `MinMeleeDmg` = '726', `MaxMeleeDmg` = '1011', `MinRangedDmg` = '585', `MaxRangedDmg` = '868', `MeleeAttackPower` = '262.0', `RangedAttackPower` = '30.0', `Armor` = '4391.0' WHERE `entry` = '17624';
-- Laughing Skull Warden (1) (18611)
UPDATE `creature_template` SET `HealthMultiplier` = '5.5', `PowerMultiplier` = '0', `DamageMultiplier` = '12.0', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '39496', `MaxLevelHealth` = '39496', `MinLevelMana` = '0', `MaxLevelMana` = '0', `MinMeleeDmg` = '3081', `MaxMeleeDmg` = '4357', `MinRangedDmg` = '2635', `MaxRangedDmg` = '3911', `MeleeAttackPower` = '308.0', `RangedAttackPower` = '48.0', `Armor` = '7089.0' WHERE `entry` = '18611';


-- Nascent Fel Orc 17398 / 18612
UPDATE creature_template SET LootId=17398, PickpocketLootId=17398 WHERE entry IN (17398,18612);
-- Nascent Fel Orc (17398)
UPDATE `creature_template` SET `HealthMultiplier` = '1.35', `PowerMultiplier` = '0', `DamageMultiplier` = '1.7', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '6963', `MaxLevelHealth` = '7210', `MinLevelMana` = '0', `MaxLevelMana` = '0', `MinMeleeDmg` = '217', `MaxMeleeDmg` = '326', `MinRangedDmg` = '215', `MaxRangedDmg` = '351', `MeleeAttackPower` = '262.0', `RangedAttackPower` = '30.0', `Armor` = '4391.0' WHERE `entry` = '17398';
-- Nascent Fel Orc (1) (18612)
UPDATE `creature_template` SET `HealthMultiplier` = '3.6', `PowerMultiplier` = '0', `DamageMultiplier` = '8.0', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '25150', `MaxLevelHealth` = '25852', `MinLevelMana` = '0', `MaxLevelMana` = '0', `MinMeleeDmg` = '1616', `MaxMeleeDmg` = '2324', `MinRangedDmg` = '1723', `MaxRangedDmg` = '2607', `MeleeAttackPower` = '308.0', `RangedAttackPower` = '48.0', `Armor` = '7089.0' WHERE `entry` = '18612';


-- Seductress 17399 / 18614
UPDATE creature_template SET MeleeBaseAttackTime=2000, RangedBaseAttackTime=2000 WHERE entry IN (17399,18614);
-- Seductress (17399)
UPDATE `creature_template` SET `HealthMultiplier` = '1.0', `PowerMultiplier` = '1.0', `DamageMultiplier` = '5.5', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '4126', `MaxLevelHealth` = '4274', `MinLevelMana` = '2486', `MaxLevelMana` = '2568', `MinMeleeDmg` = '833', `MaxMeleeDmg` = '1224', `MinRangedDmg` = '661', `MaxRangedDmg` = '1051', `MeleeAttackPower` = '246.0', `RangedAttackPower` = '26.0', `Armor` = '3555.0' WHERE `entry` = '17399';
-- Seductress (1) (18614)
UPDATE `creature_template` SET `HealthMultiplier` = '1.35', `PowerMultiplier` = '1.0', `DamageMultiplier` = '7.0', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '7545', `MaxLevelHealth` = '7545', `MinLevelMana` = '3155', `MaxLevelMana` = '3155', `MinMeleeDmg` = '1640', `MaxMeleeDmg` = '2317', `MinRangedDmg` = '1387', `MaxRangedDmg` = '2064', `MeleeAttackPower` = '286.0', `RangedAttackPower` = '33.0', `Armor` = '5474.0' WHERE `entry` = '18614';


-- Shadowmoon Adept 17397 / 18615
UPDATE creature_template SET UnitFlags=32832 WHERE entry IN (17397,18615);
UPDATE creature_template SET LootId=17397, PickpocketLootId=17397 WHERE entry IN (17397,18615);
-- Shadowmoon Adept (17397)
UPDATE `creature_template` SET `HealthMultiplier` = '2.9', `PowerMultiplier` = '1.0', `DamageMultiplier` = '4.0', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '11965', `MaxLevelHealth` = '11965', `MinLevelMana` = '2486', `MaxLevelMana` = '2486', `MinMeleeDmg` = '606', `MaxMeleeDmg` = '839', `MinRangedDmg` = '481', `MaxRangedDmg` = '714', `MeleeAttackPower` = '244.0', `RangedAttackPower` = '25.0', `Armor` = '3316.0' WHERE `entry` = '17397';
-- Shadowmoon Adept (1) (18615)
UPDATE `creature_template` SET `HealthMultiplier` = '3.915', `PowerMultiplier` = '1.0', `DamageMultiplier` = '14.0', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '21881', `MaxLevelHealth` = '21881', `MinLevelMana` = '3155', `MaxLevelMana` = '3155', `MinMeleeDmg` = '3281', `MaxMeleeDmg` = '4635', `MinRangedDmg` = '2775', `MaxRangedDmg` = '4129', `MeleeAttackPower` = '286.0', `RangedAttackPower` = '33.0', `Armor` = '5474.0' WHERE `entry` = '18615';


-- Shadowmoon Channeler 17653 / 18620
UPDATE creature_template SET UnitFlags=64, Expansion=1 WHERE entry IN (17653,18620);
-- Shadowmoon Channeler (17653)
UPDATE `creature_template` SET `HealthMultiplier` = '2.9', `PowerMultiplier` = '1.0', `DamageMultiplier` = '3.6', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '10843', `MaxLevelHealth` = '10843', `MinLevelMana` = '6015', `MaxLevelMana` = '6015', `MinMeleeDmg` = '472', `MaxMeleeDmg` = '678', `MinRangedDmg` = '425', `MaxRangedDmg` = '631', `MeleeAttackPower` = '116.0', `RangedAttackPower` = '25.0', `Armor` = '2223.0' WHERE `entry` = '17653';
-- Shadowmoon Channeler (1) (18620)
UPDATE `creature_template` SET `HealthMultiplier` = '2.2693', `PowerMultiplier` = '1.0', `DamageMultiplier` = '12.0', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '11408', `MaxLevelHealth` = '11408', `MinLevelMana` = '7332', `MaxLevelMana` = '7332', `MinMeleeDmg` = '2453', `MaxMeleeDmg` = '3561', `MinRangedDmg` = '2271', `MaxRangedDmg` = '3380', `MeleeAttackPower` = '137.0', `RangedAttackPower` = '31.0', `Armor` = '3577.0' WHERE `entry` = '18620';


-- Shadowmoon Summoner 17395 / 18617
UPDATE creature_template SET UnitFlags=1 WHERE entry IN (17395,18617);
UPDATE creature_template SET LootId=17395, PickpocketLootId=17395 WHERE entry IN (17395,18617);
-- Shadowmoon Summoner (17395)
UPDATE `creature_template` SET `HealthMultiplier` = '2.9', `PowerMultiplier` = '3.0', `DamageMultiplier` = '4.0', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '10472', `MaxLevelHealth` = '10472', `MinLevelMana` = '17625', `MaxLevelMana` = '17625', `MinMeleeDmg` = '494', `MaxMeleeDmg` = '707', `MinRangedDmg` = '442', `MaxRangedDmg` = '656', `MeleeAttackPower` = '115.0', `RangedAttackPower` = '25.0', `Armor` = '2073.0' WHERE `entry` = '17395';
-- Shadowmoon Summoner (1) (18617)
UPDATE `creature_template` SET `HealthMultiplier` = '3.915', `PowerMultiplier` = '3.0', `DamageMultiplier` = '13.0', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '19144', `MaxLevelHealth` = '19144', `MinLevelMana` = '21588', `MaxLevelMana` = '21588', `MinMeleeDmg` = '2548', `MaxMeleeDmg` = '3696', `MinRangedDmg` = '2349', `MaxRangedDmg` = '3497', `MeleeAttackPower` = '135.0', `RangedAttackPower` = '28.0', `Armor` = '3427.0' WHERE `entry` = '18617';


-- Shadowmoon Technician 17414 / 18618
UPDATE creature_template SET UnitFlags=1 WHERE entry IN (17414,18618);
UPDATE creature_template SET LootId=17414, PickpocketLootId=17414 WHERE entry IN (17414,18618);
-- Shadowmoon Technician (17414)
UPDATE `creature_template` SET `HealthMultiplier` = '2.9', `PowerMultiplier` = '1.0', `DamageMultiplier` = '4.0', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '10472', `MaxLevelHealth` = '10843', `MinLevelMana` = '5875', `MaxLevelMana` = '6015', `MinMeleeDmg` = '494', `MaxMeleeDmg` = '754', `MinRangedDmg` = '442', `MaxRangedDmg` = '702', `MeleeAttackPower` = '116.0', `RangedAttackPower` = '25.0', `Armor` = '2223.0' WHERE `entry` = '17414';
-- Shadowmoon Technician (1) (18618)
UPDATE `creature_template` SET `HealthMultiplier` = '3.915', `PowerMultiplier` = '1.0', `DamageMultiplier` = '14.0', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '19144', `MaxLevelHealth` = '19681', `MinLevelMana` = '7196', `MaxLevelMana` = '7332', `MinMeleeDmg` = '2744', `MaxMeleeDmg` = '4155', `MinRangedDmg` = '2530', `MaxRangedDmg` = '3943', `MeleeAttackPower` = '137.0', `RangedAttackPower` = '31.0', `Armor` = '3577.0' WHERE `entry` = '18618';


-- Shadowmoon Warlock 17371 / 18619
UPDATE creature_template SET UnitFlags=1 WHERE entry IN (17371,18619);
UPDATE creature_template SET LootId=17371, PickpocketLootId=17371 WHERE entry IN (17371,18619);
-- Shadowmoon Warlock (17371)
UPDATE `creature_template` SET `HealthMultiplier` = '2.9', `PowerMultiplier` = '1.0', `DamageMultiplier` = '4.0', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '10472', `MaxLevelHealth` = '10843', `MinLevelMana` = '5875', `MaxLevelMana` = '6015', `MinMeleeDmg` = '494', `MaxMeleeDmg` = '754', `MinRangedDmg` = '442', `MaxRangedDmg` = '702', `MeleeAttackPower` = '116.0', `RangedAttackPower` = '25.0', `Armor` = '2223.0' WHERE `entry` = '17371';
-- Shadowmoon Warlock (1) (18619)
UPDATE `creature_template` SET `HealthMultiplier` = '3.915', `PowerMultiplier` = '1.0', `DamageMultiplier` = '14.0', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '19144', `MaxLevelHealth` = '19681', `MinLevelMana` = '7196', `MaxLevelMana` = '7332', `MinMeleeDmg` = '2744', `MaxMeleeDmg` = '4155', `MinRangedDmg` = '2530', `MaxRangedDmg` = '3943', `MeleeAttackPower` = '137.0', `RangedAttackPower` = '31.0', `Armor` = '3577.0' WHERE `entry` = '18619';



-- =====================================
-- Hellfire Citadel: The Shattered Halls
-- =====================================
-- Creeping Ooze 17356 / 20565
UPDATE creature_template SET LootId=17356 WHERE entry IN (17356,20565);
-- Creeping Ooze (17356)
UPDATE `creature_template` SET `HealthMultiplier` = '2.9', `PowerMultiplier` = '0', `DamageMultiplier` = '4.664', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '19607', `MaxLevelHealth` = '19607', `MinLevelMana` = '0', `MaxLevelMana` = '0', `MinMeleeDmg` = '1127', `MaxMeleeDmg` = '1591', `MinRangedDmg` = '964', `MaxRangedDmg` = '1432', `MeleeAttackPower` = '298.0', `RangedAttackPower` = '43.0', `Armor` = '6492.0' WHERE `entry` = '17356';
-- Creeping Ooze (1) (20565)
UPDATE `creature_template` SET `HealthMultiplier` = '3.915', `PowerMultiplier` = '0', `DamageMultiplier` = '9.5', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '27350', `MaxLevelHealth` = '27350', `MinLevelMana` = '0', `MaxLevelMana` = '0', `MinMeleeDmg` = '2399', `MaxMeleeDmg` = '3392', `MinRangedDmg` = '2046', `MaxRangedDmg` = '3039', `MeleeAttackPower` = '304.0', `RangedAttackPower` = '44.0', `Armor` = '6792.0' WHERE `entry` = '20565';


-- Creeping Oozeling 17357 / 20566
-- Creeping Oozeling (17357)
UPDATE `creature_template` SET `HealthMultiplier` = '0.5', `PowerMultiplier` = '0', `DamageMultiplier` = '0.5', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '3381', `MaxLevelHealth` = '3381', `MinLevelMana` = '0', `MaxLevelMana` = '0', `MinMeleeDmg` = '121', `MaxMeleeDmg` = '171', `MinRangedDmg` = '103', `MaxRangedDmg` = '152', `MeleeAttackPower` = '298.0', `RangedAttackPower` = '43.0', `Armor` = '6492.0' WHERE `entry` = '17357';
-- Creeping Oozeling (1) (20566)
UPDATE `creature_template` SET `HealthMultiplier` = '0.675', `PowerMultiplier` = '0', `DamageMultiplier` = '2.0', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '4716', `MaxLevelHealth` = '4716', `MinLevelMana` = '0', `MaxLevelMana` = '0', `MinMeleeDmg` = '505', `MaxMeleeDmg` = '714', `MinRangedDmg` = '431', `MaxRangedDmg` = '640', `MeleeAttackPower` = '304.0', `RangedAttackPower` = '44.0', `Armor` = '6792.0' WHERE `entry` = '20566';


-- Fel Orc Convert 17083 / 20567
UPDATE creature_template SET LootId=17083, PickpocketLootId=17083 WHERE entry IN (17083,20567);
-- Fel Orc Convert (17083)
UPDATE `creature_template` SET `HealthMultiplier` = '1.45', `PowerMultiplier` = '0', `DamageMultiplier` = '1.8', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '9803', `MaxLevelHealth` = '9803', `MinLevelMana` = '0', `MaxLevelMana` = '0', `MinMeleeDmg` = '435', `MaxMeleeDmg` = '614', `MinRangedDmg` = '369', `MaxRangedDmg` = '549', `MeleeAttackPower` = '298.0', `RangedAttackPower` = '43.0', `Armor` = '6492.0' WHERE `entry` = '17083';
-- Fel Orc Convert (1) (20567)
UPDATE `creature_template` SET `HealthMultiplier` = '2.0', `PowerMultiplier` = '0', `DamageMultiplier` = '4.0', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '13972', `MaxLevelHealth` = '13972', `MinLevelMana` = '0', `MaxLevelMana` = '0', `MinMeleeDmg` = '1010', `MaxMeleeDmg` = '1428', `MinRangedDmg` = '861', `MaxRangedDmg` = '1279', `MeleeAttackPower` = '304.0', `RangedAttackPower` = '44.0', `Armor` = '6792.0' WHERE `entry` = '20567';


-- Heathen Guard 17621 / 20569
UPDATE creature_template SET MeleeBaseAttackTime=1400, RangedBaseAttackTime=1900 WHERE entry IN (17621,20569);
-- Heathen Guard (17621)
UPDATE `creature_template` SET `HealthMultiplier` = '1.25', `PowerMultiplier` = '0', `DamageMultiplier` = '3.22', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '8451', `MaxLevelHealth` = '8451', `MinLevelMana` = '0', `MaxLevelMana` = '0', `MinMeleeDmg` = '544', `MaxMeleeDmg` = '768', `MinRangedDmg` = '624', `MaxRangedDmg` = '926', `MeleeAttackPower` = '298.0', `RangedAttackPower` = '43.0', `Armor` = '6492.0' WHERE `entry` = '17621';
-- Heathen Guard (1) (20569)
UPDATE `creature_template` SET `HealthMultiplier` = '1.6875', `PowerMultiplier` = '0', `DamageMultiplier` = '4.18', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '11789', `MaxLevelHealth` = '11789', `MinLevelMana` = '0', `MaxLevelMana` = '0', `MinMeleeDmg` = '738', `MaxMeleeDmg` = '1044', `MinRangedDmg` = '1023', `MaxRangedDmg` = '1519', `MeleeAttackPower` = '304.0', `RangedAttackPower` = '44.0', `Armor` = '6792.0' WHERE `entry` = '20569';


-- Rabid Warhound 17669 / 20574
UPDATE creature_template SET LootId=17669, SkinningLootId=70062 WHERE entry IN (17669,20574);
-- Rabid Warhound (17669)
UPDATE `creature_template` SET `HealthMultiplier` = '1.45', `PowerMultiplier` = '0', `DamageMultiplier` = '1.8', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '9173', `MaxLevelHealth` = '9173', `MinLevelMana` = '0', `MaxLevelMana` = '0', `MinMeleeDmg` = '298', `MaxMeleeDmg` = '419', `MinRangedDmg` = '333', `MaxRangedDmg` = '494', `MeleeAttackPower` = '288.0', `RangedAttackPower` = '39.0', `Armor` = '5892.0' WHERE `entry` = '17669';
-- Rabid Warhound (1) (20574)
UPDATE `creature_template` SET `HealthMultiplier` = '1.75', `PowerMultiplier` = '0', `DamageMultiplier` = '3.0', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '12226', `MaxLevelHealth` = '12226', `MinLevelMana` = '0', `MaxLevelMana` = '0', `MinMeleeDmg` = '568', `MaxMeleeDmg` = '803', `MinRangedDmg` = '646', `MaxRangedDmg` = '960', `MeleeAttackPower` = '304.0', `RangedAttackPower` = '44.0', `Armor` = '6792.0' WHERE `entry` = '20574';


-- Reaver Guard 17623 / 20575
-- Reaver Guard (17623)
UPDATE `creature_template` SET `HealthMultiplier` = '1.25', `PowerMultiplier` = '0', `DamageMultiplier` = '3.0', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '8451', `MaxLevelHealth` = '8451', `MinLevelMana` = '0', `MaxLevelMana` = '0', `MinMeleeDmg` = '507', `MaxMeleeDmg` = '716', `MinRangedDmg` = '616', `MaxRangedDmg` = '914', `MeleeAttackPower` = '298.0', `RangedAttackPower` = '43.0', `Armor` = '6492.0' WHERE `entry` = '17623';
-- Reaver Guard (1) (20575)
UPDATE `creature_template` SET `HealthMultiplier` = '1.6875', `PowerMultiplier` = '0', `DamageMultiplier` = '10.0', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '11789', `MaxLevelHealth` = '11789', `MinLevelMana` = '0', `MaxLevelMana` = '0', `MinMeleeDmg` = '1767', `MaxMeleeDmg` = '2499', `MinRangedDmg` = '2153', `MaxRangedDmg` = '3199', `MeleeAttackPower` = '304.0', `RangedAttackPower` = '44.0', `Armor` = '6792.0' WHERE `entry` = '20575';


-- Shadowmoon Acolyte 16594 / 20576
-- Shadowmoon Acolyte (16594)
UPDATE `creature_template` SET `HealthMultiplier` = '2.9', `PowerMultiplier` = '2.25', `DamageMultiplier` = '4.676', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '14181', `MaxLevelHealth` = '14181', `MinLevelMana` = '16191', `MaxLevelMana` = '16191', `MinMeleeDmg` = '916', `MaxMeleeDmg` = '1330', `MinRangedDmg` = '849', `MaxRangedDmg` = '1264', `MeleeAttackPower` = '135.0', `RangedAttackPower` = '28.0', `Armor` = '3427.0' WHERE `entry` = '16594';
-- Shadowmoon Acolyte (1) (20576)
UPDATE `creature_template` SET `HealthMultiplier` = '3.915', `PowerMultiplier` = '5.0', `DamageMultiplier` = '12.0', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '19144', `MaxLevelHealth` = '19144', `MinLevelMana` = '35980', `MaxLevelMana` = '35980', `MinMeleeDmg` = '2352', `MaxMeleeDmg` = '3412', `MinRangedDmg` = '2168', `MaxRangedDmg` = '3228', `MeleeAttackPower` = '135.0', `RangedAttackPower` = '28.0', `Armor` = '3427.0' WHERE `entry` = '20576';



-- Shadowmoon Darkcaster 17694 / 20577
-- Shadowmoon Darkcaster (17694)
UPDATE `creature_template` SET `HealthMultiplier` = '2.9', `PowerMultiplier` = '2.25', `DamageMultiplier` = '4.676', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '14181', `MaxLevelHealth` = '14181', `MinLevelMana` = '16191', `MaxLevelMana` = '16191', `MinMeleeDmg` = '916', `MaxMeleeDmg` = '1330', `MinRangedDmg` = '849', `MaxRangedDmg` = '1264', `MeleeAttackPower` = '135.0', `RangedAttackPower` = '28.0', `Armor` = '3427.0' WHERE `entry` = '17694';
-- Shadowmoon Darkcaster (1) (20577)
UPDATE `creature_template` SET `HealthMultiplier` = '3.915', `PowerMultiplier` = '5.0', `DamageMultiplier` = '13.0', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '19144', `MaxLevelHealth` = '19144', `MinLevelMana` = '35980', `MaxLevelMana` = '35980', `MinMeleeDmg` = '2548', `MaxMeleeDmg` = '3696', `MinRangedDmg` = '2349', `MaxRangedDmg` = '3497', `MeleeAttackPower` = '135.0', `RangedAttackPower` = '28.0', `Armor` = '3427.0' WHERE `entry` = '20577';


-- Sharpshooter Guard 17622 / 20578
-- Sharpshooter Guard (17622)
UPDATE `creature_template` SET `HealthMultiplier` = '1.25', `PowerMultiplier` = '0', `DamageMultiplier` = '3.0', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '8451', `MaxLevelHealth` = '8451', `MinLevelMana` = '0', `MaxLevelMana` = '0', `MinMeleeDmg` = '507', `MaxMeleeDmg` = '716', `MinRangedDmg` = '616', `MaxRangedDmg` = '914', `MeleeAttackPower` = '298.0', `RangedAttackPower` = '43.0', `Armor` = '6492.0' WHERE `entry` = '17622';
-- Sharpshooter Guard (1) (20578)
UPDATE `creature_template` SET `HealthMultiplier` = '1.6875', `PowerMultiplier` = '0', `DamageMultiplier` = '10.0', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '11789', `MaxLevelHealth` = '11789', `MinLevelMana` = '0', `MaxLevelMana` = '0', `MinMeleeDmg` = '1767', `MaxMeleeDmg` = '2499', `MinRangedDmg` = '2153', `MaxRangedDmg` = '3199', `MeleeAttackPower` = '304.0', `RangedAttackPower` = '44.0', `Armor` = '6792.0' WHERE `entry` = '20578';


-- Shattered Hand Archer 17427 / 20579
-- Shattered Hand Archer (17427)
UPDATE `creature_template` SET `HealthMultiplier` = '3.0', `PowerMultiplier` = '0', `DamageMultiplier` = '4.0', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '20283', `MaxLevelHealth` = '20283', `MinLevelMana` = '0', `MaxLevelMana` = '0', `MinMeleeDmg` = '967', `MaxMeleeDmg` = '1365', `MinRangedDmg` = '821', `MaxRangedDmg` = '1219', `MeleeAttackPower` = '298.0', `RangedAttackPower` = '43.0', `Armor` = '6492.0' WHERE `entry` = '17427';
-- Shattered Hand Archer (1) (20579)
UPDATE `creature_template` SET `HealthMultiplier` = '1.35', `PowerMultiplier` = '0', `DamageMultiplier` = '10.0', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '9431', `MaxLevelHealth` = '9431', `MinLevelMana` = '0', `MaxLevelMana` = '0', `MinMeleeDmg` = '2525', `MaxMeleeDmg` = '3570', `MinRangedDmg` = '2153', `MaxRangedDmg` = '3199', `MeleeAttackPower` = '304.0', `RangedAttackPower` = '44.0', `Armor` = '6792.0' WHERE `entry` = '20579';


-- Shattered Hand Assassin 17695 / 20580
UPDATE creature_template SET MinLevel=70, MaxLevel=71 WHERE entry IN (17695,20580);
-- Shattered Hand Assassin (17695)
UPDATE `creature_template` SET `HealthMultiplier` = '2.9', `PowerMultiplier` = '0', `DamageMultiplier` = '5.0', `DamageVariance` = '1.0', `ArmorMultiplier` = '0.803639', `MinLevelHealth` = '20259', `MaxLevelHealth` = '20825', `MinLevelMana` = '0', `MaxLevelMana` = '0', `MinMeleeDmg` = '1010', `MaxMeleeDmg` = '1452', `MinRangedDmg` = '1077', `MaxRangedDmg` = '1630', `MeleeAttackPower` = '308.0', `RangedAttackPower` = '48.0', `Armor` = '5697.0' WHERE `entry` = '17695';
-- Shattered Hand Assassin (1) (20580)
UPDATE `creature_template` SET `HealthMultiplier` = '3.915', `PowerMultiplier` = '0', `DamageMultiplier` = '14.0', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '27350', `MaxLevelHealth` = '28114', `MinLevelMana` = '0', `MaxLevelMana` = '0', `MinMeleeDmg` = '2828', `MaxMeleeDmg` = '4066', `MinRangedDmg` = '3015', `MaxRangedDmg` = '4563', `MeleeAttackPower` = '308.0', `RangedAttackPower` = '48.0', `Armor` = '7089.0' WHERE `entry` = '20580';


-- Shattered Hand Blood Guard 17461 / 20581
UPDATE creature_template SET FactionAlliance=16, FactionHorde=16 WHERE entry IN (17461,20581);
UPDATE creature_template SET MeleeBaseAttackTime=2000, RangedBaseAttackTime=2000 WHERE entry IN (17461,20581);
-- Shattered Hand Blood Guard (17461)
UPDATE `creature_template` SET `HealthMultiplier` = '3.9', `PowerMultiplier` = '0', `DamageMultiplier` = '5.0', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '28006', `MaxLevelHealth` = '28006', `MinLevelMana` = '0', `MaxLevelMana` = '0', `MinMeleeDmg` = '1284', `MaxMeleeDmg` = '1815', `MinRangedDmg` = '1098', `MaxRangedDmg` = '1630', `MeleeAttackPower` = '308.0', `RangedAttackPower` = '48.0', `Armor` = '7089.0' WHERE `entry` = '17461';
-- Shattered Hand Blood Guard (1) (20581)
UPDATE `creature_template` SET `HealthMultiplier` = '3.9', `PowerMultiplier` = '0', `DamageMultiplier` = '19.0', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '28006', `MaxLevelHealth` = '28006', `MinLevelMana` = '0', `MaxLevelMana` = '0', `MinMeleeDmg` = '4878', `MaxMeleeDmg` = '6898', `MinRangedDmg` = '4172', `MaxRangedDmg` = '6193', `MeleeAttackPower` = '308.0', `RangedAttackPower` = '48.0', `Armor` = '7089.0' WHERE `entry` = '20581';


-- Shattered Hand Brawler 16593 / 20582
-- Shattered Hand Brawler (16593)
UPDATE `creature_template` SET `HealthMultiplier` = '2.9', `PowerMultiplier` = '0', `DamageMultiplier` = '4.66', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '20259', `MaxLevelHealth` = '20259', `MinLevelMana` = '0', `MaxLevelMana` = '0', `MinMeleeDmg` = '1177', `MaxMeleeDmg` = '1664', `MinRangedDmg` = '1012', `MaxRangedDmg` = '1503', `MeleeAttackPower` = '304.0', `RangedAttackPower` = '44.0', `Armor` = '6792.0' WHERE `entry` = '16593';
-- Shattered Hand Brawler (1) (20582)
UPDATE `creature_template` SET `HealthMultiplier` = '3.915', `PowerMultiplier` = '0', `DamageMultiplier` = '12.0', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '27350', `MaxLevelHealth` = '27350', `MinLevelMana` = '0', `MaxLevelMana` = '0', `MinMeleeDmg` = '3030', `MaxMeleeDmg` = '4284', `MinRangedDmg` = '2584', `MaxRangedDmg` = '3838', `MeleeAttackPower` = '304.0', `RangedAttackPower` = '44.0', `Armor` = '6792.0' WHERE `entry` = '20582';


-- Shattered Hand Centurion 17465 / 20583
UPDATE creature_template SET MinLevel=70, MaxLevel=71 WHERE entry IN (17465,20583);
-- Shattered Hand Centurion (17465)
UPDATE `creature_template` SET `HealthMultiplier` = '3.9', `PowerMultiplier` = '0', `DamageMultiplier` = '5.0', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '27245', `MaxLevelHealth` = '28006', `MinLevelMana` = '0', `MaxLevelMana` = '0', `MinMeleeDmg` = '1262', `MaxMeleeDmg` = '1815', `MinRangedDmg` = '1077', `MaxRangedDmg` = '1630', `MeleeAttackPower` = '308.0', `RangedAttackPower` = '48.0', `Armor` = '7089.0' WHERE `entry` = '17465';
-- Shattered Hand Centurion (1) (20583)
UPDATE `creature_template` SET `HealthMultiplier` = '5.265', `PowerMultiplier` = '0', `DamageMultiplier` = '13.0', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '36781', `MaxLevelHealth` = '37808', `MinLevelMana` = '0', `MaxLevelMana` = '0', `MinMeleeDmg` = '3282', `MaxMeleeDmg` = '4720', `MinRangedDmg` = '2799', `MaxRangedDmg` = '4237', `MeleeAttackPower` = '308.0', `RangedAttackPower` = '48.0', `Armor` = '7089.0' WHERE `entry` = '20583';


-- Shattered Hand Champion 17671 / 20584
UPDATE creature_template SET MinLevel=70, MaxLevel=71 WHERE entry IN (17671,20584);
-- Shattered Hand Champion (17671)
UPDATE `creature_template` SET `HealthMultiplier` = '3.9', `PowerMultiplier` = '0', `DamageMultiplier` = '5.0', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '27245', `MaxLevelHealth` = '28006', `MinLevelMana` = '0', `MaxLevelMana` = '0', `MinMeleeDmg` = '1262', `MaxMeleeDmg` = '1815', `MinRangedDmg` = '1077', `MaxRangedDmg` = '1630', `MeleeAttackPower` = '308.0', `RangedAttackPower` = '48.0', `Armor` = '7089.0' WHERE `entry` = '17671';
-- Shattered Hand Champion (1) (20584)
UPDATE `creature_template` SET `HealthMultiplier` = '5.265', `PowerMultiplier` = '0', `DamageMultiplier` = '14.0', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '36781', `MaxLevelHealth` = '37808', `MinLevelMana` = '0', `MaxLevelMana` = '0', `MinMeleeDmg` = '3535', `MaxMeleeDmg` = '5083', `MinRangedDmg` = '3015', `MaxRangedDmg` = '4563', `MeleeAttackPower` = '308.0', `RangedAttackPower` = '48.0', `Armor` = '7089.0' WHERE `entry` = '20584';


-- Shattered Hand Executioner 17301 / 20585
UPDATE creature_template SET MinLevel=70, MaxLevel=70 WHERE entry IN (17301,20585);
UPDATE creature_template SET FactionAlliance=16, FactionHorde=16 WHERE entry IN (17301,20585);
UPDATE creature_template SET UnitFlags=1 WHERE entry IN (17301,20585);
-- Shattered Hand Executioner (17301)
UPDATE `creature_template` SET `MinLevel` = '69', `MaxLevel` = '69', `HealthMultiplier` = '2.9', `PowerMultiplier` = '0', `DamageMultiplier` = '4.664', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '19607', `MaxLevelHealth` = '19607', `MinLevelMana` = '0', `MaxLevelMana` = '0', `MinMeleeDmg` = '1127', `MaxMeleeDmg` = '1591', `MinRangedDmg` = '964', `MaxRangedDmg` = '1432', `MeleeAttackPower` = '298.0', `RangedAttackPower` = '43.0', `Armor` = '6492.0' WHERE `entry` = '17301';
-- Shattered Hand Executioner (1) (20585)
UPDATE `creature_template` SET `HealthMultiplier` = '3.915', `PowerMultiplier` = '0', `DamageMultiplier` = '14.0', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '27350', `MaxLevelHealth` = '27350', `MinLevelMana` = '0', `MaxLevelMana` = '0', `MinMeleeDmg` = '3535', `MaxMeleeDmg` = '4998', `MinRangedDmg` = '3015', `MaxRangedDmg` = '4478', `MeleeAttackPower` = '304.0', `RangedAttackPower` = '44.0', `Armor` = '6792.0' WHERE `entry` = '20585';


-- Shattered Hand Gladiator 17464 / 20586
-- Shattered Hand Gladiator (17464)
UPDATE `creature_template` SET `HealthMultiplier` = '2.9', `PowerMultiplier` = '0', `DamageMultiplier` = '4.66', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '20259', `MaxLevelHealth` = '20259', `MinLevelMana` = '0', `MaxLevelMana` = '0', `MinMeleeDmg` = '1177', `MaxMeleeDmg` = '1664', `MinRangedDmg` = '1012', `MaxRangedDmg` = '1503', `MeleeAttackPower` = '304.0', `RangedAttackPower` = '44.0', `Armor` = '6792.0' WHERE `entry` = '17464';
-- Shattered Hand Gladiator (1) (20586)
UPDATE `creature_template` SET `HealthMultiplier` = '3.915', `PowerMultiplier` = '0', `DamageMultiplier` = '13.0', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '27350', `MaxLevelHealth` = '27350', `MinLevelMana` = '0', `MaxLevelMana` = '0', `MinMeleeDmg` = '3282', `MaxMeleeDmg` = '4641', `MinRangedDmg` = '2799', `MaxRangedDmg` = '4158', `MeleeAttackPower` = '304.0', `RangedAttackPower` = '44.0', `Armor` = '6792.0' WHERE `entry` = '20586';


-- Shattered Hand Heathen 17420 / 20587
-- Shattered Hand Heathen (17420)
UPDATE `creature_template` SET `HealthMultiplier` = '2.9', `PowerMultiplier` = '0', `DamageMultiplier` = '4.66', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '19607', `MaxLevelHealth` = '19607', `MinLevelMana` = '0', `MaxLevelMana` = '0', `MinMeleeDmg` = '1014', `MaxMeleeDmg` = '1431', `MinRangedDmg` = '964', `MaxRangedDmg` = '1432', `MeleeAttackPower` = '298.0', `RangedAttackPower` = '43.0', `Armor` = '6492.0' WHERE `entry` = '17420';
-- Shattered Hand Heathen (1) (20587)
UPDATE `creature_template` SET `HealthMultiplier` = '3.915', `PowerMultiplier` = '0', `DamageMultiplier` = '10.0', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '27350', `MaxLevelHealth` = '27350', `MinLevelMana` = '0', `MaxLevelMana` = '0', `MinMeleeDmg` = '2272', `MaxMeleeDmg` = '3213', `MinRangedDmg` = '2153', `MaxRangedDmg` = '3199', `MeleeAttackPower` = '304.0', `RangedAttackPower` = '44.0', `Armor` = '6792.0' WHERE `entry` = '20587';


-- Shattered Hand Houndmaster 17670 / 20588
-- Shattered Hand Houndmaster (17670)
UPDATE `creature_template` SET `HealthMultiplier` = '2.9', `PowerMultiplier` = '0', `DamageMultiplier` = '4.66', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '20259', `MaxLevelHealth` = '20259', `MinLevelMana` = '0', `MaxLevelMana` = '0', `MinMeleeDmg` = '1177', `MaxMeleeDmg` = '1664', `MinRangedDmg` = '1012', `MaxRangedDmg` = '1503', `MeleeAttackPower` = '304.0', `RangedAttackPower` = '44.0', `Armor` = '6792.0' WHERE `entry` = '17670';
-- Shattered Hand Houndmaster (1) (20588)
UPDATE `creature_template` SET `HealthMultiplier` = '3.91', `PowerMultiplier` = '0', `DamageMultiplier` = '12.0', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '27315', `MaxLevelHealth` = '27315', `MinLevelMana` = '0', `MaxLevelMana` = '0', `MinMeleeDmg` = '3030', `MaxMeleeDmg` = '4284', `MinRangedDmg` = '2584', `MaxRangedDmg` = '3838', `MeleeAttackPower` = '304.0', `RangedAttackPower` = '44.0', `Armor` = '6792.0' WHERE `entry` = '20588';


-- Shattered Hand Legionnaire 16700 / 20589
-- Shattered Hand Legionnaire (16700)
UPDATE `creature_template` SET `HealthMultiplier` = '3.9', `PowerMultiplier` = '0', `DamageMultiplier` = '5.0', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '27245', `MaxLevelHealth` = '27245', `MinLevelMana` = '0', `MaxLevelMana` = '0', `MinMeleeDmg` = '1262', `MaxMeleeDmg` = '1785', `MinRangedDmg` = '1077', `MaxRangedDmg` = '1599', `MeleeAttackPower` = '304.0', `RangedAttackPower` = '44.0', `Armor` = '6792.0' WHERE `entry` = '16700';
-- Shattered Hand Legionnaire (1) (20589)
UPDATE `creature_template` SET `HealthMultiplier` = '7.5', `PowerMultiplier` = '0', `DamageMultiplier` = '14.5', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '52395', `MaxLevelHealth` = '52395', `MinLevelMana` = '0', `MaxLevelMana` = '0', `MinMeleeDmg` = '3661', `MaxMeleeDmg` = '5177', `MinRangedDmg` = '3122', `MaxRangedDmg` = '4638', `MeleeAttackPower` = '304.0', `RangedAttackPower` = '44.0', `Armor` = '6792.0' WHERE `entry` = '20589';


-- Shattered Hand Reaver 16699 / 20590
-- Shattered Hand Reaver (16699)
UPDATE `creature_template` SET `HealthMultiplier` = '2.9', `PowerMultiplier` = '0', `DamageMultiplier` = '4.66', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '19607', `MaxLevelHealth` = '20259', `MinLevelMana` = '0', `MaxLevelMana` = '0', `MinMeleeDmg` = '1127', `MaxMeleeDmg` = '1664', `MinRangedDmg` = '964', `MaxRangedDmg` = '1503', `MeleeAttackPower` = '304.0', `RangedAttackPower` = '44.0', `Armor` = '6792.0' WHERE `entry` = '16699';
-- Shattered Hand Reaver (1) (20590)
UPDATE `creature_template` SET `HealthMultiplier` = '3.915', `PowerMultiplier` = '0', `DamageMultiplier` = '13.0', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '27350', `MaxLevelHealth` = '27350', `MinLevelMana` = '0', `MaxLevelMana` = '0', `MinMeleeDmg` = '3282', `MaxMeleeDmg` = '4641', `MinRangedDmg` = '2799', `MaxRangedDmg` = '4158', `MeleeAttackPower` = '304.0', `RangedAttackPower` = '44.0', `Armor` = '6792.0' WHERE `entry` = '20590';


-- Shattered Hand Savage 16523 / 20591
-- Shattered Hand Savage (16523)
UPDATE `creature_template` SET `HealthMultiplier` = '2.9', `PowerMultiplier` = '0', `DamageMultiplier` = '4.664', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '19607', `MaxLevelHealth` = '19607', `MinLevelMana` = '0', `MaxLevelMana` = '0', `MinMeleeDmg` = '1127', `MaxMeleeDmg` = '1591', `MinRangedDmg` = '964', `MaxRangedDmg` = '1432', `MeleeAttackPower` = '298.0', `RangedAttackPower` = '43.0', `Armor` = '6492.0' WHERE `entry` = '16523';
-- Shattered Hand Savage (1) (20591)
UPDATE `creature_template` SET `HealthMultiplier` = '3.915', `PowerMultiplier` = '0', `DamageMultiplier` = '12.0', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '27350', `MaxLevelHealth` = '27350', `MinLevelMana` = '0', `MaxLevelMana` = '0', `MinMeleeDmg` = '3030', `MaxMeleeDmg` = '4284', `MinRangedDmg` = '2584', `MaxRangedDmg` = '3838', `MeleeAttackPower` = '304.0', `RangedAttackPower` = '44.0', `Armor` = '6792.0' WHERE `entry` = '20591';


-- Shattered Hand Sentry 16507 / 20593
-- Shattered Hand Sentry (16507)
UPDATE `creature_template` SET `HealthMultiplier` = '2.9', `PowerMultiplier` = '0', `DamageMultiplier` = '4.664', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '19607', `MaxLevelHealth` = '19607', `MinLevelMana` = '0', `MaxLevelMana` = '0', `MinMeleeDmg` = '1127', `MaxMeleeDmg` = '1591', `MinRangedDmg` = '964', `MaxRangedDmg` = '1432', `MeleeAttackPower` = '298.0', `RangedAttackPower` = '43.0', `Armor` = '6492.0' WHERE `entry` = '16507';
-- Shattered Hand Sentry (1) (20593)
UPDATE `creature_template` SET `HealthMultiplier` = '3.915', `PowerMultiplier` = '0', `DamageMultiplier` = '13.0', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '27350', `MaxLevelHealth` = '27350', `MinLevelMana` = '0', `MaxLevelMana` = '0', `MinMeleeDmg` = '3282', `MaxMeleeDmg` = '4641', `MinRangedDmg` = '2799', `MaxRangedDmg` = '4158', `MeleeAttackPower` = '304.0', `RangedAttackPower` = '44.0', `Armor` = '6792.0' WHERE `entry` = '20593';


-- Shattered Hand Sharpshooter 16704 / 20594
-- Shattered Hand Sharpshooter (16704)
UPDATE `creature_template` SET `HealthMultiplier` = '2.9', `PowerMultiplier` = '0', `DamageMultiplier` = '4.66', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '19607', `MaxLevelHealth` = '20259', `MinLevelMana` = '0', `MaxLevelMana` = '0', `MinMeleeDmg` = '1127', `MaxMeleeDmg` = '1664', `MinRangedDmg` = '964', `MaxRangedDmg` = '1503', `MeleeAttackPower` = '304.0', `RangedAttackPower` = '44.0', `Armor` = '6792.0' WHERE `entry` = '16704';
-- Shattered Hand Sharpshooter (1) (20594)
UPDATE `creature_template` SET `HealthMultiplier` = '1.75', `PowerMultiplier` = '0', `DamageMultiplier` = '12.0', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '12226', `MaxLevelHealth` = '12226', `MinLevelMana` = '0', `MaxLevelMana` = '0', `MinMeleeDmg` = '3030', `MaxMeleeDmg` = '4284', `MinRangedDmg` = '2584', `MaxRangedDmg` = '3838', `MeleeAttackPower` = '304.0', `RangedAttackPower` = '44.0', `Armor` = '6792.0' WHERE `entry` = '20594';


-- Shattered Hand Zealot 17462 / 20595
-- Shattered Hand Zealot (17462)
UPDATE `creature_template` SET `HealthMultiplier` = '1.0', `PowerMultiplier` = '0', `DamageMultiplier` = '1.0', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '6761', `MaxLevelHealth` = '6761', `MinLevelMana` = '0', `MaxLevelMana` = '0', `MinMeleeDmg` = '242', `MaxMeleeDmg` = '341', `MinRangedDmg` = '205', `MaxRangedDmg` = '305', `MeleeAttackPower` = '298.0', `RangedAttackPower` = '43.0', `Armor` = '6492.0' WHERE `entry` = '17462';
-- Shattered Hand Zealot (1) (20595)
UPDATE `creature_template` SET `HealthMultiplier` = '1.35', `PowerMultiplier` = '0', `DamageMultiplier` = '8.0', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '9431', `MaxLevelHealth` = '9431', `MinLevelMana` = '0', `MaxLevelMana` = '0', `MinMeleeDmg` = '2020', `MaxMeleeDmg` = '2856', `MinRangedDmg` = '1723', `MaxRangedDmg` = '2559', `MeleeAttackPower` = '304.0', `RangedAttackPower` = '44.0', `Armor` = '6792.0' WHERE `entry` = '20595';



-- ==========================
-- Tempest Keep: The Mechanar
-- ==========================
-- Arcane Servant 20478 / 21521
UPDATE creature_template SET MeleeBaseAttackTime=1400, RangedBaseAttackTime=1900 WHERE entry IN (20478,21521); 
-- Arcane Servant (20478)
UPDATE `creature_template` SET `HealthMultiplier` = '0.75', `PowerMultiplier` = '1.0', `DamageMultiplier` = '2.143', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '4192', `MaxLevelHealth` = '4192', `MinLevelMana` = '3155', `MaxLevelMana` = '3155', `MinMeleeDmg` = '351', `MaxMeleeDmg` = '497', `MinRangedDmg` = '395', `MaxRangedDmg` = '588', `MeleeAttackPower` = '286.0', `RangedAttackPower` = '33.0', `Armor` = '5474.0' WHERE `entry` = '20478';
-- Arcane Servant (1) (21521)
UPDATE `creature_template` SET `HealthMultiplier` = '1.0', `PowerMultiplier` = '1.0', `DamageMultiplier` = '3.0', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '5589', `MaxLevelHealth` = '5589', `MinLevelMana` = '3155', `MaxLevelMana` = '3155', `MinMeleeDmg` = '492', `MaxMeleeDmg` = '695', `MinRangedDmg` = '565', `MaxRangedDmg` = '841', `MeleeAttackPower` = '286.0', `RangedAttackPower` = '33.0', `Armor` = '5474.0' WHERE `entry` = '21521';


-- Bloodwarder Centurion 19510 / 21522
UPDATE creature_template SET ModelId1=17773, ModelId2=17774, ModelId3=17775, ModelId4=17776 WHERE entry IN (19510,21522);
UPDATE creature_template SET LootId=19510, PickpocketLootId=19510 WHERE entry IN (19510,21522);
-- Bloodwarder Centurion (19510)
UPDATE `creature_template` SET `HealthMultiplier` = '3.0', `PowerMultiplier` = '0', `DamageMultiplier` = '4.66', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '20958', `MaxLevelHealth` = '20958', `MinLevelMana` = '0', `MaxLevelMana` = '0', `MinMeleeDmg` = '1177', `MaxMeleeDmg` = '1664', `MinRangedDmg` = '1012', `MaxRangedDmg` = '1503', `MeleeAttackPower` = '304.0', `RangedAttackPower` = '44.0', `Armor` = '6792.0' WHERE `entry` = '19510';
-- Bloodwarder Centurion (1) (21522)
UPDATE `creature_template` SET `HealthMultiplier` = '4.5', `PowerMultiplier` = '0', `DamageMultiplier` = '12.0', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '32315', `MaxLevelHealth` = '32315', `MinLevelMana` = '0', `MaxLevelMana` = '0', `MinMeleeDmg` = '3081', `MaxMeleeDmg` = '4357', `MinRangedDmg` = '2635', `MaxRangedDmg` = '3911', `MeleeAttackPower` = '308.0', `RangedAttackPower` = '48.0', `Armor` = '7089.0' WHERE `entry` = '21522';


-- Bloodwarder Physician 20990 / 21523
UPDATE creature_template SET ModelId1=19968, ModelId3=19970 WHERE entry IN (20990,21523);
UPDATE creature_template SET LootId=20990, PickpocketLootId=20990 WHERE entry IN (20990,21523);
-- Bloodwarder Physician (20990)
UPDATE `creature_template` SET `HealthMultiplier` = '3.0', `PowerMultiplier` = '5.0', `DamageMultiplier` = '4.66', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '16227', `MaxLevelHealth` = '16227', `MinLevelMana` = '15400', `MaxLevelMana` = '15400', `MinMeleeDmg` = '1045', `MaxMeleeDmg` = '1473', `MinRangedDmg` = '885', `MaxRangedDmg` = '1317', `MeleeAttackPower` = '282.0', `RangedAttackPower` = '32.0', `Armor` = '5235.0' WHERE `entry` = '20990';
-- Bloodwarder Physician (1) (21523)
UPDATE `creature_template` SET `HealthMultiplier` = '3.5', `PowerMultiplier` = '5.0', `DamageMultiplier` = '10.0', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '19562', `MaxLevelHealth` = '19562', `MinLevelMana` = '15775', `MaxLevelMana` = '15775', `MinMeleeDmg` = '2343', `MaxMeleeDmg` = '3311', `MinRangedDmg` = '1982', `MaxRangedDmg` = '2949', `MeleeAttackPower` = '286.0', `RangedAttackPower` = '33.0', `Armor` = '5474.0' WHERE `entry` = '21523';


-- Bloodwarder Slayer 19167 / 21524
UPDATE creature_template SET ModelId1=17773, ModelId2=17774, ModelId3=17775, ModelId4=17776 WHERE entry IN (19167,21524);
UPDATE creature_template SET LootId=19167, PickpocketLootId=19167 WHERE entry IN (19167,21524);
-- Bloodwarder Slayer (19167)
UPDATE `creature_template` SET `HealthMultiplier` = '3.0', `PowerMultiplier` = '0', `DamageMultiplier` = '4.66', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '20958', `MaxLevelHealth` = '20958', `MinLevelMana` = '0', `MaxLevelMana` = '0', `MinMeleeDmg` = '1177', `MaxMeleeDmg` = '1664', `MinRangedDmg` = '1012', `MaxRangedDmg` = '1503', `MeleeAttackPower` = '304.0', `RangedAttackPower` = '44.0', `Armor` = '6792.0' WHERE `entry` = '19167';
-- Bloodwarder Slayer (1) (21524)
UPDATE `creature_template` SET `HealthMultiplier` = '4.05', `PowerMultiplier` = '0', `DamageMultiplier` = '12.0', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '28293', `MaxLevelHealth` = '28293', `MinLevelMana` = '0', `MaxLevelMana` = '0', `MinMeleeDmg` = '3030', `MaxMeleeDmg` = '4284', `MinRangedDmg` = '2584', `MaxRangedDmg` = '3838', `MeleeAttackPower` = '304.0', `RangedAttackPower` = '44.0', `Armor` = '6792.0' WHERE `entry` = '21524';


-- Mechanar Crusher 19231 / 21527
UPDATE creature_template SET LootId=19231, PickpocketLootId=19231 WHERE entry IN (19231,21527);
-- Mechanar Crusher (19231)
UPDATE `creature_template` SET `HealthMultiplier` = '3.0', `PowerMultiplier` = '0', `DamageMultiplier` = '5.25', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '20958', `MaxLevelHealth` = '20958', `MinLevelMana` = '0', `MaxLevelMana` = '0', `MinMeleeDmg` = '1458', `MaxMeleeDmg` = '2062', `MinRangedDmg` = '1141', `MaxRangedDmg` = '1695', `MeleeAttackPower` = '304.0', `RangedAttackPower` = '44.0', `Armor` = '6792.0' WHERE `entry` = '19231';
-- Mechanar Crusher (1) (21527)
UPDATE `creature_template` SET `HealthMultiplier` = '4.05', `PowerMultiplier` = '0', `DamageMultiplier` = '13.0', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '29083', `MaxLevelHealth` = '29083', `MinLevelMana` = '0', `MaxLevelMana` = '0', `MinMeleeDmg` = '3671', `MaxMeleeDmg` = '5192', `MinRangedDmg` = '2854', `MaxRangedDmg` = '4237', `MeleeAttackPower` = '308.0', `RangedAttackPower` = '48.0', `Armor` = '7089.0' WHERE `entry` = '21527';


-- Mechanar Driller 19712 / 21528
UPDATE creature_template SET LootId=19712, PickpocketLootId=19712 WHERE entry IN (19712,21528);
-- Mechanar Driller (19712)
UPDATE `creature_template` SET `HealthMultiplier` = '3.0', `PowerMultiplier` = '0', `DamageMultiplier` = '5.25', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '20958', `MaxLevelHealth` = '20958', `MinLevelMana` = '0', `MaxLevelMana` = '0', `MinMeleeDmg` = '1458', `MaxMeleeDmg` = '2062', `MinRangedDmg` = '1141', `MaxRangedDmg` = '1695', `MeleeAttackPower` = '304.0', `RangedAttackPower` = '44.0', `Armor` = '6792.0' WHERE `entry` = '19712';
-- Mechanar Driller (1) (21528)
UPDATE `creature_template` SET `HealthMultiplier` = '4.05', `PowerMultiplier` = '0', `DamageMultiplier` = '13.0', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '29083', `MaxLevelHealth` = '29083', `MinLevelMana` = '0', `MaxLevelMana` = '0', `MinMeleeDmg` = '3671', `MaxMeleeDmg` = '5192', `MinRangedDmg` = '2854', `MaxRangedDmg` = '4237', `MeleeAttackPower` = '308.0', `RangedAttackPower` = '48.0', `Armor` = '7089.0' WHERE `entry` = '21528';


-- Mechanar Tinkerer 19716 / 21531 -- Recalculate Heroic Damage Data (Damage Multiplier 2.0 ???)
UPDATE creature_template SET LootId=19716, PickpocketLootId=19716 WHERE entry IN (19716,21531);
-- Mechanar Tinkerer (19716)
UPDATE `creature_template` SET `HealthMultiplier` = '1.5', `PowerMultiplier` = '0', `DamageMultiplier` = '1.5', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '10142', `MaxLevelHealth` = '10142', `MinLevelMana` = '0', `MaxLevelMana` = '0', `MinMeleeDmg` = '362', `MaxMeleeDmg` = '512', `MinRangedDmg` = '308', `MaxRangedDmg` = '457', `MeleeAttackPower` = '298.0', `RangedAttackPower` = '43.0', `Armor` = '6492.0' WHERE `entry` = '19716';
-- Mechanar Tinkerer (1) (21531)
UPDATE `creature_template` SET `HealthMultiplier` = '2.025', `PowerMultiplier` = '0', `DamageMultiplier` = '5.0', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '14147', `MaxLevelHealth` = '14147', `MinLevelMana` = '0', `MaxLevelMana` = '0', `MinMeleeDmg` = '1262', `MaxMeleeDmg` = '1785', `MinRangedDmg` = '1077', `MaxRangedDmg` = '1599', `MeleeAttackPower` = '304.0', `RangedAttackPower` = '44.0', `Armor` = '6792.0' WHERE `entry` = '21531';


-- Mechanar Wrecker 19713 / 21532 -- Recalculate Heroic Damage Data
UPDATE creature_template SET LootId=19713, PickpocketLootId=19713 WHERE entry IN (19713,21532);
-- Mechanar Wrecker (19713)
UPDATE `creature_template` SET `HealthMultiplier` = '3.0', `PowerMultiplier` = '0', `DamageMultiplier` = '5.25', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '20958', `MaxLevelHealth` = '20958', `MinLevelMana` = '0', `MaxLevelMana` = '0', `MinMeleeDmg` = '1458', `MaxMeleeDmg` = '2062', `MinRangedDmg` = '1141', `MaxRangedDmg` = '1695', `MeleeAttackPower` = '304.0', `RangedAttackPower` = '44.0', `Armor` = '6792.0' WHERE `entry` = '19713';
-- Mechanar Wrecker (1) (21532)
UPDATE `creature_template` SET `HealthMultiplier` = '4.05', `PowerMultiplier` = '0', `DamageMultiplier` = '14.0', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '28293', `MaxLevelHealth` = '28293', `MinLevelMana` = '0', `MaxLevelMana` = '0', `MinMeleeDmg` = '3888', `MaxMeleeDmg` = '5498', `MinRangedDmg` = '3015', `MaxRangedDmg` = '4478', `MeleeAttackPower` = '304.0', `RangedAttackPower` = '44.0', `Armor` = '6792.0' WHERE `entry` = '21532';


-- Nether Wraith 21062 / 21535
UPDATE creature_template SET MeleeBaseAttackTime=1400, RangedBaseAttackTime=1900 WHERE entry IN (21062,21535); 
-- Nether Wraith (21062)
UPDATE `creature_template` SET `HealthMultiplier` = '1.5', `PowerMultiplier` = '1.0', `DamageMultiplier` = '2.143', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '8384', `MaxLevelHealth` = '8384', `MinLevelMana` = '3155', `MaxLevelMana` = '3155', `MinMeleeDmg` = '351', `MaxMeleeDmg` = '497', `MinRangedDmg` = '395', `MaxRangedDmg` = '588', `MeleeAttackPower` = '286.0', `RangedAttackPower` = '33.0', `Armor` = '5474.0' WHERE `entry` = '21062';
-- Nether Wraith (1) (21535)
UPDATE `creature_template` SET `HealthMultiplier` = '2.025', `PowerMultiplier` = '1.0', `DamageMultiplier` = '8.0', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '11318', `MaxLevelHealth` = '11318', `MinLevelMana` = '3155', `MaxLevelMana` = '3155', `MinMeleeDmg` = '1312', `MaxMeleeDmg` = '1854', `MinRangedDmg` = '1506', `MaxRangedDmg` = '2241', `MeleeAttackPower` = '286.0', `RangedAttackPower` = '33.0', `Armor` = '5474.0' WHERE `entry` = '21535';


-- Raging Flames 20481 / 21538
UPDATE creature_template SET MeleeBaseAttackTime=1400, RangedBaseAttackTime=1900 WHERE entry IN (20481,21538); 
-- Raging Flames (20481)
UPDATE `creature_template` SET `HealthMultiplier` = '16.5', `PowerMultiplier` = '0', `DamageMultiplier` = '2.86', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '121770', `MaxLevelHealth` = '121770', `MinLevelMana` = '0', `MaxLevelMana` = '0', `MinMeleeDmg` = '523', `MaxMeleeDmg` = '739', `MinRangedDmg` = '616', `MaxRangedDmg` = '914', `MeleeAttackPower` = '314.0', `RangedAttackPower` = '53.0', `Armor` = '7387.0' WHERE `entry` = '20481';
-- Raging Flames (1) (21538)
UPDATE `creature_template` SET `HealthMultiplier` = '22.275', `PowerMultiplier` = '0', `DamageMultiplier` = '8.0', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '164390', `MaxLevelHealth` = '164390', `MinLevelMana` = '0', `MaxLevelMana` = '0', `MinMeleeDmg` = '1462', `MaxMeleeDmg` = '2067', `MinRangedDmg` = '1700', `MaxRangedDmg` = '2522', `MeleeAttackPower` = '314.0', `RangedAttackPower` = '53.0', `Armor` = '7387.0' WHERE `entry` = '21538';


-- Sunseeker Astromage 19168 / 21539 -- Recalculate Heroic Damage Data
UPDATE creature_template SET ModelId1=17916, ModelId2=17917, ModelId3=17918, ModelId4=0 WHERE entry IN (19168,21539);
UPDATE creature_template SET LootId=19168, PickpocketLootId=19168 WHERE entry IN (19168,21539);
-- Sunseeker Astromage (19168)
UPDATE `creature_template` SET `HealthMultiplier` = '4.0', `PowerMultiplier` = '1.0', `DamageMultiplier` = '4.66', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '21636', `MaxLevelHealth` = '21636', `MinLevelMana` = '3080', `MaxLevelMana` = '3080', `MinMeleeDmg` = '1045', `MaxMeleeDmg` = '1473', `MinRangedDmg` = '885', `MaxRangedDmg` = '1317', `MeleeAttackPower` = '282.0', `RangedAttackPower` = '32.0', `Armor` = '5235.0' WHERE `entry` = '19168';
-- Sunseeker Astromage (1) (21539)
UPDATE `creature_template` SET `HealthMultiplier` = '5.4', `PowerMultiplier` = '1.0', `DamageMultiplier` = '12.0', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '30181', `MaxLevelHealth` = '30181', `MinLevelMana` = '3155', `MaxLevelMana` = '3155', `MinMeleeDmg` = '2812', `MaxMeleeDmg` = '3973', `MinRangedDmg` = '2378', `MaxRangedDmg` = '3539', `MeleeAttackPower` = '286.0', `RangedAttackPower` = '33.0', `Armor` = '5474.0' WHERE `entry` = '21539';


-- Sunseeker Engineer 20988 / 21540 -- Recalculate Heroic Damage Data
UPDATE creature_template SET ModelId1=19966, ModelId2=0, ModelId3=19967, ModelId4=0 WHERE entry IN (20988,21540);
UPDATE creature_template SET LootId=20988, PickpocketLootId=20988 WHERE entry IN (20988,21540);
-- Sunseeker Engineer (20988)
UPDATE `creature_template` SET `HealthMultiplier` = '3.0', `PowerMultiplier` = '1.0', `DamageMultiplier` = '4.66', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '16227', `MaxLevelHealth` = '16227', `MinLevelMana` = '3080', `MaxLevelMana` = '3080', `MinMeleeDmg` = '1045', `MaxMeleeDmg` = '1473', `MinRangedDmg` = '885', `MaxRangedDmg` = '1317', `MeleeAttackPower` = '282.0', `RangedAttackPower` = '32.0', `Armor` = '5235.0' WHERE `entry` = '20988';
-- Sunseeker Engineer (1) (21540)
UPDATE `creature_template` SET `HealthMultiplier` = '4.05', `PowerMultiplier` = '1.0', `DamageMultiplier` = '12.0', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '22635', `MaxLevelHealth` = '22635', `MinLevelMana` = '3155', `MaxLevelMana` = '3155', `MinMeleeDmg` = '2812', `MaxMeleeDmg` = '3973', `MinRangedDmg` = '2378', `MaxRangedDmg` = '3539', `MeleeAttackPower` = '286.0', `RangedAttackPower` = '33.0', `Armor` = '5474.0' WHERE `entry` = '21540';


-- Sunseeker Netherbinder 20059 / 21541
UPDATE creature_template SET ModelId1=17916, ModelId2=17917, ModelId3=17918, ModelId4=0 WHERE entry IN (20059,21541);
UPDATE creature_template SET LootId=20059, PickpocketLootId=20059 WHERE entry IN (20059,21541);
-- Sunseeker Netherbinder (20059)
UPDATE `creature_template` SET `HealthMultiplier` = '3.0', `PowerMultiplier` = '1.0', `DamageMultiplier` = '9.0', `DamageVariance` = '0.51', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '14670', `MaxLevelHealth` = '14670', `MinLevelMana` = '7196', `MaxLevelMana` = '7196', `MinMeleeDmg` = '1006', `MaxMeleeDmg` = '1420', `MinRangedDmg` = '903', `MaxRangedDmg` = '1345', `MeleeAttackPower` = '135.0', `RangedAttackPower` = '28.0', `Armor` = '3427.0' WHERE `entry` = '20059';
-- Sunseeker Netherbinder (1) (21541)
UPDATE `creature_template` SET `HealthMultiplier` = '4.05', `PowerMultiplier` = '1.0', `DamageMultiplier` = '20.0', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '19805', `MaxLevelHealth` = '19805', `MinLevelMana` = '7196', `MaxLevelMana` = '7196', `MinMeleeDmg` = '3919', `MaxMeleeDmg` = '5686', `MinRangedDmg` = '3614', `MaxRangedDmg` = '5380', `MeleeAttackPower` = '135.0', `RangedAttackPower` = '28.0', `Armor` = '3427.0' WHERE `entry` = '21541';


-- Tempest-Forge Destroyer 19735 / 21542 -- HEROIC MIGHT BE TOO OVERPOWERED SO MIGHT NEED TO SCAL BACK SLIGHTLY (NOTED AS AN EXTREMELY HARD HITTING NPC ON HEROIC)
UPDATE creature_template SET SpeedWalk=1, SpeedRun=1.42857 WHERE entry IN (19735,21542);
UPDATE creature_template SET LootId=19735, PickpocketLootId=0 WHERE entry IN (19735,21542);
-- Tempest-Forge Destroyer (19735)
UPDATE `creature_template` SET `HealthMultiplier` = '12.0', `PowerMultiplier` = '0', `DamageMultiplier` = '8.0', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '86172', `MaxLevelHealth` = '86172', `MinLevelMana` = '0', `MaxLevelMana` = '0', `MinMeleeDmg` = '2054', `MaxMeleeDmg` = '2905', `MinRangedDmg` = '1757', `MaxRangedDmg` = '2607', `MeleeAttackPower` = '308.0', `RangedAttackPower` = '48.0', `Armor` = '7089.0' WHERE `entry` = '19735';
-- Tempest-Forge Destroyer (1) (21542)
UPDATE `creature_template` SET `HealthMultiplier` = '16.2', `PowerMultiplier` = '0', `DamageMultiplier` = '24.0', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '116332', `MaxLevelHealth` = '116332', `MinLevelMana` = '0', `MaxLevelMana` = '0', `MinMeleeDmg` = '6161', `MaxMeleeDmg` = '8714', `MinRangedDmg` = '5270', `MaxRangedDmg` = '7822', `MeleeAttackPower` = '308.0', `RangedAttackPower` = '48.0', `Armor` = '7089.0' WHERE `entry` = '21542';


-- Tempest-Forge Patroller 19166 / 21543 -- Recalculate Heroic Damage Data (Heroic Damage Multiplier Might Be Too High or Normal Mode might be too low)
UPDATE creature_template SET LootId=19166, PickpocketLootId=0 WHERE entry IN (19166,21543);
-- Tempest-Forge Patroller (19166)
UPDATE `creature_template` SET `HealthMultiplier` = '5.0', `PowerMultiplier` = '0', `DamageMultiplier` = '2.0', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '35905', `MaxLevelHealth` = '35905', `MinLevelMana` = '0', `MaxLevelMana` = '0', `MinMeleeDmg` = '513', `MaxMeleeDmg` = '726', `MinRangedDmg` = '439', `MaxRangedDmg` = '652', `MeleeAttackPower` = '308.0', `RangedAttackPower` = '48.0', `Armor` = '7089.0' WHERE `entry` = '19166';
-- Tempest-Forge Patroller (1) (21543)
UPDATE `creature_template` SET `HealthMultiplier` = '6.75', `PowerMultiplier` = '0', `DamageMultiplier` = '12.0', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '48472', `MaxLevelHealth` = '48472', `MinLevelMana` = '0', `MaxLevelMana` = '0', `MinMeleeDmg` = '3081', `MaxMeleeDmg` = '4357', `MinRangedDmg` = '2635', `MaxRangedDmg` = '3911', `MeleeAttackPower` = '308.0', `RangedAttackPower` = '48.0', `Armor` = '7089.0' WHERE `entry` = '21543';



-- ==========================
-- Tempest Keep: The Botanica
-- ==========================
-- Bloodfalcon 18155 / 21544 -- Recalculate Heroic Damage Data
-- Bloodfalcon (18155)
UPDATE `creature_template` SET `HealthMultiplier` = '2.0', `PowerMultiplier` = '0', `DamageMultiplier` = '4.25', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '13522', `MaxLevelHealth` = '13522', `MinLevelMana` = '0', `MaxLevelMana` = '0', `MinMeleeDmg` = '822', `MaxMeleeDmg` = '1160', `MinRangedDmg` = '882', `MaxRangedDmg` = '1310', `MeleeAttackPower` = '298.0', `RangedAttackPower` = '43.0', `Armor` = '6492.0' WHERE `entry` = '18155';
-- Bloodfalcon (1) (21544)
UPDATE `creature_template` SET `HealthMultiplier` = '2.7', `PowerMultiplier` = '0', `DamageMultiplier` = '13.0', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '18862', `MaxLevelHealth` = '18862', `MinLevelMana` = '0', `MaxLevelMana` = '0', `MinMeleeDmg` = '2626', `MaxMeleeDmg` = '3713', `MinRangedDmg` = '2799', `MaxRangedDmg` = '4158', `MeleeAttackPower` = '304.0', `RangedAttackPower` = '44.0', `Armor` = '6792.0' WHERE `entry` = '21544';


-- Bloodwarder Falconer 17994 / 21545 -- Recalculate Heroic Damage Data
UPDATE creature_template SET ModelId1=17777, ModelId2=17778, ModelId3=17779, ModelId4=17780 WHERE entry IN (17994,21545);
UPDATE creature_template SET LootId=17994, PickpocketLootId=17994 WHERE entry IN (17994,21545);
-- Bloodwarder Falconer (17994)
UPDATE `creature_template` SET `HealthMultiplier` = '3.0', `PowerMultiplier` = '0', `DamageMultiplier` = '4.66', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '20958', `MaxLevelHealth` = '20958', `MinLevelMana` = '0', `MaxLevelMana` = '0', `MinMeleeDmg` = '1177', `MaxMeleeDmg` = '1664', `MinRangedDmg` = '1012', `MaxRangedDmg` = '1503', `MeleeAttackPower` = '304.0', `RangedAttackPower` = '44.0', `Armor` = '6792.0' WHERE `entry` = '17994';
-- Bloodwarder Falconer (1) (21545)
UPDATE `creature_template` SET `HealthMultiplier` = '4.05', `PowerMultiplier` = '0', `DamageMultiplier` = '12.0', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '29083', `MaxLevelHealth` = '29083', `MinLevelMana` = '0', `MaxLevelMana` = '0', `MinMeleeDmg` = '3081', `MaxMeleeDmg` = '4357', `MinRangedDmg` = '2635', `MaxRangedDmg` = '3911', `MeleeAttackPower` = '308.0', `RangedAttackPower` = '48.0', `Armor` = '7089.0' WHERE `entry` = '21545';


-- Bloodwarder Greenkeeper 18419 / 21546 -- Recalculate Heroic Damage Data
UPDATE creature_template SET ModelId1=17883, ModelId2=0, ModelId3=17884, ModelId4=0 WHERE entry IN (18419,21546);
-- Bloodwarder Greenkeeper (18419)
UPDATE `creature_template` SET `HealthMultiplier` = '3.0', `PowerMultiplier` = '1.0', `DamageMultiplier` = '4.66', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '16227', `MaxLevelHealth` = '16767', `MinLevelMana` = '3080', `MaxLevelMana` = '3155', `MinMeleeDmg` = '1045', `MaxMeleeDmg` = '1543', `MinRangedDmg` = '885', `MaxRangedDmg` = '1386', `MeleeAttackPower` = '286.0', `RangedAttackPower` = '33.0', `Armor` = '5474.0' WHERE `entry` = '18419';
-- Bloodwarder Greenkeeper (1) (21546)
UPDATE `creature_template` SET `HealthMultiplier` = '4.05', `PowerMultiplier` = '5.0', `DamageMultiplier` = '12.0', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '22635', `MaxLevelHealth` = '22635', `MinLevelMana` = '15775', `MaxLevelMana` = '15775', `MinMeleeDmg` = '2812', `MaxMeleeDmg` = '3973', `MinRangedDmg` = '2378', `MaxRangedDmg` = '3539', `MeleeAttackPower` = '286.0', `RangedAttackPower` = '33.0', `Armor` = '5474.0' WHERE `entry` = '21546';


-- Bloodwarder Mender 19633 / 21547 -- Recalculate Heroic Damage Data
UPDATE creature_template SET ModelId1=19051, ModelId2=19051, ModelId3=21331, ModelId4=21332 WHERE entry IN (19633,21547);
-- Bloodwarder Mender (19633)
UPDATE `creature_template` SET `HealthMultiplier` = '3.0', `PowerMultiplier` = '3.0', `DamageMultiplier` = '4.135', `DamageVariance` = '1.14', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '14199', `MaxLevelHealth` = '14670', `MinLevelMana` = '21093', `MaxLevelMana` = '21588', `MinMeleeDmg` = '873', `MaxMeleeDmg` = '1329', `MinRangedDmg` = '811', `MaxRangedDmg` = '1264', `MeleeAttackPower` = '135.0', `RangedAttackPower` = '28.0', `Armor` = '3427.0' WHERE `entry` = '19633';
-- Bloodwarder Mender (1) (21547)
UPDATE `creature_template` SET `HealthMultiplier` = '4.05', `PowerMultiplier` = '3.0', `DamageMultiplier` = '15.0', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '19805', `MaxLevelHealth` = '19805', `MinLevelMana` = '21588', `MaxLevelMana` = '21588', `MinMeleeDmg` = '2939', `MaxMeleeDmg` = '4265', `MinRangedDmg` = '2710', `MaxRangedDmg` = '4035', `MeleeAttackPower` = '135.0', `RangedAttackPower` = '28.0', `Armor` = '3427.0' WHERE `entry` = '21547';


-- Bloodwarder Protector 17993 / 21548 -- Recalculate Heroic Damage Data
UPDATE creature_template SET ModelId1=17773, ModelId2=17774, ModelId3=17775, ModelId4=17776 WHERE entry IN (17993,21548);
-- Bloodwarder Protector (17993)
UPDATE `creature_template` SET `HealthMultiplier` = '2.9', `PowerMultiplier` = '1.0', `DamageMultiplier` = '4.66', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '15686', `MaxLevelHealth` = '16208', `MinLevelMana` = '3080', `MaxLevelMana` = '3155', `MinMeleeDmg` = '1045', `MaxMeleeDmg` = '1543', `MinRangedDmg` = '885', `MaxRangedDmg` = '1386', `MeleeAttackPower` = '286.0', `RangedAttackPower` = '33.0', `Armor` = '5474.0' WHERE `entry` = '17993';
-- Bloodwarder Protector (1) (21548)
UPDATE `creature_template` SET `HealthMultiplier` = '3.915', `PowerMultiplier` = '1.0', `DamageMultiplier` = '13.0', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '21881', `MaxLevelHealth` = '21881', `MinLevelMana` = '3155', `MaxLevelMana` = '3155', `MinMeleeDmg` = '3046', `MaxMeleeDmg` = '4304', `MinRangedDmg` = '2576', `MaxRangedDmg` = '3834', `MeleeAttackPower` = '286.0', `RangedAttackPower` = '33.0', `Armor` = '5474.0' WHERE `entry` = '21548';


-- Bloodwarder Steward 18404 / 21549 -- Recalculate Heroic Damage Data
UPDATE creature_template SET ModelId1=17813, ModelId2=17815, ModelId3=17816, ModelId4=17817 WHERE entry IN (18404,21549);
-- Bloodwarder Steward (18404)
UPDATE `creature_template` SET `HealthMultiplier` = '3.0', `PowerMultiplier` = '0', `DamageMultiplier` = '4.66', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '20283', `MaxLevelHealth` = '20958', `MinLevelMana` = '0', `MaxLevelMana` = '0', `MinMeleeDmg` = '1127', `MaxMeleeDmg` = '1664', `MinRangedDmg` = '964', `MaxRangedDmg` = '1503', `MeleeAttackPower` = '304.0', `RangedAttackPower` = '44.0', `Armor` = '6792.0' WHERE `entry` = '18404';
-- Bloodwarder Steward (1) (21549)
UPDATE `creature_template` SET `HealthMultiplier` = '4.05', `PowerMultiplier` = '0', `DamageMultiplier` = '12.5', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '28293', `MaxLevelHealth` = '28293', `MinLevelMana` = '0', `MaxLevelMana` = '0', `MinMeleeDmg` = '3156', `MaxMeleeDmg` = '4463', `MinRangedDmg` = '2692', `MaxRangedDmg` = '3998', `MeleeAttackPower` = '304.0', `RangedAttackPower` = '44.0', `Armor` = '6792.0' WHERE `entry` = '21549';


-- Blue Seedling 19962 / 21550 -- Recalculate Heroic Damage Data
UPDATE creature_template SET MeleeBaseAttackTime=1400, RangedBaseAttackTime=1900 WHERE entry IN (19962,21550);
-- Blue Seedling (19962)
UPDATE `creature_template` SET `HealthMultiplier` = '0.15', `PowerMultiplier` = '0', `DamageMultiplier` = '2.0', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '981', `MaxLevelHealth` = '1014', `MinLevelMana` = '0', `MaxLevelMana` = '0', `MinMeleeDmg` = '323', `MaxMeleeDmg` = '478', `MinRangedDmg` = '370', `MaxRangedDmg` = '579', `MeleeAttackPower` = '298.0', `RangedAttackPower` = '43.0', `Armor` = '6492.0' WHERE `entry` = '19962';
-- Blue Seedling (1) (21550)
UPDATE `creature_template` SET `HealthMultiplier` = '0.2025', `PowerMultiplier` = '0', `DamageMultiplier` = '3.0', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '1415', `MaxLevelHealth` = '1415', `MinLevelMana` = '0', `MaxLevelMana` = '0', `MinMeleeDmg` = '530', `MaxMeleeDmg` = '750', `MinRangedDmg` = '614', `MaxRangedDmg` = '912', `MeleeAttackPower` = '304.0', `RangedAttackPower` = '44.0', `Armor` = '6792.0' WHERE `entry` = '21550';


-- Frayer 18587 / 21552 -- Recalculate Heroic Damage Data
-- Frayer (18587)
UPDATE `creature_template` SET `HealthMultiplier` = '0.5', `PowerMultiplier` = '0', `DamageMultiplier` = '1.0', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '3271', `MaxLevelHealth` = '3381', `MinLevelMana` = '0', `MaxLevelMana` = '0', `MinMeleeDmg` = '323', `MaxMeleeDmg` = '478', `MinRangedDmg` = '273', `MaxRangedDmg` = '427', `MeleeAttackPower` = '298.0', `RangedAttackPower` = '43.0', `Armor` = '6492.0' WHERE `entry` = '18587';
-- Frayer (1) (21552)
UPDATE `creature_template` SET `HealthMultiplier` = '1.0', `PowerMultiplier` = '0', `DamageMultiplier` = '5.0', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '6986', `MaxLevelHealth` = '6986', `MinLevelMana` = '0', `MaxLevelMana` = '0', `MinMeleeDmg` = '1262', `MaxMeleeDmg` = '1785', `MinRangedDmg` = '1077', `MaxRangedDmg` = '1599', `MeleeAttackPower` = '304.0', `RangedAttackPower` = '44.0', `Armor` = '6792.0' WHERE `entry` = '21552';


-- Frayer Protector 19953 / 21553 -- Recalculate Heroic Damage Data
UPDATE creature_template SET MeleeBaseAttackTime=1400, RangedBaseAttackTime=1900 WHERE entry IN (19953,21553);
-- Frayer Protector (19953)
UPDATE `creature_template` SET `HealthMultiplier` = '0.6', `PowerMultiplier` = '0', `DamageMultiplier` = '4.285', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '4192', `MaxLevelHealth` = '4192', `MinLevelMana` = '0', `MaxLevelMana` = '0', `MinMeleeDmg` = '757', `MaxMeleeDmg` = '1071', `MinRangedDmg` = '880', `MaxRangedDmg` = '1307', `MeleeAttackPower` = '304.0', `RangedAttackPower` = '44.0', `Armor` = '6792.0' WHERE `entry` = '19953';
-- Frayer Protector (1) (21553)
UPDATE `creature_template` SET `HealthMultiplier` = '0.81', `PowerMultiplier` = '0', `DamageMultiplier` = '7.0', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '5659', `MaxLevelHealth` = '5659', `MinLevelMana` = '0', `MaxLevelMana` = '0', `MinMeleeDmg` = '1237', `MaxMeleeDmg` = '1749', `MinRangedDmg` = '1432', `MaxRangedDmg` = '2127', `MeleeAttackPower` = '304.0', `RangedAttackPower` = '44.0', `Armor` = '6792.0' WHERE `entry` = '21553';


-- Frayer Wildling 19608 / 21554 -- Recalculate Heroic Damage Data
-- Frayer Wildling (19608)
UPDATE `creature_template` SET `HealthMultiplier` = '0.7', `PowerMultiplier` = '0', `DamageMultiplier` = '1.0', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '4890', `MaxLevelHealth` = '4890', `MinLevelMana` = '0', `MaxLevelMana` = '0', `MinMeleeDmg` = '353', `MaxMeleeDmg` = '500', `MinRangedDmg` = '301', `MaxRangedDmg` = '448', `MeleeAttackPower` = '304.0', `RangedAttackPower` = '44.0', `Armor` = '6792.0' WHERE `entry` = '19608';
-- Frayer Wildling (1) (21554)
UPDATE `creature_template` SET `HealthMultiplier` = '0.945', `PowerMultiplier` = '0', `DamageMultiplier` = '4.0', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '6602', `MaxLevelHealth` = '6602', `MinLevelMana` = '0', `MaxLevelMana` = '0', `MinMeleeDmg` = '1010', `MaxMeleeDmg` = '1428', `MinRangedDmg` = '861', `MaxRangedDmg` = '1279', `MeleeAttackPower` = '304.0', `RangedAttackPower` = '44.0', `Armor` = '6792.0' WHERE `entry` = '21554';


-- Greater Frayer 19557 / 21555 -- Recalculate Heroic Damage Data
-- Greater Frayer (19557)
UPDATE `creature_template` SET `HealthMultiplier` = '1.25', `PowerMultiplier` = '0', `DamageMultiplier` = '2.0', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '8451', `MaxLevelHealth` = '8451', `MinLevelMana` = '0', `MaxLevelMana` = '0', `MinMeleeDmg` = '459', `MaxMeleeDmg` = '648', `MinRangedDmg` = '390', `MaxRangedDmg` = '579', `MeleeAttackPower` = '298.0', `RangedAttackPower` = '43.0', `Armor` = '6492.0' WHERE `entry` = '19557';
-- Greater Frayer (1) (21555)
UPDATE `creature_template` SET `HealthMultiplier` = '1.6875', `PowerMultiplier` = '0', `DamageMultiplier` = '8.0', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '11789', `MaxLevelHealth` = '12118', `MinLevelMana` = '0', `MaxLevelMana` = '0', `MinMeleeDmg` = '2020', `MaxMeleeDmg` = '2905', `MinRangedDmg` = '1723', `MaxRangedDmg` = '2607', `MeleeAttackPower` = '308.0', `RangedAttackPower` = '48.0', `Armor` = '7089.0' WHERE `entry` = '21555';


-- Green Seedling 19969 / 21557 -- Recalculate Heroic Damage Data
-- Green Seedling (19969)
UPDATE `creature_template` SET `HealthMultiplier` = '0.15', `PowerMultiplier` = '0', `DamageMultiplier` = '1.2', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '981', `MaxLevelHealth` = '1014', `MinLevelMana` = '0', `MaxLevelMana` = '0', `MinMeleeDmg` = '277', `MaxMeleeDmg` = '409', `MinRangedDmg` = '222', `MaxRangedDmg` = '347', `MeleeAttackPower` = '298.0', `RangedAttackPower` = '43.0', `Armor` = '6492.0' WHERE `entry` = '19969';
-- Green Seedling (1) (21557)
UPDATE `creature_template` SET `HealthMultiplier` = '0.2025', `PowerMultiplier` = '0', `DamageMultiplier` = '3.0', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '1415', `MaxLevelHealth` = '1415', `MinLevelMana` = '0', `MaxLevelMana` = '0', `MinMeleeDmg` = '757', `MaxMeleeDmg` = '1071', `MinRangedDmg` = '646', `MaxRangedDmg` = '960', `MeleeAttackPower` = '304.0', `RangedAttackPower` = '44.0', `Armor` = '6792.0' WHERE `entry` = '21557';


-- Mutate Fear-Shrieker 19513 / 21560 -- Recalculate Heroic Damage Data
-- Mutate Fear-Shrieker (19513)
UPDATE `creature_template` SET `HealthMultiplier` = '2.25', `PowerMultiplier` = '0', `DamageMultiplier` = '2.0', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '15719', `MaxLevelHealth` = '15719', `MinLevelMana` = '0', `MaxLevelMana` = '0', `MinMeleeDmg` = '505', `MaxMeleeDmg` = '714', `MinRangedDmg` = '431', `MaxRangedDmg` = '640', `MeleeAttackPower` = '304.0', `RangedAttackPower` = '44.0', `Armor` = '6792.0' WHERE `entry` = '19513';
-- Mutate Fear-Shrieker (1) (21560)
UPDATE `creature_template` SET `HealthMultiplier` = '2.6', `PowerMultiplier` = '0', `DamageMultiplier` = '10.0', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '18164', `MaxLevelHealth` = '18671', `MinLevelMana` = '0', `MaxLevelMana` = '0', `MinMeleeDmg` = '2525', `MaxMeleeDmg` = '3631', `MinRangedDmg` = '2153', `MaxRangedDmg` = '3259', `MeleeAttackPower` = '308.0', `RangedAttackPower` = '48.0', `Armor` = '7089.0' WHERE `entry` = '21560';


-- Mutate Fleshlasher 19598 / 21561 -- Recalculate Heroic Damage Data
-- Mutate Fleshlasher (19598)
UPDATE `creature_template` SET `HealthMultiplier` = '0.7', `PowerMultiplier` = '0', `DamageMultiplier` = '4.66', `DamageVariance` = '1.0', `ArmorMultiplier` = '0.901796', `MinLevelHealth` = '4890', `MaxLevelHealth` = '4890', `MinLevelMana` = '0', `MaxLevelMana` = '0', `MinMeleeDmg` = '1177', `MaxMeleeDmg` = '1664', `MinRangedDmg` = '1012', `MaxRangedDmg` = '1503', `MeleeAttackPower` = '304.0', `RangedAttackPower` = '44.0', `Armor` = '6125.0' WHERE `entry` = '19598';
-- Mutate Fleshlasher (1) (21561)
UPDATE `creature_template` SET `HealthMultiplier` = '0.945', `PowerMultiplier` = '0', `DamageMultiplier` = '10.0', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '6602', `MaxLevelHealth` = '6786', `MinLevelMana` = '0', `MaxLevelMana` = '0', `MinMeleeDmg` = '2525', `MaxMeleeDmg` = '3631', `MinRangedDmg` = '2153', `MaxRangedDmg` = '3259', `MeleeAttackPower` = '308.0', `RangedAttackPower` = '48.0', `Armor` = '7089.0' WHERE `entry` = '21561';


-- Mutate Horror 19865 / 21562 -- Recalculate Heroic Damage Data
-- Mutate Horror (19865)
UPDATE `creature_template` SET `HealthMultiplier` = '2.25', `PowerMultiplier` = '0', `DamageMultiplier` = '2.0', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '15719', `MaxLevelHealth` = '15719', `MinLevelMana` = '0', `MaxLevelMana` = '0', `MinMeleeDmg` = '505', `MaxMeleeDmg` = '714', `MinRangedDmg` = '431', `MaxRangedDmg` = '640', `MeleeAttackPower` = '304.0', `RangedAttackPower` = '44.0', `Armor` = '6792.0' WHERE `entry` = '19865';
-- Mutate Horror (1) (21562)
UPDATE `creature_template` SET `HealthMultiplier` = '2.6', `PowerMultiplier` = '0', `DamageMultiplier` = '11.0', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '18164', `MaxLevelHealth` = '18671', `MinLevelMana` = '0', `MaxLevelMana` = '0', `MinMeleeDmg` = '2777', `MaxMeleeDmg` = '3994', `MinRangedDmg` = '2369', `MaxRangedDmg` = '3585', `MeleeAttackPower` = '308.0', `RangedAttackPower` = '48.0', `Armor` = '7089.0' WHERE `entry` = '21562';


-- Nethervine Inciter 19511 / 21563 -- Recalculate Heroic Damage Data
UPDATE creature_template SET MeleeBaseAttackTime=1333, RangedBaseAttackTime=2000 WHERE entry IN (19511,21563);
-- Nethervine Inciter (19511)
UPDATE `creature_template` SET `HealthMultiplier` = '3.0', `PowerMultiplier` = '0', `DamageMultiplier` = '7.0', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '20958', `MaxLevelHealth` = '20958', `MinLevelMana` = '0', `MaxLevelMana` = '0', `MinMeleeDmg` = '1177', `MaxMeleeDmg` = '1664', `MinRangedDmg` = '1507', `MaxRangedDmg` = '2239', `MeleeAttackPower` = '304.0', `RangedAttackPower` = '44.0', `Armor` = '6792.0' WHERE `entry` = '19511';
-- Nethervine Inciter (1) (21563)
UPDATE `creature_template` SET `HealthMultiplier` = '4.05', `PowerMultiplier` = '0', `DamageMultiplier` = '14.0', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '28293', `MaxLevelHealth` = '29083', `MinLevelMana` = '0', `MaxLevelMana` = '0', `MinMeleeDmg` = '2356', `MaxMeleeDmg` = '3388', `MinRangedDmg` = '3015', `MaxRangedDmg` = '4563', `MeleeAttackPower` = '308.0', `RangedAttackPower` = '48.0', `Armor` = '7089.0' WHERE `entry` = '21563';


-- Nethervine Reaper 19512 / 21564 -- Recalculate Heroic Damage Data (Damage Multiplier looks wrong)
-- Nethervine Reaper (19512)
UPDATE `creature_template` SET `HealthMultiplier` = '3.0', `PowerMultiplier` = '0', `DamageMultiplier` = '4.66', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '20958', `MaxLevelHealth` = '20958', `MinLevelMana` = '0', `MaxLevelMana` = '0', `MinMeleeDmg` = '1177', `MaxMeleeDmg` = '1664', `MinRangedDmg` = '1012', `MaxRangedDmg` = '1503', `MeleeAttackPower` = '304.0', `RangedAttackPower` = '44.0', `Armor` = '6792.0' WHERE `entry` = '19512';
-- Nethervine Reaper (1) (21564)
UPDATE `creature_template` SET `HealthMultiplier` = '4.05', `PowerMultiplier` = '0', `DamageMultiplier` = '12.0', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '28293', `MaxLevelHealth` = '29083', `MinLevelMana` = '0', `MaxLevelMana` = '0', `MinMeleeDmg` = '3030', `MaxMeleeDmg` = '4357', `MinRangedDmg` = '2584', `MaxRangedDmg` = '3911', `MeleeAttackPower` = '308.0', `RangedAttackPower` = '48.0', `Armor` = '7089.0' WHERE `entry` = '21564';


-- Nethervine Trickster 19843 / 21565 -- Recalculate Heroic Damage Data (Damage Multiplier looks wrong)
-- Nethervine Trickster (19843)
UPDATE `creature_template` SET `HealthMultiplier` = '3.0', `PowerMultiplier` = '0', `DamageMultiplier` = '4.66', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '20958', `MaxLevelHealth` = '20958', `MinLevelMana` = '0', `MaxLevelMana` = '0', `MinMeleeDmg` = '1177', `MaxMeleeDmg` = '1664', `MinRangedDmg` = '1012', `MaxRangedDmg` = '1503', `MeleeAttackPower` = '304.0', `RangedAttackPower` = '44.0', `Armor` = '6792.0' WHERE `entry` = '19843';
-- Nethervine Trickster (1) (21565)
UPDATE `creature_template` SET `HealthMultiplier` = '4.05', `PowerMultiplier` = '0', `DamageMultiplier` = '12.0', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '28293', `MaxLevelHealth` = '29083', `MinLevelMana` = '0', `MaxLevelMana` = '0', `MinMeleeDmg` = '3030', `MaxMeleeDmg` = '4357', `MinRangedDmg` = '2584', `MaxRangedDmg` = '3911', `MeleeAttackPower` = '308.0', `RangedAttackPower` = '48.0', `Armor` = '7089.0' WHERE `entry` = '21565';


-- Red Seedling 19964 / 21566 -- Recalculate Heroic Damage Data
UPDATE creature_template SET MeleeBaseAttackTime=1400, RangedBaseAttackTime=1900 WHERE entry IN (19964,21566);
-- Red Seedling (19964)
UPDATE `creature_template` SET `HealthMultiplier` = '0.15', `PowerMultiplier` = '0', `DamageMultiplier` = '1.2', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '981', `MaxLevelHealth` = '1014', `MinLevelMana` = '0', `MaxLevelMana` = '0', `MinMeleeDmg` = '194', `MaxMeleeDmg` = '287', `MinRangedDmg` = '222', `MaxRangedDmg` = '347', `MeleeAttackPower` = '298.0', `RangedAttackPower` = '43.0', `Armor` = '6492.0' WHERE `entry` = '19964';
-- Red Seedling (1) (21566)
UPDATE `creature_template` SET `HealthMultiplier` = '0.2025', `PowerMultiplier` = '0', `DamageMultiplier` = '3.0', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '1415', `MaxLevelHealth` = '1415', `MinLevelMana` = '0', `MaxLevelMana` = '0', `MinMeleeDmg` = '530', `MaxMeleeDmg` = '750', `MinRangedDmg` = '614', `MaxRangedDmg` = '912', `MeleeAttackPower` = '304.0', `RangedAttackPower` = '44.0', `Armor` = '6792.0' WHERE `entry` = '21566';


-- Sapling 19949 / 21567 -- Recalculate Heroic Damage Data
UPDATE creature_template SET MeleeBaseAttackTime=1400, RangedBaseAttackTime=1900 WHERE entry IN (19949,21567);
-- Sapling (19949)
UPDATE `creature_template` SET `HealthMultiplier` = '0.45', `PowerMultiplier` = '0', `DamageMultiplier` = '2.0', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '3144', `MaxLevelHealth` = '3144', `MinLevelMana` = '0', `MaxLevelMana` = '0', `MinMeleeDmg` = '353', `MaxMeleeDmg` = '500', `MinRangedDmg` = '409', `MaxRangedDmg` = '608', `MeleeAttackPower` = '304.0', `RangedAttackPower` = '44.0', `Armor` = '6792.0' WHERE `entry` = '19949';
-- Sapling (1) (21567)
UPDATE `creature_template` SET `HealthMultiplier` = '0.6075', `PowerMultiplier` = '0', `DamageMultiplier` = '7.0', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '4483', `MaxLevelHealth` = '4483', `MinLevelMana` = '0', `MaxLevelMana` = '0', `MinMeleeDmg` = '1279', `MaxMeleeDmg` = '1808', `MinRangedDmg` = '1488', `MaxRangedDmg` = '2206', `MeleeAttackPower` = '314.0', `RangedAttackPower` = '53.0', `Armor` = '7387.0' WHERE `entry` = '21567';


-- Summoned Bloodwarder Mender 20083 / 21568 -- Recalculate Heroic Damage Data
UPDATE creature_template SET ModelId1=19051, ModelId2=19051, ModelId3=21331, ModelId4=21332, MeleeBaseAttackTime=2000, RangedBaseAttackTime=2000 WHERE entry IN (20083,21568);
-- Summoned Bloodwarder Mender (20083)
UPDATE `creature_template` SET `HealthMultiplier` = '3.0', `PowerMultiplier` = '3.0', `DamageMultiplier` = '4.135', `DamageVariance` = '1.14', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '14199', `MaxLevelHealth` = '14670', `MinLevelMana` = '21093', `MaxLevelMana` = '21588', `MinMeleeDmg` = '873', `MaxMeleeDmg` = '1329', `MinRangedDmg` = '259', `MaxRangedDmg` = '404', `MeleeAttackPower` = '135.0', `RangedAttackPower` = '28.0', `Armor` = '3427.0' WHERE `entry` = '20083';
-- Summoned Bloodwarder Mender (1) (21568)
UPDATE `creature_template` SET `HealthMultiplier` = '4.05', `PowerMultiplier` = '3.0', `DamageMultiplier` = '14.0', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '19805', `MaxLevelHealth` = '19805', `MinLevelMana` = '21588', `MaxLevelMana` = '21588', `MinMeleeDmg` = '2744', `MaxMeleeDmg` = '3980', `MinRangedDmg` = '2530', `MaxRangedDmg` = '3766', `MeleeAttackPower` = '135.0', `RangedAttackPower` = '28.0', `Armor` = '3427.0' WHERE `entry` = '21568';


-- Summoned Bloodwarder Reservist 20078 / 21569 -- Recalculate Heroic Damage Data
UPDATE creature_template SET ModelId1=19316, ModelId2=0, ModelId3=19317, ModelId4=0, MeleeBaseAttackTime=2000, RangedBaseAttackTime=2000 WHERE entry IN (20078,21569);
-- Summoned Bloodwarder Reservist (20078)
UPDATE `creature_template` SET `HealthMultiplier` = '0.75', `PowerMultiplier` = '0', `DamageMultiplier` = '2.0', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '5071', `MaxLevelHealth` = '5071', `MinLevelMana` = '0', `MaxLevelMana` = '0', `MinMeleeDmg` = '483', `MaxMeleeDmg` = '682', `MinRangedDmg` = '410', `MaxRangedDmg` = '609', `MeleeAttackPower` = '298.0', `RangedAttackPower` = '43.0', `Armor` = '6492.0' WHERE `entry` = '20078';
-- Summoned Bloodwarder Reservist (1) (21569)
UPDATE `creature_template` SET `HealthMultiplier` = '1.0125', `PowerMultiplier` = '0', `DamageMultiplier` = '10.5', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '7073', `MaxLevelHealth` = '7073', `MinLevelMana` = '0', `MaxLevelMana` = '0', `MinMeleeDmg` = '2651', `MaxMeleeDmg` = '3749', `MinRangedDmg` = '2261', `MaxRangedDmg` = '3359', `MeleeAttackPower` = '304.0', `RangedAttackPower` = '44.0', `Armor` = '6792.0' WHERE `entry` = '21569';


-- Sunseeker Botanist 18422 / 21570 -- Recalculate Heroic Damage Data
UPDATE creature_template SET ModelId1=17819, ModelId2=0, ModelId3=17820, ModelId4=0 WHERE entry IN (18422,21570);
-- Sunseeker Botanist (18422)
UPDATE `creature_template` SET `HealthMultiplier` = '2.9', `PowerMultiplier` = '3.0', `DamageMultiplier` = '4.66', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '16208', `MaxLevelHealth` = '16208', `MinLevelMana` = '9465', `MaxLevelMana` = '9465', `MinMeleeDmg` = '1092', `MaxMeleeDmg` = '1543', `MinRangedDmg` = '931', `MaxRangedDmg` = '1386', `MeleeAttackPower` = '286.0', `RangedAttackPower` = '33.0', `Armor` = '5474.0' WHERE `entry` = '18422';
-- Sunseeker Botanist (1) (21570)
UPDATE `creature_template` SET `HealthMultiplier` = '3.915', `PowerMultiplier` = '5.0', `DamageMultiplier` = '12.0', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '21881', `MaxLevelHealth` = '22488', `MinLevelMana` = '15775', `MaxLevelMana` = '16155', `MinMeleeDmg` = '2812', `MaxMeleeDmg` = '4039', `MinRangedDmg` = '2378', `MaxRangedDmg` = '3606', `MeleeAttackPower` = '290.0', `RangedAttackPower` = '37.0', `Armor` = '5714.0' WHERE `entry` = '21570';


-- Sunseeker Channeler 19505 / 21571 -- Recalculate Heroic Damage Data
UPDATE creature_template SET ModelId1=17819, ModelId2=17819, ModelId3=21340, ModelId4=21341 WHERE entry IN (19505,21571);
-- Sunseeker Channeler (19505)
UPDATE `creature_template` SET `HealthMultiplier` = '2.9', `PowerMultiplier` = '1.0', `DamageMultiplier` = '9.0', `DamageVariance` = '0.51', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '14181', `MaxLevelHealth` = '14181', `MinLevelMana` = '7196', `MaxLevelMana` = '7196', `MinMeleeDmg` = '1006', `MaxMeleeDmg` = '1420', `MinRangedDmg` = '903', `MaxRangedDmg` = '1345', `MeleeAttackPower` = '135.0', `RangedAttackPower` = '28.0', `Armor` = '3427.0' WHERE `entry` = '19505';
-- Sunseeker Channeler (1) (21571)
UPDATE `creature_template` SET `HealthMultiplier` = '3.915', `PowerMultiplier` = '1.0', `DamageMultiplier` = '14.0', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '19144', `MaxLevelHealth` = '19681', `MinLevelMana` = '7196', `MaxLevelMana` = '7332', `MinMeleeDmg` = '2744', `MaxMeleeDmg` = '4155', `MinRangedDmg` = '2530', `MaxRangedDmg` = '3943', `MeleeAttackPower` = '137.0', `RangedAttackPower` = '31.0', `Armor` = '3577.0' WHERE `entry` = '21571';


-- Sunseeker Chemist 19486 / 21572 -- Recalculate Heroic Damage Data
UPDATE creature_template SET ModelId1=18925, ModelId2=0, ModelId3=18926, ModelId4=0 WHERE entry IN (19486,21572);
-- Sunseeker Chemist (19486)
UPDATE `creature_template` SET `HealthMultiplier` = '2.9', `PowerMultiplier` = '1.0', `DamageMultiplier` = '4.66', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '16208', `MaxLevelHealth` = '16208', `MinLevelMana` = '3155', `MaxLevelMana` = '3155', `MinMeleeDmg` = '1092', `MaxMeleeDmg` = '1543', `MinRangedDmg` = '931', `MaxRangedDmg` = '1386', `MeleeAttackPower` = '286.0', `RangedAttackPower` = '33.0', `Armor` = '5474.0' WHERE `entry` = '19486';
-- Sunseeker Chemist (1) (21572)
UPDATE `creature_template` SET `HealthMultiplier` = '3.915', `PowerMultiplier` = '1.0', `DamageMultiplier` = '13.0', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '21881', `MaxLevelHealth` = '22488', `MinLevelMana` = '3155', `MaxLevelMana` = '3231', `MinMeleeDmg` = '3046', `MaxMeleeDmg` = '4376', `MinRangedDmg` = '2576', `MaxRangedDmg` = '3906', `MeleeAttackPower` = '290.0', `RangedAttackPower` = '37.0', `Armor` = '5714.0' WHERE `entry` = '21572';


-- Sunseeker Gene-Splicer 19507 / 21573 -- Recalculate Heroic Damage Data
UPDATE creature_template SET ModelId1=17819, ModelId2=21335, ModelId3=21336, ModelId4=21337 WHERE entry IN (19507,21573);
UPDATE creature_template SET LootId=19507, PickpocketLootId=19507 WHERE entry IN (19507,21573);
-- Sunseeker Gene-Splicer (19507)
UPDATE `creature_template` SET `HealthMultiplier` = '2.9', `PowerMultiplier` = '1.0', `DamageMultiplier` = '9.0', `DamageVariance` = '0.51', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '14181', `MaxLevelHealth` = '14181', `MinLevelMana` = '7196', `MaxLevelMana` = '7196', `MinMeleeDmg` = '1006', `MaxMeleeDmg` = '1420', `MinRangedDmg` = '903', `MaxRangedDmg` = '1345', `MeleeAttackPower` = '135.0', `RangedAttackPower` = '28.0', `Armor` = '3427.0' WHERE `entry` = '19507';
-- Sunseeker Gene-Splicer (1) (21573)
UPDATE `creature_template` SET `HealthMultiplier` = '3.915', `PowerMultiplier` = '1.0', `DamageMultiplier` = '15.0', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '19144', `MaxLevelHealth` = '19681', `MinLevelMana` = '7196', `MaxLevelMana` = '7332', `MinMeleeDmg` = '2939', `MaxMeleeDmg` = '4452', `MinRangedDmg` = '2710', `MaxRangedDmg` = '4225', `MeleeAttackPower` = '137.0', `RangedAttackPower` = '31.0', `Armor` = '3577.0' WHERE `entry` = '21573';


-- Sunseeker Geomancer 18420 / 21574 -- Recalculate Heroic Damage Data
UPDATE creature_template SET ModelId1=17916, ModelId2=17917, ModelId3=17918, ModelId4=0 WHERE entry IN (18420,21574);
-- Sunseeker Geomancer (18420)
UPDATE `creature_template` SET `HealthMultiplier` = '4.0', `PowerMultiplier` = '4.0', `DamageMultiplier` = '4.66', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '22976', `MaxLevelHealth` = '22976', `MinLevelMana` = '12924', `MaxLevelMana` = '12924', `MinMeleeDmg` = '1111', `MaxMeleeDmg` = '1569', `MinRangedDmg` = '950', `MaxRangedDmg` = '1412', `MeleeAttackPower` = '290.0', `RangedAttackPower` = '37.0', `Armor` = '5714.0' WHERE `entry` = '18420';
-- Sunseeker Geomancer (1) (21574)
UPDATE `creature_template` SET `HealthMultiplier` = '5.4', `PowerMultiplier` = '4.0', `DamageMultiplier` = '13.0', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '31018', `MaxLevelHealth` = '31018', `MinLevelMana` = '12924', `MaxLevelMana` = '12924', `MinMeleeDmg` = '3097', `MaxMeleeDmg` = '4376', `MinRangedDmg` = '2627', `MaxRangedDmg` = '3906', `MeleeAttackPower` = '290.0', `RangedAttackPower` = '37.0', `Armor` = '5714.0' WHERE `entry` = '21574';


-- Sunseeker Harvester 19509 / 21575 -- Recalculate Heroic Damage Data
UPDATE creature_template SET ModelId1=17819, ModelId2=21333, ModelId3=21334, ModelId4=0 WHERE entry IN (19509,21575);
-- Sunseeker Harvester (19509)
UPDATE `creature_template` SET `HealthMultiplier` = '2.9', `PowerMultiplier` = '1.0', `DamageMultiplier` = '4.66', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '16208', `MaxLevelHealth` = '16208', `MinLevelMana` = '3155', `MaxLevelMana` = '3155', `MinMeleeDmg` = '1092', `MaxMeleeDmg` = '1543', `MinRangedDmg` = '931', `MaxRangedDmg` = '1386', `MeleeAttackPower` = '286.0', `RangedAttackPower` = '33.0', `Armor` = '5474.0' WHERE `entry` = '19509';
-- Sunseeker Harvester (1) (21575)
UPDATE `creature_template` SET `HealthMultiplier` = '3.915', `PowerMultiplier` = '1.0', `DamageMultiplier` = '13.0', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '21881', `MaxLevelHealth` = '22488', `MinLevelMana` = '3155', `MaxLevelMana` = '3231', `MinMeleeDmg` = '3046', `MaxMeleeDmg` = '4376', `MinRangedDmg` = '2576', `MaxRangedDmg` = '3906', `MeleeAttackPower` = '290.0', `RangedAttackPower` = '37.0', `Armor` = '5714.0' WHERE `entry` = '21575';


-- Sunseeker Herbalist 19508 / 21576 -- Recalculate Heroic Damage Data
UPDATE creature_template SET ModelId1=17819, ModelId2=21338, ModelId3=21339, ModelId4=0 WHERE entry IN (19508,21576);
-- Sunseeker Herbalist (19508)
UPDATE `creature_template` SET `HealthMultiplier` = '2.9', `PowerMultiplier` = '0', `DamageMultiplier` = '4.66', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '20259', `MaxLevelHealth` = '20259', `MinLevelMana` = '0', `MaxLevelMana` = '0', `MinMeleeDmg` = '1177', `MaxMeleeDmg` = '1664', `MinRangedDmg` = '1012', `MaxRangedDmg` = '1503', `MeleeAttackPower` = '304.0', `RangedAttackPower` = '44.0', `Armor` = '6792.0' WHERE `entry` = '19508';
-- Sunseeker Herbalist (1) (21576)
UPDATE `creature_template` SET `HealthMultiplier` = '3.915', `PowerMultiplier` = '0', `DamageMultiplier` = '12.0', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '27350', `MaxLevelHealth` = '28114', `MinLevelMana` = '0', `MaxLevelMana` = '0', `MinMeleeDmg` = '3030', `MaxMeleeDmg` = '4357', `MinRangedDmg` = '2584', `MaxRangedDmg` = '3911', `MeleeAttackPower` = '308.0', `RangedAttackPower` = '48.0', `Armor` = '7089.0' WHERE `entry` = '21576';


-- Sunseeker Researcher 18421 / 21577 -- Recalculate Heroic Damage Data
UPDATE creature_template SET ModelId1=17842, ModelId2=17843, ModelId3=17844, ModelId4=17845 WHERE entry IN (18421,21577);
-- Sunseeker Researcher (18421)
UPDATE `creature_template` SET `HealthMultiplier` = '2.9', `PowerMultiplier` = '3.0', `DamageMultiplier` = '4.66', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '16208', `MaxLevelHealth` = '16208', `MinLevelMana` = '9465', `MaxLevelMana` = '9465', `MinMeleeDmg` = '1092', `MaxMeleeDmg` = '1543', `MinRangedDmg` = '931', `MaxRangedDmg` = '1386', `MeleeAttackPower` = '286.0', `RangedAttackPower` = '33.0', `Armor` = '5474.0' WHERE `entry` = '18421';
-- Sunseeker Researcher (1) (21577)
UPDATE `creature_template` SET `HealthMultiplier` = '3.915', `PowerMultiplier` = '5.0', `DamageMultiplier` = '13.0', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '21881', `MaxLevelHealth` = '22488', `MinLevelMana` = '15775', `MaxLevelMana` = '16155', `MinMeleeDmg` = '3046', `MaxMeleeDmg` = '4376', `MinRangedDmg` = '2576', `MaxRangedDmg` = '3906', `MeleeAttackPower` = '290.0', `RangedAttackPower` = '37.0', `Armor` = '5714.0' WHERE `entry` = '21577';


-- Tempest-Forge Peacekeeper 18405 / 21578 -- Recalculate Heroic Damage Data
-- Tempest-Forge Peacekeeper (18405)
UPDATE `creature_template` SET `HealthMultiplier` = '4.0', `PowerMultiplier` = '1.0', `DamageMultiplier` = '4.66', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '22356', `MaxLevelHealth` = '22356', `MinLevelMana` = '3155', `MaxLevelMana` = '3155', `MinMeleeDmg` = '1092', `MaxMeleeDmg` = '1543', `MinRangedDmg` = '924', `MaxRangedDmg` = '1374', `MeleeAttackPower` = '286.0', `RangedAttackPower` = '33.0', `Armor` = '5474.0' WHERE `entry` = '18405';
-- Tempest-Forge Peacekeeper (1) (21578)
UPDATE `creature_template` SET `HealthMultiplier` = '12.0', `PowerMultiplier` = '15.0', `DamageMultiplier` = '14.5', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '70836', `MaxLevelHealth` = '70836', `MinLevelMana` = '49635', `MaxLevelMana` = '49635', `MinMeleeDmg` = '3509', `MaxMeleeDmg` = '4957', `MinRangedDmg` = '2979', `MaxRangedDmg` = '4427', `MeleeAttackPower` = '296.0', `RangedAttackPower` = '40.0', `Armor` = '5954.0' WHERE `entry` = '21578';


-- Thorn Flayer 19920 / 21579 -- Recalculate Heroic Damage Data
UPDATE creature_template SET MeleeBaseAttackTime=1400, RangedBaseAttackTime=1900 WHERE entry IN (19920,21579);
-- Thorn Flayer (19920)
UPDATE `creature_template` SET `HealthMultiplier` = '0.7', `PowerMultiplier` = '0', `DamageMultiplier` = '2.0', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '4890', `MaxLevelHealth` = '4890', `MinLevelMana` = '0', `MaxLevelMana` = '0', `MinMeleeDmg` = '353', `MaxMeleeDmg` = '500', `MinRangedDmg` = '409', `MaxRangedDmg` = '608', `MeleeAttackPower` = '304.0', `RangedAttackPower` = '44.0', `Armor` = '6792.0' WHERE `entry` = '19920';
-- Thorn Flayer (1) (21579)
UPDATE `creature_template` SET `HealthMultiplier` = '0.945', `PowerMultiplier` = '0', `DamageMultiplier` = '10.0', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '6602', `MaxLevelHealth` = '6602', `MinLevelMana` = '0', `MaxLevelMana` = '0', `MinMeleeDmg` = '1767', `MaxMeleeDmg` = '2499', `MinRangedDmg` = '2046', `MaxRangedDmg` = '3039', `MeleeAttackPower` = '304.0', `RangedAttackPower` = '44.0', `Armor` = '6792.0' WHERE `entry` = '21579';


-- Thorn Lasher 19919 / 21580 -- Recalculate Heroic Damage Data
UPDATE creature_template SET MeleeBaseAttackTime=1400, RangedBaseAttackTime=1900 WHERE entry IN (19919,21580);
-- Thorn Lasher (19919)
UPDATE `creature_template` SET `HealthMultiplier` = '0.7', `PowerMultiplier` = '0', `DamageMultiplier` = '2.0', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '4890', `MaxLevelHealth` = '4890', `MinLevelMana` = '0', `MaxLevelMana` = '0', `MinMeleeDmg` = '353', `MaxMeleeDmg` = '500', `MinRangedDmg` = '409', `MaxRangedDmg` = '608', `MeleeAttackPower` = '304.0', `RangedAttackPower` = '44.0', `Armor` = '6792.0' WHERE `entry` = '19919';
-- Thorn Lasher (1) (21580)
UPDATE `creature_template` SET `HealthMultiplier` = '0.945', `PowerMultiplier` = '0', `DamageMultiplier` = '12.5', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '6602', `MaxLevelHealth` = '6602', `MinLevelMana` = '0', `MaxLevelMana` = '0', `MinMeleeDmg` = '2209', `MaxMeleeDmg` = '3124', `MinRangedDmg` = '2557', `MaxRangedDmg` = '3798', `MeleeAttackPower` = '304.0', `RangedAttackPower` = '44.0', `Armor` = '6792.0' WHERE `entry` = '21580';


-- White Seedling 19958 / 21583 -- Recalculate Heroic Damage Data
UPDATE creature_template SET MeleeBaseAttackTime=1400, RangedBaseAttackTime=1900 WHERE entry IN (19958,21583);
-- White Seedling (19958)
UPDATE `creature_template` SET `HealthMultiplier` = '0.15', `PowerMultiplier` = '0', `DamageMultiplier` = '2.0', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '981', `MaxLevelHealth` = '1014', `MinLevelMana` = '0', `MaxLevelMana` = '0', `MinMeleeDmg` = '323', `MaxMeleeDmg` = '478', `MinRangedDmg` = '370', `MaxRangedDmg` = '579', `MeleeAttackPower` = '298.0', `RangedAttackPower` = '43.0', `Armor` = '6492.0' WHERE `entry` = '19958';
-- White Seedling (1) (21583)
UPDATE `creature_template` SET `HealthMultiplier` = '0.2025', `PowerMultiplier` = '0', `DamageMultiplier` = '3.0', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '1415', `MaxLevelHealth` = '1415', `MinLevelMana` = '0', `MaxLevelMana` = '0', `MinMeleeDmg` = '530', `MaxMeleeDmg` = '750', `MinRangedDmg` = '614', `MaxRangedDmg` = '912', `MeleeAttackPower` = '304.0', `RangedAttackPower` = '44.0', `Armor` = '6792.0' WHERE `entry` = '21583';



-- ==========================
-- Tempest Keep: The Arcatraz -- Recalculate Heroic Damage Data
-- ==========================
-- Akkiris Lightning-Waker 20908 / 21617
UPDATE creature_template SET UnitFlags=64 WHERE entry IN (20908,21617);
UPDATE creature_template SET LootId=20908 WHERE entry IN (20908,21617);
-- Akkiris Lightning-Waker (20908)
UPDATE `creature_template` SET `HealthMultiplier` = '12.0', `PowerMultiplier` = '4.0', `DamageMultiplier` = '6.514', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '70836', `MaxLevelHealth` = '70836', `MinLevelMana` = '13236', `MaxLevelMana` = '13236', `MinMeleeDmg` = '1576', `MaxMeleeDmg` = '2227', `MinRangedDmg` = '1335', `MaxRangedDmg` = '1984', `MeleeAttackPower` = '296.0', `RangedAttackPower` = '40.0', `Armor` = '5954.0' WHERE `entry` = '20908';
-- Akkiris Lightning-Waker (1) (21617)
UPDATE `creature_template` SET `HealthMultiplier` = '16.0', `PowerMultiplier` = '8.0', `DamageMultiplier` = '14.0', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '94448', `MaxLevelHealth` = '94448', `MinLevelMana` = '26472', `MaxLevelMana` = '26472', `MinMeleeDmg` = '3388', `MaxMeleeDmg` = '4786', `MinRangedDmg` = '2876', `MaxRangedDmg` = '4274', `MeleeAttackPower` = '296.0', `RangedAttackPower` = '40.0', `Armor` = '5954.0' WHERE `entry` = '21617';


-- Arcatraz Defender 20857 / 21585
UPDATE creature_template SET LootId=20857, PickpocketLootId=20857 WHERE entry IN (20857,21585);
-- Arcatraz Defender (20857)
UPDATE `creature_template` SET `HealthMultiplier` = '3.0', `PowerMultiplier` = '0', `DamageMultiplier` = '4.664', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '19626', `MaxLevelHealth` = '20283', `MinLevelMana` = '0', `MaxLevelMana` = '0', `MinMeleeDmg` = '1076', `MaxMeleeDmg` = '1591', `MinRangedDmg` = '974', `MaxRangedDmg` = '1524', `MeleeAttackPower` = '298.0', `RangedAttackPower` = '43.0', `Armor` = '6492.0' WHERE `entry` = '20857';
-- Arcatraz Defender (1) (21585)
UPDATE `creature_template` SET `HealthMultiplier` = '4.05', `PowerMultiplier` = '0', `DamageMultiplier` = '12.0', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '26495', `MaxLevelHealth` = '27382', `MinLevelMana` = '0', `MaxLevelMana` = '0', `MinMeleeDmg` = '2768', `MaxMeleeDmg` = '4094', `MinRangedDmg` = '2338', `MaxRangedDmg` = '3657', `MeleeAttackPower` = '298.0', `RangedAttackPower` = '43.0', `Armor` = '6492.0' WHERE `entry` = '21585';


-- Arcatraz Sentinel 20869 / 21586
UPDATE creature_template SET LootId=20869 WHERE entry IN (20869,21586);
-- Arcatraz Sentinel (20869)
UPDATE `creature_template` SET `HealthMultiplier` = '16.5', `PowerMultiplier` = '0', `DamageMultiplier` = '7.0', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '115269', `MaxLevelHealth` = '115269', `MinLevelMana` = '0', `MaxLevelMana` = '0', `MinMeleeDmg` = '1641', `MaxMeleeDmg` = '2321', `MinRangedDmg` = '1400', `MaxRangedDmg` = '2079', `MeleeAttackPower` = '304.0', `RangedAttackPower` = '44.0', `Armor` = '6792.0' WHERE `entry` = '20869';
-- Arcatraz Sentinel (1) (21586)
UPDATE `creature_template` SET `HealthMultiplier` = '22.3', `PowerMultiplier` = '0', `DamageMultiplier` = '20.0', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '155788', `MaxLevelHealth` = '155788', `MinLevelMana` = '0', `MaxLevelMana` = '0', `MinMeleeDmg` = '5050', `MaxMeleeDmg` = '7140', `MinRangedDmg` = '4307', `MaxRangedDmg` = '6397', `MeleeAttackPower` = '304.0', `RangedAttackPower` = '44.0', `Armor` = '6792.0' WHERE `entry` = '21586';


-- Arcatraz Warder 20859 / 21587
UPDATE creature_template SET ModelId1=19993, ModelId2=0, ModelId3=19994, ModelId4=0, UnitFlags=32832 WHERE entry IN (20859,21587);
UPDATE creature_template SET LootId=20859, PickpocketLootId=20859 WHERE entry IN (20859,21587);
-- Arcatraz Warder (20859)
UPDATE `creature_template` SET `HealthMultiplier` = '3.0', `PowerMultiplier` = '3.0', `DamageMultiplier` = '4.66', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '15699', `MaxLevelHealth` = '16227', `MinLevelMana` = '8973', `MaxLevelMana` = '9240', `MinMeleeDmg` = '997', `MaxMeleeDmg` = '1473', `MinRangedDmg` = '841', `MaxRangedDmg` = '1317', `MeleeAttackPower` = '282.0', `RangedAttackPower` = '32.0', `Armor` = '5235.0' WHERE `entry` = '20859';
-- Arcatraz Warder (1) (21587)
UPDATE `creature_template` SET `HealthMultiplier` = '4.05', `PowerMultiplier` = '5.0', `DamageMultiplier` = '12.0', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '21194', `MaxLevelHealth` = '21906', `MinLevelMana` = '14955', `MaxLevelMana` = '15400', `MinMeleeDmg` = '2568', `MaxMeleeDmg` = '3792', `MinRangedDmg` = '2148', `MaxRangedDmg` = '3363', `MeleeAttackPower` = '282.0', `RangedAttackPower` = '32.0', `Armor` = '5235.0' WHERE `entry` = '21587';


-- Blackwing Drakonaar 20911 / 21588
UPDATE creature_template SET UnitFlags=64 WHERE entry IN (20911,21588);
UPDATE creature_template SET LootId=20911 WHERE entry IN (20911,21588);
-- Blackwing Drakonaar (20911)
UPDATE `creature_template` SET `HealthMultiplier` = '12.0', `PowerMultiplier` = '0', `DamageMultiplier` = '8.0', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '88560', `MaxLevelHealth` = '88560', `MinLevelMana` = '0', `MaxLevelMana` = '0', `MinMeleeDmg` = '2091', `MaxMeleeDmg` = '2957', `MinRangedDmg` = '1790', `MaxRangedDmg` = '2654', `MeleeAttackPower` = '314.0', `RangedAttackPower` = '53.0', `Armor` = '7387.0' WHERE `entry` = '20911';
-- Blackwing Drakonaar (1) (21588)
UPDATE `creature_template` SET `HealthMultiplier` = '16.0', `PowerMultiplier` = '0', `DamageMultiplier` = '20.0', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '118080', `MaxLevelHealth` = '118080', `MinLevelMana` = '0', `MaxLevelMana` = '0', `MinMeleeDmg` = '5220', `MaxMeleeDmg` = '7381', `MinRangedDmg` = '4474', `MaxRangedDmg` = '6636', `MeleeAttackPower` = '314.0', `RangedAttackPower` = '53.0', `Armor` = '7387.0' WHERE `entry` = '21588';


-- Blazing Trickster 20905 / 21589
UPDATE creature_template SET LootId=20905 WHERE entry IN (20905,21589);
-- Blazing Trickster (20905)
UPDATE `creature_template` SET `HealthMultiplier` = '12.0', `PowerMultiplier` = '10.0', `DamageMultiplier` = '6.0', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '67068', `MaxLevelHealth` = '67068', `MinLevelMana` = '31550', `MaxLevelMana` = '31550', `MinMeleeDmg` = '1406', `MaxMeleeDmg` = '1986', `MinRangedDmg` = '1189', `MaxRangedDmg` = '1770', `MeleeAttackPower` = '286.0', `RangedAttackPower` = '33.0', `Armor` = '5474.0' WHERE `entry` = '20905';
-- Blazing Trickster (1) (21589)
UPDATE `creature_template` SET `HealthMultiplier` = '16.0', `PowerMultiplier` = '10.0', `DamageMultiplier` = '14.0', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '89424', `MaxLevelHealth` = '89424', `MinLevelMana` = '31550', `MaxLevelMana` = '31550', `MinMeleeDmg` = '3281', `MaxMeleeDmg` = '4635', `MinRangedDmg` = '2775', `MaxRangedDmg` = '4129', `MeleeAttackPower` = '286.0', `RangedAttackPower` = '33.0', `Armor` = '5474.0' WHERE `entry` = '21589';


-- Death Watcher 20867 / 21591
UPDATE creature_template SET UnitFlags=64 WHERE entry IN (20867,21591);
UPDATE creature_template SET LootId=20867 WHERE entry IN (20867,21591);
-- Death Watcher (20867)
UPDATE `creature_template` SET `HealthMultiplier` = '6.5', `PowerMultiplier` = '0', `DamageMultiplier` = '8.0', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '45409', `MaxLevelHealth` = '45409', `MinLevelMana` = '0', `MaxLevelMana` = '0', `MinMeleeDmg` = '1894', `MaxMeleeDmg` = '2678', `MinRangedDmg` = '1615', `MaxRangedDmg` = '2399', `MeleeAttackPower` = '304.0', `RangedAttackPower` = '44.0', `Armor` = '6792.0' WHERE `entry` = '20867';
-- Death Watcher (1) (21591)
UPDATE `creature_template` SET `HealthMultiplier` = '8.1', `PowerMultiplier` = '0', `DamageMultiplier` = '20.0', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '56587', `MaxLevelHealth` = '56587', `MinLevelMana` = '0', `MaxLevelMana` = '0', `MinMeleeDmg` = '5050', `MaxMeleeDmg` = '7140', `MinRangedDmg` = '4307', `MaxRangedDmg` = '6397', `MeleeAttackPower` = '304.0', `RangedAttackPower` = '44.0', `Armor` = '6792.0' WHERE `entry` = '21591';


-- Entropic Eye 20868 / 21593
UPDATE creature_template SET LootId=20868 WHERE entry IN (20868,21593);
-- Entropic Eye (20868)
UPDATE `creature_template` SET `HealthMultiplier` = '7.0', `PowerMultiplier` = '4.0', `DamageMultiplier` = '7.0', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '39123', `MaxLevelHealth` = '39123', `MinLevelMana` = '12620', `MaxLevelMana` = '12620', `MinMeleeDmg` = '1640', `MaxMeleeDmg` = '2317', `MinRangedDmg` = '1585', `MaxRangedDmg` = '2359', `MeleeAttackPower` = '286.0', `RangedAttackPower` = '33.0', `Armor` = '5474.0' WHERE `entry` = '20868';
-- Entropic Eye (1) (21593)
UPDATE `creature_template` SET `HealthMultiplier` = '8.1', `PowerMultiplier` = '4.0', `DamageMultiplier` = '17.5', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '45271', `MaxLevelHealth` = '45271', `MinLevelMana` = '12620', `MaxLevelMana` = '12620', `MinMeleeDmg` = '4101', `MaxMeleeDmg` = '5794', `MinRangedDmg` = '3468', `MaxRangedDmg` = '5161', `MeleeAttackPower` = '286.0', `RangedAttackPower` = '33.0', `Armor` = '5474.0' WHERE `entry` = '21593';


-- Eredar Deathbringer 20880 / 21594
UPDATE creature_template SET MeleeBaseAttackTime=3000, RangedBaseAttackTime=2000, LootId=20880 WHERE entry IN (20880,21594);
-- Eredar Deathbringer (20880)
UPDATE `creature_template` SET `HealthMultiplier` = '7.0', `PowerMultiplier` = '4.0', `DamageMultiplier` = '8.0', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '39123', `MaxLevelHealth` = '39123', `MinLevelMana` = '12620', `MaxLevelMana` = '12620', `MinMeleeDmg` = '2636', `MaxMeleeDmg` = '3725', `MinRangedDmg` = '1486', `MaxRangedDmg` = '2212', `MeleeAttackPower` = '286.0', `RangedAttackPower` = '33.0', `Armor` = '5474.0' WHERE `entry` = '20880';
-- Eredar Deathbringer (1) (21594)
UPDATE `creature_template` SET `HealthMultiplier` = '8.1', `PowerMultiplier` = '4.0', `DamageMultiplier` = '20.0', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '45271', `MaxLevelHealth` = '45271', `MinLevelMana` = '12620', `MaxLevelMana` = '12620', `MinMeleeDmg` = '7029', `MaxMeleeDmg` = '9932', `MinRangedDmg` = '4756', `MaxRangedDmg` = '7078', `MeleeAttackPower` = '286.0', `RangedAttackPower` = '33.0', `Armor` = '5474.0' WHERE `entry` = '21594';


-- Eredar Soul-Eater 20879 / 21595
UPDATE creature_template SET LootId=20879, PickpocketLootId=20879 WHERE entry IN (20879,21595);
-- Eredar Soul-Eater (20879)
UPDATE `creature_template` SET `HealthMultiplier` = '7.0', `PowerMultiplier` = '4.0', `DamageMultiplier` = '8.0', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '39123', `MaxLevelHealth` = '39123', `MinLevelMana` = '12620', `MaxLevelMana` = '12620', `MinMeleeDmg` = '1757', `MaxMeleeDmg` = '2483', `MinRangedDmg` = '1486', `MaxRangedDmg` = '2212', `MeleeAttackPower` = '286.0', `RangedAttackPower` = '33.0', `Armor` = '5474.0' WHERE `entry` = '20879';
-- Eredar Soul-Eater (1) (21595)
UPDATE `creature_template` SET `HealthMultiplier` = '8.1', `PowerMultiplier` = '8.0', `DamageMultiplier` = '30.0', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '45271', `MaxLevelHealth` = '45271', `MinLevelMana` = '25240', `MaxLevelMana` = '25240', `MinMeleeDmg` = '6092', `MaxMeleeDmg` = '8607', `MinRangedDmg` = '5153', `MaxRangedDmg` = '7668', `MeleeAttackPower` = '286.0', `RangedAttackPower` = '33.0', `Armor` = '5474.0' WHERE `entry` = '21595';


-- Ethereum Life-Binder 21702 / 22346
UPDATE creature_template SET UnitFlags=64 WHERE entry IN (21702,22346);
UPDATE creature_template SET LootId=21702, PickpocketLootId=21702 WHERE entry IN (21702,22346);
-- Ethereum Life-Binder (21702)
UPDATE `creature_template` SET `HealthMultiplier` = '3.0', `PowerMultiplier` = '4.0', `DamageMultiplier` = '5.35', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '16767', `MaxLevelHealth` = '16767', `MinLevelMana` = '12620', `MaxLevelMana` = '12620', `MinMeleeDmg` = '1254', `MaxMeleeDmg` = '1771', `MinRangedDmg` = '1050', `MaxRangedDmg` = '1563', `MeleeAttackPower` = '286.0', `RangedAttackPower` = '33.0', `Armor` = '5474.0' WHERE `entry` = '21702';
-- Ethereum Life-Binder (1) (22346)
UPDATE `creature_template` SET `HealthMultiplier` = '4.0', `PowerMultiplier` = '6.0', `DamageMultiplier` = '12.0', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '22356', `MaxLevelHealth` = '22356', `MinLevelMana` = '18930', `MaxLevelMana` = '18930', `MinMeleeDmg` = '2812', `MaxMeleeDmg` = '3973', `MinRangedDmg` = '2378', `MaxRangedDmg` = '3539', `MeleeAttackPower` = '286.0', `RangedAttackPower` = '33.0', `Armor` = '5474.0' WHERE `entry` = '22346';


-- Ethereum Slayer 20896 / 21596
UPDATE creature_template SET UnitFlags=64 WHERE entry IN (20896,21596);
UPDATE creature_template SET LootId=20896, PickpocketLootId=20896 WHERE entry IN (20896,21596);
-- Ethereum Slayer (20896)
UPDATE `creature_template` SET `HealthMultiplier` = '3.0', `PowerMultiplier` = '0', `DamageMultiplier` = '5.35', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '20958', `MaxLevelHealth` = '20958', `MinLevelMana` = '0', `MaxLevelMana` = '0', `MinMeleeDmg` = '1351', `MaxMeleeDmg` = '1910', `MinRangedDmg` = '1141', `MaxRangedDmg` = '1695', `MeleeAttackPower` = '304.0', `RangedAttackPower` = '44.0', `Armor` = '6792.0' WHERE `entry` = '20896';
-- Ethereum Slayer (1) (21596)
UPDATE `creature_template` SET `HealthMultiplier` = '4.0', `PowerMultiplier` = '0', `DamageMultiplier` = '10.0', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '27944', `MaxLevelHealth` = '27944', `MinLevelMana` = '0', `MaxLevelMana` = '0', `MinMeleeDmg` = '3029', `MaxMeleeDmg` = '4284', `MinRangedDmg` = '2584', `MaxRangedDmg` = '3838', `MeleeAttackPower` = '304.0', `RangedAttackPower` = '44.0', `Armor` = '6792.0' WHERE `entry` = '21596';


-- Ethereum Wave-Caster 20897 / 21597
UPDATE creature_template SET UnitFlags=64 WHERE entry IN (20897,21597);
UPDATE creature_template SET LootId=20897, PickpocketLootId=20897 WHERE entry IN (20897,21597);
-- Ethereum Wave-Caster (20897)
UPDATE `creature_template` SET `HealthMultiplier` = '3.0', `PowerMultiplier` = '4.0', `DamageMultiplier` = '5.35', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '16767', `MaxLevelHealth` = '16767', `MinLevelMana` = '12620', `MaxLevelMana` = '12620', `MinMeleeDmg` = '1254', `MaxMeleeDmg` = '1771', `MinRangedDmg` = '1050', `MaxRangedDmg` = '1563', `MeleeAttackPower` = '286.0', `RangedAttackPower` = '33.0', `Armor` = '5474.0' WHERE `entry` = '20897';
-- Ethereum Wave-Caster (1) (21597)
UPDATE `creature_template` SET `HealthMultiplier` = '4.0', `PowerMultiplier` = '4.0', `DamageMultiplier` = '6.0', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '22356', `MaxLevelHealth` = '22356', `MinLevelMana` = '12620', `MaxLevelMana` = '12620', `MinMeleeDmg` = '1405', `MaxMeleeDmg` = '1986', `MinRangedDmg` = '1189', `MaxRangedDmg` = '1770', `MeleeAttackPower` = '286.0', `RangedAttackPower` = '33.0', `Armor` = '5474.0' WHERE `entry` = '21597';


-- Gargantuan Abyssal 20898 / 21598
UPDATE creature_template SET UnitFlags=64 WHERE entry IN (20898,21598);
UPDATE creature_template SET LootId=20898 WHERE entry IN (20898,21598);
-- Gargantuan Abyssal (20898)
UPDATE `creature_template` SET `HealthMultiplier` = '10.0', `PowerMultiplier` = '0', `DamageMultiplier` = '10.0', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '71810', `MaxLevelHealth` = '71810', `MinLevelMana` = '0', `MaxLevelMana` = '0', `MinMeleeDmg` = '2823', `MaxMeleeDmg` = '3993', `MinRangedDmg` = '2415', `MaxRangedDmg` = '3585', `MeleeAttackPower` = '308.0', `RangedAttackPower` = '48.0', `Armor` = '7089.0' WHERE `entry` = '20898';
-- Gargantuan Abyssal (1) (21598)
UPDATE `creature_template` SET `HealthMultiplier` = '13.5', `PowerMultiplier` = '0', `DamageMultiplier` = '25.0', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '96944', `MaxLevelHealth` = '96944', `MinLevelMana` = '0', `MaxLevelMana` = '0', `MinMeleeDmg` = '6418', `MaxMeleeDmg` = '9077', `MinRangedDmg` = '5489', `MaxRangedDmg` = '8148', `MeleeAttackPower` = '308.0', `RangedAttackPower` = '48.0', `Armor` = '7089.0' WHERE `entry` = '21598';


-- Negaton Screamer 20875 / 21604
UPDATE creature_template SET UnitFlags=64 WHERE entry IN (20875,21604);
UPDATE creature_template SET LootId=20875 WHERE entry IN (20875,21604);
-- Negaton Screamer (20875)
UPDATE `creature_template` SET `HealthMultiplier` = '7.0', `PowerMultiplier` = '6.0', `DamageMultiplier` = '7.0', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '39123', `MaxLevelHealth` = '39123', `MinLevelMana` = '18930', `MaxLevelMana` = '18930', `MinMeleeDmg` = '1640', `MaxMeleeDmg` = '2317', `MinRangedDmg` = '1387', `MaxRangedDmg` = '2064', `MeleeAttackPower` = '286.0', `RangedAttackPower` = '33.0', `Armor` = '5474.0' WHERE `entry` = '20875';
-- Negaton Screamer (1) (21604)
UPDATE `creature_template` SET `HealthMultiplier` = '8.1', `PowerMultiplier` = '10.0', `DamageMultiplier` = '17.5', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '45271', `MaxLevelHealth` = '45271', `MinLevelMana` = '31550', `MaxLevelMana` = '31550', `MinMeleeDmg` = '4101', `MaxMeleeDmg` = '5794', `MinRangedDmg` = '3468', `MaxRangedDmg` = '5161', `MeleeAttackPower` = '286.0', `RangedAttackPower` = '33.0', `Armor` = '5474.0' WHERE `entry` = '21604';


-- Negaton Warp-Master 20873 / 21605
UPDATE creature_template SET UnitFlags=64 WHERE entry IN (20873,21605);
UPDATE creature_template SET LootId=20873 WHERE entry IN (20873,21605);
-- Negaton Warp-Master (20873)
UPDATE `creature_template` SET `HealthMultiplier` = '6.0', `PowerMultiplier` = '0', `DamageMultiplier` = '8.75', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.2', `MinLevelHealth` = '41916', `MaxLevelHealth` = '41916', `MinLevelMana` = '0', `MaxLevelMana` = '0', `MinMeleeDmg` = '2430', `MaxMeleeDmg` = '3436', `MinRangedDmg` = '1938', `MaxRangedDmg` = '2879', `MeleeAttackPower` = '304.0', `RangedAttackPower` = '44.0', `Armor` = '8150.0' WHERE `entry` = '20873';
-- Negaton Warp-Master (1) (21605)
UPDATE `creature_template` SET `HealthMultiplier` = '8.1', `PowerMultiplier` = '0', `DamageMultiplier` = '22.0', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.2', `MinLevelHealth` = '56587', `MaxLevelHealth` = '56587', `MinLevelMana` = '0', `MaxLevelMana` = '0', `MinMeleeDmg` = '6110', `MaxMeleeDmg` = '8640', `MinRangedDmg` = '4737', `MaxRangedDmg` = '7037', `MeleeAttackPower` = '304.0', `RangedAttackPower` = '44.0', `Armor` = '8150.0' WHERE `entry` = '21605';


-- Phase-Hunter 20906 / 21606
UPDATE creature_template SET UnitFlags=64 WHERE entry IN (20906,21606);
UPDATE creature_template SET LootId=20906, SkinningLootId=70162 WHERE entry IN (20906,21606);
-- Phase-Hunter (20906)
UPDATE `creature_template` SET `HealthMultiplier` = '11.0', `PowerMultiplier` = '0', `DamageMultiplier` = '9.015', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '81180', `MaxLevelHealth` = '81180', `MinLevelMana` = '0', `MaxLevelMana` = '0', `MinMeleeDmg` = '2353', `MaxMeleeDmg` = '3327', `MinRangedDmg` = '2013', `MaxRangedDmg` = '2986', `MeleeAttackPower` = '314.0', `RangedAttackPower` = '53.0', `Armor` = '7387.0' WHERE `entry` = '20906';
-- Phase-Hunter (1) (21606)
UPDATE `creature_template` SET `HealthMultiplier` = '15.0', `PowerMultiplier` = '0', `DamageMultiplier` = '24.0', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '110700', `MaxLevelHealth` = '110700', `MinLevelMana` = '0', `MaxLevelMana` = '0', `MinMeleeDmg` = '6264', `MaxMeleeDmg` = '8858', `MinRangedDmg` = '5369', `MaxRangedDmg` = '7963', `MeleeAttackPower` = '314.0', `RangedAttackPower` = '53.0', `Armor` = '7387.0' WHERE `entry` = '21606';


-- Protean Horror 20865 / 21607
UPDATE creature_template SET UnitFlags=64 WHERE entry IN (20865,21607);
UPDATE creature_template SET LootId=20865 WHERE entry IN (20865,21607);
-- Protean Horror (20865)
UPDATE `creature_template` SET `HealthMultiplier` = '1.25', `PowerMultiplier` = '0', `DamageMultiplier` = '4.0', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '8178', `MaxLevelHealth` = '8451', `MinLevelMana` = '0', `MaxLevelMana` = '0', `MinMeleeDmg` = '923', `MaxMeleeDmg` = '1365', `MinRangedDmg` = '779', `MaxRangedDmg` = '1219', `MeleeAttackPower` = '298.0', `RangedAttackPower` = '43.0', `Armor` = '6492.0' WHERE `entry` = '20865';
-- Protean Horror (1) (21607)
UPDATE `creature_template` SET `HealthMultiplier` = '1.25', `PowerMultiplier` = '0', `DamageMultiplier` = '9.0', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '8178', `MaxLevelHealth` = '8451', `MinLevelMana` = '0', `MaxLevelMana` = '0', `MinMeleeDmg` = '2076', `MaxMeleeDmg` = '3071', `MinRangedDmg` = '1754', `MaxRangedDmg` = '2743', `MeleeAttackPower` = '298.0', `RangedAttackPower` = '43.0', `Armor` = '6492.0' WHERE `entry` = '21607';


-- Protean Nightmare 20864 / 21608
UPDATE creature_template SET UnitFlags=64 WHERE entry IN (20864,21608);
UPDATE creature_template SET LootId=20864 WHERE entry IN (20864,21608);
-- Protean Nightmare (20864)
UPDATE `creature_template` SET `HealthMultiplier` = '6.5', `PowerMultiplier` = '0', `DamageMultiplier` = '2.0', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '46677', `MaxLevelHealth` = '46677', `MinLevelMana` = '0', `MaxLevelMana` = '0', `MinMeleeDmg` = '513', `MaxMeleeDmg` = '726', `MinRangedDmg` = '439', `MaxRangedDmg` = '652', `MeleeAttackPower` = '308.0', `RangedAttackPower` = '48.0', `Armor` = '7089.0' WHERE `entry` = '20864';
-- Protean Nightmare (1) (21608)
UPDATE `creature_template` SET `HealthMultiplier` = '8.1', `PowerMultiplier` = '0', `DamageMultiplier` = '5.0', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '58166', `MaxLevelHealth` = '58166', `MinLevelMana` = '0', `MaxLevelMana` = '0', `MinMeleeDmg` = '1284', `MaxMeleeDmg` = '1815', `MinRangedDmg` = '1098', `MaxRangedDmg` = '1630', `MeleeAttackPower` = '308.0', `RangedAttackPower` = '48.0', `Armor` = '7089.0' WHERE `entry` = '21608';


-- Protean Spawn 21395 / 21609 - NO WORK REQUIRED
-- Protean Spawn (21395)
UPDATE `creature_template` SET `HealthMultiplier` = '0.5', `PowerMultiplier` = '0', `DamageMultiplier` = '3.3', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '3271', `MaxLevelHealth` = '3381', `MinLevelMana` = '0', `MaxLevelMana` = '0', `MinMeleeDmg` = '381', `MaxMeleeDmg` = '563', `MinRangedDmg` = '643', `MaxRangedDmg` = '1006', `MeleeAttackPower` = '298.0', `RangedAttackPower` = '43.0', `Armor` = '6492.0' WHERE `entry` = '21395';
-- Protean Spawn (1) (21609)
UPDATE `creature_template` SET `HealthMultiplier` = '0.6885', `PowerMultiplier` = '0', `DamageMultiplier` = '4.2', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '4655', `MaxLevelHealth` = '4655', `MinLevelMana` = '0', `MaxLevelMana` = '0', `MinMeleeDmg` = '507', `MaxMeleeDmg` = '716', `MinRangedDmg` = '862', `MaxRangedDmg` = '1280', `MeleeAttackPower` = '298.0', `RangedAttackPower` = '43.0', `Armor` = '6492.0' WHERE `entry` = '21609';


-- Sargeron Archer 20901 / 21610
UPDATE creature_template SET UnitFlags=64 WHERE entry IN (20901,21610);
UPDATE creature_template SET LootId=20901, PickpocketLootId=20901 WHERE entry IN (20901,21610);
-- Sargeron Archer (20901)
UPDATE `creature_template` SET `HealthMultiplier` = '6.0', `PowerMultiplier` = '4.0', `DamageMultiplier` = '6.75', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '33534', `MaxLevelHealth` = '33534', `MinLevelMana` = '12620', `MaxLevelMana` = '12620', `MinMeleeDmg` = '1582', `MaxMeleeDmg` = '2235', `MinRangedDmg` = '1348', `MaxRangedDmg` = '2005', `MeleeAttackPower` = '286.0', `RangedAttackPower` = '33.0', `Armor` = '5474.0' WHERE `entry` = '20901';
-- Sargeron Archer (1) (21610)
UPDATE `creature_template` SET `HealthMultiplier` = '8.1', `PowerMultiplier` = '8.0', `DamageMultiplier` = '17.0', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '45271', `MaxLevelHealth` = '45271', `MinLevelMana` = '25240', `MaxLevelMana` = '25240', `MinMeleeDmg` = '3984', `MaxMeleeDmg` = '5628', `MinRangedDmg` = '3369', `MaxRangedDmg` = '5014', `MeleeAttackPower` = '286.0', `RangedAttackPower` = '33.0', `Armor` = '5474.0' WHERE `entry` = '21610';


-- Sargeron Hellcaller 20902 / 21611
UPDATE creature_template SET UnitFlags=64 WHERE entry IN (20902,21611);
UPDATE creature_template SET LootId=20902, PickpocketLootId=20902 WHERE entry IN (20902,21611);
-- Sargeron Hellcaller (20902)
UPDATE `creature_template` SET `HealthMultiplier` = '6.0', `PowerMultiplier` = '4.0', `DamageMultiplier` = '6.75', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '33534', `MaxLevelHealth` = '33534', `MinLevelMana` = '12620', `MaxLevelMana` = '12620', `MinMeleeDmg` = '1582', `MaxMeleeDmg` = '2235', `MinRangedDmg` = '1348', `MaxRangedDmg` = '2005', `MeleeAttackPower` = '286.0', `RangedAttackPower` = '33.0', `Armor` = '5474.0' WHERE `entry` = '20902';
-- Sargeron Hellcaller (1) (21611)
UPDATE `creature_template` SET `HealthMultiplier` = '8.1', `PowerMultiplier` = '10.0', `DamageMultiplier` = '17.0', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '45271', `MaxLevelHealth` = '45271', `MinLevelMana` = '31550', `MaxLevelMana` = '31550', `MinMeleeDmg` = '3984', `MaxMeleeDmg` = '5628', `MinRangedDmg` = '3369', `MaxRangedDmg` = '5014', `MeleeAttackPower` = '286.0', `RangedAttackPower` = '33.0', `Armor` = '5474.0' WHERE `entry` = '21611';


-- Sightless Eye 21346 / 21612 - NO WORK REQUIRED
-- Sightless Eye (21346)
UPDATE `creature_template` SET `HealthMultiplier` = '0.2', `PowerMultiplier` = '0', `DamageMultiplier` = '0.1', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '1397', `MaxLevelHealth` = '1397', `MinLevelMana` = '0', `MaxLevelMana` = '0', `MinMeleeDmg` = '126', `MaxMeleeDmg` = '179', `MinRangedDmg` = '22', `MaxRangedDmg` = '32', `MeleeAttackPower` = '304.0', `RangedAttackPower` = '44.0', `Armor` = '6792.0' WHERE `entry` = '21346';
-- Sightless Eye (1) (21612)
UPDATE `creature_template` SET `HealthMultiplier` = '0.27', `PowerMultiplier` = '0', `DamageMultiplier` = '0.26', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '1886', `MaxLevelHealth` = '1886', `MinLevelMana` = '0', `MaxLevelMana` = '0', `MinMeleeDmg` = '328', `MaxMeleeDmg` = '464', `MinRangedDmg` = '56', `MaxRangedDmg` = '83', `MeleeAttackPower` = '304.0', `RangedAttackPower` = '44.0', `Armor` = '6792.0' WHERE `entry` = '21612';


-- Skulking Witch 20882 / 21613
UPDATE creature_template SET LootId=20882, PickpocketLootId=20882 WHERE entry IN (20882,21613);
-- Skulking Witch (20882)
UPDATE `creature_template` SET `HealthMultiplier` = '6.5', `PowerMultiplier` = '0', `DamageMultiplier` = '8.0', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '45409', `MaxLevelHealth` = '45409', `MinLevelMana` = '0', `MaxLevelMana` = '0', `MinMeleeDmg` = '1894', `MaxMeleeDmg` = '2678', `MinRangedDmg` = '1615', `MaxRangedDmg` = '2399', `MeleeAttackPower` = '304.0', `RangedAttackPower` = '44.0', `Armor` = '6792.0' WHERE `entry` = '20882';
-- Skulking Witch (1) (21613)
UPDATE `creature_template` SET `HealthMultiplier` = '8.1', `PowerMultiplier` = '0', `DamageMultiplier` = '20.0', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '56587', `MaxLevelHealth` = '56587', `MinLevelMana` = '0', `MaxLevelMana` = '0', `MinMeleeDmg` = '5050', `MaxMeleeDmg` = '7140', `MinRangedDmg` = '4307', `MaxRangedDmg` = '6397', `MeleeAttackPower` = '304.0', `RangedAttackPower` = '44.0', `Armor` = '6792.0' WHERE `entry` = '21613';


-- Soul Devourer 20866 / 21614
UPDATE creature_template SET UnitFlags=64 WHERE entry IN (20866,21614);
UPDATE creature_template SET LootId=20866, SkinningLootId=70162 WHERE entry IN (20866,21614);
-- Soul Devourer (20866)
UPDATE `creature_template` SET `HealthMultiplier` = '6.5', `PowerMultiplier` = '0', `DamageMultiplier` = '8.0', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '45409', `MaxLevelHealth` = '45409', `MinLevelMana` = '0', `MaxLevelMana` = '0', `MinMeleeDmg` = '1894', `MaxMeleeDmg` = '2678', `MinRangedDmg` = '1615', `MaxRangedDmg` = '2399', `MeleeAttackPower` = '304.0', `RangedAttackPower` = '44.0', `Armor` = '6792.0' WHERE `entry` = '20866';
-- Soul Devourer (1) (21614)
UPDATE `creature_template` SET `HealthMultiplier` = '8.1', `PowerMultiplier` = '0', `DamageMultiplier` = '20.0', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '56587', `MaxLevelHealth` = '56587', `MinLevelMana` = '0', `MaxLevelMana` = '0', `MinMeleeDmg` = '5050', `MaxMeleeDmg` = '7140', `MinRangedDmg` = '4307', `MaxRangedDmg` = '6397', `MeleeAttackPower` = '304.0', `RangedAttackPower` = '44.0', `Armor` = '6792.0' WHERE `entry` = '21614';


-- Spiteful Temptress 20883 / 21615
UPDATE creature_template SET UnitFlags=32832 WHERE entry IN (20883,21615);
UPDATE creature_template SET LootId=20883, PickpocketLootId=20883 WHERE entry IN (20883,21615);
-- Spiteful Temptress (20883)
UPDATE `creature_template` SET `HealthMultiplier` = '7.0', `PowerMultiplier` = '4.0', `DamageMultiplier` = '6.0', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '39123', `MaxLevelHealth` = '39123', `MinLevelMana` = '12620', `MaxLevelMana` = '12620', `MinMeleeDmg` = '1406', `MaxMeleeDmg` = '1986', `MinRangedDmg` = '1189', `MaxRangedDmg` = '1770', `MeleeAttackPower` = '286.0', `RangedAttackPower` = '33.0', `Armor` = '5474.0' WHERE `entry` = '20883';
-- Spiteful Temptress (1) (21615)
UPDATE `creature_template` SET `HealthMultiplier` = '8.1', `PowerMultiplier` = '4.0', `DamageMultiplier` = '25.0', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '45271', `MaxLevelHealth` = '45271', `MinLevelMana` = '12620', `MaxLevelMana` = '12620', `MinMeleeDmg` = '5858', `MaxMeleeDmg` = '8277', `MinRangedDmg` = '4955', `MaxRangedDmg` = '7373', `MeleeAttackPower` = '286.0', `RangedAttackPower` = '33.0', `Armor` = '5474.0' WHERE `entry` = '21615';


-- Sulfuron Magma-Thrower 20909 / 21616
UPDATE creature_template SET LootId=20909 WHERE entry IN (20909,21616);
-- Sulfuron Magma-Thrower (20909)
UPDATE `creature_template` SET `HealthMultiplier` = '12.0', `PowerMultiplier` = '4.0', `DamageMultiplier` = '7.014', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '70836', `MaxLevelHealth` = '70836', `MinLevelMana` = '13236', `MaxLevelMana` = '13236', `MinMeleeDmg` = '1697', `MaxMeleeDmg` = '2398', `MinRangedDmg` = '1438', `MaxRangedDmg` = '2137', `MeleeAttackPower` = '296.0', `RangedAttackPower` = '40.0', `Armor` = '5954.0' WHERE `entry` = '20909';
-- Sulfuron Magma-Thrower (1) (21616)
UPDATE `creature_template` SET `HealthMultiplier` = '16.0', `PowerMultiplier` = '4.0', `DamageMultiplier` = '17.5', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '94448', `MaxLevelHealth` = '94448', `MinLevelMana` = '13236', `MaxLevelMana` = '13236', `MinMeleeDmg` = '4235', `MaxMeleeDmg` = '5982', `MinRangedDmg` = '3595', `MaxRangedDmg` = '5342', `MeleeAttackPower` = '296.0', `RangedAttackPower` = '40.0', `Armor` = '5954.0' WHERE `entry` = '21616';


-- Twilight Drakonaar 20910 / 21618
UPDATE creature_template SET LootId=20910 WHERE entry IN (20910,21618);
-- Twilight Drakonaar (20910)
UPDATE `creature_template` SET `HealthMultiplier` = '12.0', `PowerMultiplier` = '0', `DamageMultiplier` = '8.0', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '88560', `MaxLevelHealth` = '88560', `MinLevelMana` = '0', `MaxLevelMana` = '0', `MinMeleeDmg` = '2091', `MaxMeleeDmg` = '2957', `MinRangedDmg` = '1790', `MaxRangedDmg` = '2654', `MeleeAttackPower` = '314.0', `RangedAttackPower` = '53.0', `Armor` = '7387.0' WHERE `entry` = '20910';
-- Twilight Drakonaar (1) (21618)
UPDATE `creature_template` SET `HealthMultiplier` = '16.0', `PowerMultiplier` = '0', `DamageMultiplier` = '24.0', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '118080', `MaxLevelHealth` = '118080', `MinLevelMana` = '0', `MaxLevelMana` = '0', `MinMeleeDmg` = '6264', `MaxMeleeDmg` = '8858', `MinRangedDmg` = '5369', `MaxRangedDmg` = '7963', `MeleeAttackPower` = '314.0', `RangedAttackPower` = '53.0', `Armor` = '7387.0' WHERE `entry` = '21618';


-- Unbound Devastator 20881 / 21619
UPDATE creature_template SET UnitFlags=64 WHERE entry IN (20881,21619);
UPDATE creature_template SET LootId=20881, PickpocketLootId=20881 WHERE entry IN (20881,21619);
-- Unbound Devastator (20881)
UPDATE `creature_template` SET `HealthMultiplier` = '7.0', `PowerMultiplier` = '0', `DamageMultiplier` = '8.0', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '48902', `MaxLevelHealth` = '48902', `MinLevelMana` = '0', `MaxLevelMana` = '0', `MinMeleeDmg` = '1894', `MaxMeleeDmg` = '2678', `MinRangedDmg` = '1615', `MaxRangedDmg` = '2399', `MeleeAttackPower` = '304.0', `RangedAttackPower` = '44.0', `Armor` = '6792.0' WHERE `entry` = '20881';
-- Unbound Devastator (1) (21619)
UPDATE `creature_template` SET `HealthMultiplier` = '8.1', `PowerMultiplier` = '0', `DamageMultiplier` = '20.0', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '56587', `MaxLevelHealth` = '56587', `MinLevelMana` = '0', `MaxLevelMana` = '0', `MinMeleeDmg` = '5050', `MaxMeleeDmg` = '7140', `MinRangedDmg` = '4307', `MaxRangedDmg` = '6397', `MeleeAttackPower` = '304.0', `RangedAttackPower` = '44.0', `Armor` = '6792.0' WHERE `entry` = '21619';


-- Unchained Doombringer 20900 / 21621
UPDATE creature_template SET UnitFlags=64 WHERE entry IN (20900,21621);
UPDATE creature_template SET LootId=20900, PickpocketLootId=20900 WHERE entry IN (20900,21621);
-- Unchained Doombringer (20900)
UPDATE `creature_template` SET `HealthMultiplier` = '9.0', `PowerMultiplier` = '0', `DamageMultiplier` = '10.0', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '64629', `MaxLevelHealth` = '64629', `MinLevelMana` = '0', `MaxLevelMana` = '0', `MinMeleeDmg` = '2567', `MaxMeleeDmg` = '3631', `MinRangedDmg` = '2196', `MaxRangedDmg` = '3259', `MeleeAttackPower` = '308.0', `RangedAttackPower` = '48.0', `Armor` = '7089.0' WHERE `entry` = '20900';
-- Unchained Doombringer (1) (21621)
UPDATE `creature_template` SET `HealthMultiplier` = '12.5', `PowerMultiplier` = '0', `DamageMultiplier` = '20.0', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '89763', `MaxLevelHealth` = '89763', `MinLevelMana` = '0', `MaxLevelMana` = '0', `MinMeleeDmg` = '5134', `MaxMeleeDmg` = '7261', `MinRangedDmg` = '4391', `MaxRangedDmg` = '6519', `MeleeAttackPower` = '308.0', `RangedAttackPower` = '48.0', `Armor` = '7089.0' WHERE `entry` = '21621';



-- ========================================
-- Caverns of Time: Old Hillsbrad Foothills
-- ========================================
-- Durnholde Armorer 18764 / 20523 - NO WORK REQUIRED
-- Durnholde Armorer (18764)
UPDATE `creature_template` SET `HealthMultiplier` = '1.0', `PowerMultiplier` = '0', `DamageMultiplier` = '1.5', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '5914', `MaxLevelHealth` = '5914', `MinLevelMana` = '0', `MaxLevelMana` = '0', `MinMeleeDmg` = '301', `MaxMeleeDmg` = '421', `MinRangedDmg` = '249', `MaxRangedDmg` = '369', `MeleeAttackPower` = '278.0', `RangedAttackPower` = '35.0', `Armor` = '5291.0' WHERE `entry` = '18764';
-- Durnholde Armorer (1) (20523)
UPDATE `creature_template` SET `HealthMultiplier` = '1.35', `PowerMultiplier` = '0', `DamageMultiplier` = '6.0', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '9127', `MaxLevelHealth` = '9127', `MinLevelMana` = '0', `MaxLevelMana` = '0', `MinMeleeDmg` = '1450', `MaxMeleeDmg` = '2047', `MinRangedDmg` = '1231', `MaxRangedDmg` = '1828', `MeleeAttackPower` = '298.0', `RangedAttackPower` = '43.0', `Armor` = '6492.0' WHERE `entry` = '20523';


-- Durnholde Captain 26650 / 26651 - NO WORK REQUIRED
-- Durnholde Captain (26650)
UPDATE `creature_template` SET `HealthMultiplier` = '12.0', `PowerMultiplier` = '10.0', `DamageMultiplier` = '6.0', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '70836', `MaxLevelHealth` = '70836', `MinLevelMana` = '33090', `MaxLevelMana` = '33090', `MinMeleeDmg` = '1452', `MaxMeleeDmg` = '2051', `MinRangedDmg` = '1233', `MaxRangedDmg` = '1832', `MeleeAttackPower` = '296.0', `RangedAttackPower` = '40.0', `Armor` = '5954.0' WHERE `entry` = '26650';
-- Durnholde Captain (1) (26651)
UPDATE `creature_template` SET `HealthMultiplier` = '16.2', `PowerMultiplier` = '10.0', `DamageMultiplier` = '16.0', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '95629', `MaxLevelHealth` = '95629', `MinLevelMana` = '33090', `MaxLevelMana` = '33090', `MinMeleeDmg` = '3872', `MaxMeleeDmg` = '5470', `MinRangedDmg` = '3287', `MaxRangedDmg` = '4885', `MeleeAttackPower` = '296.0', `RangedAttackPower` = '40.0', `Armor` = '5954.0' WHERE `entry` = '26651';


-- Durnholde Cook 18765 / 20524 - NO WORK REQUIRED
-- Durnholde Cook (18765)
UPDATE `creature_template` SET `HealthMultiplier` = '1.0', `PowerMultiplier` = '0', `DamageMultiplier` = '1.5', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '5914', `MaxLevelHealth` = '5914', `MinLevelMana` = '0', `MaxLevelMana` = '0', `MinMeleeDmg` = '301', `MaxMeleeDmg` = '421', `MinRangedDmg` = '249', `MaxRangedDmg` = '369', `MeleeAttackPower` = '278.0', `RangedAttackPower` = '35.0', `Armor` = '5291.0' WHERE `entry` = '18765';
-- Durnholde Cook (1) (20524)
UPDATE `creature_template` SET `HealthMultiplier` = '1.35', `PowerMultiplier` = '0', `DamageMultiplier` = '6.0', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '9127', `MaxLevelHealth` = '9127', `MinLevelMana` = '0', `MaxLevelMana` = '0', `MinMeleeDmg` = '1450', `MaxMeleeDmg` = '2047', `MinRangedDmg` = '1231', `MaxRangedDmg` = '1828', `MeleeAttackPower` = '298.0', `RangedAttackPower` = '43.0', `Armor` = '6492.0' WHERE `entry` = '20524';


-- Durnholde Mage 18934 / 20525 - RECALCULATE HEROIC DAMAGE (COMPLETELY WRONG)
UPDATE creature_template SET LootId=18934, PickpocketLootId=18934 WHERE entry IN (18934,20525);
-- Durnholde Mage (18934)
UPDATE `creature_template` SET `HealthMultiplier` = '2.9', `PowerMultiplier` = '5.0', `DamageMultiplier` = '1.5', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '14674', `MaxLevelHealth` = '14674', `MinLevelMana` = '14665', `MaxLevelMana` = '14665', `MinMeleeDmg` = '307', `MaxMeleeDmg` = '431', `MinRangedDmg` = '255', `MaxRangedDmg` = '379', `MeleeAttackPower` = '272.0', `RangedAttackPower` = '31.0', `Armor` = '4755.0' WHERE `entry` = '18934';
-- Durnholde Mage (1) (20525)
UPDATE `creature_template` SET `HealthMultiplier` = '3.915', `PowerMultiplier` = '5.0', `DamageMultiplier` = '6.0', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '22488', `MaxLevelHealth` = '22488', `MinLevelMana` = '16155', `MaxLevelMana` = '16155', `MinMeleeDmg` = '1429', `MaxMeleeDmg` = '2020', `MinRangedDmg` = '1212', `MaxRangedDmg` = '1803', `MeleeAttackPower` = '290.0', `RangedAttackPower` = '37.0', `Armor` = '5714.0' WHERE `entry` = '20525';


-- Durnholde Rifleman 17820 / 20526
UPDATE creature_template SET LootId=17820, PickpocketLootId=17820 WHERE entry IN (17820,20526);
-- Durnholde Rifleman (17820)
UPDATE `creature_template` SET `HealthMultiplier` = '2.9', `PowerMultiplier` = '0', `DamageMultiplier` = '1.5', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '17736', `MaxLevelHealth` = '18345', `MinLevelMana` = '0', `MaxLevelMana` = '0', `MinMeleeDmg` = '315', `MaxMeleeDmg` = '465', `MinRangedDmg` = '263', `MaxRangedDmg` = '412', `MeleeAttackPower` = '288.0', `RangedAttackPower` = '39.0', `Armor` = '5892.0' WHERE `entry` = '17820';
-- Durnholde Rifleman (1) (20526)
UPDATE `creature_template` SET `HealthMultiplier` = '3.915', `PowerMultiplier` = '0', `DamageMultiplier` = '6.0', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '27350', `MaxLevelHealth` = '28114', `MinLevelMana` = '0', `MaxLevelMana` = '0', `MinMeleeDmg` = '1515', `MaxMeleeDmg` = '2178', `MinRangedDmg` = '1292', `MaxRangedDmg` = '1956', `MeleeAttackPower` = '308.0', `RangedAttackPower` = '48.0', `Armor` = '7089.0' WHERE `entry` = '20526';


-- Durnholde Sentry 17819 / 20527
UPDATE creature_template SET LootId=17819, PickpocketLootId=17819 WHERE entry IN (17819,20527);
-- Durnholde Sentry (17819)
UPDATE `creature_template` SET `HealthMultiplier` = '2.9', `PowerMultiplier` = '0', `DamageMultiplier` = '1.5', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '17736', `MaxLevelHealth` = '18345', `MinLevelMana` = '0', `MaxLevelMana` = '0', `MinMeleeDmg` = '315', `MaxMeleeDmg` = '465', `MinRangedDmg` = '263', `MaxRangedDmg` = '412', `MeleeAttackPower` = '288.0', `RangedAttackPower` = '39.0', `Armor` = '5892.0' WHERE `entry` = '17819';
-- Durnholde Sentry (1) (20527)
UPDATE `creature_template` SET `HealthMultiplier` = '3.915', `PowerMultiplier` = '0', `DamageMultiplier` = '9.0', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '27350', `MaxLevelHealth` = '28114', `MinLevelMana` = '0', `MaxLevelMana` = '0', `MinMeleeDmg` = '2272', `MaxMeleeDmg` = '3268', `MinRangedDmg` = '1938', `MaxRangedDmg` = '2933', `MeleeAttackPower` = '308.0', `RangedAttackPower` = '48.0', `Armor` = '7089.0' WHERE `entry` = '20527';


-- Durnholde Tracking Hound 17840 / 20528
UPDATE creature_template SET LootId=17840, SkinningLootId=70065 WHERE entry IN (17840,20528);
-- Durnholde Tracking Hound (17840)
UPDATE `creature_template` SET `HealthMultiplier` = '1.8', `PowerMultiplier` = '0', `DamageMultiplier` = '3.0', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.5', `MinLevelHealth` = '10645', `MaxLevelHealth` = '10645', `MinLevelMana` = '0', `MaxLevelMana` = '0', `MinMeleeDmg` = '361', `MaxMeleeDmg` = '506', `MinRangedDmg` = '497', `MaxRangedDmg` = '738', `MeleeAttackPower` = '278.0', `RangedAttackPower` = '35.0', `Armor` = '7937.0' WHERE `entry` = '17840';
-- Durnholde Tracking Hound (1) (20528)
UPDATE `creature_template` SET `HealthMultiplier` = '2.43', `PowerMultiplier` = '0', `DamageMultiplier` = '7.0', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.5', `MinLevelHealth` = '16429', `MaxLevelHealth` = '16429', `MinLevelMana` = '0', `MaxLevelMana` = '0', `MinMeleeDmg` = '1015', `MaxMeleeDmg` = '1433', `MinRangedDmg` = '1436', `MaxRangedDmg` = '2133', `MeleeAttackPower` = '298.0', `RangedAttackPower` = '43.0', `Armor` = '9738.0' WHERE `entry` = '20528';


-- Durnholde Veteran 17860 / 20529
UPDATE creature_template SET LootId=17860, PickpocketLootId=17860 WHERE entry IN (17860,20529);
-- Durnholde Veteran (17860)
UPDATE `creature_template` SET `HealthMultiplier` = '2.9', `PowerMultiplier` = '0', `DamageMultiplier` = '1.5', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '18345', `MaxLevelHealth` = '18345', `MinLevelMana` = '0', `MaxLevelMana` = '0', `MinMeleeDmg` = '331', `MaxMeleeDmg` = '465', `MinRangedDmg` = '277', `MaxRangedDmg` = '412', `MeleeAttackPower` = '288.0', `RangedAttackPower` = '39.0', `Armor` = '5892.0' WHERE `entry` = '17860';
-- Durnholde Veteran (1) (20529)
UPDATE `creature_template` SET `HealthMultiplier` = '3.915', `PowerMultiplier` = '0', `DamageMultiplier` = '8.0', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '28114', `MaxLevelHealth` = '28114', `MinLevelMana` = '0', `MaxLevelMana` = '0', `MinMeleeDmg` = '2054', `MaxMeleeDmg` = '2905', `MinRangedDmg` = '1757', `MaxRangedDmg` = '2607', `MeleeAttackPower` = '308.0', `RangedAttackPower` = '48.0', `Armor` = '7089.0' WHERE `entry` = '20529';


-- Durnholde Warden 17833 / 20530
UPDATE creature_template SET LootId=17833, PickpocketLootId=17833 WHERE entry IN (17833,20530);
-- Durnholde Warden (17833)
UPDATE `creature_template` SET `HealthMultiplier` = '2.9', `PowerMultiplier` = '5.0', `DamageMultiplier` = '1.5', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '14674', `MaxLevelHealth` = '14674', `MinLevelMana` = '14665', `MaxLevelMana` = '14665', `MinMeleeDmg` = '307', `MaxMeleeDmg` = '431', `MinRangedDmg` = '255', `MaxRangedDmg` = '379', `MeleeAttackPower` = '272.0', `RangedAttackPower` = '31.0', `Armor` = '4755.0' WHERE `entry` = '17833';
-- Durnholde Warden (1) (20530)
UPDATE `creature_template` SET `HealthMultiplier` = '3.915', `PowerMultiplier` = '5.0', `DamageMultiplier` = '6.0', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '22488', `MaxLevelHealth` = '22488', `MinLevelMana` = '16155', `MaxLevelMana` = '16155', `MinMeleeDmg` = '1429', `MaxMeleeDmg` = '2020', `MinRangedDmg` = '1212', `MaxRangedDmg` = '1803', `MeleeAttackPower` = '290.0', `RangedAttackPower` = '37.0', `Armor` = '5714.0' WHERE `entry` = '20530';


-- Infinite Defiler 18171 / 20532
UPDATE creature_template SET LootId=18171, PickpocketLootId=18171, SkinningLootId=70063 WHERE entry IN (18171,20532);
-- Infinite Defiler (18171)
UPDATE `creature_template` SET `HealthMultiplier` = '2.9', `PowerMultiplier` = '3.0', `DamageMultiplier` = '4.0', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '15176', `MaxLevelHealth` = '15176', `MinLevelMana` = '8973', `MaxLevelMana` = '8973', `MinMeleeDmg` = '855', `MaxMeleeDmg` = '1204', `MinRangedDmg` = '716', `MaxRangedDmg` = '1065', `MeleeAttackPower` = '276.0', `RangedAttackPower` = '31.0', `Armor` = '4995.0' WHERE `entry` = '18171';
-- Infinite Defiler (1) (20532)
UPDATE `creature_template` SET `HealthMultiplier` = '3.915', `PowerMultiplier` = '3.0', `DamageMultiplier` = '10.0', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '23110', `MaxLevelHealth` = '23110', `MinLevelMana` = '9927', `MaxLevelMana` = '9927', `MinMeleeDmg` = '2420', `MaxMeleeDmg` = '3419', `MinRangedDmg` = '2054', `MaxRangedDmg` = '3053', `MeleeAttackPower` = '296.0', `RangedAttackPower` = '40.0', `Armor` = '5954.0' WHERE `entry` = '20532';


-- Infinite Saboteur 18172 / 20533
UPDATE creature_template SET LootId=18172, PickpocketLootId=18172, SkinningLootId=70063 WHERE entry IN (18172,20533);
-- Infinite Saboteur (18172)
UPDATE `creature_template` SET `HealthMultiplier` = '2.9', `PowerMultiplier` = '3.0', `DamageMultiplier` = '13.02', `DamageVariance` = '0.15', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '15176', `MaxLevelHealth` = '15176', `MinLevelMana` = '8973', `MaxLevelMana` = '8973', `MinMeleeDmg` = '855', `MaxMeleeDmg` = '1024', `MinRangedDmg` = '716', `MaxRangedDmg` = '1065', `MeleeAttackPower` = '276.0', `RangedAttackPower` = '31.0', `Armor` = '4995.0' WHERE `entry` = '18172';
-- Infinite Saboteur (1) (20533)
UPDATE `creature_template` SET `HealthMultiplier` = '3.915', `PowerMultiplier` = '3.0', `DamageMultiplier` = '10.0', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '23110', `MaxLevelHealth` = '23110', `MinLevelMana` = '9927', `MaxLevelMana` = '9927', `MinMeleeDmg` = '2420', `MaxMeleeDmg` = '3419', `MinRangedDmg` = '2054', `MaxRangedDmg` = '3053', `MeleeAttackPower` = '296.0', `RangedAttackPower` = '40.0', `Armor` = '5954.0' WHERE `entry` = '20533';


-- Infinite Slayer 18170 / 20534
UPDATE creature_template SET LootId=18170, PickpocketLootId=18170, SkinningLootId=70063 WHERE entry IN (18170,20534);
-- Infinite Slayer (18170)
UPDATE `creature_template` SET `HealthMultiplier` = '2.9', `PowerMultiplier` = '0', `DamageMultiplier` = '4.0', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '18972', `MaxLevelHealth` = '18972', `MinLevelMana` = '0', `MaxLevelMana` = '0', `MinMeleeDmg` = '922', `MaxMeleeDmg` = '1299', `MinRangedDmg` = '779', `MaxRangedDmg` = '1157', `MeleeAttackPower` = '292.0', `RangedAttackPower` = '41.0', `Armor` = '6192.0' WHERE `entry` = '18170';
-- Infinite Slayer (1) (20534)
UPDATE `creature_template` SET `HealthMultiplier` = '3.915', `PowerMultiplier` = '0', `DamageMultiplier` = '10.0', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '28893', `MaxLevelHealth` = '28893', `MinLevelMana` = '0', `MaxLevelMana` = '0', `MinMeleeDmg` = '2610', `MaxMeleeDmg` = '3691', `MinRangedDmg` = '2237', `MaxRangedDmg` = '3318', `MeleeAttackPower` = '314.0', `RangedAttackPower` = '53.0', `Armor` = '7387.0' WHERE `entry` = '20534';


-- Lordaeron Sentry 17815 / 20537
UPDATE creature_template SET LootId=17815, PickpocketLootId=17815 WHERE entry IN (17815,20537);
-- Lordaeron Sentry (17815)
UPDATE `creature_template` SET `HealthMultiplier` = '2.9', `PowerMultiplier` = '0', `DamageMultiplier` = '4.5', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '17151', `MaxLevelHealth` = '17151', `MinLevelMana` = '0', `MaxLevelMana` = '0', `MinMeleeDmg` = '902', `MaxMeleeDmg` = '1264', `MinRangedDmg` = '746', `MaxRangedDmg` = '1108', `MeleeAttackPower` = '278.0', `RangedAttackPower` = '35.0', `Armor` = '5291.0' WHERE `entry` = '17815';
-- Lordaeron Sentry (1) (20537)
UPDATE `creature_template` SET `HealthMultiplier` = '3.915', `PowerMultiplier` = '0', `DamageMultiplier` = '7.0', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '26469', `MaxLevelHealth` = '26469', `MinLevelMana` = '0', `MaxLevelMana` = '0', `MinMeleeDmg` = '1691', `MaxMeleeDmg` = '2388', `MinRangedDmg` = '1436', `MaxRangedDmg` = '2133', `MeleeAttackPower` = '298.0', `RangedAttackPower` = '43.0', `Armor` = '6492.0' WHERE `entry` = '20537';


-- Lordaeron Watchman 17814 / 20538
UPDATE creature_template SET LootId=17814, PickpocketLootId=17814 WHERE entry IN (17814,20538);
-- Lordaeron Watchman (17814)
UPDATE `creature_template` SET `HealthMultiplier` = '2.9', `PowerMultiplier` = '0', `DamageMultiplier` = '4.5', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '17151', `MaxLevelHealth` = '17151', `MinLevelMana` = '0', `MaxLevelMana` = '0', `MinMeleeDmg` = '902', `MaxMeleeDmg` = '1264', `MinRangedDmg` = '746', `MaxRangedDmg` = '1108', `MeleeAttackPower` = '278.0', `RangedAttackPower` = '35.0', `Armor` = '5291.0' WHERE `entry` = '17814';
-- Lordaeron Watchman (1) (20538)
UPDATE `creature_template` SET `HealthMultiplier` = '3.915', `PowerMultiplier` = '0', `DamageMultiplier` = '8.0', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '26469', `MaxLevelHealth` = '26469', `MinLevelMana` = '0', `MaxLevelMana` = '0', `MinMeleeDmg` = '1933', `MaxMeleeDmg` = '2729', `MinRangedDmg` = '1642', `MaxRangedDmg` = '2438', `MeleeAttackPower` = '298.0', `RangedAttackPower` = '43.0', `Armor` = '6492.0' WHERE `entry` = '20538';


-- Pit Announcer 18673 / 20542 - NO WORK REQUIRED
-- Pit Announcer (18673)
UPDATE `creature_template` SET `HealthMultiplier` = '2.9', `PowerMultiplier` = '0', `DamageMultiplier` = '1.5', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '17151', `MaxLevelHealth` = '17151', `MinLevelMana` = '0', `MaxLevelMana` = '0', `MinMeleeDmg` = '301', `MaxMeleeDmg` = '421', `MinRangedDmg` = '249', `MaxRangedDmg` = '369', `MeleeAttackPower` = '278.0', `RangedAttackPower` = '35.0', `Armor` = '5291.0' WHERE `entry` = '18673';
-- Pit Announcer (1) (20542)
UPDATE `creature_template` SET `HealthMultiplier` = '3.915', `PowerMultiplier` = '0', `DamageMultiplier` = '5.0', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '26469', `MaxLevelHealth` = '26469', `MinLevelMana` = '0', `MaxLevelMana` = '0', `MinMeleeDmg` = '1208', `MaxMeleeDmg` = '1706', `MinRangedDmg` = '1026', `MaxRangedDmg` = '1524', `MeleeAttackPower` = '298.0', `RangedAttackPower` = '43.0', `Armor` = '6492.0' WHERE `entry` = '20542';


-- Pit Spectator 17846 / 20543
UPDATE creature_template SET LootId=17846, PickpocketLootId=17846 WHERE entry IN (17846,20543);
-- Pit Spectator (17846)
UPDATE `creature_template` SET `HealthMultiplier` = '2.9', `PowerMultiplier` = '0', `DamageMultiplier` = '1.5', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '17151', `MaxLevelHealth` = '17151', `MinLevelMana` = '0', `MaxLevelMana` = '0', `MinMeleeDmg` = '301', `MaxMeleeDmg` = '421', `MinRangedDmg` = '249', `MaxRangedDmg` = '369', `MeleeAttackPower` = '278.0', `RangedAttackPower` = '35.0', `Armor` = '5291.0' WHERE `entry` = '17846';
-- Pit Spectator (1) (20543)
UPDATE `creature_template` SET `HealthMultiplier` = '3.915', `PowerMultiplier` = '0', `DamageMultiplier` = '5.0', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '26469', `MaxLevelHealth` = '26469', `MinLevelMana` = '0', `MaxLevelMana` = '0', `MinMeleeDmg` = '1208', `MaxMeleeDmg` = '1706', `MinRangedDmg` = '1026', `MaxRangedDmg` = '1524', `MeleeAttackPower` = '298.0', `RangedAttackPower` = '43.0', `Armor` = '6492.0' WHERE `entry` = '20543';


-- Tarren Mill Guardsman 18092 / 20545
UPDATE creature_template SET LootId=18092, PickpocketLootId=18092 WHERE entry IN (18092,20545);
-- Tarren Mill Guardsman (18092)
UPDATE `creature_template` SET `HealthMultiplier` = '2.9', `PowerMultiplier` = '0', `DamageMultiplier` = '1.2', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '18345', `MaxLevelHealth` = '18972', `MinLevelMana` = '0', `MaxLevelMana` = '0', `MinMeleeDmg` = '264', `MaxMeleeDmg` = '390', `MinRangedDmg` = '222', `MaxRangedDmg` = '347', `MeleeAttackPower` = '292.0', `RangedAttackPower` = '41.0', `Armor` = '6192.0' WHERE `entry` = '18092';
-- Tarren Mill Guardsman (1) (20545)
UPDATE `creature_template` SET `HealthMultiplier` = '3.915', `PowerMultiplier` = '0', `DamageMultiplier` = '8.0', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '28114', `MaxLevelHealth` = '28893', `MinLevelMana` = '0', `MaxLevelMana` = '0', `MinMeleeDmg` = '2054', `MaxMeleeDmg` = '2953', `MinRangedDmg` = '1757', `MaxRangedDmg` = '2654', `MeleeAttackPower` = '314.0', `RangedAttackPower` = '53.0', `Armor` = '7387.0' WHERE `entry` = '20545';


-- Tarren Mill Lookout 18094 / 20546
UPDATE creature_template SET LootId=18094, PickpocketLootId=18094 WHERE entry IN (18094,20546);
-- Tarren Mill Lookout (18094)
UPDATE `creature_template` SET `HealthMultiplier` = '2.9', `PowerMultiplier` = '1.0', `DamageMultiplier` = '1.5', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '14674', `MaxLevelHealth` = '15176', `MinLevelMana` = '2933', `MaxLevelMana` = '2991', `MinMeleeDmg` = '307', `MaxMeleeDmg` = '452', `MinRangedDmg` = '255', `MaxRangedDmg` = '399', `MeleeAttackPower` = '276.0', `RangedAttackPower` = '31.0', `Armor` = '4995.0' WHERE `entry` = '18094';
-- Tarren Mill Lookout (1) (20546)
UPDATE `creature_template` SET `HealthMultiplier` = '3.915', `PowerMultiplier` = '1.0', `DamageMultiplier` = '10.0', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '22488', `MaxLevelHealth` = '23110', `MinLevelMana` = '3231', `MaxLevelMana` = '3309', `MinMeleeDmg` = '2382', `MaxMeleeDmg` = '3419', `MinRangedDmg` = '2021', `MaxRangedDmg` = '3053', `MeleeAttackPower` = '296.0', `RangedAttackPower` = '40.0', `Armor` = '5954.0' WHERE `entry` = '20546';


-- Tarren Mill Protector 18093 / 20547
UPDATE creature_template SET LootId=18093, PickpocketLootId=18093 WHERE entry IN (18093,20547);
-- Tarren Mill Protector (18093)
UPDATE `creature_template` SET `HealthMultiplier` = '2.9', `PowerMultiplier` = '1.0', `DamageMultiplier` = '1.5', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '14674', `MaxLevelHealth` = '15176', `MinLevelMana` = '2933', `MaxLevelMana` = '2991', `MinMeleeDmg` = '460', `MaxMeleeDmg` = '678', `MinRangedDmg` = '255', `MaxRangedDmg` = '399', `MeleeAttackPower` = '276.0', `RangedAttackPower` = '31.0', `Armor` = '4995.0' WHERE `entry` = '18093';
-- Tarren Mill Protector (1) (20547)
UPDATE `creature_template` SET `HealthMultiplier` = '3.915', `PowerMultiplier` = '5.0', `DamageMultiplier` = '6.5', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '22488', `MaxLevelHealth` = '23110', `MinLevelMana` = '16155', `MaxLevelMana` = '16545', `MinMeleeDmg` = '2323', `MaxMeleeDmg` = '3333', `MinRangedDmg` = '1314', `MaxRangedDmg` = '1984', `MeleeAttackPower` = '296.0', `RangedAttackPower` = '40.0', `Armor` = '5954.0' WHERE `entry` = '20547';



-- =================================
-- Caverns of Time: The Black Morass
-- =================================
-- Blackfang Tarantula 18983 / 22162
UPDATE creature_template SET FactionAlliance=16, FactionHorde=16 WHERE entry IN (18983,22162);
UPDATE creature_template SET LootId=18983 WHERE entry IN (18983,22162);
-- Blackfang Tarantula (18983)
UPDATE `creature_template` SET `HealthMultiplier` = '1.5', `PowerMultiplier` = '0', `DamageMultiplier` = '1.5', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '9489', `MaxLevelHealth` = '9813', `MinLevelMana` = '0', `MaxLevelMana` = '0', `MinMeleeDmg` = '331', `MaxMeleeDmg` = '488', `MinRangedDmg` = '277', `MaxRangedDmg` = '434', `MeleeAttackPower` = '292.0', `RangedAttackPower` = '41.0', `Armor` = '6192.0' WHERE `entry` = '18983';
-- Blackfang Tarantula (1) (22162)
UPDATE `creature_template` SET `HealthMultiplier` = '1.5', `PowerMultiplier` = '0', `DamageMultiplier` = '2.0', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '9489', `MaxLevelHealth` = '9813', `MinLevelMana` = '0', `MaxLevelMana` = '0', `MinMeleeDmg` = '441', `MaxMeleeDmg` = '650', `MinRangedDmg` = '370', `MaxRangedDmg` = '579', `MeleeAttackPower` = '292.0', `RangedAttackPower` = '41.0', `Armor` = '6192.0' WHERE `entry` = '22162';


-- Darkwater Crocolisk 20075 / 22163
UPDATE creature_template SET MeleeBaseAttackTime=1400, RangedBaseAttackTime=1900 WHERE entry IN (20075,22163);
UPDATE creature_template SET LootId=18982, SkinningLootId=70065 WHERE entry IN (20075,22163);
-- Darkwater Crocolisk (20075)
UPDATE `creature_template` SET `HealthMultiplier` = '1.5', `PowerMultiplier` = '0', `DamageMultiplier` = '2.14', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '9489', `MaxLevelHealth` = '9813', `MinLevelMana` = '0', `MaxLevelMana` = '0', `MinMeleeDmg` = '330', `MaxMeleeDmg` = '487', `MinRangedDmg` = '351', `MaxRangedDmg` = '550', `MeleeAttackPower` = '292.0', `RangedAttackPower` = '41.0', `Armor` = '6192.0' WHERE `entry` = '20075';
-- Darkwater Crocolisk (1) (22163)
UPDATE `creature_template` SET `MinLevel` = '67', `HealthMultiplier` = '1.5', `PowerMultiplier` = '0', `DamageMultiplier` = '5.0', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '9489', `MaxLevelHealth` = '9813', `MinLevelMana` = '0', `MaxLevelMana` = '0', `MinMeleeDmg` = '771', `MaxMeleeDmg` = '1138', `MinRangedDmg` = '878', `MaxRangedDmg` = '1374', `MeleeAttackPower` = '292.0', `RangedAttackPower` = '41.0', `Armor` = '6192.0' WHERE `entry` = '22163';


-- Infinite Assassin 17835 / 20740
UPDATE creature_template SET MeleeBaseAttackTime=2000, RangedBaseAttackTime=2000 WHERE entry IN (17835,20740);
-- Infinite Assassin (17835)
UPDATE `creature_template` SET `HealthMultiplier` = '0.8', `PowerMultiplier` = '0', `DamageMultiplier` = '2.3', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '5589', `MaxLevelHealth` = '5589', `MinLevelMana` = '0', `MaxLevelMana` = '0', `MinMeleeDmg` = '581', `MaxMeleeDmg` = '821', `MinRangedDmg` = '495', `MaxRangedDmg` = '736', `MeleeAttackPower` = '304.0', `RangedAttackPower` = '44.0', `Armor` = '6792.0' WHERE `entry` = '17835';
-- Infinite Assassin (1) (20740)
UPDATE `creature_template` SET `HealthMultiplier` = '1.0', `PowerMultiplier` = '0', `DamageMultiplier` = '7.0', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '6986', `MaxLevelHealth` = '6986', `MinLevelMana` = '0', `MaxLevelMana` = '0', `MinMeleeDmg` = '1767', `MaxMeleeDmg` = '2499', `MinRangedDmg` = '1507', `MaxRangedDmg` = '2239', `MeleeAttackPower` = '304.0', `RangedAttackPower` = '44.0', `Armor` = '6792.0' WHERE `entry` = '20740';


-- Infinite Chrono-Lord 21697 / 21712
UPDATE creature_template SET UnitFlags=1 WHERE entry IN (21697,21712);
-- Infinite Chrono-Lord (21697)
UPDATE `creature_template` SET `HealthMultiplier` = '15.0', `PowerMultiplier` = '10.0', `DamageMultiplier` = '6.013', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '88545', `MaxLevelHealth` = '88545', `MinLevelMana` = '33090', `MaxLevelMana` = '33090', `MinMeleeDmg` = '1455', `MaxMeleeDmg` = '2056', `MinRangedDmg` = '1233', `MaxRangedDmg` = '1832', `MeleeAttackPower` = '296.0', `RangedAttackPower` = '40.0', `Armor` = '5954.0' WHERE `entry` = '21697';
-- Infinite Chrono-Lord (1) (21712)
UPDATE `creature_template` SET `HealthMultiplier` = '20.0', `PowerMultiplier` = '10.0', `DamageMultiplier` = '15.0', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '118060', `MaxLevelHealth` = '118060', `MinLevelMana` = '33090', `MaxLevelMana` = '33090', `MinMeleeDmg` = '3630', `MaxMeleeDmg` = '5128', `MinRangedDmg` = '3081', `MaxRangedDmg` = '4579', `MeleeAttackPower` = '296.0', `RangedAttackPower` = '40.0', `Armor` = '5954.0' WHERE `entry` = '21712';


-- Infinite Chronomancer 17892 / 20741
UPDATE creature_template SET MeleeBaseAttackTime=2000, RangedBaseAttackTime=2000 WHERE entry IN (17892,20741);
-- Infinite Chronomancer (17892)
UPDATE `creature_template` SET `HealthMultiplier` = '0.8', `PowerMultiplier` = '3.0', `DamageMultiplier` = '2.5', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '4471', `MaxLevelHealth` = '4471', `MinLevelMana` = '9465', `MaxLevelMana` = '9465', `MinMeleeDmg` = '586', `MaxMeleeDmg` = '828', `MinRangedDmg` = '495', `MaxRangedDmg` = '737', `MeleeAttackPower` = '286.0', `RangedAttackPower` = '33.0', `Armor` = '5474.0' WHERE `entry` = '17892';
-- Infinite Chronomancer (1) (20741)
UPDATE `creature_template` SET `HealthMultiplier` = '1.0', `PowerMultiplier` = '3.0', `DamageMultiplier` = '8.0', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '5589', `MaxLevelHealth` = '5589', `MinLevelMana` = '9465', `MaxLevelMana` = '9465', `MinMeleeDmg` = '1875', `MaxMeleeDmg` = '2649', `MinRangedDmg` = '1585', `MaxRangedDmg` = '2359', `MeleeAttackPower` = '286.0', `RangedAttackPower` = '33.0', `Armor` = '5474.0' WHERE `entry` = '20741';


-- Infinite Executioner 18994 / 20742
UPDATE creature_template SET MeleeBaseAttackTime=1400, RangedBaseAttackTime=1900 WHERE entry IN (18994,20742);
-- Infinite Executioner (18994)
UPDATE `creature_template` SET `HealthMultiplier` = '1.25', `PowerMultiplier` = '3.0', `DamageMultiplier` = '2.5', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '6986', `MaxLevelHealth` = '6986', `MinLevelMana` = '9465', `MaxLevelMana` = '9465', `MinMeleeDmg` = '410', `MaxMeleeDmg` = '579', `MinRangedDmg` = '471', `MaxRangedDmg` = '700', `MeleeAttackPower` = '286.0', `RangedAttackPower` = '33.0', `Armor` = '5474.0' WHERE `entry` = '18994';
-- Infinite Executioner (1) (20742)
UPDATE `creature_template` SET `HealthMultiplier` = '2.5', `PowerMultiplier` = '3.0', `DamageMultiplier` = '8.0', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '13973', `MaxLevelHealth` = '13973', `MinLevelMana` = '9465', `MaxLevelMana` = '9465', `MinMeleeDmg` = '1312', `MaxMeleeDmg` = '1854', `MinRangedDmg` = '1506', `MaxRangedDmg` = '2241', `MeleeAttackPower` = '286.0', `RangedAttackPower` = '33.0', `Armor` = '5474.0' WHERE `entry` = '20742';


-- Infinite Timereaver 21698 / 22167
UPDATE creature_template SET UnitFlags=1 WHERE entry IN (21698,22167);
-- Infinite Timereaver (21698)
UPDATE `creature_template` SET `HealthMultiplier` = '15.0', `PowerMultiplier` = '0', `DamageMultiplier` = '10.516', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '110700', `MaxLevelHealth` = '110700', `MinLevelMana` = '0', `MaxLevelMana` = '0', `MinMeleeDmg` = '2745', `MaxMeleeDmg` = '3881', `MinRangedDmg` = '2349', `MaxRangedDmg` = '3484', `MeleeAttackPower` = '314.0', `RangedAttackPower` = '53.0', `Armor` = '7387.0' WHERE `entry` = '21698';
-- Infinite Timereaver (1) (22167)
UPDATE `creature_template` SET `HealthMultiplier` = '20.0', `PowerMultiplier` = '0', `DamageMultiplier` = '26.0', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '147600', `MaxLevelHealth` = '147600', `MinLevelMana` = '0', `MaxLevelMana` = '0', `MinMeleeDmg` = '6786', `MaxMeleeDmg` = '9596', `MinRangedDmg` = '5817', `MaxRangedDmg` = '8626', `MeleeAttackPower` = '314.0', `RangedAttackPower` = '53.0', `Armor` = '7387.0' WHERE `entry` = '22167';


-- Infinite Vanquisher 18995 / 20743
UPDATE creature_template SET MeleeBaseAttackTime=1400, RangedBaseAttackTime=1900 WHERE entry IN (18995,20743);
-- Infinite Vanquisher (18995)
UPDATE `creature_template` SET `HealthMultiplier` = '1.25', `PowerMultiplier` = '3.0', `DamageMultiplier` = '2.0', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '6986', `MaxLevelHealth` = '6986', `MinLevelMana` = '9465', `MaxLevelMana` = '9465', `MinMeleeDmg` = '328', `MaxMeleeDmg` = '463', `MinRangedDmg` = '377', `MaxRangedDmg` = '560', `MeleeAttackPower` = '286.0', `RangedAttackPower` = '33.0', `Armor` = '5474.0' WHERE `entry` = '18995';
-- Infinite Vanquisher (1) (20743)
UPDATE `creature_template` SET `HealthMultiplier` = '2.0', `PowerMultiplier` = '3.0', `DamageMultiplier` = '5.0', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '11178', `MaxLevelHealth` = '11178', `MinLevelMana` = '9465', `MaxLevelMana` = '9465', `MinMeleeDmg` = '820', `MaxMeleeDmg` = '1159', `MinRangedDmg` = '941', `MaxRangedDmg` = '1401', `MeleeAttackPower` = '286.0', `RangedAttackPower` = '33.0', `Armor` = '5474.0' WHERE `entry` = '20743';


-- Infinite Whelp 21818 / 22169
UPDATE creature_template SET MeleeBaseAttackTime=2000, RangedBaseAttackTime=2000 WHERE entry IN (21818,22169);
-- Infinite Whelp (21818)
UPDATE `creature_template` SET `HealthMultiplier` = '0.35', `PowerMultiplier` = '0', `DamageMultiplier` = '0.56', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '2445', `MaxLevelHealth` = '2445', `MinLevelMana` = '0', `MaxLevelMana` = '0', `MinMeleeDmg` = '141', `MaxMeleeDmg` = '200', `MinRangedDmg` = '121', `MaxRangedDmg` = '179', `MeleeAttackPower` = '304.0', `RangedAttackPower` = '44.0', `Armor` = '6792.0' WHERE `entry` = '21818';
-- Infinite Whelp (1) (22169)
UPDATE `creature_template` SET `HealthMultiplier` = '0.45', `PowerMultiplier` = '0', `DamageMultiplier` = '2.0', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '3144', `MaxLevelHealth` = '3144', `MinLevelMana` = '0', `MaxLevelMana` = '0', `MinMeleeDmg` = '505', `MaxMeleeDmg` = '714', `MinRangedDmg` = '431', `MaxRangedDmg` = '640', `MeleeAttackPower` = '304.0', `RangedAttackPower` = '44.0', `Armor` = '6792.0' WHERE `entry` = '22169';


-- Rift Keeper 21104 / 22170
UPDATE creature_template SET MeleeBaseAttackTime=2000, RangedBaseAttackTime=2000 WHERE entry IN (21104,22170);
-- Rift Keeper (21104)
UPDATE `creature_template` SET `HealthMultiplier` = '9.0', `PowerMultiplier` = '10.0', `DamageMultiplier` = '4.0', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '51696', `MaxLevelHealth` = '51696', `MinLevelMana` = '32310', `MaxLevelMana` = '32310', `MinMeleeDmg` = '929', `MaxMeleeDmg` = '1313', `MinRangedDmg` = '1091', `MaxRangedDmg` = '1623', `MeleeAttackPower` = '290.0', `RangedAttackPower` = '37.0', `Armor` = '5714.0' WHERE `entry` = '21104';
-- Rift Keeper (1) (22170)
UPDATE `creature_template` SET `HealthMultiplier` = '12.0', `PowerMultiplier` = '10.0', `DamageMultiplier` = '10.0', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '68928', `MaxLevelHealth` = '68928', `MinLevelMana` = '32310', `MaxLevelMana` = '32310', `MinMeleeDmg` = '3335', `MaxMeleeDmg` = '4712', `MinRangedDmg` = '2324', `MaxRangedDmg` = '3456', `MeleeAttackPower` = '290.0', `RangedAttackPower` = '37.0', `Armor` = '5714.0' WHERE `entry` = '22170';


-- Rift Lord 17839 / 20744
UPDATE creature_template SET MeleeBaseAttackTime=2000, RangedBaseAttackTime=2000 WHERE entry IN (17839,20744);
-- Rift Lord (17839)
UPDATE `creature_template` SET `HealthMultiplier` = '9.0', `PowerMultiplier` = '0', `DamageMultiplier` = '4.0', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '64629', `MaxLevelHealth` = '64629', `MinLevelMana` = '0', `MaxLevelMana` = '0', `MinMeleeDmg` = '1001', `MaxMeleeDmg` = '1415', `MinRangedDmg` = '1186', `MaxRangedDmg` = '1760', `MeleeAttackPower` = '308.0', `RangedAttackPower` = '48.0', `Armor` = '7089.0' WHERE `entry` = '17839';
-- Rift Lord (1) (20744)
UPDATE `creature_template` SET `HealthMultiplier` = '12.0', `PowerMultiplier` = '0', `DamageMultiplier` = '10.0', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '86172', `MaxLevelHealth` = '86172', `MinLevelMana` = '0', `MaxLevelMana` = '0', `MinMeleeDmg` = '3594', `MaxMeleeDmg` = '5083', `MinRangedDmg` = '3952', `MaxRangedDmg` = '5867', `MeleeAttackPower` = '308.0', `RangedAttackPower` = '48.0', `Armor` = '7089.0' WHERE `entry` = '20744';


-- Sable Jaguar 18982 / 22173
UPDATE creature_template SET FactionAlliance=16, FactionHorde=16 WHERE entry IN (18982,22173);
UPDATE creature_template SET MeleeBaseAttackTime=1400, RangedBaseAttackTime=1900 WHERE entry IN (18982,22173);
UPDATE creature_template SET LootId=18982, SkinningLootId=70065 WHERE entry IN (18982,22173);
-- Sable Jaguar (18982)
UPDATE `creature_template` SET `HealthMultiplier` = '1.5', `PowerMultiplier` = '0', `DamageMultiplier` = '2.0', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '9489', `MaxLevelHealth` = '9813', `MinLevelMana` = '0', `MaxLevelMana` = '0', `MinMeleeDmg` = '309', `MaxMeleeDmg` = '455', `MinRangedDmg` = '351', `MaxRangedDmg` = '550', `MeleeAttackPower` = '292.0', `RangedAttackPower` = '41.0', `Armor` = '6192.0' WHERE `entry` = '18982';
-- Sable Jaguar (1) (22173)
UPDATE `creature_template` SET `HealthMultiplier` = '1.5', `PowerMultiplier` = '0', `DamageMultiplier` = '3.0', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '9489', `MaxLevelHealth` = '9813', `MinLevelMana` = '0', `MaxLevelMana` = '0', `MinMeleeDmg` = '463', `MaxMeleeDmg` = '683', `MinRangedDmg` = '527', `MaxRangedDmg` = '825', `MeleeAttackPower` = '292.0', `RangedAttackPower` = '41.0', `Armor` = '6192.0' WHERE `entry` = '22173';



-- ======================
-- Auchindoun: Mana-Tombs
-- ======================
-- Arcane Fiend 18429 / 20252
-- Arcane Fiend (18429)
UPDATE `creature_template` SET `HealthMultiplier` = '0.35', `PowerMultiplier` = '5.0', `DamageMultiplier` = '2.0', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '1600', `MaxLevelHealth` = '1600', `MinLevelMana` = '13525', `MaxLevelMana` = '13525', `MinMeleeDmg` = '318', `MaxMeleeDmg` = '445', `MinRangedDmg` = '260', `MaxRangedDmg` = '387', `MeleeAttackPower` = '256.0', `RangedAttackPower` = '28.0', `Armor` = '4036.0' WHERE `entry` = '18429';
-- Arcane Fiend (1) (20252)
UPDATE `creature_template` SET `HealthMultiplier` = '0.4725', `PowerMultiplier` = '5.0', `DamageMultiplier` = '5.0', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '2641', `MaxLevelHealth` = '2714', `MinLevelMana` = '15775', `MaxLevelMana` = '16155', `MinMeleeDmg` = '1172', `MaxMeleeDmg` = '1683', `MinRangedDmg` = '991', `MaxRangedDmg` = '1502', `MeleeAttackPower` = '290.0', `RangedAttackPower` = '37.0', `Armor` = '5714.0' WHERE `entry` = '20252';


-- Ethereal Apprentice 18430 / 20253
-- Ethereal Apprentice (18430)
UPDATE `creature_template` SET `HealthMultiplier` = '1.5', `PowerMultiplier` = '5.0', `DamageMultiplier` = '3.0', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '7097', `MaxLevelHealth` = '7097', `MinLevelMana` = '13950', `MaxLevelMana` = '13950', `MinMeleeDmg` = '558', `MaxMeleeDmg` = '781', `MinRangedDmg` = '458', `MaxRangedDmg` = '681', `MeleeAttackPower` = '262.0', `RangedAttackPower` = '29.0', `Armor` = '4275.0' WHERE `entry` = '18430';
-- Ethereal Apprentice (1) (20253)
UPDATE `creature_template` SET `HealthMultiplier` = '1.5', `PowerMultiplier` = '5.0', `DamageMultiplier` = '3.0', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '8616', `MaxLevelHealth` = '8616', `MinLevelMana` = '16155', `MaxLevelMana` = '16155', `MinMeleeDmg` = '715', `MaxMeleeDmg` = '1010', `MinRangedDmg` = '606', `MaxRangedDmg` = '901', `MeleeAttackPower` = '290.0', `RangedAttackPower` = '37.0', `Armor` = '5714.0' WHERE `entry` = '20253';


-- Ethereal Beacon 18431 / 20254
-- Ethereal Beacon (18431)
UPDATE `creature_template` SET `HealthMultiplier` = '0.75', `PowerMultiplier` = '1.0', `DamageMultiplier` = '1.0', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '3548', `MaxLevelHealth` = '3548', `MinLevelMana` = '2790', `MaxLevelMana` = '2790', `MinMeleeDmg` = '186', `MaxMeleeDmg` = '260', `MinRangedDmg` = '153', `MaxRangedDmg` = '227', `MeleeAttackPower` = '262.0', `RangedAttackPower` = '29.0', `Armor` = '4275.0' WHERE `entry` = '18431';
-- Ethereal Beacon (1) (20254)
UPDATE `creature_template` SET `HealthMultiplier` = '1.25', `PowerMultiplier` = '1.0', `DamageMultiplier` = '1.0', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '6986', `MaxLevelHealth` = '6986', `MinLevelMana` = '3155', `MaxLevelMana` = '3155', `MinMeleeDmg` = '234', `MaxMeleeDmg` = '331', `MinRangedDmg` = '198', `MaxRangedDmg` = '295', `MeleeAttackPower` = '286.0', `RangedAttackPower` = '33.0', `Armor` = '5474.0' WHERE `entry` = '20254';


-- Ethereal Crypt Raider 18311 / 20255
UPDATE creature_template SET UnitFlags=64 WHERE entry IN (18311,20255);
UPDATE creature_template SET LootId=18311, PickpocketLootId=18311 WHERE entry IN (18311,20255);
-- Ethereal Crypt Raider (18311)
UPDATE `creature_template` SET `HealthMultiplier` = '2.9', `PowerMultiplier` = '0', `DamageMultiplier` = '4.5', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '16574', `MaxLevelHealth` = '16574', `MinLevelMana` = '0', `MaxLevelMana` = '0', `MinMeleeDmg` = '858', `MaxMeleeDmg` = '1200', `MinRangedDmg` = '705', `MaxRangedDmg` = '1046', `MeleeAttackPower` = '272.0', `RangedAttackPower` = '33.0', `Armor` = '4991.0' WHERE `entry` = '18311';
-- Ethereal Crypt Raider (1) (20255)
UPDATE `creature_template` SET `HealthMultiplier` = '3.915', `PowerMultiplier` = '0', `DamageMultiplier` = '10.0', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '27350', `MaxLevelHealth` = '27350', `MinLevelMana` = '0', `MaxLevelMana` = '0', `MinMeleeDmg` = '3029', `MaxMeleeDmg` = '4284', `MinRangedDmg` = '2584', `MaxRangedDmg` = '3838', `MeleeAttackPower` = '304.0', `RangedAttackPower` = '44.0', `Armor` = '6792.0' WHERE `entry` = '20255';


-- Ethereal Darkcaster 18331 / 20256
UPDATE creature_template SET UnitFlags=64 WHERE entry IN (18331,20256);
UPDATE creature_template SET LootId=18331, PickpocketLootId=18331 WHERE entry IN (18331,20256);
-- Ethereal Darkcaster (18331)
UPDATE `creature_template` SET `HealthMultiplier` = '2.9', `PowerMultiplier` = '1.0', `DamageMultiplier` = '8.0', `DamageVariance` = '0.5', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '12006', `MaxLevelHealth` = '12006', `MinLevelMana` = '6443', `MaxLevelMana` = '6443', `MinMeleeDmg` = '685', `MaxMeleeDmg` = '957', `MinRangedDmg` = '574', `MaxRangedDmg` = '846', `MeleeAttackPower` = '124.0', `RangedAttackPower` = '26.0', `Armor` = '2675.0' WHERE `entry` = '18331';
-- Ethereal Darkcaster (1) (20256)
UPDATE `creature_template` SET `HealthMultiplier` = '3.2', `PowerMultiplier` = '1.0', `DamageMultiplier` = '7.816', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '16086', `MaxLevelHealth` = '16086', `MinLevelMana` = '7332', `MaxLevelMana` = '7332', `MinMeleeDmg` = '1598', `MaxMeleeDmg` = '2319', `MinRangedDmg` = '1514', `MaxRangedDmg` = '2253', `MeleeAttackPower` = '137.0', `RangedAttackPower` = '31.0', `Armor` = '3577.0' WHERE `entry` = '20256';


-- Ethereal Priest 18317 / 20257
UPDATE creature_template SET UnitFlags=64 WHERE entry IN (18317,20257);
UPDATE creature_template SET LootId=18317, PickpocketLootId=18317 WHERE entry IN (18317,20257);
-- Ethereal Priest (18317)
UPDATE `creature_template` SET `HealthMultiplier` = '2.9', `PowerMultiplier` = '5.0', `DamageMultiplier` = '8.27', `DamageVariance` = '0.48', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '11606', `MaxLevelHealth` = '12006', `MinLevelMana` = '31495', `MaxLevelMana` = '32215', `MinMeleeDmg` = '587', `MaxMeleeDmg` = '861', `MinRangedDmg` = '541', `MaxRangedDmg` = '844', `MeleeAttackPower` = '124.0', `RangedAttackPower` = '26.0', `Armor` = '2675.0' WHERE `entry` = '18317';
-- Ethereal Priest (1) (20257)
UPDATE `creature_template` SET `MinLevel` = '71', `HealthMultiplier` = '3.915', `PowerMultiplier` = '5.0', `DamageMultiplier` = '4.0', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '19681', `MaxLevelHealth` = '19681', `MinLevelMana` = '36660', `MaxLevelMana` = '36660', `MinMeleeDmg` = '718', `MaxMeleeDmg` = '1042', `MinRangedDmg` = '705', `MaxRangedDmg` = '1038', `MeleeAttackPower` = '137.0', `RangedAttackPower` = '31.0', `Armor` = '3577.0' WHERE `entry` = '20257';


-- Ethereal Scavenger 18309 / 20258
UPDATE creature_template SET UnitFlags=64 WHERE entry IN (18309,20258);
UPDATE creature_template SET LootId=18309, PickpocketLootId=18309 WHERE entry IN (18309,20258);
-- Ethereal Scavenger (18309)
UPDATE `creature_template` SET `HealthMultiplier` = '2.9', `PowerMultiplier` = '0', `DamageMultiplier` = '5.0', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '16574', `MaxLevelHealth` = '16574', `MinLevelMana` = '0', `MaxLevelMana` = '0', `MinMeleeDmg` = '858', `MaxMeleeDmg` = '1200', `MinRangedDmg` = '705', `MaxRangedDmg` = '1046', `MeleeAttackPower` = '272.0', `RangedAttackPower` = '33.0', `Armor` = '4991.0' WHERE `entry` = '18309';
-- Ethereal Scavenger (1) (20258)
UPDATE `creature_template` SET `HealthMultiplier` = '3.2', `PowerMultiplier` = '0', `DamageMultiplier` = '10.0', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '22355', `MaxLevelHealth` = '22355', `MinLevelMana` = '0', `MaxLevelMana` = '0', `MinMeleeDmg` = '3534', `MaxMeleeDmg` = '4998', `MinRangedDmg` = '3015', `MaxRangedDmg` = '4478', `MeleeAttackPower` = '304.0', `RangedAttackPower` = '44.0', `Armor` = '6792.0' WHERE `entry` = '20258';


-- Ethereal Sorcerer 18313 / 20259
UPDATE creature_template SET UnitFlags=64 WHERE entry IN (18313,20259);
UPDATE creature_template SET LootId=18313, PickpocketLootId=18313 WHERE entry IN (18313,20259);
-- Ethereal Sorcerer (18313)
UPDATE `creature_template` SET `HealthMultiplier` = '2.9', `PowerMultiplier` = '5.0', `DamageMultiplier` = '8.27', `DamageVariance` = '0.48', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '11606', `MaxLevelHealth` = '12006', `MinLevelMana` = '31495', `MaxLevelMana` = '32215', `MinMeleeDmg` = '652', `MaxMeleeDmg` = '957', `MinRangedDmg` = '567', `MaxRangedDmg` = '893', `MeleeAttackPower` = '124.0', `RangedAttackPower` = '26.0', `Armor` = '2675.0' WHERE `entry` = '18313';
-- Ethereal Sorcerer (1) (20259)
UPDATE `creature_template` SET `MinLevel` = '71', `HealthMultiplier` = '3.5', `PowerMultiplier` = '10.0', `DamageMultiplier` = '4.0', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '17595', `MaxLevelHealth` = '17595', `MinLevelMana` = '73320', `MaxLevelMana` = '73320', `MinMeleeDmg` = '798', `MaxMeleeDmg` = '1158', `MinRangedDmg` = '705', `MaxRangedDmg` = '1038', `MeleeAttackPower` = '137.0', `RangedAttackPower` = '31.0', `Armor` = '3577.0' WHERE `entry` = '20259';


-- Ethereal Spellbinder 18312 / 20260
UPDATE creature_template SET UnitFlags=64 WHERE entry IN (18312,20260);
UPDATE creature_template SET LootId=18312, PickpocketLootId=18312 WHERE entry IN (18312,20260);
-- Ethereal Spellbinder (18312)
UPDATE `creature_template` SET `HealthMultiplier` = '2.9', `PowerMultiplier` = '5.0', `DamageMultiplier` = '7.73', `DamageVariance` = '0.52', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '12006', `MaxLevelHealth` = '12415', `MinLevelMana` = '32215', `MaxLevelMana` = '32940', `MinMeleeDmg` = '513', `MaxMeleeDmg` = '755', `MinRangedDmg` = '601', `MaxRangedDmg` = '946', `MeleeAttackPower` = '125.0', `RangedAttackPower` = '27.0', `Armor` = '2826.0' WHERE `entry` = '18312';
-- Ethereal Spellbinder (1) (20260)
UPDATE `creature_template` SET `MinLevel` = '72', `HealthMultiplier` = '3.0', `PowerMultiplier` = '10.0', `DamageMultiplier` = '4.766', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '15498', `MaxLevelHealth` = '15498', `MinLevelMana` = '75000', `MaxLevelMana` = '75000', `MinMeleeDmg` = '762', `MaxMeleeDmg` = '1106', `MinRangedDmg` = '881', `MaxRangedDmg` = '1295', `MeleeAttackPower` = '140.0', `RangedAttackPower` = '34.0', `Armor` = '3728.0' WHERE `entry` = '20260';


-- Ethereal Theurgist 18315 / 20261
UPDATE creature_template SET UnitFlags=64 WHERE entry IN (18315,20261);
UPDATE creature_template SET LootId=18315, PickpocketLootId=18315 WHERE entry IN (18315,20261);
-- Ethereal Theurgist (18315)
UPDATE `creature_template` SET `HealthMultiplier` = '2.9', `PowerMultiplier` = '5.0', `DamageMultiplier` = '8.0', `DamageVariance` = '0.5', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '12415', `MaxLevelHealth` = '12415', `MinLevelMana` = '32940', `MaxLevelMana` = '32940', `MinMeleeDmg` = '575', `MaxMeleeDmg` = '805', `MinRangedDmg` = '607', `MaxRangedDmg` = '895', `MeleeAttackPower` = '125.0', `RangedAttackPower` = '27.0', `Armor` = '2826.0' WHERE `entry` = '18315';
-- Ethereal Theurgist (1) (20261)
UPDATE `creature_template` SET `HealthMultiplier` = '3.915', `PowerMultiplier` = '10.0', `DamageMultiplier` = '3.806', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '20225', `MaxLevelHealth` = '20225', `MinLevelMana` = '75000', `MaxLevelMana` = '75000', `MinMeleeDmg` = '649', `MaxMeleeDmg` = '942', `MinRangedDmg` = '752', `MaxRangedDmg` = '1119', `MeleeAttackPower` = '140.0', `RangedAttackPower` = '34.0', `Armor` = '3728.0' WHERE `entry` = '20261';


-- Ethereal Wraith 18394 / 20262
UPDATE creature_template SET Expansion=1 WHERE entry IN (18394,20262);
-- Ethereal Wraith (18394)
UPDATE `creature_template` SET `HealthMultiplier` = '1.5', `PowerMultiplier` = '1.0', `DamageMultiplier` = '4.0', `DamageVariance` = '0.5', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '6633', `MaxLevelHealth` = '6633', `MinLevelMana` = '2620', `MaxLevelMana` = '2620', `MinMeleeDmg` = '368', `MaxMeleeDmg` = '487', `MinRangedDmg` = '490', `MaxRangedDmg` = '728', `MeleeAttackPower` = '252.0', `RangedAttackPower` = '27.0', `Armor` = '3795.0' WHERE `entry` = '18394';
-- Ethereal Wraith (1) (20262)
UPDATE `creature_template` SET `HealthMultiplier` = '2.5318', `PowerMultiplier` = '1.0', `DamageMultiplier` = '4.0', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '14945', `MaxLevelHealth` = '14945', `MinLevelMana` = '3309', `MaxLevelMana` = '3309', `MinMeleeDmg` = '968', `MaxMeleeDmg` = '1367', `MinRangedDmg` = '822', `MaxRangedDmg` = '1221', `MeleeAttackPower` = '296.0', `RangedAttackPower` = '40.0', `Armor` = '5954.0' WHERE `entry` = '20262';


-- Mana Leech 19306 / 20263
UPDATE creature_template SET LootId=19306 WHERE entry IN (19306,20263);
-- Mana Leech (19306)
UPDATE `creature_template` SET `HealthMultiplier` = '1.0', `PowerMultiplier` = '1.0', `DamageMultiplier` = '2.0', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '4572', `MaxLevelHealth` = '4572', `MinLevelMana` = '2705', `MaxLevelMana` = '2705', `MinMeleeDmg` = '354', `MaxMeleeDmg` = '495', `MinRangedDmg` = '289', `MaxRangedDmg` = '430', `MeleeAttackPower` = '256.0', `RangedAttackPower` = '28.0', `Armor` = '4036.0' WHERE `entry` = '19306';
-- Mana Leech (1) (20263)
UPDATE `creature_template` SET `HealthMultiplier` = '1.35', `PowerMultiplier` = '1.0', `DamageMultiplier` = '2.0', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '7545', `MaxLevelHealth` = '7545', `MinLevelMana` = '3155', `MaxLevelMana` = '3155', `MinMeleeDmg` = '469', `MaxMeleeDmg` = '662', `MinRangedDmg` = '396', `MaxRangedDmg` = '590', `MeleeAttackPower` = '286.0', `RangedAttackPower` = '33.0', `Armor` = '5474.0' WHERE `entry` = '20263';


-- Nexus Stalker 18314 / 20264
UPDATE creature_template SET UnitFlags=64 WHERE entry IN (18314,20264);
UPDATE creature_template SET LootId=18314, PickpocketLootId=18314 WHERE entry IN (18314,20264);
-- Nexus Stalker (18314)
UPDATE `creature_template` SET `HealthMultiplier` = '2.9', `PowerMultiplier` = '0', `DamageMultiplier` = '6.0', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '17151', `MaxLevelHealth` = '17736', `MinLevelMana` = '0', `MaxLevelMana` = '0', `MinMeleeDmg` = '842', `MaxMeleeDmg` = '1239', `MinRangedDmg` = '995', `MaxRangedDmg` = '1560', `MeleeAttackPower` = '282.0', `RangedAttackPower` = '37.0', `Armor` = '5591.0' WHERE `entry` = '18314';
-- Nexus Stalker (1) (20264)
UPDATE `creature_template` SET `HealthMultiplier` = '3.91', `PowerMultiplier` = '0', `DamageMultiplier` = '15.0', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '28078', `MaxLevelHealth` = '28856', `MinLevelMana` = '0', `MaxLevelMana` = '0', `MinMeleeDmg` = '2695', `MaxMeleeDmg` = '3875', `MinRangedDmg` = '3294', `MaxRangedDmg` = '4977', `MeleeAttackPower` = '314.0', `RangedAttackPower` = '53.0', `Armor` = '7387.0' WHERE `entry` = '20264';


-- Nexus Terror 19307 / 20265
UPDATE creature_template SET UnitFlags=64 WHERE entry IN (19307,20265);
UPDATE creature_template SET LootId=19307 WHERE entry IN (19307,20265);
-- Nexus Terror (19307)
UPDATE `creature_template` SET `HealthMultiplier` = '5.25', `PowerMultiplier` = '0', `DamageMultiplier` = '5.0', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '30004', `MaxLevelHealth` = '30004', `MinLevelMana` = '0', `MaxLevelMana` = '0', `MinMeleeDmg` = '953', `MaxMeleeDmg` = '1333', `MinRangedDmg` = '783', `MaxRangedDmg` = '1163', `MeleeAttackPower` = '272.0', `RangedAttackPower` = '33.0', `Armor` = '4991.0' WHERE `entry` = '19307';
-- Nexus Terror (1) (20265)
UPDATE `creature_template` SET `HealthMultiplier` = '7.0875', `PowerMultiplier` = '0', `DamageMultiplier` = '15.0', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '49513', `MaxLevelHealth` = '49513', `MinLevelMana` = '0', `MaxLevelMana` = '0', `MinMeleeDmg` = '3787', `MaxMeleeDmg` = '5355', `MinRangedDmg` = '3230', `MaxRangedDmg` = '4798', `MeleeAttackPower` = '304.0', `RangedAttackPower` = '44.0', `Armor` = '6792.0' WHERE `entry` = '20265';



-- ===========================
-- Auchindoun: Auchenai Crypts
-- ===========================
-- Angered Skeleton 18524 / 20298
UPDATE creature_template SET LootId=18524, PickpocketLootId=18524 WHERE entry IN (18524,20298);
-- Angered Skeleton (18524)
UPDATE `creature_template` SET `HealthMultiplier` = '2.75', `PowerMultiplier` = '0', `DamageMultiplier` = '4.0', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '16819', `MaxLevelHealth` = '16819', `MinLevelMana` = '0', `MaxLevelMana` = '0', `MinMeleeDmg` = '735', `MaxMeleeDmg` = '1032', `MinRangedDmg` = '613', `MaxRangedDmg` = '910', `MeleeAttackPower` = '282.0', `RangedAttackPower` = '37.0', `Armor` = '5591.0' WHERE `entry` = '18524';
-- Angered Skeleton (1) (20298)
UPDATE `creature_template` SET `HealthMultiplier` = '3.915', `PowerMultiplier` = '0', `DamageMultiplier` = '10.0', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '28114', `MaxLevelHealth` = '28114', `MinLevelMana` = '0', `MaxLevelMana` = '0', `MinMeleeDmg` = '2567', `MaxMeleeDmg` = '3631', `MinRangedDmg` = '2196', `MaxRangedDmg` = '3259', `MeleeAttackPower` = '308.0', `RangedAttackPower` = '48.0', `Armor` = '7089.0' WHERE `entry` = '20298';


-- Auchenai Monk 18497 / 20299
UPDATE creature_template SET LootId=18497, PickpocketLootId=18497 WHERE entry IN (18497,20299);
-- Auchenai Monk (18497)
UPDATE `creature_template` SET `HealthMultiplier` = '3.1', `PowerMultiplier` = '0', `DamageMultiplier` = '4.0', `DamageVariance` = '1.0', `ArmorMultiplier` = '0.803792', `MinLevelHealth` = '18333', `MaxLevelHealth` = '18960', `MinLevelMana` = '0', `MaxLevelMana` = '0', `MinMeleeDmg` = '641', `MaxMeleeDmg` = '943', `MinRangedDmg` = '663', `MaxRangedDmg` = '1040', `MeleeAttackPower` = '282.0', `RangedAttackPower` = '37.0', `Armor` = '4494.0' WHERE `entry` = '18497';
-- Auchenai Monk (1) (20299)
UPDATE `creature_template` SET `HealthMultiplier` = '4.185', `PowerMultiplier` = '0', `DamageMultiplier` = '10.0', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '29236', `MaxLevelHealth` = '30052', `MinLevelMana` = '0', `MaxLevelMana` = '0', `MinMeleeDmg` = '2020', `MaxMeleeDmg` = '2905', `MinRangedDmg` = '2153', `MaxRangedDmg` = '3259', `MeleeAttackPower` = '308.0', `RangedAttackPower` = '48.0', `Armor` = '7089.0' WHERE `entry` = '20299';


-- Auchenai Necromancer 18702 / 20300
UPDATE creature_template SET LootId=18702, PickpocketLootId=18702 WHERE entry IN (18702,20300);
-- Auchenai Necromancer (18702)
UPDATE `creature_template` SET `HealthMultiplier` = '4.5', `PowerMultiplier` = '3.0', `DamageMultiplier` = '4.22', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '22014', `MaxLevelHealth` = '22770', `MinLevelMana` = '8538', `MaxLevelMana` = '8799', `MinMeleeDmg` = '822', `MaxMeleeDmg` = '1212', `MinRangedDmg` = '677', `MaxRangedDmg` = '1062', `MeleeAttackPower` = '272.0', `RangedAttackPower` = '31.0', `Armor` = '4755.0' WHERE `entry` = '18702';
-- Auchenai Necromancer (1) (20300)
UPDATE `creature_template` SET `HealthMultiplier` = '6.075', `PowerMultiplier` = '5.0', `DamageMultiplier` = '10.5', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '34895', `MaxLevelHealth` = '35861', `MinLevelMana` = '16155', `MaxLevelMana` = '16545', `MinMeleeDmg` = '2501', `MaxMeleeDmg` = '3589', `MinRangedDmg` = '2122', `MaxRangedDmg` = '3205', `MeleeAttackPower` = '296.0', `RangedAttackPower` = '40.0', `Armor` = '5954.0' WHERE `entry` = '20300';


-- Auchenai Soulpriest 18493 / 20301
UPDATE creature_template SET LootId=18493, PickpocketLootId=18493 WHERE entry IN (18493,20301);
-- Auchenai Soulpriest (18493)
UPDATE `creature_template` SET `HealthMultiplier` = '2.9', `PowerMultiplier` = '3.0', `DamageMultiplier` = '4.0', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '13720', `MaxLevelHealth` = '14187', `MinLevelMana` = '8370', `MaxLevelMana` = '8538', `MinMeleeDmg` = '744', `MaxMeleeDmg` = '1093', `MinRangedDmg` = '611', `MaxRangedDmg` = '958', `MeleeAttackPower` = '266.0', `RangedAttackPower` = '29.0', `Armor` = '4515.0' WHERE `entry` = '18493';
-- Auchenai Soulpriest (1) (20301)
UPDATE `creature_template` SET `HealthMultiplier` = '3.915', `PowerMultiplier` = '3.0', `DamageMultiplier` = '10.0', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '21881', `MaxLevelHealth` = '22488', `MinLevelMana` = '9465', `MaxLevelMana` = '9693', `MinMeleeDmg` = '2343', `MaxMeleeDmg` = '3366', `MinRangedDmg` = '1982', `MaxRangedDmg` = '3005', `MeleeAttackPower` = '290.0', `RangedAttackPower` = '37.0', `Armor` = '5714.0' WHERE `entry` = '20301';


-- Auchenai Vindicator 18495 / 20302
UPDATE creature_template SET LootId=18495, PickpocketLootId=18495 WHERE entry IN (18495,20302);
-- Auchenai Vindicator (18495)
UPDATE `creature_template` SET `HealthMultiplier` = '2.9', `PowerMultiplier` = '3.0', `DamageMultiplier` = '4.0', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '13720', `MaxLevelHealth` = '14187', `MinLevelMana` = '8370', `MaxLevelMana` = '8538', `MinMeleeDmg` = '744', `MaxMeleeDmg` = '1093', `MinRangedDmg` = '611', `MaxRangedDmg` = '958', `MeleeAttackPower` = '266.0', `RangedAttackPower` = '29.0', `Armor` = '4515.0' WHERE `entry` = '18495';
-- Auchenai Vindicator (1) (20302)
UPDATE `creature_template` SET `HealthMultiplier` = '3.915', `PowerMultiplier` = '3.0', `DamageMultiplier` = '10.0', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '21881', `MaxLevelHealth` = '22488', `MinLevelMana` = '9465', `MaxLevelMana` = '9693', `MinMeleeDmg` = '2343', `MaxMeleeDmg` = '3366', `MinRangedDmg` = '1982', `MaxRangedDmg` = '3005', `MeleeAttackPower` = '290.0', `RangedAttackPower` = '37.0', `Armor` = '5714.0' WHERE `entry` = '20302';


-- Avatar of the Martyred 18478 / 20303
UPDATE creature_template SET MeleeBaseAttackTime=2000, RangedBaseAttackTime=2000 WHERE entry IN (18478,20303);
-- Avatar of the Martyred (18478)
UPDATE `creature_template` SET `HealthMultiplier` = '4.75', `PowerMultiplier` = '0', `DamageMultiplier` = '4.994', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '30049', `MaxLevelHealth` = '30049', `MinLevelMana` = '0', `MaxLevelMana` = '0', `MinMeleeDmg` = '1101', `MaxMeleeDmg` = '1548', `MinRangedDmg` = '1294', `MaxRangedDmg` = '1921', `MeleeAttackPower` = '288.0', `RangedAttackPower` = '39.0', `Armor` = '5892.0' WHERE `entry` = '18478';
-- Avatar of the Martyred (1) (20303)
UPDATE `creature_template` SET `HealthMultiplier` = '6.4125', `PowerMultiplier` = '0', `DamageMultiplier` = '12.5', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '47324', `MaxLevelHealth` = '47324', `MinLevelMana` = '0', `MaxLevelMana` = '0', `MinMeleeDmg` = '3262', `MaxMeleeDmg` = '4613', `MinRangedDmg` = '2796', `MaxRangedDmg` = '4147', `MeleeAttackPower` = '314.0', `RangedAttackPower` = '53.0', `Armor` = '7387.0' WHERE `entry` = '20303';


-- Phantasmal Possessor 18503 / 20309
UPDATE creature_template SET MeleeBaseAttackTime=1400, RangedBaseAttackTime=1900, LootId=18503 WHERE entry IN (18503,20309);
-- Phantasmal Possessor (18503)
UPDATE `creature_template` SET `HealthMultiplier` = '0.3', `PowerMultiplier` = '3.0', `DamageMultiplier` = '2.5', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '1242', `MaxLevelHealth` = '1284', `MinLevelMana` = '19329', `MaxLevelMana` = '19764', `MinMeleeDmg` = '269', `MaxMeleeDmg` = '410', `MinRangedDmg` = '332', `MaxRangedDmg` = '523', `MeleeAttackPower` = '125.0', `RangedAttackPower` = '27.0', `Armor` = '2826.0' WHERE `entry` = '18503';
-- Phantasmal Possessor (1) (20309)
UPDATE `creature_template` SET `HealthMultiplier` = '0.8', `PowerMultiplier` = '3.0', `DamageMultiplier` = '5.0', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '3912', `MaxLevelHealth` = '4022', `MinLevelMana` = '21588', `MaxLevelMana` = '21996', `MinMeleeDmg` = '686', `MaxMeleeDmg` = '1039', `MinRangedDmg` = '858', `MaxRangedDmg` = '1338', `MeleeAttackPower` = '137.0', `RangedAttackPower` = '31.0', `Armor` = '3577.0' WHERE `entry` = '20309';


-- Phasing Cleric 18557 / 20310
UPDATE creature_template SET ModelId1=17928, ModelId2=17929, ModelId3=17930, ModelId4=17931, UnitFlags=32768 WHERE entry IN (18557,20310);
UPDATE creature_template SET LootId=18557 WHERE entry IN (18557,20310);
-- Phasing Cleric (18557)
UPDATE `creature_template` SET `HealthMultiplier` = '1.0', `PowerMultiplier` = '3.0', `DamageMultiplier` = '2.0', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '4731', `MaxLevelHealth` = '4892', `MinLevelMana` = '8370', `MaxLevelMana` = '8538', `MinMeleeDmg` = '335', `MaxMeleeDmg` = '492', `MinRangedDmg` = '244', `MaxRangedDmg` = '379', `MeleeAttackPower` = '266.0', `RangedAttackPower` = '29.0', `Armor` = '4515.0' WHERE `entry` = '18557';
-- Phasing Cleric (1) (20310)
UPDATE `creature_template` SET `HealthMultiplier` = '1.15', `PowerMultiplier` = '3.0', `DamageMultiplier` = '4.0', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '6427', `MaxLevelHealth` = '6606', `MinLevelMana` = '9465', `MaxLevelMana` = '9693', `MinMeleeDmg` = '937', `MaxMeleeDmg` = '1346', `MinRangedDmg` = '793', `MaxRangedDmg` = '1202', `MeleeAttackPower` = '290.0', `RangedAttackPower` = '37.0', `Armor` = '5714.0' WHERE `entry` = '20310';


-- Phasing Soldier 18556 / 20311
UPDATE creature_template SET ModelId1=17920, ModelId2=17921, ModelId3=17922, ModelId4=17923, UnitFlags=32768 WHERE entry IN (18556,20311);
UPDATE creature_template SET LootId=18556 WHERE entry IN (18556,20311);
-- Phasing Soldier (18556)
UPDATE `creature_template` SET `HealthMultiplier` = '1.0', `PowerMultiplier` = '0', `DamageMultiplier` = '2.0', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '5914', `MaxLevelHealth` = '6116', `MinLevelMana` = '0', `MaxLevelMana` = '0', `MinMeleeDmg` = '361', `MaxMeleeDmg` = '531', `MinRangedDmg` = '298', `MaxRangedDmg` = '468', `MeleeAttackPower` = '282.0', `RangedAttackPower` = '37.0', `Armor` = '5591.0' WHERE `entry` = '18556';
-- Phasing Soldier (1) (20311)
UPDATE `creature_template` SET `HealthMultiplier` = '1.15', `PowerMultiplier` = '0', `DamageMultiplier` = '7.0', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '8034', `MaxLevelHealth` = '8258', `MinLevelMana` = '0', `MaxLevelMana` = '0', `MinMeleeDmg` = '1767', `MaxMeleeDmg` = '2541', `MinRangedDmg` = '1507', `MaxRangedDmg` = '2281', `MeleeAttackPower` = '308.0', `RangedAttackPower` = '48.0', `Armor` = '7089.0' WHERE `entry` = '20311';


-- Phasing Sorcerer 18558 / 20312
UPDATE creature_template SET LootId=18558 WHERE entry IN (18558,20312);
-- Phasing Sorcerer (18558)
UPDATE `creature_template` SET `HealthMultiplier` = '1.0', `PowerMultiplier` = '3.0', `DamageMultiplier` = '2.0', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '4731', `MaxLevelHealth` = '4892', `MinLevelMana` = '8370', `MaxLevelMana` = '8538', `MinMeleeDmg` = '335', `MaxMeleeDmg` = '492', `MinRangedDmg` = '275', `MaxRangedDmg` = '431', `MeleeAttackPower` = '266.0', `RangedAttackPower` = '29.0', `Armor` = '4515.0' WHERE `entry` = '18558';
-- Phasing Sorcerer (1) (20312)
UPDATE `creature_template` SET `HealthMultiplier` = '1.15', `PowerMultiplier` = '3.0', `DamageMultiplier` = '5.0', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '6427', `MaxLevelHealth` = '6606', `MinLevelMana` = '9465', `MaxLevelMana` = '9693', `MinMeleeDmg` = '1172', `MaxMeleeDmg` = '1683', `MinRangedDmg` = '991', `MaxRangedDmg` = '1502', `MeleeAttackPower` = '290.0', `RangedAttackPower` = '37.0', `Armor` = '5714.0' WHERE `entry` = '20312';


-- Phasing Stalker 18559 / 20313
UPDATE creature_template SET ModelId1=17938, ModelId2=17939, ModelId3=17940, ModelId4=17941, FactionAlliance=7, FactionHorde=7, UnitFlags=32768 WHERE entry IN (18559,20313);
UPDATE creature_template SET MeleeBaseAttackTime=1400, RangedBaseAttackTime=1900, LootId=18559 WHERE entry IN (18559,20313);
-- Phasing Stalker (18559)
UPDATE `creature_template` SET `HealthMultiplier` = '1.0', `PowerMultiplier` = '3.0', `DamageMultiplier` = '2.57', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '4731', `MaxLevelHealth` = '4892', `MinLevelMana` = '8370', `MaxLevelMana` = '8538', `MinMeleeDmg` = '335', `MaxMeleeDmg` = '492', `MinRangedDmg` = '377', `MaxRangedDmg` = '592', `MeleeAttackPower` = '266.0', `RangedAttackPower` = '29.0', `Armor` = '4515.0' WHERE `entry` = '18559';
-- Phasing Stalker (1) (20313)
UPDATE `creature_template` SET `HealthMultiplier` = '1.15', `PowerMultiplier` = '3.0', `DamageMultiplier` = '9.0', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '6427', `MaxLevelHealth` = '6606', `MinLevelMana` = '9465', `MaxLevelMana` = '9693', `MinMeleeDmg` = '1476', `MaxMeleeDmg` = '2121', `MinRangedDmg` = '1694', `MaxRangedDmg` = '2569', `MeleeAttackPower` = '290.0', `RangedAttackPower` = '37.0', `Armor` = '5714.0' WHERE `entry` = '20313';


-- Raging Skeleton 18521 / 20315
UPDATE creature_template SET SpeedRun=1.42857, LootId=18521 WHERE entry IN (18521,20315);
-- Raging Skeleton (18521)
UPDATE `creature_template` SET `HealthMultiplier` = '2.75', `PowerMultiplier` = '0', `DamageMultiplier` = '4.0', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '16819', `MaxLevelHealth` = '17397', `MinLevelMana` = '0', `MaxLevelMana` = '0', `MinMeleeDmg` = '735', `MaxMeleeDmg` = '1085', `MinRangedDmg` = '613', `MaxRangedDmg` = '961', `MeleeAttackPower` = '288.0', `RangedAttackPower` = '39.0', `Armor` = '5892.0' WHERE `entry` = '18521';
-- Raging Skeleton (1) (20315)
UPDATE `creature_template` SET `HealthMultiplier` = '3.915', `PowerMultiplier` = '0', `DamageMultiplier` = '10.0', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '28114', `MaxLevelHealth` = '28114', `MinLevelMana` = '0', `MaxLevelMana` = '0', `MinMeleeDmg` = '2567', `MaxMeleeDmg` = '3631', `MinRangedDmg` = '2196', `MaxRangedDmg` = '3259', `MeleeAttackPower` = '308.0', `RangedAttackPower` = '48.0', `Armor` = '7089.0' WHERE `entry` = '20315';


-- Raging Soul 18506 / 20316
-- Raging Soul (18506)
UPDATE `creature_template` SET `HealthMultiplier` = '0.55', `PowerMultiplier` = '1.0', `DamageMultiplier` = '1.0', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '2602', `MaxLevelHealth` = '2691', `MinLevelMana` = '2790', `MaxLevelMana` = '2846', `MinMeleeDmg` = '93', `MaxMeleeDmg` = '137', `MinRangedDmg` = '76', `MaxRangedDmg` = '120', `MeleeAttackPower` = '266.0', `RangedAttackPower` = '29.0', `Armor` = '4515.0' WHERE `entry` = '18506';
-- Raging Soul (1) (20316)
UPDATE `creature_template` SET `HealthMultiplier` = '0.7425', `PowerMultiplier` = '1.0', `DamageMultiplier` = '3.0', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '4150', `MaxLevelHealth` = '4265', `MinLevelMana` = '3155', `MaxLevelMana` = '3231', `MinMeleeDmg` = '703', `MaxMeleeDmg` = '1010', `MinRangedDmg` = '595', `MaxRangedDmg` = '901', `MeleeAttackPower` = '290.0', `RangedAttackPower` = '37.0', `Armor` = '5714.0' WHERE `entry` = '20316';


-- Reanimated Bones 18700 / 20317
-- Reanimated Bones (18700)
UPDATE `creature_template` SET `HealthMultiplier` = '0.54', `PowerMultiplier` = '0', `DamageMultiplier` = '1.0', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '3303', `MaxLevelHealth` = '3416', `MinLevelMana` = '0', `MaxLevelMana` = '0', `MinMeleeDmg` = '231', `MaxMeleeDmg` = '341', `MinRangedDmg` = '193', `MaxRangedDmg` = '302', `MeleeAttackPower` = '288.0', `RangedAttackPower` = '39.0', `Armor` = '5892.0' WHERE `entry` = '18700';
-- Reanimated Bones (1) (20317)
UPDATE `creature_template` SET `HealthMultiplier` = '0.729', `PowerMultiplier` = '0', `DamageMultiplier` = '3.0', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '5235', `MaxLevelHealth` = '5380', `MinLevelMana` = '0', `MaxLevelMana` = '0', `MinMeleeDmg` = '770', `MaxMeleeDmg` = '1107', `MinRangedDmg` = '659', `MaxRangedDmg` = '995', `MeleeAttackPower` = '314.0', `RangedAttackPower` = '53.0', `Armor` = '7387.0' WHERE `entry` = '20317';


-- Stolen Soul 18441 / 20305
UPDATE creature_template SET MeleeBaseAttackTime=1400, RangedBaseAttackTime=1900 WHERE entry IN (18441,20305);
-- Stolen Soul (18441)
UPDATE `creature_template` SET `HealthMultiplier` = '0.8', `PowerMultiplier` = '0', `DamageMultiplier` = '2.0', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '5061', `MaxLevelHealth` = '5234', `MinLevelMana` = '0', `MaxLevelMana` = '0', `MinMeleeDmg` = '309', `MaxMeleeDmg` = '455', `MinRangedDmg` = '351', `MaxRangedDmg` = '550', `MeleeAttackPower` = '292.0', `RangedAttackPower` = '41.0', `Armor` = '6192.0' WHERE `entry` = '18441';
-- Stolen Soul (1) (20305)
UPDATE `creature_template` SET `HealthMultiplier` = '1.051', `PowerMultiplier` = '0', `DamageMultiplier` = '4.0', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '7547', `MaxLevelHealth` = '7756', `MinLevelMana` = '0', `MaxLevelMana` = '0', `MinMeleeDmg` = '719', `MaxMeleeDmg` = '1033', `MinRangedDmg` = '834', `MaxRangedDmg` = '1261', `MeleeAttackPower` = '314.0', `RangedAttackPower` = '53.0', `Armor` = '7387.0' WHERE `entry` = '20305';


-- Unliving Soldier 18498 / 20321
UPDATE creature_template SET MeleeBaseAttackTime=2000, RangedBaseAttackTime=2000, LootId=18498 WHERE entry IN (18498,20321);
-- Unliving Soldier (18498)
UPDATE `creature_template` SET `HealthMultiplier` = '1.35', `PowerMultiplier` = '0', `DamageMultiplier` = '2.5', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '7984', `MaxLevelHealth` = '8832', `MinLevelMana` = '0', `MaxLevelMana` = '0', `MinMeleeDmg` = '501', `MaxMeleeDmg` = '813', `MinRangedDmg` = '414', `MaxRangedDmg` = '723', `MeleeAttackPower` = '292.0', `RangedAttackPower` = '41.0', `Armor` = '6192.0' WHERE `entry` = '18498';
-- Unliving Soldier (1) (20321)
UPDATE `creature_template` SET `HealthMultiplier` = '1.61', `PowerMultiplier` = '0', `DamageMultiplier` = '7.0', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '11247', `MaxLevelHealth` = '11561', `MinLevelMana` = '0', `MaxLevelMana` = '0', `MinMeleeDmg` = '1767', `MaxMeleeDmg` = '2541', `MinRangedDmg` = '1507', `MaxRangedDmg` = '2281', `MeleeAttackPower` = '308.0', `RangedAttackPower` = '48.0', `Armor` = '7089.0' WHERE `entry` = '20321';


-- Unliving Sorcerer 18499 / 20322
UPDATE creature_template SET MeleeBaseAttackTime=2000, RangedBaseAttackTime=2000, LootId=18499 WHERE entry IN (18499,20322);
-- Unliving Sorcerer (18499)
UPDATE `creature_template` SET `HealthMultiplier` = '1.35', `PowerMultiplier` = '3.0', `DamageMultiplier` = '3.0', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '6387', `MaxLevelHealth` = '6604', `MinLevelMana` = '8370', `MaxLevelMana` = '8538', `MinMeleeDmg` = '558', `MaxMeleeDmg` = '820', `MinRangedDmg` = '458', `MaxRangedDmg` = '719', `MeleeAttackPower` = '266.0', `RangedAttackPower` = '29.0', `Armor` = '4515.0' WHERE `entry` = '18499';
-- Unliving Sorcerer (1) (20322)
UPDATE `creature_template` SET `HealthMultiplier` = '1.61', `PowerMultiplier` = '3.0', `DamageMultiplier` = '4.0', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '8998', `MaxLevelHealth` = '9248', `MinLevelMana` = '9465', `MaxLevelMana` = '9693', `MinMeleeDmg` = '937', `MaxMeleeDmg` = '1346', `MinRangedDmg` = '793', `MaxRangedDmg` = '1202', `MeleeAttackPower` = '290.0', `RangedAttackPower` = '37.0', `Armor` = '5714.0' WHERE `entry` = '20322';



-- =========================
-- Auchindoun: Sethekk Halls
-- =========================
-- Avian Darkhawk 19429 / 20686
UPDATE creature_template SET LootId=19429 WHERE entry IN (19429,20686);
-- Avian Darkhawk (19429)
UPDATE `creature_template` SET `HealthMultiplier` = '3.0', `PowerMultiplier` = '0', `DamageMultiplier` = '5.0', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '18978', `MaxLevelHealth` = '18978', `MinLevelMana` = '0', `MaxLevelMana` = '0', `MinMeleeDmg` = '1014', `MaxMeleeDmg` = '1426', `MinRangedDmg` = '850', `MaxRangedDmg` = '1262', `MeleeAttackPower` = '288.0', `RangedAttackPower` = '39.0', `Armor` = '5892.0' WHERE `entry` = '19429';
-- Avian Darkhawk (1) (20686)
UPDATE `creature_template` SET `HealthMultiplier` = '4.05', `PowerMultiplier` = '0', `DamageMultiplier` = '12.5', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '28293', `MaxLevelHealth` = '28293', `MinLevelMana` = '0', `MaxLevelMana` = '0', `MinMeleeDmg` = '3156', `MaxMeleeDmg` = '4463', `MinRangedDmg` = '2692', `MaxRangedDmg` = '3998', `MeleeAttackPower` = '304.0', `RangedAttackPower` = '44.0', `Armor` = '6792.0' WHERE `entry` = '20686';


-- Avian Ripper 21891 / 21989
UPDATE creature_template SET LootId=21891 WHERE entry IN (21891,21989);
-- Avian Ripper (21891)
UPDATE `creature_template` SET `HealthMultiplier` = '0.65', `PowerMultiplier` = '0', `DamageMultiplier` = '2.0', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '4112', `MaxLevelHealth` = '4112', `MinLevelMana` = '0', `MaxLevelMana` = '0', `MinMeleeDmg` = '330', `MaxMeleeDmg` = '465', `MinRangedDmg` = '277', `MaxRangedDmg` = '412', `MeleeAttackPower` = '288.0', `RangedAttackPower` = '39.0', `Armor` = '5892.0' WHERE `entry` = '21891';
-- Avian Ripper (1) (21989)
UPDATE `creature_template` SET `HealthMultiplier` = '0.8775', `PowerMultiplier` = '0', `DamageMultiplier` = '5.0', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '5933', `MaxLevelHealth` = '6130', `MinLevelMana` = '0', `MaxLevelMana` = '0', `MinMeleeDmg` = '1208', `MaxMeleeDmg` = '1785', `MinRangedDmg` = '1026', `MaxRangedDmg` = '1599', `MeleeAttackPower` = '304.0', `RangedAttackPower` = '44.0', `Armor` = '6792.0' WHERE `entry` = '21989';


-- Avian Warhawk 21904 / 21990
UPDATE creature_template SET UnitFlags=64 WHERE entry IN (21904,21990);
UPDATE creature_template SET LootId=21904 WHERE entry IN (21904,21990);
-- Avian Warhawk (21904)
UPDATE `creature_template` SET `HealthMultiplier` = '3.0', `PowerMultiplier` = '0', `DamageMultiplier` = '5.0', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '19626', `MaxLevelHealth` = '19626', `MinLevelMana` = '0', `MaxLevelMana` = '0', `MinMeleeDmg` = '1061', `MaxMeleeDmg` = '1496', `MinRangedDmg` = '896', `MaxRangedDmg` = '1331', `MeleeAttackPower` = '292.0', `RangedAttackPower` = '41.0', `Armor` = '6192.0' WHERE `entry` = '21904';
-- Avian Warhawk (1) (21990)
UPDATE `creature_template` SET `HealthMultiplier` = '4.05', `PowerMultiplier` = '0', `DamageMultiplier` = '12.5', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '28293', `MaxLevelHealth` = '29083', `MinLevelMana` = '0', `MaxLevelMana` = '0', `MinMeleeDmg` = '3156', `MaxMeleeDmg` = '4538', `MinRangedDmg` = '2692', `MaxRangedDmg` = '4074', `MeleeAttackPower` = '308.0', `RangedAttackPower` = '48.0', `Armor` = '7089.0' WHERE `entry` = '21990';


-- Cobalt Serpent 19428 / 20688
UPDATE creature_template SET UnitFlags=64 WHERE entry IN (19428,20688);
UPDATE creature_template SET LootId=19428, SkinningLootId=70063 WHERE entry IN (19428,20688);
-- Cobalt Serpent (19428)
UPDATE `creature_template` SET `HealthMultiplier` = '6.0', `PowerMultiplier` = '5.0', `DamageMultiplier` = '6.0', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '31398', `MaxLevelHealth` = '31398', `MinLevelMana` = '14955', `MaxLevelMana` = '14955', `MinMeleeDmg` = '1177', `MaxMeleeDmg` = '1657', `MinRangedDmg` = '984', `MaxRangedDmg` = '1464', `MeleeAttackPower` = '276.0', `RangedAttackPower` = '31.0', `Armor` = '4995.0' WHERE `entry` = '19428';
-- Cobalt Serpent (1) (20688)
UPDATE `creature_template` SET `HealthMultiplier` = '7.425', `PowerMultiplier` = '5.0', `DamageMultiplier` = '15.0', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '41498', `MaxLevelHealth` = '42649', `MinLevelMana` = '15775', `MaxLevelMana` = '16155', `MinMeleeDmg` = '3515', `MaxMeleeDmg` = '5049', `MinRangedDmg` = '2973', `MaxRangedDmg` = '4507', `MeleeAttackPower` = '290.0', `RangedAttackPower` = '37.0', `Armor` = '5714.0' WHERE `entry` = '20688';


-- Dark Vortex 18701 / 20689
UPDATE creature_template SET MeleeBaseAttackTime=2000, RangedBaseAttackTime=2000 WHERE entry IN (18701,20689);
-- Dark Vortex (18701)
UPDATE `creature_template` SET `HealthMultiplier` = '1.5', `PowerMultiplier` = '1.0', `DamageMultiplier` = '4.0', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.48917', `MinLevelHealth` = '7590', `MaxLevelHealth` = '7590', `MinLevelMana` = '2933', `MaxLevelMana` = '2933', `MinMeleeDmg` = '736', `MaxMeleeDmg` = '1034', `MinRangedDmg` = '612', `MaxRangedDmg` = '910', `MeleeAttackPower` = '272.0', `RangedAttackPower` = '31.0', `Armor` = '7081.0' WHERE `entry` = '18701';
-- Dark Vortex (1) (20689)
UPDATE `creature_template` SET `HealthMultiplier` = '2.025', `PowerMultiplier` = '1.0', `DamageMultiplier` = '10.0', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.48917', `MinLevelHealth` = '11318', `MaxLevelHealth` = '11318', `MinLevelMana` = '3155', `MaxLevelMana` = '3155', `MinMeleeDmg` = '2343', `MaxMeleeDmg` = '3311', `MinRangedDmg` = '1982', `MaxRangedDmg` = '2949', `MeleeAttackPower` = '286.0', `RangedAttackPower` = '33.0', `Armor` = '8152.0' WHERE `entry` = '20689';


-- Sethekk Guard 18323 / 20692
UPDATE creature_template SET LootId=18323, PickpocketLootId=18323 WHERE entry IN (18323,20692);
-- Sethekk Guard (18323)
UPDATE `creature_template` SET `HealthMultiplier` = '2.9', `PowerMultiplier` = '0', `DamageMultiplier` = '10.58', `DamageVariance` = '0.34', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '18345', `MaxLevelHealth` = '18972', `MinLevelMana` = '0', `MaxLevelMana` = '0', `MinMeleeDmg` = '1080', `MaxMeleeDmg` = '1461', `MinRangedDmg` = '832', `MaxRangedDmg` = '1302', `MeleeAttackPower` = '292.0', `RangedAttackPower` = '41.0', `Armor` = '6192.0' WHERE `entry` = '18323';
-- Sethekk Guard (1) (20692)
UPDATE `creature_template` SET `HealthMultiplier` = '5.0', `PowerMultiplier` = '0', `DamageMultiplier` = '20.0', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '34930', `MaxLevelHealth` = '35905', `MinLevelMana` = '0', `MaxLevelMana` = '0', `MinMeleeDmg` = '5050', `MaxMeleeDmg` = '7261', `MinRangedDmg` = '4307', `MaxRangedDmg` = '6519', `MeleeAttackPower` = '308.0', `RangedAttackPower` = '48.0', `Armor` = '7089.0' WHERE `entry` = '20692';


-- Sethekk Initiate 18318 / 20693
UPDATE creature_template SET LootId=18318, PickpocketLootId=18318 WHERE entry IN (18318,20693);
-- Sethekk Initiate (18318)
UPDATE `creature_template` SET `HealthMultiplier` = '2.9', `PowerMultiplier` = '0', `DamageMultiplier` = '4.66', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '18345', `MaxLevelHealth` = '18345', `MinLevelMana` = '0', `MaxLevelMana` = '0', `MinMeleeDmg` = '1027', `MaxMeleeDmg` = '1445', `MinRangedDmg` = '869', `MaxRangedDmg` = '1290', `MeleeAttackPower` = '288.0', `RangedAttackPower` = '39.0', `Armor` = '5892.0' WHERE `entry` = '18318';
-- Sethekk Initiate (1) (20693)
UPDATE `creature_template` SET `HealthMultiplier` = '3.915', `PowerMultiplier` = '0', `DamageMultiplier` = '10.0', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '27350', `MaxLevelHealth` = '27350', `MinLevelMana` = '0', `MaxLevelMana` = '0', `MinMeleeDmg` = '2525', `MaxMeleeDmg` = '3570', `MinRangedDmg` = '2153', `MaxRangedDmg` = '3199', `MeleeAttackPower` = '304.0', `RangedAttackPower` = '44.0', `Armor` = '6792.0' WHERE `entry` = '20693';


-- Sethekk Oracle 18328 / 20694
UPDATE creature_template SET LootId=18328, PickpocketLootId=18328 WHERE entry IN (18328,20694);
-- Sethekk Oracle (18328)
UPDATE `creature_template` SET `HealthMultiplier` = '2.9', `PowerMultiplier` = '5.0', `DamageMultiplier` = '4.66', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '12844', `MaxLevelHealth` = '13282', `MinLevelMana` = '33745', `MaxLevelMana` = '34410', `MinMeleeDmg` = '714', `MaxMeleeDmg` = '1085', `MinRangedDmg` = '732', `MaxRangedDmg` = '1148', `MeleeAttackPower` = '130.0', `RangedAttackPower` = '27.0', `Armor` = '3126.0' WHERE `entry` = '18328';
-- Sethekk Oracle (1) (20694)
UPDATE `creature_template` SET `HealthMultiplier` = '2.9', `PowerMultiplier` = '10.0', `DamageMultiplier` = '11.5', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '14181', `MaxLevelHealth` = '14578', `MinLevelMana` = '71960', `MaxLevelMana` = '73320', `MinMeleeDmg` = '2028', `MaxMeleeDmg` = '3072', `MinRangedDmg` = '2078', `MaxRangedDmg` = '3239', `MeleeAttackPower` = '137.0', `RangedAttackPower` = '31.0', `Armor` = '3577.0' WHERE `entry` = '20694';


-- Sethekk Prophet 18325 / 20695
UPDATE creature_template SET LootId=18325, PickpocketLootId=18325 WHERE entry IN (18325,20695);
-- Sethekk Prophet (18325)
UPDATE `creature_template` SET `HealthMultiplier` = '2.9', `PowerMultiplier` = '5.0', `DamageMultiplier` = '4.66', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '13282', `MaxLevelHealth` = '13726', `MinLevelMana` = '34410', `MaxLevelMana` = '35155', `MinMeleeDmg` = '750', `MaxMeleeDmg` = '1140', `MinRangedDmg` = '771', `MaxRangedDmg` = '1207', `MeleeAttackPower` = '133.0', `RangedAttackPower` = '28.0', `Armor` = '3277.0' WHERE `entry` = '18325';
-- Sethekk Prophet (1) (20695)
UPDATE `creature_template` SET `HealthMultiplier` = '3.915', `PowerMultiplier` = '5.0', `DamageMultiplier` = '11.5', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '19681', `MaxLevelHealth` = '20225', `MinLevelMana` = '36660', `MaxLevelMana` = '37500', `MinMeleeDmg` = '2115', `MaxMeleeDmg` = '3204', `MinRangedDmg` = '2176', `MaxRangedDmg` = '3385', `MeleeAttackPower` = '140.0', `RangedAttackPower` = '34.0', `Armor` = '3728.0' WHERE `entry` = '20695';


-- Sethekk Ravenguard 18322 / 20696
UPDATE creature_template SET UnitFlags=64 WHERE entry IN (18322,20696);
UPDATE creature_template SET LootId=18322, PickpocketLootId=18322 WHERE entry IN (18322,20696);
-- Sethekk Ravenguard (18322)
UPDATE `creature_template` SET `HealthMultiplier` = '2.9', `PowerMultiplier` = '0', `DamageMultiplier` = '4.66', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '18972', `MaxLevelHealth` = '18972', `MinLevelMana` = '0', `MaxLevelMana` = '0', `MinMeleeDmg` = '860', `MaxMeleeDmg` = '1213', `MinRangedDmg` = '916', `MaxRangedDmg` = '1360', `MeleeAttackPower` = '292.0', `RangedAttackPower` = '41.0', `Armor` = '6192.0' WHERE `entry` = '18322';
-- Sethekk Ravenguard (1) (20696)
UPDATE `creature_template` SET `HealthMultiplier` = '6.0', `PowerMultiplier` = '0', `DamageMultiplier` = '14.0', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '43086', `MaxLevelHealth` = '43086', `MinLevelMana` = '0', `MaxLevelMana` = '0', `MinMeleeDmg` = '2875', `MaxMeleeDmg` = '4066', `MinRangedDmg` = '3074', `MaxRangedDmg` = '4563', `MeleeAttackPower` = '308.0', `RangedAttackPower` = '48.0', `Armor` = '7089.0' WHERE `entry` = '20696';


-- Sethekk Shaman 18326 / 20699
UPDATE creature_template SET UnitFlags=64 WHERE entry IN (18326,20699);
UPDATE creature_template SET LootId=18326, PickpocketLootId=18326 WHERE entry IN (18326,20699);
-- Sethekk Shaman (18326)
UPDATE `creature_template` SET `HealthMultiplier` = '2.9', `PowerMultiplier` = '5.0', `DamageMultiplier` = '4.66', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '15686', `MaxLevelHealth` = '15686', `MinLevelMana` = '15400', `MaxLevelMana` = '15400', `MinMeleeDmg` = '836', `MaxMeleeDmg` = '1178', `MinRangedDmg` = '885', `MaxRangedDmg` = '1317', `MeleeAttackPower` = '282.0', `RangedAttackPower` = '32.0', `Armor` = '5235.0' WHERE `entry` = '18326';
-- Sethekk Shaman (1) (20699)
UPDATE `creature_template` SET `HealthMultiplier` = '4.5', `PowerMultiplier` = '5.0', `DamageMultiplier` = '11.5', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '26564', `MaxLevelHealth` = '26564', `MinLevelMana` = '16545', `MaxLevelMana` = '16545', `MinMeleeDmg` = '2226', `MaxMeleeDmg` = '3145', `MinRangedDmg` = '2362', `MaxRangedDmg` = '3511', `MeleeAttackPower` = '296.0', `RangedAttackPower` = '40.0', `Armor` = '5954.0' WHERE `entry` = '20699';


-- Sethekk Talon Lord 18321 / 20701
UPDATE creature_template SET UnitFlags=64 WHERE entry IN (18321,20701);
UPDATE creature_template SET LootId=18321, PickpocketLootId=18321 WHERE entry IN (18321,20701);
-- Sethekk Talon Lord (18321)
UPDATE `creature_template` SET `HealthMultiplier` = '2.9', `PowerMultiplier` = '1.0', `DamageMultiplier` = '4.66', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '15176', `MaxLevelHealth` = '15686', `MinLevelMana` = '2991', `MaxLevelMana` = '3080', `MinMeleeDmg` = '898', `MaxMeleeDmg` = '1326', `MinRangedDmg` = '841', `MaxRangedDmg` = '1317', `MeleeAttackPower` = '282.0', `RangedAttackPower` = '32.0', `Armor` = '5235.0' WHERE `entry` = '18321';
-- Sethekk Talon Lord (1) (20701)
UPDATE `creature_template` SET `HealthMultiplier` = '5.0', `PowerMultiplier` = '1.0', `DamageMultiplier` = '12.5', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '28720', `MaxLevelHealth` = '29515', `MinLevelMana` = '3231', `MaxLevelMana` = '3309', `MinMeleeDmg` = '2680', `MaxMeleeDmg` = '3846', `MinRangedDmg` = '2526', `MaxRangedDmg` = '3816', `MeleeAttackPower` = '296.0', `RangedAttackPower` = '40.0', `Armor` = '5954.0' WHERE `entry` = '20701';


-- Syth Arcane Elemental 19205 / 20702
UPDATE creature_template SET MeleeBaseAttackTime=1400, RangedBaseAttackTime=1900, DamageSchool=6 WHERE entry IN (19205,20702);
-- Syth Arcane Elemental (19205)
UPDATE `creature_template` SET `HealthMultiplier` = '0.5', `PowerMultiplier` = '1.0', `DamageMultiplier` = '2.32', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '2705', `MaxLevelHealth` = '2705', `MinLevelMana` = '3080', `MaxLevelMana` = '3080', `MinMeleeDmg` = '363', `MaxMeleeDmg` = '513', `MinRangedDmg` = '644', `MaxRangedDmg` = '958', `MeleeAttackPower` = '282.0', `RangedAttackPower` = '32.0', `Armor` = '5235.0' WHERE `entry` = '19205';
-- Syth Arcane Elemental (1) (20702)
UPDATE `creature_template` SET `HealthMultiplier` = '1.0', `PowerMultiplier` = '1.0', `DamageMultiplier` = '3.0', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '5903', `MaxLevelHealth` = '5903', `MinLevelMana` = '3309', `MaxLevelMana` = '3309', `MinMeleeDmg` = '560', `MaxMeleeDmg` = '790', `MinRangedDmg` = '781', `MaxRangedDmg` = '1160', `MeleeAttackPower` = '296.0', `RangedAttackPower` = '40.0', `Armor` = '5954.0' WHERE `entry` = '20702';


-- Syth Fire Elemental 19203 / 20703
UPDATE creature_template SET MeleeBaseAttackTime=1400, RangedBaseAttackTime=1900, DamageSchool=2 WHERE entry IN (19203,20703);
-- Syth Fire Elemental (19203)
UPDATE `creature_template` SET `HealthMultiplier` = '0.5', `PowerMultiplier` = '1.0', `DamageMultiplier` = '2.32', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '2705', `MaxLevelHealth` = '2705', `MinLevelMana` = '3080', `MaxLevelMana` = '3080', `MinMeleeDmg` = '363', `MaxMeleeDmg` = '513', `MinRangedDmg` = '644', `MaxRangedDmg` = '958', `MeleeAttackPower` = '282.0', `RangedAttackPower` = '32.0', `Armor` = '5235.0' WHERE `entry` = '19203';
-- Syth Fire Elemental (1) (20703)
UPDATE `creature_template` SET `HealthMultiplier` = '1.0', `PowerMultiplier` = '1.0', `DamageMultiplier` = '3.0', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '5903', `MaxLevelHealth` = '5903', `MinLevelMana` = '3309', `MaxLevelMana` = '3309', `MinMeleeDmg` = '560', `MaxMeleeDmg` = '790', `MinRangedDmg` = '781', `MaxRangedDmg` = '1160', `MeleeAttackPower` = '296.0', `RangedAttackPower` = '40.0', `Armor` = '5954.0' WHERE `entry` = '20703';


-- Syth Frost Elemental 19204 / 20704
UPDATE creature_template SET MeleeBaseAttackTime=1400, RangedBaseAttackTime=1900, DamageSchool=4 WHERE entry IN (19204,20704);
-- Syth Frost Elemental (19204)
UPDATE `creature_template` SET `HealthMultiplier` = '0.5', `PowerMultiplier` = '1.0', `DamageMultiplier` = '2.32', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '2705', `MaxLevelHealth` = '2705', `MinLevelMana` = '3080', `MaxLevelMana` = '3080', `MinMeleeDmg` = '363', `MaxMeleeDmg` = '513', `MinRangedDmg` = '644', `MaxRangedDmg` = '958', `MeleeAttackPower` = '282.0', `RangedAttackPower` = '32.0', `Armor` = '5235.0' WHERE `entry` = '19204';
-- Syth Frost Elemental (1) (20704)
UPDATE `creature_template` SET `HealthMultiplier` = '1.0', `PowerMultiplier` = '1.0', `DamageMultiplier` = '3.0', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '5903', `MaxLevelHealth` = '5903', `MinLevelMana` = '3309', `MaxLevelMana` = '3309', `MinMeleeDmg` = '560', `MaxMeleeDmg` = '790', `MinRangedDmg` = '781', `MaxRangedDmg` = '1160', `MeleeAttackPower` = '296.0', `RangedAttackPower` = '40.0', `Armor` = '5954.0' WHERE `entry` = '20704';


-- Syth Shadow Elemental 19206 / 20705
UPDATE creature_template SET MeleeBaseAttackTime=1400, RangedBaseAttackTime=1900, DamageSchool=5 WHERE entry IN (19206,20705);
-- Syth Shadow Elemental (19206)
UPDATE `creature_template` SET `HealthMultiplier` = '0.5', `PowerMultiplier` = '1.0', `DamageMultiplier` = '2.32', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '2705', `MaxLevelHealth` = '2705', `MinLevelMana` = '3080', `MaxLevelMana` = '3080', `MinMeleeDmg` = '363', `MaxMeleeDmg` = '513', `MinRangedDmg` = '644', `MaxRangedDmg` = '958', `MeleeAttackPower` = '282.0', `RangedAttackPower` = '32.0', `Armor` = '5235.0' WHERE `entry` = '19206';
-- Syth Shadow Elemental (1) (20705)
UPDATE `creature_template` SET `HealthMultiplier` = '1.0', `PowerMultiplier` = '1.0', `DamageMultiplier` = '3.0', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '5903', `MaxLevelHealth` = '5903', `MinLevelMana` = '3309', `MaxLevelMana` = '3309', `MinMeleeDmg` = '560', `MaxMeleeDmg` = '790', `MinRangedDmg` = '781', `MaxRangedDmg` = '1160', `MeleeAttackPower` = '296.0', `RangedAttackPower` = '40.0', `Armor` = '5954.0' WHERE `entry` = '20705';


-- Time-Lost Controller 18327 / 20691
UPDATE creature_template SET LootId=18327, PickpocketLootId=18327 WHERE entry IN (18327,20691);
-- Time-Lost Controller (18327)
UPDATE `creature_template` SET `HealthMultiplier` = '2.9', `PowerMultiplier` = '5.0', `DamageMultiplier` = '4.66', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '12844', `MaxLevelHealth` = '12844', `MinLevelMana` = '33745', `MaxLevelMana` = '33745', `MinMeleeDmg` = '714', `MaxMeleeDmg` = '1032', `MinRangedDmg` = '732', `MaxRangedDmg` = '1089', `MeleeAttackPower` = '128.0', `RangedAttackPower` = '27.0', `Armor` = '2976.0' WHERE `entry` = '18327';
-- Time-Lost Controller (1) (20691)
UPDATE `creature_template` SET `HealthMultiplier` = '3.915', `PowerMultiplier` = '5.0', `DamageMultiplier` = '6.0', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '19144', `MaxLevelHealth` = '19144', `MinLevelMana` = '35980', `MaxLevelMana` = '35980', `MinMeleeDmg` = '1061', `MaxMeleeDmg` = '1540', `MinRangedDmg` = '1084', `MaxRangedDmg` = '1614', `MeleeAttackPower` = '135.0', `RangedAttackPower` = '28.0', `Armor` = '3427.0' WHERE `entry` = '20691';


-- Time-Lost Scryer 18319 / 20697
UPDATE creature_template SET LootId=18319, PickpocketLootId=18319 WHERE entry IN (18319,20697);
-- Time-Lost Scryer (18319)
UPDATE `creature_template` SET `HealthMultiplier` = '2.9', `PowerMultiplier` = '5.0', `DamageMultiplier` = '9.0', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '12844', `MaxLevelHealth` = '13282', `MinLevelMana` = '33745', `MaxLevelMana` = '34410', `MinMeleeDmg` = '1226', `MaxMeleeDmg` = '1864', `MinRangedDmg` = '1402', `MaxRangedDmg` = '2198', `MeleeAttackPower` = '130.0', `RangedAttackPower` = '27.0', `Armor` = '3126.0' WHERE `entry` = '18319';
-- Time-Lost Scryer (1) (20697)
UPDATE `creature_template` SET `HealthMultiplier` = '3.915', `PowerMultiplier` = '10.0', `DamageMultiplier` = '8.5', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '19144', `MaxLevelHealth` = '19681', `MinLevelMana` = '71960', `MaxLevelMana` = '73320', `MinMeleeDmg` = '1333', `MaxMeleeDmg` = '2018', `MinRangedDmg` = '1536', `MaxRangedDmg` = '2394', `MeleeAttackPower` = '137.0', `RangedAttackPower` = '31.0', `Armor` = '3577.0' WHERE `entry` = '20697';


-- Time-Lost Shadowmage 18320 / 20698
UPDATE creature_template SET UnitFlags=64 WHERE entry IN (18320,20698);
UPDATE creature_template SET LootId=18320, PickpocketLootId=18320 WHERE entry IN (18320,20698);
-- Time-Lost Shadowmage (18320)
UPDATE `creature_template` SET `HealthMultiplier` = '2.9', `PowerMultiplier` = '5.0', `DamageMultiplier` = '4.66', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '13726', `MaxLevelHealth` = '13726', `MinLevelMana` = '35155', `MaxLevelMana` = '35155', `MinMeleeDmg` = '786', `MaxMeleeDmg` = '1139', `MinRangedDmg` = '811', `MaxRangedDmg` = '1207', `MeleeAttackPower` = '133.0', `RangedAttackPower` = '28.0', `Armor` = '3277.0' WHERE `entry` = '18320';
-- Time-Lost Shadowmage (1) (20698)
UPDATE `creature_template` SET `MinLevel` = '72', `MaxLevel` = '72', `HealthMultiplier` = '2.9', `PowerMultiplier` = '5.0', `DamageMultiplier` = '6.0', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '14981', `MaxLevelHealth` = '14981', `MinLevelMana` = '37500', `MaxLevelMana` = '37500', `MinMeleeDmg` = '1150', `MaxMeleeDmg` = '1671', `MinRangedDmg` = '1187', `MaxRangedDmg` = '1766', `MeleeAttackPower` = '140.0', `RangedAttackPower` = '34.0', `Armor` = '3728.0' WHERE `entry` = '20698';


-- ============================
-- Auchindoun: Shadow Labyrinth
-- ============================
-- Cabal Acolyte 18633 / 20638
UPDATE creature_template SET ModelId1=18579, ModelId2=0, ModelId3=18582, ModelId4=0 WHERE entry IN (18633,20638);
UPDATE creature_template SET UnitFlags=32832 WHERE entry IN (18633,20638);
UPDATE creature_template SET LootId=18633, PickpocketLootId=18633 WHERE entry IN (18633,20638);
-- Cabal Acolyte (18633)
UPDATE `creature_template` SET `HealthMultiplier` = '3.0', `PowerMultiplier` = '3.0', `DamageMultiplier` = '4.66', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '16227', `MaxLevelHealth` = '16227', `MinLevelMana` = '9240', `MaxLevelMana` = '9240', `MinMeleeDmg` = '1045', `MaxMeleeDmg` = '1473', `MinRangedDmg` = '885', `MaxRangedDmg` = '1317', `MeleeAttackPower` = '282.0', `RangedAttackPower` = '32.0', `Armor` = '5235.0' WHERE `entry` = '18633';
-- Cabal Acolyte (1) (20638)
UPDATE `creature_template` SET `HealthMultiplier` = '4.5', `PowerMultiplier` = '3.0', `DamageMultiplier` = '11.5', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '25151', `MaxLevelHealth` = '25151', `MinLevelMana` = '9465', `MaxLevelMana` = '9465', `MinMeleeDmg` = '2695', `MaxMeleeDmg` = '3807', `MinRangedDmg` = '2279', `MaxRangedDmg` = '3392', `MeleeAttackPower` = '286.0', `RangedAttackPower` = '33.0', `Armor` = '5474.0' WHERE `entry` = '20638';


-- Cabal Assassin 18636 / 20639
UPDATE creature_template SET ModelId1=18583, ModelId2=0, ModelId3=18584, ModelId4=0 WHERE entry IN (18636,20639);
UPDATE creature_template SET UnitFlags=32832 WHERE entry IN (18636,20639);
UPDATE creature_template SET LootId=18636, PickpocketLootId=18636 WHERE entry IN (18636,20639);
-- Cabal Assassin (18636)
UPDATE `creature_template` SET `HealthMultiplier` = '3.0', `PowerMultiplier` = '0', `DamageMultiplier` = '4.884', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '20958', `MaxLevelHealth` = '20958', `MinLevelMana` = '0', `MaxLevelMana` = '0', `MinMeleeDmg` = '1110', `MaxMeleeDmg` = '1569', `MinRangedDmg` = '1077', `MaxRangedDmg` = '1599', `MeleeAttackPower` = '304.0', `RangedAttackPower` = '44.0', `Armor` = '6792.0' WHERE `entry` = '18636';
-- Cabal Assassin (1) (20639)
UPDATE `creature_template` SET `HealthMultiplier` = '4.05', `PowerMultiplier` = '0', `DamageMultiplier` = '12.5', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '28293', `MaxLevelHealth` = '28293', `MinLevelMana` = '0', `MaxLevelMana` = '0', `MinMeleeDmg` = '2840', `MaxMeleeDmg` = '4016', `MinRangedDmg` = '2692', `MaxRangedDmg` = '3998', `MeleeAttackPower` = '304.0', `RangedAttackPower` = '44.0', `Armor` = '6792.0' WHERE `entry` = '20639';


-- Cabal Cultist 18631 / 20640
UPDATE creature_template SET ModelId1=18586, ModelId2=0, ModelId3=18588, ModelId4=0 WHERE entry IN (18631,20640);
UPDATE creature_template SET UnitFlags=32832 WHERE entry IN (18631,20640);
UPDATE creature_template SET LootId=18631, PickpocketLootId=18631 WHERE entry IN (18631,20640);
-- Cabal Cultist (18631)
UPDATE `creature_template` SET `HealthMultiplier` = '2.6', `PowerMultiplier` = '0', `DamageMultiplier` = '4.66', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '17579', `MaxLevelHealth` = '18164', `MinLevelMana` = '0', `MaxLevelMana` = '0', `MinMeleeDmg` = '1127', `MaxMeleeDmg` = '1664', `MinRangedDmg` = '964', `MaxRangedDmg` = '1503', `MeleeAttackPower` = '304.0', `RangedAttackPower` = '44.0', `Armor` = '6792.0' WHERE `entry` = '18631';
-- Cabal Cultist (1) (20640)
UPDATE `creature_template` SET `HealthMultiplier` = '3.51', `PowerMultiplier` = '0', `DamageMultiplier` = '12.0', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '24521', `MaxLevelHealth` = '25205', `MinLevelMana` = '0', `MaxLevelMana` = '0', `MinMeleeDmg` = '3030', `MaxMeleeDmg` = '4357', `MinRangedDmg` = '2584', `MaxRangedDmg` = '3911', `MeleeAttackPower` = '308.0', `RangedAttackPower` = '48.0', `Armor` = '7089.0' WHERE `entry` = '20640';


-- Cabal Deathsworn 18635 / 20641
UPDATE creature_template SET ModelId1=18589, ModelId2=0, ModelId3=18592, ModelId4=0 WHERE entry IN (18635,20641);
UPDATE creature_template SET UnitFlags=32832 WHERE entry IN (18635,20641);
UPDATE creature_template SET LootId=18635, PickpocketLootId=18635 WHERE entry IN (18635,20641);
-- Cabal Deathsworn (18635)
UPDATE `creature_template` SET `HealthMultiplier` = '3.0', `PowerMultiplier` = '0', `DamageMultiplier` = '4.66', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '20283', `MaxLevelHealth` = '20958', `MinLevelMana` = '0', `MaxLevelMana` = '0', `MinMeleeDmg` = '1127', `MaxMeleeDmg` = '1664', `MinRangedDmg` = '964', `MaxRangedDmg` = '1503', `MeleeAttackPower` = '304.0', `RangedAttackPower` = '44.0', `Armor` = '6792.0' WHERE `entry` = '18635';
-- Cabal Deathsworn (1) (20641)
UPDATE `creature_template` SET `HealthMultiplier` = '4.05', `PowerMultiplier` = '0', `DamageMultiplier` = '12.0', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '28293', `MaxLevelHealth` = '29083', `MinLevelMana` = '0', `MaxLevelMana` = '0', `MinMeleeDmg` = '3030', `MaxMeleeDmg` = '4357', `MinRangedDmg` = '2584', `MaxRangedDmg` = '3911', `MeleeAttackPower` = '308.0', `RangedAttackPower` = '48.0', `Armor` = '7089.0' WHERE `entry` = '20641';


-- Cabal Executioner 18632 / 20642
UPDATE creature_template SET ModelId1=18593, ModelId2=0, ModelId3=18595, ModelId4=0 WHERE entry IN (18632,20642);
UPDATE creature_template SET UnitFlags=32832 WHERE entry IN (18632,20642);
UPDATE creature_template SET LootId=18632, PickpocketLootId=18632 WHERE entry IN (18632,20642);
-- Cabal Executioner (18632)
UPDATE `creature_template` SET `HealthMultiplier` = '3.0', `PowerMultiplier` = '0', `DamageMultiplier` = '4.66', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '21543', `MaxLevelHealth` = '21543', `MinLevelMana` = '0', `MaxLevelMana` = '0', `MinMeleeDmg` = '1436', `MaxMeleeDmg` = '2031', `MinRangedDmg` = '1032', `MaxRangedDmg` = '1532', `MeleeAttackPower` = '308.0', `RangedAttackPower` = '48.0', `Armor` = '7089.0' WHERE `entry` = '18632';
-- Cabal Executioner (1) (20642)
UPDATE `creature_template` SET `HealthMultiplier` = '5.0', `PowerMultiplier` = '0', `DamageMultiplier` = '12.5', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '35905', `MaxLevelHealth` = '35905', `MinLevelMana` = '0', `MaxLevelMana` = '0', `MinMeleeDmg` = '3851', `MaxMeleeDmg` = '5446', `MinRangedDmg` = '2745', `MaxRangedDmg` = '4074', `MeleeAttackPower` = '308.0', `RangedAttackPower` = '48.0', `Armor` = '7089.0' WHERE `entry` = '20642';


-- Cabal Familiar 18641 / 20643
UPDATE creature_template SET UnitFlags=32768 WHERE entry IN (18641,20643);
UPDATE creature_template SET LootId=18641 WHERE entry IN (18641,20643);
-- Cabal Familiar (18641)
UPDATE `creature_template` SET `HealthMultiplier` = '1.1', `PowerMultiplier` = '2.0', `DamageMultiplier` = '1.894', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '5206', `MaxLevelHealth` = '5206', `MinLevelMana` = '14062', `MaxLevelMana` = '14062', `MinMeleeDmg` = '284', `MaxMeleeDmg` = '412', `MinRangedDmg` = '328', `MaxRangedDmg` = '488', `MeleeAttackPower` = '133.0', `RangedAttackPower` = '28.0', `Armor` = '3277.0' WHERE `entry` = '18641';
-- Cabal Familiar (1) (20643)
UPDATE `creature_template` SET `HealthMultiplier` = '1.485', `PowerMultiplier` = '2.0', `DamageMultiplier` = '4.0', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '7262', `MaxLevelHealth` = '7262', `MinLevelMana` = '14392', `MaxLevelMana` = '14392', `MinMeleeDmg` = '627', `MaxMeleeDmg` = '910', `MinRangedDmg` = '723', `MaxRangedDmg` = '1076', `MeleeAttackPower` = '135.0', `RangedAttackPower` = '28.0', `Armor` = '3427.0' WHERE `entry` = '20643';


-- Cabal Fanatic 18830 / 20644
UPDATE creature_template SET ModelId1=18596, ModelId2=0, ModelId3=18598, ModelId4=0 WHERE entry IN (18830,20644);
UPDATE creature_template SET UnitFlags=32832 WHERE entry IN (18830,20644);
UPDATE creature_template SET LootId=18830, PickpocketLootId=18830 WHERE entry IN (18830,20644);
-- Cabal Fanatic (18830)
UPDATE `creature_template` SET `HealthMultiplier` = '3.0', `PowerMultiplier` = '0', `DamageMultiplier` = '4.66', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '20958', `MaxLevelHealth` = '20958', `MinLevelMana` = '0', `MaxLevelMana` = '0', `MinMeleeDmg` = '1177', `MaxMeleeDmg` = '1664', `MinRangedDmg` = '1012', `MaxRangedDmg` = '1503', `MeleeAttackPower` = '304.0', `RangedAttackPower` = '44.0', `Armor` = '6792.0' WHERE `entry` = '18830';
-- Cabal Fanatic (1) (20644)
UPDATE `creature_template` SET `HealthMultiplier` = '4.05', `PowerMultiplier` = '0', `DamageMultiplier` = '11.5', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '28293', `MaxLevelHealth` = '28293', `MinLevelMana` = '0', `MaxLevelMana` = '0', `MinMeleeDmg` = '2904', `MaxMeleeDmg` = '4106', `MinRangedDmg` = '2476', `MaxRangedDmg` = '3678', `MeleeAttackPower` = '304.0', `RangedAttackPower` = '44.0', `Armor` = '6792.0' WHERE `entry` = '20644';


-- Cabal Ritualist 18794 / 20645
UPDATE creature_template SET ModelId1=18191, ModelId2=0, ModelId3=18192, ModelId4=0 WHERE entry IN (18794,20645);
UPDATE creature_template SET UnitFlags=32832 WHERE entry IN (18794,20645);
UPDATE creature_template SET LootId=18794, PickpocketLootId=18794 WHERE entry IN (18794,20645);
-- Cabal Ritualist (18794)
UPDATE `creature_template` SET `HealthMultiplier` = '3.0', `PowerMultiplier` = '3.0', `DamageMultiplier` = '4.28', `DamageVariance` = '1.11', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '16227', `MaxLevelHealth` = '16767', `MinLevelMana` = '9240', `MaxLevelMana` = '9465', `MinMeleeDmg` = '1045', `MaxMeleeDmg` = '1553', `MinRangedDmg` = '885', `MaxRangedDmg` = '1386', `MeleeAttackPower` = '286.0', `RangedAttackPower` = '33.0', `Armor` = '5474.0' WHERE `entry` = '18794';
-- Cabal Ritualist (1) (20645)
UPDATE `creature_template` SET `HealthMultiplier` = '4.05', `PowerMultiplier` = '10.0', `DamageMultiplier` = '10.0', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '22635', `MaxLevelHealth` = '23263', `MinLevelMana` = '31550', `MaxLevelMana` = '32310', `MinMeleeDmg` = '2343', `MaxMeleeDmg` = '3366', `MinRangedDmg` = '1982', `MaxRangedDmg` = '3005', `MeleeAttackPower` = '290.0', `RangedAttackPower` = '37.0', `Armor` = '5714.0' WHERE `entry` = '20645';


-- Cabal Shadow Priest 18637 / 20646
UPDATE creature_template SET ModelId1=18599, ModelId2=0, ModelId3=18601, ModelId4=0 WHERE entry IN (18637,20646);
UPDATE creature_template SET UnitFlags=32832 WHERE entry IN (18637,20646);
UPDATE creature_template SET LootId=18637, PickpocketLootId=18637 WHERE entry IN (18637,20646);
-- Cabal Shadow Priest (18637)
UPDATE `creature_template` SET `HealthMultiplier` = '3.0', `PowerMultiplier` = '3.0', `DamageMultiplier` = '4.66', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '16227', `MaxLevelHealth` = '16767', `MinLevelMana` = '9240', `MaxLevelMana` = '9465', `MinMeleeDmg` = '1045', `MaxMeleeDmg` = '1543', `MinRangedDmg` = '885', `MaxRangedDmg` = '1386', `MeleeAttackPower` = '286.0', `RangedAttackPower` = '33.0', `Armor` = '5474.0' WHERE `entry` = '18637';
-- Cabal Shadow Priest (1) (20646)
UPDATE `creature_template` SET `HealthMultiplier` = '4.05', `PowerMultiplier` = '3.0', `DamageMultiplier` = '11.0', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '22635', `MaxLevelHealth` = '23263', `MinLevelMana` = '9465', `MaxLevelMana` = '9693', `MinMeleeDmg` = '2578', `MaxMeleeDmg` = '3703', `MinRangedDmg` = '2180', `MaxRangedDmg` = '3305', `MeleeAttackPower` = '290.0', `RangedAttackPower` = '37.0', `Armor` = '5714.0' WHERE `entry` = '20646';


-- Cabal Spellbinder 18639 / 20647
UPDATE creature_template SET ModelId1=18602, ModelId2=0, ModelId3=18604, ModelId4=0 WHERE entry IN (18639,20647);
UPDATE creature_template SET UnitFlags=32832 WHERE entry IN (18639,20647);
UPDATE creature_template SET LootId=18639, PickpocketLootId=18639 WHERE entry IN (18639,20647);
-- Cabal Spellbinder (18639)
UPDATE `creature_template` SET `HealthMultiplier` = '3.0', `PowerMultiplier` = '3.0', `DamageMultiplier` = '4.66', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '16767', `MaxLevelHealth` = '17232', `MinLevelMana` = '9465', `MaxLevelMana` = '9693', `MinMeleeDmg` = '1092', `MaxMeleeDmg` = '1569', `MinRangedDmg` = '931', `MaxRangedDmg` = '1412', `MeleeAttackPower` = '290.0', `RangedAttackPower` = '37.0', `Armor` = '5714.0' WHERE `entry` = '18639';
-- Cabal Spellbinder (1) (20647)
UPDATE `creature_template` SET `HealthMultiplier` = '4.05', `PowerMultiplier` = '10.0', `DamageMultiplier` = '11.5', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '22635', `MaxLevelHealth` = '23263', `MinLevelMana` = '31550', `MaxLevelMana` = '32310', `MinMeleeDmg` = '2695', `MaxMeleeDmg` = '3871', `MinRangedDmg` = '2279', `MaxRangedDmg` = '3456', `MeleeAttackPower` = '290.0', `RangedAttackPower` = '37.0', `Armor` = '5714.0' WHERE `entry` = '20647';


-- Cabal Summoner 18634 / 20648
UPDATE creature_template SET ModelId1=18605, ModelId2=0, ModelId3=18608, ModelId4=0 WHERE entry IN (18634,20648);
UPDATE creature_template SET UnitFlags=32832 WHERE entry IN (18634,20648);
UPDATE creature_template SET LootId=18634, PickpocketLootId=18634 WHERE entry IN (18634,20648);
-- Cabal Summoner (18634)
UPDATE `creature_template` SET `HealthMultiplier` = '3.0', `PowerMultiplier` = '3.0', `DamageMultiplier` = '4.66', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '16767', `MaxLevelHealth` = '17232', `MinLevelMana` = '9465', `MaxLevelMana` = '9693', `MinMeleeDmg` = '1092', `MaxMeleeDmg` = '1569', `MinRangedDmg` = '931', `MaxRangedDmg` = '1412', `MeleeAttackPower` = '290.0', `RangedAttackPower` = '37.0', `Armor` = '5714.0' WHERE `entry` = '18634';
-- Cabal Summoner (1) (20648)
UPDATE `creature_template` SET `HealthMultiplier` = '4.05', `PowerMultiplier` = '3.0', `DamageMultiplier` = '11.5', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '22635', `MaxLevelHealth` = '23263', `MinLevelMana` = '9465', `MaxLevelMana` = '9693', `MinMeleeDmg` = '2695', `MaxMeleeDmg` = '3871', `MinRangedDmg` = '2279', `MaxRangedDmg` = '3456', `MeleeAttackPower` = '290.0', `RangedAttackPower` = '37.0', `Armor` = '5714.0' WHERE `entry` = '20648';


-- Cabal Warlock 18640 / 20649
UPDATE creature_template SET UnitFlags=32832 WHERE entry IN (18640,20649);
UPDATE creature_template SET LootId=18640, PickpocketLootId=18640 WHERE entry IN (18640,20649);
-- Cabal Warlock (18640)
UPDATE `creature_template` SET `HealthMultiplier` = '3.0', `PowerMultiplier` = '3.0', `DamageMultiplier` = '4.66', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '16227', `MaxLevelHealth` = '16227', `MinLevelMana` = '9240', `MaxLevelMana` = '9240', `MinMeleeDmg` = '1045', `MaxMeleeDmg` = '1473', `MinRangedDmg` = '885', `MaxRangedDmg` = '1317', `MeleeAttackPower` = '282.0', `RangedAttackPower` = '32.0', `Armor` = '5235.0' WHERE `entry` = '18640';
-- Cabal Warlock (1) (20649)
UPDATE `creature_template` SET `HealthMultiplier` = '4.05', `PowerMultiplier` = '3.0', `DamageMultiplier` = '11.5', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '22635', `MaxLevelHealth` = '22635', `MinLevelMana` = '9465', `MaxLevelMana` = '9465', `MinMeleeDmg` = '2695', `MaxMeleeDmg` = '3807', `MinRangedDmg` = '2279', `MaxRangedDmg` = '3392', `MeleeAttackPower` = '286.0', `RangedAttackPower` = '33.0', `Armor` = '5474.0' WHERE `entry` = '20649';


-- Cabal Zealot 18638 / 20650
UPDATE creature_template SET ModelId1=18612, ModelId2=0, ModelId3=18614, ModelId4=0 WHERE entry IN (18638,20650);
UPDATE creature_template SET UnitFlags=32832 WHERE entry IN (18638,20650);
UPDATE creature_template SET LootId=18638, PickpocketLootId=18638 WHERE entry IN (18638,20650);
-- Cabal Zealot (18638)
UPDATE `creature_template` SET `HealthMultiplier` = '3.0', `PowerMultiplier` = '3.0', `DamageMultiplier` = '4.25', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '16767', `MaxLevelHealth` = '16767', `MinLevelMana` = '9465', `MaxLevelMana` = '9465', `MinMeleeDmg` = '1095', `MaxMeleeDmg` = '1548', `MinRangedDmg` = '852', `MaxRangedDmg` = '1268', `MeleeAttackPower` = '286.0', `RangedAttackPower` = '33.0', `Armor` = '5474.0' WHERE `entry` = '18638';
-- Cabal Zealot (1) (20650)
UPDATE `creature_template` SET `HealthMultiplier` = '4.0', `PowerMultiplier` = '3.0', `DamageMultiplier` = '10.5', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '22356', `MaxLevelHealth` = '22356', `MinLevelMana` = '9465', `MaxLevelMana` = '9465', `MinMeleeDmg` = '2707', `MaxMeleeDmg` = '3824', `MinRangedDmg` = '2081', `MaxRangedDmg` = '3097', `MeleeAttackPower` = '286.0', `RangedAttackPower` = '33.0', `Armor` = '5474.0' WHERE `entry` = '20650';


-- Fel Guardhound 18642 / 20651
UPDATE creature_template SET UnitFlags=32768 WHERE entry IN (18642,20651);
UPDATE creature_template SET LootId=18642, SkinningLootId=70162 WHERE entry IN (18642,20651);
-- Fel Guardhound (18642)
UPDATE `creature_template` SET `HealthMultiplier` = '1.45', `PowerMultiplier` = '2.0', `DamageMultiplier` = '2.0', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '7843', `MaxLevelHealth` = '7843', `MinLevelMana` = '6160', `MaxLevelMana` = '6160', `MinMeleeDmg` = '471', `MaxMeleeDmg` = '664', `MinRangedDmg` = '396', `MaxRangedDmg` = '589', `MeleeAttackPower` = '282.0', `RangedAttackPower` = '32.0', `Armor` = '5235.0' WHERE `entry` = '18642';
-- Fel Guardhound (1) (20651)
UPDATE `creature_template` SET `HealthMultiplier` = '3.0', `PowerMultiplier` = '5.0', `DamageMultiplier` = '4.0', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '16767', `MaxLevelHealth` = '16767', `MinLevelMana` = '15775', `MaxLevelMana` = '15775', `MinMeleeDmg` = '937', `MaxMeleeDmg` = '1324', `MinRangedDmg` = '793', `MaxRangedDmg` = '1180', `MeleeAttackPower` = '286.0', `RangedAttackPower` = '33.0', `Armor` = '5474.0' WHERE `entry` = '20651';


-- Fel Overseer 18796 / 20652
UPDATE creature_template SET UnitFlags=32832 WHERE entry IN (18796,20652);
UPDATE creature_template SET LootId=18796, PickpocketLootId=18796 WHERE entry IN (18796,20652);
-- Fel Overseer (18796)
UPDATE `creature_template` SET `HealthMultiplier` = '12.0', `PowerMultiplier` = '0', `DamageMultiplier` = '10.0', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '83832', `MaxLevelHealth` = '83832', `MinLevelMana` = '0', `MaxLevelMana` = '0', `MinMeleeDmg` = '2525', `MaxMeleeDmg` = '3570', `MinRangedDmg` = '2153', `MaxRangedDmg` = '3199', `MeleeAttackPower` = '304.0', `RangedAttackPower` = '44.0', `Armor` = '6792.0' WHERE `entry` = '18796';
-- Fel Overseer (1) (20652)
UPDATE `creature_template` SET `HealthMultiplier` = '16.2', `PowerMultiplier` = '0', `DamageMultiplier` = '25.0', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '113173', `MaxLevelHealth` = '113173', `MinLevelMana` = '0', `MaxLevelMana` = '0', `MinMeleeDmg` = '6312', `MaxMeleeDmg` = '8925', `MinRangedDmg` = '5383', `MaxRangedDmg` = '7997', `MeleeAttackPower` = '304.0', `RangedAttackPower` = '44.0', `Armor` = '6792.0' WHERE `entry` = '20652';


-- Maiden of Discipline 18663 / 20655
UPDATE creature_template SET UnitFlags=32768 WHERE entry IN (18663,20655);
UPDATE creature_template SET LootId=18663 WHERE entry IN (18663,20655);
-- Maiden of Discipline (18663)
UPDATE `creature_template` SET `HealthMultiplier` = '1.45', `PowerMultiplier` = '2.5', `DamageMultiplier` = '2.0', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '8104', `MaxLevelHealth` = '8104', `MinLevelMana` = '7888', `MaxLevelMana` = '7888', `MinMeleeDmg` = '492', `MaxMeleeDmg` = '695', `MinRangedDmg` = '416', `MaxRangedDmg` = '619', `MeleeAttackPower` = '286.0', `RangedAttackPower` = '33.0', `Armor` = '5474.0' WHERE `entry` = '18663';
-- Maiden of Discipline (1) (20655)
UPDATE `creature_template` SET `HealthMultiplier` = '1.9574', `PowerMultiplier` = '2.5', `DamageMultiplier` = '9.5', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '10940', `MaxLevelHealth` = '10940', `MinLevelMana` = '7888', `MaxLevelMana` = '7888', `MinMeleeDmg` = '2226', `MaxMeleeDmg` = '3145', `MinRangedDmg` = '1883', `MaxRangedDmg` = '2802', `MeleeAttackPower` = '286.0', `RangedAttackPower` = '33.0', `Armor` = '5474.0' WHERE `entry` = '20655';


-- Malicious Instructor 18848 / 20656
UPDATE creature_template SET UnitFlags=32832 WHERE entry IN (18848,20656);
UPDATE creature_template SET LootId=18848, PickpocketLootId=18848 WHERE entry IN (18848,20656);
-- Malicious Instructor (18848)
UPDATE `creature_template` SET `HealthMultiplier` = '12.25', `PowerMultiplier` = '3.0', `DamageMultiplier` = '6.0', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '68465', `MaxLevelHealth` = '68465', `MinLevelMana` = '9465', `MaxLevelMana` = '9465', `MinMeleeDmg` = '844', `MaxMeleeDmg` = '1192', `MinRangedDmg` = '1189', `MaxRangedDmg` = '1770', `MeleeAttackPower` = '286.0', `RangedAttackPower` = '33.0', `Armor` = '5474.0' WHERE `entry` = '18848';
-- Malicious Instructor (1) (20656)
UPDATE `creature_template` SET `HealthMultiplier` = '16.5374', `PowerMultiplier` = '3.0', `DamageMultiplier` = '17.0', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '92428', `MaxLevelHealth` = '94991', `MinLevelMana` = '9465', `MaxLevelMana` = '9693', `MinMeleeDmg` = '2390', `MaxMeleeDmg` = '3434', `MinRangedDmg` = '3369', `MaxRangedDmg` = '5108', `MeleeAttackPower` = '290.0', `RangedAttackPower` = '37.0', `Armor` = '5714.0' WHERE `entry` = '20656';


-- Summoned Cabal Acolyte 19208 / 20660
UPDATE creature_template SET UnitFlags=32832 WHERE entry IN (19208,20660);
UPDATE creature_template SET LootId=19208 WHERE entry IN (19208,20660);
-- Summoned Cabal Acolyte (19208)
UPDATE `creature_template` SET `HealthMultiplier` = '3.0', `PowerMultiplier` = '3.0', `DamageMultiplier` = '4.7', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '16227', `MaxLevelHealth` = '16227', `MinLevelMana` = '9240', `MaxLevelMana` = '9240', `MinMeleeDmg` = '1053', `MaxMeleeDmg` = '1485', `MinRangedDmg` = '885', `MaxRangedDmg` = '1317', `MeleeAttackPower` = '282.0', `RangedAttackPower` = '32.0', `Armor` = '5235.0' WHERE `entry` = '19208';
-- Summoned Cabal Acolyte (1) (20660)
UPDATE `creature_template` SET `HealthMultiplier` = '4.05', `PowerMultiplier` = '3.0', `DamageMultiplier` = '9.0', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '22635', `MaxLevelHealth` = '22635', `MinLevelMana` = '9465', `MaxLevelMana` = '9465', `MinMeleeDmg` = '2109', `MaxMeleeDmg` = '2980', `MinRangedDmg` = '1784', `MaxRangedDmg` = '2654', `MeleeAttackPower` = '286.0', `RangedAttackPower` = '33.0', `Armor` = '5474.0' WHERE `entry` = '20660';


-- Summoned Cabal Deathsworn 19209 / 20661
UPDATE creature_template SET ModelId1=18589, ModelId2=18591, ModelId3=18592, ModelId4=0 WHERE entry IN (19209,20661);
UPDATE creature_template SET UnitFlags=32832 WHERE entry IN (19209,20661);
UPDATE creature_template SET LootId=19209 WHERE entry IN (19209,20661);
-- Summoned Cabal Deathsworn (19209)
UPDATE `creature_template` SET `HealthMultiplier` = '3.0', `PowerMultiplier` = '0', `DamageMultiplier` = '5.0', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '20283', `MaxLevelHealth` = '20283', `MinLevelMana` = '0', `MaxLevelMana` = '0', `MinMeleeDmg` = '1208', `MaxMeleeDmg` = '1706', `MinRangedDmg` = '1026', `MaxRangedDmg` = '1524', `MeleeAttackPower` = '298.0', `RangedAttackPower` = '43.0', `Armor` = '6492.0' WHERE `entry` = '19209';
-- Summoned Cabal Deathsworn (1) (20661)
UPDATE `creature_template` SET `HealthMultiplier` = '4.05', `PowerMultiplier` = '0', `DamageMultiplier` = '11.0', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '29083', `MaxLevelHealth` = '29083', `MinLevelMana` = '0', `MaxLevelMana` = '0', `MinMeleeDmg` = '2824', `MaxMeleeDmg` = '3994', `MinRangedDmg` = '2415', `MaxRangedDmg` = '3585', `MeleeAttackPower` = '308.0', `RangedAttackPower` = '48.0', `Armor` = '7089.0' WHERE `entry` = '20661';


-- Tortured Skeleton 18797 / 20662
UPDATE creature_template SET UnitFlags=32768 WHERE entry IN (18797,20662);
-- Tortured Skeleton (18797)
UPDATE `creature_template` SET `HealthMultiplier` = '0.4', `PowerMultiplier` = '0', `DamageMultiplier` = '2.0', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '2704', `MaxLevelHealth` = '2704', `MinLevelMana` = '0', `MaxLevelMana` = '0', `MinMeleeDmg` = '362', `MaxMeleeDmg` = '512', `MinRangedDmg` = '308', `MaxRangedDmg` = '457', `MeleeAttackPower` = '298.0', `RangedAttackPower` = '43.0', `Armor` = '6492.0' WHERE `entry` = '18797';
-- Tortured Skeleton (1) (20662)
UPDATE `creature_template` SET `HealthMultiplier` = '0.54', `PowerMultiplier` = '0', `DamageMultiplier` = '4.0', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '3772', `MaxLevelHealth` = '3772', `MinLevelMana` = '0', `MaxLevelMana` = '0', `MinMeleeDmg` = '1010', `MaxMeleeDmg` = '1428', `MinRangedDmg` = '861', `MaxRangedDmg` = '1279', `MeleeAttackPower` = '304.0', `RangedAttackPower` = '44.0', `Armor` = '6792.0' WHERE `entry` = '20662';


-- Void Traveler 19226 / 20664
-- Void Traveler (19226)
UPDATE `creature_template` SET `HealthMultiplier` = '0.5', `PowerMultiplier` = '0.5', `DamageMultiplier` = '2.0', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '2705', `MaxLevelHealth` = '2705', `MinLevelMana` = '1540', `MaxLevelMana` = '1540', `MinMeleeDmg` = '336', `MaxMeleeDmg` = '474', `MinRangedDmg` = '377', `MaxRangedDmg` = '560', `MeleeAttackPower` = '282.0', `RangedAttackPower` = '32.0', `Armor` = '5235.0' WHERE `entry` = '19226';
-- Void Traveler (1) (20664)
UPDATE `creature_template` SET `HealthMultiplier` = '0.625', `PowerMultiplier` = '0.5', `DamageMultiplier` = '3.0', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '3493', `MaxLevelHealth` = '3493', `MinLevelMana` = '1578', `MaxLevelMana` = '1578', `MinMeleeDmg` = '703', `MaxMeleeDmg` = '993', `MinRangedDmg` = '595', `MaxRangedDmg` = '885', `MeleeAttackPower` = '286.0', `RangedAttackPower` = '33.0', `Armor` = '5474.0' WHERE `entry` = '20664';



-- =================
-- Magisters Terrace - WE HAVE NO DAMAGE DATA FOR ANY OF THESE NPC - REQUIRE RESEARCH AND BETA TESTING TO FINE TUNE NPC BEFORE RELEASE
-- =================
-- Apoko 24553 / 25541
-- Apoko (24553)
UPDATE `creature_template` SET `HealthMultiplier` = '3.85', `PowerMultiplier` = '3.24', `DamageMultiplier` = '4.0', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.44319', `MinLevelHealth` = '21518', `MaxLevelHealth` = '21518', `MinLevelMana` = '10222', `MaxLevelMana` = '10222', `MinMeleeDmg` = '937', `MaxMeleeDmg` = '1324', `MinRangedDmg` = '793', `MaxRangedDmg` = '1180', `MeleeAttackPower` = '286.0', `RangedAttackPower` = '33.0', `Armor` = '7900.0' WHERE `entry` = '24553';
-- Apoko (1) (25541)
UPDATE `creature_template` SET `HealthMultiplier` = '5.25', `PowerMultiplier` = '3.24', `DamageMultiplier` = '12.0', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.44319', `MinLevelHealth` = '29342', `MaxLevelHealth` = '29342', `MinLevelMana` = '10222', `MaxLevelMana` = '10222', `MinMeleeDmg` = '2812', `MaxMeleeDmg` = '3973', `MinRangedDmg` = '2378', `MaxRangedDmg` = '3539', `MeleeAttackPower` = '286.0', `RangedAttackPower` = '33.0', `Armor` = '7900.0' WHERE `entry` = '25541';


-- Brightscale Wyrm 24761 / 25545
UPDATE creature_template SET UnitFlags=16 WHERE entry IN (24761,25545);
-- Brightscale Wyrm (24761)
UPDATE `creature_template` SET `HealthMultiplier` = '0.8', `PowerMultiplier` = '1.0', `DamageMultiplier` = '2.0', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '4471', `MaxLevelHealth` = '4471', `MinLevelMana` = '3155', `MaxLevelMana` = '3155', `MinMeleeDmg` = '281', `MaxMeleeDmg` = '397', `MinRangedDmg` = '396', `MaxRangedDmg` = '590', `MeleeAttackPower` = '286.0', `RangedAttackPower` = '33.0', `Armor` = '5474.0' WHERE `entry` = '24761';
-- Brightscale Wyrm (1) (25545)
UPDATE `creature_template` SET `HealthMultiplier` = '1.05', `PowerMultiplier` = '1.0', `DamageMultiplier` = '5.0', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '5868', `MaxLevelHealth` = '5868', `MinLevelMana` = '3155', `MaxLevelMana` = '3155', `MinMeleeDmg` = '703', `MaxMeleeDmg` = '993', `MinRangedDmg` = '991', `MaxRangedDmg` = '1475', `MeleeAttackPower` = '286.0', `RangedAttackPower` = '33.0', `Armor` = '5474.0' WHERE `entry` = '25545';


-- Coilskar Witch 24696 / 25547
UPDATE creature_template SET UnitFlags=32832 WHERE entry IN (24696,25547);
-- Coilskar Witch (24696)
UPDATE `creature_template` SET `HealthMultiplier` = '3.0', `PowerMultiplier` = '5.0', `DamageMultiplier` = '4.0', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '17232', `MaxLevelHealth` = '17232', `MinLevelMana` = '16155', `MaxLevelMana` = '16155', `MinMeleeDmg` = '953', `MaxMeleeDmg` = '1346', `MinRangedDmg` = '808', `MaxRangedDmg` = '1202', `MeleeAttackPower` = '290.0', `RangedAttackPower` = '37.0', `Armor` = '5714.0' WHERE `entry` = '24696';
-- Coilskar Witch (1) (25547)
UPDATE `creature_template` SET `HealthMultiplier` = '4.0', `PowerMultiplier` = '8.0', `DamageMultiplier` = '12.0', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '22976', `MaxLevelHealth` = '22976', `MinLevelMana` = '25848', `MaxLevelMana` = '25848', `MinMeleeDmg` = '2859', `MaxMeleeDmg` = '4039', `MinRangedDmg` = '2425', `MaxRangedDmg` = '3606', `MeleeAttackPower` = '290.0', `RangedAttackPower` = '37.0', `Armor` = '5714.0' WHERE `entry` = '25547';


-- Ellrys Duskhallow 24558 / 25549
-- Ellrys Duskhallow (24558)
UPDATE `creature_template` SET `HealthMultiplier` = '2.89', `PowerMultiplier` = '2.33', `DamageMultiplier` = '4.0', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '16152', `MaxLevelHealth` = '16152', `MinLevelMana` = '7351', `MaxLevelMana` = '7351', `MinMeleeDmg` = '937', `MaxMeleeDmg` = '1324', `MinRangedDmg` = '793', `MaxRangedDmg` = '1180', `MeleeAttackPower` = '286.0', `RangedAttackPower` = '33.0', `Armor` = '5474.0' WHERE `entry` = '24558';
-- Ellrys Duskhallow (1) (25549)
UPDATE `creature_template` SET `HealthMultiplier` = '4.0', `PowerMultiplier` = '6.0', `DamageMultiplier` = '12.0', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '22356', `MaxLevelHealth` = '22356', `MinLevelMana` = '18930', `MaxLevelMana` = '18930', `MinMeleeDmg` = '2812', `MaxMeleeDmg` = '3973', `MinRangedDmg` = '2378', `MaxRangedDmg` = '3539', `MeleeAttackPower` = '286.0', `RangedAttackPower` = '33.0', `Armor` = '5474.0' WHERE `entry` = '25549';


-- Eramas Brightblaze 24554 / 25550
UPDATE creature_template SET UnitFlags=32768 WHERE entry IN (24554,25550);
-- Eramas Brightblaze (24554)
UPDATE `creature_template` SET `HealthMultiplier` = '2.89', `PowerMultiplier` = '0', `DamageMultiplier` = '10.0', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '20190', `MaxLevelHealth` = '20190', `MinLevelMana` = '0', `MaxLevelMana` = '0', `MinMeleeDmg` = '1894', `MaxMeleeDmg` = '2678', `MinRangedDmg` = '2153', `MaxRangedDmg` = '3199', `MeleeAttackPower` = '304.0', `RangedAttackPower` = '44.0', `Armor` = '6792.0' WHERE `entry` = '24554';
-- Eramas Brightblaze (1) (25550)
UPDATE `creature_template` SET `HealthMultiplier` = '4.0', `PowerMultiplier` = '0', `DamageMultiplier` = '17.0', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '27944', `MaxLevelHealth` = '27944', `MinLevelMana` = '0', `MaxLevelMana` = '0', `MinMeleeDmg` = '3219', `MaxMeleeDmg` = '4552', `MinRangedDmg` = '3661', `MaxRangedDmg` = '5438', `MeleeAttackPower` = '304.0', `RangedAttackPower` = '44.0', `Armor` = '6792.0' WHERE `entry` = '25550';


-- Ethereum Smuggler 24698 / 25551
UPDATE creature_template SET UnitFlags=32832 WHERE entry IN (24698,25551);
UPDATE creature_template SET LootId=24698 WHERE entry IN (24698,25551);
-- Ethereum Smuggler (24698)
UPDATE `creature_template` SET `HealthMultiplier` = '3.0', `PowerMultiplier` = '0', `DamageMultiplier` = '5.5', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '21543', `MaxLevelHealth` = '21543', `MinLevelMana` = '0', `MaxLevelMana` = '0', `MinMeleeDmg` = '1412', `MaxMeleeDmg` = '1997', `MinRangedDmg` = '1208', `MaxRangedDmg` = '1793', `MeleeAttackPower` = '308.0', `RangedAttackPower` = '48.0', `Armor` = '7089.0' WHERE `entry` = '24698';
-- Ethereum Smuggler (1) (25551)
UPDATE `creature_template` SET `HealthMultiplier` = '4.0', `PowerMultiplier` = '0', `DamageMultiplier` = '12.25', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '28724', `MaxLevelHealth` = '28724', `MinLevelMana` = '0', `MaxLevelMana` = '0', `MinMeleeDmg` = '3145', `MaxMeleeDmg` = '4448', `MinRangedDmg` = '2690', `MaxRangedDmg` = '3993', `MeleeAttackPower` = '308.0', `RangedAttackPower` = '48.0', `Armor` = '7089.0' WHERE `entry` = '25551';


-- Fel Crystal 24722 / 25552
UPDATE creature_template SET UnitFlags=33816576 WHERE entry IN (24722,25552);
-- Fel Crystal (24722)
UPDATE `creature_template` SET `HealthMultiplier` = '0.9', `PowerMultiplier` = '0', `DamageMultiplier` = '1.0', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '6287', `MaxLevelHealth` = '6287', `MinLevelMana` = '0', `MaxLevelMana` = '0', `MinMeleeDmg` = '252', `MaxMeleeDmg` = '357', `MinRangedDmg` = '215', `MaxRangedDmg` = '320', `MeleeAttackPower` = '304.0', `RangedAttackPower` = '44.0', `Armor` = '6792.0' WHERE `entry` = '24722';
-- Fel Crystal (1) (25552)
UPDATE `creature_template` SET `HealthMultiplier` = '1.8', `PowerMultiplier` = '0', `DamageMultiplier` = '2.0', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '12575', `MaxLevelHealth` = '12575', `MinLevelMana` = '0', `MaxLevelMana` = '0', `MinMeleeDmg` = '505', `MaxMeleeDmg` = '714', `MinRangedDmg` = '431', `MaxRangedDmg` = '640', `MeleeAttackPower` = '304.0', `RangedAttackPower` = '44.0', `Armor` = '6792.0' WHERE `entry` = '25552';


-- Fizzle 24656 / 25553
-- Fizzle (24656)
UPDATE `creature_template` SET `HealthMultiplier` = '0.4', `PowerMultiplier` = '0.4', `DamageMultiplier` = '1.75', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '1956', `MaxLevelHealth` = '1956', `MinLevelMana` = '2878', `MaxLevelMana` = '2878', `MinMeleeDmg` = '343', `MaxMeleeDmg` = '498', `MinRangedDmg` = '316', `MaxRangedDmg` = '471', `MeleeAttackPower` = '135.0', `RangedAttackPower` = '28.0', `Armor` = '3427.0' WHERE `entry` = '24656';
-- Fizzle (1) (25553)
UPDATE `creature_template` SET `HealthMultiplier` = '0.36', `PowerMultiplier` = '0.4', `DamageMultiplier` = '3.0', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '1760', `MaxLevelHealth` = '1760', `MinLevelMana` = '2878', `MaxLevelMana` = '2878', `MinMeleeDmg` = '588', `MaxMeleeDmg` = '853', `MinRangedDmg` = '542', `MaxRangedDmg` = '807', `MeleeAttackPower` = '135.0', `RangedAttackPower` = '28.0', `Armor` = '3427.0' WHERE `entry` = '25553';


-- Garaxxas 24555 / 25555
-- Garaxxas (24555)
UPDATE `creature_template` SET `HealthMultiplier` = '3.85', `PowerMultiplier` = '3.24', `DamageMultiplier` = '6.0', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '21518', `MaxLevelHealth` = '21518', `MinLevelMana` = '10222', `MaxLevelMana` = '10222', `MinMeleeDmg` = '1406', `MaxMeleeDmg` = '1986', `MinRangedDmg` = '1189', `MaxRangedDmg` = '1770', `MeleeAttackPower` = '286.0', `RangedAttackPower` = '33.0', `Armor` = '5474.0' WHERE `entry` = '24555';
-- Garaxxas (1) (25555)
UPDATE `creature_template` SET `HealthMultiplier` = '5.25', `PowerMultiplier` = '4.0', `DamageMultiplier` = '13.5', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '29342', `MaxLevelHealth` = '29342', `MinLevelMana` = '12620', `MaxLevelMana` = '12620', `MinMeleeDmg` = '3163', `MaxMeleeDmg` = '4469', `MinRangedDmg` = '2676', `MaxRangedDmg` = '3981', `MeleeAttackPower` = '286.0', `RangedAttackPower` = '33.0', `Armor` = '5474.0' WHERE `entry` = '25555';


-- Kagani Nightstrike 24557 / 25556
-- Kagani Nightstrike (24557)
UPDATE `creature_template` SET `HealthMultiplier` = '2.89', `PowerMultiplier` = '0', `DamageMultiplier` = '5.0', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '20190', `MaxLevelHealth` = '20190', `MinLevelMana` = '0', `MaxLevelMana` = '0', `MinMeleeDmg` = '947', `MaxMeleeDmg` = '1339', `MinRangedDmg` = '1077', `MaxRangedDmg` = '1599', `MeleeAttackPower` = '304.0', `RangedAttackPower` = '44.0', `Armor` = '6792.0' WHERE `entry` = '24557';
-- Kagani Nightstrike (1) (25556)
UPDATE `creature_template` SET `HealthMultiplier` = '4.0', `PowerMultiplier` = '0', `DamageMultiplier` = '16.0', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '27944', `MaxLevelHealth` = '27944', `MinLevelMana` = '0', `MaxLevelMana` = '0', `MinMeleeDmg` = '3030', `MaxMeleeDmg` = '4284', `MinRangedDmg` = '3445', `MaxRangedDmg` = '5118', `MeleeAttackPower` = '304.0', `RangedAttackPower` = '44.0', `Armor` = '6792.0' WHERE `entry` = '25556';


-- Nether Energy 24781 / 25557
-- Nether Energy (24781)
UPDATE `creature_template` SET `HealthMultiplier` = '3.0', `PowerMultiplier` = '0', `DamageMultiplier` = '1.0', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '20958', `MaxLevelHealth` = '20958', `MinLevelMana` = '0', `MaxLevelMana` = '0', `MinMeleeDmg` = '252', `MaxMeleeDmg` = '357', `MinRangedDmg` = '215', `MaxRangedDmg` = '320', `MeleeAttackPower` = '304.0', `RangedAttackPower` = '44.0', `Armor` = '6792.0' WHERE `entry` = '24781';
-- Nether Energy (1) (25557)
UPDATE `creature_template` SET `HealthMultiplier` = '3.0', `PowerMultiplier` = '0', `DamageMultiplier` = '2.0', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '20958', `MaxLevelHealth` = '20958', `MinLevelMana` = '0', `MaxLevelMana` = '0', `MinMeleeDmg` = '505', `MaxMeleeDmg` = '714', `MinRangedDmg` = '431', `MaxRangedDmg` = '640', `MeleeAttackPower` = '304.0', `RangedAttackPower` = '44.0', `Armor` = '6792.0' WHERE `entry` = '25557';


-- Sister of Torment 24697 / 25563
UPDATE creature_template SET UnitFlags=32832 WHERE entry IN (24697,25563);
-- Sister of Torment (24697)
UPDATE `creature_template` SET `HealthMultiplier` = '3.0', `PowerMultiplier` = '5.0', `DamageMultiplier` = '3.5', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '17232', `MaxLevelHealth` = '17232', `MinLevelMana` = '16155', `MaxLevelMana` = '16155', `MinMeleeDmg` = '834', `MaxMeleeDmg` = '1178', `MinRangedDmg` = '707', `MaxRangedDmg` = '1052', `MeleeAttackPower` = '290.0', `RangedAttackPower` = '37.0', `Armor` = '5714.0' WHERE `entry` = '24697';
-- Sister of Torment (1) (25563)
UPDATE `creature_template` SET `HealthMultiplier` = '4.0', `PowerMultiplier` = '5.0', `DamageMultiplier` = '13.0', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '22976', `MaxLevelHealth` = '22976', `MinLevelMana` = '16155', `MaxLevelMana` = '16155', `MinMeleeDmg` = '3097', `MaxMeleeDmg` = '4376', `MinRangedDmg` = '2627', `MaxRangedDmg` = '3906', `MeleeAttackPower` = '290.0', `RangedAttackPower` = '37.0', `Armor` = '5714.0' WHERE `entry` = '25563';


-- Sliver 24552 / 25564
UPDATE creature_template SET ModelId1=20284, ModelId2=0, ModelId3=20284, ModelId4=0 WHERE entry IN (24552,25564);
-- Sliver (24552)
UPDATE `creature_template` SET `HealthMultiplier` = '1.65', `PowerMultiplier` = '0', `DamageMultiplier` = '5.0', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '11527', `MaxLevelHealth` = '11527', `MinLevelMana` = '0', `MaxLevelMana` = '0', `MinMeleeDmg` = '947', `MaxMeleeDmg` = '1339', `MinRangedDmg` = '1077', `MaxRangedDmg` = '1599', `MeleeAttackPower` = '304.0', `RangedAttackPower` = '44.0', `Armor` = '6792.0' WHERE `entry` = '24552';
-- Sliver (1) (25564)
UPDATE `creature_template` SET `HealthMultiplier` = '2.25', `PowerMultiplier` = '0', `DamageMultiplier` = '12.0', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '15719', `MaxLevelHealth` = '15719', `MinLevelMana` = '0', `MaxLevelMana` = '0', `MinMeleeDmg` = '2272', `MaxMeleeDmg` = '3213', `MinRangedDmg` = '2584', `MaxRangedDmg` = '3838', `MeleeAttackPower` = '304.0', `RangedAttackPower` = '44.0', `Armor` = '6792.0' WHERE `entry` = '25564';


-- Sunblade Blood Knight 24684 / 25565
UPDATE creature_template SET UnitFlags=32832 WHERE entry IN (24684,25565);
-- Sunblade Blood Knight (24684)
UPDATE `creature_template` SET `HealthMultiplier` = '3.62', `PowerMultiplier` = '5.0', `DamageMultiplier` = '8.0', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '20232', `MaxLevelHealth` = '20232', `MinLevelMana` = '15775', `MaxLevelMana` = '15775', `MinMeleeDmg` = '1875', `MaxMeleeDmg` = '2649', `MinRangedDmg` = '1585', `MaxRangedDmg` = '2359', `MeleeAttackPower` = '286.0', `RangedAttackPower` = '33.0', `Armor` = '5474.0' WHERE `entry` = '24684';
-- Sunblade Blood Knight (1) (25565)
UPDATE `creature_template` SET `HealthMultiplier` = '4.82', `PowerMultiplier` = '5.0', `DamageMultiplier` = '13.5', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '26939', `MaxLevelHealth` = '26939', `MinLevelMana` = '15775', `MaxLevelMana` = '15775', `MinMeleeDmg` = '3163', `MaxMeleeDmg` = '4469', `MinRangedDmg` = '2676', `MaxRangedDmg` = '3981', `MeleeAttackPower` = '286.0', `RangedAttackPower` = '33.0', `Armor` = '5474.0' WHERE `entry` = '25565';


-- Sunblade Imp 24815 / 25566
-- Sunblade Imp (24815)
UPDATE `creature_template` SET `HealthMultiplier` = '0.65', `PowerMultiplier` = '1.0', `DamageMultiplier` = '1.0', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '1843', `MaxLevelHealth` = '1843', `MinLevelMana` = '7196', `MaxLevelMana` = '7196', `MinMeleeDmg` = '88', `MaxMeleeDmg` = '123', `MinRangedDmg` = '73', `MaxRangedDmg` = '107', `MeleeAttackPower` = '135.0', `RangedAttackPower` = '28.0', `Armor` = '3427.0' WHERE `entry` = '24815';
-- Sunblade Imp (1) (25566)
UPDATE `creature_template` SET `HealthMultiplier` = '0.9', `PowerMultiplier` = '1.0', `DamageMultiplier` = '6.0', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '4401', `MaxLevelHealth` = '4401', `MinLevelMana` = '7196', `MaxLevelMana` = '7196', `MinMeleeDmg` = '1176', `MaxMeleeDmg` = '1706', `MinRangedDmg` = '1084', `MaxRangedDmg` = '1614', `MeleeAttackPower` = '135.0', `RangedAttackPower` = '28.0', `Armor` = '3427.0' WHERE `entry` = '25566';


-- Sunblade Keeper 24762 / 25567
UPDATE creature_template SET UnitFlags=32832 WHERE entry IN (24762,25567);
-- Sunblade Keeper (1) (25567)
UPDATE `creature_template` SET `HealthMultiplier` = '4.0', `PowerMultiplier` = '1.0', `DamageMultiplier` = '13.0', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '21636', `MaxLevelHealth` = '21636', `MinLevelMana` = '3080', `MaxLevelMana` = '3080', `MinMeleeDmg` = '2913', `MaxMeleeDmg` = '4107', `MinRangedDmg` = '2449', `MaxRangedDmg` = '3643', `MeleeAttackPower` = '282.0', `RangedAttackPower` = '32.0', `Armor` = '5235.0' WHERE `entry` = '25567';
-- Sunblade Keeper (1) (25567)
UPDATE `creature_template` SET `HealthMultiplier` = '4.0', `PowerMultiplier` = '1.0', `DamageMultiplier` = '16.0', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '21636', `MaxLevelHealth` = '21636', `MinLevelMana` = '3080', `MaxLevelMana` = '3080', `MinMeleeDmg` = '3585', `MaxMeleeDmg` = '5055', `MinRangedDmg` = '3014', `MaxRangedDmg` = '4484', `MeleeAttackPower` = '282.0', `RangedAttackPower` = '32.0', `Armor` = '5235.0' WHERE `entry` = '25567';


-- Sunblade Mage Guard 24683 / 25568
UPDATE creature_template SET UnitFlags=32832 WHERE entry IN (24683,25568);
-- Sunblade Mage Guard (24683)
UPDATE `creature_template` SET `HealthMultiplier` = '3.62', `PowerMultiplier` = '5.0', `DamageMultiplier` = '4.0', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '20232', `MaxLevelHealth` = '20232', `MinLevelMana` = '15775', `MaxLevelMana` = '15775', `MinMeleeDmg` = '937', `MaxMeleeDmg` = '1324', `MinRangedDmg` = '793', `MaxRangedDmg` = '1180', `MeleeAttackPower` = '286.0', `RangedAttackPower` = '33.0', `Armor` = '5474.0' WHERE `entry` = '24683';
-- Sunblade Mage Guard (1) (25568)
UPDATE `creature_template` SET `HealthMultiplier` = '4.82', `PowerMultiplier` = '5.0', `DamageMultiplier` = '13.0', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '26939', `MaxLevelHealth` = '26939', `MinLevelMana` = '15775', `MaxLevelMana` = '15775', `MinMeleeDmg` = '3046', `MaxMeleeDmg` = '4304', `MinRangedDmg` = '2576', `MaxRangedDmg` = '3834', `MeleeAttackPower` = '286.0', `RangedAttackPower` = '33.0', `Armor` = '5474.0' WHERE `entry` = '25568';


-- Sunblade Magister 24685 / 25569
UPDATE creature_template SET UnitFlags=32832 WHERE entry IN (24685,25569);
-- Sunblade Magister (24685)
UPDATE `creature_template` SET `HealthMultiplier` = '2.9', `PowerMultiplier` = '5.0', `DamageMultiplier` = '4.0', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '16208', `MaxLevelHealth` = '16208', `MinLevelMana` = '15775', `MaxLevelMana` = '15775', `MinMeleeDmg` = '937', `MaxMeleeDmg` = '1324', `MinRangedDmg` = '793', `MaxRangedDmg` = '1180', `MeleeAttackPower` = '286.0', `RangedAttackPower` = '33.0', `Armor` = '5474.0' WHERE `entry` = '24685';
-- Sunblade Magister (1) (25569)
UPDATE `creature_template` SET `HealthMultiplier` = '4.0', `PowerMultiplier` = '5.0', `DamageMultiplier` = '12.0', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '22356', `MaxLevelHealth` = '22356', `MinLevelMana` = '15775', `MaxLevelMana` = '15775', `MinMeleeDmg` = '2812', `MaxMeleeDmg` = '3973', `MinRangedDmg` = '2378', `MaxRangedDmg` = '3539', `MeleeAttackPower` = '286.0', `RangedAttackPower` = '33.0', `Armor` = '5474.0' WHERE `entry` = '25569';


-- Sunblade Physician 24687 / 25570
UPDATE creature_template SET UnitFlags=32832 WHERE entry IN (24687,25570);
-- Sunblade Physician (24687)
UPDATE `creature_template` SET `HealthMultiplier` = '3.0', `PowerMultiplier` = '5.0', `DamageMultiplier` = '5.5', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '16767', `MaxLevelHealth` = '16767', `MinLevelMana` = '15775', `MaxLevelMana` = '15775', `MinMeleeDmg` = '1289', `MaxMeleeDmg` = '1821', `MinRangedDmg` = '1090', `MaxRangedDmg` = '1622', `MeleeAttackPower` = '286.0', `RangedAttackPower` = '33.0', `Armor` = '5474.0' WHERE `entry` = '24687';
-- Sunblade Physician (1) (25570)
UPDATE `creature_template` SET `HealthMultiplier` = '4.0', `PowerMultiplier` = '5.0', `DamageMultiplier` = '13.0', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '22356', `MaxLevelHealth` = '22356', `MinLevelMana` = '15775', `MaxLevelMana` = '15775', `MinMeleeDmg` = '3046', `MaxMeleeDmg` = '4304', `MinRangedDmg` = '2576', `MaxRangedDmg` = '3834', `MeleeAttackPower` = '286.0', `RangedAttackPower` = '33.0', `Armor` = '5474.0' WHERE `entry` = '25570';


-- Sunblade Sentinel 24777 / 25571
UPDATE creature_template SET UnitFlags=32832, DamageSchool=2 WHERE entry IN (24777,25571);
-- Sunblade Sentinel (24777)
UPDATE `creature_template` SET `HealthMultiplier` = '9.2', `PowerMultiplier` = '0', `DamageMultiplier` = '8.0', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '66065', `MaxLevelHealth` = '66065', `MinLevelMana` = '0', `MaxLevelMana` = '0', `MinMeleeDmg` = '2054', `MaxMeleeDmg` = '2905', `MinRangedDmg` = '1757', `MaxRangedDmg` = '2607', `MeleeAttackPower` = '308.0', `RangedAttackPower` = '48.0', `Armor` = '7089.0' WHERE `entry` = '24777';
-- Sunblade Sentinel (1) (25571)
UPDATE `creature_template` SET `HealthMultiplier` = '12.0', `PowerMultiplier` = '0', `DamageMultiplier` = '18.0', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '86172', `MaxLevelHealth` = '86172', `MinLevelMana` = '0', `MaxLevelMana` = '0', `MinMeleeDmg` = '4621', `MaxMeleeDmg` = '6535', `MinRangedDmg` = '3952', `MaxRangedDmg` = '5867', `MeleeAttackPower` = '308.0', `RangedAttackPower` = '48.0', `Armor` = '7089.0' WHERE `entry` = '25571';


-- Sunblade Warlock 24686 / 25572
UPDATE creature_template SET UnitFlags=32832 WHERE entry IN (24686,25572);
-- Sunblade Warlock (24686)
UPDATE `creature_template` SET `HealthMultiplier` = '3.0', `PowerMultiplier` = '5.0', `DamageMultiplier` = '3.5', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '16767', `MaxLevelHealth` = '16767', `MinLevelMana` = '15775', `MaxLevelMana` = '15775', `MinMeleeDmg` = '820', `MaxMeleeDmg` = '1159', `MinRangedDmg` = '694', `MaxRangedDmg` = '1032', `MeleeAttackPower` = '286.0', `RangedAttackPower` = '33.0', `Armor` = '5474.0' WHERE `entry` = '24686';
-- Sunblade Warlock (1) (25572)
UPDATE `creature_template` SET `HealthMultiplier` = '4.0', `PowerMultiplier` = '5.0', `DamageMultiplier` = '12.5', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '22356', `MaxLevelHealth` = '22356', `MinLevelMana` = '15775', `MaxLevelMana` = '15775', `MinMeleeDmg` = '2929', `MaxMeleeDmg` = '4138', `MinRangedDmg` = '2477', `MaxRangedDmg` = '3687', `MeleeAttackPower` = '286.0', `RangedAttackPower` = '33.0', `Armor` = '5474.0' WHERE `entry` = '25572';


-- Warlord Salaris 24559 / 25574
UPDATE creature_template SET UnitFlags=32768 WHERE entry IN (24559,25574);
-- Warlord Salaris (24559)
UPDATE `creature_template` SET `HealthMultiplier` = '3.85', `PowerMultiplier` = '0', `DamageMultiplier` = '4.2', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '26896', `MaxLevelHealth` = '26896', `MinLevelMana` = '0', `MaxLevelMana` = '0', `MinMeleeDmg` = '1909', `MaxMeleeDmg` = '2699', `MinRangedDmg` = '904', `MaxRangedDmg` = '1343', `MeleeAttackPower` = '304.0', `RangedAttackPower` = '44.0', `Armor` = '6792.0' WHERE `entry` = '24559';
-- Warlord Salaris (1) (25574)
UPDATE `creature_template` SET `HealthMultiplier` = '5.25', `PowerMultiplier` = '0', `DamageMultiplier` = '8.0', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '36677', `MaxLevelHealth` = '36677', `MinLevelMana` = '0', `MaxLevelMana` = '0', `MinMeleeDmg` = '3636', `MaxMeleeDmg` = '5141', `MinRangedDmg` = '1723', `MaxRangedDmg` = '2559', `MeleeAttackPower` = '304.0', `RangedAttackPower` = '44.0', `Armor` = '6792.0' WHERE `entry` = '25574';


-- Wretched Bruiser 24689 / 25575
UPDATE creature_template SET UnitFlags=32832 WHERE entry IN (24689,25575);
-- Wretched Bruiser (24689)
UPDATE `creature_template` SET `HealthMultiplier` = '2.5', `PowerMultiplier` = '0', `DamageMultiplier` = '4.5', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '16903', `MaxLevelHealth` = '16903', `MinLevelMana` = '0', `MaxLevelMana` = '0', `MinMeleeDmg` = '1087', `MaxMeleeDmg` = '1535', `MinRangedDmg` = '923', `MaxRangedDmg` = '1371', `MeleeAttackPower` = '298.0', `RangedAttackPower` = '43.0', `Armor` = '6492.0' WHERE `entry` = '24689';
-- Wretched Bruiser (1) (25575)
UPDATE `creature_template` SET `HealthMultiplier` = '3.5', `PowerMultiplier` = '0', `DamageMultiplier` = '12.0', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '23664', `MaxLevelHealth` = '23664', `MinLevelMana` = '0', `MaxLevelMana` = '0', `MinMeleeDmg` = '2900', `MaxMeleeDmg` = '4094', `MinRangedDmg` = '2463', `MaxRangedDmg` = '3657', `MeleeAttackPower` = '298.0', `RangedAttackPower` = '43.0', `Armor` = '6492.0' WHERE `entry` = '25575';


-- Wretched Husk 24690 / 25576
UPDATE creature_template SET UnitFlags=32832 WHERE entry IN (24690,25576);
-- Wretched Husk (24690)
UPDATE `creature_template` SET `HealthMultiplier` = '2.5', `PowerMultiplier` = '5.0', `DamageMultiplier` = '4.5', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '13523', `MaxLevelHealth` = '13523', `MinLevelMana` = '15400', `MaxLevelMana` = '15400', `MinMeleeDmg` = '1008', `MaxMeleeDmg` = '1422', `MinRangedDmg` = '848', `MaxRangedDmg` = '1261', `MeleeAttackPower` = '282.0', `RangedAttackPower` = '32.0', `Armor` = '5235.0' WHERE `entry` = '24690';
-- Wretched Husk (1) (25576)
UPDATE `creature_template` SET `HealthMultiplier` = '3.5', `PowerMultiplier` = '5.0', `DamageMultiplier` = '12.0', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '18932', `MaxLevelHealth` = '18932', `MinLevelMana` = '15400', `MaxLevelMana` = '15400', `MinMeleeDmg` = '2689', `MaxMeleeDmg` = '3792', `MinRangedDmg` = '2260', `MaxRangedDmg` = '3363', `MeleeAttackPower` = '282.0', `RangedAttackPower` = '32.0', `Armor` = '5235.0' WHERE `entry` = '25576';


-- Wretched Skulker 24688 / 25577
UPDATE creature_template SET UnitFlags=32832 WHERE entry IN (24688,25577);
-- Wretched Skulker (24688)
UPDATE `creature_template` SET `HealthMultiplier` = '2.5', `PowerMultiplier` = '0', `DamageMultiplier` = '4.0', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '16903', `MaxLevelHealth` = '16903', `MinLevelMana` = '0', `MaxLevelMana` = '0', `MinMeleeDmg` = '967', `MaxMeleeDmg` = '1365', `MinRangedDmg` = '821', `MaxRangedDmg` = '1219', `MeleeAttackPower` = '298.0', `RangedAttackPower` = '43.0', `Armor` = '6492.0' WHERE `entry` = '24688';
-- Wretched Skulker (1) (25577)
UPDATE `creature_template` SET `HealthMultiplier` = '3.5', `PowerMultiplier` = '0', `DamageMultiplier` = '11.0', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '23664', `MaxLevelHealth` = '23664', `MinLevelMana` = '0', `MaxLevelMana` = '0', `MinMeleeDmg` = '2658', `MaxMeleeDmg` = '3753', `MinRangedDmg` = '2257', `MaxRangedDmg` = '3352', `MeleeAttackPower` = '298.0', `RangedAttackPower` = '43.0', `Armor` = '6492.0' WHERE `entry` = '25577';


-- Yazzai 24561 / 25578
UPDATE creature_template SET UnitFlags=32768 WHERE entry IN (24561,25578);
-- Yazzai (24561)
UPDATE `creature_template` SET `HealthMultiplier` = '3.85', `PowerMultiplier` = '4.0', `DamageMultiplier` = '4.0', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '21518', `MaxLevelHealth` = '21518', `MinLevelMana` = '12620', `MaxLevelMana` = '12620', `MinMeleeDmg` = '937', `MaxMeleeDmg` = '1324', `MinRangedDmg` = '793', `MaxRangedDmg` = '1180', `MeleeAttackPower` = '286.0', `RangedAttackPower` = '33.0', `Armor` = '5474.0' WHERE `entry` = '24561';
-- Yazzai (1) (25578)
UPDATE `creature_template` SET `HealthMultiplier` = '5.25', `PowerMultiplier` = '6.0', `DamageMultiplier` = '12.0', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '29342', `MaxLevelHealth` = '29342', `MinLevelMana` = '18930', `MaxLevelMana` = '18930', `MinMeleeDmg` = '2812', `MaxMeleeDmg` = '3973', `MinRangedDmg` = '2378', `MaxRangedDmg` = '3539', `MeleeAttackPower` = '286.0', `RangedAttackPower` = '33.0', `Armor` = '5474.0' WHERE `entry` = '25578';


-- Zelfan 24556 / 25579
UPDATE creature_template SET UnitFlags=32768 WHERE entry IN (24556,25579);
-- Zelfan (24556)
UPDATE `creature_template` SET `HealthMultiplier` = '2.89', `PowerMultiplier` = '2.72', `DamageMultiplier` = '3.0', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '16152', `MaxLevelHealth` = '16152', `MinLevelMana` = '8582', `MaxLevelMana` = '8582', `MinMeleeDmg` = '703', `MaxMeleeDmg` = '993', `MinRangedDmg` = '595', `MaxRangedDmg` = '885', `MeleeAttackPower` = '286.0', `RangedAttackPower` = '33.0', `Armor` = '5474.0' WHERE `entry` = '24556';
-- Zelfan (1) (25579)
UPDATE `creature_template` SET `HealthMultiplier` = '4.0', `PowerMultiplier` = '4.0', `DamageMultiplier` = '10.0', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '22356', `MaxLevelHealth` = '22356', `MinLevelMana` = '12620', `MaxLevelMana` = '12620', `MinMeleeDmg` = '2343', `MaxMeleeDmg` = '3311', `MinRangedDmg` = '1982', `MaxRangedDmg` = '2949', `MeleeAttackPower` = '286.0', `RangedAttackPower` = '33.0', `Armor` = '5474.0' WHERE `entry` = '25579';





