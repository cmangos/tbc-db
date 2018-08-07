-- need to change implementation from on-quest learned spec spell to script
-- else on relog the old spec is learned again
-- this is a safeguard in place for class spells so that they can never be unlearned
UPDATE quest_template SET RewSpellCast=0,RewSpell=0 WHERE entry IN(5283,5284,5301,5302);
UPDATE quest_template SET CompleteScript=5283 WHERE entry IN(5283,5301); -- the art of the armorsmith
UPDATE quest_template SET CompleteScript=5284 WHERE entry IN(5284,5302); -- the way of the weaponsmith
DELETE FROM dbscripts_on_quest_end WHERE id IN(5283,5284);
INSERT INTO dbscripts_on_quest_end(id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
('5283', '0', '15', '9790', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Learn Armorsmithing'),
('5284', '0', '15', '9789', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Learn Weaponsmithing');

