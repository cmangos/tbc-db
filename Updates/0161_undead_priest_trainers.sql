UPDATE `gossip_menu_option` SET `option_text`='I seek more training in the priestly ways.', `option_broadcast_text`=7157 WHERE `menu_id` IN (3645, 4531, 4532, 4533, 4543, 4544, 4545) AND `option_id`=5;
DELETE FROM `gossip_menu_option` WHERE menu_id=4533 AND id=0;
UPDATE `gossip_menu` SET `condition_id`=0 WHERE `text_id`=4439;
UPDATE `gossip_menu` SET `condition_id`=112 WHERE `text_id`=4442;

