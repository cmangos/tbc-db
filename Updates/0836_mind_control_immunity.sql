-- Lyranne Feathersong
UPDATE creature_template SET MechanicImmuneMask=1 WHERE Entry=2303;
-- Maethrya
UPDATE creature_template SET MechanicImmuneMask=1 WHERE Entry=11138;
-- Mishellena
UPDATE creature_template SET MechanicImmuneMask=1 WHERE Entry=12578;
-- Kroum, Jarrodenus
UPDATE creature_template SET MechanicImmuneMask=1|16 WHERE Entry IN (8610,12577);
-- Alexandra Constantine
UPDATE creature_template SET MechanicImmuneMask=1|16 WHERE Entry=8609;
-- Agent Proudwell
UPDATE creature_template SET UnitFlags=UnitFlags&~256, MechanicImmuneMask=1|16 WHERE Entry=19942;
-- Watcher Theronus
UPDATE creature_template SET MechanicImmuneMask=1|16 WHERE Entry=19567;


