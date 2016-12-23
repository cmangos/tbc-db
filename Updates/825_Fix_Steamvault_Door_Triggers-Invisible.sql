-- Infernal trigger for Steamvaults doors is visible to players
UPDATE creature_template SET UnitFlags=33555200, ExtraFlags=130 WHERE entry IN (20926);

