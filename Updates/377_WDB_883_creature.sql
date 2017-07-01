-- Lokhtos Darkbargainer
-- all his quest should be available without any req. reputation
-- items are sold depends of players reputation with them

-- Let's fix his quests and gossip
/*
By nomadicdruid on 2009/06/08 (Patch 3.1.3)
I don't know if this was new at some point, but you can turn in the quests inside BRD any any rep level. So with the going prices, 
from neutral to friendly is far cheaper if you buy (or farm) fiery core, lava core, and core leather.

By bloodtalon on 2009/06/08  (Patch 3.1.3)
This isn't new - the original way to gain reputation with Thorium Brotherhood was started through these turn in quests inside
 of Blackrock Depths and it was the only way to gain reputation. Dark Iron Ore wasn't even available outside of Molten Core 
 and Blackrock Depths. The Neutral - Honored quests at Thorium Point were added much later - when Thorium Point was added. 
 Dark Iron Ore was later added to the Searing Gorge and Burning Steppes areas to make it even more accessible. 
 What makes the earlier quests so much easier is (or at least was) accessibility - You can farm the kingsblood/iron ba
*/

-- gossip corrected
DELETE FROM gossip_menu WHERE entry = 4781;
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES 
(4781, 3673, 0, 0),
(4781, 5834, 0, 375),
(4781, 7006, 0, 376);
-- remove wrong rep reQ. from all his quests (they must be available after 60lvl)
UPDATE quest_template SET RequiredMinRepFaction = 0, RequiredMinRepValue = 0 WHERE entry = 6642;
UPDATE quest_template SET RequiredMinRepFaction = 0, RequiredMinRepValue = 0 WHERE entry = 6643;
UPDATE quest_template SET RequiredMinRepFaction = 0, RequiredMinRepValue = 0 WHERE entry = 6644;
UPDATE quest_template SET RequiredMinRepFaction = 0, RequiredMinRepValue = 0 WHERE entry = 6645;
UPDATE quest_template SET RequiredMinRepFaction = 0, RequiredMinRepValue = 0 WHERE entry = 6646;


-- Let's fix his vendor list

-- Source: Wowhead
/*By Dantarahma (9,318 – 2·17·30)  on 2008/06/10 (Patch 2.4.2)
Lokhtos sells his recipes depending on your faction with the Thorium Brotherhood.
(...)This means that he will only show what you have access to, NOT everything he sells. So, you have to be exalted to be able to see his whole list 
of purchaseables. Things you can't learn (since we can only have 2 profs) will still appear red no matter your rep. 
At friendly you'll only see the "friendly purchaseable" options. Where as, at honored you'll see honored and friendly ones, and soforth(...)
*/

-- faction 59 'Thorium Brotherhood'
/*
Friendly
Transmute: Elemental Fire (Alchemy 300) 			 -- i.20761
Dark Iron Bracers (Blacksmithing 295)   			 -- i.17051
Enchant Weapon - Strength (Enchanting 290)  		 -- i.17444
Molten Helm (Leatherworking 300)  					 -- i.17023
Corehound Boots (Leatherworking 295)   				 -- i.17022
Flarecore Gloves (Tailoring 300)   					 -- i.17018

Honored
Fiery Chain Girdle (Blacksmithing 295)   			 -- i.17049
Dark Iron Helm (Blacksmithing 300)  				 -- i.19206
Dark Iron Destroyer (Blacksmithing 300)  			 -- i.17060
Dark Iron Reaver (Blacksmithing 300)  				 -- i.17059
Enchant Weapon - Mighty Spirit (Enchanting 300)		 -- i.19448
Lava Belt (Leatherworking 300)  					 -- i.19330
Black Dragonscale Boots (Leatherworking 300) 		 -- i.17025
Flarecore Mantle (Tailoring 300)  					 -- i.17017
Flarecore Robe (Tailoring 300)  					 -- i.19219

Revered
Fiery Chain Shoulders (Blacksmithing 300)            -- i.17053
Dark Iron Leggings (Blacksmithing 300)               -- i.17052
Dark Iron Gauntlets (Blacksmithing 300)              -- i.19207
Black Amnesty (Blacksmithing 300)                    -- i.19208
Blackfury (Blacksmithing 300)                        -- i.19209
Enchant Weapon - Mighty Intellect (Enchanting 300)   -- i.19449
Chromatic Gauntlets (Leatherworking 300)             -- i.19331
Molten Belt (Leatherworking 300)                     -- i.19333
Corehound Belt (Leatherworking 300)  				 -- i.19332
Flarecore Leggings (Tailoring 300)   				 -- i.19220

Exalted
Dark Iron Boots (Blacksmithing 300)  				 -- i.12040
Nightfall (Blacksmithing 300)        				 -- i.19212
Ebon Hand (Blacksmithing 300)        				 -- i.19210
Blackguard (Blacksmithing 300)       				 -- i.19211
*/


-- Lokhtos sells his recipes depending on your faction with the Thorium Brotherhood.
DELETE FROM conditions WHERE condition_entry IN (1337,1338);
INSERT INTO conditions (condition_entry, type, value1, value2) VALUES
-- (81, 5, 59, 4),   -- Friendly  -- Already in DB
-- (1183, 5, 59, 5), -- Honored   -- Already in DB
(1337, 5, 59, 6), -- Revered 
(1338, 5, 59, 7); -- Exalted 


-- Items will become available to buy with rep:
-- Friendly
UPDATE npc_vendor SET condition_id = 375 WHERE entry = 12944 AND item = 20761;
UPDATE npc_vendor SET condition_id = 375 WHERE entry = 12944 AND item = 17051;
UPDATE npc_vendor SET condition_id = 375 WHERE entry = 12944 AND item = 17444;
UPDATE npc_vendor SET condition_id = 375 WHERE entry = 12944 AND item = 17023;
UPDATE npc_vendor SET condition_id = 375 WHERE entry = 12944 AND item = 17022;
UPDATE npc_vendor SET condition_id = 375 WHERE entry = 12944 AND item = 17018;
-- Honored
UPDATE npc_vendor SET condition_id = 234 WHERE entry = 12944 AND item = 17049;
UPDATE npc_vendor SET condition_id = 234 WHERE entry = 12944 AND item = 19206;
UPDATE npc_vendor SET condition_id = 234 WHERE entry = 12944 AND item = 17060;
UPDATE npc_vendor SET condition_id = 234 WHERE entry = 12944 AND item = 17059;
UPDATE npc_vendor SET condition_id = 234 WHERE entry = 12944 AND item = 19448;
UPDATE npc_vendor SET condition_id = 234 WHERE entry = 12944 AND item = 19330;
UPDATE npc_vendor SET condition_id = 234 WHERE entry = 12944 AND item = 17025;
UPDATE npc_vendor SET condition_id = 234 WHERE entry = 12944 AND item = 17017;
UPDATE npc_vendor SET condition_id = 234 WHERE entry = 12944 AND item = 19219;
-- Revered
UPDATE npc_vendor SET condition_id = 1337 WHERE entry = 12944 AND item = 17053;
UPDATE npc_vendor SET condition_id = 1337 WHERE entry = 12944 AND item = 17052;
UPDATE npc_vendor SET condition_id = 1337 WHERE entry = 12944 AND item = 19207;
UPDATE npc_vendor SET condition_id = 1337 WHERE entry = 12944 AND item = 19208;
UPDATE npc_vendor SET condition_id = 1337 WHERE entry = 12944 AND item = 19209;
UPDATE npc_vendor SET condition_id = 1337 WHERE entry = 12944 AND item = 19449;
UPDATE npc_vendor SET condition_id = 1337 WHERE entry = 12944 AND item = 19331;
UPDATE npc_vendor SET condition_id = 1337 WHERE entry = 12944 AND item = 19333;
UPDATE npc_vendor SET condition_id = 1337 WHERE entry = 12944 AND item = 19332;
UPDATE npc_vendor SET condition_id = 1337 WHERE entry = 12944 AND item = 19220;
-- Exalted
UPDATE npc_vendor SET condition_id = 1338 WHERE entry = 12944 AND item = 12040;
UPDATE npc_vendor SET condition_id = 1338 WHERE entry = 12944 AND item = 19212;
UPDATE npc_vendor SET condition_id = 1338 WHERE entry = 12944 AND item = 19210;
UPDATE npc_vendor SET condition_id = 1338 WHERE entry = 12944 AND item = 19211;
