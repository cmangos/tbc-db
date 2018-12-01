-- Removes infernal immolation aura from addon so its cast in core after level update
DELETE FROM creature_template_addon WHERE entry IN(89);


