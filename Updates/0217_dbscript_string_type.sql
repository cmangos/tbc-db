-- Fix type for text emotes used by c.21291
UPDATE dbscript_string SET type=2 WHERE entry IN(2000006008,2000006010);

