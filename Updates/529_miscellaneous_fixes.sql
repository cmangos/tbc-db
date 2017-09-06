-- Void Traveler and Sapling should move much more slowly, including HC versions
UPDATE creature_template SET SpeedWalk=2/2.5,SpeedRun=2/7 WHERE entry IN(19226,19949,20664,21567);

/*
Captain Sanders' Hidden Treasure
By satukie (2,550 – 9·22) on 2007/01/12 (Patch 2.0.4)
Horde can also get this quest along with every other captain sander's quests.
*/
UPDATE quest_template SET RequiredRaces=0 WHERE entry IN (140,139,138,136);

-- Thunderlord Clan Artifact should drop more often
-- http://www.wowhead.com/item=30431/thunderlord-clan-artifact#comments:id=368675
UPDATE creature_loot_template SET ChanceOrQuestChance=10 WHERE item=30431;

-- Waterlogged Letter (2656) should only contain Waterlogged Envelope
DELETE FROM gameobject_loot_template WHERE entry=2117 AND item != 4433;
-- Decrease respawn time of Waterlogged Letter (was 2 hours)
UPDATE gameobject SET spawntimesecsmin=300, spawntimesecsmax=300 WHERE id=2656;

-- quest is rewarded using spells and not with this outdated mechanic
UPDATE quest_template SET ReqSpellCast1=0,ReqSpellCast2=0,ReqSpellCast3=0 WHERE entry IN(10720);

-- fix murmur unitflags
UPDATE creature_template SET UnitFlags=32832 WHERE entry IN(18708,20657);

-- Nothing But The Truth (1383) changed requirements in 2.3
-- no longer need the Deepstrider Tumor (the item was replaced by Green Whelp Blood)
UPDATE item_template SET name='Green Whelp Blood', displayid=47459 WHERE entry=6082;
UPDATE creature_loot_template SET comments='Green Whelp Blood' WHERE entry=741 AND item=6082;
UPDATE quest_template SET
Objectives='Apothecary Faustin at Beggar\'s Haunt needs 5 Shadow Panther Hearts, Mire Lord Fungus and some Green Whelp Blood.',
OfferRewardText='That Infiltrator in Stonard will surely.... open up... after he drinks my special serum. Haha!$b$bThe ingredients required are by no means easy to procure. Shadow Panthers are common in the Swamp but collecting enough hearts for our purpose can be daunting. And the Mire Lord can be such a fussy beast.$b$b'
WHERE entry=1383;

-- Fix faction for horses outside Gadgetzan (https://jira.vengeancewow.com/browse/TBC-2763?filter=10504)
-- Use classic-db value
UPDATE creature_template SET FactionAlliance=35, FactionHorde=35 WHERE entry=8883;
