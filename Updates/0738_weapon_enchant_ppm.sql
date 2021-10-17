-- Correct ppm for Mongoose, Executioner and other Weapon Enchants
-- We used wrong "spell" the dbc entry in some cases, should be spell_template procced spell instead. (kw)
-- https://warcraft.blizzplanet.com/blog/comments/world_of_warcraft_burning_crusade___enchanting___executioner_vs_mongoose
-- https://web.archive.org/web/20081109052506/http://elitistjerks.com/f31/t19282-proc_rate_determination/
-- https://wowwiki.fandom.com/wiki/Enchant_Weapon_-_Mongoose?oldid=1550447 > 1ppm
-- https://wowwiki.fandom.com/wiki/Formula:_Enchant_Weapon_-_Executioner?oldid=1453534 ~1.2ppm
-- https://www.mmo-champion.com/threads/606385-Help-me-compare-Mongoose-with-7-weapon-Dmg-!/page2 1ppm

-- Mongoose
DELETE FROM `spell_proc_item_enchant` WHERE `entry` IN (2673,28093); -- 2673 dbc
INSERT INTO `spell_proc_item_enchant` (`entry`, `ppmRate`) VALUES
(28093, 1); -- 1.2 - 1.3ppm S&D related when it was calcuted from current weapon speed? Might need more research

-- Spellsurge Trigger
-- http://wowwiki.wikia.com/wiki/Enchant_Weapon_-_Spellsurge?oldid=1604096 1 ppm
DELETE FROM `spell_proc_item_enchant` WHERE `entry` IN (2674,27996,27997); -- 2674 dbc
-- INSERT INTO `spell_proc_item_enchant` (`entry`, `ppmRate`) VALUES
-- (27996, 1); -- doesnt work with spell_proc_item_enchant as 27997 is aura passive trigger spell (SPELL_AURA_PROC_TRIGGER_SPELL) which proccs s.27996
-- Spell 27997 listed in `spell_proc_event` has exactly same proc flags as in spell.dbc, field value redundant
-- INSERT INTO `spell_proc_event` (`entry`, `SchoolMask`, `procFlags`, `ppmRate`) VALUES (27997, 127, 0x00014000, 1);

-- Battlemaster
DELETE FROM `spell_proc_item_enchant` WHERE `entry` IN (2675,28005); -- 2675 dbc
INSERT INTO `spell_proc_item_enchant` (`entry`, `ppmRate`) VALUES
(28005, 1);

-- Executioner
DELETE FROM `spell_proc_item_enchant` WHERE `entry` IN (3225,42976); -- 3225 dbc
INSERT INTO `spell_proc_item_enchant` (`entry`, `ppmRate`) VALUES
(42976, 1); -- 1.2 - 1.3ppm S&D related when it was calcuted from current weapon speed? Might need more research

-- Deathfrost
-- https://wow.allakhazam.com/forum.html?forum=243&mid=1214255668244128328
DELETE FROM `spell_proc_item_enchant` WHERE `entry` IN (3273,46662); -- 3273 dbc
INSERT INTO `spell_proc_item_enchant` (`entry`, `ppmRate`) VALUES
(46662, 3);

-- Demonslaying
-- http://www.wowhead.com/spell=13915/demonslaying#comments:id=20607:reply=50260
DELETE FROM `spell_proc_item_enchant` WHERE `entry` = 13907; -- 912 dbc
INSERT INTO `spell_proc_item_enchant` (`entry`, `ppmRate`) VALUES
(13907, 6);

-- Unholy Weapon
-- http://wowwiki.wikia.com/wiki/Enchant_Weapon_-_Unholy_Weapon?oldid=1612930
DELETE FROM `spell_proc_item_enchant` WHERE `entry` = 20006; -- 1899 dbc
INSERT INTO `spell_proc_item_enchant` (`entry`, `ppmRate`) VALUES
(20006, 1);

-- Crusader
-- http://wowwiki.wikia.com/wiki/Enchant_Weapon_-_Crusader?oldid=1465701
DELETE FROM `spell_proc_item_enchant` WHERE `entry` = 20007; -- 1900 dbc
INSERT INTO `spell_proc_item_enchant` (`entry`, `ppmRate`) VALUES
(20007, 1);

-- http://wowwiki.wikia.com/wiki/Blessed_Weapon_Coating?oldid=1538992 ~ 45cd / 1 ppm
DELETE FROM `spell_proc_item_enchant` WHERE `entry` = 45396; -- 3265 dbc
INSERT INTO `spell_proc_item_enchant` (`entry`, `ppmRate`) VALUES
(45396, 1); -- Fully custom serverside proc spells for 2.4 Coatings (dbc\cmangos_fixes\spell.sql)

-- http://wowwiki.wikia.com/wiki/Righteous_Weapon_Coating?oldid=1541017 ~ 40secs cd / 1 ppm
DELETE FROM `spell_proc_item_enchant` WHERE `entry` = 45398; -- 3266 dbc
INSERT INTO `spell_proc_item_enchant` (`entry`, `ppmRate`) VALUES
(45398, 1); -- Fully custom serverside proc spells for 2.4 Coatings (dbc\cmangos_fixes\spell.sql)

-- Cleanup Comments in spell_bonus_data
UPDATE `spell_bonus_data` SET `comments` = 'Item - Enchant: Fiery Blaze (s.6296)' WHERE `entry` = 6297;
UPDATE `spell_bonus_data` SET `comments` = 'Item - Add Fire Dam - Weap 02 (s.7711)' WHERE `entry` = 7712;
UPDATE `spell_bonus_data` SET `comments` = 'Item - Add Fire Dam - Weap 04 (s.7721)' WHERE `entry` = 7714;
UPDATE `spell_bonus_data` SET `comments` = 'Priest - Mana Burn' WHERE `entry` = 8129;
UPDATE `spell_bonus_data` SET `comments` = 'Item - Dragonbreath Chili (s.15852)' WHERE `entry` = 15851;
UPDATE `spell_bonus_data` SET `comments` = 'Item - Add Lightning Dam - Weap 03 (s.16615)' WHERE `entry` = 16614;
UPDATE `spell_bonus_data` SET `comments` = 'Paladin - Seal of Righteousness' WHERE `entry` = 20154;
UPDATE `spell_bonus_data` SET `comments` = 'Paladin - Seal of Righteousness' WHERE `entry` = 25742;
UPDATE `spell_bonus_data` SET `comments` = 'Item - Aura of Vengeance (s.39444)' WHERE `entry` = 39445;
UPDATE `spell_bonus_data` SET `comments` = 'Rogue - Deadly Poison (Rank 1)' WHERE `entry` = 2818;
UPDATE `spell_bonus_data` SET `comments` = 'Rogue - Instant Poison (Rank 1)' WHERE `entry` = 8680;
UPDATE `spell_bonus_data` SET `comments` = 'Rogue - Wound Poison (Rank 1)' WHERE `entry` = 13218;
UPDATE `spell_bonus_data` SET `comments` = 'Rogue - Anesthetic Poison (Rank 1)' WHERE `entry` = 26688;
UPDATE `spell_bonus_data` SET `comments` = 'Druid - Lifebloom (Rank 1)' WHERE `entry` = 33778;
UPDATE `spell_bonus_data` SET `comments` = 'Hunter - Lightning Breath (Rank 1)' WHERE `entry` = 24844;

