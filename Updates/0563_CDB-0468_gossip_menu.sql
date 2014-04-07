/* Create the gossip menus
Object:180453 Hive'Regal Glyphed Crystal - Rubbing Item 20456 - Gossip Menu 6561
Object:180454 Hive'Ashi Glyphed Crystal - Rubbing Item 20455 -  Gossip Menu 6560
Object:180455 Hive'Zora Glyphed Crystal - Rubbing Item 20454 - Gossip Menu 6559
*/
UPDATE `gossip_menu_option` SET `action_menu_id` = -1 WHERE `menu_id` IN (6559,6560,6561);

