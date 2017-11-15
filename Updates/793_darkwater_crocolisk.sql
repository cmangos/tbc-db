-- Darkwater Crocolisk
DELETE FROM skinning_loot_template WHERE entry=17952; -- remove now unused loot template
UPDATE creature_template SET SkinningLootId=70065 WHERE entry=17952;


