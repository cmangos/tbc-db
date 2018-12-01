-- adds taunt immunity to mobs which previously had it in core
UPDATE creature_template SET ExtraFlags=ExtraFlags|0x00000100 WHERE entry IN(15691,16457,16151,15550,16152,15687);

