-- Set Default MovementType to 0 for classic-db creatures where tbc-db used (1)
-- Some even have issues due to having 1 (Grimclaw is temp spawned, misbehaves due to MovementType = 1
-- creature_template MovementType = 0 is the most save to set for npcs, 1 can interfere with scripts and 2 should only be set if there is no static spawn of that npc or if the npc should do something right away
-- Source: classic-db (tbc value befor)
UPDATE `creature_template` SET `MovementType`='0' WHERE `entry`='1410'; -- Firewing Bloodwarder (1)
UPDATE `creature_template` SET `MovementType`='0' WHERE `entry`='2614'; -- Air Force Alarm Bot (Alliance) (1)
UPDATE `creature_template` SET `MovementType`='0' WHERE `entry`='2615'; -- Air Force Alarm Bot (Horde) (1)
UPDATE `creature_template` SET `MovementType`='0' WHERE `entry`='3695'; -- Grimclaw (1) (wotlk-db already set to 0)
UPDATE `creature_template` SET `MovementType`='0' WHERE `entry`='3794'; -- Druid of the Talon (1)
UPDATE `creature_template` SET `MovementType`='0' WHERE `entry`='3795'; -- Druid of the Claw (1)
UPDATE `creature_template` SET `MovementType`='0' WHERE `entry`='3895'; -- Captain Noteo (1)
UPDATE `creature_template` SET `MovementType`='0' WHERE `entry`='4476'; -- Screaming Haunt (1)
UPDATE `creature_template` SET `MovementType`='0' WHERE `entry`='5355'; -- Firewing Defender (1)
UPDATE `creature_template` SET `MovementType`='0' WHERE `entry`='6491'; -- Spirit Healer (1)
UPDATE `creature_template` SET `MovementType`='0' WHERE `entry`='6550'; -- Mana Surge (1)
UPDATE `creature_template` SET `MovementType`='0' WHERE `entry`='9537'; -- Hurley Blackbreath (1)
UPDATE `creature_template` SET `MovementType`='0' WHERE `entry`='9541'; -- Blackbreath Crony (1)
UPDATE `creature_template` SET `MovementType`='0' WHERE `entry`='9682'; -- Marshal Reginald Windsor (1)
UPDATE `creature_template` SET `MovementType`='0' WHERE `entry`='10556'; -- Lazy Peon (1)
UPDATE `creature_template` SET `MovementType`='0' WHERE `entry`='11054'; -- Crimson Rifleman (1)
UPDATE `creature_template` SET `MovementType`='0' WHERE `entry`='12806'; -- Magmakin (1)
UPDATE `creature_template` SET `MovementType`='0' WHERE `entry`='13156'; -- Carrosh (1)
UPDATE `creature_template` SET `MovementType`='0' WHERE `entry`='15082'; -- Gri'lek (1)
UPDATE `creature_template` SET `MovementType`='0' WHERE `entry`='15083'; -- Hazza'rah (1)
UPDATE `creature_template` SET `MovementType`='0' WHERE `entry`='15084'; -- Renataki (1)
UPDATE `creature_template` SET `MovementType`='0' WHERE `entry`='15991'; -- Lady Dena Kennedy (1)
UPDATE `creature_template` SET `MovementType`='0' WHERE `entry`='16548'; -- Mr. Wiggles (1)
UPDATE `creature_template` SET `MovementType`='0' WHERE `entry`='16549'; -- Whiskers the Rat (1)
UPDATE `creature_template` SET `MovementType`='0' WHERE `entry`='16592'; -- Midsummer Bonfire (1)
UPDATE `creature_template` SET `MovementType`='0' WHERE `entry`='17293'; -- Plague Wave (1)
UPDATE `creature_template` SET `MovementType`='0' WHERE `entry`='18039'; -- Spirit of Victory (1)
UPDATE `creature_template` SET `MovementType`='0' WHERE `entry`='18199'; -- Silithus Dust Turnin Quest Doodad Horde (1)

-- Grimclaw 3695 - wotlk-db has a slightly different script from classic/tbc
-- .go c id 3693
-- .q add 985
-- .q com 985 - bear had movementtype = 1 which interfered with script and his movementscript didnt give him enough time to play it properly
UPDATE `dbscripts_on_quest_end` SET `dataint` = 1 WHERE `id` = 985 AND `delay` = 0; -- SetRun for Grimclaw 3695
UPDATE `dbscripts_on_quest_end` SET `datalong2` = 0 WHERE `id` = 985 AND `delay` IN (2000,5000,54000); -- Remove Forced Movementspeed (which also didnot make it work)

