-- c.23141 should not have the gossip_menu_option to start the taxi. It should be done automatically by the q.11108 quest script (and it is)
DELETE FROM gossip_menu_option WHERE menu_id=8662;
DELETE FROM dbscripts_on_gossip WHERE id=866201;
