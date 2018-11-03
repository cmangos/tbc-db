-- these objects no longer have static spawns
-- The Thunderspike (184737)
DELETE FROM dbscripts_on_event WHERE id=13685 AND command=40 AND buddy_entry=184737;
-- Infernal (184835)
DELETE FROM dbscripts_on_event WHERE id=13852 AND command=40 AND buddy_entry=184835;


