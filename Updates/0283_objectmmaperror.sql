-- Fix MMAP error for g.94114,94116,94115
DELETE FROM `gameobject` WHERE `guid` IN (94114,94116,94115); -- dublicate wrong x of 170011,170012,170013

