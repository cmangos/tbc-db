UPDATE creature_template SET SchoolImmuneMask= SchoolImmuneMask|4 WHERE entry=17454; -- make infernal immune to fire damage
UPDATE creature_template SET ExtraFlags = ExtraFlags | 256 WHERE entry=17257; -- make magtheridon immune to taunt


