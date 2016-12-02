-- ========================
-- Priest Racial Questlines
-- ========================
-- ----------------
-- Desperate Prayer - (Quests: 5634,5635,5636,5637,5638,5639) - (Spell ID: 13908,19236,19238,19240,19241,19242,19243,25437)
-- ----------------
DELETE FROM quest_template WHERE entry IN (5634,5635,5636,5637,5638,5639,5640); -- Remove Non-Existing Quests (Moved To Trainers in TBC - Then Removed Completely in 3.0.3)
DELETE FROM creature_questrelation WHERE quest IN (5634,5635,5636,5637,5638,5639,5640); -- Remove Non-Existing Quests (Moved To Trainers in TBC - Then Removed Completely in 3.0.3)
DELETE FROM creature_involvedrelation WHERE quest IN (5634,5635,5636,5637,5638,5639,5640); -- Remove Non-Existing Quests (Moved To Trainers in TBC - Then Removed Completely in 3.0.3)

-- *** ONLY FOR HUMAN AND DWARF RACES ***
DELETE FROM npc_trainer_template WHERE spell IN (13908,19236,19238,19240,19241,19242,19243,25437);
-- Rank 1 (13908)
insert into `npc_trainer_template` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) values('50','13908','100','0','0','10'); 
insert into `npc_trainer_template` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) values('51','13908','100','0','0','10'); 
insert into `npc_trainer_template` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) values('2040','13908','100','0','0','10'); 
-- Rank 2 (19236)
insert into `npc_trainer_template` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) values('51','19236','100','0','0','18'); 
insert into `npc_trainer_template` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) values('2040','19236','100','0','0','18'); 
-- Rank 3 (19238)
insert into `npc_trainer_template` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) values('51','19238','300','0','0','26'); 
insert into `npc_trainer_template` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) values('2040','19238','300','0','0','26'); 
-- Rank 4 (19240)
insert into `npc_trainer_template` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) values('51','19240','600','0','0','34'); 
insert into `npc_trainer_template` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) values('2040','19240','600','0','0','34'); 
-- Rank 5 (19241)
insert into `npc_trainer_template` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) values('51','19241','1100','0','0','42'); 
insert into `npc_trainer_template` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) values('2040','19241','1100','0','0','42'); 
-- Rank 6 (19242)
insert into `npc_trainer_template` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) values('51','19242','1500','0','0','50'); 
insert into `npc_trainer_template` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) values('2040','19242','1500','0','0','50'); 
-- Rank 7 (19243)
insert into `npc_trainer_template` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) values('51','19243','2200','0','0','58'); 
insert into `npc_trainer_template` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) values('2040','19243','2200','0','0','58'); 
-- Rank 8 (25437)
insert into `npc_trainer_template` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) values('51','25437','6500','0','0','66'); 
insert into `npc_trainer_template` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) values('2040','25437','6500','0','0','66'); 

-- Human and Dwarf Race Conditions
DELETE FROM conditions WHERE condition_entry IN (498);
insert into `conditions` (`condition_entry`, `type`, `value1`, `value2`) values('498','-2','293','295');

-- These Spells Can Only Be Trained By Humans or Dwarfs
UPDATE npc_trainer_template SET condition_id=498 WHERE spell IN (13908,19236,19238,19240,19241,19242,19243,25437);



-- ----------
-- Starshards - (Quests: 5628,5629,5630,5631,5632,5633) - (Spell ID: 10797,19296,19299,19302,19303,19304,19305,25446)
-- ----------
DELETE FROM quest_template WHERE entry IN (5628,5629,5630,5631,5632,5633); -- Remove Non-Existing Quests (Moved To Trainers in TBC - Then Removed Completely in 3.0.3)
DELETE FROM creature_questrelation WHERE quest IN (5628,5629,5630,5631,5632,5633); -- Remove Non-Existing Quests (Moved To Trainers in TBC - Then Removed Completely in 3.0.3)
DELETE FROM creature_involvedrelation WHERE quest IN (5628,5629,5630,5631,5632,5633); -- Remove Non-Existing Quests (Moved To Trainers in TBC - Then Removed Completely in 3.0.3)

-- *** ONLY FOR NIGHT ELF RACE ***
DELETE FROM npc_trainer_template WHERE spell IN (10797,19296,19299,19302,19303,19304,19305,25446);

-- Rank 1 (10797)
insert into `npc_trainer_template` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) values('50','10797','100','0','0','10'); 
insert into `npc_trainer_template` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) values('51','10797','100','0','0','10'); 
insert into `npc_trainer_template` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) values('2040','10797','100','0','0','10'); 
-- Rank 2 (19296)
insert into `npc_trainer_template` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) values('51','19296','100','0','0','18'); 
insert into `npc_trainer_template` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) values('2040','19296','100','0','0','18'); 
-- Rank 3 (19299)
insert into `npc_trainer_template` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) values('51','19299','300','0','0','26'); 
insert into `npc_trainer_template` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) values('2040','19299','300','0','0','26'); 
-- Rank 4 (19302)
insert into `npc_trainer_template` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) values('51','19302','600','0','0','34'); 
insert into `npc_trainer_template` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) values('2040','19302','600','0','0','34'); 
-- Rank 5 (19303)
insert into `npc_trainer_template` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) values('51','19303','1100','0','0','42'); 
insert into `npc_trainer_template` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) values('2040','19303','1100','0','0','42'); 
-- Rank 6 (19304)
insert into `npc_trainer_template` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) values('51','19304','1500','0','0','50'); 
insert into `npc_trainer_template` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) values('2040','19304','1500','0','0','50'); 
-- Rank 7 (19305)
insert into `npc_trainer_template` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) values('51','19305','2200','0','0','58'); 
insert into `npc_trainer_template` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) values('2040','19305','2200','0','0','58'); 
-- Rank 8 (25446)
insert into `npc_trainer_template` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) values('51','25446','6500','0','0','66'); 
insert into `npc_trainer_template` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) values('2040','25446','6500','0','0','66'); 

-- These Spells Can Only Be Trained By Night Elves
UPDATE npc_trainer_template SET condition_id=296 WHERE spell IN (10797,19296,19299,19302,19303,19304,19305,25446);



-- -----------------
-- Touch of Weakness - (Quests: 5658,5659,5660,5661,5662,5663) - (Spell ID: 2652,19261,19262,19264,19265,19266,25461)
-- -----------------
DELETE FROM quest_template WHERE entry IN (5658,5659,5660,5661,5662,5663,10379); -- Remove Non-Existing Quests (Moved To Trainers in TBC - Then Removed Completely in 3.0.3)
DELETE FROM creature_questrelation WHERE quest IN (5658,5659,5660,5661,5662,5663,10379); -- Remove Non-Existing Quests (Moved To Trainers in TBC - Then Removed Completely in 3.0.3)
DELETE FROM creature_involvedrelation WHERE quest IN (5658,5659,5660,5661,5662,5663,10379); -- Remove Non-Existing Quests (Moved To Trainers in TBC - Then Removed Completely in 3.0.3)

-- *** ONLY FOR UNDEAD AND BLOOD ELF RACES ***
DELETE FROM npc_trainer_template WHERE spell IN (2652,19261,19262,19264,19265,19266,25461);

-- Rank 1 (2943)
insert into `npc_trainer_template` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) values('50','2652','150','0','0','10'); 
insert into `npc_trainer_template` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) values('51','2652','150','0','0','10'); 
insert into `npc_trainer_template` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) values('2040','2652','150','0','0','10'); 
-- Rank 2 (19249)
insert into `npc_trainer_template` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) values('51','19261','150','0','0','20'); 
insert into `npc_trainer_template` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) values('2040','19261','150','0','0','20'); 
-- Rank 3 (19251)
insert into `npc_trainer_template` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) values('51','19262','500','0','0','30'); 
insert into `npc_trainer_template` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) values('2040','19262','500','0','0','30'); 
-- Rank 4 (19252)
insert into `npc_trainer_template` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) values('51','19264','900','0','0','40'); 
insert into `npc_trainer_template` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) values('2040','19264','900','0','0','40'); 
-- Rank 5 (19253)
insert into `npc_trainer_template` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) values('51','19265','1500','0','0','50'); 
insert into `npc_trainer_template` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) values('2040','19265','1500','0','0','50'); 
-- Rank 6 (19254)
insert into `npc_trainer_template` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) values('51','19266','2300','0','0','60'); 
insert into `npc_trainer_template` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) values('2040','19266','2300','0','0','60'); 
-- Rank 7 (25460)
insert into `npc_trainer_template` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) values('51','25461','6500','0','0','70'); 
insert into `npc_trainer_template` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) values('2040','25461','6500','0','0','70'); 

-- Undead and Blood Elf Race Conditions
DELETE FROM conditions WHERE condition_entry IN (499);
insert into `conditions` (`condition_entry`, `type`, `value1`, `value2`) values('499','-2','297','301');

-- These Spells Can Only Be Trained By Undead or Blood Elfs
UPDATE npc_trainer_template SET condition_id=499 WHERE spell IN (2652,19261,19262,19264,19265,19266,25461);

-- ---------------
-- Hex of Weakness - (Quests: 5652,5654,5655,5656,5657) - (Spells: 9035,19281,19282,19283,19284,19285,25470)
-- ---------------
DELETE FROM quest_template WHERE entry IN (5652,5654,5655,5656,5657); -- Remove Non-Existing Quests (Moved To Trainers in TBC - Then Removed Completely in 3.0.3)
DELETE FROM creature_questrelation WHERE quest IN (5652,5654,5655,5656,5657); -- Remove Non-Existing Quests (Moved To Trainers in TBC - Then Removed Completely in 3.0.3)
DELETE FROM creature_involvedrelation WHERE quest IN (5652,5654,5655,5656,5657); -- Remove Non-Existing Quests (Moved To Trainers in TBC - Then Removed Completely in 3.0.3)

-- *** ONLY FOR TROLL RACES ***
DELETE FROM npc_trainer_template WHERE spell IN (9035,19281,19282,19283,19284,19285,25470);

-- Rank 1 (9035)
insert into `npc_trainer_template` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) values('50','9035','150','0','0','10'); 
insert into `npc_trainer_template` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) values('51','9035','150','0','0','10'); 
insert into `npc_trainer_template` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) values('2040','9035','150','0','0','10'); 
-- Rank 2 (19281)
insert into `npc_trainer_template` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) values('51','19281','150','0','0','20'); 
insert into `npc_trainer_template` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) values('2040','19281','150','0','0','20'); 
-- Rank 3 (19282)
insert into `npc_trainer_template` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) values('51','19282','500','0','0','30'); 
insert into `npc_trainer_template` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) values('2040','19282','500','0','0','30'); 
-- Rank 4 (19283)
insert into `npc_trainer_template` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) values('51','19283','900','0','0','40'); 
insert into `npc_trainer_template` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) values('2040','19283','900','0','0','40'); 
-- Rank 5 (19284)
insert into `npc_trainer_template` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) values('51','19284','1500','0','0','50'); 
insert into `npc_trainer_template` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) values('2040','19284','1500','0','0','50'); 
-- Rank 6 (19285)
insert into `npc_trainer_template` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) values('51','19285','2300','0','0','60'); 
insert into `npc_trainer_template` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) values('2040','19285','2300','0','0','60'); 
-- Rank 7 (25470)
insert into `npc_trainer_template` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) values('51','25470','6500','0','0','70'); 
insert into `npc_trainer_template` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) values('2040','25470','6500','0','0','70'); 

-- These Spells Can Only Be Trained By Trolls
UPDATE npc_trainer_template SET condition_id=300 WHERE spell IN (9035,19281,19282,19283,19284,19285,25470);



-- --------------
-- Symbol of Hope (Quest: 10376) - (Spell: 32548)
-- --------------
DELETE FROM quest_template WHERE entry IN (10376); -- Remove Non-Existing Quests (Moved To Trainers in TBC - Then Removed Completely in 3.0.3)
DELETE FROM creature_questrelation WHERE quest IN (10376); -- Remove Non-Existing Quests (Moved To Trainers in TBC - Then Removed Completely in 3.0.3)
DELETE FROM creature_involvedrelation WHERE quest IN (10376); -- Remove Non-Existing Quests (Moved To Trainers in TBC - Then Removed Completely in 3.0.3)

-- *** ONLY FOR Draenei Race ***
DELETE FROM npc_trainer_template WHERE spell IN (32548);

-- Symbol of Hope (32548)
insert into `npc_trainer_template` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) values('50','32548','150','0','0','10'); 
insert into `npc_trainer_template` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) values('51','32548','150','0','0','10'); 
insert into `npc_trainer_template` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) values('2040','32548','150','0','0','10'); 

-- These Spells Can Only Be Trained By Draenei
UPDATE npc_trainer_template SET condition_id=302 WHERE spell IN (32548);





-- --------
-- Chastise - (Spell: 44041,44043,44044,44045,44046,44047)
-- --------
-- *** ONLY FOR Dwarf and Draenei RACES ***
DELETE FROM npc_trainer_template WHERE spell IN (44041,44043,44044,44045,44046,44047);

-- Rank 1 (44041)
insert into `npc_trainer_template` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) values('51','44041','150','0','0','20'); 
insert into `npc_trainer_template` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) values('2040','44041','150','0','0','20'); 
-- Rank 2 (44043)
insert into `npc_trainer_template` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) values('51','44043','500','0','0','30'); 
insert into `npc_trainer_template` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) values('2040','44043','500','0','0','30'); 
-- Rank 3 (44044)
insert into `npc_trainer_template` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) values('51','44044','900','0','0','40'); 
insert into `npc_trainer_template` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) values('2040','44044','900','0','0','40'); 
-- Rank 4 (44045)
insert into `npc_trainer_template` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) values('51','44045','1500','0','0','50'); 
insert into `npc_trainer_template` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) values('2040','44045','1500','0','0','50'); 
-- Rank 5 (44046)
insert into `npc_trainer_template` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) values('51','44046','2300','0','0','60'); 
insert into `npc_trainer_template` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) values('2040','44046','2300','0','0','60'); 
-- Rank 6 (44047)
insert into `npc_trainer_template` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) values('51','44047','6500','0','0','70'); 
insert into `npc_trainer_template` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) values('2040','44047','6500','0','0','70'); 

-- Dwarf and Draeni Race Conditions
DELETE FROM conditions WHERE condition_entry IN (500);
insert into `conditions` (`condition_entry`, `type`, `value1`, `value2`) values('500','-2','295','302');

-- These Spells Can Only Be Trained By Dwarf or Draenei
UPDATE npc_trainer_template SET condition_id=500 WHERE spell IN (44041,44043,44044,44045,44046,44047);




-- --------
-- Feedback - (Spell: 13896)
-- --------
DELETE FROM quest_template WHERE entry IN (5676,5677,5678); -- Remove Non-Existing Quests (Moved To Trainers in TBC - Then Removed Completely in 3.0.3)
DELETE FROM creature_questrelation WHERE quest IN (5676,5677,5678); -- Remove Non-Existing Quests (Moved To Trainers in TBC - Then Removed Completely in 3.0.3)
DELETE FROM creature_involvedrelation WHERE quest IN (5676,5677,5678); -- Remove Non-Existing Quests (Moved To Trainers in TBC - Then Removed Completely in 3.0.3)

-- *** ONLY FOR HUMAN RACES ***
DELETE FROM npc_trainer_template WHERE spell IN (13896,19271,19273,19274,19275,25441);

-- Rank 1 (44041)
insert into `npc_trainer_template` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) values('51','13896','150','0','0','20'); 
insert into `npc_trainer_template` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) values('2040','13896','150','0','0','20'); 
-- Rank 2 (44043)
insert into `npc_trainer_template` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) values('51','19271','500','0','0','30'); 
insert into `npc_trainer_template` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) values('2040','19271','500','0','0','30'); 
-- Rank 3 (44044)
insert into `npc_trainer_template` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) values('51','19273','900','0','0','40'); 
insert into `npc_trainer_template` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) values('2040','19273','900','0','0','40'); 
-- Rank 4 (44045)
insert into `npc_trainer_template` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) values('51','19274','1500','0','0','50'); 
insert into `npc_trainer_template` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) values('2040','19274','1500','0','0','50'); 
-- Rank 5 (44046)
insert into `npc_trainer_template` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) values('51','19275','2300','0','0','60'); 
insert into `npc_trainer_template` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) values('2040','19275','2300','0','0','60'); 
-- Rank 6 (44047)
insert into `npc_trainer_template` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) values('51','25441','6500','0','0','70'); 
insert into `npc_trainer_template` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) values('2040','25441','6500','0','0','70'); 

-- These Spells Can Only Be Trained By Dwarf or Draenei
UPDATE npc_trainer_template SET condition_id=293 WHERE spell IN (13896,19271,19273,19274,19275,25441);



-- --------------
-- Elune's Grace - (Quest: 5672,5673,5674,5675) - (Spell: 2651)
-- --------------
DELETE FROM quest_template WHERE entry IN (5672,5673,5674,5675); -- Remove Non-Existing Quests (Moved To Trainers in TBC - Then Removed Completely in 3.0.3)
DELETE FROM creature_questrelation WHERE quest IN (5672,5673,5674,5675); -- Remove Non-Existing Quests (Moved To Trainers in TBC - Then Removed Completely in 3.0.3)
DELETE FROM creature_involvedrelation WHERE quest IN (5672,5673,5674,5675); -- Remove Non-Existing Quests (Moved To Trainers in TBC - Then Removed Completely in 3.0.3)

-- *** ONLY FOR Night Elf RACES ***
DELETE FROM npc_trainer_template WHERE spell IN (2651);

-- Symbol of Hope (2651)
insert into `npc_trainer_template` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) values('51','2651','150','0','0','20'); 
insert into `npc_trainer_template` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) values('2040','2651','150','0','0','20'); 

-- These Spells Can Only Be Trained By Night Elf
UPDATE npc_trainer_template SET condition_id=296 WHERE spell IN (2651);




-- ----------------
-- Devouring Plague - (Quest: 5644,5646,5679) - (Spell: 2944,19276,19277,19278,19279,19280,25467)
-- ----------------
DELETE FROM quest_template WHERE entry IN (5644,5646,5679); -- Remove Non-Existing Quests (Moved To Trainers in TBC - Then Removed Completely in 3.0.3)
DELETE FROM creature_questrelation WHERE quest IN (5644,5646,5679); -- Remove Non-Existing Quests (Moved To Trainers in TBC - Then Removed Completely in 3.0.3)
DELETE FROM creature_involvedrelation WHERE quest IN (5644,5646,5679); -- Remove Non-Existing Quests (Moved To Trainers in TBC - Then Removed Completely in 3.0.3)

-- *** ONLY FOR UNDEAD RACES ***
DELETE FROM npc_trainer_template WHERE spell IN (2944,19276,19277,19278,19279,19280,25467);

-- Rank 1 (2944)
insert into `npc_trainer_template` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) values('51','2944','100','0','0','20'); 
insert into `npc_trainer_template` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) values('2040','2944','100','0','0','20'); 
-- Rank 2 (19276)
insert into `npc_trainer_template` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) values('51','19276','400','0','0','28'); 
insert into `npc_trainer_template` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) values('2040','19276','400','0','0','28'); 
-- Rank 3 (19277)
insert into `npc_trainer_template` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) values('51','19277','700','0','0','36'); 
insert into `npc_trainer_template` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) values('2040','19277','700','0','0','36'); 
-- Rank 4 (19278)
insert into `npc_trainer_template` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) values('51','19278','1200','0','0','44'); 
insert into `npc_trainer_template` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) values('2040','19278','1200','0','0','44'); 
-- Rank 5 (19279)
insert into `npc_trainer_template` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) values('51','19279','1900','0','0','52'); 
insert into `npc_trainer_template` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) values('2040','19279','1900','0','0','52'); 
-- Rank 6 (19280)
insert into `npc_trainer_template` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) values('51','19280','2300','0','0','60'); 
insert into `npc_trainer_template` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) values('2040','19280','2300','0','0','60'); 
-- Rank 7 (25467)
insert into `npc_trainer_template` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) values('51','25467','6500','0','0','68'); 
insert into `npc_trainer_template` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) values('2040','25467','6500','0','0','68'); 

-- These Spells Can Only Be Trained By Undead
UPDATE npc_trainer_template SET condition_id=297 WHERE spell IN (2944,19276,19277,19278,19279,19280,25467);



-- -----------
-- Shadowguard - (Quest: 5642,5643,5680) - (Spell: 18137,19308,19309,19310,19311,19312,25477)
-- -----------
DELETE FROM quest_template WHERE entry IN (5642,5643,5680); -- Remove Non-Existing Quests (Moved To Trainers in TBC - Then Removed Completely in 3.0.3)
DELETE FROM creature_questrelation WHERE quest IN (5642,5643,5680); -- Remove Non-Existing Quests (Moved To Trainers in TBC - Then Removed Completely in 3.0.3)
DELETE FROM creature_involvedrelation WHERE quest IN (5642,5643,5680); -- Remove Non-Existing Quests (Moved To Trainers in TBC - Then Removed Completely in 3.0.3)

DELETE FROM npc_trainer_template WHERE spell IN (18137,19308,19309,19310,19311,19312,25477);

-- Rank 1 (18137)
insert into `npc_trainer_template` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) values('51','18137','100','0','0','20'); 
insert into `npc_trainer_template` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) values('2040','18137','100','0','0','20'); 
-- Rank 2 (19308)
insert into `npc_trainer_template` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) values('51','19308','400','0','0','28'); 
insert into `npc_trainer_template` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) values('2040','19308','400','0','0','28'); 
-- Rank 3 (19309)
insert into `npc_trainer_template` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) values('51','19309','700','0','0','36'); 
insert into `npc_trainer_template` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) values('2040','19309','700','0','0','36'); 
-- Rank 4 (19310)
insert into `npc_trainer_template` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) values('51','19310','1200','0','0','44'); 
insert into `npc_trainer_template` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) values('2040','19310','1200','0','0','44'); 
-- Rank 5 (19311)
insert into `npc_trainer_template` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) values('51','19311','1900','0','0','52'); 
insert into `npc_trainer_template` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) values('2040','19311','1900','0','0','52'); 
-- Rank 6 (19312)
insert into `npc_trainer_template` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) values('51','19312','2300','0','0','60'); 
insert into `npc_trainer_template` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) values('2040','19312','2300','0','0','60'); 
-- Rank 7 (25477)
insert into `npc_trainer_template` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) values('51','25477','6500','0','0','68'); 
insert into `npc_trainer_template` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) values('2040','25477','6500','0','0','68'); 

-- These Spells Can Only Be Trained By Undead
UPDATE npc_trainer_template SET condition_id=300 WHERE spell IN (18137,19308,19309,19310,19311,19312,25477);



-- -------------
-- Consume Magic - (Quest: 10378) - (Spell: 32676)
-- -------------
DELETE FROM quest_template WHERE entry IN (10378); -- Remove Non-Existing Quests (Moved To Trainers in TBC - Then Removed Completely in 3.0.3)
DELETE FROM creature_questrelation WHERE quest IN (10378); -- Remove Non-Existing Quests (Moved To Trainers in TBC - Then Removed Completely in 3.0.3)
DELETE FROM creature_involvedrelation WHERE quest IN (10378); -- Remove Non-Existing Quests (Moved To Trainers in TBC - Then Removed Completely in 3.0.3)

DELETE FROM npc_trainer_template WHERE spell IN (32676);

-- Consume Magic (32676)
insert into `npc_trainer_template` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) values('51','32676','150','0','0','20'); 
insert into `npc_trainer_template` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) values('2040','32676','150','0','0','20'); 

-- These Spells Can Only Be Trained By Blood Elf
UPDATE npc_trainer_template SET condition_id=301 WHERE spell IN (32676);



