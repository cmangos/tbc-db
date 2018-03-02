-- It should be possible to turn all of these items in for reputation starting at 0/3000 Neutral instead of Friendly
UPDATE quest_template SET RequiredMinRepValue=0 WHERE entry IN (10419,10416); -- Arcane Tome
UPDATE quest_template SET RequiredMinRepValue=0 WHERE entry IN (10421,10420); -- Fel Armament
UPDATE quest_template SET RequiredMinRepValue=0 WHERE entry IN (10653,10654,10655,10826,10827,10828); -- Mark of Sargeras
UPDATE quest_template SET RequiredMinRepValue=0 WHERE entry IN (10656,10658,10659,10822,10823,10824); -- Sunfury Signet


