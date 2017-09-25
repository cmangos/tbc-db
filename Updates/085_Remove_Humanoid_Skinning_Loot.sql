-- Issue TBC-1356 Tirisfall glades skinning humans that give Blue dragonscale
-- http://jira.vengeancewow.com/projects/TBC/issues/TBC-1356?filter=allopenissues
-- 100% Tested local and working
 
-- Update creature_template, set no skin loot for humanoid - Scarlet Bodyguard

UPDATE `creature_template` SET `SkinningLootId`='0' WHERE  `Entry`=1660;


