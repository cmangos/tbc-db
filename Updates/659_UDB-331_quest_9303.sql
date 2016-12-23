-- fix console error for quest 9303
UPDATE creature_template SET MovementType=0 WHERE entry IN (16534,16518);


