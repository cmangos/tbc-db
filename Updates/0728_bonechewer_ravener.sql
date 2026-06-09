-- Bonechewer Ravener
-- Patch 2.1 - Bonechewer Raveners on Heroic, damage has been reduced and will now attack slower.
-- Pre Nerf MeleeBaseAttackTime 1200
-- Nerfed Value according to wotlk and later sniffs is 14000 on heroic.
UPDATE creature_template SET MeleeBaseAttackTime = 1400 WHERE entry = 18054;
