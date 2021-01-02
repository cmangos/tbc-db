-- Sunblade Mage Guard 24683
DELETE FROM creature_template_spells WHERE entry=24683;
INSERT INTO creature_template_spells (entry, setId, spell1, spell2, spell3) VALUES
(24683, 0, 2, 44475, 44478);
DELETE FROM creature_cooldowns WHERE Entry=24683;
INSERT INTO creature_cooldowns (Entry, SpellId, CooldownMin, CooldownMax) VALUES
(24683, 44475, 30000, 30000),
(24683, 44478, 12000, 20000);


