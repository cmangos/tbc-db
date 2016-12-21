-- =======================================================
-- Fix First Aid Trainer Required Skill Levels for Recipes - WoWWiki Data: http://wowwiki.wikia.com/wiki/First_Aid?oldid=1623159
-- =======================================================
DELETE FROM npc_trainer_template WHERE entry IN (1100);
insert into `npc_trainer_template` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`, `condition_id`) values('1100','3273','100','0','0','0','0');
insert into `npc_trainer_template` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`, `condition_id`) values('1100','3276','100','129','40','0','0');
insert into `npc_trainer_template` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`, `condition_id`) values('1100','3274','500','129','50','0','0');
insert into `npc_trainer_template` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`, `condition_id`) values('1100','7934','250','129','80','0','0');
insert into `npc_trainer_template` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`, `condition_id`) values('1100','3277','250','129','80','0','0');
insert into `npc_trainer_template` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`, `condition_id`) values('1100','3278','1000','129','115','0','0');
insert into `npc_trainer_template` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`, `condition_id`) values('1100','7928','5000','129','150','0','0');
insert into `npc_trainer_template` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`, `condition_id`) values('1100','10841','30000','129','240','0','0');
insert into `npc_trainer_template` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`, `condition_id`) values('1100','18629','30000','129','260','0','0');
insert into `npc_trainer_template` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`, `condition_id`) values('1100','18630','50000','129','290','0','0');






