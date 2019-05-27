/* Adding Exclusive Group to ensure only one Dearest Colara is chosen and completed + NextQuestId to ensure Dangerous is available only after completion of one of them */

UPDATE quest_template SET MinLevel=1, QuestLevel=60, NextQuestId=8903,ExclusiveGroup=8897 WHERE entry IN (8897, 8898, 8899);

/* Adding Exclusive Group to ensure only one Dearest Elenia is chosen and completed + NextQuestId to ensure Dangerous is available only after completion of one of them*/

UPDATE quest_template SET MinLevel=1, QuestLevel=60, NextQuestId=8904, ExclusiveGroup=8900 WHERE entry IN (8900, 8901, 8902);

-- Fixing a few errors
UPDATE quest_template SET MinLevel=1,QuestLevel=60 WHERE entry=8903;
UPDATE quest_template SET QuestLevel=60, RequiredRaces=690 WHERE entry=8904;

/* Adding entries to adjust Dangerous Love questline */
-- Alliance
UPDATE quest_template SET MinLevel=1, QuestLevel=60, PrevQuestId=8903 WHERE entry=9024; -- Aristan's Hunch
UPDATE quest_template SET MinLevel=1, QuestLevel=60, PrevQuestId=9024 WHERE entry=9025; -- Morgan's Discovery
UPDATE quest_template SET MinLevel=1, QuestLevel=60, PrevQuestId=9025 WHERE entry=9026; -- Tracing the Source(1)
UPDATE quest_template SET MinLevel=1, QuestLevel=60, PrevQuestId=9026 WHERE entry=9027; -- Tracing the Source(2)
UPDATE quest_template SET MinLevel=1, QuestLevel=60, PrevQuestId=9027, ExclusiveGroup=9028, NextQuestId=9029, NextQuestInChain=9029 WHERE entry=9028; -- The Sourced Revealed

-- Horde
UPDATE quest_template SET MinLevel=1, QuestLevel=60, PrevQuestId=8904 WHERE entry=8979; -- Fenstad's Hunch
UPDATE quest_template SET MinLevel=1, QuestLevel=60, PrevQuestId=8979 WHERE entry=8980; -- Zinge's Assessment
UPDATE quest_template SET MinLevel=1, QuestLevel=60, PrevQuestId=8980 WHERE entry=8982; -- Tracing the Source(1)
UPDATE quest_template SET MinLevel=1, QuestLevel=60, PrevQuestId=8982 WHERE entry=8983; -- Tracing the Source(2)
UPDATE quest_template SET MinLevel=1, QuestLevel=60, PrevQuestId=8983, ExclusiveGroup=9028, NextQuestId=9029, NextQuestInChain=9029 WHERE entry=8984; -- The Sourced Revealed

-- Common
UPDATE quest_template SET PrevQuestId=9028 WHERE entry=9029; -- The Bubbling Cauldron

/* Adding db acript string entries for Lerent discourse */

DELETE FROM dbscript_string WHERE entry IN (2000000212,2000000213,2000000504,2000000505,2000000506,2000000507,2000000508,2000000509,2000000510,2000000511,2000000512,2000000513);
INSERT INTO dbscript_string (entry, content_default, content_loc1, content_loc2, content_loc3, content_loc4, content_loc5, content_loc6, content_loc7, content_loc8, sound, type, language, emote, comment) VALUES
(2000000212, 'Staffron...', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, 'Annalise Dialogue 1'),
(2000000213, 'Annalise? Is that you?', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, 'Staffron Dialogue 1'),
(2000000504, 'My dear Staffron, have you forgotten what it is to love? The love that we once shared?', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, 'Annalise Dialogue 2'),
(2000000505, 'Have I forgotten? Of course I have... I have forgotten about love, happiness... of life itself.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, 'Staffron Dialogue 2'),
(2000000506, 'But i do know this - love makes the heart and body weak. It can be exploited. Without your love, I have only my work, Annalise.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, 'Staffron Dialogue 3'),
(2000000507, 'But of course I love you, Staffron. And it pains me to see you suffer so.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, 'Annalise Dialogue 3'),
(2000000508, 'I pledge my love to you forever. Death cannot erase that, even as I am sure that you still remember your love for me.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, 'Annalise Dialogue 4'),
(2000000509, 'And if you do not, then I am truly lost.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, 'Annalise Dialogue 5'),
(2000000510, 'How could you love me, Annalise? Look at me. I am not the man you once knew.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, 'Staffron Dialogue 4'),
(2000000511, 'Annalise? Annalise! No, don\'t leave me!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, 'Staffron Dialogue 5'),
(2000000512, 'Annalise... You\'re right. I-I can\'t do this. I must find another way.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, 'Staffron Dialogue 6'),
(2000000513, 'You there. You\'re welcome to take the contents of my cauldron. It was to be the second stage of my plan - amorous clothing.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, 'Staffron Dialogue 7');

/* Dbscript entries triggered by completion of The Source Revealed */

UPDATE quest_template SET CompleteScript=9028 WHERE entry IN (8984, 9028);

DELETE FROM dbscripts_on_quest_end WHERE id=9028;
INSERT INTO dbscripts_on_quest_end (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(9028, 1, 29, 2, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,  0, 'Staffron - Remove NPC Flag Questgiver'),
(9028, 2, 10, 16110, 40000, 0, 0, 0, 0, 0, 0, 0, 0, 95.655884, -1713.355347, 220.825989, 4.267725, 'Summon Annalise Lerent'),
(9028, 5, 0, 0, 0, 0, 16110, 40, 0, 2000000212, 0, 0, 0, 0, 0, 0, 0, 'Annalise - Dialogue 1'),
(9028, 9, 36, 0, 0, 0, 16110, 40, 0x01, 0, 0, 0, 0, 0, 0, 0, 0, 'Staffron - Turns to Annalise'),
(9028, 13, 0, 0, 0, 0, 0, 0, 0, 2000000213, 0, 0, 0, 0, 0, 0, 0, 'Staffron - Dialogue 1'),
(9028, 17, 0, 0, 0, 0, 16110, 40, 0, 2000000504, 0, 0, 0, 0, 0, 0, 0, 'Annalise - Dialogue 2'),
(9028, 21, 0, 0, 0, 0, 0, 0, 0, 2000000505, 0, 0, 0, 0, 0, 0, 0, 'Staffron - Dialogue 2'),
(9028, 25, 0, 0, 0, 0, 0, 0, 0, 2000000506, 0, 0, 0, 0, 0, 0, 0, 'Staffron - Dialogue 3'),
(9028, 29, 0, 0, 0, 0, 16110, 40, 0, 2000000507, 0, 0, 0, 0, 0, 0, 0, 'Annalise - Dialogue 3'),
(9028, 33, 0, 0, 0, 0, 16110, 40, 0, 2000000508, 0, 0, 0, 0, 0, 0, 0, 'Annalise - Dialogue 4'),
(9028, 37, 0, 0, 0, 0, 16110, 40, 0, 2000000509, 0, 0, 0, 0, 0, 0, 0, 'Annalise - Dialogue 5'),
(9028, 41, 0, 0, 0, 0, 0, 0, 0, 2000000510, 0, 0, 0, 0, 0, 0, 0, 'Staffron - Dialogue 4'),
(9028, 45, 0, 0, 0, 0, 0, 0, 0, 2000000511, 0, 0, 0, 0, 0, 0, 0, 'Staffron - Dialogue 5'),
(9028, 49, 0, 0, 0, 0, 0, 0, 0, 2000000512, 0, 0, 0, 0, 0, 0, 0, 'Staffron - Dialogue 6'),
(9028, 53, 0, 0, 0, 0, 0, 0, 0, 2000000513, 0, 0, 0, 0, 0, 0, 0, 'Staffron - Dialogue 7'),
(9028, 54, 36, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,  0, 'Staffron - Reset orientation'),
(9028, 54, 29, 2, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,  0, 'Staffron - Add NPC Flag Questgiver');

-- Add ghost visual to Annalise
DELETE FROM creature_template_addon WHERE entry=16110;
INSERT INTO `creature_template_addon` (entry, mount, bytes1, b2_0_sheath, b2_1_flags, emote, moveflags, auras) VALUES
(16110, 0, 0, 1, 16, 0, 0, '22650');

-- Update gameobject Flagrant Cauldron
UPDATE gameobject_template SET flags=0 WHERE entry=181073;
