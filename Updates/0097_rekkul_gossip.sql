-- fix condition locked vendor option for Rekkul <Poison Supplies> 3334
UPDATE gossip_menu_option SET condition_id=0 WHERE menu_id=12869 and id=0;


