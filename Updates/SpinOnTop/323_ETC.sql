-- Add missing gossip menus, which are in DB already
UPDATE creature_template SET GossipMenuId=9124 WHERE entry IN(23988);
UPDATE creature_template SET GossipMenuId=9129 WHERE entry IN(25200);
UPDATE creature_template SET GossipMenuId=9125 WHERE entry IN(25202);
UPDATE creature_template SET GossipMenuId=9128 WHERE entry IN(25207);


