-- https://jira.vengeancewow.com/browse/TBC-1201
-- All Ashtongue Warriors share same equipment and respawn timers
UPDATE creature SET spawntimesecsmin=300, spawntimesecsmax=300, equipment_id=0 WHERE id=21454;


