-- Thanks scotty0100 for pointing and fixing all of these
-- Updated Orgrimmar Battlemaster gossip to replace placeholder gossip menu option by correct value.
UPDATE `gossip_menu_option` SET `option_text` = 'I wish to join the battle!' WHERE `option_text` = 'GOSSIP_OPTION_BATTLEFIELD';

