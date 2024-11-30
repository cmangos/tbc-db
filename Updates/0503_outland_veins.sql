/*
https://www.wowhead.com/tbc/object=181555/fel-iron-deposit

https://www.wowhead.com/tbc/object=181556/adamantite-deposit
https://www.wowhead.com/tbc/object=181569/rich-adamantite-deposit - rest
https://www.wowhead.com/tbc/object=181570/rich-adamantite-deposit - nagrand only
https://www.wowhead.com/tbc/object=181557/khorium-vein

https://www.wowhead.com/tbc/object=185877/nethercite-deposit
*/

-- DELETE FROM gameobject WHERE Id IN(181555, 181556, 181569, 181570, 181557) AND map=530 AND position_x NOT BETWEEN 11400 AND 13100;