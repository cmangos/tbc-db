-- Fix Crippler Faction
UPDATE creature_template SET FactionAlliance=14, FactionHorde=14 WHERE entry IN (18689);

-- Fix Blood Knight Dawnstar SpawnMask
UPDATE creature SET SpawnMask=1 WHERE guid IN (39681);

-- Fix Loirea Galerunner <Lunar Festival Herald> SpawnMask
UPDATE creature SET SpawnMask=1 WHERE guid IN (1102);

-- Add Missing Gossip Menu (UDB Backport)
DELETE FROM `gossip_menu` WHERE `entry`=8673;
insert into `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) values('8673','10911','0','0');

-- Fix Gossip Console Error
-- DELETE FROM db_script_string WHERE entry IN (2000000455,2000000456,2000000457);
DELETE FROM dbscripts_on_gossip WHERE id IN (574301);

-- Remove Old Script
DELETE FROM dbscripts_on_creature_movement WHERE id IN (722805);

-- Backport Missing Gameobject From UDB
DELETE FROM `gameobject_template` WHERE `entry`=194092;
insert into `gameobject_template` (`entry`, `type`, `displayId`, `name`, `IconName`, `castBarCaption`, `faction`, `flags`, `size`, `data0`, `data1`, `data2`, `data3`, `data4`, `data5`, `data6`, `data7`, `data8`, `data9`, `data10`, `data11`, `data12`, `data13`, `data14`, `data15`, `data16`, `data17`, `data18`, `data19`, `data20`, `data21`, `data22`, `data23`, `mingold`, `maxgold`, `ScriptName`) values('194092','1','6358','Blackened Urn','','Summoning','1924','0','1','0','1691','60000','0','0','0','21062','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');

-- Fix Emotes From 3.3.5a to 2.4.3 Ones
UPDATE db_script_string SET emote=64 WHERE entry IN (2000000519,2000000522);

-- paladin concecration coef fix (Maximus Fix)
UPDATE  `spell_bonus_data` SET  `ap_dot_bonus` =  '0', `dot_bonus` = '0.11875' WHERE  `spell_bonus_data`.`entry` = 26573;

-- Fix Steamvault Chamber Doors and Access Panels
DELETE FROM gameobject WHERE guid IN (32709);
UPDATE gameobject SET spawnmask=3 WHERE id IN (184125,184126,183049);

-- Add Missing Mount to Honor Hold Gryphon Rider(25579)

-- Fix Console Error
DELETE FROM spell_target_position WHERE id IN (26220);




