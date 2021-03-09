DELETE FROM creature_template_spells WHERE entry IN(25824);
INSERT INTO creature_template_spells(entry, setId, spell1) VALUES
(25824, 0, 46082);

DELETE FROM creature_cooldowns WHERE entry IN(25824);
INSERT INTO creature_cooldowns VALUES
(25824, 46082, 5000, 5000);


