-- Blue Ogre Brew (32783)
-- Red Ogre Brew (32784)
DELETE FROM spell_area WHERE spell IN (41304,41306);
INSERT INTO spell_area (spell, area, quest_start, quest_start_active, quest_end, condition_id, aura_spell, racemask, gender, autocast) VALUES
(41304, 3522, 0, 0, 0, 0, 0, 0, 2, 0),
(41304, 3923, 0, 0, 0, 0, 0, 0, 2, 0),
(41306, 3522, 0, 0, 0, 0, 0, 0, 2, 0),
(41306, 3923, 0, 0, 0, 0, 0, 0, 2, 0);

-- Apexis Emanations
DELETE FROM spell_area WHERE spell IN (40625);
INSERT INTO spell_area (spell, area, quest_start, quest_start_active, quest_end, condition_id, aura_spell, racemask, gender, autocast) VALUES
(40625, 3522, 0, 0, 0, 0, 0, 0, 2, 0),
(40625, 3923, 0, 0, 0, 0, 0, 0, 2, 0);


