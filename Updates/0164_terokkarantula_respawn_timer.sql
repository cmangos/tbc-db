-- fix terokkarantula respawn time
UPDATE creature SET spawntimesecsmin=240,spawntimesecsmax=240 WHERE id IN(20682);

