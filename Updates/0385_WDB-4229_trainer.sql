-- Price is different for npc
 UPDATE `npc_trainer` SET `spellcost` = '100', `spell` = 25245 WHERE `spell` =25229; -- 25245 in wotlk
 UPDATE `npc_trainer_template` SET `spellcost` = '100', `spell` = 25245 WHERE `spell` =25229;
 
-- Wrong spell in databases : WOTLK, TBC
UPDATE `npc_trainer` SET `spell` = '2154' WHERE `spell` =3104;
UPDATE `npc_trainer_template` SET `spell` = '2154' WHERE `spell` =3104;

