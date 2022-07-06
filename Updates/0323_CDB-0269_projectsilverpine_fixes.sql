-- Fixes based on Project Silverpine reports (Titarion) and some of the fixes by Titarion

/* Improved the zoning coordinates into Blackwing Lair
   Source: http://www.youtube.com/watch?v=AWE1tHKjguk&t=4m25s
*/
-- align areatrigger_teleport with classic-db as far as possible
UPDATE `areatrigger_teleport` SET `required_level` = 0 WHERE `id` = 606; -- Scarlet Monestary Armory - Exiting
UPDATE `areatrigger_teleport` SET `name` = 'Molten Core Entrance, Inside' WHERE `id` = 2890; -- .go xyz 1115.219971 	-462.959015 	-95.014801 409
UPDATE `areatrigger_teleport` SET `required_quest_done` = 7848 WHERE `id` = 3528; -- SELECT * FROM creature_questrelation where quest IN (7487,7848);
UPDATE `areatrigger_teleport` SET `name` = 'Blackwing Lair - Exiting' WHERE `id` = 3728; -- .go xyz -7671.109863 	-1109.709961 	399.122986 469
UPDATE `areatrigger_teleport` SET `name` = 'Zul\'Gurub - Exiting' WHERE `id` = 3930; -- .go xyz -11920.00     -1215.00     80.561600 309

/* Changes to NPC Argent Sentry, Argent Rider, Argent Defender and Cenarion Hold Infantry:
   Minimum Level and Maximum Level changed to 60 (Argent Sentry, Argent Rider)
   Rank changed to Elite (Argent Sentry, Argent Rider)
   Health Points are increased to 8100 for the Argent Rider and 12150 for the Argent Sentry
   unit_flags set to not be passive (for Argent Sentry, Argent Defender and Cenarion Hold Infantry. Argent Riders are only aggravated when hit by AoE spells(requires additional information) or unless you have the weapon: Corrupted Ashbringer equipped)
   Changed MovementType of Argent Rider to Waypoint
   Changed the affiliation of Argent Defender to <The Argent Dawn>
   Removed the quest giver flag from Argent Defenders
   Increased the damage output of Argent Sentries and Argent Riders by a fairly large margin
*/

-- Argent Sentry
UPDATE `creature_template` SET `DamageMultiplier` = 4.6 WHERE `entry` = 16378; -- https://tbc.wowhead.com/npc=16378/argent-sentry#comments:id=2920669
-- Argent Rider
UPDATE `creature_template` SET `DamageMultiplier` = 4.6 WHERE `entry` = 11102;
-- Argent Defender
UPDATE `creature_template` SET `NpcFlags` = 0 WHERE `entry` = 11194;
-- Cenarion Hold Infantry
UPDATE `creature_template` SET `NpcFlags` = 0 WHERE `entry` = 15184;

/* NOTE: These NPCs may require further improvements and adjustments, such as damage values and possibly Health Points.
         Additionally, according to the videos below, Argent Sentries are either calling for help or are linked with one another.
         These are the most powerful guards in the game.
         See http://project-silverpine.com/devwiki/index.php?title=Creature_template#attackpower

Sources: http://www.youtube.com/watch?v=31rO2OCTNPo
         http://www.youtube.com/watch?v=cihEAa6jQNo
         http://www.youtube.com/watch?v=YDCpZ5mFKII
         http://old.wowhead.com/npc=16378#comments:id=820794
         http://old.wowhead.com/npc=11102#comments:id=765721
         http://www.wowhead.com/npc=11194#comments:id=1313446
*/

/* The following Commanders and Lieutenants are now properly mounted:
Commander Mortimer
Lieutenant Spencer
Lieutenant Stouthandle
Lieutenant Mancuso
Lieutenant Stronghoof
Lieutenant Rugba
Lieutenant Greywand
Lieutenant Largent
Commander Malgor
Lieutenant Vol'talar
Lieutenant Lewis
*/
DELETE FROM `creature_template_addon` WHERE `entry` IN (13318, 13138, 13297, 13300, 13143, 13137, 13298, 13296, 13152, 13144, 13147);
INSERT INTO `creature_template_addon` VALUES
(13318, 14577, 0, 1, 16, 0, 0, NULL),
(13138, 14337, 0, 1, 16, 0, 0, NULL),
(13297, 14577, 0, 1, 16, 0, 0, NULL),
(13300, 14337, 0, 1, 16, 0, 0, NULL),
(13143, 14348, 0, 1, 16, 0, 0, NULL),
(13137, 14334, 0, 1, 16, 0, 0, NULL),
(13298, 14372, 0, 1, 16, 0, 0, NULL),
(13296, 14337, 0, 1, 16, 0, 0, NULL),
(13152, 14334, 0, 1, 16, 0, 0, NULL),
(13144, 14388, 0, 1, 16, 0, 0, NULL),
(13147, 10671, 0, 1, 16, 0, 0, NULL);

-- Mountaineer Boombellow is now passive towards players, unless attacked
--  Source: http://old.wowhead.com/npc=13797#comments:id=327892
UPDATE `creature_template` SET `ExtraFlags` = `ExtraFlags`|2 WHERE `entry` = 13797; -- CREATURE_EXTRA_FLAG_NO_AGGRO_ON_SIGHT (UnitFlags 64)

/* Removed Lieutenant Doren's mount
   Source: http://www.wowwiki.com/Lieutenant_Doren?oldid=317495
*/
UPDATE `creature_template_addon` SET `mount` = 0, b2_0_sheath = 1, b2_1_flags = 16 WHERE `entry` = 469;
DELETE FROM `creature_addon` WHERE `guid` IN (SELECT `guid` FROM `creature` WHERE `id` = 469);

/* Removed Mana Points from all Rogue Trainers.
   Sources: http://www.youtube.com/watch?v=ZFuaZVM_5Ik
            http://www.wowpedia.org/index.php?title=Rogue_trainers&oldid=410531
*/
UPDATE `creature_template` SET `MinLevelMana` = 0, `MaxLevelMana` = 0 WHERE `subname` = 'Rogue Trainer';

/* Removed Mana Points from all Auctioneers.
   Source: http://www.youtube.com/watch?v=mHm-1tAsWuo
*/
UPDATE `creature_template` SET `MinLevelMana` = 0, `MaxLevelMana` = 0 WHERE `NpcFlags` = `NpcFlags`|2097152; -- UNIT_NPC_FLAG_AUCTIONEER

/* Removed Mana Points from Cenarion Outrider
   Source: http://www.wowpedia.org/Cenarion_Outrider
*/
UPDATE `creature_template` SET `MinLevelMana` = 0, `MaxLevelMana` = 0 WHERE `entry` = 15545;

/* Changes to Silverpine Deathguard:
   Removed Mana Points.
   Source: http://www.wowpedia.org/Silverpine_Deathguard
*/
UPDATE `creature_template` SET `MinLevelMana` = 0, `MaxLevelMana` = 0 WHERE `entry` = 7489;

/* Changes to Corporal Teeka Bloodsnarl:
   Changed level to 56 - 57, up from 54.
   Sources: http://www.wowwiki.com/Teeka_Bloodsnarl
            http://project-zero.eu/images/gallery/WoWScrnShot_082506_190115.jpg
*/
UPDATE `creature_template` SET `MaxLevel` = 57 WHERE `entry` = 13776;

