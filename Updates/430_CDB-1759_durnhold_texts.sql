
DELETE FROM db_script_string WHERE entry IN (2000001311, 2000001312);
INSERT INTO db_script_string VALUES
(2000001311, 'Ah, it is good to be free of my bonds! Have you freed Tog\'thar yet? The humans split us up after our capture.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, NULL),
(2000001312, 'Go on ahead without me! I will make my own way to Tarren Mill.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, NULL);

DELETE FROM dbscripts_on_event WHERE ID=312;
INSERT INTO dbscripts_on_event VALUES
(312, 1, 0, 0, 0, 0, 2239, 10, 4, 2000001311, 0, 0, 0, 0, 0, 0, 0, 'force 2239 to: say text'),
(312, 3, 0, 0, 0, 0, 2239, 10, 4, 2000001312, 0, 0, 0, 0, 0, 0, 0, 'force 2239 to: say text');

UPDATE gameobject_template SET data1=0 WHERE entry=1721;
UPDATE gameobject_template SET flags=4 WHERE entry=1722;


