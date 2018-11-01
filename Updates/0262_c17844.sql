-- Vindicator Aesom c.17844 did not have a TrainerClass assigned which prevented him from training paladins.
UPDATE `creature_template` SET `TrainerClass`=2 WHERE `Entry`=17844;
