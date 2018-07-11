-- ======================================================================================
-- UPDATE WRONG `spell_proc_event` DATA
-- ======================================================================================

-- http://www.wowhead.com/item=25901/insightful-earthstorm-diamond#comments 15 to 45sec

-- http://wowwiki.wikia.com/wiki/Enchant_Weapon_-_Spellsurge
UPDATE `spell_proc_event` SET `cooldown` = 30 WHERE `entry` = 27997;

-- http://www.wowhead.com/item=27922/mark-of-defiance#comments
UPDATE `spell_proc_event` SET `cooldown` = 15 WHERE `entry` = 33511;

-- http://www.wowhead.com/spell=33648/reflection-of-torment#comments
UPDATE `spell_proc_event` SET `cooldown` = 45 WHERE `entry` = 33648;

-- http://www.wowhead.com/item=28578/masquerade-gown#comments
UPDATE `spell_proc_event` SET `cooldown` = 30 WHERE `entry` = 34584;

-- http://www.wowhead.com/spell=34598/karazhan-caster-robe#used-by-item 20 to 30sec
UPDATE `spell_proc_event` SET `cooldown` = 30 WHERE `entry` = 34598;

-- http://www.wowhead.com/spell=38164/unyielding-knights - 50% chance to spawn npcs without cooldown? couldnt find source that quick
UPDATE `spell_proc_event` SET `cooldown` = 60 WHERE `entry` = 38164;

-- http://web.archive.org/web/20130511155353/http://elitistjerks.com/f31/t10096-haste_magical_dps/
UPDATE `spell_proc_event` SET `cooldown` = 15 WHERE `entry` = 38319; -- 15 or 30 pending to 15

-- http://www.wowhead.com/item=28370/bangle-of-endless-blessings#comments
UPDATE `spell_proc_event` SET `cooldown` = 45 WHERE `entry` = 38334;

-- The Twin Blades of Azzinoth 41434 ppm 2? source

-- http://www.wowhead.com/item=34470/timbals-focusing-crystal#comments
UPDATE `spell_proc_event` SET `cooldown` = 15 WHERE `entry` = 45054;

-- https://github.com/Looking4Group/L4G_Core/issues/2763
UPDATE `spell_proc_event` SET `cooldown` = 25 WHERE `entry` = 46662;

-- ======================================================================================
-- UPDATE WRONG `spell_proc_item_enchant` DATA
-- ======================================================================================


-- =============================================================================================================================
-- ADD MISSING `spell_proc_item_enchant` DATA
-- =============================================================================================================================
-- http://wowwiki.wikia.com/wiki/EnchantId/Enchant_IDs?oldid=2158882
-- TBC http://wowwiki.wikia.com/wiki/Enchantments_by_slot?oldid=1620504

DELETE FROM `spell_proc_item_enchant` WHERE `entry` IN (563,564,1783,2638,2639,2,12,524,1667,1668,2635,803,912,1894,1898,1899,1900,2673,2674,2675,3225,3265,3266,3273);
INSERT INTO `spell_proc_item_enchant` (`entry`, `ppmRate`) VALUES

-- not doable as flat % chance can not be set atm, maybe in done in meleehitcalculation
-- not doable as PROC_FLAG_SUCCESSFUL_MELEE_HIT cant be set atm, only normal hits should proc windfury totem
-- It will ONLY trigger on white (auto-attack) swings, and cannot trigger off itself. http://wowwiki.wikia.com/wiki/Windfury_Totem?oldid=1431588
-- not doable as PROC_EX_NORMAL_HIT&PROC_EX_CRITICAL_HIT cant be set atm or is done in meleehitcalculation
-- http://wowwiki.wikia.com/wiki/Windfury_Totem?oldid=1431588 20%
-- (563, 0, 20),	 -- 10607 Windfury Totem Effect (Rank 2)
-- (564, 0, 20),	 -- 10611 Windfury Totem Effect (Rank 3)
-- (1783, 0, 20),	 -- 8514 Windfury Totem Effect (Rank 1)
-- (2638, 0, 20),	 -- 25579 Windfury Totem Effect (Rank 4)
-- (2639, 0, 20),	 -- 25580 Windfury Totem Effect (Rank 5)

-- (283),	 -- 8232 Windfury Weapon (Rank 1) 33757 Windfury Weapon (Passive) (Rank 1)
-- (284),	 -- 8235 Windfury Weapon (Rank 2) 33756 Windfury Weapon (Passive) (Rank 2)
-- (525),	 -- 10486 Windfury Weapon (Rank 3) 33755 Windfury Weapon (Passive) (Rank 3)
-- (1669),	 -- 16362 Windfury Weapon (Rank 4) 33754 Windfury Weapon (Passive) (Rank 4)
-- (2636),	 -- 25505 Windfury Weapon (Rank 5) 33727 Windfury Weapon (Passive) (Rank 5)

-- http://wowwiki.wikia.com/wiki/Frostbrand_Weapon?oldid=1423356 8.8 ppm
-- (2, 8.8),
-- (12, 8.8), -- exists
-- (524, 8.8),
-- (1667, 8.8),
-- (1668, 8.8),
-- (2635, 8.8),

-- Fiery Weapon
-- http://wowwiki.wikia.com/wiki/Enchant_Weapon_-_Fiery_Weapon?oldid=1465730 6 ppm
-- (803, 6),

-- Demonslaying
-- http://www.wowhead.com/spell=13915/demonslaying#comments:id=20607:reply=50260 1 ppm
-- (912, 1),

-- Icy Chill
-- http://wowwiki.wikia.com/wiki/Enchant_Weapon_-_Icy_Chill?oldid=1465746
-- but sure less as Fiery Weapon
-- (1894, 2), -- or 3

-- Lifestealing
-- http://wowwiki.wikia.com/wiki/Enchant_Weapon_-_Lifestealing?oldid=1465761 6 ppm
-- (1898, 6),

-- Unholy Weapon
-- http://wowwiki.wikia.com/wiki/Enchant_Weapon_-_Unholy_Weapon?oldid=1612930 6 ppm (75% uptime/minute with 12sec duration)
-- (1899, 6),

-- Crusader
-- http://wowwiki.wikia.com/wiki/Enchant_Weapon_-_Crusader?oldid=1465701 1 ppm
-- (1900, 1),

-- Mongoose
-- http://wowwiki.wikia.com/wiki/Enchant_Weapon_-_Mongoose?oldid=1550447 1 ppm
(2673, 1),

-- http://wowwiki.wikia.com/wiki/Enchant_Weapon_-_Spellsurge?oldid=1604096 1 ppm 
(2674, 1),

-- Battlemaster
-- http://wowwiki.wikia.com/wiki/Enchant_Weapon_-_Battlemaster?oldid=1616105 1 ppm
(2675, 1),

-- Executioner
-- http://wowwiki.wikia.com/wiki/Formula:_Enchant_Weapon_-_Executioner?oldid=1453534 1.2 ppm
-- (3225, 1.2),

-- Blessed Weapon Coating
-- http://www.wowhead.com/item=34538/blessed-weapon-coating#comments 1.2ppm 45ic?
-- (3265, 1.2),

-- Righteous Weapon Coating
-- http://wowwiki.wikia.com/wiki/Righteous_Weapon_Coating 1.2ppm 40ic?
-- http://www.wowhead.com/item=34539/righteous-weapon-coating#comments
-- (3266, 1.2),

-- Deathfrost ~10%
-- http://www.wowhead.com/spell=46578/deathfrost#comments:id=311615
-- http://www.wowhead.com/item=35498/formula-enchant-weapon-deathfrost#comments:id=309736:reply=339434
-- http://www.wowhead.com/item=35498/formula-enchant-weapon-deathfrost#comments:id=310017
(3273, 3);

