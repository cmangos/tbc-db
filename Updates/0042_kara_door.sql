-- Master's terrace door starts open instead of closed because it's not interactable
UPDATE `gameobject_template` SET `data0` = '1' WHERE `entry` IN ('184274', '184280');