UPDATE creature_template SET DamageMultiplier=1 WHERE entry IN(1964,19668); -- treants and shadowfiend
UPDATE creature_template SET HealthMultiplier=0.36,PowerMultiplier=0.33 WHERE entry IN(416); -- imp
UPDATE creature_template SET HealthMultiplier=1.4,PowerMultiplier=0.77 WHERE entry IN(1860); -- voidwalker
UPDATE creature_template SET HealthMultiplier=0.7,PowerMultiplier=0.77 WHERE entry IN(1863); -- succubus
UPDATE creature_template SET HealthMultiplier=1,PowerMultiplier=0.77 WHERE entry IN(17252); -- felguard
UPDATE creature_template SET HealthMultiplier=0.95,PowerMultiplier=0.77 WHERE entry IN(417); -- felhunter

