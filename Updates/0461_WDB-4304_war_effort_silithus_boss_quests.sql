-- Has accompanying core commit - applicable to all versions
DELETE FROM game_event WHERE entry IN(125,126,127);
INSERT INTO game_event(entry, schedule_type, occurence, length, holiday, linkedTo, EventGroup, description) VALUES
('125', '0', '525600', '0', '0', '0', '0', 'AQ War Effort Ashi dead'),
('126', '0', '525600', '0', '0', '0', '0', 'AQ War Effort Regal dead'),
('127', '0', '525600', '0', '0', '0', '0', 'AQ War Effort Zora dead');

DELETE FROM game_event_quest WHERE event IN(125,126,127);
INSERT INTO game_event_quest(quest, event) VALUES
(8859, 127),
(8858, 126),
(8857, 125);

