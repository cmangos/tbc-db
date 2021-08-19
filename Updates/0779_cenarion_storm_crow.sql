-- Cenarion Storm Crow should not be a static spawn
-- Instead, should be triggered somehow via one of the following creatures:
-- "Air Force Trip Wire - Rooftop (Cenarion Expedition)" 22126
-- "Air Force Guard Post (Cenarion - Stormcrow)" 22125
-- "Air Force Alarm Bot (Cenarion)" 22124
DELETE FROM creature WHERE guid=84368 AND id=22122;


