-- Shattered Hand Executioner should have varied loot based on performance in Shattered Halls
-- http://www.wowhead.com/npc=17301/shattered-hand-executioner#comments

DELETE FROM `reference_loot_template` where `entry` IN (40056,40057,40058,40059);
INSERT INTO `reference_loot_template` (`entry`,`item`,`ChanceOrQuestChance`,`groupid`,`mincountOrRef`,`maxcount`,`condition_id`,`comments`) VALUES 
-- all prisoners alive
(40056,22451,0,1,4,6,0,'Primal Air'),
(40056,22452,0,1,4,6,0,'Primal Earth'),
(40056,22456,0,1,4,6,0,'Primal Shadow'),
(40056,22457,0,1,4,6,0,'Primal Mana'),
(40056,21884,0,1,4,6,0,'Primal Fire'),
(40056,21885,0,1,4,6,0,'Primal Water'),
(40056,21886,0,1,4,6,0,'Primal Life'),
(40056,22829,0,2,6,9,0,'Superior Healing Potion'),
(40056,22832,0,3,6,9,0,'Superior Mana Potion'),
(40056,29434,0,4,1,1,0,'Badge of Justice'),
-- 2 prisoners left
(40057,22451,0,1,2,4,0,'Primal Air'),
(40057,22452,0,1,2,4,0,'Primal Earth'),
(40057,22456,0,1,2,4,0,'Primal Shadow'),
(40057,22457,0,1,2,4,0,'Primal Mana'),
(40057,21884,0,1,2,4,0,'Primal Fire'),
(40057,21885,0,1,2,4,0,'Primal Water'),
(40057,21886,0,1,2,4,0,'Primal Life'),
(40057,22829,0,2,3,5,0,'Superior Healing Potion'),
(40057,22832,0,3,3,5,0,'Superior Mana Potion'),
-- 1 prisoner left
(40058,22451,0,1,1,2,0,'Primal Air'),
(40058,22452,0,1,1,2,0,'Primal Earth'),
(40058,22456,0,1,1,2,0,'Primal Shadow'),
(40058,22457,0,1,1,2,0,'Primal Mana'),
(40058,21884,0,1,1,2,0,'Primal Fire'),
(40058,21885,0,1,1,2,0,'Primal Water'),
(40058,21886,0,1,1,2,0,'Primal Life'),
(40058,22829,0,2,2,4,0,'Superior Healing Potion'),
(40058,22832,0,3,2,4,0,'Superior Mana Potion'),
-- all prisoners dead
(40059,22451,0,1,1,1,0,'Primal Air'),
(40059,22452,0,1,1,1,0,'Primal Earth'),
(40059,22456,0,1,1,1,0,'Primal Shadow'),
(40059,22457,0,1,1,1,0,'Primal Mana'),
(40059,21884,0,1,1,1,0,'Primal Fire'),
(40059,21885,0,1,1,1,0,'Primal Water'),
(40059,21886,0,1,1,1,0,'Primal Life'),
(40059,22829,0,2,1,1,0,'Superior Healing Potion'),
(40059,22832,0,3,1,1,0,'Superior Mana Potion');

DELETE FROM `creature_loot_template` WHERE `entry` = 20585;
INSERT INTO `creature_loot_template` (`entry`,`item`,`ChanceOrQuestChance`,`groupid`,`mincountOrRef`,`maxcount`,`condition_id`,`comments`) VALUES 
(20585,31716,-100,0,1,1,0,'Unused Axe of the Executioner'),
(20585,50604,1,0,-50604,1,0,'NPC LOOT (White World Drop) - (Item Levels: 70 (Scrolls V)) - (NPC Levels 58-72) - TBC NPC ONLY'),
(20585,40056,100,0,-40056,1,245,'Shattered Hand Executioner (3 Prisoners Alive)'),
(20585,40057,100,0,-40057,1,244,'Shattered Hand Executioner (2 Prisoners Alive)'),
(20585,40058,100,0,-40058,1,243,'Shattered Hand Executioner (1 Prisoner Alive)'),
(20585,40059,100,0,-40059,1,720,'Shattered Hand Executioner (0 Prisoners Alive)');

DELETE FROM `conditions` WHERE `condition_entry` IN (720);
INSERT INTO `conditions` (`condition_entry`,`type`,`value1`,`value2`) VALUES 
(720,18,0,0); -- drop if 0 alive

