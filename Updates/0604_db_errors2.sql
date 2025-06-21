/*
Table `dbscripts_on_creature_movement` for script id 1985103 has buddy defined by guid (SCRIPT_FLAG_BUDDY_BY_GUID 16 set) but no npc spawned with guid 70612, skipping.
Table `dbscripts_on_creature_movement` for script id 1985103 has buddy defined by guid (SCRIPT_FLAG_BUDDY_BY_GUID 16 set) but no npc spawned with guid 70613, skipping.
Table `dbscripts_on_creature_movement` for script id 1985103 has buddy defined by guid (SCRIPT_FLAG_BUDDY_BY_GUID 16 set) but no npc spawned with guid 70614, skipping.
Table `dbscripts_on_creature_movement` for script id 1985103 has buddy defined by guid (SCRIPT_FLAG_BUDDY_BY_GUID 16 set) but no npc spawned with guid 70615, skipping.
Table `dbscripts_on_creature_movement` for script id 1985103 has buddy defined by guid (SCRIPT_FLAG_BUDDY_BY_GUID 16 set) but no npc spawned with guid 70009, skipping.
*/

UPDATE dbscripts_on_creature_movement SET search_radius=5306100+824 WHERE search_radius=70612 AND id=1985103;
UPDATE dbscripts_on_creature_movement SET search_radius=5306100+825 WHERE search_radius=70613 AND id=1985103;
UPDATE dbscripts_on_creature_movement SET search_radius=5306100+823 WHERE search_radius=70614 AND id=1985103;
UPDATE dbscripts_on_creature_movement SET search_radius=5306100+826 WHERE search_radius=70615 AND id=1985103;
UPDATE dbscripts_on_creature_movement SET search_radius=5306100+822 WHERE search_radius=70009 AND id=1985103;
