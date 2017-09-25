-- Issue TBC-1352 'Gathering Leather' quest from Veren Tallstrider
-- http://jira.vengeancewow.com/projects/TBC/issues/TBC-1352?filter=allopenissues
-- Source: http://wowwiki.wikia.com/wiki/Quest:Gathering_Leather
-- 100% Tested local and working
 
-- Update quest_template, set skinning as requirement for quest Gathering Leather
 
UPDATE `quest_template` SET `RequiredSkill`='393', `RequiredSkillValue`='1' WHERE  `entry`=768;


