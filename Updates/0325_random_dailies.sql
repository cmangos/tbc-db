UPDATE creature_template SET NpcFlags=2 WHERE entry=24393; -- The Rokk does not gossip, he only gives quests

DELETE FROM game_event WHERE entry IN (1135,1134,1133,1132,1131,1130,1129,1128,1127);
INSERT INTO game_event (entry, start_time, end_time, occurence, length, holiday, linkedTo, EventGroup, description) VALUES
(1135, '2011-01-14 02:00:00', '2020-12-31 00:00:00', 0, 1440, 0, 0, 10, 'Fishing - Random Daily - Felblood Fillet'),
(1134, '2011-01-14 02:00:00', '2020-12-31 00:00:00', 0, 1440, 0, 0, 10, 'Fishing - Random Daily - Shrimpin Aint Easy'),
(1133, '2011-01-14 02:00:00', '2020-12-31 00:00:00', 0, 1440, 0, 0, 10, 'Fishing - Random Daily - The One That Got Away'),
(1132, '2011-01-14 02:00:00', '2020-12-31 00:00:00', 0, 1440, 0, 0, 10, 'Fishing - Random Daily - Bait Bandits'),
(1131, '2011-01-14 02:00:00', '2020-12-31 00:00:00', 0, 1440, 0, 0, 10, 'Fishing - Random Daily - Crocolisks in the City'),

(1130, '2011-01-14 02:00:00', '2020-12-31 00:00:00', 0, 1440, 0, 0, 9, 'Cooking - Random Daily - Soup for the Soul'),
(1129, '2011-01-14 02:00:00', '2020-12-31 00:00:00', 0, 1440, 0, 0, 9, 'Cooking - Random Daily - Manalicious'),
(1128, '2011-01-14 02:00:00', '2020-12-31 00:00:00', 0, 1440, 0, 0, 9, 'Cooking - Random Daily - Super Hot Stew'),
(1127, '2011-01-14 02:00:00', '2020-12-31 00:00:00', 0, 1440, 0, 0, 9, 'Cooking - Random Daily - Revenge is Tasty');

DELETE FROM `game_event_quest` WHERE `quest` in (11377,11379,11380,11381);
DELETE FROM game_event_quest WHERE event BETWEEN 1127 AND 1130;
INSERT INTO game_event_quest(event,quest) VALUES
(1127,11377), (1128,11379), (1129,11380), (1130,11381);

DELETE FROM `game_event_quest` WHERE `quest` in (11665,11666,11667,11668,11669);
DELETE FROM game_event_quest WHERE event BETWEEN 1131 AND 1135;
INSERT INTO game_event_quest(event,quest) VALUES
(1131,11665), (1132,11666), (1133,11667), (1134,11668), (1135,11669);


