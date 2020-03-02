-- correct unitflags for attumen
UPDATE creature_template SET UnitFlags=64 WHERE entry IN(15550,16152);

