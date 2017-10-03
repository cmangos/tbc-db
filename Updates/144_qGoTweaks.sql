UPDATE gameobject_template SET flags=flags|16 WHERE entry=185011; -- make GO not usable
UPDATE creature_template SET ModelId1=13069 WHERE entry=21926; -- make creature associated with GO use correct model


