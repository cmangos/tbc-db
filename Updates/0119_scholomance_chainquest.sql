-- Correct Quest Linking for Scholomance Key Prequest - Alchemist Arbington 11056
-- q.5238 rewarded for gossip other npc used in this questchain is c.5411
-- q Araj's Scarab prob has turn in rp script
-- now works like this https://classic.wowhead.com/quest=5505/the-key-to-scholomance#comments:id=2747728
DELETE FROM `creature_addon` WHERE `guid` = 45242;
UPDATE `creature_template_addon` SET `b2_1_flags` = 16 WHERE `entry` = 11056;
UPDATE `creature_questrelation` SET `id` = 11056 WHERE `quest` IN (5505,5803,5537,5538);
UPDATE `creature_involvedrelation` SET `id` = 11056 WHERE `quest` IN (5505,5533,5537,5801,5803);

