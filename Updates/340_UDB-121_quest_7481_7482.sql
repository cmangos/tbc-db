-- Fixed quests 7481 & 7482 (Elven Legends - Alliance / Horde)
-- Corrected for UDB req.
-- Thx to: @Cala
DELETE FROM dbscripts_on_gossip WHERE id IN (5743, 5744);
INSERT INTO dbscripts_on_gossip VALUES
(5743, 0, 7, 7482, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(5743, 2, 3, 0, 0, 14368, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0.7, ''),
(5743, 4, 0, 0, 0, 14368, 20, 0, 2000000455, 0, 0, 0, 0, 0, 0, 0, ''),
(5743, 7, 0, 0, 0, 14368, 20, 0, 2000000456, 0, 0, 0, 0, 0, 0, 0, ''),
(5743, 13, 0, 0, 0, 14368, 20, 0, 2000000457, 0, 0, 0, 0, 0, 0, 0, ''),
(5743, 20, 3, 0, 0, 14368, 20, 0, 0, 0, 0, 0, 0, 0, 0, 3.07178, ''),
(5744, 0, 7, 7481, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(5744, 2, 3, 0, 0, 14368, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0.7, ''),
(5744, 4, 0, 0, 0, 14368, 20, 0, 2000000455, 0, 0, 0, 0, 0, 0, 0, ''),
(5744, 7, 0, 0, 0, 14368, 20, 0, 2000000456, 0, 0, 0, 0, 0, 0, 0, ''),
(5744, 13, 0, 0, 0, 14368, 20, 0, 2000000457, 0, 0, 0, 0, 0, 0, 0, ''),
(5744, 20, 3, 0, 0, 14368, 20, 0, 0, 0, 0, 0, 0, 0, 0, 3.07178, '');

DELETE FROM db_script_string WHERE entry IN (2000000455, 2000000456, 2000000457);
INSERT INTO db_script_string (entry, content_default, sound, type, language, emote, comment) VALUES
(2000000455, 'I very much doubt that he will have anything to say, stranger...', 0, 0, 0, 1, NULL),
(2000000456, 'I personally didn\'t mind him. It was the Prince who took exception to a high elf in his domain. Alas, I am not one to question the Prince. In his defense, he did not incinerate Master Winthalus immediately.', 0, 0, 0, 1, NULL),
(2000000457, 'We most definitely do not need any more attention drawn to us, stranger. Return to those that sent you in search of the lost master and tell them that nothing could be found. When this is done - and I will know when it is so - return and I shall reveal the secrets of the deceased.', 0, 0, 0, 1, NULL);


