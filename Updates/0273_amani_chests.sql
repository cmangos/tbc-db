-- proper data already present in wotlk db per sniff - except money bag
UPDATE gameobject_template SET faction=35 WHERE entry IN(186734,186739,186741,186744,186736,186740);

