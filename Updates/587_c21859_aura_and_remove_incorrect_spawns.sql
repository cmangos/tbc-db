-- Proper Aura for Slain Sha'tar Vindicator
UPDATE creature_template_addon SET auras='31261' WHERE entry=21859;

-- Creatures that are spawned from Netherweb Victim (c.22355) and should not be there otherwise
DELETE FROM creature WHERE guid IN(66478,66479) AND id=18470;
DELETE FROM creature WHERE guid=75712 AND id=21661;
DELETE FROM creature WHERE guid=74475 AND id=21242;
DELETE FROM creature_addon WHERE guid IN(66478,66479,75712,74475);
