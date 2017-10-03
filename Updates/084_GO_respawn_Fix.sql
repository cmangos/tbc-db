-- Issue TBC-1354 Lock boxes on ship south of ratchet
-- http://jira.vengeancewow.com/projects/TBC/issues/TBC-1354?filter=allopenissues
 
UPDATE `gameobject_template` SET `data2`='0' WHERE  `entry` IN (123330, 123331);
 
UPDATE `gameobject` SET `spawntimesecs`='5' WHERE  `guid` IN (15122,15121,15119,15683,15125,15120,15145,15123);


