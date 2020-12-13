/*
HALLOW'S END - SHADE OF THE HORSEMAN EVENT FULL IMPLEMENTATION & NOTES

TODOS:
- General tuning of the encounter may be necessary as mentioned in tactics section below and comments in core code
- Sometimes Shade will come down and land early even though not every fire has been put out, this is just a side effect of the way the spells work with a 100 yd radius check (I'm pretty sure even on retail I've seen this happen so not worrying about it for now)
    * If this becomes an issue, try turning off failure checker during conflag/bombing run, or slowing the rate of the failure check. If all else fails, we can track the number of fires currently spawned and store it off along with the encounter state.
- There is a Stormwind Guard in Goldshire (and presumably a helper guard in every location) which continually grabs water from the barrel and moves to throw it on flames. Helper guards can throw buckets on different buildings.
- One of the orphans has a movement path that happens sometimes in Goldshire
- Bats should make sound (general Hallow's End)
ServerToClient: SMSG_PLAY_OBJECT_SOUND (0x27A8) Length: 42 ConnIdx: 1 Time: 10/28/2016 13:58:54.971 Number: 10241
SoundId: 6596 (6596)
SourceObjectGUID: Full: 0x2C16FC0000B03280000017000112C8E9 GameObject/0 R1471/S23 Map: 0 Entry: 180426 Low: 18008297
TargetObjectGUID: Full: 0x2C16FC0000B03280000017000112C8E9 GameObject/0 R1471/S23 Map: 0 Entry: 180426 Low: 18008297
Position: X: -9456.982 Y: 61.90625 Z: 58.21997

----------------------------------------------------------
2 October 2007
Patch 2.2.2
Hallow's End New Holiday World Event: Headless Horseman has been seen terrorizing local villages.

For TBC the Shade attack event is triggered every 4 hours and it hits all village locations at the same time (controlled via worldstate)

In WotLK there was a change such that the event starts when either daily quests 12135 (Alliance) or 12139 (Horde) are accepted ("Let the Fires Come!")
"Patch 3.0.2 (14-Oct-2008) Shade of the Horseman now spawns in response to a quest, where before he appeared at 4 hour intervals."
The text that's shown while the current village isn't under attack by Shade changed along with how the event is triggered (in TBC the text references a worldstate variable, $4676D)

Shade of the Horseman 23543
Headless Horseman - Fire (DND) 23537
Invisible Cooking Object 186249 - yes, you can cook on the fires that Shade of the Horseman creates while your friends desperately try to put them out

Tactics from wowwiki:
----------------------------------------------------------
Shade of the Horseman cannot be attacked while he is in the air.

The encounter may scale to the number of players in the area.
This makes it possible to solo the event if you're alone, but it can also make the event near impossible to complete if there are a number of people not participating.

The encounter starts with the shade setting 1-3 fires (depending on number of people in the area).
Fires are laid out on a square grid.
Fire have three levels, and periodically grow in size if left alone (the speed of growth is also dependent on number of people nearby).
When a third level fire grows, it sends out embers into any adjacent spaces that don't currently have fires, starting level one fires there.

The trick to fighting established fires is to limit their potential growing area as you slowly push them back.
If an entire building is on fire, pick one end to start with, otherwise start with whatever side is open to more burnable spaces.
Don't put out level one fires if there are level three fires adjacent, or they'll just be re-kindled; knock the level three down first (or along with the level ones).
Buckets hit a number of spaces at once, so try to center them one space into the burning area, so you're putting out the front line while you're driving down the spaces behind them.

If you can get everyone to concentrate on a single building at a time, it makes putting out the fires a lot easier.
The fires spread if you leave them alone or cannot put them out fast enough, so its easiest to put out one building and then the next rather than trying to put out two buildings simultaneously.

A useful tactic is to form a bucket line. Someone stands close to the water tub, loots water buckets from the tub, and throws them to someone closer to still-burning fires. If necessary, that person throws to someone yet closer.

As water buckets are unique, throwing a bucket to someone who already has one wastes it.
Due to lag, it is very difficult to throw a bucket to someone who is moving.
Because of these, it is useful to arrange the bucket line before starting the event.

Another useful tactic is for all nearby players to have buckets in hand before the event is started.
Putting out fires that are further away from the bucket, before they get a chance to spread, makes it much easier to win the event.

If you are not in a bucket chain, any speed increase is useful. Druids and Shamans can use items while shifted so Travel form and Ghost Wolf respectively make you much more effective.
Also, if you are in a group with a Hunter they can make you run much faster with Aspect of the Pack. Also, as you instantly mount the Flying Broom, it makes it a useful mount for this.
----------------------------------------------------------

TBC reference video: https://www.youtube.com/watch?v=uWQSNITHk58
This showcases WorldState triggering of the event and different Large Jack-o'-Lantern handling which are exclusive to TBC
Also the fires look significantly different from current retail (there are some extra large ones?)
*/
-- this Deathguard Elite in Brill seems out of place, it's most likely a temp spawn caused by pvp activity
DELETE FROM creature WHERE guid=45204 AND id=7980;

-- Shade of the Horseman
UPDATE creature_template SET InhabitType=1, Leash=50, ExtraFlags=4096 WHERE Entry=23543; -- turn off flying by default, will be set by movement path

-- Headless Horseman Fire Bunny
UPDATE creature_template SET UnitFlags=768+33554432, InhabitType=7 WHERE Entry=23686; -- guessed

-- -----------------------------
-- updates for TBC only
-- -----------------------------
-- these two texts were different before 3.0 changes were made to the event
-- the npc_text and broadcast_text data in tbc-db incorrectly had the 3.0 version
-- UPDATE broadcast_text SET text1='The Headless Horseman''s undead mind is obsessed!  During Hallow''s End, his attacks on this village are as rhythmic as his insane voice.  He will return in roughly $4676D.' WHERE id=22061; -- Alliance
-- UPDATE broadcast_text SET text1='The Headless Horseman''s mind is plagued with dementia!  During Hallow''s End, his attacks on this village are as rhythmic as his insane voice.$B$BHe will return in roughly $4676D.' WHERE id=22528; -- Horde
-- updates performed in core SQL file

-- In WotLK, the Large Jack-o'-Lantern 186887 offers two daily quests:
-- Smash the Pumpkin 12133 (Alliance) / 12155 (Horde)
-- SELECT * FROM gameobject_questrelation WHERE quest IN (12133,12155);
-- DELETE FROM gameobject_questrelation WHERE id=186887;
-- INSERT INTO gameobject_questrelation (id, quest) VALUES (186887,12133),(186887,12155);
-- DELETE FROM quest_template WHERE entry IN (12133,12155);
-- INSERT INTO quest_template (entry, Method, ZoneOrSort, MinLevel, QuestLevel, Type, RequiredClasses, RequiredRaces, RequiredSkill, RequiredSkillValue, RequiredCondition, RepObjectiveFaction, RepObjectiveValue, RequiredMinRepFaction, RequiredMinRepValue, RequiredMaxRepFaction, RequiredMaxRepValue, SuggestedPlayers, LimitTime, QuestFlags, SpecialFlags, CharTitleId, PrevQuestId, NextQuestId, ExclusiveGroup, NextQuestInChain, SrcItemId, SrcItemCount, SrcSpell, Title, Details, Objectives, OfferRewardText, RequestItemsText, EndText, ObjectiveText1, ObjectiveText2, ObjectiveText3, ObjectiveText4, ReqItemId1, ReqItemId2, ReqItemId3, ReqItemId4, ReqItemCount1, ReqItemCount2, ReqItemCount3, ReqItemCount4, ReqSourceId1, ReqSourceId2, ReqSourceId3, ReqSourceId4, ReqSourceCount1, ReqSourceCount2, ReqSourceCount3, ReqSourceCount4, ReqCreatureOrGOId1, ReqCreatureOrGOId2, ReqCreatureOrGOId3, ReqCreatureOrGOId4, ReqCreatureOrGOCount1, ReqCreatureOrGOCount2, ReqCreatureOrGOCount3, ReqCreatureOrGOCount4, ReqSpellCast1, ReqSpellCast2, ReqSpellCast3, ReqSpellCast4, RewChoiceItemId1, RewChoiceItemId2, RewChoiceItemId3, RewChoiceItemId4, RewChoiceItemId5, RewChoiceItemId6, RewChoiceItemCount1, RewChoiceItemCount2, RewChoiceItemCount3, RewChoiceItemCount4, RewChoiceItemCount5, RewChoiceItemCount6, RewItemId1, RewItemId2, RewItemId3, RewItemId4, RewItemCount1, RewItemCount2, RewItemCount3, RewItemCount4, RewRepFaction1, RewRepFaction2, RewRepFaction3, RewRepFaction4, RewRepFaction5, RewRepValue1, RewRepValue2, RewRepValue3, RewRepValue4, RewRepValue5, RewMaxRepValue1, RewMaxRepValue2, RewMaxRepValue3, RewMaxRepValue4, RewMaxRepValue5, RewHonorableKills, RewOrReqMoney, RewMoneyMaxLevel, RewSpell, RewSpellCast, RewMailTemplateId, RewMailDelaySecs, PointMapId, PointX, PointY, PointOpt, DetailsEmote1, DetailsEmote2, DetailsEmote3, DetailsEmote4, DetailsEmoteDelay1, DetailsEmoteDelay2, DetailsEmoteDelay3, DetailsEmoteDelay4, IncompleteEmote, IncompleteEmoteDelay, CompleteEmote, CompleteEmoteDelay, OfferRewardEmote1, OfferRewardEmote2, OfferRewardEmote3, OfferRewardEmote4, OfferRewardEmoteDelay1, OfferRewardEmoteDelay2, OfferRewardEmoteDelay3, OfferRewardEmoteDelay4, StartScript, CompleteScript) VALUES
-- ('12133', '2', '-22', '1', '-1', '0', '0', '1101', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '4608', '1', '0', '0', '0', '0', '0', '36876', '1', '0', 'Smash the Pumpkin', 'This large jack-o\'-lantern rests in the middle of the village.  It eyes those who look upon it, betraying a dark menace within.$B$BSmashing the pumpking reveals an old, scorched holy symbol.', 'Give the Scorched Holy Symbol to the Costumed Orphan Matron.', "You found this inside the Headless Horseman\'s jack-o-lantern?  It is an old symbol of the Light.  If must have been the Horseman\'s, before he was cursed and turned into the monster he is today.  Thank you, $N.  This symbol deserves to be with paladins.  I will make sure they get it.$B$BOh, and I almost forgot!  You have a secret admirer...$B$BOne of the children wanted you to have this.  She was too shy to give it to you herself.", 'Yes, $N?', '', '', '', '', '', '36876', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '34077', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '42999', '42999', '42999', '42999', '42999', '0', '0', '5400', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
-- ('12155', '2', '-22', '1', '-1', '0', '0', '690', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '4608', '1', '0', '0', '0', '0', '0', '36876', '1', '0', 'Smash the Pumpkin', 'This large jack-o\'-lantern rests in the middle of the village.  It eyes those who look upon it, betraying a dark menace within.$B$BSmashing the pumpking reveals an old, scorched holy symbol.', 'Give the Scorched Holy Symbol to the Masked Orphan Matron.', "You found this inside the Headless Horseman\'s jack-o-lantern?  It is an old symbol of the Light.  If must have been the Horseman\'s, before he was cursed and turned into the monster he is today.  Thank you, $N.  This symbol deserves to be with paladins.  I will make sure they get it.$B$BOh, and I almost forgot!  You have a secret admirer...$B$BOne of the children wanted you to have this.  She was too shy to give it to you herself.", 'Yes, $N?', '', '', '', '', '', '36876', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '34077', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '42999', '42999', '42999', '42999', '42999', '0', '0', '5400', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
-- In TBC, there is a special gossip option to get a reward instead. Reward is granted via an item - Smashed Pumpkin Loot
-- changed to Crudely Wrapped Gift in WotLK: https://www.wowhead.com/item=34077/crudely-wrapped-gift#comments
-- somehow we had the wrong item in tbc-db
DELETE FROM item_template WHERE entry=34077;
INSERT INTO item_template (entry, class, subclass, unk0, name, displayid, Quality, Flags, BuyCount, BuyPrice, SellPrice, InventoryType, AllowableClass, AllowableRace, ItemLevel, RequiredLevel, RequiredSkill, RequiredSkillRank, requiredspell, requiredhonorrank, RequiredCityRank, RequiredReputationFaction, RequiredReputationRank, maxcount, stackable, ContainerSlots, stat_type1, stat_value1, stat_type2, stat_value2, stat_type3, stat_value3, stat_type4, stat_value4, stat_type5, stat_value5, stat_type6, stat_value6, stat_type7, stat_value7, stat_type8, stat_value8, stat_type9, stat_value9, stat_type10, stat_value10, dmg_min1, dmg_max1, dmg_type1, dmg_min2, dmg_max2, dmg_type2, dmg_min3, dmg_max3, dmg_type3, dmg_min4, dmg_max4, dmg_type4, dmg_min5, dmg_max5, dmg_type5, armor, holy_res, fire_res, nature_res, frost_res, shadow_res, arcane_res, delay, ammo_type, RangedModRange, spellid_1, spelltrigger_1, spellcharges_1, spellppmRate_1, spellcooldown_1, spellcategory_1, spellcategorycooldown_1, spellid_2, spelltrigger_2, spellcharges_2, spellppmRate_2, spellcooldown_2, spellcategory_2, spellcategorycooldown_2, spellid_3, spelltrigger_3, spellcharges_3, spellppmRate_3, spellcooldown_3, spellcategory_3, spellcategorycooldown_3, spellid_4, spelltrigger_4, spellcharges_4, spellppmRate_4, spellcooldown_4, spellcategory_4, spellcategorycooldown_4, spellid_5, spelltrigger_5, spellcharges_5, spellppmRate_5, spellcooldown_5, spellcategory_5, spellcategorycooldown_5, bonding, description, PageText, LanguageID, PageMaterial, startquest, lockid, Material, sheath, RandomProperty, RandomSuffix, block, itemset, MaxDurability, area, Map, BagFamily, TotemCategory, socketColor_1, socketContent_1, socketColor_2, socketContent_2, socketColor_3, socketContent_3, socketBonus, GemProperties, RequiredDisenchantSkill, ArmorDamageModifier, ScriptName, DisenchantID, FoodType, minMoneyLoot, maxMoneyLoot, Duration) VALUES
('34077', '0', '0', '-1', 'Smashed Pumpkin Loot', '49426', '1', '4', '1', '0', '0', '0', '-1', '-1', '1', '0', '0', '0', '0', '0', '0', '0', '0', '1', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '5', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '1', '', '0', '0', '0', '0', '0', '-1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '-1', '0', '', '0', '0', '0', '0', '0');
-- something is off here... the 2.4.3 TBC client doesn't want to show the "proper" display id of 31577, using the original instead

-- interestingly, trinity still has the old item loot template for 34077
-- https://web.archive.org/web/20071021135544/http://thottbot.com/i34077
DELETE FROM item_loot_template WHERE entry=34077;
INSERT INTO item_loot_template (entry, item, ChanceOrQuestChance, groupid, mincountOrRef, maxcount, condition_id, comments) VALUES
(34077, 34068, 100, 0, 1, 5, 0, 'Weighted Jack-''o-Lantern'),
(34077, 33189, 35.6, 0, 1, 1, 0, 'Rickety Magic Broom'),
(34077, 20397, 3.125, 1, 1, 1, 0, 'Hallowed Wand - Pirate'),
(34077, 20398, 3.125, 1, 1, 1, 0, 'Hallowed Wand - Ninja'),
(34077, 20399, 3.125, 1, 1, 1, 0, 'Hallowed Wand - Leper Gnome'),
(34077, 20409, 3.125, 1, 1, 1, 0, 'Hallowed Wand - Ghost'),
(34077, 20410, 3.125, 1, 1, 1, 0, 'Hallowed Wand - Bat'),
(34077, 20411, 3.125, 1, 1, 1, 0, 'Hallowed Wand - Skeleton'),
(34077, 20413, 3.125, 1, 1, 1, 0, 'Hallowed Wand - Random'),
(34077, 20414, 3.125, 1, 1, 1, 0, 'Hallowed Wand - Wisp'),
(34077, 20391, 0, 2, 1, 1, 0, 'Flimsy Male Gnome Mask'),
(34077, 20392, 0, 2, 1, 1, 0, 'Flimsy Female Gnome Mask'),
(34077, 20561, 0, 2, 1, 1, 0, 'Flimsy Male Dwarf Mask'),
(34077, 20562, 0, 2, 1, 1, 0, 'Flimsy Female Dwarf Mask'),
(34077, 20563, 0, 2, 1, 1, 0, 'Flimsy Female Nightelf Mask'),
(34077, 20564, 0, 2, 1, 1, 0, 'Flimsy Male Nightelf Mask'),
(34077, 20565, 0, 2, 1, 1, 0, 'Flimsy Female Human Mask'),
(34077, 20566, 0, 2, 1, 1, 0, 'Flimsy Male Human Mask'),
(34077, 20567, 0, 2, 1, 1, 0, 'Flimsy Female Troll Mask'),
(34077, 20568, 0, 2, 1, 1, 0, 'Flimsy Male Troll Mask'),
(34077, 20569, 0, 2, 1, 1, 0, 'Flimsy Female Orc Mask'),
(34077, 20570, 0, 2, 1, 1, 0, 'Flimsy Male Orc Mask'),
(34077, 20571, 0, 2, 1, 1, 0, 'Flimsy Female Tauren Mask'),
(34077, 20572, 0, 2, 1, 1, 0, 'Flimsy Male Tauren Mask'),
(34077, 20573, 0, 2, 1, 1, 0, 'Flimsy Male Undead Mask'),
(34077, 20574, 0, 2, 1, 1, 0, 'Flimsy Female Undead Mask'),
(34077, 20389, 0, 3, 1, 1, 0, 'Candy Corn'),
(34077, 20390, 0, 3, 1, 1, 0, 'Candy Bar'),
(34077, 20388, 0, 3, 1, 1, 0, 'Lollipop');

-- the first text of the jack-o-lantern was slightly different in TBC
-- UPDATE broadcast_text SET `text`="This large jack-o'-lantern rests in the middle of the village.  It eyes those who look up it, betraying a dark menace within." WHERE id=23650;
-- update performed in core SQL file

/*
-- -----------------------------
-- updates for WotLK 3.0.2+ only
-- -----------------------------
-- Fire Training/Fire Brigade Practice seem to be a pre-req for Let the Fires Come!
UPDATE quest_template SET NextQuestId=12135 WHERE entry IN (11360,11439,11440); -- Fire Brigade Practice (x3) -> Let the Fires Come! (Alliance)
UPDATE quest_template SET NextQuestId=12139 WHERE entry IN (11449,11361,11450); -- Fire Training (x3) -> Let the Fires Come! (Horde)

-- can't start triggering quest "Let the Fires Come!" while event is happening
UPDATE quest_template SET RequiredCondition=10331 WHERE entry=12135; -- alliance
UPDATE quest_template SET RequiredCondition=10332 WHERE entry=12139; -- horde
-- -----------------------------
*/

-- fix wrong start date for Hallow's End - should go from Oct 18th 5:00am - Nov 1st 5:00am, duration of 20160 (14 days) is already correct
UPDATE game_event_time SET start_time='2007-10-18 05:00:00', end_time='2030-12-30 22:00:00' WHERE `entry`=12;

DELETE FROM conditions WHERE condition_entry BETWEEN 10321 AND 10332;
INSERT INTO conditions (condition_entry, `type`, value1, value2, flags, comments) VALUES
(10321, 18, 18000, 0, 0, 'INSTANCE_CONDITION_ID_FIRE_BRIGADE_PRACTICE_GOLDSHIRE'),
(10322, 18, 18001, 0, 0, 'INSTANCE_CONDITION_ID_FIRE_BRIGADE_PRACTICE_KHARANOS'),
(10323, 18, 18002, 0, 0, 'INSTANCE_CONDITION_ID_FIRE_BRIGADE_PRACTICE_AZURE_WATCH'),
(10324, 18, 18003, 0, 0, 'INSTANCE_CONDITION_ID_FIRE_TRAINING_BRILL'),
(10325, 18, 18004, 0, 0, 'INSTANCE_CONDITION_ID_FIRE_TRAINING_RAZOR_HILL'),
(10326, 18, 18005, 0, 0, 'INSTANCE_CONDITION_ID_FIRE_TRAINING_FALCONWING'),
(10327, 18, 18006, 0, 0, 'INSTANCE_CONDITION_ID_STOP_THE_FIRES_ALLIANCE'),
(10328, 18, 18007, 0, 0, 'INSTANCE_CONDITION_ID_STOP_THE_FIRES_HORDE'),
(10329, 18, 18008, 0, 0, 'INSTANCE_CONDITION_ID_THE_HEADLESS_HORSEMAN_ALLIANCE'),
(10330, 18, 18009, 0, 0, 'INSTANCE_CONDITION_ID_THE_HEADLESS_HORSEMAN_HORDE'),
(10331, 18, 18010, 0, 0, 'INSTANCE_CONDITION_ID_LET_THE_FIRES_COME_ALLIANCE'),
(10332, 18, 18011, 0, 0, 'INSTANCE_CONDITION_ID_LET_THE_FIRES_COME_HORDE');

-- Costumed Orphan Matron 24519 (Alliance)
-- Offers 3 different versions of "Fire Brigade Practice" while the event is not active (1 per village location)
UPDATE quest_template SET RequiredCondition=10321 WHERE entry=11360; -- Goldshire
UPDATE quest_template SET RequiredCondition=10322 WHERE entry=11439; -- Kharanos
UPDATE quest_template SET RequiredCondition=10323 WHERE entry=11440; -- Azure Watch
-- Also offers q.11131 "Stop the Fires!" while the event is in progress (all 3 locations)
UPDATE quest_template SET RequiredCondition=10327 WHERE entry=11131;
-- q.11135 "The Headless Horseman" is offered for a short time after Shade has been defeated
UPDATE quest_template SET RequiredCondition=10329 WHERE entry=11135;
DELETE FROM creature_questrelation WHERE id=23973 AND quest=11219;
INSERT INTO creature_questrelation (id, quest) VALUES (23973, 11219);
DELETE FROM creature_involvedrelation WHERE id=23973 AND quest=11219;
INSERT INTO creature_involvedrelation (id, quest) VALUES (23973, 11219);
-- adding all entries/text ids found for this entry just for reference, menu is handled via SD2 npc_orphan_matron
DELETE FROM gossip_menu WHERE `entry` IN (8763,8880,9468,9469);
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(8763,11143,0,0), -- normal
(8763,11145,0,0), -- landed, but not defeated?
(8763,11177,0,0), -- in progress
(8763,11147,0,0), -- victory/jack-o-lantern present
(8880,11590,0,0), -- "Who is the Headless Horseman?" response
(9468,11177,0,0), -- in progress
(9468,11143,0,0), -- normal
(9469,11143,0,0), -- normal
(9469,11177,0,0); -- in progress
DELETE FROM npc_text WHERE id IN (11143,11145,11147,11177,11590);
UPDATE gossip_menu_option SET option_broadcast_text=22620 WHERE menu_id=8763;
DELETE FROM npc_text_broadcast_text WHERE Id IN (11143,11145,11147,11177,11590);
INSERT INTO npc_text_broadcast_text (Id, Prob0, BroadcastTextId0) VALUES
(11143,1,22061),
(11145,1,22062),
(11147,1,22063),
(11177,1,22091),
(11590,1,22619);
DELETE FROM npc_gossip WHERE npc_guid IN (SELECT guid FROM creature WHERE id=24519);

-- Masked Orphan Matron 23973 (Horde)
-- Offers 3 different versions of "Fire Training" while the event is not active (1 per village location)
-- does SMSG_TEXT_EMOTE EmoteID: 456 (Read), emote doesn't exist in TBC client
UPDATE quest_template SET RequiredCondition=10324 WHERE entry=11449; -- Brill
UPDATE quest_template SET RequiredCondition=10325 WHERE entry=11361; -- Razor Hill
UPDATE quest_template SET RequiredCondition=10326 WHERE entry=11450; -- Falconwing Square
-- Also offers q.11219 "Stop the Fires!" while the event is in progress (all 3 locations)
UPDATE quest_template SET RequiredCondition=10328 WHERE entry=11219;
-- q.11220 "The Headless Horseman" is offered for a short time after Shade has been defeated
UPDATE quest_template SET RequiredCondition=10330 WHERE entry=11220;
-- adding all entries/text ids found for this entry just for reference, menu is handled via SD2 npc_orphan_matron
DELETE FROM gossip_menu WHERE entry IN (8842,9470,9471);
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(8842, 11473, 0, 0), -- normal
(8842, 11476, 0, 0), -- victory/jack-o-lantern present #2?
(9470, 11147, 0, 0), -- victory/jack-o-lantern present
(9470, 11177, 0, 0), -- in progress
(9470, 11473, 0, 0), -- normal
(9470, 11145, 0, 0), -- landed, but not defeated?
(9471, 11473, 0, 0); -- normal
DELETE FROM npc_text WHERE ID IN (11473,11476);
DELETE FROM npc_text_broadcast_text WHERE Id IN (11473,11476);
INSERT INTO npc_text_broadcast_text (Id, Prob0, BroadcastTextId0) VALUES
(11473, 1, 22528),
(11476, 1, 22531);
DELETE FROM npc_gossip WHERE npc_guid IN (SELECT guid FROM creature WHERE id=23973);

/*
Orphan Matron quests/gossip npc texts
-------------------------------------
Event not active
11143 The Headless Horseman's undead mind is obsessed!  During Hallow's End, his attacks on this village are frequent, and terrible. [Alliance - All Clear - WotLK 3.0.2+]
11143 The Headless Horseman's undead mind is obsessed!  During Hallow's End, his attacks on this village are as rhythmic as his insane voice.  He will return in roughly $4676D. [Alliance - All Clear - TBC 2.2.2+]
11473 The Headless Horseman's mind is plagued with dementia!  During Hallow's End, he might attack this village at any moment. [Horde -  All Clear - WotLK 3.0.2+]
11473 The Headless Horseman's mind is plagued with dementia!  During Hallow's End, his attacks on this village are as rhythmic as his insane voice.$B$BHe will return in roughly $4676D. [Horde - All Clear - TBC 2.2.2+]

Event in progress
11177	The Headless Horseman attacks!  The fires threaten to consume the whole village!  What will we do? [Alliance - Fires Started]
11145	The Headless Horseman attacks the village!  Someone must save the children and stop him! [Alliance - Landed]
11474	The Headless Horseman has set fire to the village!  We must protect the children! [Horde - Fires Started]
11475	The Headless Horseman is attacking!  Quickly, aid your Horde brethren in the village's defense! [Horde - Landed]

Event just ended
11147	We are free of the Headless Horseman's terror, for now.  We may breathe easy again, but until he can be defeated while joined with his head, he may return. [Alliance - Victory]
11476	The Headless Horseman had been driven away, for now.  We may breath easy for a time, but must remain ever vigilant. [Horde - Victory]

Normal gossip option answer
11590	The Headless Horseman, once a knight of the Silver Hand and a hero among his fellow paladins, is cursed.  Driven insane within the Scarlet Monastery, he believes that he is alive and we are dead.$B$BNow, his fervor no longer serves the Light.  With the c...
-------------------------------------
*/

-- Touring Orphan 23712
-- casts 43321 Human Child's Laughter - sound 11820/11821 every so often (event not in progress)
-- casts 43323 Human Child's Crying - sound 11818/11819 every so often + random say text matching gossip texts (event in progress)
UPDATE creature_template SET GossipMenuId=8979 WHERE Entry=23712;
DELETE FROM gossip_menu WHERE entry=8979;
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(8979, 11359, 0, 0), -- normal
(8979, 11356, 0, 0), -- in progress
(8979, 11358, 0, 0); -- victory/jack-o-lantern present
DELETE FROM npc_text WHERE ID IN (11359, 11356, 11358);
DELETE FROM npc_text_broadcast_text WHERE Id IN (11359, 11356, 11358);
INSERT INTO npc_text_broadcast_text (Id, Prob0, Prob1, Prob2, Prob3, Prob4, Prob5, BroadcastTextId0, BroadcastTextId1, BroadcastTextId2, BroadcastTextId3, BroadcastTextId4, BroadcastTextId5) VALUES
(11359, 1, 1, 1, 1, 1, 1, 22374, 23025, 23026, 23028, 23029, 23030),
(11356, 1, 1, 1, 1, 1, 0, 22177, 22344, 22345, 22346, 22347, 0),
(11358, 1, 1, 1, 1, 1, 0, 22373, 23057, 23058, 23059, 23060, 0);
DELETE FROM npc_gossip WHERE npc_guid IN (SELECT guid FROM creature WHERE id=23712);
UPDATE creature SET modelid=0 WHERE id=23712; -- should all random model, not fixed

-- Traveling Orphan 23971
-- casts 43324 Orc Child's Laughter - sound 11822/11823 every so often (event not in progress)
-- casts 64894? Orc Child's Crying - sound 11816/11817 every so often + random say text matching gossip texts (event in progress)
UPDATE creature_template SET GossipMenuId=8843 WHERE Entry=23971;
DELETE FROM gossip_menu WHERE entry=8843;
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(8843, 11477, 0, 0), -- normal
(8843, 11356, 0, 0), -- in progress (assumed, not from sniff)
(8843, 11479, 0, 0); -- victory/jack-o-lantern present
DELETE FROM npc_text WHERE id IN (11477,11479);
DELETE FROM npc_text_broadcast_text WHERE Id IN (11477,11479);
INSERT INTO npc_text_broadcast_text (Id, Prob0, Prob1, Prob2, Prob3, Prob4, Prob5, BroadcastTextId0, BroadcastTextId1, BroadcastTextId2, BroadcastTextId3, BroadcastTextId4, BroadcastTextId5) VALUES
(11477, 1, 1, 1, 1, 1, 1, 22532, 23020, 23021, 23022, 23023, 23024),
(11479, 1, 1, 1, 1, 1, 0, 22538, 23053, 23054, 23055, 23056, 0);
DELETE FROM npc_gossip WHERE npc_guid IN (SELECT guid FROM creature WHERE id=23971);
UPDATE creature SET modelid=0 WHERE id=23971; -- should all random model, not fixed

-- Large Jack-o'-Lantern 186887
DELETE FROM npc_text WHERE id IN (12137,12138);
DELETE FROM npc_text_broadcast_text WHERE Id IN (12137,12138,60003);
INSERT INTO npc_text_broadcast_text (Id, Prob0, BroadcastTextId0) VALUES
(12137, 1, 23650), -- "This large jack-o'-lantern rests in the middle of the village.  It eyes those who look up it, betraying a dark menace within."
-- 23651 "Smash the pumpkin!"
(12138, 1, 23652), -- "The pumpkin has been smashed, and offers no more treasure."
(60003, 1, 23653); -- "Smashing the pumpkin reveals a hidden treasure!  This is the greatest day you've ever known!"

-- 42143 "Headless Horseman - Start Fire Target Test"
-- 43711 "Headless Horseman - Start Fire Target Test (Guard)"
DELETE FROM spell_script_target WHERE entry IN (42143,43711);
INSERT INTO spell_script_target (entry, `type`, targetEntry, inverseEffectMask) VALUES
(42143, 1, 23537, 0),
(43711, 1, 23537, 0);
-- 42079 "Headless Horseman - Spread Fire"
DELETE FROM spell_script_target WHERE entry=42079;
INSERT INTO spell_script_target (entry, `type`, targetEntry, inverseEffectMask) VALUES
(42079, 1, 23537, 0);
-- 42178 "Headless Horseman - Invisible Campfire, Remove"
DELETE FROM spell_script_target WHERE entry=42178;
INSERT INTO spell_script_target (entry, `type`, targetEntry, inverseEffectMask) VALUES
(42178, 0, 186249, 0);
-- 42348 "Headless Horseman - Fire Extinguish (just splash)"
DELETE FROM spell_script_target WHERE entry=42348;
INSERT INTO spell_script_target (entry, `type`, targetEntry, inverseEffectMask) VALUES
(42348, 1, 23537, 0);

-- 42339 "Bucket Lands" - parent 42340 "Throw Bucket"

-- 44255 "Headless Horseman - Summon Large Jack-o'-Lantern" - should hit script target... target creature/object is unknown so we'll use a random existing invisible dummy npc - 23686 Headless Horseman Flame Bunny
DELETE FROM spell_script_target WHERE entry=44255;
INSERT INTO spell_script_target (entry, `type`, targetEntry, inverseEffectMask) VALUES
(44255, 1, 23686, 0);
-- 42151 "Headless Horseman - All Fires Out Test" - used for checking landing condition
DELETE FROM spell_script_target WHERE entry=42151;
INSERT INTO spell_script_target (entry, `type`, targetEntry, inverseEffectMask) VALUES
(42151, 1, 23537, 0);
-- 43244 "Headless Horseman - Create Water Bucket, Barrel Splash" - hit water barrel object 186234 for visual
DELETE FROM spell_script_target WHERE entry=43244;
INSERT INTO spell_script_target (entry, `type`, targetEntry, inverseEffectMask) VALUES
(43244, 0, 186234, 0);

-- Add text used by guard npcs when restarting fires for practice
UPDATE creature_template SET NpcFlags=1 WHERE Entry=24491; -- Deathguard Florence

-- 18038 Azuremyst Peacekeeper
DELETE FROM gossip_menu WHERE entry=8981;
INSERT INTO gossip_menu (entry, text_id) VALUES
(8981, 12119);
DELETE FROM npc_text WHERE id IN (12119,60004,60005,60006,60007,60008);
DELETE FROM npc_text_broadcast_text WHERE id IN (12119,60004,60005,60006,60007,60008);
INSERT INTO npc_text_broadcast_text (Id, Prob0, BroadcastTextId0) VALUES
(12119, 1, 23339), -- Azuremyst Peacekeeper
(60004, 1, 23341), -- Razor Hill Grunt
(60005, 1, 23529), -- Deathguard Florence
(60006, 1, 23583), -- Silvermoon Guardian
(60007, 1, 23555), -- Ironforge Mountaineer
(60008, 1, 23557); -- Stormwind Guard
-- 23341 Here we practice fire fighting techniques.  Honor to the horde! (Durotar - Razor Hill Grunt)
-- 23529 Here we practice fire fighting techniques.  Power to the Forsaken! (Tirisfal - Deathguard Florence)
-- 23583 Here we practice fire fighting techniques.	(Eversong - Silvermoon Guardian)
-- 23555 If you're looking to practice fire fighting, this is the place. There may be a heap of snow hereabouts, but you never know when Steelgrill or those gnomes'll cause an explosion, eh? (Dun Morogh - Ironforge Mountaineer)
-- 23339 We set up this area to practice fire fighting.  You never know when the town will be imperiled! (Azuremyst - Azuremyst Peacekeeper)
-- 23557 We set up this area to practice fire fighting.  You never know when the town will be imperiled! (Elwynn - Stormwind Guard)

-- ---------
-- GOLDSHIRE
-- ---------
DELETE FROM creature WHERE guid BETWEEN 150744 AND 150787;
INSERT INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecsmin`,`spawntimesecsmax`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`DeathState`,`MovementType`) VALUES
(150744,23537,0,1,0,0,-9471.03,45.1132,73.4661,0.122173,120,120,0,0,0,0,0,0),
(150745,23537,0,1,0,0,-9465.34,81.3041,66.3204,5.41052,120,120,0,0,0,0,0,0),
(150746,23537,0,1,0,0,-9456.85,40.0742,62.5192,2.40855,120,120,0,0,0,0,0,0),
(150747,23537,0,1,0,0,-9478.45,38.6229,57.3267,2.68781,120,120,0,0,0,0,0,0),
(150748,23537,0,1,0,0,-9463.05,40.6457,67.8603,0.244346,120,120,0,0,0,0,0,0),
(150749,23537,0,1,0,0,-9460.58,44.2099,63.6614,2.07694,120,120,0,0,0,0,0,0),
(150750,23537,0,1,0,0,-9478.81,43.3041,68.713,0.418879,120,120,0,0,0,0,0,0),
(150751,23537,0,1,0,0,-9449.27,89.8929,66.166,1.23918,120,120,0,0,0,0,0,0),
(150752,23537,0,1,0,0,-9479.48,43.1344,59.1589,1.11701,120,120,0,0,0,0,0,0),
(150753,23537,0,1,0,0,-9449.43,100.133,65.4443,4.55531,120,120,0,0,0,0,0,0),
(150754,23537,0,1,0,0,-9451.15,83.907,65.8188,3.12414,120,120,0,0,0,0,0,0),
(150755,23537,0,1,0,0,-9461.46,39.5451,64.4157,1.98968,120,120,0,0,0,0,0,0),
(150756,23537,0,1,0,0,-9461.72,83.1922,63.0978,1.44862,120,120,0,0,0,0,0,0),
(150757,23537,0,1,0,0,-9458.23,39.6629,68.2,3.50811,120,120,0,0,0,0,0,0),
(150758,23537,0,1,0,0,-9453.26,81.707,66.2121,4.06662,120,120,0,0,0,0,0,0),
(150759,23537,0,1,0,0,-9472.39,40.6311,61.3718,3.07178,120,120,0,0,0,0,0,0),
(150760,23537,0,1,0,0,-9452.28,39.5198,61.4459,0.314159,120,120,0,0,0,0,0,0),
(150761,23537,0,1,0,0,-9470.22,40.7396,64.3475,4.72984,120,120,0,0,0,0,0,0),
(150762,23537,0,1,0,0,-9446.34,94.4713,69.1612,1.36136,120,120,0,0,0,0,0,0),
(150763,23537,0,1,0,0,-9450.67,86.8271,65.5915,0.959931,120,120,0,0,0,0,0,0),
(150764,23537,0,1,0,0,-9456.74,34.4795,71.2769,3.89208,120,120,0,0,0,0,0,0),
(150765,23537,0,1,0,0,-9468.55,85.2963,65.7585,6.05629,120,120,0,0,0,0,0,0),
(150766,23537,0,1,0,0,-9451.73,38.3844,68.4768,6.19592,120,120,0,0,0,0,0,0),
(150767,23537,0,1,0,0,-9450.5,51.6684,57.2175,2.46091,120,120,0,0,0,0,0,0),
(150768,23537,0,1,0,0,-9459.16,80.1035,69.1699,5.75959,120,120,0,0,0,0,0,0),
(150769,23537,0,1,0,0,-9467.83,90.8343,67.7137,3.29867,120,120,0,0,0,0,0,0),
(150770,23537,0,1,0,0,-9479.08,33.505,70.159,0.541052,120,120,0,0,0,0,0,0),
(150771,23537,0,1,0,0,-9478.9,35.9629,63.6133,4.41568,120,120,0,0,0,0,0,0),
(150772,23537,0,1,0,0,-9479.5,38.352,68.5789,4.45059,120,120,0,0,0,0,0,0),
(150773,23537,0,1,0,0,-9479.07,30.1822,60.664,0.383972,120,120,0,0,0,0,0,0),
(150774,23537,0,1,0,0,-9469.86,89.6167,63.213,2.77507,120,120,0,0,0,0,0,0),
(150775,23537,0,1,0,0,-9480.77,28.7764,68.4368,0.366519,120,120,0,0,0,0,0,0),
(150776,23537,0,1,0,0,-9467.09,95.0705,69.1272,5.49779,120,120,0,0,0,0,0,0),
(150777,23537,0,1,0,0,-9470.01,98.6308,66.502,1.55334,120,120,0,0,0,0,0,0),
(150778,23537,0,1,0,0,-9461.83,106.334,69.3281,3.57792,120,120,0,0,0,0,0,0),
(150779,23537,0,1,0,0,-9467.07,102.95,66.504,2.23402,120,120,0,0,0,0,0,0),
-- Fire Brigade Practice fire npc targets
(150780,23537,0,1,0,0,-9313.23,58.6374,75.7441,0,120,120,0,0,0,0,0,0),
(150781,23537,0,1,0,0,-9328.26,55.9236,62.8563,0,120,120,0,0,0,0,0,0),
(150782,23537,0,1,0,0,-9313.66,52.9425,77.083,0,120,120,0,0,0,0,0,0),
(150783,23537,0,1,0,0,-9321.35,64.1546,67.3483,0,120,120,0,0,0,0,0,0),
(150784,23537,0,1,0,0,-9314.07,45.9143,72.6086,0,120,120,0,0,0,0,0,0),
-- Black Cat 22816
(150785,22816,0,1,0,0,-9431.12,75.7016,56.3998,4.55143,120,120,5,0,0,0,0,1),
-- 23686 Headless Horseman Flame Bunny (CUSTOM: spawn not present in sniff, but xyz location for jack-o-lantern object 186887 is accurate)
-- serves as target for spell 44255
(150786,23686,0,1,0,0,-9464.3056640625,64.1825103759765625,56.40876388549804687,6.161014556884765625,120,120,0,0,0,0,0,0),
-- helper Stormwind Guard
(150787,1423,0,1,0,0,-9371.22,52.4438,61.2962,0.108719,120,120,0,0,0,0,0,0);
DELETE FROM game_event_creature WHERE guid BETWEEN 150744 AND 150787;
INSERT INTO game_event_creature (guid, `event`) SELECT guid, 12 FROM creature WHERE guid BETWEEN 150744 AND 150787;
DELETE FROM game_event_creature_data WHERE guid=150787;
INSERT INTO game_event_creature_data (guid, entry_id, modelid, equipment_id, vendor_id, spell_start, spell_end, `event`) VALUES
(150787, 0, 0, 0, 0, 0, 0, 12);
-- despawn a few wolves in the area
DELETE FROM game_event_creature WHERE guid IN (99855,80343,99849,80341,79648) AND `event`=-12;
INSERT INTO game_event_creature (guid, `event`) SELECT guid, -12 FROM creature WHERE guid IN (99855,80343,99849,80341,79648);

DELETE FROM gameobject WHERE guid BETWEEN 150145 AND 150170;
INSERT INTO gameobject (guid, id, map, spawnMask, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecsmin, spawntimesecsmax, animprogress, state) VALUES
(150145, 186615, 0, 1, -9432.54, 62.3177, 56.539, 4.31097, 0, 0, -0.833885, 0.551938, 120, 120, 255, 1), -- Water Buckets
(150146, 186234, 0, 1, -9432.36, 60.2969, 56.4096, 3.26377, 0, 0, -0.998135, 0.0610518, 120, 120, 255, 1), -- Water Barrel
(150147, 186614, 0, 1, -9433.42, 62.276, 56.4893, 2.16421, 0, 0, 0.882947, 0.469473, 120, 120, 255, 1), -- Water Bucket
(150148, 186614, 0, 1, -9433.38, 61.6545, 56.4962, 2.32129, 0, 0, 0.91706, 0.39875, 120, 120, 255, 1), -- Water Bucket
(150149, 180700, 0, 1, -9321.04, 64.5196, 65.0196, 1.85005, 0, 0, 0.798635, 0.601815, 120, 120, 255, 1), -- Hay Bale 1
(150150, 180700, 0, 1, -9320.79, 63.7614, 65.384, 2.77507, 0, 0, 0.983254, 0.182238, 120, 120, 255, 1), -- Hay Bale 1
(150151, 180700, 0, 1, -9321.72, 64.5673, 65.5703, 3.927, 0, 0, -0.923879, 0.382686, 120, 120, 255, 1), -- Hay Bale 1
(150152, 180700, 0, 1, -9313.45, 59.1376, 75.6411, 3.94445, 0, 0, -0.920505, 0.390732, 120, 120, 255, 1), -- Hay Bale 1
(150153, 180700, 0, 1, -9314.12, 52.7427, 76.7604, 4.06662, 0, 0, -0.894934, 0.446199, 120, 120, 255, 1), -- Hay Bale 1
(150154, 180700, 0, 1, -9327.91, 55.8726, 61.5201, 3.3685, 0, 0, -0.993571, 0.113208, 120, 120, 255, 1), -- Hay Bale 1
(150155, 180700, 0, 1, -9328.77, 55.6623, 61.908, 1.23918, 0, 0, 0.580703, 0.814116, 120, 120, 255, 1), -- Hay Bale 1
(150165, 180700, 0, 1, -9314.16, 45.1347, 72.4229, 2.02458, 0, 0, 0.848047, 0.529921, 120, 120, 255, 1), -- Hay Bale 1
(150166, 180700, 0, 1, -9313.33, 46.6067, 72.5807, 4.45059, 0, 0, -0.793353, 0.608762, 120, 120, 255, 1), -- Hay Bale 1
(150167, 186720, 0, 1, -9321.9, 64.3889, 65.7903, 2.75761, 0, 0, 0.981627, 0.190812, 120, 120, 255, 1), -- Fire Effigy
(150168, 186720, 0, 1, -9313.26, 58.746, 75.6661, 2.82743, 0, 0, 0.987688, 0.156436, 120, 120, 255, 1),  -- Fire Effigy
(150169, 186720, 0, 1, -9313.74, 45.8674, 72.5577, 4.13643, 0, 0, -0.878817, 0.47716, 120, 120, 255, 1),  -- Fire Effigy
(150170,186615,0,1,-9376.37,54.3689,60.696,5.27953,0,0,0.588741,0.808322,180,180,100,1); -- Water Buckets
DELETE FROM game_event_gameobject WHERE guid BETWEEN 150145 AND 150170;
INSERT INTO game_event_gameobject (guid, `event`) SELECT guid, 12 FROM gameobject WHERE guid BETWEEN 150145 AND 150170;

-- --------
-- KHARANOS
-- --------
DELETE FROM creature WHERE guid BETWEEN 150800 AND 150842;
INSERT INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecsmin`,`spawntimesecsmax`,`spawndist`,`MovementType`) VALUES
(150800,23537,0,1,-5602.49,-512.94,413.35,4.55531,120,120,0,0),
(150801,23537,0,1,-5581.33,-520.925,413.458,4.45059,120,120,0,0),
(150802,23537,0,1,-5578.97,-515.636,418.231,3.07178,120,120,0,0),
(150803,23537,0,1,-5611.58,-517.385,413.508,4.06662,120,120,0,0),
(150804,23537,0,1,-5576.19,-515.561,413.432,2.07694,120,120,0,0),
(150805,23537,0,1,-5595.67,-513.595,409.415,2.77507,120,120,0,0),
(150806,23537,0,1,-5576.14,-520.482,413.361,3.50811,120,120,0,0),
(150807,23537,0,1,-5576.05,-511.168,413.39,1.98968,120,120,0,0),
(150808,23537,0,1,-5590.51,-503.796,413.611,0.541052,120,120,0,0),
(150809,23537,0,1,-5597.58,-513.344,413.275,1.36136,120,120,0,0),
(150810,23537,0,1,-5591.33,-506.983,416.902,3.29867,120,120,0,0),
(150811,23537,0,1,-5581.23,-527.377,415.252,0.383972,120,120,0,0),
(150812,23537,0,1,-5581.98,-462.513,414.499,5.49779,120,120,0,0),
(150813,23537,0,1,-5576.18,-506.084,413.803,0.314159,120,120,0,0),
(150814,23537,0,1,-5576.08,-524.46,413.226,0.366519,120,120,0,0),
(150815,23537,0,1,-5577.6,-462.363,414.413,2.23402,120,120,0,0),
(150816,23537,0,1,-5610.64,-513.149,413.488,3.12414,120,120,0,0),
(150817,23537,0,1,-5600.72,-513.497,409.492,5.41052,120,120,0,0),
(150818,23537,0,1,-5576.23,-528.525,413.311,4.41568,120,120,0,0),
(150819,23537,0,1,-5592.63,-513.143,413.2,0.418879,120,120,0,0),
(150820,23537,0,1,-5586.52,-462.395,414.571,5.75959,120,120,0,0),
(150821,23537,0,1,-5605.53,-513.386,409.533,1.44862,120,120,0,0),
(150822,23537,0,1,-5606.12,-513.961,413.426,1.23918,120,120,0,0),
(150823,23537,0,1,-5590.6,-512.177,417.089,2.46091,120,120,0,0),
(150824,23537,0,1,-5592.7,-508.243,413.199,1.11701,120,120,0,0),
(150825,23537,0,1,-5578.87,-510.202,418.158,0.959931,120,120,0,0),
(150826,23537,0,1,-5579.26,-504.071,413.87,2.68781,120,120,0,0),
(150827,23537,0,1,-5570.12,-459.232,414.162,6.05629,120,120,0,0),
(150828,23537,0,1,-5573.02,-462.277,414.328,1.55334,120,120,0,0),
(150829,23537,0,1,-5587.37,-456.189,414.337,3.57792,120,120,0,0),
(150830,23537,0,1,-5569.3,-453.505,413.957,0.244346,120,120,0,0),
(150831,23537,0,1,-5591.31,-451.56,414.119,6.19592,120,120,0,0),
(150832,23537,0,1,-5561.84,-445.295,413.864,4.72984,120,120,0,0),
(150833,23537,0,1,-5565.82,-445.306,414.142,0.122173,120,120,0,0),
(150834,23537,0,1,-5565.76,-450.485,413.891,3.89208,120,120,0,0),
(150835,23537,0,1,-5595.75,-447.163,414.118,2.40855,120,120,0,0),
(150836,23537,0,1,-5758.38,-522.036,399.287,2.19911,120,120,0,0),
(150837,23537,0,1,-5754.15,-526.884,402.475,1.0472,120,120,0,0),
-- Fire Brigade Practice fire npc targets
(150838,23537,0,1,-5747.3,-527.313,400.115,1.27409,120,120,0,0),
(150839,23537,0,1,-5753.02,-532.901,404.064,0.663225,120,120,0,0),
(150840,23537,0,1,-5761.04,-528.058,403.967,1.06465,120,120,0,0),
-- 23686 Headless Horseman Flame Bunny (CUSTOM: spawn not present in sniff, but xyz location for jack-o-lantern object 186887 is accurate)
-- serves as target for spell 44255
(150841,23686,0,1,-5588.05,-483.062,397.53,6.16101,120,120,0,0),
-- helper Ironforge Mountaineer
(150842,727,0,1,-5754.12,-485.316,397.391,4.66313,120,120,0,0);
DELETE FROM game_event_creature WHERE guid BETWEEN 150800 AND 150842;
INSERT INTO game_event_creature (guid, `event`) SELECT guid, 12 FROM creature WHERE guid BETWEEN 150800 AND 150842;
DELETE FROM game_event_creature_data WHERE guid=150842;
INSERT INTO game_event_creature_data (guid, entry_id, modelid, equipment_id, vendor_id, spell_start, spell_end, `event`) VALUES
(150842, 0, 0, 0, 0, 0, 0, 12);

DELETE FROM gameobject WHERE guid BETWEEN 150200 AND 150211;
INSERT INTO gameobject (guid, id, map, spawnMask, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecsmin, spawntimesecsmax, animprogress, state) VALUES
(150200, 180700, 0, 1, -5757.09, -522.666, 398.454, 0.872664, 0, 0, 0.422618, 0.906308, 120, 120, 255, 1), -- Hay Bale 1
(150201, 180700, 0, 1, -5753.91, -526.596, 402.297, 5.88176, 0, 0, -0.199368, 0.979925, 120, 120, 255, 1), -- Hay Bale 1
(150202, 180700, 0, 1, -5752.77, -533.241, 403.924, 4.88692, 0, 0, -0.642787, 0.766045, 120, 120, 255, 1), -- Hay Bale 1
(150203, 180700, 0, 1, -5758.16, -521.983, 399.159, 2.35619, 0, 0, 0.923879, 0.382686, 120, 120, 255, 1), -- Hay Bale 1
(150204, 180700, 0, 1, -5746.98, -529.004, 399.285, 0.872664, 0, 0, 0.422618, 0.906308, 120, 120, 255, 1), -- Hay Bale 1
(150205, 180700, 0, 1, -5753.16, -533.396, 403.654, 2.93214, 0, 0, 0.994521, 0.104536, 120, 120, 255, 1), -- Hay Bale 1
(150206, 180700, 0, 1, -5747.56, -527.715, 400.001, 1.64061, 0, 0, 0.731353, 0.681999, 120, 120, 255, 1), -- Hay Bale 1
(150207, 180700, 0, 1, -5752.88, -527.555, 402.026, 1.97222, 0, 0, 0.833885, 0.551938, 120, 120, 255, 1), -- Hay Bale 1
(150208, 180700, 0, 1, -5760.94, -528.084, 403.882, 2.60054, 0, 0, 0.96363, 0.267241, 120, 120, 255, 1), -- Hay Bale 1
(150209, 186720, 0, 1, -5758.47, -521.986, 399.218, 1.44862, 0, 0, 0.66262, 0.748956, 120, 120, 255, 1), -- Fire Effigy
(150210, 186720, 0, 1, -5754.21, -527.097, 402.495, 1.22173, 0, 0, 0.573576, 0.819152, 120, 120, 255, 1), -- Fire Effigy
(150211, 186615, 0, 1, -5750.12, -485.776, 396.965, 2.55386, 0, 0, 0.588741, 0.808322, 120, 120, 255, 1); -- Water Buckets
DELETE FROM game_event_gameobject WHERE guid BETWEEN 150200 AND 150211;
INSERT INTO game_event_gameobject (guid, `event`) SELECT guid, 12 FROM gameobject WHERE guid BETWEEN 150200 AND 150211;

-- -----------
-- AZURE WATCH
-- -----------
DELETE FROM creature WHERE guid BETWEEN 150900 AND 150939;
INSERT INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecsmin`,`spawntimesecsmax`,`spawndist`,`MovementType`) VALUES
(150900,23537,530,1,-4203.65,-12283.1,2.55996,1.62316,120,120,0,0),
(150901,23537,530,1,-4203.56,-12270.7,3.7799,6.02139,120,120,0,0),
(150902,23537,530,1,-4192.45,-12268.1,1.6321,5.37561,120,120,0,0),
(150903,23537,530,1,-4207.8,-12276.7,3.90266,6.19592,120,120,0,0),
(150904,23537,530,1,-4198.75,-12264.5,3.13786,4.62512,120,120,0,0),
(150905,23537,530,1,-4220.3,-12511,52.3868,3.13266,120,120,0,0),
(150906,23537,530,1,-4225.36,-12508.5,48.548,4.56383,120,120,0,0),
(150907,23537,530,1,-4223.61,-12510.9,52.0259,1.2477,120,120,0,0),
(150908,23537,530,1,-4218.69,-12508.4,49.0212,0.13069,120,120,0,0),
(150909,23537,530,1,-4221.63,-12507.8,49.6094,4.73836,120,120,0,0),
(150910,23537,530,1,-4214.68,-12512.2,50.9702,6.20444,120,120,0,0),
(150911,23537,530,1,-4213.01,-12515.5,52.5294,0.252863,120,120,0,0),
(150912,23537,530,1,-4216.21,-12510.8,47.2851,3.9006,120,120,0,0),
(150913,23537,530,1,-4213.14,-12519.6,51.0774,6.06481,120,120,0,0),
(150914,23537,530,1,-4220.52,-12528.9,49.8535,1.56186,120,120,0,0),
(150915,23537,530,1,-4223.16,-12530.9,48.2362,0.427396,120,120,0,0),
(150916,23537,530,1,-4214.17,-12517,55.0714,3.58644,120,120,0,0),
(150917,23537,530,1,-4216.84,-12524,52.2628,5.5063,120,120,0,0),
(150918,23537,530,1,-4223.69,-12529,51.8721,1.36987,120,120,0,0),
(150919,23537,530,1,-4214.98,-12513.5,53.46,2.41707,120,120,0,0),
(150920,23537,530,1,-4216.8,-12527.1,50.9359,2.24254,120,120,0,0),
(150921,23537,530,1,-4214.29,-12523.5,50.4054,5.7681,120,120,0,0),
(150922,23537,530,1,-4143.66,-12489.3,47.7734,3.30139,120,120,0,0),
(150923,23537,530,1,-4150.88,-12481.1,49.6234,0.962649,120,120,0,0),
(150924,23537,530,1,-4138.35,-12489.5,51.5044,2.07966,120,120,0,0),
(150925,23537,530,1,-4145.28,-12488.1,51.1017,2.77779,120,120,0,0),
(150926,23537,530,1,-4136.97,-12485.5,55.1362,0.38669,120,120,0,0),
(150927,23537,530,1,-4150.59,-12472.7,51.5847,4.45331,120,120,0,0),
(150928,23537,530,1,-4139.33,-12486.9,54.2439,3.0745,120,120,0,0),
(150929,23537,530,1,-4151.4,-12476.5,50.6448,1.99239,120,120,0,0),
(150930,23537,530,1,-4141.46,-12490.5,49.784,2.46363,120,120,0,0),
(150931,23537,530,1,-4149.72,-12482.5,53.9075,4.06933,120,120,0,0),
(150932,23537,530,1,-4147.29,-12473.2,53.9451,2.69052,120,120,0,0),
(150933,23537,530,1,-4149.11,-12475.9,53.1473,0.316877,120,120,0,0),
(150934,23537,530,1,-4130.17,-12484.8,49.4576,4.4184,120,120,0,0),
(150935,23537,530,1,-4132.38,-12484.7,54.0096,0.54377,120,120,0,0),
(150936,23537,530,1,-4134.74,-12487.6,51.0919,3.51083,120,120,0,0),
(150937,23537,530,1,-4126.06,-12484.2,46.7121,0.369237,120,120,0,0),
-- helper Azuremyst Peacekeeper
(150938,18038,530,1,-4194.9556,-12281.197,0.7497033,5.68977,120,120,0,0),
-- 23686 Headless Horseman Flame Bunny (CUSTOM: spawn not present in sniff)
-- serves as target for spell 44255
(150939,23686,530,1,-4177.1367,-12487.6718,44.720325,1.35,120,120,0,0);
DELETE FROM game_event_creature WHERE guid BETWEEN 150900 AND 150939;
INSERT INTO game_event_creature (guid, `event`) SELECT guid, 12 FROM creature WHERE guid BETWEEN 150900 AND 150939;
-- we only need this due to sGameEventMgr.GetCreatureUpdateDataForActiveEvent call in core...
DELETE FROM game_event_creature_data WHERE guid=150938;
INSERT INTO game_event_creature_data (guid, entry_id, modelid, equipment_id, vendor_id, spell_start, spell_end, `event`) VALUES
(150938, 0, 0, 0, 0, 0, 0, 12);

DELETE FROM gameobject WHERE guid BETWEEN 150300 AND 150307;
INSERT INTO gameobject (guid, id, map, spawnMask, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecsmin, spawntimesecsmax, animprogress, state) VALUES
(150300,186720,530,1,-4203.68,-12270.6,3.72568,5.67232,0,0,-0.300706,0.953717,120,120,255,1), -- Fire Effigy
(150301,186720,530,1,-4198.75,-12264.5,3.05396,5.07891,0,0,-0.566406,0.824126,120,120,255,1), -- Fire Effigy
(150302,186720,530,1,-4203.67,-12283.1,2.48314,0.506145,0,0,0.25038,0.968148,120,120,255,1), -- Fire Effigy
(150303,186234,530,1,-4193.51,-12277.8,0.310071,1.25664,0,0,0.587785,0.809017,120,120,255,1), -- Water Barrel
(150304,186614,530,1,-4191.74,-12277.6,0.059397,4.62512,0,0,-0.737277,0.675591,120,120,255,1), -- Water Bucket
(150305,186614,530,1,-4193.41,-12279.6,0.272792,2.75761,0,0,0.981627,0.190812,120,120,255,1), -- Water Bucket
(150306,186615,530,1,-4192.18,-12279,-0.037743,5.06146,0,0,-0.573576,0.819152,120,120,255,1), -- Water Buckets
(150307,186614,530,1,-4186.72,-12506.4,44.3613,4.45059,0,0,-0.793353,0.608762,120,120,255,1); -- Water Bucket
DELETE FROM game_event_gameobject WHERE guid BETWEEN 150300 AND 150307;
INSERT INTO game_event_gameobject (guid, `event`) SELECT guid, 12 FROM gameobject WHERE guid BETWEEN 150300 AND 150307;

-- -----
-- BRILL
-- -----
-- NOTE: The buildings in Brill have shifted some since Cata, so this data is slightly off
DELETE FROM creature WHERE guid BETWEEN 152100 AND 152142;
INSERT INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecsmin`,`spawntimesecsmax`,`spawndist`,`MovementType`) VALUES
(152100,23537,0,1,2228.83,292.661,42.8595,0.541052,120,120,0,0),
(152101,23537,0,1,2230.33,232.372,43.5505,2.68781,120,120,0,0),
(152102,23537,0,1,2231.85,309.005,43.4115,3.07178,120,120,0,0),
(152103,23537,0,1,2234.39,237.58,43.6696,4.45059,120,120,0,0),
(152104,23537,0,1,2238.38,241.481,46.2028,3.14159,120,120,0,0),
(152105,23537,0,1,2238.92,304.5,44.3777,3.07178,120,120,0,0),
(152106,23537,0,1,2240.1,459.134,38.6309,4.69494,120,120,0,0),
(152107,23537,0,1,2240.49,242.983,48.1328,2.00713,120,120,0,0),
(152108,23537,0,1,2241.07,268.641,35.4174,0.541052,120,120,0,0),
(152109,23537,0,1,2243.27,243.641,46.153,0.383972,120,120,0,0),
(152110,23537,0,1,2246.01,303.354,43.4007,0.959931,120,120,0,0),
(152111,23537,0,1,2248.62,243.646,43.6608,3.50811,120,120,0,0),
(152112,23537,0,1,2251.34,337.368,42.2274,3.29867,120,120,0,0),
(152113,23537,0,1,2252.34,309.7,44.1301,4.06662,120,120,0,0),
(152114,23537,0,1,2252.36,331.068,42.414,3.29867,120,120,0,0),
(152115,23537,0,1,2252.63,235.089,43.3316,2.07694,120,120,0,0),
(152116,23537,0,1,2254.84,314.226,41.2131,1.44862,120,120,0,0),
(152117,23537,0,1,2254.85,323.205,42.4537,2.77507,120,120,0,0),
(152118,23537,0,1,2257.74,317.984,41.8847,5.41052,120,120,0,0),
(152119,23537,0,1,2260.09,269.253,40.7028,0.541052,120,120,0,0),
(152120,23537,0,1,2261.33,347.431,43.0572,0.541052,120,120,0,0),
(152121,23537,0,1,2273.19,285.738,48.317,4.41568,120,120,0,0),
(152122,23537,0,1,2274.3,271.306,37.4265,1.55334,120,120,0,0),
(152123,23537,0,1,2274.39,289.694,48.6142,0.541052,120,120,0,0),
(152124,23537,0,1,2274.55,279.179,48.4097,0.366519,120,120,0,0),
(152125,23537,0,1,2278.32,291.321,40.32,0.541052,120,120,0,0),
(152126,23537,0,1,2278.81,294.535,47.225,0.541052,120,120,0,0),
(152127,23537,0,1,2279.42,301.767,36.4936,0.541052,120,120,0,0),
(152128,23537,0,1,2280.52,275.111,49.2876,4.32842,120,120,0,0),
(152129,23537,0,1,2284.49,291.929,46.6129,0.541052,120,120,0,0),
(152130,23537,0,1,2285.74,270.549,50.067,3.82227,120,120,0,0),
(152131,23537,0,1,2286.73,263.13,49.0685,5.75959,120,120,0,0),
(152132,23537,0,1,2287.65,259.762,45.7492,6.05629,120,120,0,0),
(152133,23537,0,1,2290.51,293.519,45.9895,0.541052,120,120,0,0),
(152134,23537,0,1,2291,257.97,41.2103,0.244346,120,120,0,0),
(152135,23537,0,1,2293.85,257.726,44.3998,3.57792,120,120,0,0),
(152136,23537,0,1,2293.94,297.873,46.4125,2.40855,120,120,0,0),
(152137,23537,0,1,2295.43,303.127,47.1267,0.418879,120,120,0,0),
(152138,23537,0,1,2300.71,303.962,46.9824,1.36136,120,120,0,0),
-- practice targets
(152139,23537,0,1,2239.49,487.861,38.3446,-0.715585,300,300,0,0),
(152140,23537,0,1,2229.42,473.572,39.9264,6.12175,300,300,0,0),
-- add missing Deathguard Florence 24491 - serves as the relighter guard helper for Fire Training quest, custom spawn since we don't have official data
(152141,24491,0,1,2274.11,505.761,35.2958,3.8227,120,120,0,0),
-- 23686 Headless Horseman Flame Bunny (CUSTOM: spawn not present in sniff)
-- serves as target for spell 44255
(152142,23686,0,1,2258.993,292.598,34.613758,5.7155,120,120,0,0);
DELETE FROM game_event_creature WHERE guid BETWEEN 152100 AND 152142;
INSERT INTO game_event_creature (guid, `event`) SELECT guid, 12 FROM creature WHERE guid BETWEEN 152100 AND 152142;
DELETE FROM game_event_creature_data WHERE guid=152141;
INSERT INTO game_event_creature_data (guid, entry_id, modelid, equipment_id, vendor_id, spell_start, spell_end, `event`) VALUES
(152141, 0, 0, 0, 0, 0, 0, 12);

-- custom adjustments to fires due to shifted Brill data
UPDATE creature SET position_x = '2228.616455', position_y = '301.709503', position_z = '43.777283', orientation = '1.654544' WHERE guid = '152100';
UPDATE creature SET position_x = '2234.270996', position_y = '298.839630', position_z = '43.921070', orientation = '0.829877' WHERE guid = '152105';
UPDATE creature SET position_x = '2242.239990', position_y = '304.185974', position_z = '47.414181', orientation = '2.754103' WHERE guid = '152102';
UPDATE creature SET position_x = '2243.035400', position_y = '308.210785', position_z = '46.139534', orientation = '3.924346' WHERE guid = '152110';
UPDATE creature SET position_x = '2246.127686', position_y = '312.948822', position_z = '43.859329', orientation = '0.955540' WHERE guid = '152113';
UPDATE creature SET position_x = '2249.988770', position_y = '315.642151', position_z = '45.652752', orientation = '1.352175' WHERE guid = '152116';
UPDATE creature SET position_x = '2257.852783', position_y = '317.151611', position_z = '41.131466', orientation = '2.243602' WHERE guid = '152118';
UPDATE creature SET position_x = '2257.642334', position_y = '325.394958', position_z = '45.209061', orientation = '2.506711' WHERE guid = '152114';
UPDATE creature SET position_x = '2261.959229', position_y = '329.528656', position_z = '45.368721', orientation = '2.326069' WHERE guid = '152112';
UPDATE creature SET position_x = '2265.958252', position_y = '335.385315', position_z = '41.542091', orientation = '1.994109' WHERE guid = '152120';
UPDATE creature SET position_x = '2262.020020', position_y = '319.362244', position_z = '40.400532', orientation = '2.575307' WHERE guid = '152117';
UPDATE creature SET position_x = '2277.043213', position_y = '288.342438', position_z = '36.391262', orientation = '6.023195' WHERE guid = '152127';
UPDATE creature SET position_x = '2280.698242', position_y = '287.198151', position_z = '43.110992', orientation = '0.446876' WHERE guid = '152125';
UPDATE creature SET position_x = '2263.324707', position_y = '276.380829', position_z = '39.942860', orientation = '5.532329' WHERE guid = '152122';
UPDATE creature SET position_x = '2259.227295', position_y = '272.738953', position_z = '38.555462', orientation = '4.401360' WHERE guid = '152119';
UPDATE creature SET position_x = '2254.577393', position_y = '268.269623', position_z = '36.968113', orientation = '4.248197' WHERE guid = '152108';
UPDATE creature SET position_x = '2245.427490', position_y = '259.497711', position_z = '45.085712', orientation = '6.011397' WHERE guid = '152109';
UPDATE creature SET position_x = '2243.732910', position_y = '252.793518', position_z = '44.698116', orientation = '5.665809' WHERE guid = '152107';
UPDATE creature SET position_x = '2242.636475', position_y = '247.171143', position_z = '44.726032', orientation = '5.332009' WHERE guid = '152104';
UPDATE creature SET position_x = '2242.263916', position_y = '240.798782', position_z = '45.462425', orientation = '0.183717' WHERE guid = '152103';
UPDATE creature SET position_x = '2241.517822', position_y = '236.679810', position_z = '45.211044', orientation = '0.010929' WHERE guid = '152101';
UPDATE creature SET position_x = '2238.621582', position_y = '249.143585', position_z = '40.119076', orientation = '0.839516' WHERE guid = '152115';
UPDATE creature SET position_x = '2242.374756', position_y = '253.497131', position_z = '40.009262', orientation = '5.701135' WHERE guid = '152111';
UPDATE creature SET position_x = '2239.246582', position_y = '250.082794', position_z = '40.878925', orientation = '0.167987' WHERE guid = '152115';
UPDATE creature SET position_x = '2303.558105', position_y = '310.449219', position_z = '47.723000', orientation = '4.216716' WHERE guid = '152138';
UPDATE creature SET position_x = '2301.732422', position_y = '306.442047', position_z = '47.434944', orientation = '4.338453' WHERE guid = '152137';
UPDATE creature SET position_x = '2298.638428', position_y = '298.557343', position_z = '47.178005', orientation = '4.338453' WHERE guid = '152136';
UPDATE creature SET position_x = '2293.862305', position_y = '288.956635', position_z = '46.003410', orientation = '4.616798' WHERE guid = '152133';
UPDATE creature SET position_x = '2284.566895', position_y = '291.154236', position_z = '46.353256', orientation = '5.052691' WHERE guid = '152129';
UPDATE creature SET position_x = '2285.849609', position_y = '283.858521', position_z = '47.462368', orientation = '0.053623' WHERE guid = '152126';
UPDATE creature SET position_x = '2284.570068', position_y = '279.146484', position_z = '48.164158', orientation = '6.160088' WHERE guid = '152121';
UPDATE creature SET position_x = '2283.131592', position_y = '277.341827', position_z = '50.503994', orientation = '1.479103' WHERE guid = '152124';
UPDATE creature SET position_x = '2280.559326', position_y = '273.728882', position_z = '46.479023', orientation = '0.888961' WHERE guid = '152128';
UPDATE creature SET position_x = '2289.796631', position_y = '270.997009', position_z = '46.147587', orientation = '0.095709' WHERE guid = '152130';
UPDATE creature SET position_x = '2290.241211', position_y = '263.132294', position_z = '47.356731', orientation = '3.311921' WHERE guid = '152131';
UPDATE creature SET position_x = '2289.787109', position_y = '259.477020', position_z = '47.259865', orientation = '2.671822' WHERE guid = '152132';
UPDATE creature SET position_x = '2292.933838', position_y = '250.986603', position_z = '46.147530', orientation = '4.419341' WHERE guid = '152135';
UPDATE creature SET position_x = '2288.459717', position_y = '251.780716', position_z = '46.140720', orientation = '3.944175' WHERE guid = '152134';
UPDATE creature SET position_x = '2279.343262', position_y = '279.140594', position_z = '37.974201', orientation = '4.136575' WHERE guid = '152123';

DELETE FROM gameobject WHERE guid BETWEEN 150400 AND 150499;
INSERT INTO gameobject (guid, id, map, spawnMask, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecsmin, spawntimesecsmax, animprogress, state) VALUES
(150400,186720,0,1,2229.42,473.572,39.9264,6.12175,0,0,-0.0348994,0.999391,180,180,100,1), -- Fire Effigy
(150401,186234,0,1,2275.88,503.988,35.2007,3.27293,0,0,0.588741,0.808322,180,180,100,1), -- Water Barrel
(150402,186615,0,1,2275.95,501.796,34.7494,1.72177,0,0,0.588741,0.808322,180,180,100,1); -- Water Buckets
DELETE FROM game_event_gameobject WHERE guid BETWEEN 150400 AND 150499;
INSERT INTO game_event_gameobject (guid, `event`) SELECT guid, 12 FROM gameobject WHERE guid BETWEEN 150400 AND 150499;

-- ----------
-- RAZOR HILL
-- ----------
DELETE FROM creature WHERE guid BETWEEN 152200 AND 152246;
INSERT INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecsmin`,`spawntimesecsmax`,`spawndist`,`MovementType`) VALUES
(152200,23537,1,1,341.059,-4708.51,21.4058,6.19592,120,120,0,0),
(152201,23537,1,1,343.465,-4708.68,29.7406,2.23402,120,120,0,0),
(152202,23537,1,1,338.387,-4705.85,27.864,3.07178,120,120,0,0),
(152203,23537,1,1,344.832,-4710.36,27.2581,3.89208,120,120,0,0),
(152204,23537,1,1,339.461,-4711.15,16.3014,0.15708,120,120,0,0),
(152205,23537,1,1,317.086,-4772.23,25.4422,3.29867,120,120,0,0),
(152206,23537,1,1,318.646,-4692.5,20.4522,2.40855,120,120,0,0),
(152207,23537,1,1,315.166,-4770.6,11.8274,3.57792,120,120,0,0),
(152208,23537,1,1,320.016,-4694.53,29.4495,5.49779,120,120,0,0),
(152209,23537,1,1,310.052,-4692.51,17.3951,0.244346,120,120,0,0),
(152210,23537,1,1,327.847,-4699.24,27.4124,1.55334,120,120,0,0),
(152211,23537,1,1,311.314,-4772.89,26.594,4.66003,120,120,0,0),
(152212,23537,1,1,312.78,-4771,11.3688,0.383972,120,120,0,0),
(152213,23537,1,1,317.743,-4690.56,29.576,1.36136,120,120,0,0),
(152214,23537,1,1,320.012,-4697.53,16.795,6.05629,120,120,0,0),
(152215,23537,1,1,328.967,-4767.38,12.6596,4.55531,120,120,0,0),
(152216,23537,1,1,314.916,-4774.04,17.2119,3.24631,120,120,0,0),
(152217,23537,1,1,324.721,-4768.03,12.4218,3.12414,120,120,0,0),
(152218,23537,1,1,313.396,-4698.98,15.4234,0.122173,120,120,0,0),
(152219,23537,1,1,311.118,-4689.25,17.5491,4.72984,120,120,0,0),
(152220,23537,1,1,292.488,-4768.13,11.776,2.07694,120,120,0,0),
(152221,23537,1,1,269.634,-4718.51,18.5895,2.68781,120,120,0,0),
(152222,23537,1,1,271.075,-4722.44,14.2359,4.41568,120,120,0,0),
(152223,23537,1,1,275.927,-4712.83,19.051,4.45059,120,120,0,0),
(152224,23537,1,1,275.42,-4718.04,15.3883,0.541052,120,120,0,0),
(152225,23537,1,1,283.484,-4701.05,16.755,2.87979,120,120,0,0),
(152226,23537,1,1,302.121,-4776.35,10.5741,4.06662,120,120,0,0),
(152227,23537,1,1,301.628,-4776.46,19.4217,5.00909,120,120,0,0),
(152228,23537,1,1,298.276,-4773.83,10.9247,1.23918,120,120,0,0),
(152229,23537,1,1,274.396,-4716.43,21.2105,1.98968,120,120,0,0),
(152230,23537,1,1,293.2,-4708.68,13.1923,1.44862,120,120,0,0),
(152231,23537,1,1,283.125,-4706.24,15.4535,3.50811,120,120,0,0),
(152232,23537,1,1,285.63,-4700.11,13.2249,2.46091,120,120,0,0),
(152233,23537,1,1,282.054,-4709.19,15.3883,5.41052,120,120,0,0),
(152234,23537,1,1,277.155,-4698.77,18.6783,0.314159,120,120,0,0),
(152235,23537,1,1,303.898,-4773.74,27.4763,4.03171,120,120,0,0),
-- Traveling Orphan
(152236,23971,1,1,358.995,-4744.3,9.67259,2.00713,120,120,0,0),
(152237,23971,1,1,358.944,-4742.36,9.727,3.38594,120,120,0,0),
(152238,23971,1,1,356.288,-4740.26,9.85799,4.55531,120,120,0,0),
(152239,23971,1,1,357.808,-4740.9,9.788,4.15388,120,120,0,0),
-- Razor Hill Grunt
(152240,5953,1,1,241.359,-4562.97,14.25,5.88176,120,120,0,0), -- sniffed z 18.5821 was in the air some, adjusted (terrain may have shifted on retail)
-- practice targets
(152241,23537,1,1,292.839,-4558.99,31.2707,2.3911,120,120,0,0),
(152242,23537,1,1,286.576,-4561.43,30.272,2.42601,120,120,0,0),
(152243,23537,1,1,296.083,-4565.28,39.0419,1.98968,120,120,0,0),
(152244,23537,1,1,289.557,-4568.09,39.0615,3.57792,120,120,0,0),
(152245,23537,1,1,277.962,-4568.71,27.2714,4.11898,120,120,0,0),
-- 23686 Headless Horseman Flame Bunny (CUSTOM: spawn not present in sniff, but xyz location for jack-o-lantern object 186887 is accurate)
(152246,23686,1,1,305.144,-4724.5,9.83766,3.68348,120,120,0,0);
DELETE FROM game_event_creature WHERE guid BETWEEN 152200 AND 152246;
INSERT INTO game_event_creature (guid, `event`) SELECT guid, 12 FROM creature WHERE guid BETWEEN 152200 AND 152246;
DELETE FROM game_event_creature_data WHERE guid=152240;
INSERT INTO game_event_creature_data (guid, entry_id, modelid, equipment_id, vendor_id, spell_start, spell_end, `event`) VALUES
(152240, 0, 0, 0, 0, 0, 0, 12);

DELETE FROM gameobject WHERE guid BETWEEN 150500 AND 150507;
INSERT INTO gameobject (guid, id, map, spawnMask, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecsmin, spawntimesecsmax, animprogress, state) VALUES
(150500,186614,1,1,354.647,-4739.92,9.81215,6.05629,0,0,-0.113203,0.993572,120,120,255,1), -- Water Bucket
(150501,186614,1,1,353.998,-4739.26,9.80201,2.25147,0,0,0.902585,0.430512,120,120,255,1), -- Water Bucket
(150502,186615,1,1,354.799,-4740.95,9.81916,2.51327,0,0,0.951056,0.309017,120,120,255,1), -- Water Buckets
(150503,186720,1,1,296.095,-4565.25,36.3511,1.3439,0,0,0.622514,0.782609,120,120,255,1), -- Fire Effigy (z adjusted, original 38.9611)
(150504,186720,1,1,289.557,-4568.09,36.3682,2.25147,0,0,0.902585,0.430512,120,120,255,1), -- Fire Effigy (z adjusted, original 38.9782)
(150505,186720,1,1,278.172,-4568.8,24.1306,1.64061,0,0,0.731353,0.681999,120,120,255,1), -- Fire Effigy (z adjusted, original 26.7406)
(150506,186720,1,1,292.41,-4558.65,28.29,3.28124,0,0,-0.997563,0.0697661,120,120,255,1), -- Fire Effigy (z adjusted, original 30.9043)
(150507,186615,1,1,241.154,-4563.96,14.2544,0.721713,0,0,0.588741,0.808322,120,120,255,1); -- Water Buckets
DELETE FROM game_event_gameobject WHERE guid BETWEEN 150500 AND 150507;
INSERT INTO game_event_gameobject (guid, `event`) SELECT guid, 12 FROM gameobject WHERE guid BETWEEN 150500 AND 150507;

-- -----------------
-- FALCONWING SQUARE
-- -----------------
DELETE FROM creature WHERE guid BETWEEN 152600 AND 152645;
INSERT INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecsmin`,`spawntimesecsmax`,`spawndist`,`MovementType`) VALUES
(152600,23537,530,1,9484.33,-6834.25,31.4059,4.72984,120,120,0,0),
(152601,23537,530,1,9490.02,-6841.37,25.55,2.40855,120,120,0,0),
(152602,23537,530,1,9488.59,-6839.95,32.0623,1.36136,120,120,0,0),
(152603,23537,530,1,9493.87,-6845.27,22.2585,0.15708,120,120,0,0),
(152604,23537,530,1,9488.75,-6840.08,27.134,0.244346,120,120,0,0),
(152605,23537,530,1,9484.76,-6836.05,22.8404,6.05629,120,120,0,0),
(152606,23537,530,1,9488.12,-6839.48,34.7965,4.41568,120,120,0,0),
(152607,23537,530,1,9491.86,-6842.91,31.8334,4.03171,120,120,0,0),
(152608,23537,530,1,9489.3,-6839.1,30.8677,3.89208,120,120,0,0),
(152609,23537,530,1,9493.1,-6844.48,26.878,4.66003,120,120,0,0),
(152610,23537,530,1,9492.05,-6843.43,24.7246,6.19592,120,120,0,0),
(152611,23537,530,1,9491.06,-6840.9,30.9151,3.12414,120,120,0,0),
(152612,23537,530,1,9484.23,-6835.51,26.3592,0.541052,120,120,0,0),
(152613,23537,530,1,9484.68,-6835.83,31.8363,4.55531,120,120,0,0),
(152614,23537,530,1,9494.32,-6845.75,31.8338,5.49779,120,120,0,0),
(152615,23537,530,1,9486.86,-6836.51,30.4974,0.122173,120,120,0,0),
(152616,23537,530,1,9493.91,-6843.91,31.3116,1.23918,120,120,0,0),
(152617,23537,530,1,9486.58,-6837.89,26.5366,3.57792,120,120,0,0),
(152618,23537,530,1,9518.25,-6861.82,27.3706,2.07694,120,120,0,0),
(152619,23537,530,1,9520.04,-6861.83,25.7875,3.50811,120,120,0,0),
(152620,23537,530,1,9525.76,-6861.86,27.5315,5.00909,120,120,0,0),
(152621,23537,530,1,9522.33,-6860.88,30.5749,3.07178,120,120,0,0),
(152622,23537,530,1,9525.96,-6861.89,32.7225,5.41052,120,120,0,0),
(152623,23537,530,1,9519.92,-6860.65,31.0037,4.06662,120,120,0,0),
(152624,23537,530,1,9516.07,-6861.81,24.7029,1.55334,120,120,0,0),
(152625,23537,530,1,9525.98,-6861.89,35.4251,2.46091,120,120,0,0),
(152626,23537,530,1,9525.67,-6860.65,30.7127,4.45059,120,120,0,0),
(152627,23537,530,1,9522.54,-6861.85,27.5152,0.383972,120,120,0,0),
(152628,23537,530,1,9523.3,-6861.94,32.4274,3.24631,120,120,0,0),
(152629,23537,530,1,9530.2,-6862.01,32.4302,3.29867,120,120,0,0),
(152630,23537,530,1,9532.12,-6860.72,30.9964,1.44862,120,120,0,0),
(152631,23537,530,1,9534.83,-6861.92,26.1053,2.23402,120,120,0,0),
(152632,23537,530,1,9528.28,-6860.74,31.194,2.87979,120,120,0,0),
(152633,23537,530,1,9530.93,-6861.89,23.133,0.314159,120,120,0,0),
(152634,23537,530,1,9528.86,-6861.88,26.6218,1.98968,120,120,0,0),
(152635,23537,530,1,9532.22,-6861.91,26.8125,2.68781,120,120,0,0),
-- Black Cat 22816
(152636,22816,530,1,9856.21,-7137.92,30.8774,4.066,120,120,5,1),
(152637,22816,530,1,9800.59,-7256.38,26.1891,2.33791,120,120,5,1),
-- 23686 Headless Horseman Flame Bunny (CUSTOM: spawn not present in sniff, but xyz location for jack-o-lantern object 186887 is accurate)
-- serves as target for spell 44255
(152638,23686,530,1,9508.56,-6808.23,17.0396,3.28124,120,120,0,0),
(152639,23686,530,1,9523.16,-6831,17.0434,6.16101,120,120,0,0),
-- practice Headless Horseman - Fire (DND) targets
(152640,23537,530,1,9235.05,-6783.4,26.4426,1.5708,120,120,0,0),
(152641,23537,530,1,9229.31,-6780.56,27.0539,1.0821,300,300,0,0),
(152642,23537,530,1,9224.15,-6777.71,28.3853,0.663223,300,300,0,0),
(152643,23537,530,1,9224.7,-6771,27.2595,0.069812,300,300,0,0),
(152644,23537,530,1,9225.46,-6765.23,26.058,5.79449,300,300,0,0),
-- helper Silvermoon Guardian
(152645,16221,530,1,9233.75,-6772.53,24.963,3.62827,300,300,0,0);
DELETE FROM game_event_creature WHERE guid BETWEEN 152600 AND 152645;
INSERT INTO game_event_creature (guid, `event`) SELECT guid, 12 FROM creature WHERE guid BETWEEN 152600 AND 152645;
DELETE FROM game_event_creature_data WHERE guid=152645;
INSERT INTO game_event_creature_data (guid, entry_id, modelid, equipment_id, vendor_id, spell_start, spell_end, `event`) VALUES
(152645, 0, 0, 0, 0, 0, 0, 12);

DELETE FROM gameobject WHERE guid BETWEEN 150600 AND 150606;
INSERT INTO gameobject (guid, id, map, spawnMask, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecsmin, spawntimesecsmax, animprogress, state) VALUES
(150600,186234,530,1,9235.06,-6770.26,24.7945,2.79252,0,0,0.984807,0.173652,120,120,255,1), -- Water Barrel
(150601,186720,530,1,9225.46,-6765.23,26.058,5.79449,0,0,0.241923,-0.970295,120,120,255,1), -- Fire Effigy
(150602,186720,530,1,9229.31,-6780.56,27.0539,1.0821,0,0,0.515036,0.857168,120,120,255,1), -- Fire Effigy
(150603,186720,530,1,9224.7,-6771,27.2595,0.0698117,0,0,0.0348988,0.999391,120,120,255,1), -- Fire Effigy
(150604,186720,530,1,9224.15,-6777.71,28.3853,0.663223,0,0,0.325567,0.945519,120,120,255,1), -- Fire Effigy
(150605,186615,530,1,9236.26,-6772.44,24.7565,2.2431,0,0,0.588741,0.808322,180,180,255,1), -- Water Buckets
(150606,186615,530,1,9509.07,-6810.86,16.4932,5.9041,0,0,0.588741,0.808322,180,180,255,1); -- Water Buckets
DELETE FROM game_event_gameobject WHERE guid BETWEEN 150600 AND 150606;
INSERT INTO game_event_gameobject (guid, `event`) SELECT guid, 12 FROM gameobject WHERE guid BETWEEN 150600 AND 150606;

-- --------------------------------------------------------------------------------------------------------------------------------------------------

-- add some more missing Hallow's End decoration gameobjects mostly in Exodar and Silvermoon City not related to Shade of the Horseman event
-- it's possible that a few of these may not have existed pre-wotlk/cata, but I've verified all these particular spawns look okay at least

DELETE FROM gameobject WHERE guid BETWEEN 150700 AND 151603;
INSERT INTO gameobject (guid, id, map, spawnMask, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecsmin, spawntimesecsmax, animprogress, state) VALUES
(150700,180405,530,1,9542.1,-6797.44,16.4756,5.79449,0,0,-0.241921,0.970296,120,120,255,1), -- G_Pumpkin_01
(150701,180405,530,1,9477.76,-6788.12,16.4936,2.72271,0,0,0.978148,0.207912,120,120,255,1), -- G_Pumpkin_01
(150702,180405,530,1,-4004.38,-11327.4,-118.703,1.22173,0,0,0.573576,0.819152,120,120,255,1), -- G_Pumpkin_01
(150703,180405,530,1,-4210.35,-11473.7,-130.718,2.02458,0,0,0.848047,0.529921,120,120,255,1), -- G_Pumpkin_01
(150704,180405,530,1,-4224.75,-11546.8,-124.615,3.94445,0,0,-0.920505,0.390732,120,120,255,1), -- G_Pumpkin_01
(150705,180405,530,1,-4176.35,-11525.7,-127.79,3.15906,0,0,-0.999962,0.00873464,120,120,255,1), -- G_Pumpkin_01
(150706,180405,530,1,-4258.75,-11597.1,-120.995,1.90241,0,0,0.814116,0.580703,120,120,255,1), -- G_Pumpkin_01
(150707,180405,530,1,-4228.03,-11615.7,-93.3938,2.56563,0,0,0.958819,0.284016,120,120,255,1), -- G_Pumpkin_01
(150708,180405,530,1,-4091.85,-11599.3,-134.938,5.77704,0,0,-0.25038,0.968148,120,120,255,1), -- G_Pumpkin_01
(150709,180405,530,1,-4220.7,-11719.8,-140.042,4.29351,0,0,-0.83867,0.54464,120,120,255,1), -- G_Pumpkin_01
(150710,180405,530,1,-4143.05,-11740.8,-132.445,3.90954,0,0,-0.927183,0.374608,120,120,255,1), -- G_Pumpkin_01
(150711,180405,530,1,-4099.97,-11742.2,-138.162,3.50812,0,0,-0.983254,0.182238,120,120,255,1), -- G_Pumpkin_01
(150712,180405,530,1,-4142.6,-11772.9,-133.318,2.86234,0,0,0.990268,0.139175,120,120,255,1), -- G_Pumpkin_01
(150713,180405,530,1,-4233.25,-11842.2,-112.644,3.194,0,0,-0.999657,0.0262016,120,120,255,1), -- G_Pumpkin_01
(150714,180405,530,1,-4266.06,-11764.1,-90.3353,0.244346,0,0,0.121869,0.992546,120,120,255,1), -- G_Pumpkin_01
(150715,180405,530,1,-4256.35,-11801.6,-129.922,1.91986,0,0,0.819152,0.573577,120,120,255,1), -- G_Pumpkin_01
(150716,180405,530,1,-4265.11,-11820.4,-96.0187,2.47837,0,0,0.945518,0.325568,120,120,255,1), -- G_Pumpkin_01
(150717,180405,530,1,-4286.45,-11797,-128.685,2.65289,0,0,0.970295,0.241925,120,120,255,1), -- G_Pumpkin_01
(150718,180406,530,1,9543.7,-6778.75,15.1136,5.65487,0,0,-0.309016,0.951057,120,120,255,1), -- G_Pumpkin_02
(150719,180406,530,1,-4268.86,-11562.4,-120.97,2.11185,0,0,0.870356,0.492424,120,120,255,1), -- G_Pumpkin_02
(150720,180406,530,1,-4215.99,-11575.6,-121.598,1.50098,0,0,0.681998,0.731354,120,120,255,1), -- G_Pumpkin_02
(150721,180406,530,1,-4260.69,-11615.8,-136.674,0.279252,0,0,0.139173,0.990268,120,120,255,1), -- G_Pumpkin_02
(150722,180406,530,1,-4214.09,-11680.7,-138.721,2.70526,0,0,0.976295,0.216442,120,120,255,1), -- G_Pumpkin_02
(150723,180406,530,1,-4096.09,-11665.9,-135.481,4.4855,0,0,-0.782608,0.622515,120,120,255,1), -- G_Pumpkin_02
(150724,180406,530,1,-4226.23,-11722.1,-136.619,3.76991,0,0,-0.951056,0.309017,120,120,255,1), -- G_Pumpkin_02
(150725,180406,530,1,-4156.44,-11760.2,-133.63,3.85718,0,0,-0.936671,0.35021,120,120,255,1), -- G_Pumpkin_02
(150726,180406,530,1,-4074.56,-11741.6,-135.968,4.11898,0,0,-0.882947,0.469473,120,120,255,1), -- G_Pumpkin_02
(150727,180406,530,1,-4246.77,-11825.5,-112.734,1.8675,0,0,0.803857,0.594823,120,120,255,1), -- G_Pumpkin_02
(150728,180406,530,1,-4290.35,-11781.4,-92.2304,1.23918,0,0,0.580703,0.814116,120,120,255,1), -- G_Pumpkin_02
(150729,180406,530,1,-4277.93,-11768,-128.53,1.48353,0,0,0.67559,0.737278,120,120,255,1), -- G_Pumpkin_02
(150730,180407,530,1,9452.53,-7117.21,17.6047,1.23918,0,0,0.580703,0.814116,120,120,255,1), -- G_Pumpkin_03
(150731,180407,530,1,-4208.96,-11482.1,-130.749,2.07694,0,0,0.861629,0.507539,120,120,255,1), -- G_Pumpkin_03
(150732,180407,530,1,-4183.39,-11550.5,-119.938,0,0,0,0,1,120,120,255,1), -- G_Pumpkin_03
(150733,180407,530,1,-4212.73,-11570.2,-121.489,1.37881,0,0,0.636078,0.771625,120,120,255,1), -- G_Pumpkin_03
(150734,180407,530,1,-4221.31,-11688.7,-140.425,0.0698117,0,0,0.0348988,0.999391,120,120,255,1), -- G_Pumpkin_03
(150735,180407,530,1,-4209.01,-11684.4,-138.832,2.87979,0,0,0.991445,0.130528,120,120,255,1), -- G_Pumpkin_03
(150736,180407,530,1,-4087.84,-11627.1,-135.535,4.99164,0,0,-0.601814,0.798636,120,120,255,1), -- G_Pumpkin_03
(150737,180407,530,1,-4151.15,-11744.1,-132.512,3.85718,0,0,-0.936671,0.35021,120,120,255,1), -- G_Pumpkin_03
(150738,180407,530,1,-4134.48,-11773,-135.374,3.85718,0,0,-0.936671,0.35021,120,120,255,1), -- G_Pumpkin_03
(150739,180407,530,1,-4066.65,-11786.1,18.7625,0.977383,0,0,0.469471,0.882948,120,120,255,1), -- G_Pumpkin_03
(150740,180407,530,1,-4214.17,-11847,-129.555,2.89725,0,0,0.992546,0.12187,120,120,255,1), -- G_Pumpkin_03
(150741,180407,530,1,-4256.94,-11780.5,-90.104,4.83456,0,0,-0.66262,0.748956,120,120,255,1), -- G_Pumpkin_03
(150742,180407,530,1,-4257.2,-11817.9,-98.081,4.72984,0,0,-0.700909,0.713251,120,120,255,1), -- G_Pumpkin_03
(150743,180410,530,1,10020.6,-7200.41,33.0904,4.10153,0,0,-0.887011,0.461749,120,120,255,1), -- G_HangingSkeleton_01
(150744,180410,530,1,-4255.53,-11809.1,-122.449,0.698131,0,0,0.34202,0.939693,120,120,255,1), -- G_HangingSkeleton_01
(150745,180411,530,1,10001.9,-7204.37,43.5973,4.76475,0,0,-0.688354,0.725374,120,120,255,1), -- G_Ghost_01
(150746,180411,530,1,-4218.45,-11570.4,-118.693,2.46091,0,0,0.942641,0.333808,120,120,255,1), -- G_Ghost_01
(150747,180411,530,1,-4262.48,-11567.9,-111.85,2.77507,0,0,0.983254,0.182238,120,120,255,1), -- G_Ghost_01
(150748,180411,530,1,-4249.62,-11638.2,-129.843,1.06465,0,0,0.507538,0.861629,120,120,255,1), -- G_Ghost_01
(150749,180411,530,1,-4119.28,-11618.3,-125.234,5.91667,0,0,-0.182235,0.983255,120,120,255,1), -- G_Ghost_01
(150750,180411,530,1,-4215.75,-11688.3,-136.173,4.27606,0,0,-0.843391,0.5373,120,120,255,1), -- G_Ghost_01
(150751,180411,530,1,-4138.6,-11761.4,-126.513,4.34587,0,0,-0.824126,0.566406,120,120,255,1), -- G_Ghost_01
(150752,180411,530,1,-4090.96,-11731.8,-133.524,4.43314,0,0,-0.798635,0.601815,120,120,255,1), -- G_Ghost_01
(150753,180411,530,1,-4206.59,-11844.5,-122.48,4.11898,0,0,-0.882947,0.469473,120,120,255,1), -- G_Ghost_01
(150754,180411,530,1,-4251.98,-11768.3,-80.8368,0.401425,0,0,0.199368,0.979925,120,120,255,1), -- G_Ghost_01
(150755,180411,530,1,-4246.69,-11804.2,-127.084,3.83973,0,0,-0.939692,0.34202,120,120,255,1), -- G_Ghost_01
(150756,180411,530,1,-4282.59,-11781.7,-123.381,3.08918,0,0,0.999657,0.0262016,120,120,255,1), -- G_Ghost_01
(150757,180415,530,1,9543.48,-6796.78,18.1165,3.59538,0,0,-0.97437,0.224951,120,120,255,1), -- CandleBlack01
(150758,180415,530,1,9541.75,-6787.83,17.9067,5.35816,0,0,-0.446198,0.894935,120,120,255,1), -- CandleBlack01
(150759,180415,530,1,9544.98,-6778.12,16.5343,2.04204,0,0,0.85264,0.522499,120,120,255,1), -- CandleBlack01
(150760,180415,530,1,9540.38,-6792.72,18.1255,5.3058,0,0,-0.469471,0.882948,120,120,255,1), -- CandleBlack01
(150761,180415,530,1,9543.89,-6783.12,17.3731,0.191985,0,0,0.0958452,0.995396,120,120,255,1), -- CandleBlack01
(150762,180415,530,1,9478.77,-6793.35,18.1118,4.10153,0,0,-0.887011,0.461749,120,120,255,1), -- CandleBlack01
(150763,180415,530,1,9476.35,-6788.94,18.1041,0.942477,0,0,0.45399,0.891007,120,120,255,1), -- CandleBlack01
(150764,180415,530,1,9471.1,-6788.78,18.1337,0.401425,0,0,0.199368,0.979925,120,120,255,1), -- CandleBlack01
(150765,180415,530,1,-4203.62,-11486.9,-128.051,1.97222,0,0,0.833885,0.551938,120,120,255,1), -- CandleBlack01
(150766,180415,530,1,-4194.91,-11487.5,-130.095,0.95993,0,0,0.461748,0.887011,120,120,255,1), -- CandleBlack01
(150767,180415,530,1,-4197.67,-11488.6,-128.395,1.71042,0,0,0.754709,0.656059,120,120,255,1), -- CandleBlack01
(150768,180415,530,1,-4204.48,-11489.3,-128.108,5.3058,0,0,-0.469471,0.882948,120,120,255,1), -- CandleBlack01
(150769,180415,530,1,-4200.91,-11488.1,-129.846,2.00713,0,0,0.843391,0.5373,120,120,255,1), -- CandleBlack01
(150770,180415,530,1,-4201.66,-11490.2,-127.963,2.58308,0,0,0.961261,0.27564,120,120,255,1), -- CandleBlack01
(150771,180415,530,1,-4253.62,-11544,-122.829,0.680677,0,0,0.333806,0.942642,120,120,255,1), -- CandleBlack01
(150772,180415,530,1,-4257.58,-11546.7,-122.912,4.46804,0,0,-0.788011,0.615662,120,120,255,1), -- CandleBlack01
(150773,180415,530,1,-4214.71,-11532.9,-122.501,4.90438,0,0,-0.636078,0.771625,120,120,255,1), -- CandleBlack01
(150774,180415,530,1,-4214.87,-11532.1,-122.536,4.97419,0,0,-0.608761,0.793354,120,120,255,1), -- CandleBlack01
(150775,180415,530,1,-4206.4,-11534.9,-123.144,0.279252,0,0,0.139173,0.990268,120,120,255,1), -- CandleBlack01
(150776,180415,530,1,-4260.47,-11548.4,-122.737,4.85202,0,0,-0.656058,0.75471,120,120,255,1), -- CandleBlack01
(150777,180415,530,1,-4213.64,-11535.3,-123.23,1.13446,0,0,0.537299,0.843392,120,120,255,1), -- CandleBlack01
(150778,180415,530,1,-4210.46,-11619.5,-94.9458,0.418879,0,0,0.207911,0.978148,120,120,255,1), -- CandleBlack01
(150779,180415,530,1,-4211.45,-11625,-94.9442,5.48033,0,0,-0.390731,0.920505,120,120,255,1), -- CandleBlack01
(150780,180415,530,1,-4241.83,-11637.4,-140.303,5.34071,0,0,-0.45399,0.891007,120,120,255,1), -- CandleBlack01
(150781,180415,530,1,-4241.84,-11638.1,-140.27,1.5708,0,0,0.707107,0.707107,120,120,255,1), -- CandleBlack01
(150782,180415,530,1,-4223.82,-11644.7,-95.1286,3.05433,0,0,0.999048,0.0436193,120,120,255,1), -- CandleBlack01
(150783,180415,530,1,-4219.94,-11641.1,-95.0753,2.67035,0,0,0.972369,0.233448,120,120,255,1), -- CandleBlack01
(150784,180415,530,1,-4145.02,-11768.1,-135.878,1.06465,0,0,0.507538,0.861629,120,120,255,1), -- CandleBlack01
(150785,180415,530,1,-4134.22,-11784,-130.915,0.506145,0,0,0.25038,0.968148,120,120,255,1), -- CandleBlack01
(150786,180415,530,1,-4128.99,-11780,-131.55,6.00393,0,0,-0.139173,0.990268,120,120,255,1), -- CandleBlack01
(150787,180415,530,1,-4188.14,-11799.8,-132.383,6.02139,0,0,-0.130526,0.991445,120,120,255,1), -- CandleBlack01
(150788,180415,530,1,-4190.23,-11803.7,-130.706,2.32129,0,0,0.91706,0.39875,120,120,255,1), -- CandleBlack01
(150789,180415,530,1,-4205.39,-11795.4,-132.498,0.314158,0,0,0.156434,0.987688,120,120,255,1), -- CandleBlack01
(150790,180415,530,1,-4198.27,-11814.9,-125.834,4.86947,0,0,-0.649447,0.760406,120,120,255,1), -- CandleBlack01
(150791,180415,530,1,-4195.35,-11811.3,-127.48,2.79252,0,0,0.984807,0.173652,120,120,255,1), -- CandleBlack01
(150792,180415,530,1,-4192.6,-11807.6,-129.069,2.63544,0,0,0.968147,0.250381,120,120,255,1), -- CandleBlack01
(150793,180415,530,1,-4201.53,-11818.3,-124.203,0.506145,0,0,0.25038,0.968148,120,120,255,1), -- CandleBlack01
(150794,180415,530,1,-4216.34,-11830.2,-118.277,5.46288,0,0,-0.398748,0.91706,120,120,255,1), -- CandleBlack01
(150795,180415,530,1,-4212.46,-11827.4,-119.515,5.02655,0,0,-0.587785,0.809017,120,120,255,1), -- CandleBlack01
(150796,180415,530,1,-4217.8,-11809.2,-122.706,1.09956,0,0,0.522498,0.85264,120,120,255,1), -- CandleBlack01
(150797,180415,530,1,-4215.41,-11807.1,-124.336,3.31614,0,0,-0.996194,0.087165,120,120,255,1), -- CandleBlack01
(150798,180415,530,1,-4220.28,-11811.2,-121.126,3.7001,0,0,-0.961261,0.27564,120,120,255,1), -- CandleBlack01
(150799,180415,530,1,-4213.14,-11804.9,-125.978,5.044,0,0,-0.580703,0.814116,120,120,255,1), -- CandleBlack01
(150800,180415,530,1,-4208.57,-11824.7,-121.028,5.55015,0,0,-0.358368,0.93358,120,120,255,1), -- CandleBlack01
(150801,180415,530,1,-4204.99,-11821.6,-122.638,0.715585,0,0,0.350207,0.936672,120,120,255,1), -- CandleBlack01
(150802,180415,530,1,-4208.96,-11800.3,-129.228,1.43117,0,0,0.656058,0.75471,120,120,255,1), -- CandleBlack01
(150803,180415,530,1,-4210.99,-11802.6,-127.596,3.14159,0,0,-1,0,120,120,255,1), -- CandleBlack01
(150804,180415,530,1,-4207.07,-11797.9,-130.87,0.349065,0,0,0.173648,0.984808,120,120,255,1), -- CandleBlack01
(150805,180415,530,1,-4225.62,-11814.7,-118.302,4.41568,0,0,-0.803857,0.594823,120,120,255,1), -- CandleBlack01
(150806,180415,530,1,-4241.75,-11810.4,-131.856,3.99681,0,0,-0.909961,0.414694,120,120,255,1), -- CandleBlack01
(150807,180415,530,1,-4238.05,-11801.6,-94.6242,4.93928,0,0,-0.622514,0.782609,120,120,255,1), -- CandleBlack01
(150808,180415,530,1,-4279.64,-11787.7,-130.685,1.55334,0,0,0.700909,0.713251,120,120,255,1), -- CandleBlack01
(150809,180415,530,1,-4280.95,-11790.3,-130.714,4.64258,0,0,-0.731354,0.681998,120,120,255,1), -- CandleBlack01
(150810,180415,530,1,-4282.15,-11786.4,-130.717,4.99164,0,0,-0.601814,0.798636,120,120,255,1), -- CandleBlack01
(150811,180415,530,1,-4283.5,-11789,-130.743,4.7473,0,0,-0.694658,0.71934,120,120,255,1), -- CandleBlack01
(150812,180425,530,1,-4243.14,-11569.1,-125.168,2.75761,0,0,0.981627,0.190812,120,120,255,1), -- SkullCandle01
(150813,180425,530,1,-4242.07,-11638.2,-137.209,3.15906,0,0,-0.999962,0.00873464,120,120,255,1), -- SkullCandle01
(150814,180425,530,1,-4102.98,-11636.8,-137.313,2.09439,0,0,0.866025,0.500001,120,120,255,1), -- SkullCandle01
(150815,180425,530,1,-4125.5,-11772.9,-134.824,3.03684,0,0,0.998629,0.0523532,120,120,255,1), -- SkullCandle01
(150816,180425,530,1,-4125.8,-11769.1,-134.155,3.7001,0,0,-0.961261,0.27564,120,120,255,1), -- SkullCandle01
(150817,180425,530,1,-4126.22,-11775.8,-133.06,3.05433,0,0,0.999048,0.0436193,120,120,255,1), -- SkullCandle01
(150818,180431,530,1,-3902.97,-11684.7,-302.985,3.26377,0,0,-0.998135,0.0610518,120,120,255,1), -- G_Pumpkin_01 scale 4.0
(150819,180471,530,1,-3993.1,-11325,-110.975,5.07891,0,0,-0.566406,0.824126,120,120,255,1), -- HangingSkullLight01
(150820,180471,530,1,-4003.96,-11325.2,-111.057,1.0821,0,0,0.515038,0.857168,120,120,255,1), -- HangingSkullLight01
(150821,180471,530,1,-4214.07,-11473.1,-121.295,1.29154,0,0,0.601814,0.798636,120,120,255,1), -- HangingSkullLight01
(150822,180471,530,1,-4213.62,-11483.3,-121.375,1.93731,0,0,0.824125,0.566408,120,120,255,1), -- HangingSkullLight01
(150823,180471,530,1,-4216.01,-11632.8,-87.3016,1.11701,0,0,0.529919,0.848048,120,120,255,1), -- HangingSkullLight01
(150824,180471,530,1,-4199.02,-11648,-89.0657,1.18682,0,0,0.559193,0.829038,120,120,255,1), -- HangingSkullLight01
(150825,180471,530,1,-4238.64,-11803.4,-90.1795,5.3058,0,0,-0.469471,0.882948,120,120,255,1), -- HangingSkullLight01
(150826,180471,530,1,-4236.69,-11835.5,-130.245,2.35619,0,0,0.923879,0.382686,120,120,255,1), -- HangingSkullLight01
(150827,180471,530,1,-4247.02,-11828.9,-103.969,0.436332,0,0,0.216439,0.976296,120,120,255,1), -- HangingSkullLight01
(150828,180471,530,1,-4260.42,-11801.5,-89.6397,0.401425,0,0,0.199368,0.979925,120,120,255,1), -- HangingSkullLight01
(150829,180471,530,1,-4240.65,-11844.3,-103.982,3.59538,0,0,-0.97437,0.224951,120,120,255,1), -- HangingSkullLight01
(150830,180471,530,1,-4249.59,-11820.5,-89.5915,3.49067,0,0,-0.984807,0.173652,120,120,255,1), -- HangingSkullLight01
(150831,180471,530,1,-4269.45,-11789.8,-79.9753,3.78737,0,0,-0.948323,0.317306,120,120,255,1), -- HangingSkullLight01
(150832,180471,530,1,-4274.94,-11791,-118.276,3.45576,0,0,-0.987688,0.156436,120,120,255,1), -- HangingSkullLight01
(150833,180471,530,1,-4268.76,-11851.4,-106.036,1.95477,0,0,0.829038,0.559193,120,120,255,1), -- HangingSkullLight01
(150834,180471,530,1,-4300.66,-11797.9,-86.3502,1.97222,0,0,0.833885,0.551938,120,120,255,1), -- HangingSkullLight01
(150835,180471,530,1,-4282.27,-11770.4,-118.224,0.331611,0,0,0.165047,0.986286,120,120,255,1), -- HangingSkullLight01
(150836,180471,530,1,-4286.01,-11822.5,-94.6165,1.98967,0,0,0.83867,0.54464,120,120,255,1), -- HangingSkullLight01
(150837,180471,530,1,-4279.06,-11773.2,-80.0183,0.575957,0,0,0.284015,0.95882,120,120,255,1), -- HangingSkullLight01
(150838,180472,530,1,-4233.92,-11559.1,-115.261,5.63741,0,0,-0.317305,0.948324,120,120,255,1), -- HangingSkullLight02
(150839,180472,530,1,-4130,-11570.5,-122.113,4.24115,0,0,-0.85264,0.522499,120,120,255,1), -- HangingSkullLight02
(150840,180472,530,1,-4197.24,-11634.3,-86.9932,5.67232,0,0,-0.300706,0.953717,120,120,255,1), -- HangingSkullLight02
(150841,180472,530,1,-4248.62,-11654.3,-130.556,3.99681,0,0,-0.909961,0.414694,120,120,255,1), -- HangingSkullLight02
(150842,180472,530,1,-4204.19,-11647.6,-87.069,6.02139,0,0,-0.130526,0.991445,120,120,255,1), -- HangingSkullLight02
(150843,180472,530,1,-4262.44,-11648.2,-130.65,3.78737,0,0,-0.948323,0.317306,120,120,255,1), -- HangingSkullLight02
(150844,180472,530,1,-4095.29,-11629.3,-127.925,2.53072,0,0,0.953716,0.300708,120,120,255,1), -- HangingSkullLight02
(150845,180472,530,1,-4226.24,-11702.6,-134.42,0.925024,0,0,0.446198,0.894935,120,120,255,1), -- HangingSkullLight02
(150846,180472,530,1,-4086.43,-11730.3,-128.856,1.88495,0,0,0.809016,0.587786,120,120,255,1), -- HangingSkullLight02
(150847,180472,530,1,-4145.37,-11746.8,-122.566,1.91986,0,0,0.819152,0.573577,120,120,255,1), -- HangingSkullLight02
(150848,180472,530,1,-4099.95,-11731.1,-128.985,1.37881,0,0,0.636078,0.771625,120,120,255,1), -- HangingSkullLight02
(150849,180472,530,1,-4193.56,-11838.4,-123.671,1.11701,0,0,0.529919,0.848048,120,120,255,1), -- HangingSkullLight02
(150850,180472,530,1,-4204.54,-11830.4,-123.742,0.680677,0,0,0.333806,0.942642,120,120,255,1), -- HangingSkullLight02
(150851,180472,530,1,-4236.33,-11804.1,-121.033,0.645772,0,0,0.317305,0.948324,120,120,255,1), -- HangingSkullLight02
(150852,180472,530,1,-4243.22,-11793.4,-121.043,0.418879,0,0,0.207911,0.978148,120,120,255,1), -- HangingSkullLight02
(150853,180472,530,1,-4271.01,-11813.8,-85.8474,3.63029,0,0,-0.970295,0.241925,120,120,255,1), -- HangingSkullLight02
(150854,180472,530,1,-4260.23,-11775.3,-114.417,0.331611,0,0,0.165047,0.986286,120,120,255,1), -- HangingSkullLight02
(150855,180472,530,1,-4278.69,-11824.4,-90.3136,5.2709,0,0,-0.484809,0.87462,120,120,255,1), -- HangingSkullLight02
(150856,180472,530,1,-4284,-11815.7,-90.3125,2.11185,0,0,0.870356,0.492424,120,120,255,1), -- HangingSkullLight02
(150857,180407,530,1,-1694.59,5185.02,-40.2092,2.35619,0,0,0.923879,0.382686,120,120,255,1),
(150858,180406,530,1,10007,-7223.96,38.252,3.83973,0,0,0.939692,-0.342023,120,120,255,1),
(150859,180410,530,1,10017.6,-7218.51,32.9932,2.30383,0,0,0.913544,0.406739,120,120,255,1),
(150860,180410,530,1,9963.57,-7252.03,33.8474,2.26892,0,0,0.906306,0.422622,120,120,255,1),
(150861,180410,530,1,9961.77,-7253.52,33.8474,2.32129,0,0,0.91706,0.398748,120,120,255,1),
(150862,180410,530,1,9965.42,-7250.46,34.0418,2.32129,0,0,0.91706,0.398748,120,120,255,1),
(150863,180410,530,1,9966.25,-7242.49,33.6043,3.87463,0,0,0.933581,-0.358368,120,120,255,1),
(150864,180410,530,1,10024.4,-7212.82,32.8613,2.23402,0,0,0.898794,0.438372,120,120,255,1),
(150865,180405,530,1,9823.15,-7386.11,20.4556,0.994837,0,0,0.477158,0.878817,120,120,255,1),
(150866,180415,530,1,9624.6,-7474.98,14.0278,3.71755,0,0,0.95882,-0.284015,120,120,255,1),
(150867,180415,530,1,9612.6,-7464.16,14.0278,2.46091,0,0,0.942641,0.333809,120,120,255,1),
(150868,180411,530,1,9683.25,-7498,21.7387,5.25344,0,0,0.492424,-0.870355,120,120,255,1),
(150869,180415,530,1,9614.42,-7458.69,14.0278,0.750491,0,0,0.366501,0.930418,120,120,255,1),
(150870,180415,530,1,9661.19,-7494.83,20.2202,0.191985,0,0,0.0958451,0.995396,120,120,255,1),
(150871,180407,530,1,9697.96,-7500,15.7346,5.93412,0,0,0.173648,-0.984808,120,120,255,1),
(150872,180415,530,1,9658.17,-7494.94,20.2139,0.872664,0,0,0.422618,0.906308,120,120,255,1),
(150873,180415,530,1,9711.27,-7495.46,20.2082,1.69297,0,0,0.748956,0.66262,120,120,255,1),
(150874,180415,530,1,9619.05,-7454.83,14.0278,3.12412,0,0,0.999962,0.00873622,120,120,255,1),
(150875,180411,530,1,9672.33,-7497.91,19.9034,5.51524,0,0,0.374607,-0.927184,120,120,255,1),
(150876,180415,530,1,9646.64,-7482.6,14.0278,5.98648,0,0,0.147809,-0.989016,120,120,255,1),
(150877,180406,530,1,9679.8,-7494.52,15.7565,3.38594,0,0,0.992546,-0.12187,120,120,255,1),
(150878,180415,530,1,9705.34,-7495.15,20.2205,2.40855,0,0,0.93358,0.35837,120,120,255,1),
(150879,180406,530,1,9689.19,-7499.7,15.7383,0.261798,0,0,0.130525,0.991445,120,120,255,1),
(150880,180415,530,1,9714.89,-7495.47,20.2008,0.174532,0,0,0.0871553,0.996195,120,120,255,1),
(150881,180411,530,1,9694.27,-7498.09,19.9539,4.71239,0,0,0.707106,-0.707107,120,120,255,1),
(150882,180407,530,1,9687.48,-7494.58,15.7603,3.63029,0,0,0.970295,-0.241924,120,120,255,1),
(150883,180405,530,1,9677.4,-7499.98,15.7378,0.209439,0,0,0.104528,0.994522,120,120,255,1),
(150884,180415,530,1,9708.02,-7495.3,20.2148,2.26892,0,0,0.906306,0.422622,120,120,255,1),
(150885,180415,530,1,9642.69,-7487.41,14.0278,1.53589,0,0,0.694658,0.71934,120,120,255,1),
(150886,180415,530,1,9654.68,-7494.92,20.2069,4.17134,0,0,0.870355,-0.492425,120,120,255,1),
(150887,180415,530,1,9633.78,-7466.77,16.8544,0.541051,0,0,0.267238,0.963631,120,120,255,1),
(150888,180415,530,1,9655.46,-7473.86,14.0278,3.78737,0,0,0.948323,-0.317307,120,120,255,1),
(150889,180415,530,1,9639.83,-7466.17,15.9869,3.15906,0,0,0.999962,-0.00873356,120,120,255,1),
(150890,180415,530,1,9636.4,-7467.29,15.9869,1.71042,0,0,0.754709,0.65606,120,120,255,1),
(150891,180415,530,1,9639.86,-7467.85,15.9869,0.872664,0,0,0.422618,0.906308,120,120,255,1),
(150892,180415,530,1,9634.77,-7467.75,15.9869,5.044,0,0,0.580703,-0.814115,120,120,255,1),
(150893,180415,530,1,9649.72,-7475.16,14.0278,4.67748,0,0,0.719341,-0.694658,120,120,255,1),
(150894,180415,530,1,9635.13,-7466.26,17.3342,2.32129,0,0,0.91706,0.398748,120,120,255,1),
(150895,180415,530,1,9638.3,-7467.27,15.9869,1.48353,0,0,0.67559,0.737277,120,120,255,1),
(150896,180415,530,1,9637.33,-7468.69,15.9869,4.52041,0,0,0.771622,-0.636081,120,120,255,1),
(150897,180415,530,1,9634.51,-7465.28,16.3972,2.74016,0,0,0.979924,0.199371,120,120,255,1),
(150898,180415,530,1,9633.91,-7461.74,15.9869,0.90757,0,0,0.438371,0.898794,120,120,255,1),
(150899,180415,530,1,9637.66,-7466.75,18.6632,1.3439,0,0,0.622513,0.782609,120,120,255,1),
(150900,180415,530,1,9635.39,-7467.68,17.8932,2.89724,0,0,0.992546,0.121873,120,120,255,1),
(150901,180415,530,1,9634.46,-7463.35,15.9869,1.06465,0,0,0.507538,0.861629,120,120,255,1),
(150902,180415,530,1,9633.07,-7464.28,15.9869,3.47321,0,0,0.986285,-0.16505,120,120,255,1),
(150903,180415,530,1,9635.98,-7466.34,18.3925,4.13643,0,0,0.878817,-0.477159,120,120,255,1),
(150904,180415,530,1,9639.14,-7462.3,17.9778,6.16101,0,0,0.0610498,-0.998135,120,120,255,1),
(150905,180415,530,1,9635.57,-7461.84,15.9869,1.74533,0,0,0.766045,0.642787,120,120,255,1),
(150906,180415,530,1,9635.96,-7460.17,15.9761,3.80482,0,0,0.945518,-0.325569,120,120,255,1),
(150907,180415,530,1,9639.95,-7462.73,16.84,1.18682,0,0,0.559191,0.829039,120,120,255,1),
(150908,180415,530,1,9637.35,-7461.24,15.9869,3.45576,0,0,0.987688,-0.156438,120,120,255,1),
(150909,180415,530,1,9624.85,-7453.41,14.0278,3.22886,0,0,0.999048,-0.0436198,120,120,255,1),
(150910,180415,530,1,9639.2,-7461.87,15.9869,2.89724,0,0,0.992546,0.121873,120,120,255,1),
(150911,180415,530,1,9641.48,-7465.75,15.9869,0.087266,0,0,0.0436192,0.999048,120,120,255,1),
(150912,180415,530,1,9640.43,-7464.38,15.9869,3.64774,0,0,0.968147,-0.250381,120,120,255,1),
(150913,180415,530,1,9637.09,-7461.91,18.6632,1.78023,0,0,0.777144,0.629323,120,120,255,1),
(150914,180415,530,1,9638.21,-7462.66,18.6636,0.087266,0,0,0.0436192,0.999048,120,120,255,1),
(150915,180415,530,1,9638.43,-7461.02,18.3274,0.890117,0,0,0.430511,0.902586,120,120,255,1),
(150916,180415,530,1,9640.31,-7461.32,17.3018,6.05629,0,0,0.113204,-0.993572,120,120,255,1),
(150917,180415,530,1,9641.47,-7463.02,16.3836,0.122173,0,0,0.0610485,0.998135,120,120,255,1),
(150918,180415,530,1,9638.74,-7460.21,15.9869,4.7822,0,0,0.681999,-0.731353,120,120,255,1),
(150919,180415,530,1,9660.25,-7470.04,14.0278,0.418879,0,0,0.207912,0.978148,120,120,255,1),
(150920,180415,530,1,9632.11,-7441.43,14.0278,1.85005,0,0,0.798636,0.601815,120,120,255,1),
(150921,180415,530,1,9628.13,-7445.98,14.0278,0.523598,0,0,0.258819,0.965926,120,120,255,1),
(150922,180406,530,1,9607.74,-7398.09,13.6132,0.314158,0,0,0.156434,0.987688,120,120,255,1),
(150923,180415,530,1,9649.94,-7453.71,14.0278,1.71042,0,0,0.754709,0.65606,120,120,255,1),
(150924,180415,530,1,9655.61,-7455.17,14.0278,2.11185,0,0,0.870356,0.492423,120,120,255,1),
(150925,180415,530,1,9661.99,-7464.52,14.0278,0.837758,0,0,0.406737,0.913545,120,120,255,1),
(150926,180415,530,1,9660.29,-7459.1,14.0278,2.82743,0,0,0.987688,0.156436,120,120,255,1),
(150927,180415,530,1,9717.18,-7474.62,14.038,4.29351,0,0,0.838671,-0.544639,120,120,255,1),
(150928,180415,530,1,9712.41,-7455.58,14.038,0.331611,0,0,0.165047,0.986286,120,120,255,1),
(150929,180415,530,1,9728,-7464.86,14.038,1.01229,0,0,0.484809,0.87462,120,120,255,1),
(150930,180415,530,1,9712.38,-7473.81,14.038,5.55015,0,0,0.358367,-0.933581,120,120,255,1),
(150931,180415,530,1,9763.65,-7472.03,13.5742,6.19592,0,0,0.0436188,-0.999048,120,120,255,1),
(150932,180415,530,1,9726.43,-7470.03,14.038,5.5676,0,0,0.350208,-0.936672,120,120,255,1),
(150933,180415,530,1,9707.98,-7459.52,14.038,0.488691,0,0,0.241921,0.970296,120,120,255,1),
(150934,180415,530,1,9717.25,-7454.9,14.038,0.488691,0,0,0.241921,0.970296,120,120,255,1),
(150935,180415,530,1,9708.01,-7469.92,14.038,1.0472,0,0,0.500001,0.866025,120,120,255,1),
(150936,180415,530,1,9637.54,-7439.56,14.0278,2.1293,0,0,0.874619,0.48481,120,120,255,1),
(150937,180415,530,1,9722.17,-7455.78,14.038,5.06146,0,0,0.573574,-0.819154,120,120,255,1),
(150938,180415,530,1,9706.26,-7464.71,14.038,3.01941,0,0,0.998134,0.0610534,120,120,255,1),
(150939,180415,530,1,9642.9,-7441.37,14.0278,4.4855,0,0,0.782607,-0.622516,120,120,255,1),
(150940,180415,530,1,9763.87,-7469.17,13.5742,1.95477,0,0,0.829038,0.559192,120,120,255,1),
(150941,180415,530,1,9721.93,-7473.81,14.038,5.49779,0,0,0.382682,-0.92388,120,120,255,1),
(150942,180415,530,1,9763.85,-7467.26,13.5742,2.18166,0,0,0.88701,0.461749,120,120,255,1),
(150943,180415,530,1,9646.93,-7446.19,14.0278,1.27409,0,0,0.594823,0.803857,120,120,255,1),
(150944,180415,530,1,9726.54,-7459.69,14.038,2.51327,0,0,0.951056,0.309019,120,120,255,1),
(150945,180427,530,1,9688.92,-7439.09,24.6405,5.84685,0,0,0.216441,-0.976296,120,120,255,1),
(150946,180426,530,1,9681.57,-7440.41,21.6752,2.35619,0,0,0.923879,0.382686,120,120,255,1),
(150947,180427,530,1,9682.22,-7440.54,23.703,0.261798,0,0,0.130525,0.991445,120,120,255,1),
(150948,180427,530,1,9682.66,-7437.41,19.1475,6.05629,0,0,0.113204,-0.993572,120,120,255,1),
(150949,180426,530,1,9684.29,-7437.08,23.1683,1.97222,0,0,0.833885,0.551938,120,120,255,1),
(150950,180427,530,1,9686.7,-7436.89,20.7238,1.78023,0,0,0.777144,0.629323,120,120,255,1),
(150951,180426,530,1,9686.85,-7440.71,20.7724,6.10865,0,0,0.0871568,-0.996195,120,120,255,1),
(150952,180426,530,1,9685.57,-7441.07,23.9738,5.02655,0,0,0.587785,-0.809017,120,120,255,1),
(150953,180427,530,1,9682.32,-7432.62,23.6752,5.63741,0,0,0.317306,-0.948323,120,120,255,1),
(150954,180407,530,1,9812.96,-7409.96,13.6251,0.488691,0,0,0.241921,0.970296,120,120,255,1),
(150955,180415,530,1,9718.23,-7495.42,20.1941,5.60251,0,0,0.333805,-0.942642,120,120,255,1),
(150956,180415,530,1,9651.49,-7494.75,20.2004,5.37562,0,0,0.438369,-0.898795,120,120,255,1),
(150957,180415,530,1,9708.64,-7508.83,20.1935,0.366518,0,0,0.182235,0.983255,120,120,255,1),
(150958,180415,530,1,9614.34,-7469.53,14.0278,2.60053,0,0,0.963629,0.267244,120,120,255,1),
(150959,180415,530,1,9767.09,-7472.75,13.5703,0.802851,0,0,0.390731,0.920505,120,120,255,1),
(150960,180415,530,1,9627.68,-7482.58,14.0278,1.36136,0,0,0.629322,0.777145,120,120,255,1),
(150961,180415,530,1,9618.94,-7473.69,14.0278,0.785397,0,0,0.382683,0.92388,120,120,255,1),
(150962,180415,530,1,9648.46,-7494.75,20.1943,4.34587,0,0,0.824126,-0.566406,120,120,255,1),
(150963,180415,530,1,9631.64,-7487.33,14.0278,3.63029,0,0,0.970295,-0.241924,120,120,255,1),
(150964,180415,530,1,9657.27,-7508.26,20.1935,0,0,0,0,1,120,120,255,1),
(150965,180415,530,1,9637.18,-7488.98,14.0278,4.59022,0,0,0.748954,-0.662622,120,120,255,1),
(150966,180407,530,1,9668.63,-7499.8,15.7346,0.85521,0,0,0.414693,0.909962,120,120,255,1),
(150967,180415,530,1,9708.44,-7511,20.1934,2.09439,0,0,0.866024,0.500002,120,120,255,1),
(150968,180415,530,1,9658.28,-7510.66,20.1934,2.77507,0,0,0.983255,0.182237,120,120,255,1),
(150969,180415,530,1,9767.19,-7475,13.5476,0.366518,0,0,0.182235,0.983255,120,120,255,1),
(150970,180415,530,1,9747.17,-7504.4,13.8274,2.56563,0,0,0.958819,0.284017,120,120,255,1),
(150971,180415,530,1,9708.25,-7520.51,20.1934,5.0091,0,0,0.594821,-0.803858,120,120,255,1),
(150972,180411,530,1,9768.59,-7495.14,22.0741,4.27606,0,0,0.843391,-0.537301,120,120,255,1),
(150973,180415,530,1,9770.3,-7477.87,13.5495,6.17847,0,0,0.0523337,-0.99863,120,120,255,1),
(150974,180415,530,1,9708.59,-7514.25,20.1934,3.83973,0,0,0.939692,-0.342023,120,120,255,1),
(150975,180405,530,1,9771.71,-7476.25,13.5495,1.55334,0,0,0.700908,0.713252,120,120,255,1),
(150976,180405,530,1,9765.73,-7484.29,13.5197,5.06146,0,0,0.573574,-0.819154,120,120,255,1),
(150977,180415,530,1,9745.08,-7507.75,13.8498,1.25664,0,0,0.587786,0.809016,120,120,255,1),
(150978,180415,530,1,9708.39,-7517.23,20.1934,0.837758,0,0,0.406737,0.913545,120,120,255,1),
(150979,180406,530,1,9766.08,-7491.44,13.519,4.93928,0,0,0.622515,-0.782608,120,120,255,1),
(150980,180415,530,1,9767.16,-7488.73,13.5172,2.32129,0,0,0.91706,0.398748,120,120,255,1),
(150981,180415,530,1,9767.33,-7477.91,13.5208,2.3911,0,0,0.930417,0.366502,120,120,255,1),
(150982,180415,530,1,9770.49,-7489.1,13.5495,5.77704,0,0,0.25038,-0.968148,120,120,255,1),
(150983,180415,530,1,9770.47,-7486.43,13.5495,3.42085,0,0,0.990268,-0.139175,120,120,255,1),
(150984,180415,530,1,9766.89,-7486.76,13.5177,3.35105,0,0,0.994521,-0.104537,120,120,255,1),
(150985,180411,530,1,9768.69,-7480.61,22.2131,2.28638,0,0,0.909961,0.414694,120,120,255,1),
(150986,180415,530,1,9770.34,-7492.48,13.5495,5.07891,0,0,0.566406,-0.824127,120,120,255,1),
(150987,180415,530,1,9770.32,-7483.28,13.5495,5.46288,0,0,0.398749,-0.91706,120,120,255,1),
(150988,180407,530,1,9806.15,-7483.15,13.5468,5.11382,0,0,0.551935,-0.833887,120,120,255,1),
(150989,180405,530,1,9828.6,-7428.66,13.619,3.28124,0,0,0.997563,-0.0697669,120,120,255,1),
(150990,180405,530,1,9771.55,-7499.52,13.5495,2.26892,0,0,0.906306,0.422622,120,120,255,1),
(150991,180415,530,1,9770.2,-7497.83,13.5495,1.11701,0,0,0.529919,0.848048,120,120,255,1),
(150992,180415,530,1,9767.04,-7497.9,13.5236,2.94959,0,0,0.995395,0.0958539,120,120,255,1),
(150993,180415,530,1,9763.94,-7503.12,13.5733,5.39307,0,0,0.43051,-0.902586,120,120,255,1),
(150994,180415,530,1,9760.56,-7504.64,13.8474,2.67035,0,0,0.972369,0.233447,120,120,255,1),
(150995,180407,530,1,9822.74,-7460.87,14.9632,4.43314,0,0,0.798634,-0.601816,120,120,255,1),
(150996,180415,530,1,9767.04,-7502.68,13.5684,4.90438,0,0,0.636076,-0.771626,120,120,255,1),
(150997,180415,530,1,9828.7,-7444.44,15.4777,3.56047,0,0,0.978148,-0.207911,120,120,255,1),
(150998,180406,530,1,9806.04,-7492.88,13.547,4.99164,0,0,0.601816,-0.798635,120,120,255,1),
(150999,180472,530,1,9828.49,-7448.28,18.2686,5.0091,0,0,0.594821,-0.803858,120,120,255,1),
(151000,180472,530,1,9834.41,-7383.11,18.1008,0.383971,0,0,0.190808,0.981627,120,120,255,1),
(151001,180406,530,1,9850.4,-7388.42,13.644,0.575957,0,0,0.284015,0.95882,120,120,255,1),
(151002,180415,530,1,9864.48,-7406.85,17.2591,4.53786,0,0,0.766043,-0.642789,120,120,255,1),
(151003,180415,530,1,9873.65,-7397.97,17.1778,6.07375,0,0,0.104526,-0.994522,120,120,255,1),
(151004,180415,530,1,9871.33,-7404.42,17.2578,1.11701,0,0,0.529919,0.848048,120,120,255,1),
(151005,180407,530,1,9864.58,-7372.3,20.4506,4.69494,0,0,0.713249,-0.700911,120,120,255,1),
(151006,180472,530,1,9874.94,-7450.11,18.3683,6.24828,0,0,0.0174517,-0.999848,120,120,255,1),
(151007,180406,530,1,9876.84,-7387.03,20.4503,0.366518,0,0,0.182235,0.983255,120,120,255,1),
(151008,180407,530,1,9912.19,-7409.07,13.6404,1.50098,0,0,0.681997,0.731355,120,120,255,1),
(151009,180405,530,1,9899.08,-7405.36,13.6274,5.044,0,0,0.580703,-0.814115,120,120,255,1),
(151010,180415,530,1,9841.82,-7508.13,19.6409,3.927,0,0,0.923878,-0.382688,120,120,255,1),
(151011,180415,530,1,9849.06,-7502.08,-4.00776,1.76278,0,0,0.771624,0.636079,120,120,255,1),
(151012,180415,530,1,9852.74,-7502.27,-4.00398,4.38078,0,0,0.814114,-0.580705,120,120,255,1),
(151013,180415,530,1,9847.09,-7501.37,19.6491,4.53786,0,0,0.766043,-0.642789,120,120,255,1),
(151014,180415,530,1,9855.83,-7499.76,14.9569,3.47321,0,0,0.986285,-0.16505,120,120,255,1),
(151015,180415,530,1,9844.3,-7503.15,19.647,5.06146,0,0,0.573574,-0.819154,120,120,255,1),
(151016,180415,530,1,9850.99,-7500.92,19.6854,3.82227,0,0,0.942642,-0.333806,120,120,255,1),
(151017,180415,530,1,9850.93,-7498.93,14.9304,1.48353,0,0,0.67559,0.737277,120,120,255,1),
(151018,180415,530,1,9841.51,-7507.54,-4.00039,1.09956,0,0,0.5225,0.852639,120,120,255,1),
(151019,180405,530,1,9881.05,-7461.78,18.234,3.21142,0,0,0.999391,-0.0349066,120,120,255,1),
(151020,180415,530,1,9855.01,-7501.31,19.67,0.191985,0,0,0.0958451,0.995396,120,120,255,1),
(151021,180415,530,1,9845.86,-7499.85,14.9349,4.71239,0,0,0.707106,-0.707107,120,120,255,1),
(151022,180415,530,1,9863.12,-7510.87,-3.99923,2.14675,0,0,0.878816,0.477161,120,120,255,1),
(151023,180415,530,1,9836.05,-7510.82,-4.0007,0.279252,0,0,0.139173,0.990268,120,120,255,1),
(151024,180415,530,1,9857.71,-7503.15,19.6691,4.34587,0,0,0.824126,-0.566406,120,120,255,1),
(151025,180407,530,1,9911.93,-7454.62,3.85961,4.66003,0,0,0.725374,-0.688355,120,120,255,1),
(151026,180415,530,1,9861.13,-7509.8,-3.99904,1.67551,0,0,0.743143,0.669133,120,120,255,1),
(151027,180415,530,1,9860.07,-7508.15,19.661,2.32129,0,0,0.91706,0.398748,120,120,255,1),
(151028,180415,530,1,9838.98,-7510.79,-3.9992,2.18166,0,0,0.88701,0.461749,120,120,255,1),
(151029,180415,530,1,9860.13,-7507.26,-3.99987,1.37881,0,0,0.636078,0.771625,120,120,255,1),
(151030,180415,530,1,9841.04,-7509.53,-3.99918,0.837758,0,0,0.406737,0.913545,120,120,255,1),
(151031,180415,530,1,9866.3,-7510.9,-4.00086,5.42798,0,0,0.414691,-0.909963,120,120,255,1),
(151032,180415,530,1,9850.41,-7576.23,20.3032,2.82743,0,0,0.987688,0.156436,120,120,255,1),
(151033,180415,530,1,9859.64,-7571.13,20.369,2.77507,0,0,0.983255,0.182237,120,120,255,1),
(151034,180415,530,1,9840.06,-7565.67,20.272,1.39626,0,0,0.642786,0.766046,120,120,255,1),
(151035,180415,530,1,9855.57,-7556.84,20.2219,6.05629,0,0,0.113204,-0.993572,120,120,255,1),
(151036,180415,530,1,9855.62,-7574.95,20.3396,5.68977,0,0,0.292373,-0.956304,120,120,255,1),
(151037,180415,530,1,9841.29,-7570.88,20.3177,1.91986,0,0,0.819151,0.573577,120,120,255,1),
(151038,180415,530,1,9850.59,-7555.33,20.2896,3.94445,0,0,0.920504,-0.390734,120,120,255,1),
(151039,180415,530,1,9860.76,-7565.83,20.2199,1.22173,0,0,0.573576,0.819152,120,120,255,1),
(151040,180415,530,1,9845.25,-7556.72,20.2728,1.02974,0,0,0.492422,0.870357,120,120,255,1),
(151041,180415,530,1,9859.21,-7560.64,20.1698,6.03884,0,0,0.121869,-0.992546,120,120,255,1),
(151042,180415,530,1,9845.12,-7574.83,20.3287,5.2709,0,0,0.484807,-0.874621,120,120,255,1),
(151043,180415,530,1,9841.47,-7560.37,20.304,0.471238,0,0,0.233445,0.97237,120,120,255,1),
(151044,180415,530,1,9708.16,-7523.53,20.1934,1.79769,0,0,0.782608,0.622514,120,120,255,1),
(151045,180415,530,1,9708.63,-7525.71,20.1934,5.46288,0,0,0.398749,-0.91706,120,120,255,1),
(151046,180415,530,1,9689.42,-7526.1,18.1795,0,0,0,0,1,120,120,255,1),
(151047,180415,530,1,9698.25,-7529.27,18.1807,1.18682,0,0,0.559191,0.829039,120,120,255,1),
(151048,180415,530,1,9699.27,-7531.12,18.1795,1.5708,0,0,0.707108,0.707106,120,120,255,1),
(151049,180415,530,1,9688.26,-7524.13,18.1795,1.46608,0,0,0.669132,0.743144,120,120,255,1),
(151050,180415,530,1,9696.24,-7528.11,18.1801,1.51844,0,0,0.688356,0.725373,120,120,255,1),
(151051,180415,530,1,9699.44,-7533.09,18.1873,0.95993,0,0,0.461748,0.887011,120,120,255,1),
(151052,180415,530,1,9686.21,-7523.12,18.1795,0.418879,0,0,0.207912,0.978148,120,120,255,1),
(151053,180415,530,1,9680.04,-7523.15,18.1795,1.98967,0,0,0.838669,0.544641,120,120,255,1),
(151054,180415,530,1,9689.92,-7528.09,18.1801,3.54302,0,0,0.979925,-0.199369,120,120,255,1),
(151055,180415,530,1,9677.98,-7524.14,18.1795,4.67748,0,0,0.719341,-0.694658,120,120,255,1),
(151056,180415,530,1,9676.57,-7530.9,18.1881,3.49067,0,0,0.984807,-0.173654,120,120,255,1),
(151057,180415,530,1,9669.97,-7528.09,18.1804,3.194,0,0,0.999657,-0.0262007,120,120,255,1),
(151058,180415,530,1,9658.17,-7523.25,20.1934,3.38594,0,0,0.992546,-0.12187,120,120,255,1),
(151059,180415,530,1,9666.94,-7531.02,18.1818,3.29869,0,0,0.996917,-0.078468,120,120,255,1),
(151060,180415,530,1,9658.16,-7520.05,20.1934,5.60251,0,0,0.333805,-0.942642,120,120,255,1),
(151061,180415,530,1,9676.96,-7525.97,18.1795,3.78737,0,0,0.948323,-0.317307,120,120,255,1),
(151062,180415,530,1,9690.02,-7531.79,18.1908,5.11382,0,0,0.551935,-0.833887,120,120,255,1),
(151063,180415,530,1,9658.13,-7516.91,20.1934,0.157079,0,0,0.0784588,0.996917,120,120,255,1),
(151064,180415,530,1,9687.82,-7536.06,18.2092,1.18682,0,0,0.559191,0.829039,120,120,255,1),
(151065,180415,530,1,9677.46,-7536.02,18.2087,3.47321,0,0,0.986285,-0.16505,120,120,255,1),
(151066,180415,530,1,9676.62,-7527.95,18.18,5.75959,0,0,0.258817,-0.965926,120,120,255,1),
(151067,180415,530,1,9658.24,-7513.85,20.1934,5.72468,0,0,0.275637,-0.961262,120,120,255,1),
(151068,180415,530,1,9668.02,-7529.09,18.1795,4.50295,0,0,0.777146,-0.629321,120,120,255,1),
(151069,180415,530,1,9657.9,-7525.75,20.1934,4.72984,0,0,0.70091,-0.71325,120,120,255,1),
(151070,180415,530,1,9666.73,-7532.87,18.1876,0.628317,0,0,0.309016,0.951057,120,120,255,1),
(151071,180415,530,1,9555.56,-7451.35,15.4845,4.79966,0,0,0.675588,-0.737279,120,120,255,1),
(151072,180415,530,1,9566.94,-7457.09,15.5204,6.23083,0,0,0.0261746,-0.999657,120,120,255,1),
(151073,180415,530,1,9567.05,-7447.51,15.5197,2.51327,0,0,0.951056,0.309019,120,120,255,1),
(151074,180415,530,1,9566.97,-7453.83,15.5195,1.6057,0,0,0.719339,0.694659,120,120,255,1),
(151075,180415,530,1,9567,-7451.41,15.5196,0.366518,0,0,0.182235,0.983255,120,120,255,1),
(151076,180415,530,1,9568.4,-7426.11,19.474,4.10152,0,0,0.887012,-0.461747,120,120,255,1),
(151077,180415,530,1,9567.15,-7445.85,15.5203,0.610863,0,0,0.300705,0.953717,120,120,255,1),
(151078,180472,530,1,9563.64,-7502.27,21.4948,4.60767,0,0,0.743145,-0.669131,120,120,255,1),
(151079,180415,530,1,9566.98,-7449.66,15.5194,2.33874,0,0,0.920505,0.390732,120,120,255,1),
(151080,180415,530,1,9566.94,-7455.47,15.5194,2.37364,0,0,0.927182,0.37461,120,120,255,1),
(151081,180405,530,1,9563.62,-7483.45,15.5327,4.27606,0,0,0.843391,-0.537301,120,120,255,1),
(151082,180415,530,1,9567.16,-7443.97,15.5203,0.226893,0,0,0.113203,0.993572,120,120,255,1),
(151083,180406,530,1,9562.59,-7505.37,16.257,4.7822,0,0,0.681999,-0.731353,120,120,255,1),
(151084,180415,530,1,9567.13,-7442.48,15.5201,5.95157,0,0,0.165049,-0.986285,120,120,255,1),
(151085,180415,530,1,9565.79,-7425.96,19.4764,1.44862,0,0,0.662619,0.748957,120,120,255,1),
(151086,180410,530,1,9540.22,-7450.81,17.5184,0.0174525,0,0,0.00872614,0.999962,120,120,255,1),
(151087,180415,530,1,9567.21,-7426.12,19.4749,6.17847,0,0,0.0523337,-0.99863,120,120,255,1),
(151088,180415,530,1,9541.86,-7425.77,19.4765,0.541051,0,0,0.267238,0.963631,120,120,255,1),
(151089,180415,530,1,9563.86,-7424.64,19.4769,3.85718,0,0,0.936672,-0.350209,120,120,255,1),
(151090,180410,530,1,9540.26,-7448.01,17.509,0.0523589,0,0,0.0261765,0.999657,120,120,255,1),
(151091,180472,530,1,9564.25,-7412.43,27.4224,4.45059,0,0,0.793353,-0.608762,120,120,255,1),
(151092,180410,530,1,9550.32,-7412.96,20.9528,4.7822,0,0,0.681999,-0.731353,120,120,255,1),
(151093,180415,530,1,9544.1,-7423.86,19.4769,4.31097,0,0,0.833884,-0.55194,120,120,255,1),
(151094,180415,530,1,9563.4,-7423.91,19.477,5.20108,0,0,0.515039,-0.857167,120,120,255,1),
(151095,180410,530,1,9540.22,-7453.87,17.473,0.0349062,0,0,0.0174522,0.999848,120,120,255,1),
(151096,180415,530,1,9543.04,-7424.99,19.4766,3.71755,0,0,0.95882,-0.284015,120,120,255,1),
(151097,180415,530,1,9564.67,-7425.3,19.4766,0.506145,0,0,0.25038,0.968148,120,120,255,1),
(151098,180407,530,1,9567.77,-7397.52,16.8504,4.99164,0,0,0.601816,-0.798635,120,120,255,1),
(151099,180406,530,1,9567.92,-7416.94,19.4739,5.16618,0,0,0.529917,-0.84805,120,120,255,1),
(151100,180410,530,1,9553.4,-7413.04,20.9871,4.69494,0,0,0.713249,-0.700911,120,120,255,1),
(151101,180407,530,1,9543.04,-7483.67,15.5327,2.56563,0,0,0.958819,0.284017,120,120,255,1),
(151102,180415,530,1,9540.23,-7425.87,19.4752,0.471238,0,0,0.233445,0.97237,120,120,255,1),
(151103,180472,530,1,9519.83,-7433.04,19.3605,0.209439,0,0,0.104528,0.994522,120,120,255,1),
(151104,180415,530,1,9539.08,-7425.98,19.4746,4.39823,0,0,0.809017,-0.587785,120,120,255,1),
(151105,180407,530,1,9540.18,-7417.85,19.4752,2.11185,0,0,0.870356,0.492423,120,120,255,1),
(151106,180405,530,1,9557.85,-7400.04,16.8377,2.67035,0,0,0.972369,0.233447,120,120,255,1),
(151107,180410,530,1,9543.7,-7412.97,20.8704,4.72984,0,0,0.70091,-0.71325,120,120,255,1),
(151108,180406,530,1,9508.44,-7424.6,14.1965,3.68265,0,0,0.96363,-0.267241,120,120,255,1),
(151109,180410,530,1,9538.56,-7415.21,20.947,0,0,0,0,1,120,120,255,1),
(151110,180405,530,1,9523.48,-7423.12,14.2509,4.62512,0,0,0.737278,-0.675589,120,120,255,1),
(151111,180410,530,1,9540.66,-7412.91,20.8915,4.7473,0,0,0.694657,-0.719341,120,120,255,1),
(151112,180406,530,1,9539.32,-7392.82,16.8229,1.18682,0,0,0.559191,0.829039,120,120,255,1),
(151113,180472,530,1,9554.57,-7389.99,21.6803,0.663223,0,0,0.325567,0.945519,120,120,255,1),
(151114,180415,530,1,9487.29,-7422.02,14.815,4.62512,0,0,0.737278,-0.675589,120,120,255,1),
(151115,180415,530,1,9484.36,-7445.35,14.903,3.99681,0,0,0.90996,-0.414696,120,120,255,1),
(151116,180415,530,1,9480.71,-7432.74,14.903,2.40855,0,0,0.93358,0.35837,120,120,255,1),
(151117,180415,530,1,9476.45,-7449.18,14.903,0.663223,0,0,0.325567,0.945519,120,120,255,1),
(151118,180407,530,1,9494.88,-7428.36,17.0914,3.28124,0,0,0.997563,-0.0697669,120,120,255,1),
(151119,180415,530,1,9492.83,-7419.99,14.815,2.16421,0,0,0.882948,0.469471,120,120,255,1),
(151120,180415,530,1,9476.51,-7431.84,14.903,1.48353,0,0,0.67559,0.737277,120,120,255,1),
(151121,180415,530,1,9467.38,-7440.65,14.903,2.93214,0,0,0.994521,0.104535,120,120,255,1),
(151122,180415,530,1,9472.47,-7432.79,14.903,4.7473,0,0,0.694657,-0.719341,120,120,255,1),
(151123,180415,530,1,9482.68,-7420.49,14.815,2.80997,0,0,0.986285,0.165053,120,120,255,1),
(151124,180415,530,1,9484.56,-7436.28,14.903,3.24635,0,0,0.998629,-0.0523547,120,120,255,1),
(151125,180415,530,1,9468.69,-7445.15,14.903,0.401425,0,0,0.199368,0.979925,120,120,255,1),
(151126,180415,530,1,9496.98,-7414.94,14.815,1.41372,0,0,0.649449,0.760405,120,120,255,1),
(151127,180415,530,1,9472.42,-7448.44,14.903,3.54302,0,0,0.979925,-0.199369,120,120,255,1),
(151128,180415,530,1,9485.85,-7440.65,14.903,0.296705,0,0,0.147809,0.989016,120,120,255,1),
(151129,180415,530,1,9497.75,-7409.99,14.815,4.71239,0,0,0.707106,-0.707107,120,120,255,1),
(151130,180415,530,1,9480.6,-7448.55,14.903,4.04917,0,0,0.898793,-0.438374,120,120,255,1),
(151131,180415,530,1,9497.88,-7397.24,14.815,5.044,0,0,0.580703,-0.814115,120,120,255,1),
(151132,180415,530,1,9468.71,-7436.14,14.903,4.83456,0,0,0.662621,-0.748955,120,120,255,1),
(151133,180415,530,1,9497.82,-7404.05,14.815,5.06146,0,0,0.573574,-0.819154,120,120,255,1),
(151134,180405,530,1,9728.2,-7077.67,16.7416,5.49779,0,0,0.382682,-0.92388,120,120,255,1),
(151135,180405,530,1,9731.67,-7093.85,16.6939,4.83456,0,0,0.662621,-0.748955,120,120,255,1),
(151136,180406,530,1,9649.08,-7055.95,18.9854,6.14356,0,0,0.069756,-0.997564,120,120,255,1),
(151137,180405,530,1,9630.41,-7055.75,18.9982,0.680677,0,0,0.333806,0.942642,120,120,255,1),
(151138,180407,530,1,9625.02,-7048.13,16.5235,2.35619,0,0,0.923879,0.382686,120,120,255,1),
(151139,180415,530,1,8744.74,-6707.79,71.1688,6.17847,0,0,0.0523337,-0.99863,120,120,255,1),
(151140,180407,530,1,8752.96,-6701.51,70.3077,0.85521,0,0,0.414693,0.909962,120,120,255,1),
(151141,180415,530,1,8732.85,-6664.83,71.7548,5.75959,0,0,0.258817,-0.965926,120,120,255,1),
(151142,180415,530,1,8761.78,-6686.87,71.6017,2.9845,0,0,0.996917,0.0784656,120,120,255,1),
(151143,180407,530,1,8727.98,-6662.12,70.3404,0.994837,0,0,0.477158,0.878817,120,120,255,1),
(151144,180415,530,1,8748.61,-6711.05,71.0671,2.11185,0,0,0.870356,0.492423,120,120,255,1),
(151145,180415,530,1,8759.11,-6691.25,71.2854,2.49582,0,0,0.948324,0.317305,120,120,255,1),
(151146,180406,530,1,8749.69,-6699.78,69.2624,5.63741,0,0,0.317306,-0.948323,120,120,255,1),
(151147,180415,530,1,8739.99,-6664.78,71.0756,4.27606,0,0,0.843391,-0.537301,120,120,255,1),
(151148,180415,530,1,8757.93,-6701.4,71.1676,1.95477,0,0,0.829038,0.559192,120,120,255,1),
(151149,180405,530,1,8723.28,-6666.23,70.2413,1.13446,0,0,0.537298,0.843393,120,120,255,1),
(151150,180415,530,1,8753.41,-6709.49,71.1883,0.558504,0,0,0.275637,0.961262,120,120,255,1),
(151151,180415,530,1,8726.56,-6687.08,72.6259,3.22886,0,0,0.999048,-0.0436198,120,120,255,1),
(151152,180405,530,1,8753.74,-6699.58,70.3749,4.36332,0,0,0.819153,-0.573575,120,120,255,1),
(151153,180415,530,1,8723.23,-6681.45,71.8474,0.698131,0,0,0.34202,0.939693,120,120,255,1),
(151154,180405,530,1,8719.52,-6656.93,93.4202,0.994837,0,0,0.477158,0.878817,120,120,255,1),
(151155,180415,530,1,8700.92,-6674.8,72.0319,1.51844,0,0,0.688356,0.725373,120,120,255,1),
(151156,180415,530,1,8706.49,-6662.01,71.9275,5.77704,0,0,0.25038,-0.968148,120,120,255,1),
(151157,180406,530,1,8705.39,-6687.07,70.4631,2.40855,0,0,0.93358,0.35837,120,120,255,1),
(151158,180411,530,1,8717.24,-6634.22,81.3668,2.84488,0,0,0.989015,0.147813,120,120,255,1),
(151159,180415,530,1,8702.58,-6665.3,71.9377,1.15192,0,0,0.54464,0.83867,120,120,255,1),
(151160,180415,530,1,8701.25,-6679.79,72.4696,0.977383,0,0,0.469471,0.882948,120,120,255,1),
(151161,180407,530,1,8706.71,-6692.78,70.4014,2.14675,0,0,0.878816,0.477161,120,120,255,1),
(151162,180411,530,1,8692.95,-6653.3,81.6506,3.29869,0,0,0.996917,-0.078468,120,120,255,1),
(151163,180415,530,1,8698.95,-6684.25,72.7528,3.26377,0,0,0.998135,-0.0610507,120,120,255,1),
(151164,180411,530,1,8690.38,-6624.21,81.7438,5.32326,0,0,0.461746,-0.887012,120,120,255,1),
(151165,180407,530,1,8698.13,-6633.02,82.7016,4.17134,0,0,0.870355,-0.492425,120,120,255,1),
(151166,180406,530,1,8704.13,-6639.71,82.7016,1.13446,0,0,0.537298,0.843393,120,120,255,1),
(151167,180411,530,1,8714.33,-6651.52,81.3881,1.97222,0,0,0.833885,0.551938,120,120,255,1),
(151168,180405,530,1,8679.96,-6613.04,93.4213,5.75959,0,0,0.258817,-0.965926,120,120,255,1),
(151169,180405,530,1,8683.74,-6621.23,70.3659,4.06662,0,0,0.894934,-0.446199,120,120,255,1),
(151170,180406,530,1,8688.72,-6616.97,70.3659,3.89209,0,0,0.930417,-0.366504,120,120,255,1),
(151171,180415,530,1,7605.09,-6811.05,84.1159,0.314158,0,0,0.156434,0.987688,120,120,255,1),
(151172,180415,530,1,7612.11,-6804.23,81.9038,4.99164,0,0,0.601816,-0.798635,120,120,255,1),
(151173,180415,530,1,7612.02,-6828.27,83.9107,5.55015,0,0,0.358367,-0.933581,120,120,255,1),
(151174,180415,530,1,7566.67,-6821.13,88.058,4.41568,0,0,0.803858,-0.594822,120,120,255,1),
(151175,180427,530,1,7573.92,-6803.23,94.8674,5.44543,0,0,0.406735,-0.913546,120,120,255,1),
(151176,180415,530,1,7567.13,-6817.87,88.0573,2.07694,0,0,0.861629,0.507539,120,120,255,1),
(151177,180427,530,1,7569.02,-6809.58,94.5004,5.60251,0,0,0.333805,-0.942642,120,120,255,1),
(151178,180426,530,1,7569.08,-6825.99,89.6971,3.50812,0,0,0.983254,-0.18224,120,120,255,1),
(151179,180415,530,1,7602.12,-6828.64,86.0151,3.73501,0,0,0.956304,-0.292374,120,120,255,1),
(151180,180427,530,1,7574.77,-6814.04,95.2817,1.62316,0,0,0.725376,0.688353,120,120,255,1),
(151181,180405,530,1,7577.57,-6858.07,93.3555,3.01941,0,0,0.998134,0.0610534,120,120,255,1),
(151182,180426,530,1,7572.74,-6822.46,90.0889,2.00713,0,0,0.843392,0.537299,120,120,255,1),
(151183,180407,530,1,7576.38,-6780.38,87.4002,2.21656,0,0,0.894933,0.446202,120,120,255,1),
(151184,180426,530,1,7572.01,-6815.11,93.4548,3.05433,0,0,0.999048,0.0436174,120,120,255,1),
(151185,180415,530,1,7567.2,-6819.6,88.0579,3.71755,0,0,0.95882,-0.284015,120,120,255,1),
(151186,180427,530,1,7589.01,-6833.85,98.9757,2.79252,0,0,0.984807,0.173652,120,120,255,1),
(151187,180407,530,1,7572.28,-6819.3,86.6661,1.91986,0,0,0.819151,0.573577,120,120,255,1),
(151188,180426,530,1,7571.85,-6841.22,98.8472,0.628317,0,0,0.309016,0.951057,120,120,255,1),
(151189,180415,530,1,7562.19,-6823.29,88.0597,5.44543,0,0,0.406735,-0.913546,120,120,255,1),
(151190,180427,530,1,7567.38,-6835.13,98.6968,5.77704,0,0,0.25038,-0.968148,120,120,255,1),
(151191,180415,530,1,7561.72,-6814.66,88.0576,0.087266,0,0,0.0436192,0.999048,120,120,255,1),
(151192,180415,530,1,7565.12,-6815.15,88.0569,2.44346,0,0,0.939692,0.342021,120,120,255,1),
(151193,180415,530,1,7558.94,-6816.73,88.0574,0.802851,0,0,0.390731,0.920505,120,120,255,1),
(151194,180405,530,1,7566.2,-6800.06,87.4834,1.5708,0,0,0.707108,0.707106,120,120,255,1),
(151195,180415,530,1,7563.43,-6814.64,88.0591,4.7473,0,0,0.694657,-0.719341,120,120,255,1),
(151196,180415,530,1,7559.31,-6821.54,88.0599,0.59341,0,0,0.292371,0.956305,120,120,255,1),
(151197,180415,530,1,7558.51,-6820.01,88.0581,6.24828,0,0,0.0174517,-0.999848,120,120,255,1),
(151198,180426,530,1,7560.97,-6804.75,97.2967,0.488691,0,0,0.241921,0.970296,120,120,255,1),
(151199,180415,530,1,7565.51,-6822.45,88.0588,2.87979,0,0,0.991445,0.130528,120,120,255,1),
(151200,180426,530,1,7567.5,-6812.46,101.917,0.488691,0,0,0.241921,0.970296,120,120,255,1),
(151201,180415,530,1,7566.35,-6816.3,88.0579,6.10865,0,0,0.0871568,-0.996195,120,120,255,1),
(151202,180407,530,1,7571.6,-6855.14,93.3475,2.96704,0,0,0.996194,0.0871655,120,120,255,1),
(151203,180415,530,1,7564.03,-6823.21,88.0583,2.58308,0,0,0.961261,0.275641,120,120,255,1),
(151204,180415,530,1,7560.62,-6822.77,88.0595,5.77704,0,0,0.25038,-0.968148,120,120,255,1),
(151205,180426,530,1,7564.72,-6828.12,96.1755,0.994837,0,0,0.477158,0.878817,120,120,255,1),
(151206,180426,530,1,7560.47,-6812.44,96.0475,1.91986,0,0,0.819151,0.573577,120,120,255,1),
(151207,180415,530,1,7560.12,-6815.4,88.0572,5.51524,0,0,0.374607,-0.927184,120,120,255,1),
(151208,180426,530,1,7547.69,-6814.1,93.2742,5.84685,0,0,0.216441,-0.976296,120,120,255,1),
(151209,180406,530,1,7552.98,-6801.01,87.0928,4.99164,0,0,0.601816,-0.798635,120,120,255,1),
(151210,180426,530,1,7547.64,-6825.29,94.4019,0.890117,0,0,0.430511,0.902586,120,120,255,1),
(151211,180427,530,1,7558.28,-6809.56,94.6867,5.2709,0,0,0.484807,-0.874621,120,120,255,1),
(151212,180415,530,1,7546.28,-6830.88,88.8113,4.62512,0,0,0.737278,-0.675589,120,120,255,1),
(151213,180426,530,1,7557.05,-6828.95,95.4463,2.28638,0,0,0.909961,0.414694,120,120,255,1),
(151214,180415,530,1,7555.83,-6833.35,89.28,5.32326,0,0,0.461746,-0.887012,120,120,255,1),
(151215,180415,530,1,7558.43,-6818.41,88.0586,3.01941,0,0,0.998134,0.0610534,120,120,255,1),
(151216,180405,530,1,7552.51,-6816.9,86.9488,4.95674,0,0,0.61566,-0.788012,120,120,255,1),
(151217,180411,530,1,7557.6,-6889.19,103.978,4.52041,0,0,0.771622,-0.636081,120,120,255,1),
(151218,180427,530,1,7542.73,-6808.82,93.3418,5.53269,0,0,0.366503,-0.930417,120,120,255,1),
(151219,180427,530,1,7538.97,-6832.84,96.3099,2.93214,0,0,0.994521,0.104535,120,120,255,1),
(151220,180411,530,1,7552.21,-6766.9,96.9553,1.97222,0,0,0.833885,0.551938,120,120,255,1),
(151221,180406,530,1,7512.57,-6856.68,84.6278,4.20625,0,0,0.861627,-0.507541,120,120,255,1),
(151222,180415,530,1,7506.48,-6809.17,81.5693,5.88176,0,0,0.199368,-0.979925,120,120,255,1),
(151223,180415,530,1,7516.31,-6806.77,83.1623,1.3439,0,0,0.622513,0.782609,120,120,255,1),
(151224,180405,1,1,343.785,-4850.28,10.3581,2.70526,0,0,0.976295,0.216442,120,120,255,1),
(151225,180405,1,1,1442.28,-4410.35,25.4536,5.80567,0,0,-0.236498,0.971632,120,120,255,1),
(151226,180405,1,1,1440.41,-4361.58,25.4536,4.82005,0,0,-0.668037,0.744128,120,120,255,1),
(151227,180405,1,1,1425.5,-4422.51,25.4536,2.32385,0,0,0.917569,0.397576,120,120,255,1),
(151228,180405,0,1,1809.1,215.493,65.8722,2.63522,0,0,0.968119,0.250492,120,120,255,1),
(151229,180405,0,1,1834.63,209.913,60.4536,4.15388,0,0,-0.874619,0.48481,120,120,255,1),
(151230,180405,0,1,1847.19,219.168,60.5934,5.25344,0,0,-0.492423,0.870356,120,120,255,1),
(151231,180405,0,1,2326.24,242.014,29.5065,1.88495,0,0,0.809016,0.587786,120,120,255,1),
(151232,180405,0,1,-8878.24,879.854,102.323,4.59022,0,0,-0.748956,0.66262,120,120,255,1),
(151233,180405,0,1,-8982.91,851.983,29.6206,4.59022,0,0,-0.748956,0.66262,120,120,255,1),
(151234,180405,0,1,-8992.13,844.5,29.6206,3.76991,0,0,-0.951056,0.309017,120,120,255,1),
(151235,180405,0,1,-9004.76,854.212,105.59,1.20428,0,0,0.566406,0.824126,120,120,255,1),
(151236,180405,0,1,-8863.03,760.753,99.6454,4.04917,0,0,-0.898793,0.438373,120,120,255,1),
(151237,180405,0,1,-8945.31,761.847,91.062,3.07177,0,0,0.999391,0.0349061,120,120,255,1),
(151238,180405,0,1,-8853.58,725.003,99.9202,0.820303,0,0,0.398748,0.91706,120,120,255,1),
(151239,180405,0,1,-8982.24,483.953,97.1889,5.44543,0,0,-0.406736,0.913546,120,120,255,1),
(151240,180405,0,1,-8997.1,501.587,97.1961,0.174532,0,0,0.0871553,0.996195,120,120,255,1),
(151241,180405,0,1,-9031.11,474.477,94.9157,6.24828,0,0,-0.0174522,0.999848,120,120,255,1),
(151242,180405,0,1,-9016.53,456.785,95.0093,5.44543,0,0,-0.406736,0.913546,120,120,255,1),
(151243,180405,0,1,-8475.01,609.403,95.222,2.33874,0,0,0.920505,0.390732,120,120,255,1),
(151244,180405,0,1,-8496.24,527.868,100.434,3.63029,0,0,-0.970295,0.241925,120,120,255,1),
(151245,180405,0,1,-8517.84,654.8,103.038,0.90757,0,0,0.438371,0.898794,120,120,255,1),
(151246,180405,0,1,-8527,686.073,100.757,4.11898,0,0,-0.882947,0.469473,120,120,255,1),
(151247,180405,0,1,-8585.93,544.052,104.378,2.46091,0,0,0.942641,0.333808,120,120,255,1),
(151248,180405,0,1,-8605.78,512.349,106.345,5.88176,0,0,-0.199368,0.979925,120,120,255,1),
(151249,180405,0,1,-8678.35,481.53,97.1654,4.18879,0,0,-0.866025,0.500001,120,120,255,1),
(151250,180405,0,1,-8712.25,526.484,100.113,1.0472,0,0,0.5,0.866025,120,120,255,1),
(151251,180405,0,1,-8720.89,520.788,99.4422,0.95993,0,0,0.461748,0.887011,120,120,255,1),
(151252,180405,0,1,-8740.76,559.479,100.501,4.41568,0,0,-0.803857,0.594823,120,120,255,1),
(151253,180406,0,1,-8922.81,867.752,101.875,0.558504,0,0,0.275637,0.961262,120,120,255,1),
(151254,180406,0,1,-8463.11,564.203,100.166,4.18879,0,0,-0.866025,0.500001,120,120,255,1),
(151255,180406,0,1,-8450.42,593.536,101.372,2.19911,0,0,0.891006,0.453991,120,120,255,1),
(151256,180406,0,1,-8470.08,641.896,94.3354,0.820303,0,0,0.398748,0.91706,120,120,255,1),
(151257,180406,0,1,-8700.65,391.467,105.608,3.10665,0,0,0.999847,0.0174693,120,120,255,1),
(151258,180407,1,1,1440.6,-4366.47,25.4536,5.69298,0,0,-0.290836,0.956773,120,120,255,1),
(151259,180407,1,1,1426.03,-4427.07,25.4536,1.67866,0,0,0.744196,0.667961,120,120,255,1),
(151260,180407,0,1,1574.81,201.275,-43.1024,2.65289,0,0,0.970295,0.241925,120,120,255,1),
(151261,180407,0,1,1835.31,210.984,62.2733,4.25861,0,0,-0.848047,0.529921,120,120,255,1),
(151262,180407,0,1,1847.29,218.009,62.1043,4.92183,0,0,-0.62932,0.777146,120,120,255,1),
(151263,180407,0,1,-8902.43,970.849,120.998,4.69494,0,0,-0.71325,0.70091,120,120,255,1),
(151264,180407,0,1,-8954.16,880.918,105.468,5.16618,0,0,-0.529919,0.848048,120,120,255,1),
(151265,180407,0,1,-8998.5,805.668,106.502,1.58825,0,0,0.71325,0.70091,120,120,255,1),
(151266,180407,0,1,-8963.75,574.769,93.8404,0.191985,0,0,0.0958452,0.995396,120,120,255,1),
(151267,180407,0,1,-8438.59,622.425,95.0825,1.88495,0,0,0.809016,0.587786,120,120,255,1),
(151268,180407,0,1,-8485.1,574.655,97.5798,0.296705,0,0,0.147809,0.989016,120,120,255,1),
(151269,180407,0,1,-8407.09,660.646,97.5118,2.40855,0,0,0.93358,0.358368,120,120,255,1),
(151270,180407,0,1,-8409.5,674.28,100.634,0.750491,0,0,0.366501,0.930418,120,120,255,1),
(151271,180407,0,1,-8625.82,456.188,102.696,5.06146,0,0,-0.573576,0.819152,120,120,255,1),
(151272,180407,0,1,-8635.18,425.361,103.566,4.92183,0,0,-0.62932,0.777146,120,120,255,1),
(151273,180407,0,1,-8736.58,444.29,99.1048,1.88495,0,0,0.809016,0.587786,120,120,255,1),
(151274,180407,0,1,-8850.6,523.667,105.976,3.03684,0,0,0.998629,0.0523532,120,120,255,1),
(151275,180407,0,1,-8860.78,524.609,107.771,5.75959,0,0,-0.258819,0.965926,120,120,255,1),
(151276,180407,0,1,-8870.92,495.49,113.131,5.86431,0,0,-0.207911,0.978148,120,120,255,1),
(151277,180407,0,1,-8903.36,499.203,93.8614,5.13127,0,0,-0.544639,0.838671,120,120,255,1),
(151278,180408,0,1,-8476.1,579.314,101.469,1.71042,0,0,0.754709,0.656059,120,120,255,1),
(151279,180408,0,1,-8436.73,617.727,99.7439,6.26573,0,0,-0.00872612,0.999962,120,120,255,1),
(151280,180408,0,1,-8755.31,403.677,109.806,0.575957,0,0,0.284015,0.95882,120,120,255,1),
(151281,180408,0,1,-8765.25,396.045,109.806,0.575957,0,0,0.284015,0.95882,120,120,255,1),
(151282,180408,0,1,-8736.17,693.205,103.458,2.07694,0,0,0.861629,0.507539,120,120,255,1),
(151283,180408,0,1,-8743.78,702.484,103.445,2.23402,0,0,0.898793,0.438373,120,120,255,1),
(151284,180408,0,1,1643.62,223.363,-38.3811,3.73501,0,0,-0.956305,0.292372,120,120,255,1),
(151285,180409,0,1,1640.76,223.317,-43.1033,6.16101,0,0,-0.0610485,0.998135,120,120,255,1),
(151286,180410,0,1,-8416.45,538.637,96.2768,0.715585,0,0,0.350207,0.936672,120,120,255,1),
(151287,180410,0,1,-8418.78,541.403,96.2649,0.715585,0,0,0.350207,0.936672,120,120,255,1),
(151288,180410,0,1,-8410.67,551.238,96.2764,3.80482,0,0,-0.945518,0.325568,120,120,255,1),
(151289,180410,0,1,-8412.93,553.951,96.2813,3.80482,0,0,-0.945518,0.325568,120,120,255,1),
(151290,180410,0,1,-8415.06,556.596,96.2723,3.82227,0,0,-0.942641,0.333808,120,120,255,1),
(151291,180410,0,1,-8669.78,442.878,103.282,2.32129,0,0,0.91706,0.39875,120,120,255,1),
(151292,180410,0,1,-8683.48,499.115,102.217,5.42797,0,0,-0.414693,0.909961,120,120,255,1),
(151293,180410,0,1,-8688.15,407.233,106.295,3.89209,0,0,-0.930417,0.366502,120,120,255,1),
(151294,180411,0,1,-8913.21,632.705,103.334,2.61799,0,0,0.965925,0.258821,120,120,255,1),
(151295,180411,0,1,-8898.93,625.471,103.077,5.8294,0,0,-0.224951,0.97437,120,120,255,1),
(151296,180411,0,1,-8924.56,544.502,100.768,0.523598,0,0,0.258819,0.965926,120,120,255,1),
(151297,180411,0,1,-8440.86,607.819,103.611,1.43117,0,0,0.656058,0.75471,120,120,255,1),
(151298,180411,0,1,-8447.77,646.604,98.2006,4.15388,0,0,-0.874619,0.48481,120,120,255,1),
(151299,180411,0,1,-8503.43,567.547,102.176,2.07694,0,0,0.861629,0.507539,120,120,255,1),
(151300,180411,0,1,-8434.37,658.092,97.6204,6.00393,0,0,-0.139173,0.990268,120,120,255,1),
(151301,180411,0,1,-8655.17,419.601,108.435,3.56047,0,0,-0.978148,0.207912,120,120,255,1),
(151302,180411,0,1,-8710.09,462.333,107.489,1.46608,0,0,0.66913,0.743145,120,120,255,1),
(151303,180411,1,1,1663.1,-4340.11,67.7698,3.12412,0,0,0.999962,0.00873464,120,120,255,1),
(151304,180411,1,1,2118.24,-1190.27,106.942,3.14159,0,0,-1,0,120,120,255,1),
(151305,180415,0,1,-8874.57,874.83,104.764,1.83259,0,0,0.793353,0.608762,120,120,255,1),
(151306,180415,0,1,-8875.9,875.056,104.162,0.226892,0,0,0.113203,0.993572,120,120,255,1),
(151307,180415,0,1,-8878.48,875.491,102.595,4.95674,0,0,-0.615661,0.788011,120,120,255,1),
(151308,180415,0,1,-8877.38,875.309,103.363,4.76475,0,0,-0.688354,0.725374,120,120,255,1),
(151309,180415,0,1,-8879.16,870.931,102.564,0.59341,0,0,0.292371,0.956305,120,120,255,1),
(151310,180415,0,1,-8876.55,870.646,104.133,5.61996,0,0,-0.325567,0.945519,120,120,255,1),
(151311,180415,0,1,-8875.15,870.42,104.771,5.58505,0,0,-0.34202,0.939693,120,120,255,1),
(151312,180415,0,1,-8877.86,870.814,103.421,5.75959,0,0,-0.258819,0.965926,120,120,255,1),
(151313,180415,0,1,-8982.13,862.569,124.174,0.628317,0,0,0.309016,0.951057,120,120,255,1),
(151314,180415,0,1,-8980.39,865.471,123.438,0.872664,0,0,0.422618,0.906308,120,120,255,1),
(151315,180415,0,1,-8980.23,881.807,120.023,3.07177,0,0,0.999391,0.0349061,120,120,255,1),
(151316,180415,0,1,-8982.02,884.866,119.364,3.4383,0,0,-0.989016,0.147811,120,120,255,1),
(151317,180415,0,1,-8978.41,871.983,121.984,3.33359,0,0,-0.995396,0.0958512,120,120,255,1),
(151318,180415,0,1,-8979.05,878.535,120.661,0.506145,0,0,0.25038,0.968148,120,120,255,1),
(151319,180415,0,1,-8978.25,875.194,121.333,0.541051,0,0,0.267238,0.963631,120,120,255,1),
(151320,180415,0,1,-8978.86,868.484,122.688,2.35619,0,0,0.923879,0.382686,120,120,255,1),
(151321,180415,0,1,-8984.71,877.587,120.236,0.610863,0,0,0.300705,0.953717,120,120,255,1),
(151322,180415,0,1,-8984.25,868.502,122.909,1.22173,0,0,0.573576,0.819152,120,120,255,1),
(151323,180415,0,1,-8983.66,874.882,120.994,6.23083,0,0,-0.0261765,0.999657,120,120,255,1),
(151324,180415,0,1,-8983.69,871.681,121.947,0.680677,0,0,0.333806,0.942642,120,120,255,1),
(151325,180415,0,1,-8985.67,865.844,123.847,0.122173,0,0,0.0610485,0.998135,120,120,255,1),
(151326,180415,0,1,-8984.57,887.222,118.804,1.67551,0,0,0.743144,0.669131,120,120,255,1),
(151327,180415,0,1,-8984.8,860.557,124.96,0.244346,0,0,0.121869,0.992546,120,120,255,1),
(151328,180415,0,1,-8990.24,862.469,125.827,1.02974,0,0,0.492423,0.870356,120,120,255,1),
(151329,180415,0,1,-8988.32,882.58,118.685,1.58825,0,0,0.71325,0.70091,120,120,255,1),
(151330,180415,0,1,-8986.82,889.616,118.267,1.50098,0,0,0.681998,0.731354,120,120,255,1),
(151331,180415,0,1,-8987.62,864.096,124.74,6.24828,0,0,-0.0174522,0.999848,120,120,255,1),
(151332,180415,0,1,-8987.5,858.932,125.717,2.05949,0,0,0.857167,0.515038,120,120,255,1),
(151333,180415,0,1,-8989.7,891.372,117.71,1.51844,0,0,0.688354,0.725374,120,120,255,1),
(151334,180415,0,1,-8986.27,880.528,119.339,1.46608,0,0,0.66913,0.743145,120,120,255,1),
(151335,180415,0,1,-8887.17,806.505,94.1868,0.541051,0,0,0.267238,0.963631,120,120,255,1),
(151336,180415,0,1,-8994.19,886.096,117.127,0.436332,0,0,0.216439,0.976296,120,120,255,1),
(151337,180415,0,1,-8881.72,810.403,96.7604,0.541051,0,0,0.267238,0.963631,120,120,255,1),
(151338,180415,0,1,-8882.78,805.5,96.813,0.541051,0,0,0.267238,0.963631,120,120,255,1),
(151339,180415,0,1,-8884.46,811.168,95.3268,0.541051,0,0,0.267238,0.963631,120,120,255,1),
(151340,180415,0,1,-8886.02,806.233,95.0952,0.541051,0,0,0.267238,0.963631,120,120,255,1),
(151341,180415,0,1,-8990.35,858.219,126.473,1.27409,0,0,0.594822,0.803857,120,120,255,1),
(151342,180415,0,1,-8884.23,805.806,96.1286,0.541051,0,0,0.267238,0.963631,120,120,255,1),
(151343,180415,0,1,-8885.89,811.467,94.2495,0.541051,0,0,0.267238,0.963631,120,120,255,1),
(151344,180415,0,1,-8992.67,892.226,117.245,4.36332,0,0,-0.819152,0.573577,120,120,255,1),
(151345,180415,0,1,-8883.08,810.759,96.0988,0.541051,0,0,0.267238,0.963631,120,120,255,1),
(151346,180415,0,1,-8990.72,884.818,117.901,5.53269,0,0,-0.366501,0.930418,120,120,255,1),
(151347,180415,0,1,-8992.98,861.858,126.852,5.3058,0,0,-0.469471,0.882948,120,120,255,1),
(151348,180415,0,1,-8995.98,893.335,116.709,3.47321,0,0,-0.986285,0.16505,120,120,255,1),
(151349,180415,0,1,-8988.99,846.507,29.2279,1.50098,0,0,0.681998,0.731354,120,120,255,1),
(151350,180415,0,1,-8985,849.384,29.4492,3.54302,0,0,-0.979924,0.19937,120,120,255,1),
(151351,180415,0,1,-8984.48,849.837,29.6206,1.50098,0,0,0.681998,0.731354,120,120,255,1),
(151352,180415,0,1,-8985.03,849.87,29.403,1.79769,0,0,0.782608,0.622515,120,120,255,1),
(151353,180415,0,1,-8996.77,858.67,128.238,6.16101,0,0,-0.0610485,0.998135,120,120,255,1),
(151354,180415,0,1,-8997.76,887.415,116.294,5.39307,0,0,-0.430511,0.902586,120,120,255,1),
(151355,180415,0,1,-8999.47,860.278,129.206,0.0349062,0,0,0.0174522,0.999848,120,120,255,1),
(151356,180415,0,1,-8995.35,862.255,128.074,5.23599,0,0,-0.5,0.866025,120,120,255,1),
(151357,180415,0,1,-8999.7,864.635,129.782,3.4383,0,0,-0.989016,0.147811,120,120,255,1),
(151358,180415,0,1,-8993.6,858.101,127.375,0.122173,0,0,0.0610485,0.998135,120,120,255,1),
(151359,180415,0,1,-8997.51,863.245,129.028,0.488691,0,0,0.241921,0.970296,120,120,255,1),
(151360,180415,0,1,-9002.05,862.403,129.806,2.68781,0,0,0.97437,0.224951,120,120,255,1),
(151361,180415,0,1,-9006.59,855.852,105.946,1.64061,0,0,0.731353,0.681999,120,120,255,1),
(151362,180415,0,1,-8999.82,894.359,116.084,5.60251,0,0,-0.333807,0.942641,120,120,255,1),
(151363,180415,0,1,-9001.93,886.833,115.437,6.10865,0,0,-0.0871553,0.996195,120,120,255,1),
(151364,180415,0,1,-8978.51,769.943,97.366,2.37364,0,0,0.927183,0.374608,120,120,255,1),
(151365,180415,0,1,-9012.51,849.554,106.338,5.91667,0,0,-0.182235,0.983255,120,120,255,1),
(151366,180415,0,1,-8975.06,766.87,97.7383,2.37364,0,0,0.927183,0.374608,120,120,255,1),
(151367,180415,0,1,-8974.6,767.79,97.3047,2.37364,0,0,0.927183,0.374608,120,120,255,1),
(151368,180415,0,1,-9011.16,860.509,108.19,1.25664,0,0,0.587785,0.809017,120,120,255,1),
(151369,180415,0,1,-8974,768.783,96.6968,2.37364,0,0,0.927183,0.374608,120,120,255,1),
(151370,180415,0,1,-9008.87,858.205,107.1,3.10665,0,0,0.999847,0.0174693,120,120,255,1),
(151371,180415,0,1,-8978.04,770.932,96.7932,2.37364,0,0,0.927183,0.374608,120,120,255,1),
(151372,180415,0,1,-8979.13,768.816,97.8878,2.37364,0,0,0.927183,0.374608,120,120,255,1),
(151373,180415,0,1,-9015.07,852.09,107.244,0.226892,0,0,0.113203,0.993572,120,120,255,1),
(151374,180415,0,1,-8415.88,538.161,99.0955,3.50812,0,0,-0.983254,0.182238,120,120,255,1),
(151375,180415,0,1,-8410.21,538.807,103.905,1.51844,0,0,0.688354,0.725374,120,120,255,1),
(151376,180415,0,1,-8411.19,544.733,96.4345,0.104719,0,0,0.0523357,0.99863,120,120,255,1),
(151377,180415,0,1,-8412.01,537.42,103.854,4.46804,0,0,-0.788011,0.615662,120,120,255,1),
(151378,180415,0,1,-8411.19,544.733,96.4345,0.104719,0,0,0.0523357,0.99863,120,120,255,1),
(151379,180415,0,1,-8415.59,538.096,99.2279,1.15192,0,0,0.544639,0.838671,120,120,255,1),
(151380,180415,0,1,-8418.22,541.238,99.2178,3.99681,0,0,-0.909961,0.414694,120,120,255,1),
(151381,180415,0,1,-8418,540.986,99.0908,3.9619,0,0,-0.91706,0.39875,120,120,255,1),
(151382,180415,0,1,-8412.45,553.03,99.0011,0.104719,0,0,0.0523357,0.99863,120,120,255,1),
(151383,180415,0,1,-8413.3,553.898,99.2288,0.104719,0,0,0.0523357,0.99863,120,120,255,1),
(151384,180415,0,1,-8415.36,556.385,99.1227,0.820303,0,0,0.398748,0.91706,120,120,255,1),
(151385,180415,0,1,-8419.15,542.533,99.1428,3.42085,0,0,-0.990268,0.139175,120,120,255,1),
(151386,180415,0,1,-8413.67,554.727,99.1272,0.104719,0,0,0.0523357,0.99863,120,120,255,1),
(151387,180415,0,1,-8418.44,541.615,99.0581,2.89725,0,0,0.992546,0.12187,120,120,255,1),
(151388,180415,0,1,-8415.49,556.649,99.2084,0.523598,0,0,0.258819,0.965926,120,120,255,1),
(151389,180415,0,1,-8420.19,560.693,95.5738,0.418879,0,0,0.207911,0.978148,120,120,255,1),
(151390,180415,0,1,-8421.6,559.649,95.536,3.90954,0,0,-0.927183,0.374608,120,120,255,1),
(151391,180415,0,1,-8344.34,613.302,106.992,3.97935,0,0,-0.913545,0.406738,120,120,255,1),
(151392,180415,0,1,-8345.22,612.62,106.819,1.39626,0,0,0.642787,0.766045,120,120,255,1),
(151393,180415,0,1,-8344.04,613.623,106.83,1.50098,0,0,0.681998,0.731354,120,120,255,1),
(151394,180415,0,1,-8344.74,612.842,106.75,2.16421,0,0,0.882947,0.469473,120,120,255,1),
(151395,180415,0,1,-8345.58,612.3,107.034,2.23402,0,0,0.898793,0.438373,120,120,255,1),
(151396,180415,0,1,-8341.74,615.398,107.04,5.96903,0,0,-0.156434,0.987688,120,120,255,1),
(151397,180415,0,1,-8342.57,614.753,106.816,0.628317,0,0,0.309016,0.951057,120,120,255,1),
(151398,180415,0,1,-8340.86,615.852,106.945,2.26893,0,0,0.906307,0.422619,120,120,255,1),
(151399,180415,0,1,-8343.61,613.778,106.898,5.09636,0,0,-0.559193,0.829038,120,120,255,1),
(151400,180415,0,1,-8342.15,615.047,107.007,2.32129,0,0,0.91706,0.39875,120,120,255,1),
(151401,180415,0,1,-8342.84,614.267,106.863,3.3685,0,0,-0.993571,0.113208,120,120,255,1),
(151402,180415,0,1,-8341.36,615.724,106.853,1.88495,0,0,0.809016,0.587786,120,120,255,1),
(151403,180415,0,1,-8340.58,616.339,106.863,1.6057,0,0,0.719339,0.694659,120,120,255,1),
(151404,180415,0,1,-8343.32,614.148,107.016,0.645772,0,0,0.317305,0.948324,120,120,255,1),
(151405,180415,0,1,-8339.1,617.455,106.95,5.5676,0,0,-0.350207,0.936672,120,120,255,1),
(151406,180415,0,1,-8338.72,617.875,106.857,1.76278,0,0,0.771625,0.636078,120,120,255,1),
(151407,180415,0,1,-8339.86,616.835,106.974,5.16618,0,0,-0.529919,0.848048,120,120,255,1),
(151408,180415,0,1,-8340.34,616.542,106.946,0.925024,0,0,0.446198,0.894935,120,120,255,1),
(151409,180415,0,1,-8339.38,617.023,106.705,2.40855,0,0,0.93358,0.358368,120,120,255,1),
(151410,180415,0,1,-8337.37,618.802,106.93,2.47837,0,0,0.945518,0.325568,120,120,255,1),
(151411,180415,0,1,-8338.16,618.049,107.002,2.77507,0,0,0.983254,0.182238,120,120,255,1),
(151412,180415,0,1,-8337.86,618.568,106.849,3.26377,0,0,-0.998135,0.0610518,120,120,255,1),
(151413,180415,0,1,-8336.96,619.161,106.983,2.46091,0,0,0.942641,0.333808,120,120,255,1),
-- (151414,180415,0,1,-8470,562.135,99.6942,1.43117,0,0,0.656058,0.75471,120,120,255,1), -- doesn't quite fit here
(151415,180415,0,1,-8471.35,560.184,99.75,1.65806,0,0,0.737277,0.675591,120,120,255,1),
(151416,180415,0,1,-8439.62,625.255,97.859,0.104719,0,0,0.0523357,0.99863,120,120,255,1),
(151417,180415,0,1,-8439.49,625.719,97.974,0.104719,0,0,0.0523357,0.99863,120,120,255,1),
(151418,180415,0,1,-8469.23,599.92,97.4107,1.32645,0,0,0.615661,0.788011,120,120,255,1),
(151419,180415,0,1,-8472.77,558.359,99.6987,3.47321,0,0,-0.986285,0.16505,120,120,255,1),
(151420,180415,0,1,-8467.93,598.302,97.3614,6.16101,0,0,-0.0610485,0.998135,120,120,255,1),
(151421,180415,0,1,-8475.8,554.365,99.6668,1.13446,0,0,0.537299,0.843392,120,120,255,1),
(151422,180415,0,1,-8474.29,556.37,99.6991,2.91469,0,0,0.993571,0.113208,120,120,255,1),
(151423,180415,0,1,-8440.17,625.703,98.0105,0.104719,0,0,0.0523357,0.99863,120,120,255,1),
(151424,180415,0,1,-8473.93,605.854,97.3945,5.75959,0,0,-0.258819,0.965926,120,120,255,1),
(151425,180415,0,1,-8480.92,631.986,95.5323,1.67551,0,0,0.743144,0.669131,120,120,255,1),
(151426,180415,0,1,-8499.5,568.023,101.094,0.104719,0,0,0.0523357,0.99863,120,120,255,1),
(151427,180415,0,1,-8480.62,632.063,95.4907,4.36332,0,0,-0.819152,0.573577,120,120,255,1),
(151428,180415,0,1,-8416.51,681.495,96.4703,4.43314,0,0,-0.798635,0.601815,120,120,255,1),
(151429,180415,0,1,-8418,680.295,96.4803,5.55015,0,0,-0.358368,0.93358,120,120,255,1),
(151430,180415,0,1,-8643.68,466.856,105.814,4.62512,0,0,-0.737277,0.675591,120,120,255,1),
(151431,180415,0,1,-8645.28,468.788,105.693,1.76278,0,0,0.771625,0.636078,120,120,255,1),
(151432,180415,0,1,-8646.96,470.95,105.801,4.55531,0,0,-0.760406,0.649449,120,120,255,1),
(151433,180415,0,1,-8651.05,476.113,105.81,2.02458,0,0,0.848047,0.529921,120,120,255,1),
(151434,180415,0,1,-8631.62,410.363,104.821,2.07694,0,0,0.861629,0.507539,120,120,255,1),
(151435,180415,0,1,-8649.5,447.646,106.058,2.42601,0,0,0.936672,0.350207,120,120,255,1),
(151436,180415,0,1,-8649.01,473.432,105.808,0.471238,0,0,0.233445,0.97237,120,120,255,1),
(151437,180415,0,1,-8653.19,478.701,105.729,5.5676,0,0,-0.350207,0.936672,120,120,255,1),
(151438,180415,0,1,-8655.33,481.448,105.796,5.00909,0,0,-0.594823,0.803857,120,120,255,1),
(151439,180415,0,1,-8674.12,483.639,101.231,4.01426,0,0,-0.906307,0.422619,120,120,255,1),
(151440,180415,0,1,-8672.65,484.703,101.344,5.67232,0,0,-0.300706,0.953717,120,120,255,1),
(151441,180415,0,1,-8675.57,437.052,100.81,3.15906,0,0,-0.999962,0.00873464,120,120,255,1),
(151442,180415,0,1,-8674.17,438.236,100.888,5.35816,0,0,-0.446198,0.894935,120,120,255,1),
(151443,180415,0,1,-8709.08,468.052,99.1869,3.99681,0,0,-0.909961,0.414694,120,120,255,1),
(151444,180415,0,1,-8710.63,466.814,99.3439,2.91469,0,0,0.993571,0.113208,120,120,255,1),
(151445,180415,0,1,-8691.52,438.215,103.339,1.76278,0,0,0.771625,0.636078,120,120,255,1),
(151446,180415,0,1,-8693.11,438.071,103.189,0.0349062,0,0,0.0174522,0.999848,120,120,255,1),
(151447,180415,0,1,-8694.81,436.79,103.4,3.01941,0,0,0.998135,0.0610518,120,120,255,1),
(151448,180415,0,1,-8736.23,447.408,100.761,3.56047,0,0,-0.978148,0.207912,120,120,255,1),
(151449,180415,0,1,-8735.71,449.321,100.733,5.34071,0,0,-0.45399,0.891007,120,120,255,1),
(151450,180415,0,1,-8735.84,442.012,100.834,4.03171,0,0,-0.902585,0.430512,120,120,255,1),
(151451,180415,0,1,-8821.35,566.009,94.5619,1.39626,0,0,0.642787,0.766045,120,120,255,1),
(151452,180415,0,1,-8819.39,565.53,94.5618,3.99681,0,0,-0.909961,0.414694,120,120,255,1),
(151453,180415,0,1,-8821.89,564.038,94.5627,0.139624,0,0,0.0697556,0.997564,120,120,255,1),
(151454,180415,0,1,-8821.51,563.691,94.5643,5.28835,0,0,-0.477159,0.878817,120,120,255,1),
(151455,180415,0,1,-8821.02,563.408,94.563,3.45576,0,0,-0.987688,0.156436,120,120,255,1),
(151456,180415,0,1,-8820.46,563.375,94.5633,1.39626,0,0,0.642787,0.766045,120,120,255,1),
(151457,180415,0,1,-8821.72,565.59,94.5611,2.82743,0,0,0.987688,0.156436,120,120,255,1),
(151458,180415,0,1,-8822.05,565.097,94.5622,1.39626,0,0,0.642787,0.766045,120,120,255,1),
(151459,180415,0,1,-8819.84,565.885,94.5641,2.96704,0,0,0.996194,0.087165,120,120,255,1),
(151460,180415,0,1,-8820.35,566.186,94.5622,0.401425,0,0,0.199368,0.979925,120,120,255,1),
(151461,180415,0,1,-8820.86,566.141,94.5642,2.28638,0,0,0.909961,0.414694,120,120,255,1),
(151462,180415,0,1,-8822.01,564.587,94.5649,2.37364,0,0,0.927183,0.374608,120,120,255,1),
(151463,180415,0,1,-8819.22,564.41,94.5612,1.39626,0,0,0.642787,0.766045,120,120,255,1),
(151464,180415,0,1,-8819.25,564.932,94.5637,0.506145,0,0,0.25038,0.968148,120,120,255,1),
(151465,180415,0,1,-8819.57,563.939,94.5642,5.88176,0,0,-0.199368,0.979925,120,120,255,1),
(151466,180415,0,1,-8819.9,563.542,94.5622,5.93412,0,0,-0.173648,0.984808,120,120,255,1),
(151467,180415,0,1,-8881.66,637.255,104.765,4.90438,0,0,-0.636078,0.771625,120,120,255,1),
(151468,180415,0,1,-8882.15,638.328,105.044,4.55531,0,0,-0.760406,0.649449,120,120,255,1),
(151469,180415,0,1,-8881.82,637.62,105.114,4.66003,0,0,-0.725374,0.688355,120,120,255,1),
(151470,180415,0,1,-8881.97,637.964,104.916,1.309,0,0,0.608761,0.793354,120,120,255,1),
(151471,180415,0,1,-8882.46,638.658,104.731,1.76278,0,0,0.771625,0.636078,120,120,255,1),
(151472,180415,0,1,-8883.25,640.201,105.03,2.11185,0,0,0.870356,0.492424,120,120,255,1),
(151473,180415,0,1,-8882.76,639.292,104.816,0.209439,0,0,0.104528,0.994522,120,120,255,1),
(151474,180415,0,1,-8883.47,640.748,105.114,3.194,0,0,-0.999657,0.0262016,120,120,255,1),
(151475,180415,0,1,-8883.01,639.788,104.926,4.79966,0,0,-0.67559,0.737278,120,120,255,1),
(151476,180415,0,1,-8858.59,502.163,112.781,0.680677,0,0,0.333806,0.942642,120,120,255,1),
(151477,180415,0,1,-8858.73,504.826,112.636,5.79449,0,0,-0.241921,0.970296,120,120,255,1),
(151478,180415,0,1,-8859.32,501.828,112.874,5.74214,0,0,-0.267238,0.963631,120,120,255,1),
(151479,180415,0,1,-8858.44,503.837,112.813,5.25344,0,0,-0.492423,0.870356,120,120,255,1),
(151480,180415,0,1,-8859.83,501.451,112.718,4.39823,0,0,-0.809016,0.587786,120,120,255,1),
(151481,180415,0,1,-8858.06,503.321,112.784,2.37364,0,0,0.927183,0.374608,120,120,255,1),
(151482,180415,0,1,-8859.28,502.205,112.825,3.07177,0,0,0.999391,0.0349061,120,120,255,1),
(151483,180415,0,1,-8858.23,502.72,112.606,1.88495,0,0,0.809016,0.587786,120,120,255,1),
(151484,180415,0,1,-8859.49,505.41,112.905,5.42797,0,0,-0.414693,0.909961,120,120,255,1),
(151485,180415,0,1,-8859.08,505.462,112.769,2.44346,0,0,0.939692,0.34202,120,120,255,1),
(151486,180415,0,1,-8858.24,504.151,112.753,2.32129,0,0,0.91706,0.39875,120,120,255,1),
(151487,180415,0,1,-8857.71,502.866,112.911,5.61996,0,0,-0.325567,0.945519,120,120,255,1),
(151488,180415,0,1,-8837.8,493.512,110.576,1.93731,0,0,0.824125,0.566408,120,120,255,1),
(151489,180415,0,1,-8837.8,493.325,110.702,0.837757,0,0,0.406736,0.913546,120,120,255,1),
(151490,180415,0,1,-8838.01,493.436,110.456,4.86947,0,0,-0.649447,0.760406,120,120,255,1),
(151491,180425,0,1,-8872.89,874.502,105.327,2.9496,0,0,0.995396,0.0958512,120,120,255,1),
(151492,180425,0,1,-8873.42,870.253,105.327,2.82743,0,0,0.987688,0.156436,120,120,255,1),
(151493,180425,0,1,-8979.71,866.731,123.236,2.72271,0,0,0.978148,0.207912,120,120,255,1),
(151494,180425,0,1,-8983.21,885.983,119.209,4.10153,0,0,-0.887011,0.461749,120,120,255,1),
(151495,180425,0,1,-8981.21,863.953,123.912,2.75761,0,0,0.981627,0.190812,120,120,255,1),
(151496,180425,0,1,-8978.35,873.635,121.763,3.31614,0,0,-0.996194,0.087165,120,120,255,1),
(151497,180425,0,1,-8980.88,883.177,119.837,3.64774,0,0,-0.968147,0.250381,120,120,255,1),
(151498,180425,0,1,-8979.52,879.936,120.498,3.50812,0,0,-0.983254,0.182238,120,120,255,1),
(151499,180425,0,1,-8978.56,870.052,122.474,3.31614,0,0,-0.996194,0.087165,120,120,255,1),
(151500,180425,0,1,-8978.34,876.774,121.117,3.50812,0,0,-0.983254,0.182238,120,120,255,1),
(151501,180425,0,1,-8984.22,876.323,120.698,0.471238,0,0,0.233445,0.97237,120,120,255,1),
(151502,180425,0,1,-8985.01,867.156,123.509,5.86431,0,0,-0.207911,0.978148,120,120,255,1),
(151503,180425,0,1,-8985.38,879.134,119.866,0.471238,0,0,0.233445,0.97237,120,120,255,1),
(151504,180425,0,1,-8983.79,869.977,122.535,6.10865,0,0,-0.0871553,0.996195,120,120,255,1),
(151505,180425,0,1,-8983.59,873.229,121.6,0.0523589,0,0,0.0261765,0.999657,120,120,255,1),
(151506,180425,0,1,-8985.61,888.333,118.666,4.03171,0,0,-0.902585,0.430512,120,120,255,1),
(151507,180425,0,1,-8983.61,861.417,124.733,2.40855,0,0,0.93358,0.358368,120,120,255,1),
(151508,180425,0,1,-8988.04,890.675,118.096,4.18879,0,0,-0.866025,0.500001,120,120,255,1),
(151509,180425,0,1,-8989.08,858.503,126.249,2.14675,0,0,0.878817,0.47716,120,120,255,1),
(151510,180425,0,1,-8986.29,859.326,125.512,2.30383,0,0,0.913545,0.406738,120,120,255,1),
(151511,180425,0,1,-8987.4,881.594,119.098,0.750491,0,0,0.366501,0.930418,120,120,255,1),
(151512,180425,0,1,-8986.57,864.846,124.399,5.72468,0,0,-0.275637,0.961262,120,120,255,1),
(151513,180425,0,1,-8989.55,883.823,118.376,0.890117,0,0,0.430511,0.902586,120,120,255,1),
(151514,180425,0,1,-8988.76,863.155,125.339,5.49779,0,0,-0.382683,0.92388,120,120,255,1),
(151515,180425,0,1,-8991.92,857.84,126.993,1.97222,0,0,0.833885,0.551938,120,120,255,1),
(151516,180425,0,1,-8994.23,861.99,127.585,4.72984,0,0,-0.700909,0.713251,120,120,255,1),
(151517,180425,0,1,-8881.34,805.253,97.4354,2.86234,0,0,0.990268,0.139175,120,120,255,1),
(151518,180425,0,1,-8994.33,892.785,117.091,4.55531,0,0,-0.760406,0.649449,120,120,255,1),
(151519,180425,0,1,-8991.65,862.101,126.476,5.07891,0,0,-0.566406,0.824126,120,120,255,1),
(151520,180425,0,1,-8880.26,809.938,97.4384,2.93214,0,0,0.994521,0.104536,120,120,255,1),
(151521,180425,0,1,-8991.18,891.757,117.588,4.45059,0,0,-0.793353,0.608762,120,120,255,1),
(151522,180425,0,1,-8992.49,885.49,117.614,1.20428,0,0,0.566406,0.824126,120,120,255,1),
(151523,180425,0,1,-8996.16,886.781,116.778,1.23918,0,0,0.580703,0.814116,120,120,255,1),
(151524,180425,0,1,-8996.33,862.616,128.676,4.13643,0,0,-0.878817,0.47716,120,120,255,1),
(151525,180425,0,1,-8998.33,859.462,128.9,1.18682,0,0,0.559193,0.829038,120,120,255,1),
(151526,180425,0,1,-9000.98,861.281,129.741,0.767944,0,0,0.374606,0.927184,120,120,255,1),
(151527,180425,0,1,-8998.67,863.887,129.591,4.29351,0,0,-0.83867,0.54464,120,120,255,1),
(151528,180425,0,1,-8997.72,893.898,116.53,4.66003,0,0,-0.725374,0.688355,120,120,255,1),
(151529,180425,0,1,-8995.19,858.299,127.919,1.53589,0,0,0.694658,0.71934,120,120,255,1),
(151530,180425,0,1,-8989.43,845.967,29.6207,1.91986,0,0,0.819152,0.573577,120,120,255,1),
(151531,180425,0,1,-9000.26,887.212,115.879,1.95477,0,0,0.829038,0.559193,120,120,255,1),
(151532,180425,0,1,-9011.99,861.462,108.725,3.80482,0,0,-0.945518,0.325568,120,120,255,1),
(151533,180425,0,1,-9007.7,856.967,106.616,3.80482,0,0,-0.945518,0.325568,120,120,255,1),
(151534,180425,0,1,-9009.98,859.328,107.737,3.80482,0,0,-0.945518,0.325568,120,120,255,1),
(151535,180425,0,1,-8979.84,767.688,98.3404,0.977383,0,0,0.469471,0.882948,120,120,255,1),
(151536,180425,0,1,-8975.95,765.609,98.3432,1.15192,0,0,0.544639,0.838671,120,120,255,1),
(151537,180425,0,1,-9013.77,850.898,106.912,0.715585,0,0,0.350207,0.936672,120,120,255,1),
(151538,180425,0,1,-9016.27,853.434,107.792,0.610863,0,0,0.300705,0.953717,120,120,255,1),
(151539,180425,0,1,-8414.29,538.003,96.223,1.58825,0,0,0.71325,0.70091,120,120,255,1),
(151540,180425,0,1,-8412.86,536.726,103.954,5.60251,0,0,-0.333807,0.942641,120,120,255,1),
(151541,180425,0,1,-8411.24,538.063,103.953,5.28835,0,0,-0.477159,0.878817,120,120,255,1),
(151542,180425,0,1,-8411.24,544.979,96.6014,2.63544,0,0,0.968147,0.250381,120,120,255,1),
-- (151543,180425,0,1,-8326.63,585.719,100.793,1.11701,0,0,0.529919,0.848048,120,120,255,1),
(151544,180425,0,1,-8420.89,560.224,95.6497,2.25147,0,0,0.902585,0.430512,120,120,255,1),
(151545,180425,0,1,-8422.31,559.083,95.6497,2.33874,0,0,0.920505,0.390732,120,120,255,1),
(151546,180425,0,1,-8419.46,561.344,95.6497,1.98967,0,0,0.83867,0.54464,120,120,255,1),
(151547,180425,0,1,-8476.39,553.281,99.827,2.40855,0,0,0.93358,0.358368,120,120,255,1),
(151548,180425,0,1,-8473.5,557.175,99.8163,2.3911,0,0,0.930417,0.366502,120,120,255,1),
(151549,180425,0,1,-8469.81,600.762,97.4738,0.855211,0,0,0.414693,0.909961,120,120,255,1),
(151550,180425,0,1,-8467.37,597.606,97.4546,0.767944,0,0,0.374606,0.927184,120,120,255,1),
(151551,180425,0,1,-8474.84,555.352,99.8169,2.35619,0,0,0.923879,0.382686,120,120,255,1),
(151552,180425,0,1,-8472,559.264,99.8186,2.18166,0,0,0.887011,0.461749,120,120,255,1),
(151553,180425,0,1,-8474.76,606.911,97.4588,0.663223,0,0,0.325567,0.945519,120,120,255,1),
(151554,180425,0,1,-8498.91,568.502,101.094,5.02655,0,0,-0.587785,0.809017,120,120,255,1),
(151555,180425,0,1,-8480.57,632.538,95.6512,0.349065,0,0,0.173648,0.984808,120,120,255,1),
(151556,180425,0,1,-8418.66,679.707,96.519,5.32326,0,0,-0.461748,0.887011,120,120,255,1),
(151557,180425,0,1,-8415.72,681.995,96.519,5.53269,0,0,-0.366501,0.930418,120,120,255,1),
(151558,180425,0,1,-8417.22,680.852,96.519,5.25344,0,0,-0.492423,0.870356,120,120,255,1),
(151559,180426,0,1,-9091.85,417.109,111.114,0.645772,0,0,0.317305,0.948324,120,120,255,1),
(151560,180426,0,1,-9091.91,412.734,111.284,3.52557,0,0,-0.981627,0.190812,120,120,255,1),
(151561,180426,0,1,-9099.59,407.727,111.552,0,0,0,0,1,120,120,255,1),
(151562,180426,0,1,-9106.64,399.464,111.614,3.52557,0,0,-0.981627,0.190812,120,120,255,1),
(151563,180426,0,1,-9026.14,380.115,92.5647,3.52557,0,0,-0.981627,0.190812,120,120,255,1),
(151564,180426,0,1,-8383,626.411,108.416,3.52557,0,0,-0.981627,0.190812,120,120,255,1),
(151565,180426,0,1,-8382.87,626.747,108.33,2.77507,0,0,0.983254,0.182238,120,120,255,1),
(151566,180426,0,1,-8383.97,628.752,112.215,4.04917,0,0,-0.898793,0.438373,120,120,255,1),
(151567,180426,0,1,-8386.31,630.214,108.27,0.663223,0,0,0.325567,0.945519,120,120,255,1),
(151568,180426,0,1,-8355.03,631.267,108.256,3.82227,0,0,-0.942641,0.333808,120,120,255,1),
(151569,180426,0,1,-8350.68,630.422,107.631,2.04204,0,0,0.85264,0.522499,120,120,255,1),
(151570,180426,0,1,-8349.74,636.309,107.613,2.67035,0,0,0.972369,0.233448,120,120,255,1),
(151571,180426,0,1,-8350.24,633.668,107.613,1.27409,0,0,0.594822,0.803857,120,120,255,1),
(151572,180426,0,1,-8351.99,634.813,107.598,3.63029,0,0,-0.970295,0.241925,120,120,255,1),
(151573,180426,0,1,-8723.34,442.208,111.581,3.47321,0,0,-0.986285,0.16505,120,120,255,1),
(151574,180426,0,1,-8724.01,439.524,110.257,5.39307,0,0,-0.430511,0.902586,120,120,255,1),
(151575,180426,0,1,-8724.72,440.212,110.266,1.0821,0,0,0.515038,0.857168,120,120,255,1),
(151576,180426,0,1,-8711.59,409.335,107.174,2.26893,0,0,0.906307,0.422619,120,120,255,1),
(151577,180426,0,1,-8707.06,407.576,108.43,5.09636,0,0,-0.559193,0.829038,120,120,255,1),
(151578,180426,0,1,-8707.97,409.465,110.32,4.67748,0,0,-0.719339,0.694659,120,120,255,1),
(151579,180426,0,1,-8725.67,407.604,107.988,1.71042,0,0,0.754709,0.656059,120,120,255,1),
(151580,180426,0,1,-8727.73,407.028,111.263,3.87463,0,0,-0.93358,0.358368,120,120,255,1),
(151581,180426,0,1,-8726.22,405.179,110.444,3.52557,0,0,-0.981627,0.190812,120,120,255,1),
(151582,180426,1,1,1601.53,-4393.3,18.2505,0,0,0,0,1,120,120,255,1),
(151583,180426,1,1,1558.93,-4378.96,16.8265,0,0,0,0,1,120,120,255,1),
(151584,180426,1,1,1531.89,-4404.45,18.6164,0,0,0,0,1,120,120,255,1),
(151585,180426,1,1,1505.09,-4412.19,23.0298,0,0,0,0,1,120,120,255,1),
(151586,180426,1,1,2003.84,-4716.61,29.5534,0,0,0,0,1,120,120,255,1),
(151587,180426,1,1,1936.41,-4694.87,35.8143,0,0,0,0,1,120,120,255,1),
(151588,180426,1,1,1940.03,-4686.6,34.8031,0,0,0,0,1,120,120,255,1),
(151589,180426,1,1,1929.08,-4211.92,36.9197,0,0,0,0,1,120,120,255,1),
(151590,180426,1,1,1923.92,-4204.45,37.0741,0,0,0,0,1,120,120,255,1),
(151591,180426,1,1,1673.42,-4104.76,49.4415,0,0,0,0,1,120,120,255,1),
(151592,180431,0,1,-8910.46,792.094,102.84,4.17134,0,0,-0.870356,0.492424,120,120,255,1),
(151593,180431,0,1,-8947.04,543.667,117.999,5.79449+0.5,0,0,-0.241921,0.970296,120,120,255,1), -- z +0.5
(151594,180431,0,1,-8931.08,523.229,118.077,5.63741+0.5,0,0,-0.317305,0.948324,120,120,255,1), -- z +0.5
(151595,180431,0,1,-8766.2,386.24,114.992,2.49582,0,0,0.948323,0.317306,120,120,255,1),
(151596,180431,0,1,-8733.83,383.446,114.992,4.10153,0,0,-0.887011,0.461749,120,120,255,1),
(151597,180415,0,1,-8883.87,641.387,105.035,4.03171,0,0,-0.902585,0.430512,120,120,255,1), -- CandleBlack01
(151598,180415,0,1,-8885.41,644.226,105.085,1.65806,0,0,0.737277,0.675591,120,120,255,1), -- CandleBlack01
(151599,180415,0,1,-8884.77,643.087,104.894,1.97222,0,0,0.833885,0.551938,120,120,255,1), -- CandleBlack01
(151600,180415,0,1,-8885.75,644.736,104.855,3.59538,0,0,-0.97437,0.224951,120,120,255,1), -- CandleBlack01
(151601,180415,0,1,-8884.24,641.969,105.008,1.37881,0,0,0.636078,0.771625,120,120,255,1), -- CandleBlack01
(151602,180415,0,1,-8885.03,643.503,104.805,3.10665,0,0,0.999847,0.0174693,120,120,255,1), -- CandleBlack01
(151603,180415,0,1,-8884.52,642.585,104.953,5.93412,0,0,-0.173648,0.984808,120,120,255,1); -- CandleBlack01
DELETE FROM game_event_gameobject WHERE guid BETWEEN 150700 AND 151603;
INSERT INTO game_event_gameobject (guid, `event`) SELECT guid, 12 FROM gameobject WHERE guid BETWEEN 150700 AND 151603;

-- adjust some existing objects which seem a bit out of place
UPDATE gameobject SET position_z=44.715 WHERE guid=114061;
UPDATE gameobject SET position_z=44.715 WHERE guid=114065;
UPDATE gameobject SET position_z=35.182 WHERE guid=114067;
UPDATE gameobject SET position_z=34.875 WHERE guid=114059;
UPDATE gameobject SET position_z=42.248 WHERE guid=114078;
UPDATE gameobject SET position_z=42.43 WHERE guid=114077;
UPDATE gameobject SET position_z=40.085 WHERE guid=114058;
