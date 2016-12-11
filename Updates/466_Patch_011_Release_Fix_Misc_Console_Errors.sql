-- ===================================
-- Fix Patch 0.1.1 Misc Console Errors
-- ===================================
UPDATE creature_template SET MinLevelHealth=4120, MaxLevelHealth=4120 WHERE entry IN (15590);
UPDATE creature_template SET MinLevelHealth=666200, MaxLevelHealth=666200 WHERE entry IN (15904);
UPDATE creature_template SET MinLevelHealth=666200, MaxLevelHealth=666200 WHERE entry IN (15910);
UPDATE creature_template SET MinLevelHealth=3052, MaxLevelHealth=3052 WHERE entry IN (15957);
UPDATE creature_template SET MinLevelHealth=4120, MaxLevelHealth=4120 WHERE entry IN (15964);
UPDATE creature_template SET EquipmentTemplateId=5403 WHERE entry IN (25223);
UPDATE creature_template SET ModelId1=17547 WHERE entry IN (27946); -- Model ID 29363 FROM UDB DID NOT EXIST IN TBC (USED NORMAL DRAGONHAWK MODEL)


UPDATE creature SET equipment_id=0 WHERE guid IN (105970);
UPDATE creature SET equipment_id=0 WHERE guid IN (101329);


DELETE FROM creature_addon WHERE guid IN (63517);


UPDATE creature_linking_template SET search_range=10 WHERE entry IN (17647,17996);


-- Add Missing Quest - backported from UDB
DELETE FROM quest_template WHERE entry IN (10379);
INSERT INTO `quest_template` (`entry`, `Method`, `ZoneOrSort`, `MinLevel`, `QuestLevel`, `Type`, `RequiredClasses`, `RequiredRaces`, `RequiredSkill`, `RequiredSkillValue`, `RepObjectiveFaction`, `RepObjectiveValue`, `RequiredMinRepFaction`, `RequiredMinRepValue`, `RequiredMaxRepFaction`, `RequiredMaxRepValue`, `SuggestedPlayers`, `LimitTime`, `QuestFlags`, `SpecialFlags`, `CharTitleId`, `PrevQuestId`, `NextQuestId`, `ExclusiveGroup`, `NextQuestInChain`, `SrcItemId`, `SrcItemCount`, `SrcSpell`, `Title`, `Details`, `Objectives`, `OfferRewardText`, `RequestItemsText`, `EndText`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `ReqItemId1`, `ReqItemId2`, `ReqItemId3`, `ReqItemId4`, `ReqItemCount1`, `ReqItemCount2`, `ReqItemCount3`, `ReqItemCount4`, `ReqSourceId1`, `ReqSourceId2`, `ReqSourceId3`, `ReqSourceId4`, `ReqSourceCount1`, `ReqSourceCount2`, `ReqSourceCount3`, `ReqSourceCount4`, `ReqCreatureOrGOId1`, `ReqCreatureOrGOId2`, `ReqCreatureOrGOId3`, `ReqCreatureOrGOId4`, `ReqCreatureOrGOCount1`, `ReqCreatureOrGOCount2`, `ReqCreatureOrGOCount3`, `ReqCreatureOrGOCount4`, `ReqSpellCast1`, `ReqSpellCast2`, `ReqSpellCast3`, `ReqSpellCast4`, `RewChoiceItemId1`, `RewChoiceItemId2`, `RewChoiceItemId3`, `RewChoiceItemId4`, `RewChoiceItemId5`, `RewChoiceItemId6`, `RewChoiceItemCount1`, `RewChoiceItemCount2`, `RewChoiceItemCount3`, `RewChoiceItemCount4`, `RewChoiceItemCount5`, `RewChoiceItemCount6`, `RewItemId1`, `RewItemId2`, `RewItemId3`, `RewItemId4`, `RewItemCount1`, `RewItemCount2`, `RewItemCount3`, `RewItemCount4`, `RewRepFaction1`, `RewRepFaction2`, `RewRepFaction3`, `RewRepFaction4`, `RewRepFaction5`, `RewRepValue1`, `RewRepValue2`, `RewRepValue3`, `RewRepValue4`, `RewRepValue5`, `RewOrReqMoney`, `RewMoneyMaxLevel`, `RewSpell`, `RewSpellCast`, `RewMailTemplateId`, `RewMailDelaySecs`, `DetailsEmote1`, `DetailsEmote2`, `DetailsEmote3`, `DetailsEmote4`, `DetailsEmoteDelay1`, `DetailsEmoteDelay2`, `DetailsEmoteDelay3`, `DetailsEmoteDelay4`, `IncompleteEmote`, `CompleteEmote`, `OfferRewardEmote1`, `OfferRewardEmote2`, `OfferRewardEmote3`, `OfferRewardEmote4`, `OfferRewardEmoteDelay1`, `OfferRewardEmoteDelay2`, `OfferRewardEmoteDelay3`, `OfferRewardEmoteDelay4`, `StartScript`, `CompleteScript`) VALUES('10379','0','-262','10','10','0','16','0','0','0','0','0','0','0','0','0','0','0','136','0','0','10638','0','0','0','0','0','0','Touch of Weakness','','',NULL,NULL,NULL,'','','','','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0');
DELETE FROM creature_involvedrelation WHERE quest IN (10379);
DELETE FROM creature_questrelation WHERE quest IN (10379);
insert into `creature_involvedrelation` (`id`, `quest`) values('4606','10379');
insert into `creature_questrelation` (`id`, `quest`) values('4606','10379');


DELETE FROM conditions WHERE condition_entry IN (501);


DELETE FROM game_graveyard_zone WHERE id IN (1472);


DELETE FROM creature_loot_template WHERE entry IN (10925);


-- Add Missing Gossip Options (UDB Backport) - Weird Progression Must Delete It
DELETE FROM gossip_menu_option WHERE menu_id IN (5743,5744);
insert into `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `action_script_id`, `box_coded`, `box_money`, `box_text`, `condition_id`) values('5743','0','0','Mourn the great loss.','1','1','-1','0','5743','0','0',NULL,'483');
insert into `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `action_script_id`, `box_coded`, `box_money`, `box_text`, `condition_id`) values('5743','1','0','Mourn the great loss.','1','1','-1','0','5744','0','0',NULL,'482');
insert into `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `action_script_id`, `box_coded`, `box_money`, `box_text`, `condition_id`) values('5744','0','0','This sounds like a task worthy of the new king!','1','1','5746','0','0','0','0','','0');



















