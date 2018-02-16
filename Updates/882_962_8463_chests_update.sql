-- serpentbloom, trap should be invisible I think
UPDATE `gameobject_template` 
	SET `displayId`='0' 
	WHERE `entry`='19535';

-- Unstable Mana Crystal Crate, despawn when chest used
UPDATE `gameobject_template` 
	SET `data4`='1' 
	   ,`data5`='1'
	WHERE `entry`='181584';
