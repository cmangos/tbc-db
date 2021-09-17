-- ============================================================================================================================================================
-- creature_template which need adjustments to their Detection, CallForHelp or Leash
-- ============================================================================================================================================================

-- Classic
UPDATE `creature_template` SET `Detection` = 30 WHERE `entry` = 11673; -- Ancient Core Hound
UPDATE `creature_template` SET `Detection` = 35 WHERE `entry` = 13021; -- Warpwood Crusher
UPDATE `creature_template` SET `Detection` = 30 WHERE `entry` = 12129; -- Onyxian Warder
UPDATE `creature_template` SET `Detection` = 25 WHERE `entry` = 14386; --  Wandering Eye of Kilrogg

-- TBC
UPDATE `creature_template` SET `Detection` = 27 WHERE `entry` = 16457; -- Maiden of Virtue
UPDATE `creature_template` SET `Leash` = 200 WHERE `entry` = 23061; -- Rivendark
UPDATE `creature_template` SET `Leash` = 200 WHERE `entry` = 23261; -- Furywing
UPDATE `creature_template` SET `Leash` = 200 WHERE `entry` = 23281; -- Insidion
UPDATE `creature_template` SET `Leash` = 200 WHERE `entry` = 23282; -- Obsidia

-- SHH
UPDATE `creature_template` SET `CallForHelp` = 5, `MovementType` = 0 WHERE `entry` IN (17083,20567); -- Fel Orc Convert

-- BT
UPDATE `creature_template` SET `Detection` = 55 WHERE `entry` = 22898; -- Supremus (30y)
UPDATE `creature_template` SET `Detection` = 30 WHERE `entry` = 22948; -- Gurtogg Bloodboil (https://youtu.be/gapRoQZ2tFc?t=38)

-- ZA
UPDATE `creature_template` SET `Detection` = 25 WHERE `entry` = 24374; -- Amani'shi Berserker

-- SWP
UPDATE `creature_template` SET `Detection` = 25 WHERE `entry` = 25363; -- Sunblade Cabalist
UPDATE `creature_template` SET `Detection` = 30 WHERE `entry` = 25372; -- Sunblade Scout (Supposedly higher then other npcs)
UPDATE `creature_template` SET `Detection` = 30 WHERE `entry` = 25507; -- Sunblade Protector
UPDATE `creature_template` SET `Detection` = 25 WHERE `entry` = 25851; -- Volatile Fiend
UPDATE `creature_template` SET `Detection` = 15 WHERE `entry` = 25484; -- Shadowsword Assassin (due to Vmap issues)

-- https://youtu.be/K9mfONlbrTg?t=127 ~40y
-- https://youtu.be/AdpzCll1bJM?t=10 ~40y
-- https://youtu.be/MgIjLkemCO0?t=40 ~36y
-- https://youtu.be/0RbU1axMrhA?t=15 ~36y
-- https://youtu.be/pcv5LlawB1A?t=185 ~36y
UPDATE `creature_template` SET `Detection` = 40 WHERE `entry` = 24850; -- Kalecgos
UPDATE `creature_template` SET `Detection` = 55 WHERE `entry` = 24882; -- Brutallus

-- MgT
UPDATE `creature_template` SET `Detection` = 25 WHERE `entry` IN (
24560,25560, -- Priestess Delrissa (Priest)
24553,25541, -- Apoko (Shaman)
24554,25550, -- Eramas Brightblaze (Monk)
24555,25555, -- Garaxxas (Hunter)
24556,25579, -- Zelfan (Engineer)
24557,25556, -- Kagani Nightstrike (Rogue)
24558,25549, -- Ellrys Duskhallow (Warlock)
24559,25574, -- Warlord Salaris (Warrior)
24561,25578 -- Yazzai (Mage)
);

