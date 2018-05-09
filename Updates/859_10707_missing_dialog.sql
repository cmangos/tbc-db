DELETE FROM dbscript_string WHERE entry BETWEEN 2000001003 AND 2000001006;
INSERT INTO `dbscript_string` (`entry`, `content_default`, `sound`, `type`, `language`, `emote`, `comment`) VALUES 
(2000001003, 'The Heart of Fury... I witnessed its power long ago, when Velen wielded it. I feel the same power coursing through it right now!', 0, 0, 0, 0, 'q. 10707 Akama say 1'),
(2000001004, 'With this crystal\'s powers, my Deathsworn and I... we\'d be unstoppable! We could destroy Illidan! We could... replace him as lords of Outland!', 0, 0, 0, 0, 'q. 10707 Akama say 2'),
(2000001005, 'But that is not part of the vision I was granted... that is not... how my people will be freed.', 0, 0, 0, 0, 'q. 10707 Akama say 3'),
(2000001006, 'Please $N. You must take the Heart of Fury somewhere safe... you must take it to A\'dal!', 0, 0, 0, 0, 'q. 10707 Akama say 4');

DELETE FROM dbscripts_on_quest_end WHERE id=10707;
INSERT INTO `dbscripts_on_quest_end` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES 
(10707, 0, 29, 3, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Akama Remove Gossip/Quest NPCFlags'),
(10707, 3, 0, 0, 0, 0, 0, 0, 0, 2000001003, 0, 0, 0, 0, 0, 0, 0, 'Akama say 1'),
(10707, 9, 0, 0, 0, 0, 0, 0, 0, 2000001004, 0, 0, 0, 0, 0, 0, 0, 'Akama say 2'),
(10707, 17, 0, 0, 0, 0, 0, 0, 0, 2000001005, 0, 0, 0, 0, 0, 0, 0, 'Akama say 3'),
(10707, 24, 0, 0, 0, 0, 0, 0, 0, 2000001006, 0, 0, 0, 0, 0, 0, 0, 'Akama say 4'),
(10707, 24, 29, 3, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Akama Add Gossip/Quest NPCFlags');
    
UPDATE `quest_template` SET `CompleteScript`='10707' WHERE `entry`='10707';

