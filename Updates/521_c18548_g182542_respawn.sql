-- Courier and the box he's guarding should have the same spawntime
UPDATE creature SET spawntimesecsmin=60, spawntimesecsmax=60 WHERE id=18548; -- Firewing Courier
UPDATE gameobject SET spawntimesecsmin=60, spawntimesecsmax=60 WHERE id=182542; -- Sealed Box
