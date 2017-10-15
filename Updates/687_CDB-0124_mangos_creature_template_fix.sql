-- ** AQ WAR EFFORT ** --
--  War Effort Commanders Now Have Their Correct Mounts  --
DELETE FROM creature_template_addon WHERE entry IN(15701,15700,15458,15539);
INSERT INTO `creature_template_addon` (`entry`,`mount`) VALUES
(15701,14347),
(15700,14573),
(15458,14346),
(15539,14575);

