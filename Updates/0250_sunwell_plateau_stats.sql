-- ============================================================================================================================================================================
-- Sunwell Plateau
-- ============================================================================================================================================================================

-- Kalecgos 24850+ (332.5H/40D)
UPDATE `creature_template` SET `HealthMultiplier` = '475', `MinLevelHealth` = '2883250', `MaxLevelHealth` = '2883250' WHERE `entry` = '24850';
-- Sathrovarr the Corruptor 24892+ (332.5H/50D)
UPDATE `creature_template` SET `HealthMultiplier` = '475', `MinLevelHealth` = '2883250', `MaxLevelHealth` = '2883250' WHERE `entry` = '24892';
-- Kalecgos 24891+ (136.5H/1.3D)
UPDATE `creature_template` SET `HealthMultiplier` = '195', `MinLevelHealth` = '1183650', `MaxLevelHealth` = '1183650', `DamageMultiplier` = '10' WHERE `entry` = '24891';
-- Brutallus 24882+ (968.8H/111D)
UPDATE `creature_template` SET `HealthMultiplier` = '1384', `MinLevelHealth` = '10501792', `MaxLevelHealth` = '10501792' WHERE `entry` = '24882';
-- Felmyst 25038+ (807.8H/41D)
UPDATE `creature_template` SET `HealthMultiplier` = '1154', `MinLevelHealth` = '7004780', `MaxLevelHealth` = '7004780' WHERE `entry` = '25038';
-- Unyielding Dead 25268+ (3.5H/1D)
UPDATE `creature_template` SET `HealthMultiplier` = '5', `MinLevelHealth` = '34930', `MaxLevelHealth` = '34930', `DamageMultiplier` = '8' WHERE `entry` = '25268';
-- Lady Sacrolash 25165+ (332.5H/21D)
UPDATE `creature_template` SET `HealthMultiplier` = '475', `MinLevelHealth` = '2883250', `MaxLevelHealth` = '2883250' WHERE `entry` = '25165';
-- Grand Warlock Alythess 25166+ (332.5H/21D)
UPDATE `creature_template` SET `HealthMultiplier` = '475', `MinLevelHealth` = '2883250', `MaxLevelHealth` = '2883250' WHERE `entry` = '25166';
-- M'uru 25741+ (252H/9D) - health decreased in 2.4.3 to 360 (2731680)
UPDATE `creature_template` SET `HealthMultiplier` = '360.0', `MinLevelHealth` = '2731680', `MaxLevelHealth` = '2731680' WHERE `entry` = '25741';
-- Entropius 25840+ (189H/11D) - health decreased in 2.4.3 to 270 (2048760)
UPDATE `creature_template` SET `HealthMultiplier` = '270.0', `MinLevelHealth` = '2048760', `MaxLevelHealth` = '2048760', `DamageMultiplier` = '66' WHERE `entry` = '25840'; -- D should be ~80 - physical - 6 to 8k on tank
-- Shadowsword Berserker 25798+ (11.97H/10D) - health decreased in 2.4.3 to 17.25
UPDATE `creature_template` SET `HealthMultiplier` = '19', `MinLevelHealth` = '123872', `MaxLevelHealth` = '123872', `DamageMultiplier` = '30' WHERE `entry` = '25798'; -- D should be ~40 - physical
-- Shadowsword Fury Mage 25799+ (12.6H/8D) - health decreased in 2.4.3 to 18
UPDATE `creature_template` SET `HealthMultiplier` = '20.0', `MinLevelHealth` = '103392', `MaxLevelHealth` = '103392', `DamageMultiplier` = '24' WHERE `entry` = '25799'; -- D should be ~32 - physical
-- Void Sentinel 25772+ (17.5H/20D) - no documented nerf
UPDATE `creature_template` SET `HealthMultiplier` = '25', `MinLevelHealth` = '174650', `MaxLevelHealth` = '174650', `DamageMultiplier` = '24' WHERE `entry` = '25772'; -- D - shadow damage - 8 to 10k on tank
-- Void Sentinal Summoner+ 25782 (0.945H/1D)
UPDATE `creature_template` SET `HealthMultiplier` = '1.35', `MinLevelHealth` = '9431', `MaxLevelHealth` = '9431' WHERE `entry` = '25782';
-- Void Spawn 25824+ (2.4349H/2.3D)
UPDATE `creature_template` SET `HealthMultiplier` = '3.4784', `MinLevelHealth` = '24300', `MaxLevelHealth` = '24300' WHERE `entry` = '25824';
-- Dark Fiend 25744+ (0.7H/1D)
UPDATE `creature_template` SET `HealthMultiplier` = '1', `MinLevelHealth` = '4050', `MaxLevelHealth` = '4050' WHERE `entry` = '25744';
-- Darkness 25879+ (0.7H/1D)
UPDATE `creature_template` SET `HealthMultiplier` = '1', `MinLevelHealth` = '6986', `MaxLevelHealth` = '6986' WHERE `entry` = '25879';
-- Kil'jaeden <The Deceiver> 25315+ (1540H/18.75D)
UPDATE `creature_template` SET `HealthMultiplier` = '2200', `MinLevelHealth` = '13354000', `MaxLevelHealth` = '13354000' WHERE `entry` = '25315';
-- Hand of the Deceiver 25588+ (24.5H/7D)
UPDATE `creature_template` SET `HealthMultiplier` = '35', `MinLevelHealth` = '206605', `MaxLevelHealth` = '206605', `DamageMultiplier` = '35' WHERE `entry` = '25588'; -- ~12k to 18k unmitigated
-- Felfire Portal 25603+ (0.007H/1D)
UPDATE `creature_template` SET `HealthMultiplier` = '0.01', `MinLevelHealth` = '43', `MaxLevelHealth` = '43' WHERE `entry` = '25603';
-- Volatile Felfire Fiend 25598+ (0.182H/9.5D)
UPDATE `creature_template` SET `HealthMultiplier` = '0.26', `MinLevelHealth` = '1493', `MaxLevelHealth` = '1493' WHERE `entry` = '25598';
-- Sinister Reflection 25708+ (14H/1D)
UPDATE `creature_template` SET `HealthMultiplier` = '20', `MinLevelHealth` = '111780', `MaxLevelHealth` = '111780', `DamageMultiplier` = '30' WHERE `entry` = '25708'; -- dmgmulti kw
-- Shield Orb 25502+ (2.002H/1D)
UPDATE `creature_template` SET `HealthMultiplier` = '2.86', `MinLevelHealth` = '19980', `MaxLevelHealth` = '19980' WHERE `entry` = '25502';
-- Kalecgos 25319+ (297.5H/1D)
UPDATE `creature_template` SET `HealthMultiplier` = '425', `MinLevelHealth` = '2579750', `MaxLevelHealth` = '2579750' WHERE `entry` = '25319';

-- ============================
-- Trash
-- ============================

-- Sunblade Cabalist 25363+ (24.5H/8D)
UPDATE `creature_template` SET `HealthMultiplier` = '35', `MinLevelHealth` = '195615', `MaxLevelHealth` = '195615', `DamageMultiplier` = '16' WHERE `entry` = '25363';
-- Sunblade Arch Mage 25367+ (24.5H/1.75D)
UPDATE `creature_template` SET `HealthMultiplier` = '35', `MinLevelHealth` = '195615', `MaxLevelHealth` = '195615', `DamageMultiplier` = '16' WHERE `entry` = '25367';
-- Sunblade Slayer 25368+ (24.5H/14D)
UPDATE `creature_template` SET `HealthMultiplier` = '35', `MinLevelHealth` = '244510', `MaxLevelHealth` = '244510', `DamageMultiplier` = '42' WHERE `entry` = '25368';
-- Sunblade Vindicator 25369+ (24.5H/35D)
UPDATE `creature_template` SET `HealthMultiplier` = '35', `MinLevelHealth` = '244510', `MaxLevelHealth` = '244510', `DamageMultiplier` = '42' WHERE `entry` = '25369';
-- Sunblade Dusk Priest 25370+ (24.5H/8D)
UPDATE `creature_template` SET `HealthMultiplier` = '35', `MinLevelHealth` = '195615', `MaxLevelHealth` = '195615', `DamageMultiplier` = '16' WHERE `entry` = '25370';
-- Sunblade Dawn Priest 25371+ (24.5H/8D)
UPDATE `creature_template` SET `HealthMultiplier` = '35', `MinLevelHealth` = '195615', `MaxLevelHealth` = '195615', `DamageMultiplier` = '16' WHERE `entry` = '25371';
-- Sunblade Scout 25372+ (2.1H/9D)
UPDATE `creature_template` SET `HealthMultiplier` = '3', `MinLevelHealth` = '20958', `MaxLevelHealth` = '20958' WHERE `entry` = '25372';
-- Shadowsword Soulbinder 25373+ (24.5H/8D)
UPDATE `creature_template` SET `HealthMultiplier` = '35', `MinLevelHealth` = '201040', `MaxLevelHealth` = '201040', `DamageMultiplier` = '16' WHERE `entry` = '25373';
-- Shadowsword Manafiend 25483+ (24.5H/10.5D)
UPDATE `creature_template` SET `HealthMultiplier` = '35', `MinLevelHealth` = '201040', `MaxLevelHealth` = '201040', `DamageMultiplier` = '16' WHERE `entry` = '25483';
-- Shadowsword Assassin 25484+ (24.5H/25D)
UPDATE `creature_template` SET `HealthMultiplier` = '35', `MinLevelHealth` = '251335', `MaxLevelHealth` = '251335', `DamageMultiplier` = '36' WHERE `entry` = '25484';
-- Shadowsword Deathbringer 25485+ (24.5H/17D)
UPDATE `creature_template` SET `HealthMultiplier` = '35', `MinLevelHealth` = '251335', `MaxLevelHealth` = '251335', `DamageMultiplier` = '34' WHERE `entry` = '25485';
-- Shadowsword Vanquisher 25486+ (24.5H/42D)
UPDATE `creature_template` SET `HealthMultiplier` = '35', `MinLevelHealth` = '251335', `MaxLevelHealth` = '251335' WHERE `entry` = '25486';
-- Shadowsword Lifeshaper 25506+ (24.5H/8D)
UPDATE `creature_template` SET `HealthMultiplier` = '35', `MinLevelHealth` = '201040', `MaxLevelHealth` = '201040', `DamageMultiplier` = '16' WHERE `entry` = '25506';
-- Sunblade Protector 25507+ (52.5H/30D)
UPDATE `creature_template` SET `HealthMultiplier` = '75', `MinLevelHealth` = '553500', `MaxLevelHealth` = '553500', `DamageMultiplier` = '60' WHERE `entry` = '25507';
-- Shadowsword Guardian 25508+ (70H/10D)
UPDATE `creature_template` SET `HealthMultiplier` = '100', `MinLevelHealth` = '738000', `MaxLevelHealth` = '738000', `DamageMultiplier` = '70' WHERE `entry` = '25508';
-- Priestess of Torment 25509+ (24.5H/10D)
UPDATE `creature_template` SET `HealthMultiplier` = '35', `MinLevelHealth` = '251335', `MaxLevelHealth` = '251335', `DamageMultiplier` = '42' WHERE `entry` = '25509';
-- Painbringer 25591+ (24.5H/24D)
UPDATE `creature_template` SET `HealthMultiplier` = '35', `MinLevelHealth` = '251335', `MaxLevelHealth` = '251335', `DamageMultiplier` = '48' WHERE `entry` = '25591';
-- Doomfire Destroyer 25592+ (28H/40D)
UPDATE `creature_template` SET `HealthMultiplier` = '40', `MinLevelHealth` = '287240', `MaxLevelHealth` = '287240', `DamageMultiplier` = '44' WHERE `entry` = '25592';
-- Apocalypse Guard 25593+ (48.125H/18.5D)
UPDATE `creature_template` SET `HealthMultiplier` = '68.75', `MinLevelHealth` = '493694', `MaxLevelHealth` = '493694', `DamageMultiplier` = '46.25' WHERE `entry` = '25593';
-- Chaos Gazer 25595+ (53.2H/11.5D)
UPDATE `creature_template` SET `HealthMultiplier` = '76', `MinLevelHealth` = '545756', `MaxLevelHealth` = '545756', `DamageMultiplier` = '35' WHERE `entry` = '25595';
-- Oblivion Mage 25597+ (24.5H/11.5D)
UPDATE `creature_template` SET `HealthMultiplier` = '35', `MinLevelHealth` = '201040', `MaxLevelHealth` = '201040', `DamageMultiplier` = '27' WHERE `entry` = '25597';
-- Cataclysm Hound 25599+ (60.2H/22.5D)
UPDATE `creature_template` SET `HealthMultiplier` = '86', `MinLevelHealth` = '617566', `MaxLevelHealth` = '617566', `DamageMultiplier` = '50' WHERE `entry` = '25599';
-- Shadowsword Commander 25837+ (24.5H/17D)
UPDATE `creature_template` SET `HealthMultiplier` = '35', `MinLevelHealth` = '251335', `MaxLevelHealth` = '251335', `DamageMultiplier` = '36' WHERE `entry` = '25837';
-- Volatile Fiend 25851+ (1.4H/6.5D)
UPDATE `creature_template` SET `HealthMultiplier` = '2', `MinLevelHealth` = '11488', `MaxLevelHealth` = '11488' WHERE `entry` = '25851';
-- Blazing Infernal 25860+ (9.1H/12D)
UPDATE `creature_template` SET `HealthMultiplier` = '13', `MinLevelHealth` = '90818', `MaxLevelHealth` = '90818' WHERE `entry` = '25860';
-- Felguard Slayer 25864+ (9.1H/1D)
UPDATE `creature_template` SET `HealthMultiplier` = '13', `MinLevelHealth` = '90818', `MaxLevelHealth` = '90818', `DamageMultiplier` = '18', `MinLevel` = '70', `MaxLevel` = '70', `Expansion` = '1' WHERE `entry` = '25864';
-- Sunblade Dragonhawk 25867+ (14H/12.25D)
UPDATE `creature_template` SET `HealthMultiplier` = '20', `MinLevelHealth` = '139720', `MaxLevelHealth` = '139720', `DamageMultiplier` = '24.5' WHERE `entry` = '25867';
-- Doomfire Shard 25948+ (5.6H/20D)
UPDATE `creature_template` SET `HealthMultiplier` = '8', `MinLevelHealth` = '57448', `MaxLevelHealth` = '57448' WHERE `entry` = '25948';
-- Fire Fiend 26101+ (1.4H/1D)
UPDATE `creature_template` SET `HealthMultiplier` = '2', `MinLevelHealth` = '11178', `MaxLevelHealth` = '11178', `DamageMultiplier` = '3' WHERE `entry` = '26101';

