-- ----------
-- 06/07/2017
-- ----------

-- Drop rate for Sunhawk Missive for Intercepting the Message is too low
UPDATE creature_loot_template SET ChanceOrQuestChance=-10 WHERE entry=17604 AND item=24399;
UPDATE creature_loot_template SET ChanceOrQuestChance=-20 WHERE entry=17606 AND item=24399;
UPDATE creature_loot_template SET ChanceOrQuestChance=-2 WHERE entry=17607 AND item=24399;
UPDATE creature_loot_template SET ChanceOrQuestChance=-4 WHERE entry=17608 AND item=24399;
UPDATE creature_loot_template SET ChanceOrQuestChance=-2 WHERE entry=17609 AND item=24399;

-- Unpopped Darkmist Eye should have a 100% drop rate
UPDATE creature_loot_template SET ChanceOrQuestChance=-100 WHERE item=5884;

-- ----------
-- 06/08/2017
-- ----------

-- Typo in completion text of Ancient Spirit
UPDATE quest_template SET OfferRewardText='Yes, $N. Felwood has been through much hardship. Thank you for what you have done.$B$BOne day, we may be able to reclaim Felwood from the corruption; every kind deed helps.' WHERE entry=4261;

-- Entropic Beast in Felwood should be immune to fire
UPDATE creature_template SET SchoolImmuneMask=4 WHERE entry=9878;

-- Drop rate of Howling Wind is too low
UPDATE creature_loot_template SET ChanceOrQuestChance=12 WHERE entry=17158 AND item=24504;
UPDATE creature_loot_template SET ChanceOrQuestChance=8 WHERE entry=17159 AND item=24504;
UPDATE creature_loot_template SET ChanceOrQuestChance=5 WHERE entry=17160 AND item=24504;

-- ----------
-- 06/10/2017
-- ----------

-- Minor typos in completion text of The Ring of Mmmrrrggglll
UPDATE quest_template SET OfferRewardText='At last! Though the Grimscale did not route, as hoped, it was entertaining to watch them panic in confusion when you laid low their so-called chieftain. You have my thanks, and the gratitude of the sin''dorei of Silvermoon City!$B$BPlease, take one of these in thanks for the service that you have rendered.' WHERE entry=8885;

-- Drop rate for Mossy Tumor for quest Tumors is too high
-- change to match ClassicDB rates
UPDATE creature_loot_template SET ChanceOrQuestChance=-35 WHERE entry=2027 AND item=5170;
UPDATE creature_loot_template SET ChanceOrQuestChance=-42 WHERE entry IN (2029,2030) AND item=5170;

-- Ghoulfang should not be a world drop
DELETE FROM reference_loot_template WHERE item=1387 AND entry!=65014;

-- Minor typo in completion text of Agamand Heirlooms
UPDATE quest_template SET RequestItemsText='Do you have the heirlooms, $N?' WHERE entry=1821;

-- Deth'ryll Satyrs should be classified as Demons rather than Humanoid
UPDATE creature_template SET CreatureType=3 WHERE entry=2212;

-- ----------
-- 06/11/2017
-- ----------

-- Incorrect quest text at completion of Your Place in the World
UPDATE quest_template SET RequestItemsText='The carapace of a scorpid isn''t so thick that the strength of a determined $C will be deterred. Strike strongly and without doubt, and the scorpids should prove easy prey.' WHERE entry=4641;

-- Scorched Spider Fang should have a 100% drop rate for Fire Hardened Mail
UPDATE creature_loot_template SET ChanceOrQuestChance=-100 WHERE entry IN (1111,4040) AND item=6838;

-- Fetid Skull should have a 100% drop rate from Scourge Champions for Marauders of Darrowshire
UPDATE creature_loot_template SET ChanceOrQuestChance=-100 WHERE entry=8529 AND item=13157;

-- Bloodpetal Trapper should not drop Dinosaur Bones
DELETE FROM creature_loot_template WHERE entry=6512 AND item=11114;

-- Felmusk Shadowstalker drops Copper Ore/Rough stone at a high rate
UPDATE creature_loot_template SET ChanceOrQuestChance=2 WHERE entry=3763 AND item IN (2770,2835);

-- ----------
-- 02/09/2018
-- ----------

-- correct completion text for q.9327 'The Forsaken'
UPDATE quest_template SET OfferRewardText='I know that we Forsaken appear monstrous to your eyes, but I assure you we mean your people no harm. We are here because of a common enemy: Dar''Khan the traitor! He has returned and now commands the Scourge that are invading this land from his steadfast, Deatholme, to the south.$B$BOur leader, Lady Sylvanas Windrunner, originally hails from these lands, and in fact used to be an elf. She has a history with Dar''Khan and wants him dead as much as your people do.$B$BWe will defeat him together, $c!' WHERE entry=9327;

-- these items from vendors should be sold in limited supply

-- Ulthir <Alchemy Supplies>
-- Recipe: Free Action Potion, Recipe: Great Rage Potion, Recipe: Superior Mana Potion
UPDATE npc_vendor SET incrtime=3600, maxcount=1 WHERE entry=4226 AND item IN (5642,5643,13477);

-- Soolie Berryfizz <Alchemy Supplies>
UPDATE npc_vendor SET incrtime=3600, maxcount=1 WHERE entry=5178 AND item IN (5642); -- Recipe: Free Action Potion
UPDATE npc_vendor SET incrtime=7200, maxcount=1 WHERE entry=5178 AND item IN (13478); -- Recipe: Elixir of Superior Defense

-- Kor'geld <Alchemy Supplies>
UPDATE npc_vendor SET incrtime=3600, maxcount=1 WHERE entry=3348 AND item IN (5642); -- Recipe: Free Action Potion

-- ----------
-- 02/14/2018
-- ----------

-- Exarch Maladaar does not drop Wastewalker Shoulderpads
DELETE FROM reference_loot_template WHERE entry=40123 AND item=27797;

-- Pathing for Heartrazor (5934)
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=-5183.809,`position_y`=-1170.219,`position_z`=45.11078 WHERE `id`=5934;
UPDATE `creature_template` SET `MovementType`=2 WHERE `entry`=5934;
DELETE FROM `creature_movement_template` WHERE `entry`=5934;
INSERT INTO `creature_movement_template` (`entry`,`pathId`,`point`,`position_x`,`position_y`,`position_z`,`waittime`,`orientation`) VALUES
(5934,0,1,-5183.809,-1170.219,45.11078,0,100),
(5934,0,2,-5181.056,-1184.849,45.97993,0,100),
(5934,0,3,-5169.914,-1200.506,47.15270,0,100),
(5934,0,4,-5159.998,-1216.499,48.38121,0,100),
(5934,0,5,-5173.076,-1229.047,49.04836,0,100),
(5934,0,6,-5194.938,-1230.641,48.47133,0,100),
(5934,0,7,-5207.135,-1229.340,47.92607,0,100),
(5934,0,8,-5215.482,-1216.020,46.70019,0,100),
(5934,0,9,-5207.343,-1200.787,46.16835,0,100),
(5934,0,10,-5184.156,-1170.526,45.12170,0,100),
(5934,0,11,-5183.285,-1153.094,44.87883,0,100),
(5934,0,12,-5183.285,-1153.094,44.87883,0,100),
(5934,0,13,-5177.142,-1130.755,43.77563,0,100),
(5934,0,14,-5164.937,-1121.575,43.77023,0,100),
(5934,0,15,-5145.432,-1115.095,43.74949,0,100),
(5934,0,16,-5138.181,-1109.642,44.04351,0,100),
(5934,0,17,-5154.783,-1119.312,43.67305,0,100),
(5934,0,18,-5176.401,-1127.441,43.71729,0,100),
(5934,0,19,-5183.811,-1149.325,44.34430,0,100);


