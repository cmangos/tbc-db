-- Correct Factions for AV Mine Npcs
-- Coldtooth Mine NPCs

-- Kobolds
UPDATE `creature_template` SET `Faction`=26 WHERE `entry` IN (
11603,22778, -- Whitewhisker Digger
11604,22779, -- Whitewhisker Geomancer
11677,22694 -- Taskmaster Snivvle
);

-- Alliance
UPDATE `creature_template` SET `Faction`=1216 WHERE `entry` IN (
13086,22670, -- Aggi Rumblestomp
13087,22731, -- Coldmine Invader
13096,22729, -- Coldmine Explorer
13317,22732, -- Coldmine Miner
13546,22751, -- Seasoned Coldmine Explorer
13547,22770, -- Veteran Coldmine Explorer
13548,22529, -- Champion Coldmine Explorer
13549,22753, -- Seasoned Coldmine Invader
13550,22772, -- Veteran Coldmine Invader
13551,22531 -- Champion Coldmine Invader
);

-- Horde
UPDATE `creature_template` SET `Faction`=1214 WHERE `entry` IN (
13088,22684, -- Masha Swiftcut
13089,22730, -- Coldmine Guard
13097,22734, -- Coldmine Surveyor
13316,22733, -- Coldmine Peon
13534,22752, -- Seasoned Coldmine Guard
13535,22771, -- Veteran Coldmine Guard
13536,22530, -- Champion Coldmine Guard
13537,22754, -- Seasoned Coldmine Surveyor
13538,22773, -- Veteran Coldmine Surveyor
13539,22532 -- Champion Coldmine Surveyor
);

-- Irondeep Mine NPCs

-- Alliance
UPDATE `creature_template` SET `Faction`=1216 WHERE `entry` IN (
13078,22696, -- Umi Thorson
13080,22743, -- Irondeep Guard
13098,22749, -- Irondeep Surveyor
13396,22744, -- Irondeep Miner
13552,22756, -- Seasoned Irondeep Guard
13553,22775, -- Veteran Irondeep Guard
13554,22535, -- Champion Irondeep Guard
13555,22758, -- Seasoned Irondeep Surveyor
13556,22777, -- Veteran Irondeep Surveyor
13557,22537 -- Champion Irondeep Surveyor
);

-- Horde
UPDATE `creature_template` SET `Faction`=1214 WHERE `entry` IN (
13079,22683, -- Keetar
13081,22746, -- Irondeep Raider
13099,22741, -- Irondeep Explorer
13397,22745, -- Irondeep Peon
13540,22755, -- Seasoned Irondeep Explorer
13541,22774, -- Veteran Irondeep Explorer
13542,22534, -- Champion Irondeep Explorer
13543,22757, -- Seasoned Irondeep Raider
13544,22776, -- Veteran Irondeep Raider
13545,22536 -- Champion Irondeep Raider
);

-- TBC+ Add HeroicEntry as this should be the one used for Level 70 version of AV
-- not implemented yet for Alteracvallye to use HeroicEntry as DifficultyValue for 60/70 version of AV
UPDATE `creature_template` SET `HeroicEntry` = 22778 WHERE `entry` = 11603;
UPDATE `creature_template` SET `HeroicEntry` = 22779 WHERE `entry` = 11604;
UPDATE `creature_template` SET `HeroicEntry` = 22694 WHERE `entry` = 11677;

UPDATE `creature_template` SET `HeroicEntry` = 22670 WHERE `entry` = 13086;
UPDATE `creature_template` SET `HeroicEntry` = 22731 WHERE `entry` = 13087;
UPDATE `creature_template` SET `HeroicEntry` = 22729 WHERE `entry` = 13096;
UPDATE `creature_template` SET `HeroicEntry` = 22732 WHERE `entry` = 13317;
UPDATE `creature_template` SET `HeroicEntry` = 22751 WHERE `entry` = 13546;
UPDATE `creature_template` SET `HeroicEntry` = 22770 WHERE `entry` = 13547;
UPDATE `creature_template` SET `UnitClass` = 2 WHERE `entry` = 13547; -- 2021-07-28 18:53:56 Creature (Entry: 13547, class 1) has different `unit_class` in heroic mode (Entry: 22770, class 2).
UPDATE `creature_template` SET `HeroicEntry` = 22529 WHERE `entry` = 13548;
UPDATE `creature_template` SET `HeroicEntry` = 22753 WHERE `entry` = 13549;
UPDATE `creature_template` SET `HeroicEntry` = 22772 WHERE `entry` = 13550;
UPDATE `creature_template` SET `HeroicEntry` = 22531 WHERE `entry` = 13551;

UPDATE `creature_template` SET `HeroicEntry` = 22684 WHERE `entry` = 13088;
UPDATE `creature_template` SET `HeroicEntry` = 22730 WHERE `entry` = 13089;
UPDATE `creature_template` SET `HeroicEntry` = 22734 WHERE `entry` = 13097;
UPDATE `creature_template` SET `HeroicEntry` = 22733 WHERE `entry` = 13316;
UPDATE `creature_template` SET `HeroicEntry` = 22752 WHERE `entry` = 13534;
UPDATE `creature_template` SET `HeroicEntry` = 22771 WHERE `entry` = 13535;
UPDATE `creature_template` SET `HeroicEntry` = 22530 WHERE `entry` = 13536;
UPDATE `creature_template` SET `HeroicEntry` = 22754 WHERE `entry` = 13537;
UPDATE `creature_template` SET `HeroicEntry` = 22773 WHERE `entry` = 13538;
UPDATE `creature_template` SET `HeroicEntry` = 22532 WHERE `entry` = 13539;
UPDATE `creature_template` SET `UnitClass` = 2 WHERE `entry` = 22532; -- 2021-07-28 18:53:56 Creature (Entry: 13539, class 2) has different `unit_class` in heroic mode (Entry: 22532, class 1).

UPDATE `creature_template` SET `HeroicEntry` = 22750 WHERE `entry` = 10987;
UPDATE `creature_template` SET `HeroicEntry` = 22747 WHERE `entry` = 11600;
UPDATE `creature_template` SET `HeroicEntry` = 22748 WHERE `entry` = 11602;

UPDATE `creature_template` SET `HeroicEntry` = 22696 WHERE `entry` = 13078;
UPDATE `creature_template` SET `HeroicEntry` = 22743 WHERE `entry` = 13080;
UPDATE `creature_template` SET `HeroicEntry` = 22749 WHERE `entry` = 13098;
UPDATE `creature_template` SET `HeroicEntry` = 22744 WHERE `entry` = 13396;
UPDATE `creature_template` SET `HeroicEntry` = 22756 WHERE `entry` = 13552;
UPDATE `creature_template` SET `HeroicEntry` = 22775 WHERE `entry` = 13553;
UPDATE `creature_template` SET `HeroicEntry` = 22535 WHERE `entry` = 13554;
UPDATE `creature_template` SET `HeroicEntry` = 22758 WHERE `entry` = 13555;
UPDATE `creature_template` SET `HeroicEntry` = 22777 WHERE `entry` = 13556;
UPDATE `creature_template` SET `HeroicEntry` = 22537 WHERE `entry` = 13557;
UPDATE `creature_template` SET `UnitClass` = 2 WHERE `entry` = 22537; -- 2021-07-28 18:53:56 Creature (Entry: 13557, class 2) has different `unit_class` in heroic mode (Entry: 22537, class 1).
UPDATE `creature_template` SET `HeroicEntry` = 22683 WHERE `entry` = 13079;
UPDATE `creature_template` SET `HeroicEntry` = 22746 WHERE `entry` = 13081;
UPDATE `creature_template` SET `HeroicEntry` = 22741 WHERE `entry` = 13099;
UPDATE `creature_template` SET `HeroicEntry` = 22745 WHERE `entry` = 13397;
UPDATE `creature_template` SET `HeroicEntry` = 22755 WHERE `entry` = 13540;
UPDATE `creature_template` SET `UnitClass` = 2 WHERE `entry` = 13540; -- 2021-07-28 18:53:56 Creature (Entry: 13540, class 1) has different `unit_class` in heroic mode (Entry: 22755, class 2).
UPDATE `creature_template` SET `HeroicEntry` = 22774 WHERE `entry` = 13541;
UPDATE `creature_template` SET `HeroicEntry` = 22534 WHERE `entry` = 13542;
UPDATE `creature_template` SET `HeroicEntry` = 22757 WHERE `entry` = 13543;
UPDATE `creature_template` SET `HeroicEntry` = 22776 WHERE `entry` = 13544;
UPDATE `creature_template` SET `HeroicEntry` = 22536 WHERE `entry` = 13545;
-- End of migration.

