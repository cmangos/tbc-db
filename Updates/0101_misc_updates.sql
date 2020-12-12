-- cleanup of one point long move paths generally used for scripting purposes
-- these are all safe to assume 5 or 10 seconds
UPDATE creature_movement SET waittime=5000 WHERE id IN (5301125,5301126,5301127,69880,151242,3345,3346,3347,3348,6523,6524,6525,6526,6527,7372,7373,7374,7375,7376);
UPDATE creature_movement SET waittime=10000 WHERE id IN (31050,31074,31072,31641,31639,31645,30923);
UPDATE creature_movement_template SET waittime=5000 WHERE entry=19259;
DELETE FROM creature_movement WHERE id=57966; -- has follow movement linking to another npc
DELETE FROM creature_movement WHERE id IN (326,4522); -- nonsensical, likely an error
UPDATE creature SET spawndist=5, MovementType=1 WHERE guid IN (326,4522);

-- adjust black lotus respawn timer
UPDATE gameobject SET spawntimesecsmin=2700, spawntimesecsmax=4500 WHERE id=176589;

-- remove faulty condition on Golnir Bouldertoe and Chepi vendor option
UPDATE gossip_menu_option SET condition_id=0 WHERE menu_id IN (12851,12856) AND id=0;
-- additional NPCs with the same problem - this gossip menu option should not have a condition
UPDATE gossip_menu_option SET condition_id=0 WHERE menu_id IN (12850,12852,12853,12855,12857,12858,12859,12868) AND id=0 AND condition_id=474;

UPDATE creature_template SET ExtraFlags=ExtraFlags|4096 WHERE Entry=21417; -- Invis Infernal Caster

-- classic-db npc_text: On the northern dock, you can board a ship that will carry you to Rut'theran Village and Darnassus. From the southern dock, you can find passage across the Great Sea to Menethil Harbor on Khaz Modan. Safe journeys to you!
-- broadcast text id 8106 (matches): On the northern dock, you can board a ship that will carry you to Rut'theran Village and Darnassus.  From the southern dock, you can find passage across the Great Sea to Menethil Harbor on Khaz Modan.  Safe journeys to you!
-- TBC version should probably mention Azuremyst but not Stormwind Harbor?
-- trinity broadcast text id 8106 (wotlk+ version): On the northern dock, you can board a ship that will carry you to Rut'theran Village and Darnassus.  From the southern dock, you can find passage across the Great Sea to Stormwind Harbor.  The dock to the west, at the end of the pier, leads to Azuremyst Isle, near the Exodar. Safe journeys to you!

-- my hunch here is that broadcast text id 8106 content changed 2 times - once in TBC and once in WotLK, we don't know what the exact text should be for TBC era



