-- Fixed spawn of gameobject 177964 (Fathom Stone) as it should not disspawn when looted
UPDATE `gameobject` SET `spawntimesecsmin` = 0, `spawntimesecsmax` = 0 WHERE `id` = 177964;

