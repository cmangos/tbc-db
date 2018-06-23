UPDATE `creature_template` SET `UnitFlags` = UnitFlags|514 WHERE `entry` IN (15919, 15923, 15926, 15927, 15944, 15948, 15955, 15959, 17707, 17708, 17709, 17710, 26240, 26242, 26243, 26244); -- make JC pets passive/unattackable

UPDATE `creature_template` SET `NpcFlags` = 83 WHERE `entry` IN (7869,7868); -- make trainers prof trainers as well

-- http://jira.vengeancewow.com/browse/TBC-1830
UPDATE `creature_template` SET `EquipmentTemplateId` = 0 WHERE `entry` = 4054;


/* 
http://jira.vengeancewow.com/browse/TBC-1746 
This was actually bug in retail at some point...
See comments here:
http://www.wowhead.com/quest=1045/a-new-adornment
http://www.wowhead.com/quest=1046/true-power-of-the-rod
ReqSourceId1 must be set to ensure skull drops while player is doing 1045.
ReqSourceCount1 must be 0 because otherwise, Skull is removed from player's inventory when starting 1046.
*/
UPDATE `quest_template` SET `ReqSourceId1` = 5388, `ReqSourceCount1` = 0 WHERE `entry` = 1045;

/*
http://jira.vengeancewow.com/browse/TBC-1368
This one is a little tricky because there a few quests called Vile Familiars.
792 is warlock only quest (this works fine already)
1499 is the quest user is talking about. This should be available to all Horde EXCEPT Warlock class. Warlocks do 792 instead of 1499. 
*/
UPDATE `quest_template` SET `RequiredClasses` = 1247, `RequiredRaces` = 690 WHERE `entry` = 792;


/*
http://jira.vengeancewow.com/browse/TBC-1625
Spawn time for all of them is currently 30 mins.
I have no evidence to back this up, but perhaps it should be set a bit lower. 
Change to 15 mins?
http://www.wowhead.com/quest=206/maizoth 
*/
UPDATE `creature` SET `spawntimesecs` = 900 WHERE `id` IN (678,679,680,709,710,723);

/*
http://jira.vengeancewow.com/browse/TBC-1790
Same deal with this one, gameobject has 15 min respawn, but maybe should be less. 
Other "Night Elf Plans" for this quest have 3 min respawn.
I think they all should match.
*/
UPDATE `gameobject` SET `spawntimesecs` = 180 WHERE `id` IN (181138,181139);

-- http://jira.vengeancewow.com/browse/TBC-1799 
UPDATE `creature_template` SET `Armor` = 6116, `MinMeleeDmg` = 214, `MaxMeleeDmg` = 301, `MeleeAttackPower` = 276, `DamageMultiplier` = 1, `MinRangedDmg` = 179, `MaxRangedDmg` = 266 WHERE `entry` = 22025;



