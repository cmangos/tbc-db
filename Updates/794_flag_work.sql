-- NO MELEE

UPDATE creature_template SET ExtraFlags=ExtraFlags|131072 WHERE entry IN(510,416); -- Imp and water elemental

UPDATE creature_template SET ExperienceMultiplier=0.25 WHERE entry in(18978,19136); -- imps in hellfire give exp proportional to hp

UPDATE gameobject_template SET flags=32 WHERE entry IN(184517); -- fix aran door flags





