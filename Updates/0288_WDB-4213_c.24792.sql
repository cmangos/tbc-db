-- Advanced Training Dummy 24792 - wotlk stats TDB has lvl 70
UPDATE creature_template SET MinLevel= 70, MaxLevel = 70, Faction = 7, MinLevelHealth=1397200, MaxLevelHealth=1397200, HealthMultiplier = 200, Unitflags = 0 WHERE Entry = 24792;

DELETE FROM creature_template_addon WHERE entry = 24792;
INSERT INTO creature_template_addon (entry, mount, bytes1, b2_0_sheath, emote, moveflags, auras) VALUES
(24792,0,0,1,0,0,'7056');

