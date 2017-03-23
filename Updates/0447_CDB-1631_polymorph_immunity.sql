-- Removed Polymorph immunity from NPC 11663 (Flamewaker Healer)
-- it will now be handled by SD2
UPDATE creature_template SET MechanicImmuneMask=MechanicImmuneMask&~65536 WHERE Entry=11663;

