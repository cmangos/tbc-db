-- Move to wotlk-db used range, wotlk-db seemingly ported wotlk-db unique gos to 5309000+ range so keep this free
UPDATE `gameobject` SET `guid` = `guid` + 34 WHERE `guid` BETWEEN 5309468 AND 5309489;
UPDATE `pool_gameobject` SET `guid` = `guid` + 34 WHERE `guid` BETWEEN 5309468 AND 5309489;

