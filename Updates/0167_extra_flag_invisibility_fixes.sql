-- remove extra flag invisibility from mobs which have unselectable flag, since this flag makes them invisible to players
-- assumption: if it has not selectable, means we sniffed it, means the extra flag is not applicable (it only applies to few truly never sent mobs)
-- like hyjal buildings
UPDATE creature_template SET ExtraFlags=ExtraFlags&~128 WHERE entry IN(22517,22515);
UPDATE creature_template SET ExtraFlags=ExtraFlags&~128 WHERE UnitFlags&0x2000000 AND entry NOT IN(18304);


