-- Fixed faction and rank of creature 2606 (Nimar the Slayer <Warband Leader>)
-- He is now a rare Witherbark troll instead of an elite rare wolf beast.
-- Source: http://wowpedia.org/index.php?title=Nimar_the_Slayer&oldid=2237698
UPDATE `creature_template` SET `FactionAlliance` = 654, `FactionHorde` = 654 WHERE `entry` = 2606;

