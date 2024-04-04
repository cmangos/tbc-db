-- Correct CallForHelp for Blood Furnance trash mobs based on wotlk classic tests
-- Shadowmoon Warlock
UPDATE creature_template SET CallForHelp = '6' WHERE entry IN (17371, 18619);
-- Shadowmoon Adept
UPDATE creature_template SET CallForHelp = '6' WHERE entry IN (17397, 18615);
-- Shadowmoon Technician
UPDATE creature_template SET CallForHelp = '8' WHERE entry IN (17414, 18618);
-- Shadowmoon Summoner
UPDATE creature_template SET CallForHelp = '8' WHERE entry IN (17395, 18617);
-- Laughing Skull Enforcer
UPDATE creature_template SET CallForHelp = '8' WHERE entry IN (17370, 18608);
-- Nascent Fel Orc
UPDATE creature_template SET CallForHelp = '8' WHERE entry IN (17398, 18612);
-- Fel orc Neophyte
UPDATE creature_template SET CallForHelp = '8' WHERE entry IN (17429, 18603);
-- Laughing Skull Legionnaire
UPDATE creature_template SET CallForHelp = '8' WHERE entry IN (17626, 18609);
-- Laughing Skull Warden
UPDATE creature_template SET CallForHelp = '8' WHERE entry IN (17624, 18611);
-- Hellfire Familiar
UPDATE creature_template SET CallForHelp = '8' WHERE entry IN (19016, 21646);
-- Felguard Brute
UPDATE creature_template SET CallForHelp = '8' WHERE entry IN (18894, 21645);
-- Laughing Skull Rogue
UPDATE creature_template SET CallForHelp = '8' WHERE entry IN (17491, 18610);
-- Felguard Annihilator
UPDATE creature_template SET CallForHelp = '8' WHERE entry IN (17400, 18604);
-- Hellfire Imp
UPDATE creature_template SET CallForHelp = '6' WHERE entry IN (17477, 18606);
