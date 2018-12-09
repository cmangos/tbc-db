-- Blue Ogre Brew (32783)
-- Red Ogre Brew (32784)
DELETE FROM spell_area WHERE spell IN (41304,41306);
INSERT INTO spell_area (spell, area, quest_start, quest_start_active, quest_end, condition_id, aura_spell, racemask, gender, autocast) VALUES
(41304, 3522, 0, 0, 0, 0, 0, 0, 2, 0),
(41304, 3923, 0, 0, 0, 0, 0, 0, 2, 0),
(41306, 3522, 0, 0, 0, 0, 0, 0, 2, 0),
(41306, 3923, 0, 0, 0, 0, 0, 0, 2, 0);

-- Swiftness trigger spells from Apexis Vibrations, Apexis Emanations, and Apexis Enlightenment
DELETE FROM spell_area WHERE spell IN (40624,40627,40628);
INSERT INTO spell_area (spell, area, quest_start, quest_start_active, quest_end, condition_id, aura_spell, racemask, gender, autocast) VALUES
(40624, 3522, 0, 0, 0, 0, 0, 0, 2, 0),
(40624, 3923, 0, 0, 0, 0, 0, 0, 2, 0),
(40627, 3522, 0, 0, 0, 0, 0, 0, 2, 0),
(40627, 3923, 0, 0, 0, 0, 0, 0, 2, 0),
(40628, 3522, 0, 0, 0, 0, 0, 0, 2, 0),
(40628, 3923, 0, 0, 0, 0, 0, 0, 2, 0);


