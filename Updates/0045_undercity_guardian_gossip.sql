-- Move Love is in the Air gossip script to correct gossip_menu_option
-- Undercity Guardian 5624 gossip menu 2849: the Love is in the Air script 284901 (cast s.26924 on player)
-- was attached to "Locksmith" (option 14) instead of the "token of my love" option (15).
-- Same setup as the other capital guards, e.g. Stormwind menu 435: Locksmith without script, token options with script 43501.
-- Resolves https://github.com/cmangos/issues/issues/4110
UPDATE `gossip_menu_option` SET `action_script_id` = 0 WHERE `menu_id` = 2849 AND `id` = 14; -- Locksmith
UPDATE `gossip_menu_option` SET `action_script_id` = 284901 WHERE `menu_id` = 2849 AND `id` = 15; -- Here, I'd like to give you this token of my love.

