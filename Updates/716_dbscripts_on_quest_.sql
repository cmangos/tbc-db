-- Several quests had scripts in dbscripts_on_quest_* but was not set in quest_template

-- CompleteScripts
UPDATE quest_template SET CompleteScript=10565 WHERE entry=10565; -- The Stones of Vekh'nir

-- StartScripts
UPDATE quest_template SET StartScript=74 WHERE entry=74; -- The Legend of Stalvan
UPDATE quest_template SET StartScript=4975 WHERE entry=4975; -- The Completed Orb of Noh'Orahil
UPDATE quest_template SET StartScript=6482 WHERE entry=6482; -- Freedom to Ruul

