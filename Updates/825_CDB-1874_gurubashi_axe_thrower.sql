-- Added missing spells of NPC 11350 (Gurubashi Axe Thrower) when mind-controlled by players
-- Source: http://wowwiki.wikia.com/wiki/Gurubashi_Axe_Thrower?oldid=323926
-- Thanks @Phatcat for pointing, this closes #126
DELETE FROM creature_template_spells WHERE entry=11350;
INSERT INTO creature_template_spells (entry, spell1, spell2, spell3, spell4) VALUES
(11350, 16075, 22887, 24018, 8269);
