DELETE FROM game_event WHERE entry IN (89,90,91,92,93,94,95,96,97,98,99);
INSERT INTO game_event (entry, `schedule_type`, occurence, `length`, holiday, `description`) VALUES
(89, 0, 525600, 0, 0, 'Scourge Invasion - Boss in instance activation'), -- manually activated?
(90, 0, 525600, 0, 0, 'Scourge Invasion - Attacking Winterspring'),
(91, 0, 525600, 0, 0, 'Scourge Invasion - Attacking Tanaris'),
(92, 0, 525600, 0, 0, 'Scourge Invasion - Attacking Azshara'),
(93, 0, 525600, 0, 0, 'Scourge Invasion - Attacking Blasted Lands'),
(94, 0, 525600, 0, 0, 'Scourge Invasion - Attacking Eastern Plaguelands'),
(95, 0, 525600, 0, 0, 'Scourge Invasion - Attacking Burning Steppes'),
(96, 0, 525600, 0, 0, 'Scourge Invasion - 50 Invasions Done'),
(97, 0, 525600, 0, 0, 'Scourge Invasion - 100 Invasions Done'),
(98, 0, 525600, 0, 0, 'Scourge Invasion - 150 Invasions Done'),
(99, 0, 525600, 0, 0, 'Scourge Invasion - Invasions Done');


