-- Fixed faction of creatures 330 (Princess) and 390 (Porcine Entourage) in Elwynn Forest
-- Those creatures are neutral. Thanks Shubu for pointing. This closes #238 
-- Source: http://www.wowhead.com/npc=390/
-- http://www.wowhead.com/npc=330/
UPDATE `creature_template` SET `Faction` = 7 WHERE `entry` IN (330, 390);

