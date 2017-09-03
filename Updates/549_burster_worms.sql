-- auras now handled in core script and bytes1 is 9 by default even before casting spell
UPDATE creature_template_addon SET auras='', bytes1 = 9 WHERE entry IN(16844,16857,16968,21380,21849,22038,22466,22482,23285);

-- fumping spell scripts now handled in core
DELETE FROM dbscripts_on_spell WHERE id IN(39238,39246);


