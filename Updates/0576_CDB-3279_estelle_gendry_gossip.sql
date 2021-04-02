-- Correct gossip menu option for NPC 6566 (Estelle Gendry) in Undercity
-- dbscripts_on_gossip 16101 missing in classic-d but same as 52402
UPDATE gossip_menu_option SET option_text="Mennet said I should ask you for a set of thieves' tools.", option_broadcast_text=2621 WHERE menu_id=161 AND id=1;

