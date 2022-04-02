DELETE FROM `gameobject` WHERE `guid` BETWEEN 110928 AND 110929;
DELETE FROM `pool_gameobject` WHERE `pool_entry` IN	(8934);
DELETE FROM `pool_template` WHERE `entry` IN 		(8934);
DELETE FROM `pool_pool` WHERE `pool_id` IN			(8934);

