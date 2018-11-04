-- Commander Ameer (20448)

UPDATE npc_text SET text0_0='The Ethereum were the ruling class of ethereal on my homeworld of K''aresh. Tragically, we were forced to evacuate K''aresh shortly before the void lord, Dimensius, unleashed his void armies upon the world and utterly decimated all that stood in his way. For this act, the Ethereum vowed vengeance. They have been tracking Dimensius ever since...$B$BThe Protectorate, however, were not a reaction to Dimensius. We were a reaction to Ethereum.' WHERE id=10059;
UPDATE npc_text SET text0_0='We feel that the Ethereum are as great a threat to our existence as Dimensius. Both must be stopped...' WHERE id=10061;

DELETE FROM gossip_menu WHERE entry IN (8123,8122,8121);
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(8123, 10059, 0, 0),
(8122, 10060, 0, 0),
(8121, 10061, 0, 0);

UPDATE gossip_menu_option SET action_menu_id=8123 WHERE menu_id=8120;

DELETE FROM gossip_menu_option WHERE menu_id IN (8123,8122,8121);
INSERT INTO `gossip_menu_option` (`menu_id`,`id`,`option_icon`,`option_text`,`option_id`,`npc_option_npcflag`,`action_menu_id`,`action_poi_id`,`action_script_id`,`box_coded`,`box_money`,`box_text`,`condition_id`) VALUES 
(8123, 0, 0, 'I don''t understand. What do you mean, Ameer?', 1, 1, 8122, 0, 0, 0, 0, '', 0),
(8122, 0, 0, 'So what is your purpose?', 1, 1, 8121, 0, 0, 0, 0, '', 0),
(8121, 0, 0, 'I think I understand now. Can I help with any of this? The Ethereum and void creatures are a threat to our survival as well.', 1, 1, 8120, 0, 0, 0, 0, '', 0);


