/*
----------------------------------------------------------
Early/Beta Patch 2.4.0 Sunwell Plateau "Attunement" System 
----------------------------------------------------------
Apparently PTR exclusive depending on which region you're looking at. 
All content - quests/items/gossips (along with corresponding worldstates/conditions) related to the gate objects within Sunwell Plateau can be created in 2.4.3 client.
Adding it here so it may be optionally used depending on server admin preference.

3 quests starting from Archmage Ne'thul 25169, 3 gate gameobjects
11551 Agamath, the First Gate -> 187766 Agamath, The First Gate
11552 Rohendor, the Second Gate -> 187764 Rohendor, The Second Gate
11553 Archonisus, the Final Gate -> 187765 Archonisus, The Third Gate
cmangos already has 6 gate spawns - 2 of each type (one inside of Sunwell, and another inside of Magister's Terrace presumably for show)
currently they're all open state, but they'll be updated in instance files to start closed and instead despawn based on game events

From wowwiki/wowhead...
------------
34544 Essence of the Immortals
Essence of the Immortals was for some time on the PTR for Patch 2.4 a drop from 25-person raid bosses in the Sunwell Plateau.
Also, end-game bosses such as Lady Vashj, Prince Kael'thas, Archimonde and Illidan were dropping one essence per kill.
Blizzard replaced the Immortals-system by having the three gates open automatically over time at equal intervals on all servers.

Sunwell Plateau "Attunement":
The instance was open to players right from the start of patch 2.4, but the last 3 bosses were only available as each gate - which blocked the next boss encounter - opened over a set period of time on all servers.
(Although this happened on maintenance day, so the US had an apparent one day advantage over the EU servers)[1] (cites bluepost)

The first gate was opened on 8 April 2008 in the US, two weeks after the patch went live. The second gate opened after weekly maintenance on April 29, 2008. The third and final gate was opened on May 20, 2008 on US realms.
The difficulty of the instance was set at the first 3 bosses being on par with Tier 6 encounters, and then the last three and increasing from each.

So far, it seems that the following is true on PTR:
1. This item drops off the first, second and third bosses in the Sunwell 25-man instance. Guaranteed drop on every kill.
2. Each time that one of these items is handed in, it increases the progress for the entire server towards opening the gate behind the 3rd boss.
3. It seems that it will require a total of 80 hand-ins to open the gate. This may be a low number for the PTR and may increase for live servers. No way to know right now.
So, the more guilds raiding and killing the bosses, the faster everyone gets through the gate and to 4th boss.

Some more specific notes found on the Essence turn-ins:
At last check on the PTR, Ne'thul says that the first barrier, Agamath, is down to 46%.
Right now, estimates are that each Essence of the Immortals will bring the barrier down by 1.25%, which means that each server will need 80 total Essences - that is, 80 kills of the first three bosses 
------------

Here's the original bluepost/thread explaining why they decided to change course on this:
http://urbad.net/blue/us/4976251142-Essence_of_Immortal_plea_for_help
OP:
"
Please make Essence of Immortal requirements based on server progression. It would make it extremely more fair to guilds that are dominating their server such as ours.
Were currently the only Alliance guild in BT/Hyjal, and the best progressed horde is like 3/9 4/5 and not moving fast, the other horde guild (totalling 3 in BT/Hyjal) is 4/5 0/9. That gives you some kind of idea of how bad this server really is.
Gates of AQ at least gave a chance to low pop/bad servers, because if they really wanted to 1 guild COULD do the ENTIRE war effort. We cant do that because of weekly lock outs on bosses that drop Essence of Immortals.
So on the day 2.4 opens my guild is able to farm 7 EoI a week.Assuming the 2 horde guilds in BT/Hyjal farm vashj/kael every week, + the 2 alliance guilds killing vashj, who may have Kael down by then, thats a total of 15 EoI a week for the entire server, best case scenario.

Us: Illidan, Arch, Vashj, Kael, Kalecgos, Bruttalus, Felmyst = 7
Horde guild A: Vashj + Kael = 2
Horde guild B: Vashj + Kael = 2
Alliance guild A: Vashj + Kael = 2
Alliance guild B: Vashk + Kael = 2
= 15.
Maybe another guild will surprise us and farm Vashj by then, so even call it 16 a week.

Thats exactly 5 weeks, of every possible EoI being farmed, before we unlock the 4th boss.
At that rate its going to take us over a month to open the 1st gate, not to mention the other 2. We'll be lucky if Kil'Jaeden is available to us before WotLK comes out.

Meanwhile we'll be grinding the same bosses we've been killing for months on end, watching all the high pop servers farming Kil'Jaeden, wondering why we didn't have a fair shot to make our name known across the world.
From what every raider experienced in the months prior to The Burning Crusade came out, it became increasingly hard to fill a raid, simply because of the fact everyone knew that in a few months all that gear and work would be for nothing.
Once again we have an expansion looming over us that is threatening the same events. This is just one more reason that low pop/under progressed servers will not be able to see Kil'Jaeden.

Blizzard claimed they were upset so few people got to see the majority of Naxx pre TBC, and yet this is turning out to be the same scenario all over again. The only way this is not true is if WotLK is still the better part of a year past 2.4's release, in which case you will simply have all the raiding guilds on the high pop servers bored for 6+ months so as to insure the low pop servers see all the content.
Either way I really can't see a benefit for anyone, Blizzard or player base, to not stagger the amount of EoIs needed to open these gates.
"
Blizz Response:
"
Apologies that this update is coming so late but we pulled the Essence of Immortal quest chain about 2 weeks ago. That's why you haven't seen it on the Public Test Realm. The 3 gates will open automatically over time at equal intervals on all servers.
Regarding the taking back of the town on the Isle, however, that will still be dependent on completion of daily quests. Servers can race to see who can open their quest hub the fastest. But access to raid bosses has been made equal.
We really like the concept of cross-server competition. But the concept of the gates being tied to specific boss kills was not playing out as we had hoped. We plan to do future things that involve servers competing with one another through major events.
"
------------------------
Conditions / Game Events
------------------------
10302 Event ID 302 Active (Suns Reach Reclamation Phase 2 Only)
10304 Event ID 304 Active (Suns Reach Reclamation Phase No Portal)
10306 Event ID 306 Active (Suns Reach Reclamation Phase 3 Only)
10308 Event ID 308 Active (Suns Reach Reclamation Phase No Anvil)
10313 Event ID 313 Active (Suns Reach Reclamation Phase No Alchemy Lab)
10316 Event ID 316 Active (SWP - All Gates Closed)
10317 Event ID 317 Active (SWP - First Gate Open)
10318 Event ID 318 Active (SWP - Second Gate Open)
10319 Event ID 319 Active (SWP - All Gates Open)
10333 NOT Event ID 319 Active (SWP - All Gates Open)
*/
DELETE FROM conditions WHERE condition_entry=10333;
INSERT INTO conditions (condition_entry, `type`, value1, value2, value3, value4, flags, comments) VALUES
(10333, -3, 10319, 0, 0, 0, 0, 'NOT Event ID 319 Active');

-- source of base template data: trinity
DELETE FROM quest_template WHERE entry IN (11551,11552,11553);
INSERT INTO quest_template (entry, ZoneOrSort, MinLevel, QuestLevel, `Type`, RequiredRaces, RequiredCondition, SuggestedPlayers, QuestFlags, SpecialFlags, LimitTime, SrcItemId, SrcItemCount, Title, Details, Objectives, OfferRewardText, RequestItemsText, EndText, ObjectiveText1, ObjectiveText2, ObjectiveText3, ObjectiveText4, ReqItemId1, ReqItemId2, ReqItemId3, ReqItemId4, ReqItemCount1, ReqItemCount2, ReqItemCount3, ReqItemCount4, ReqCreatureOrGOId1, ReqCreatureOrGOId2, ReqCreatureOrGOId3, ReqCreatureOrGOId4, ReqCreatureOrGOCount1, ReqCreatureOrGOCount2, ReqCreatureOrGOCount3, ReqCreatureOrGOCount4, RewChoiceItemId1, RewChoiceItemId2, RewChoiceItemId3, RewChoiceItemId4, RewChoiceItemId5, RewChoiceItemId6, RewChoiceItemCount1, RewChoiceItemCount2, RewChoiceItemCount3, RewChoiceItemCount4, RewChoiceItemCount5, RewChoiceItemCount6, RewItemId1, RewItemId2, RewItemId3, RewItemId4, RewItemCount1, RewItemCount2, RewItemCount3, RewItemCount4, RewRepFaction1, RewRepFaction2, RewRepFaction3, RewRepFaction4, RewRepFaction5, RewRepValue1, RewRepValue2, RewRepValue3, RewRepValue4, RewRepValue5, RewHonorableKills, RewOrReqMoney, RewMoneyMaxLevel, RewSpell, RewSpellCast, PointMapId, PointX, PointY, PointOpt, RequiredClasses, prevquestId, nextquestid, exclusivegroup, rewmailtemplateid, RewMailDelaySecs, RequiredSkill, RequiredSkillValue, RequiredMinRepFaction, RequiredMinRepValue, RequiredMaxRepFaction, RequiredMaxRepValue) VALUES
(11551, 4080, 70, 70, 0, 0, 10316, 0, 200, 1, 0, 0, 0, 'Agamath, the First Gate', '', '', '', '', '', '', '', '', '', 34544, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 34548, 0, 0, 0, 1, 0, 0, 0, 1077, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 780, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11552, 4080, 70, 70, 0, 0, 10317, 0, 200, 1, 0, 0, 0, 'Rohendor, the Second Gate', '', '', '', '', '', '', '', '', '', 34544, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 34548, 0, 0, 0, 1, 0, 0, 0, 1077, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 780, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11553, 4080, 70, 70, 0, 0, 10318, 0, 200, 1, 0, 0, 0, 'Archonisus, the Final Gate', '', '', '', '', '', '', '', '', '', 34544, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 34548, 0, 0, 0, 1, 0, 0, 0, 1077, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 780, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
DELETE FROM item_template WHERE entry IN (34544,34548);
INSERT INTO item_template (entry, class, subclass, `name`, displayid, Quality, Flags, BuyCount, BuyPrice, SellPrice, InventoryType, AllowableClass, AllowableRace, ItemLevel, RequiredLevel, RequiredSkill, RequiredSkillRank, requiredspell, requiredhonorrank, RequiredCityRank, RequiredReputationFaction, RequiredReputationRank, maxcount, stackable, ContainerSlots, stat_type1, stat_value1, stat_type2, stat_value2, stat_type3, stat_value3, stat_type4, stat_value4, stat_type5, stat_value5, stat_type6, stat_value6, stat_type7, stat_value7, stat_type8, stat_value8, stat_type9, stat_value9, stat_type10, stat_value10, dmg_min1, dmg_max1, dmg_type1, dmg_min2, dmg_max2, dmg_type2, armor, holy_res, fire_res, nature_res, frost_res, shadow_res, arcane_res, delay, ammo_type, RangedModRange, spellid_1, spelltrigger_1, spellcharges_1, spellppmRate_1, spellcooldown_1, spellcategory_1, spellcategorycooldown_1, spellid_2, spelltrigger_2, spellcharges_2, spellppmRate_2, spellcooldown_2, spellcategory_2, spellcategorycooldown_2, spellid_3, spelltrigger_3, spellcharges_3, spellppmRate_3, spellcooldown_3, spellcategory_3, spellcategorycooldown_3, spellid_4, spelltrigger_4, spellcharges_4, spellppmRate_4, spellcooldown_4, spellcategory_4, spellcategorycooldown_4, spellid_5, spelltrigger_5, spellcharges_5, spellppmRate_5, spellcooldown_5, spellcategory_5, spellcategorycooldown_5, bonding, `description`, PageText, LanguageID, PageMaterial, startquest, lockid, Material, sheath, RandomProperty, RandomSuffix, `block`, itemset, MaxDurability, area, Map, BagFamily, TotemCategory, socketColor_1, socketContent_1, socketColor_2, socketContent_2, socketColor_3, socketContent_3, socketBonus, GemProperties, RequiredDisenchantSkill, ArmorDamageModifier, ScriptName, DisenchantID, FoodType, minMoneyLoot, maxMoneyLoot, Duration) VALUES
(34544, 15, 0, 'Essence of the Immortals', 47899, 4, 0, 1, 0, 0, 0, -1, -1, 70, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 1, 'Chaotic energy pulses through this object.', 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, '', 0, 0, 0, 0, 0),
(34548, 15, 0, 'Cache of the Shattered Sun', 12644, 4, 0, 1, 0, 0, 0, -1, -1, 70, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, '', 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, '', 0, 0, 0, 0, 0);

-- these texts are from PTR screenshots and various wowhead clones
UPDATE quest_template SET Details="Archmage Ne'thul asked you to bring the Essence of the Immortals that will be used to deactivate Agamath, The First Gate",
Objectives="The first barrier lies just beyond the path of destruction, where the fiendish Brutallus stands. The gateway, Agamath, prevents passage beyond the Dead Scar.

<Ne'thul points to the magical replica of the Sunwell.>

Bring to me the essence of immortals, found only on the most powerful beings of this world! With the essence in hand, my mages will be able to dismantle Agamath, ultimately collapsing the gateway and unlocking the way further into the sunwell.",
RequestItemsText="Bring to me the essence of immortals, found only on the most powerful beings of this world! With the essence in hand, my mages will be able to dismantle Agamath, ultimately collapsing the gateway and unlocking the way further into the sunwell.",
OfferRewardText="The destruction of Agamath commences. Soon, the barrier will crumble." WHERE entry=11551;

UPDATE quest_template SET Details="Archmage Ne'thul asked you to bring the Essence of the Immortals that will be used to break Rohendor, the Second Gate",
Objectives="Rohendor, the Second Gate, will let you go no further than the footsteps beyond the lair of the eredar twins, Sacrolash and Alythess. M'uru stands guard behind it, a twisted reflection of its former self.

Bring to me the essence of immortals, found only on the most powerful beings of this world! Rohendor cannot withstand the combined force of our mages!",
RequestItemsText="Bring to me the essence of immortals, found only on the most powerful beings of this world! Rohendor cannot withstand the combined force of our mages!",
OfferRewardText="Good, our mages started to weaken Rohendor. The barrier must fall, sooner or later." WHERE entry=11552;

UPDATE quest_template SET Details="Archmage Ne'thul asked you to bring the Essence of the Immortals that will be used to eventually dismantle Archonisus, the Final Gate",
Objectives="The final gate, Archonisus, prevents passage to the Sunwell's inner chamber. The barrier is proving to be the most fortified of the lot! Difficult to crack, but not impossible...Alas, I would expect nothing less from Kil'jaeden!

Bring to me the essence of immortals — found only on the most powerful beings of this world — and Archonisus is sure to crumble!",
RequestItemsText="Bring to me the essence of immortals — found only on the most powerful beings of this world — and Archonisus is sure to crumble!",
OfferRewardText="Great work.
With more essences in hand, we can try to break down the last obstacle on our way to The Deceiver. Even this barrier will fall when enough power is gathered." WHERE entry=11553;

/*
Add estimated loot for quest reward item
https://www.wowhead.com/item=34548/cache-of-the-shattered-sun
Example loot - original source: https://static.mmo-champion.com/mmoc/images/news/2008/february/essence_large.jpg
32249 Seaspray Emerald x1
32228 Empyrean Sapphire x1
35212 Pattern: Leather Gauntlets of the Sun x1
32428 Heart of Darkness x4
22854 Flask of Relentless Assault x1
22861 Flask of Blinding Light x2
22853 Flask of Mighty Restoration x2
22851 Flask of Fortification x1
(2 epic gems, 1 epic pattern, 6 flasks - 4 unique types, 4 hearts)

Not contained in the screenshot above (possibly due to RNG?), but found evidence elsewhere of a few additonal drops: https://tbcdb.com/?item=34548
22521/22522 Superior Mana/Wizard Oil, 22866 Flask of Pure Death, and the rest of the new plans/patterns/schematics/designs

Pre-existing reference loot templates:
36201 Sunwell Plateau (Trash Loot) - Profession (-Design,-Pattern,-Plans,Study) (1x - ~2.4% * 4 types = 9.6%)
12005 Epic Gem - TBC
New reference loot templates added:
50000 Cache of the Shattered Sun - Red/Blue/Yellow TBC Epic Gems (1x - 100%)
50001 Cache of the Shattered Sun - Purple/Orangle/Green TBC Epic Gems (1x - 100%)
50002 Cache of the Shattered Sun - Flasks and Mana/Wizard Oil (4x - 100%)
*/
DELETE FROM reference_loot_template_names WHERE entry IN (50000,50001,50002);
INSERT INTO reference_loot_template_names (entry, `name`) VALUES
(50000, 'Cache of the Shattered Sun - Red/Blue/Yellow TBC Epic Gems'), 
(50001, 'Cache of the Shattered Sun - Purple/Orangle/Green TBC Epic Gems'),
(50002, 'Cache of the Shattered Sun - Flasks and Mana/Wizard Oil');
DELETE FROM reference_loot_template WHERE entry IN (50000,50001,50002);
INSERT INTO reference_loot_template (entry, item, ChanceOrQuestChance, groupid, mincountOrRef, maxcount, condition_id, comments) VALUES
(50000, 32227, 0, 1, 1, 2, 0, 'Crimson Spinel'),
(50000, 32228, 0, 1, 1, 2, 0, 'Empyrean Sapphire'),
(50000, 32229, 0, 1, 1, 2, 0, 'Lionseye'),

(50001, 32230, 0, 1, 1, 2, 0, 'Shadowsong Amethyst'),
(50001, 32231, 0, 1, 1, 2, 0, 'Pyrestone'),
(50001, 32249, 0, 1, 1, 2, 0, 'Seaspray Emerald'),

(50002, 22854, 0, 1, 1, 3, 0, 'Flask of Relentless Assault'),
(50002, 22861, 0, 1, 1, 3, 0, 'Flask of Blinding Light'),
(50002, 22853, 0, 1, 1, 3, 0, 'Flask of Mighty Restoration'),
(50002, 22851, 0, 1, 1, 3, 0, 'Flask of Fortification'),
(50002, 22866, 0, 1, 1, 3, 0, 'Flask of Pure Death'),
(50002, 22521, 0, 1, 1, 3, 0, 'Superior Mana Oil'),
(50002, 22522, 0, 1, 1, 3, 0, 'Superior Wizard Oil');

DELETE FROM item_loot_template WHERE entry=34548;
INSERT INTO item_loot_template (entry, item, ChanceOrQuestChance, groupid, mincountOrRef, maxcount, condition_id, comments) VALUES
(34548, 36201, 9.6, 0, -36201, 1, 0, 'Sunwell Plateau (Trash Loot) - Profession (-Design,-Pattern,-Plans,Study)'),
(34548, 50000, 100, 1, -50000, 1, 0, 'Cache of the Shattered Sun - Red/Blue/Yellow TBC Epic Gems'),
(34548, 50001, 100, 2, -50001, 1, 0, 'Cache of the Shattered Sun - Purple/Orangle/Green TBC Epic Gems'),
(34548, 50002, 100, 3, -50002, 4, 0, 'Cache of the Shattered Sun - Flasks and Mana/Wizard Oil'), -- uses reference template repetition factor of 4 (maxcount)
(34548, 0, 100, 4, 1, 4, 0, 'Heart of Darkness');

-- Add 34544 Essence of the Immortals drop to each T5/T6 25 man raid end-boss loot table, in addition to every boss in SWP except KJ
DELETE FROM creature_loot_template WHERE entry IN (17968,19622,21212,22917) AND item=34544; -- The Eye, Serpentshrine Cavern, Battle for Mount Hyjal, Black Temple
DELETE FROM creature_loot_template WHERE entry IN (24850,24882,24892,25038,25165,25166,25741,25840) AND item=34544; -- Sunwell Plateau (All except Kil'jaeden)
INSERT INTO creature_loot_template (entry, item, ChanceOrQuestChance, groupid, mincountOrRef, maxcount, condition_id, comments) VALUES
(17968, 34544, -100, 0, 1, 1, 10333, 'Essence of the Immortals'), -- Archimonde
(19622, 34544, -100, 0, 1, 1, 10333, 'Essence of the Immortals'), -- Kael'thas Sunstrider
(21212, 34544, -100, 0, 1, 1, 10333, 'Essence of the Immortals'), -- Lady Vashj
(22917, 34544, -100, 0, 1, 1, 10333, 'Essence of the Immortals'), -- Illidan Stormrage

(24850, 34544, -100, 0, 1, 1, 10333, 'Essence of the Immortals'), -- Kalecgos
(24882, 34544, -100, 0, 1, 1, 10333, 'Essence of the Immortals'), -- Brutallus
(24892, 34544, -100, 0, 1, 1, 10333, 'Essence of the Immortals'), -- Sathrovarr the Corruptor
(25038, 34544, -100, 0, 1, 1, 10333, 'Essence of the Immortals'), -- Felmyst
(25165, 34544, -100, 0, 1, 1, 10333, 'Essence of the Immortals'), -- Lady Sacrolash
(25166, 34544, -100, 0, 1, 1, 10333, 'Essence of the Immortals'), -- Grand Warlock Alythess
(25741, 34544, -100, 0, 1, 1, 10333, 'Essence of the Immortals'), -- M'uru
(25840, 34544, -100, 0, 1, 1, 10333, 'Essence of the Immortals'); -- Entropius

-- npc 25169 Archmage Ne'thul is already involved with quest 11550 "Enter, the Deceiver..."
DELETE FROM creature_involvedrelation WHERE id=25169 AND quest IN (11551,11552,11553);
INSERT INTO creature_involvedrelation (id, quest) VALUES
(25169, 11551),
(25169, 11552),
(25169, 11553);
DELETE FROM creature_questrelation WHERE id=25169 AND quest IN (11551,11552,11553);
INSERT INTO creature_questrelation (id, quest) VALUES
(25169, 11551),
(25169, 11552),
(25169, 11553);

/*
-------------------
Exarch Nasuun 24932 (Shattrath City)
-------------------
gossip_menu 9046
two npc texts - 12226 (Event ID 304 Active), 12227 */
DELETE FROM npc_text WHERE ID=12227;
DELETE FROM npc_text_broadcast_text WHERE ID=12227;
INSERT INTO npc_text_broadcast_text (ID, Prob0, BroadcastTextId0) VALUES
(12227, 1, 23990);
/*
23989 "If we are to be successful in the creation of a portal to the Isle of Quel'Danas, and the Sunwell which rests upon it, we must acquire an energy source powerful enough to ignite the portal.$B$BWe are $3269w percent completed with our efforts. Will you assist us, $c?"
23990 "This portal is not like the others that lead back to Azeroth. To maintain it, we must acquire more mana cells.$B$BIt is either that or risk losing our access to the Isle of Quel'Danas and the Sunwell."

there are also 4 other pre-existing correctly linked options for this menu based on Sun's Reach Reclaimation ...
24231 "What do you know about the magical gates at the Sunwell Plateau being brought down?" -> action menu id 9307

24232 "We are trying to bring Agamath, the First Gate down. Please, $c, go to the Isle of Quel'Danas and help in any way that you can!"
24233 "Agamath, the First Gate is breached and two of Kil'jaeden's lieutenants, Lady Sacrolash and Grand Warlock Alythess, must be destroyed.$B$BGather your friends, $c, and see to it! Rohendor, the Second Gate is our next target."
24234 "Rohendor, the Second Gate has been brought down, but the last of the Sunwell Plateau's magical barriers, Archonisus, resists us, $n.$B$BMaintain your efforts to assist at the Sunwell in any way that you can."
25671 "All three of the gates at the Sunwell Plateau have been brought down, $n.$B$BYou must marshal your forces and stop Kil'jaeden from entering Azeroth before all is lost!" */
UPDATE gossip_menu_option SET option_broadcast_text=24231 WHERE menu_id=9046 AND id=7 AND action_menu_id=9307;

/*
----------------------
25169 Archmage Ne'thul (Isle of Quel'Danas - Sun's Reach Harbor)
----------------------
24248 "The first gate, Agamath, has been dismantled! The second gate of Rohendor now blocks our passage.$B$BOur mages are $3255w percent through the defenses of the second gate, Rohendor."
24249 "Rohendor has been obliterated.  Only the gateway, Archonisus, remains.$B$BOur mages are $3257w percent through the defenses of the final gate, Archonisus."
24250 "Archonisus is no more. Alas, we are... we are too late...$B$BKil'jaeden is unleashed! The heroes of the world are now our only hope." -- alternate to 24247 when event fully completed?
24247 "Should Kil'jaeden rise up through the Sunwell our world will be thrown into a war the likes of which has not been seen for 10,000 years!" -- default 2.4.3/current retail */
DELETE FROM npc_text WHERE ID IN (12309);
DELETE FROM npc_text_broadcast_text WHERE ID IN (12309);
INSERT INTO npc_text_broadcast_text (ID, Prob0, BroadcastTextId0) VALUES
(12309, 1, 24247);
-- real npc text ids are unknown, so custom IDs are used here (50,000+)
DELETE FROM npc_text WHERE ID IN (50224, 50225, 50226);
DELETE FROM npc_text_broadcast_text WHERE ID IN (50224, 50225, 50226);
INSERT INTO npc_text_broadcast_text (ID, Prob0, BroadcastTextId0) VALUES
(50224, 1, 24248),
(50225, 1, 24249),
(50226, 1, 24250);
DELETE FROM gossip_menu WHERE entry=9105 AND text_id != 12309;
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(9105, 50224, 0, 10317),
(9105, 50225, 0, 10318),
(9105, 50226, 0, 10319);
-- missing text for all gates closed? Agamath/first gate health worldstate ID is missing? possibly should just use 24247?

/*
--------------------
25638 Captain Selana (Sunwell Plateau)
--------------------
??? who do these 3 belong to? also missing one still?
25232 "The Agamath Gate has been breached!"
25233 "The Rohendor Gate has been shattered! Move forward, champions!"
25234 "The Archonisus Gate is no more! The way to the Sunwell is clear!"

25523 "I'm glad you are here, $c. The military situation in the Sunwell Plateau is rather grim." */
DELETE FROM npc_text WHERE ID IN (12596, 12598, 12599, 12600, 12601);
DELETE FROM npc_text_broadcast_text WHERE ID IN (12596, 12598, 12599, 12600, 12601);
INSERT INTO npc_text_broadcast_text (ID, Prob0, BroadcastTextId0) VALUES
(12596, 1, 25523),
(12598, 1, 25525),
(12599, 1, 25527),
(12600, 1, 25529),
(12601, 1, 25531);
UPDATE gossip_menu_option SET option_broadcast_text=25524 WHERE menu_id=9285; -- action menu id 9287
UPDATE gossip_menu_option SET option_broadcast_text=25526 WHERE menu_id=9287; -- action menu id 9288
UPDATE gossip_menu_option SET option_broadcast_text=25528 WHERE menu_id=9288; -- action menu id 9289
UPDATE gossip_menu_option SET option_broadcast_text=25530 WHERE menu_id=9289; -- action menu id 9290
/*
25524 "Give me a situation report, Captain."
25525 "The Shattered Sun Offensive has made great progress in the outer areas of the Isle of Quel'Danas. Kil'jaeden's forces are being pushed back, and in the chaos I was able to lead a small scouting force here inside the Sunwell Plateau. My troops proceeded through Parhelion Plaza, spotted a group of Sunblade blood elves, and we then engaged the enemy. That fight quickly turned into a disaster."
25526 "What went wrong?"
25527 "Kil'jaeden's defenders here on the Sunwell Plateau are much stronger than anything we faced outside on the Island. The Legion have even twisted our Arcane Guardian technology with fel energy to create something much more sinister. Just one of those Sunblade Protectors decimated my troops, and I ordered a swift retreat. I expected my squad to be pushed completely off the plateau, but the enemy surprised me by calling off the pursuit."
25528 "Why did they stop?"
25529 "I don't know, but I'm glad they did. The respite has allowed Anchorite Elbadon to save many of the men and women under my command. I've sent a few of my stealthiest scouts forward, and they've reported back something interesting. Nearly all of the Sunblade Protectors are powered down! Kil'jaeden's forces appear to be conserving their energy, and seem content to merely contain us with one active Protector. If you and your companions want to force your way inside, allow me to suggest a plan of attack."
25530 "Your insight is appreciated."
25531 "Take advantage of their deactivated Sunblade Protectors. If one of their Sunblade Scouts spot you, I'm sure the elf will try to reactivate a nearby Sunblade Protector. Kill him quickly to prevent this. With the blood elves eliminated, as long as you do not trigger the Protector's proximity sensors you should be able to move past them without a fight. That will save you both time and resources."

-----------------------
25632 Vindicator Moorba (Sunwell Plateau)
-----------------------
gossip menu 9286
npc text 12597, 25532 "Captain Selana has instructed me to assist you with your efforts here on the Sunwell Plateau." -- default 2.4.3/current retail */
DELETE FROM npc_text WHERE ID=12597;
DELETE FROM npc_text_broadcast_text WHERE ID=12597;
INSERT INTO npc_text_broadcast_text (ID, Prob0, BroadcastTextId0) VALUES
(12597, 1, 25532);
-- 25533 "What is the current state of the Sunwell's Gates?" -> action menu id 9293
UPDATE gossip_menu_option SET option_broadcast_text=25533 WHERE menu_id=9286;
/* tbc-db already has correct 4 possible responses/conditions in npc_text_broadcast_text for gossip menu 9293 npc texts
25535 "All three barriers are fully operational. Consult with Archmage Ne'thul in Sun's Reach Harbor to aid the effort in unlocking the gates." -- 316 SWP - All Gates Closed
25534 "Agamath, the First Gate has been breached. Two of Kil'jaeden's most powerful lieutenants, Lady Sacrolash and Grand Warlock Alythess, are now vulnerable to attack." -- 317 SWP - First Gate Open
25536 "Agamath, the First Gate and Rohendor, the Second Gate are now destroyed. Only Archonisus, the Third Gate remains." -- 318 SWP - Second Gate Open
25537 "All of the barriers blocking you from reaching the Sunwell have been destroyed. Enter the Sunwell and stop Kil'jaeden from entering this world!" -- 319 SWP - All Gates Open (default 2.4.3/current retail gossip option response) */

