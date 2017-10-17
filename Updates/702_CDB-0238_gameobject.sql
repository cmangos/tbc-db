-- Updated respawn time of quest gameobject 13949 (Pitted Iron Chest) as it should not despawned
UPDATE `gameobject` SET `spawntimesecsmin` = 0, `spawntimesecsmax` = 0 WHERE `id` = 13949;

