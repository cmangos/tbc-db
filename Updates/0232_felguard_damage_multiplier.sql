-- adjust damage multiplier after reviewing empirical data of felguard pet being too strong
UPDATE creature_template SET DamageMultiplier=2 WHERE entry IN(17252);

