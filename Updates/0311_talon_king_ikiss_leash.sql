-- migration of code from core to db
UPDATE creature_template SET Leash=70 WHERE entry IN(18473,20706);

