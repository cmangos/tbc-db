-- Befor, the groupid of a reference_loot_template referenced towards the items inside the reference_loot_template
-- Now, the groupid for a reference_loot_template is the same as for items, abiding to the 100% chance rule inside the primary loot table.
-- We will also have to check for cases, where groupid = 1 and other items also having groupid = 1
-- Same for refloots where groupid != 0 or 1 as it no longer rolles for explicit items inside the refloot which have this corresponding groupid

-- Linked Core Commits:
-- https://github.com/cmangos/mangos-tbc/commit/e9aa973fd979b5fe801a4c3a6c9011c7fc0170b4
-- https://github.com/cmangos/mangos-tbc/commit/ca97309fa842e1287661d30009910ac15554a87d
-- https://github.com/cmangos/mangos-tbc/commit/1ebd794f68a58ff7a093d2e4d4b3e6fdf05943f2

-- 17711	Doomwalker
-- Table 'creature_loot_template' entry 17711 group 1 has total chance > 100% (200.000000)
UPDATE `creature_loot_template` SET `groupid` = 0 WHERE `entry` = 17711 AND `mincountOrRef` IN (-36202,-36203);
UPDATE `reference_loot_template` SET `groupid` = 1 WHERE `entry` IN (36202,36203);

-- 18728	Doom Lord Kazzak
-- Table 'creature_loot_template' entry 18728 group 1 has total chance > 100% (200.000000)
UPDATE `creature_loot_template` SET `groupid` = 0 WHERE `entry` = 18728 AND `mincountOrRef` IN (-36204,-36205);
UPDATE `reference_loot_template` SET `groupid` = 1 WHERE `entry` IN (36204,36205);

-- 18805	High Astromancer Solarian
-- Table 'creature_loot_template' entry 18805 group 1 has total chance > 100% (300.000000)
UPDATE `creature_loot_template` SET `groupid` = 0 WHERE `entry` = 18805 AND `mincountOrRef` IN (-36005,-36006,-36007);
UPDATE `reference_loot_template` SET `groupid` = 1 WHERE `entry` IN (36005,36006,36007);

-- 19514	Al'ar
-- Table 'creature_loot_template' entry 19514 group 1 has total chance > 100% (300.000000)
UPDATE `creature_loot_template` SET `groupid` = 0 WHERE `entry` = 19514 AND `mincountOrRef` IN (-36000,-36001,-36002);
UPDATE `reference_loot_template` SET `groupid` = 1 WHERE `entry` IN (36000,36001,36002);

-- 19516	Void Reaver
-- Table 'creature_loot_template' entry 19516 group 1 has total chance > 100% (200.000000)
UPDATE `creature_loot_template` SET `groupid` = 0 WHERE `entry` = 19516 AND `mincountOrRef` IN (-36003,-36004);
UPDATE `reference_loot_template` SET `groupid` = 1 WHERE `entry` IN (36003,36004);

-- 19622	Kael'thas Sunstrider
-- Table 'creature_loot_template' entry 19622 group 1 has total chance > 100% (400.000000)
UPDATE `creature_loot_template` SET `groupid` = 0 WHERE `entry` = 19622 AND `item` = 30183; -- Nether Vortex
UPDATE `creature_loot_template` SET `groupid` = 0 WHERE `entry` = 19622 AND `mincountOrRef` IN (-36008,-36009,-36010);
UPDATE `reference_loot_template` SET `groupid` = 1 WHERE `entry` IN (36008,36009,36010);

-- 21212	Lady Vashj
-- Table 'creature_loot_template' entry 21212 group 1 has total chance > 100% (400.000000)
UPDATE `creature_loot_template` SET `groupid` = 0 WHERE `entry` = 21212 AND `item` = 30183; -- Nether Vortex
UPDATE `creature_loot_template` SET `groupid` = 0 WHERE `entry` = 21212 AND `mincountOrRef` IN (-36024,-36025,-36026);
UPDATE `reference_loot_template` SET `groupid` = 1 WHERE `entry` IN (36024,36025,36026);

-- 21213	Morogrim Tidewalker
-- Table 'creature_loot_template' entry 21213 group 1 has total chance > 100% (300.000000)
UPDATE `creature_loot_template` SET `groupid` = 0 WHERE `entry` = 21213 AND `mincountOrRef` IN (-36017,-36018,-36019);
UPDATE `reference_loot_template` SET `groupid` = 1 WHERE `entry` IN (36017,36018,36019);

-- 21214	Fathom-Lord Karathress
-- Table 'creature_loot_template' entry 21214 group 1 has total chance > 100% (200.000000)
UPDATE `creature_loot_template` SET `groupid` = 0 WHERE `entry` = 21214 AND `mincountOrRef` IN (-36022,-36023);
UPDATE `reference_loot_template` SET `groupid` = 1 WHERE `entry` IN (36022,36023);

-- 21215	Leotheras the Blind
-- Table 'creature_loot_template' entry 21215 group 1 has total chance > 100% (200.000000)
UPDATE `creature_loot_template` SET `groupid` = 0 WHERE `entry` = 21215 AND `mincountOrRef` IN (-36020,-36021);
UPDATE `reference_loot_template` SET `groupid` = 1 WHERE `entry` IN (36020,36021);

-- 21216	Hydross the Unstable
-- Table 'creature_loot_template' entry 21216 group 1 has total chance > 100% (300.000000)
UPDATE `creature_loot_template` SET `groupid` = 0 WHERE `entry` = 21216 AND `mincountOrRef` IN (-36011,-36012,-36013);
UPDATE `reference_loot_template` SET `groupid` = 1 WHERE `entry` IN (36011,36012,36013);

-- 21217	The Lurker Below
-- Table 'creature_loot_template' entry 21217 group 1 has total chance > 100% (300.000000)
UPDATE `creature_loot_template` SET `groupid` = 0 WHERE `entry` = 21217 AND `mincountOrRef` IN (-36014,-36015,-36016);
UPDATE `reference_loot_template` SET `groupid` = 1 WHERE `entry` IN (36014,36015,36016);

-- 22930	Yor
-- Table 'creature_loot_template' entry 22930 group 1 has total chance > 100% (170.000000)
UPDATE `creature_loot_template` SET `groupid` = 0 WHERE `entry` = 22930 AND `mincountOrRef` IN (-40109,-40114);
UPDATE `reference_loot_template` SET `groupid` = 1 WHERE `entry` IN (40109,40114);