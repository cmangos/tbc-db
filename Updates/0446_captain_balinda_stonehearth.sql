-- Captain Balinda Stonehearth 11949
-- haste spell and interrupt immunity
UPDATE creature_template SET ExtraFlags=ExtraFlags|4194304, MechanicImmuneMask=MechanicImmuneMask|33554432 WHERE Entry IN (11949,22605);

-- Greater Water Elemental 25040
-- banish immunity
UPDATE creature_template SET MechanicImmuneMask=MechanicImmuneMask|131072 WHERE Entry=25040;


