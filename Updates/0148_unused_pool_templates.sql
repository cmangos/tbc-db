-- Remove Empty Pool Templates
DELETE FROM `pool_template` WHERE `entry` = 6008; -- Mineral Spawn Point 9 - Redridge Mountians (Main Section) -> Rethban Caverns Node

-- https://github.com/cmangos/tbc-db/commit/5d0db11be45443834e799e266a19f9bf1fa568ca
DELETE FROM `pool_template` WHERE `entry` = 7393; -- Desolace Node in Mulgore
DELETE FROM `pool_template` WHERE `entry` = 7394; -- Desolace Node in Mulgore
DELETE FROM `pool_template` WHERE `entry` = 7395; -- Desolace Node in Mulgore
DELETE FROM `pool_template` WHERE `entry` = 7399; -- Desolace Node in Mulgore
DELETE FROM `pool_template` WHERE `entry` = 7400; -- Desolace Node in Mulgore
DELETE FROM `pool_template` WHERE `entry` = 7402; -- Desolace Node in Mulgore
DELETE FROM `pool_template` WHERE `entry` = 7404; -- Desolace Node in Mulgore

-- https://github.com/cmangos/tbc-db/commit/518f91cc292f133c04a696c514960d6eda015a0a#diff-bf064b2f85efdc9277875b3d249627f5596a54b0d094dd6089e348968755492aR225
DELETE FROM `pool_template` WHERE `entry` = 9274; -- Rocket Car Rubble - Spawn 6 - https://github.com/cmangos/tbc-db/commit/7a7438ca064733526da58a231fe35777c1d0c440
DELETE FROM `pool_template` WHERE `entry` = 25484; -- LBRS - Inconspicuous Documents -> Instance File
DELETE FROM `pool_template` WHERE `entry` = 25564; -- Alterac Mountains - Lo'Grosh (Rare) - 1003	1	Lo'Grosh (2453) Duplicate
-- https://github.com/cmangos/tbc-db/commit/babcf5f03a87c4abdb92d3c971be94b77dff43ee
DELETE FROM `pool_template` WHERE `entry` = 31019; -- Blasted Lands - Chest Pool - o.13978,56704,55524 are in Swamp of Sorrows (Stagalbog Cave) not Blasted Lands
DELETE FROM `pool_template` WHERE `entry` = 31030; -- Duskwood (Forlorn Rowe) - Chest Pool - o.15672 is in Duskwood (Dawning Wood Catacombs) not (Forlorn Rowe)
DELETE FROM `pool_template` WHERE `entry` = 31050; -- Dustwallow Marsh - Chest Pool - o.40758 is in Dustwallow Marsh (Emberstrife''s Den) and o.55802 is in Dustwallow Marsh (Darkmist Cavern)
DELETE FROM `pool_template` WHERE `entry` = 31080; -- Stranglethorn Vale (The Cape of Stranglethorn) - Chest Pool - o.55533 is in Stranglethorn Vale
DELETE FROM `pool_template` WHERE `entry` = 31081; -- Alterac Mountains (The Headland) - Chest Pool - o.30033 & 55505 are in Hillsbrad Foothills (Darrow Hill)
DELETE FROM `pool_template` WHERE `entry` = 31102; -- Arathi Highlands - Chest Pool - objects are all in Area pools instead
DELETE FROM `pool_template` WHERE `entry` = 31130; -- Thousand Needles - Chest Pool - o.16715 in (Roguefeather Den) o.55947 in (Splithoof Hold)
DELETE FROM `pool_template` WHERE `entry` = 31138; -- Desolace - Chest Pool - o.30178 in (Bolgan''s Hole)
DELETE FROM `pool_template` WHERE `entry` = 31218; -- The Barrens (Southern Barrens) - Chest Pool - o.14618 is in Dustwallow Marsh (Darkmist Cavern)
DELETE FROM `pool_template` WHERE `entry` = 31217; -- The Barrens (Razorfen Downs) - Chest Pool - o.16720 is in Thousand Needles (Splithoof Hold)
DELETE FROM `pool_template` WHERE `entry` = 31239; -- Dun Morogh (Chill Breeze Valley) - Chest Pool - objects are in Dun Morogh (The Grizzled Den)
DELETE FROM `pool_template` WHERE `entry` IN (31177,31197,31238,31263); -- Dun Morogh - Chest Pool / Redridge Mountains - Chest Pool / Darkshore - Chest Pool / Tirisfal Glades - Chest Pool - objects are in area pools
DELETE FROM `pool_template` WHERE `entry` IN (39925,39931,39932); -- no chests found in these zones, so maybe there are none

-- Pool Template Id (39935) is empty. - 39935	0	Deadwind Pass - Master Chest Pool
-- Pool Template Id (39938) is empty. - 39938	0	Moonglade - Master Chest Pool
-- Pool Template Id (39939) is empty. - 39939	0	Silithus - Master Chest Pool
-- Pool Template Id (39951) is empty. - 39951	0	Isle of Quel'Danas - Master Chest Pool
DELETE FROM `pool_template` WHERE `entry` IN (39935,39938,39939,39951);

