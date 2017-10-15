-- Removes item 7338 (Mood Ring) from dropping as it is only
-- available from a vendor in Stranglehorn.
DELETE FROM gameobject_loot_template WHERE item=7338;

