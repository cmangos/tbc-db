-- Fix for https://classic.wowhead.com/npc=5158/tilli-thistlefuzz
UPDATE gossip_menu_option SET condition_id=0 WHERE menu_id IN(12854) AND id IN(0);

