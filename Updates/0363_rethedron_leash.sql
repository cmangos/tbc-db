-- he has leashing disabled, hence he needs a radius leash instead
UPDATE creature_template SET Leash=120 WHERE entry IN(22357);

