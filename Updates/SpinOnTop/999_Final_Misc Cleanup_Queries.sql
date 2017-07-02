UPDATE creature SET
curhealth = (SELECT FLOOR(RAND(1)*(maxlevelhealth - minlevelhealth) + minlevelhealth) FROM creature_template WHERE creature.id = creature_template.entry)
WHERE curhealth < (SELECT minlevelhealth FROM creature_template WHERE creature.id = creature_template.entry) AND id NOT IN (20869,21586); -- Arcatraz Sentinels Have Lower Health On Purpose (40% Max Health)
UPDATE creature SET
curmana = (SELECT FLOOR(RAND(1)*(maxlevelmana - minlevelmana) + minlevelmana) FROM creature_template WHERE creature.id = creature_template.entry)
WHERE curmana < (SELECT minlevelmana FROM creature_template WHERE creature.id = creature_template.entry);


