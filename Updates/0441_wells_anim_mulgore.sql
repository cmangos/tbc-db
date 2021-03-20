-- Note for Cala: The scripts for event ID 466 467 468 are missing entirely in CDB, port it
UPDATE gameobject SET spawntimesecsmin=-180,spawntimesecsmax=-180 WHERE guid IN(46424,46425,46429);

