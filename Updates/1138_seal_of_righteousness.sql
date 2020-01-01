-- calculated in core for dynamic reasons
DELETE FROM spell_bonus_data WHERE entry IN(21084,25742);
INSERT INTO spell_bonus_data(entry,direct_bonus) VALUES
(21084,0), -- dummy spell
(25742,0); -- triggered damage spell

