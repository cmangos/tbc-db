-- ============================================================================================================================================================
-- creature_template which need adjustments to their CLS Stats (wotlk-db) values
-- ============================================================================================================================================================

-- =====================================================================================================
-- Map: 0 Eastern Kingdoms / 1 Kalimdor / Classic
-- =====================================================================================================
UPDATE `creature_template` SET `DamageMultiplier` = 1 WHERE `entry` = 1043; -- Lost Whelp 9.5
UPDATE `creature_template` SET `DamageMultiplier` = 4 WHERE `entry` = 1061; -- Gan'zulah 5
UPDATE `creature_template` SET `DamageMultiplier` = 1.5 WHERE `entry` = 1490; -- Zanzil Witch Doctor 2.5
UPDATE `creature_template` SET `DamageMultiplier` = 1 WHERE `entry` = 2462; -- Flesh Eating Worm 2
UPDATE `creature_template` SET `MinLevel` = 44, `MaxLevel` = 45, `UnitFlags` = 32768, `HealthMultiplier` = 1.2, `DamageMultiplier` = 1, `MinLevelHealth` = 2138, `MaxLevelHealth` = 2218, `MinMeleeDmg` = 76, `MaxMeleeDmg` = 100, `MinRangedDmg` = 52, `MaxRangedDmg` = 76, `Armor` = 2695, `MeleeAttackPower` = 184, `RangedAttackPower` = 17 WHERE `entry` = 5295; -- Enraged Feral Scar 5295
UPDATE `creature_template` SET `DamageMultiplier` = 1 WHERE `entry` = 7768; -- Witherbark Bloodling 2
UPDATE `creature_template` SET `DamageMultiplier` = 1 WHERE `entry` = 7769; -- Hazzali Parasite 2
UPDATE `creature_template` SET `DamageMultiplier` = 2.5 WHERE `entry` = 8201; -- Omgorn the Lost 5
UPDATE `creature_template` SET `DamageMultiplier` = 1.6 WHERE `entry` = 12418; -- Gordok Hyena 2.6
UPDATE `creature_template` SET `DamageMultiplier` = 7 WHERE `entry` = 15333; -- Silicate Feeder 14
UPDATE `creature_template` SET `DamageMultiplier` = 5 WHERE `entry` = 16534; -- Inoculated Nestlewood Owlkin 10
UPDATE `creature_template` SET `DamageMultiplier` = 1.85 WHERE `entry` = 17716; -- Sangrias Stillblade 2.85


-- =====================================================================================================
-- Map: 269 The Black Morass
-- =====================================================================================================
-- update stats for new creatures now in use after fixes

-- Rift Lord (21140)
UPDATE creature_template SET MinLevel=71, MaxLevel=71, HealthMultiplier=5.568, DamageMultiplier=4, MinLevelHealth=39984, MaxLevelHealth=39984, MinMeleeDmg=1027, MaxMeleeDmg=1452, MinRangedDmg=878, MaxRangedDmg=1304, Armor=7089, MeleeAttackPower=308, RangedAttackPower=48, MinLootGold=2880, MaxLootGold=3766, LootId=17839, SkinningLootId=70065, MechanicImmuneMask=1034927867 WHERE entry=21140;
-- Rift Lord (1) (22172)
UPDATE creature_template SET HealthMultiplier=18.561, DamageMultiplier=10, ArmorMultiplier=1, MinLevelHealth=133286, MaxLevelHealth=133286, MinMeleeDmg=2567, MaxMeleeDmg=3631, MinRangedDmg=2196, MaxRangedDmg=3259, Armor=7089, MeleeAttackPower=308, RangedAttackPower=48, MeleeBaseAttackTime=2000, LootId=20744, MechanicImmuneMask=1034927867 WHERE entry=22172;
-- Rift Keeper (21148)
UPDATE creature_template SET MinLevel=71, MaxLevel=71, HealthMultiplier=6.96, DamageMultiplier=4, ArmorMultiplier=1, MinLevelHealth=39978, MaxLevelHealth=39978, MinLevelMana=32310, MaxLevelMana=32310, MinMeleeDmg=953, MaxMeleeDmg=1346, MinRangedDmg=808, MaxRangedDmg=1202, Armor=5714, MeleeAttackPower=290, RangedAttackPower=37, MinLootGold=2285, MaxLootGold=2989, SkinningLootId=70065, MechanicImmuneMask=1034927867 WHERE entry=21148;
-- Rift Keeper (1) (22171)
UPDATE creature_template SET MinLevel=71, MaxLevel=71, HealthMultiplier=23.205, DamageMultiplier=10, MinLevelHealth=133290, MaxLevelHealth=133290, MinLevelMana=32310, MaxLevelMana=32310, MinMeleeDmg=2382, MaxMeleeDmg=3366, MinRangedDmg=2021, MaxRangedDmg=3005, Armor=5714, RangedAttackPower=37, MechanicImmuneMask=1034927867 WHERE entry=22171;
-- Infinite Assassin (21137)
UPDATE creature_template SET DamageMultiplier=2.3, MinMeleeDmg=581, MaxMeleeDmg=821, MinRangedDmg=495, MaxRangedDmg=736, MeleeAttackPower=304, RangedAttackPower=44, MeleeBaseAttackTime=2000, MovementType=0 WHERE entry=21137;
-- Infinite Assassin (1) (22164)
UPDATE creature_template SET DamageMultiplier=7, MinMeleeDmg=1767, MaxMeleeDmg=2499, MinRangedDmg=1507, MaxRangedDmg=2239, MeleeAttackPower=304, RangedAttackPower=44 WHERE entry=22164;
-- Infinite Chronomancer (21136)
UPDATE creature_template SET DamageMultiplier=2.5, MinMeleeDmg=586, MaxMeleeDmg=828, MinRangedDmg=495, MaxRangedDmg=737, MeleeAttackPower=286, RangedAttackPower=33, MeleeBaseAttackTime=2000, MovementType=0 WHERE entry=21136;
-- Infinite Chronomancer (1) (22165)
UPDATE creature_template SET MeleeAttackPower=286, RangedAttackPower=33 WHERE entry=22165;
-- Infinite Executioner (21138)
UPDATE creature_template SET MinLevel=70, MaxLevel=70, HealthMultiplier=1.25, DamageMultiplier=2.5, ArmorMultiplier=1, MinLevelHealth=6986, MaxLevelHealth=6986, MinLevelMana=9465, MaxLevelMana=9465, MinMeleeDmg=410, MaxMeleeDmg=579, MinRangedDmg=471, MaxRangedDmg=700, Armor=5474, MeleeAttackPower=286, RangedAttackPower=33, MeleeBaseAttackTime=1400, RangedBaseAttackTime=1900, MovementType=0 WHERE entry=21138;
-- Infinite Executioner (1) (22166)
UPDATE creature_template SET HealthMultiplier=2.5, DamageMultiplier=8, MinLevelHealth=13973, MaxLevelHealth=13973, MinMeleeDmg=1312, MaxMeleeDmg=1854, MinRangedDmg=1506, MaxRangedDmg=2241, MeleeAttackPower=286, RangedAttackPower=33, MeleeBaseAttackTime=1400, RangedBaseAttackTime=1900 WHERE entry=22166;
-- Infinite Vanquisher (21139)
UPDATE creature_template SET MinLevel=70, MaxLevel=70, HealthMultiplier=1.25, DamageMultiplier=2, ArmorMultiplier=1, MinLevelHealth=6986, MaxLevelHealth=6986, MinLevelMana=9465, MaxLevelMana=9465, MinMeleeDmg=328, MaxMeleeDmg=463, MinRangedDmg=377, MaxRangedDmg=560, Armor=5474, MeleeAttackPower=286, RangedAttackPower=33, MovementType=0 WHERE entry=21139;
-- Infinite Vanquisher (1) (22168)
UPDATE creature_template SET HealthMultiplier=2, DamageMultiplier=5, MinLevelHealth=11178, MaxLevelHealth=11178, MinMeleeDmg=820, MaxMeleeDmg=1159, MinRangedDmg=941, MaxRangedDmg=1401, MeleeAttackPower=286, RangedAttackPower=33, MeleeBaseAttackTime=1400, RangedBaseAttackTime=1900 WHERE entry=22168;


-- =====================================================================================================
-- Map: 530 Outland
-- =====================================================================================================
UPDATE creature_template SET UnitFlags=32768, DamageMultiplier=1, MinMeleeDmg=5, MaxMeleeDmg=6, MinRangedDmg=3, MaxRangedDmg=4, MeleeAttackPower=28, Armor=109 WHERE entry=15367; -- Felendren the Banished 4.6
UPDATE `creature_template` SET `DamageMultiplier` = 1.3 WHERE `entry` = 19881; -- Severed Spirit 2.3
UPDATE `creature_template` SET `DamageMultiplier` = 1.1 WHERE `entry` = 20496; -- Kirin'Var Spectre 2.1



-- =====================================================================================================
-- Map: 532 Karazhan
-- =====================================================================================================


-- =====================================================================================================
-- Map: 534 Hyjal Summit
-- =====================================================================================================


-- =====================================================================================================
-- Map: 540 The Shattered Halls
-- =====================================================================================================


-- =====================================================================================================
-- Map: 542 The Blood Furnace
-- =====================================================================================================


-- =====================================================================================================
-- Map: 543 Hellfire Ramparts
-- =====================================================================================================


-- =====================================================================================================
-- Map: 544 Magtheridon's Lair
-- =====================================================================================================


-- =====================================================================================================
-- Map: 545 The Steamvault
-- =====================================================================================================


-- =====================================================================================================
-- Map: 546 The Underbog
-- =====================================================================================================


-- =====================================================================================================
-- Map: 547 The Slave Pens
-- =====================================================================================================


-- =====================================================================================================
-- Map: 548 Serpentshrine Cavern
-- =====================================================================================================


-- =====================================================================================================
-- Map: 550 The Eye
-- =====================================================================================================


-- =====================================================================================================
-- Map: 552 The Arcatraz
-- =====================================================================================================


-- =====================================================================================================
-- Map: 553 The Botanica
-- =====================================================================================================


-- =====================================================================================================
-- Map: 554 The Mechanar
-- =====================================================================================================


-- =====================================================================================================
-- Map: 555 Shadow Labyrinth
-- =====================================================================================================


-- =====================================================================================================
-- Map: 556 Sethekk Halls
-- =====================================================================================================


-- =====================================================================================================
-- Map: 557 Mana-Tombs
-- =====================================================================================================


-- =====================================================================================================
-- Map: 558 Auchenai Crypts
-- =====================================================================================================


-- =====================================================================================================
-- Map: 560 Old Hillsbrad Foothills
-- =====================================================================================================


-- =====================================================================================================
-- Map: 564 Black Temple
-- =====================================================================================================


-- =====================================================================================================
-- Map: 565 Gruul's Lair
-- =====================================================================================================


-- =====================================================================================================
-- Map: 568 Zul'Aman
-- =====================================================================================================


-- =====================================================================================================
-- Map: 580 Sunwell Plateau
-- =====================================================================================================


-- =====================================================================================================
-- Map: 585 Magisters' Terrace
-- =====================================================================================================

