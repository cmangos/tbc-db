-- no evidence that fel lotus should drop more than once
UPDATE gameobject_loot_template SET maxcount=1 WHERE item IN(22794);

