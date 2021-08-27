-- Correct Data for boss_ahune Event in Slave Pens linked to Midsummer Fire Festival, Event 1 - unitflags from wotlk-db
UPDATE `creature_template` SET `UnitFlags` = `UnitFlags`|33554432 WHERE `entry` = 25745; -- [PH] Ahune Summon Loc Bunny
UPDATE `creature_template` SET `UnitFlags` = `UnitFlags`|33554432 WHERE `entry` = 25746; -- [PH] Ahune Loot Loc Bunny
UPDATE `creature_template` SET `UnitFlags` = `UnitFlags`|33554432 WHERE `entry` = 25952; -- Slippery Floor Bunny
UPDATE `creature_template` SET `UnitFlags` = `UnitFlags`|33554432 WHERE `entry` = 25971; -- Shaman Bonfire Bunny 000
UPDATE `creature_template` SET `UnitFlags` = `UnitFlags`|33554432 WHERE `entry` = 25972; -- Shaman Bonfire Bunny 001
UPDATE `creature_template` SET `UnitFlags` = `UnitFlags`|33554432 WHERE `entry` = 25973; -- Shaman Bonfire Bunny 002
UPDATE `creature_template` SET `UnitFlags` = `UnitFlags`|33554432 WHERE `entry` = 26120; -- Wisp Dest Bunny
UPDATE `creature_template` SET `UnitFlags` = `UnitFlags`|33554432 WHERE `entry` = 26121; -- Wisp Source Bunny

-- https://wow.gamepedia.com/index.php?title=Ahune&oldid=1606463
-- Ahune 25740,26338
-- Ahunite Hailstone 25755,26342 
-- Ahunite Coldwave 25756,26340 
-- Ahunite Frostwind 25757,26341
-- Frozen Core 25865,26339

-- 25985	Ahune Ice Spear Bunny
-- 26239	Ghost of Ahune
-- 26241	[PH] Ghost of Ahune (Disguise)
-- 26337	Ahune Ice Spear Bunny (1)
-- 26346	Ahune's Bottle Bunny

-- 187882
-- 188067
-- 188072
-- 188073
-- 188142

