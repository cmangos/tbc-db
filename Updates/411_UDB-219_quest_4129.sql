-- q.4129 'The Knife Revealed'
DELETE FROM dbscripts_on_quest_end WHERE id = 4129;
INSERT INTO dbscripts_on_quest_end (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(4129,0,29,131,2,0,0,0,0,0,0,0,0,0,0,0,'npcFlags removed'),
(4129,2,0,0,0,0,0,0,2000000521,0,0,0,0,0,0,0,''),
(4129,3,15,15050,0,0,0,0,0,0,0,0,0,0,0,0,''),
(4129,10,0,0,0,0,0,0,2000000522,0,0,0,0,0,0,0,''),
(4129,12,29,131,1,0,0,0,0,0,0,0,0,0,0,0,'npcFlags added');
UPDATE quest_template SET CompleteScript = 4129 WHERE entry = 4129;
DELETE FROM db_script_string WHERE entry BETWEEN 2000000521 AND 2000000522;
INSERT INTO db_script_string (entry, content_default, sound, type, language, emote, comment) VALUES
(2000000521,'I will need to focus my energies onto this knife. By doing so, I should catch some of the stronger psychic impressions associated with it.',0,0,0,0,NULL),
(2000000522,'I... I\'ve seen enough I think... so very draining...',0,0,0,462,NULL);

-- Quintis Jonespyre
-- temp. solution (we need to find gossipID)
DELETE FROM npc_gossip WHERE npc_guid = 51258;
INSERT INTO npc_gossip (npc_guid, textid) VALUES
(51258, 2575);

-- NPC Quintis Jonespyre (7879)
-- Repeatable quest 'Morrowgrain to Feathermoon Stronghold' (3792) must be available after 'The Mystery of Morrowgrain'(3791)
UPDATE quest_template SET PrevQuestId = 3791 WHERE entry = 3792;


