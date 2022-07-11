-- Updated with 2.4 PATCH -- they all cannot go over theirs max lvl
-- If you pop another dragonling (after the 30sec shared cd), the 1st dragonling will disappear.

-- Mechanical Dragonling 2678
-- As of patch 3.2, the dragonlings no longer level up at all...this is now a flat level 40.
-- 2009.11.22 3.2.2 L80 Gnome; L464 Goblin Engineer; L40 Mechanical Dragonling; 457HP
UPDATE creature_template SET MinLevel = 40, MaxLevel = 40 WHERE entry = 2678; -- https://tbc.wowhead.com/item=4396/mechanical-dragonling 30-40
-- Mithril Dragonling 8615
-- 2009.11.22 3.2.2 L80 Gnome; L464 Goblin Engineer; L50 Mithril Dragonling; 664HP
UPDATE creature_template SET MinLevel = 50, MaxLevel = 50 WHERE entry = 8615; -- https://tbc.wowhead.com/item=10576/mithril-mechanical-dragonling
-- Arcanite Dragonling 12473
-- 2009.11.22 3.2.2 L80 Gnome; L464 Gnomish Engineer; L60 Arcanite Dragonling; 1494HP
UPDATE creature_template SET MinLevel = 60, MaxLevel = 60, Expansion = 1 WHERE entry = 12473;

