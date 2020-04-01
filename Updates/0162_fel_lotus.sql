-- no evidence that fel lotus should drop more than once
UPDATE gameobject_loot_template SET maxcount=1 WHERE item IN(22794);
UPDATE `reference_loot_template` SET `maxcount` = 1 WHERE `item` = 22794 AND `entry` IN (
12015, -- Felweed
12016, -- Dreaming Glory
12017, -- Ragveil
39000 -- ??? has Unidentified Plant Parts 24401
);

